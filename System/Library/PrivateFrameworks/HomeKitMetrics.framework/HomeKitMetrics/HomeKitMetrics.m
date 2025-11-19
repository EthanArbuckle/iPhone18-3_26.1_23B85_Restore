Swift::Void __swiftcall CounterGroup.incrementCounter(_:by:)(Swift::String _, Swift::Int by)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = sub_22B0DF0E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(v2 + 22);
  v11 = [*(sub_22B097390() + 24) currentDatePartition];
  sub_22B0DF0B0();

  sub_22B09A03C(by, countAndFlagsBits, object, v10);

  (*(v7 + 8))(v10, v6);
  os_unfair_lock_unlock(v2 + 22);
}

uint64_t sub_22B076354(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B07639C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22B0DF0E0();
  sub_22B076420(&qword_2813EAD80);
  v5 = sub_22B0DF2A0();

  return sub_22B0766FC(a1, v5);
}

uint64_t sub_22B076420(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22B0DF0E0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B0766FC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_22B0DF0E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_22B076420(&qword_2813EAD70);
      v16 = sub_22B0DF2F0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_22B0768A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22B0DFD40();
  sub_22B0DF380();
  v6 = sub_22B0DFD80();

  return sub_22B076920(a1, a2, v6);
}

unint64_t sub_22B076920(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22B0DFC60())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B0769D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B0768A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22B086778(v16, a4 & 1);
      v20 = *v5;
      result = sub_22B0768A8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22B0847AC();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_22B076C3C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B076C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22B076CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22B076DA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_22B076DB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_22B076DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 88);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B57B8, &unk_22B0E5850);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 124);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22B076F04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 88);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B57B8, &unk_22B0E5850);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 124);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s14HomeKitMetrics15TapToRadarDraftV19RemoteDeviceClassesVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14HomeKitMetrics15TapToRadarDraftV19RemoteDeviceClassesVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_22B077088()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5988, &qword_22B0E3E58);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B0770B8(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for FlatFileCounterStore.State();
  return sub_22B0DF170();
}

uint64_t sub_22B077108()
{
  v1 = sub_22B0DF0E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B0771EC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AB8, &qword_22B0E44D0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B077254@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22B0772AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22B077300()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5B88, "Pl");
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B077330(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for DailyScheduler.State();
  return sub_22B0DF170();
}

uint64_t sub_22B077380()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B0773B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_22B077408()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B077440()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B077490()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B0774C8()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B077504()
{
  MEMORY[0x23188A5D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B07753C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B077574()
{
  MEMORY[0x23188A5D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B0775AC()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B0775E4(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CoalescingRepeatingScheduler.State();
  return sub_22B0DF170();
}

uint64_t sub_22B077630()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B077668()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 6);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_22B077748()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B077790()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  v8 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B077870()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B0778AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22B077904(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_22B07795C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

void sub_22B077970(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR___HMMEphemeralContainerState_lock);
  os_unfair_lock_lock(v4 + 4);
  LOBYTE(v3) = *(v3 + OBJC_IVAR___HMMEphemeralContainerState__isActive);
  os_unfair_lock_unlock(v4 + 4);
  *a2 = v3;
}

uint64_t sub_22B0779CC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6140, &qword_22B0E57B0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B0779FC()
{
  MEMORY[0x23188A5D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B077A34()
{
  v1 = type metadata accessor for TapToRadarDraft();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  if (*(v0 + v3 + 72))
  {

    v11 = *(v6 + 11);
  }

  v12 = *(v6 + 14);

  v13 = *(v6 + 16);

  v14 = *(v6 + 17);

  v15 = *(v6 + 18);

  v16 = *(v6 + 19);

  v17 = *(v6 + 20);

  v18 = *(v6 + 21);

  v19 = v1[22];
  v20 = sub_22B0DF0E0();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v6[v19], 1, v20))
  {
    (*(v21 + 8))(&v6[v19], v20);
  }

  v22 = *&v6[v1[29]];

  v23 = *&v6[v1[30] + 8];

  v24 = v1[31];
  v25 = sub_22B0DEF00();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(&v6[v24], 1, v25))
  {
    (*(v26 + 8))(&v6[v24], v25);
  }

  v27 = *&v6[v1[32] + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22B077C74()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6338, &qword_22B0E5DD8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B077CA4(__int128 *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for BaseMetricsManagerGeneric.State();
  return sub_22B0DF170();
}

uint64_t sub_22B077D00()
{
  MEMORY[0x23188A5D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B077D38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B077D70()
{
  v1 = sub_22B0DF990();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B077E3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B077E88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_22B077ED8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B077F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  return sub_22B07D124(v3 + v4, a2);
}

BOOL sub_22B077F9C()
{
  v0 = sub_22B0DFB70();

  return v0 != 0;
}

BOOL sub_22B078040(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22B078070@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22B07809C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_22B078174@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22B0781A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_22B078208()
{
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 96);
  v1 = [*(v0[2] + 16) newBackgroundContext];
  v2 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v1 setMergePolicy_];

  sub_22B0DF710();
}

void sub_22B078304(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v211 = a7;
  v209 = a5;
  v174 = a3;
  v187 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v185 = &v155 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v194 = *(AssociatedTypeWitness - 8);
  v14 = *(v194 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v203 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v207 = &v155 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v201 = sub_22B0DF780();
  v208 = *(v201 - 8);
  v19 = *(v208 + 64);
  v20 = MEMORY[0x28223BE20](v201);
  v200 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v199 = (&v155 - v22);
  v23 = sub_22B0DF0E0();
  v173 = *(v23 - 8);
  v24 = *(v173 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v160 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v190 = &v155 - v28;
  MEMORY[0x28223BE20](v27);
  v161 = &v155 - v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v159 = a6;
  v158 = a4;
  v32 = swift_getAssociatedConformanceWitness();
  v202 = AssociatedTypeWitness;
  v212 = AssociatedTypeWitness;
  v213 = AssociatedConformanceWitness;
  v214 = v31;
  v215 = v32;
  type metadata accessor for CounterSet();
  v33 = swift_getTupleTypeMetadata2();
  v172 = sub_22B0DF780();
  v34 = *(v172 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v172);
  v170 = &v155 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v171 = &v155 - v38;
  v39 = sub_22B0BFD58(a2);
  if (v39)
  {
    v40 = v174;
    v41 = *(v174 + 64);
    v157 = v174 + 64;
    v42 = 1 << *(v174 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    a2 = v43 & v41;
    v156 = (v42 + 63) >> 6;
    v167 = v33;
    v166 = v33 - 8;
    v44 = v173;
    v188 = (v173 + 16);
    v175 = (v173 + 32);
    v169 = (v34 + 32);
    v165 = v211 + 32;
    v164 = "";
    v162 = (v173 + 8);
    v198 = TupleTypeMetadata2 - 8;
    v206 = (v194 + 16);
    v210 = (v194 + 32);
    v197 = (v208 + 32);
    v192 = v211 + 136;
    v195 = (v194 + 8);
    v180 = v211 + 152;
    v184 = v211 + 64;
    v183 = v211 + 88;
    v182 = (v173 + 56);
    v181 = v211 + 112;
    v186 = v39;
    v168 = v39;

    v45 = 0;
    *(&v46 + 1) = 4;
    v163 = xmmword_22B0E2760;
    *&v46 = 138543874;
    v155 = v46;
    v47 = v203;
    v208 = TupleTypeMetadata2;
    v48 = v190;
    v191 = v23;
    if (!a2)
    {
      goto LABEL_8;
    }

    while (1)
    {
LABEL_16:
      v50 = v45;
LABEL_17:
      v178 = (a2 - 1) & a2;
      v55 = __clz(__rbit64(a2)) | (v50 << 6);
      v56 = v161;
      v57 = v191;
      (*(v44 + 16))(v161, *(v40 + 48) + *(v44 + 72) * v55, v191);
      v58 = (*(v40 + 56) + 16 * v55);
      v59 = v44;
      LODWORD(v205) = *v58;
      v60 = *(v58 + 1);
      v51 = v167;
      v61 = v170;
      v62 = &v170[*(v167 + 48)];
      (*(v59 + 32))(v170, v56, v57);
      *v62 = v205;
      *(v62 + 1) = v60;
      v52 = *(v51 - 8);
      (*(v52 + 56))(v61, 0, 1, v51);

      v177 = v50;
      v54 = v61;
      v48 = v190;
LABEL_18:
      v63 = v171;
      (*v169)(v171, v54, v172);
      v64 = (*(v52 + 48))(v63, 1, v51);
      v65 = v209;
      if (v64 == 1)
      {
LABEL_55:

        sub_22B096BB4(v187);
        v154 = v168;

        return;
      }

      v66 = &v63[*(v51 + 48)];
      LODWORD(v193) = *v66;
      v205 = *(v66 + 1);
      v67 = v63;
      v68 = v191;
      (*v175)(v48, v67, v191);
      v69 = (*(v211 + 32))(v65);
      sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
      v70 = swift_allocObject();
      *(v70 + 16) = v163;
      *(v70 + 56) = type metadata accessor for ManagedNamedGroup();
      *(v70 + 64) = sub_22B07B068(&qword_2813EA430, type metadata accessor for ManagedNamedGroup);
      v71 = v168;
      *(v70 + 32) = v168;
      v189 = v71;
      v72 = sub_22B0DF070();
      *(v70 + 96) = sub_22B07BA9C(0, &unk_2813E9978, 0x277CBEAA8);
      *(v70 + 104) = sub_22B07BAE4();
      *(v70 + 72) = v72;
      v73 = sub_22B0DF660();
      [v69 setPredicate_];

      v176 = v69;
      v74 = v179;
      v75 = sub_22B0DF720();
      if (!v74)
      {
        break;
      }

      if (qword_2813E9AA8 != -1)
      {
        swift_once();
      }

      v76 = sub_22B0DF1B0();
      __swift_project_value_buffer(v76, qword_2813EBE90);
      v77 = v160;
      v48 = v190;
      (*v188)(v160, v190, v68);
      v78 = v189;
      v79 = v74;
      v80 = sub_22B0DF190();
      v81 = sub_22B0DF690();

      LODWORD(v205) = v81;
      v82 = os_log_type_enabled(v80, v81);
      a2 = v178;
      if (v82)
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        i = v84;
        v204 = swift_slowAlloc();
        v212 = v204;
        *v83 = v155;
        *(v83 + 4) = v78;
        *v84 = v186;
        *(v83 + 12) = 2080;
        sub_22B07B068(&qword_2813EAD68, MEMORY[0x277CC9578]);
        v85 = v78;
        v193 = v80;
        v86 = sub_22B0DFC20();
        v88 = v87;
        v89 = *v162;
        (*v162)(v77, v191);
        v90 = sub_22B07B428(v86, v88, &v212);

        *(v83 + 14) = v90;
        *(v83 + 22) = 2112;
        v91 = v74;
        v92 = _swift_stdlib_bridgeErrorToNSError();
        *(v83 + 24) = v92;
        v93 = i;
        *(i + 1) = v92;
        v94 = v193;
        _os_log_impl(&dword_22B074000, v193, v205, "Error getting counters for group %{public}@ on date %s: %@", v83, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
        swift_arrayDestroy();
        MEMORY[0x23188A520](v93, -1, -1);
        v95 = v204;
        __swift_destroy_boxed_opaque_existential_0(v204);
        MEMORY[0x23188A520](v95, -1, -1);
        v96 = v83;
        v47 = v203;
        MEMORY[0x23188A520](v96, -1, -1);

        v48 = v190;
        v89(v190, v191);
      }

      else
      {

        v145 = *v162;
        (*v162)(v77, v68);
        v145(v48, v68);
        TupleTypeMetadata2 = v208;
      }

      v179 = 0;
      v45 = v177;
      v44 = v173;
      v40 = v174;
      if (!a2)
      {
        goto LABEL_8;
      }
    }

    i = &v155;
    v212 = v75;
    v97 = MEMORY[0x28223BE20](v75);
    *(&v155 - 4) = v158;
    *(&v155 - 3) = v65;
    v98 = v211;
    *(&v155 - 2) = v159;
    *(&v155 - 1) = v98;
    v204 = v97;
    sub_22B0DF550();
    swift_getTupleTypeMetadata2();
    swift_getWitnessTable();
    v99 = sub_22B0DF420();
    v179 = 0;

    v212 = v99;
    sub_22B0DF550();
    swift_getWitnessTable();
    v204 = sub_22B0DF250();
    v100 = 0;
    v101 = v205;
    v102 = (v205 + 64);
    v103 = 1 << *(v205 + 32);
    if (v103 < 64)
    {
      v104 = ~(-1 << v103);
    }

    else
    {
      v104 = -1;
    }

    v105 = v104 & *(v205 + 64);
    v106 = (v103 + 63) >> 6;
    v107 = v202;
    for (i = (v205 + 64); ; v102 = i)
    {
      if (!v105)
      {
        if (v106 <= v100 + 1)
        {
          v120 = v100 + 1;
        }

        else
        {
          v120 = v106;
        }

        v121 = v120 - 1;
        while (1)
        {
          v119 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            break;
          }

          if (v119 >= v106)
          {
            v135 = *(TupleTypeMetadata2 - 8);
            v133 = v200;
            (*(v135 + 56))(v200, 1, 1, TupleTypeMetadata2);
            v105 = 0;
            v100 = v121;
            goto LABEL_41;
          }

          v105 = *(v102 + v119);
          ++v100;
          if (v105)
          {
            v100 = v119;
            goto LABEL_40;
          }
        }

        __break(1u);
        goto LABEL_55;
      }

      v119 = v100;
LABEL_40:
      v122 = __clz(__rbit64(v105));
      v105 &= v105 - 1;
      v123 = v122 | (v119 << 6);
      v124 = *(v101 + 56);
      v125 = (*(v101 + 48) + 16 * v123);
      v127 = *v125;
      v126 = v125[1];
      v128 = v194;
      v129 = v207;
      (*(v194 + 16))(v207, v124 + *(v194 + 72) * v123, v107);
      v130 = v208;
      v131 = *(v208 + 48);
      v132 = v107;
      v133 = v200;
      *v200 = v127;
      *(v133 + 1) = v126;
      v134 = v129;
      TupleTypeMetadata2 = v130;
      (*(v128 + 32))(&v133[v131], v134, v132);
      v135 = *(TupleTypeMetadata2 - 8);
      (*(v135 + 56))(v133, 0, 1, TupleTypeMetadata2);

LABEL_41:
      v136 = v199;
      (*v197)(v199, v133, v201);
      if ((*(v135 + 48))(v136, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v138 = *v136;
      v137 = v136[1];
      v139 = v136 + *(TupleTypeMetadata2 + 48);
      v140 = v202;
      (*v210)(v47, v139, v202);
      v212 = v138;
      v213 = v137;

      v141 = v140;
      v142 = v209;
      sub_22B0DF280();

      v109 = v216;
      if (v216)
      {
        v107 = v141;

        if (v193)
        {
          v47 = v203;
          (*(v211 + 152))(v203, v209);
        }

        else
        {
          v143 = v207;
          v47 = v203;
          (*v206)(v207, v203, v107);
          v144 = v143;
          TupleTypeMetadata2 = v208;
          (*(v211 + 136))(v144, v209);
        }
      }

      else
      {
        v108 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v109 = [v108 initWithContext_];
        v110 = *(v211 + 64);
        v111 = v189;
        v110(v186, v142, v211);
        v112 = v211;
        (*(v211 + 88))(v138, v137, v142, v211);
        v113 = v185;
        v114 = v191;
        (*v188)(v185, v190, v191);
        (*v182)(v113, 0, 1, v114);
        (*(v112 + 112))(v113, v142, v112);
        v115 = v207;
        v116 = v203;
        (*v206)(v207, v203, v141);
        v117 = *(v112 + 136);
        v118 = v112;
        TupleTypeMetadata2 = v208;
        v117(v115, v142, v118);
        v107 = v141;
        v47 = v116;
      }

      v101 = v205;

      (*v195)(v47, v107);
    }

    v48 = v190;
    (*v162)(v190, v191);

    v45 = v177;
    v40 = v174;
    v44 = v173;
    a2 = v178;
    if (v178)
    {
      goto LABEL_16;
    }

LABEL_8:
    if (v156 <= v45 + 1)
    {
      v49 = v45 + 1;
    }

    else
    {
      v49 = v156;
    }

    while (1)
    {
      v50 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v50 >= v156)
      {
        v177 = v49 - 1;
        v51 = v167;
        v52 = *(v167 - 8);
        v53 = v170;
        (*(v52 + 56))(v170, 1, 1, v167);
        v54 = v53;
        v178 = 0;
        goto LABEL_18;
      }

      a2 = *(v157 + 8 * v50);
      ++v45;
      if (a2)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  if (qword_2813E9AA8 != -1)
  {
LABEL_57:
    swift_once();
  }

  v146 = sub_22B0DF1B0();
  __swift_project_value_buffer(v146, qword_2813EBE90);

  v147 = sub_22B0DF190();
  v148 = sub_22B0DF690();

  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v212 = v150;
    *v149 = 136446210;
    v151 = (*(*a2 + 96))();
    v153 = sub_22B07B428(v151, v152, &v212);

    *(v149 + 4) = v153;
    _os_log_impl(&dword_22B074000, v147, v148, "Failed to load group for %{public}s. Cannot save counters.", v149, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v150);
    MEMORY[0x23188A520](v150, -1, -1);
    MEMORY[0x23188A520](v149, -1, -1);
  }
}

uint64_t sub_22B079820()
{
  v2 = [*(v0 + 16) newBackgroundContext];
  v3 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v2 setMergePolicy_];

  sub_22B0DF710();
  if (!v1)
  {
    v4 = v6;
  }

  return v4 & 1;
}

void sub_22B079978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = [*(v4 + 16) newBackgroundContext];
  v8 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v7 setMergePolicy_];

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_22B0DF710();
}

uint64_t sub_22B079A60()
{
  v1 = *v0;
  v2 = v0[2];
  v4 = *(v1 + 80);
  v5 = *(v1 + 96);
  return sub_22B079820() & 1;
}

void sub_22B079AE4(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, BOOL *a5@<X8>)
{
  v11 = sub_22B0DF0E0();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B0BFD58(a1);
  if (v14)
  {
    v15 = v14;
    v49 = v11;
    v51 = a5;
    v16 = (*(a4 + 32))(a3, a4);
    sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22B0E2760;
    *(v17 + 56) = type metadata accessor for ManagedNamedGroup();
    *(v17 + 64) = sub_22B07B068(&qword_2813EA430, type metadata accessor for ManagedNamedGroup);
    *(v17 + 32) = v15;
    v50 = v15;
    v48 = a2;
    v18 = sub_22B0DF070();
    *(v17 + 96) = sub_22B07BA9C(0, &unk_2813E9978, 0x277CBEAA8);
    *(v17 + 104) = sub_22B07BAE4();
    *(v17 + 72) = v18;
    v19 = v16;
    v20 = sub_22B0DF660();
    [v16 setPredicate_];

    v21 = sub_22B0DF720();
    if (v5)
    {
      v22 = v50;
      if (qword_2813E9AA8 != -1)
      {
        swift_once();
      }

      v23 = sub_22B0DF1B0();
      __swift_project_value_buffer(v23, qword_2813EBE90);
      v24 = v52;
      v25 = v53;
      v26 = v49;
      (*(v52 + 16))(v53, v48, v49);
      v27 = v22;
      v28 = v5;
      v29 = sub_22B0DF190();
      v30 = sub_22B0DF690();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v24;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v47 = v30;
        v34 = v33;
        v50 = swift_slowAlloc();
        v54 = v50;
        *v32 = 138543874;
        *(v32 + 4) = v27;
        *v34 = v15;
        *(v32 + 12) = 2080;
        sub_22B07B068(&qword_2813EAD68, MEMORY[0x277CC9578]);
        v48 = v19;
        v46 = v27;
        v35 = v29;
        v36 = v53;
        v37 = sub_22B0DFC20();
        v39 = v38;
        (*(v31 + 8))(v36, v26);
        v40 = sub_22B07B428(v37, v39, &v54);

        *(v32 + 14) = v40;
        *(v32 + 22) = 2112;
        v41 = v5;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 24) = v42;
        v34[1] = v42;
        _os_log_impl(&dword_22B074000, v35, v47, "Error getting counters for group %{public}@ on date %s: %@", v32, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
        swift_arrayDestroy();
        MEMORY[0x23188A520](v34, -1, -1);
        v43 = v50;
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x23188A520](v43, -1, -1);
        MEMORY[0x23188A520](v32, -1, -1);
      }

      else
      {

        (*(v24 + 8))(v25, v26);
      }

      v44 = 0;
    }

    else
    {
      v54 = v21;
      sub_22B0DF550();
      swift_getWitnessTable();
      v45 = sub_22B0DF640();

      v44 = (v45 & 1) == 0;
    }

    a5 = v51;
  }

  else
  {
    v44 = 0;
  }

  *a5 = v44;
}

uint64_t sub_22B07A044()
{
  v1 = *v0;
  v2 = v0[2];
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CounterSet();
  sub_22B095B54();
  return AssociatedTypeWitness;
}

uint64_t sub_22B07A184@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v84 = a6;
  v85 = a4;
  v15 = sub_22B0DF0E0();
  v83 = *(v15 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v15);
  v82 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_22B0BFD58(a2);
  if (v18)
  {
    v19 = v18;
    v77 = v15;
    v81 = a8;
    v79 = a1;
    v20 = *(a7 + 32);
    v21 = a3;
    v22 = v18;
    v23 = v20(a5, a7);
    v78 = v8;
    v24 = v23;
    sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_22B0E2760;
    *(v25 + 56) = type metadata accessor for ManagedNamedGroup();
    *(v25 + 64) = sub_22B07B068(&qword_2813EA430, type metadata accessor for ManagedNamedGroup);
    *(v25 + 32) = v22;
    v26 = v22;
    v27 = v21;
    v28 = v24;
    v80 = v26;
    v29 = sub_22B0DF070();
    *(v25 + 96) = sub_22B07BA9C(0, &unk_2813E9978, 0x277CBEAA8);
    *(v25 + 104) = sub_22B07BAE4();
    *(v25 + 72) = v29;
    v30 = sub_22B0DF660();
    [v28 setPredicate_];

    v31 = v78;
    v32 = sub_22B0DF720();
    if (v31)
    {
      v33 = v80;
      v79 = v28;
      if (qword_2813E9AA8 != -1)
      {
        swift_once();
      }

      v34 = sub_22B0DF1B0();
      __swift_project_value_buffer(v34, qword_2813EBE90);
      v36 = v82;
      v35 = v83;
      v37 = v77;
      (*(v83 + 16))(v82, v27, v77);
      v38 = v33;
      v39 = v31;
      v40 = v38;
      v41 = sub_22B0DF190();
      v42 = sub_22B0DF690();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v76 = v42;
        v44 = v37;
        v45 = v43;
        v46 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v88 = v80;
        *v45 = 138543874;
        *(v45 + 4) = v40;
        *v46 = v19;
        *(v45 + 12) = 2080;
        sub_22B07B068(&qword_2813EAD68, MEMORY[0x277CC9578]);
        v47 = v40;
        v78 = v40;
        v48 = sub_22B0DFC20();
        v50 = v49;
        (*(v35 + 8))(v36, v44);
        v51 = sub_22B07B428(v48, v50, &v88);

        *(v45 + 14) = v51;
        *(v45 + 22) = 2112;
        v52 = v31;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 24) = v53;
        v46[1] = v53;
        _os_log_impl(&dword_22B074000, v41, v76, "Error getting counters for group %{public}@ on date %s: %@", v45, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
        swift_arrayDestroy();
        MEMORY[0x23188A520](v46, -1, -1);
        v54 = v80;
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x23188A520](v54, -1, -1);
        MEMORY[0x23188A520](v45, -1, -1);

        v55 = v78;
        v56 = v79;
        v57 = v31;
      }

      else
      {

        (*(v35 + 8))(v36, v37);
        v56 = v79;
        v57 = v31;
        v55 = v40;
      }

      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v74 = sub_22B0DF200();

      result = sub_22B0D20BC(v74, 0);
    }

    else
    {
      v87 = v32;
      v83 = v32;
      v79 = 0;
      v70 = v84;
      v69 = v85;
      swift_getAssociatedTypeWitness();
      v71 = sub_22B0DF200();
      v82 = v75;
      v86 = v71;
      MEMORY[0x28223BE20](v71);
      *&v75[-32] = v69;
      *&v75[-24] = a5;
      *&v75[-16] = v70;
      *&v75[-8] = a7;
      sub_22B0DF550();
      sub_22B0DF270();
      swift_getWitnessTable();
      sub_22B0DF430();

      v72 = v80;

      v73 = v88;
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      result = sub_22B0D20BC(v73, 0);
    }

    a8 = v81;
  }

  else
  {
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v58 = sub_22B0DF1B0();
    __swift_project_value_buffer(v58, qword_2813EBE90);

    v59 = sub_22B0DF190();
    v60 = sub_22B0DF690();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v88 = v62;
      *v61 = 136446210;
      v63 = (*(*a2 + 96))();
      v65 = sub_22B07B428(v63, v64, &v88);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_22B074000, v59, v60, "Failed to load group for %{public}s. Cannot load counters.", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x23188A520](v62, -1, -1);
      MEMORY[0x23188A520](v61, -1, -1);
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v66 = sub_22B0DF200();
    result = sub_22B0D20BC(v66, 0);
  }

  *a8 = result & 1;
  *(a8 + 8) = v68;
  return result;
}

void sub_22B07AB18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_22B0DF780();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v23 - v12;
  v14 = *a2;
  v15 = (*(a6 + 80))(a4, a6);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    (*(a6 + 128))(a4, a6);
    (*(*(AssociatedTypeWitness - 8) + 56))(v13, 0, 1, AssociatedTypeWitness);
    v23[0] = v17;
    v23[1] = v18;
    sub_22B0DF270();
    sub_22B0DF290();
  }

  else
  {
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v19 = sub_22B0DF1B0();
    __swift_project_value_buffer(v19, qword_2813EBE90);
    v20 = sub_22B0DF190();
    v21 = sub_22B0DF690();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22B074000, v20, v21, "Name missing in Core Data counter", v22, 2u);
      MEMORY[0x23188A520](v22, -1, -1);
    }
  }
}

uint64_t sub_22B07AD4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22B07AE5C(uint64_t a1, id *a2)
{
  result = sub_22B0DF310();
  *a2 = 0;
  return result;
}

uint64_t sub_22B07AED4(uint64_t a1, id *a2)
{
  v3 = sub_22B0DF320();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22B07AF54@<X0>(uint64_t *a1@<X8>)
{
  sub_22B0DF330();
  v2 = sub_22B0DF300();

  *a1 = v2;
  return result;
}

uint64_t sub_22B07AF98@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22B0A8FFC();

  *a1 = v2;
  return result;
}

uint64_t sub_22B07B068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B07B16C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22B0DF300();

  *a2 = v5;
  return result;
}

uint64_t sub_22B07B1B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22B0DF330();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22B07B1E0(uint64_t a1)
{
  v2 = sub_22B07B068(&qword_27D8B56A0, type metadata accessor for URLResourceKey);
  v3 = sub_22B07B068(&qword_27D8B56A8, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B07B29C()
{
  v1 = *v0;
  v2 = sub_22B0DF330();
  v3 = MEMORY[0x2318890B0](v2);

  return v3;
}

uint64_t sub_22B07B2D8()
{
  v1 = *v0;
  sub_22B0DF330();
  sub_22B0DF380();
}

uint64_t sub_22B07B32C()
{
  v1 = *v0;
  sub_22B0DF330();
  sub_22B0DFD40();
  sub_22B0DF380();
  v2 = sub_22B0DFD80();

  return v2;
}

uint64_t sub_22B07B3A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22B0DF330();
  v6 = v5;
  if (v4 == sub_22B0DF330() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22B0DFC60();
  }

  return v9 & 1;
}

uint64_t sub_22B07B428(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B07B4F4(v11, 0, 0, 1, a1, a2);
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
    sub_22B07BB6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22B07B4F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B07B600(a5, a6);
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
    result = sub_22B0DF930();
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

uint64_t sub_22B07B600(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B07B64C(a1, a2);
  sub_22B07B77C(&unk_283EEA8E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22B07B64C(uint64_t a1, unint64_t a2)
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

  v6 = sub_22B07B868(v5, 0);
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

  result = sub_22B0DF930();
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
        v10 = sub_22B0DF3D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B07B868(v10, 0);
        result = sub_22B0DF8D0();
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

uint64_t sub_22B07B77C(uint64_t result)
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

  result = sub_22B07B8DC(result, v12, 1, v3);
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

void *sub_22B07B868(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5668, &unk_22B0E2A00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22B07B8DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5668, &unk_22B0E2A00);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_22B07BA9C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_22B07BAE4()
{
  result = qword_2813E9970;
  if (!qword_2813E9970)
  {
    sub_22B07BA9C(255, &unk_2813E9978, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E9970);
  }

  return result;
}

uint64_t sub_22B07BB6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_22B07BBCC(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  sub_22B079AE4(*(v1 + 48), *(v1 + 56), *(v1 + 24), *(v1 + 40), a1);
}

void *sub_22B07BBF0@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 24);
  result = (*(v1 + 16))(&v6, *(v1 + 32));
  if (!v2)
  {
    *a1 = v6;
  }

  return result;
}

id sub_22B07BC90@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  v6 = *a1;
  result = (*(v5 + 80))(v4);
  v9 = v8;
  if (v8)
  {
    v10 = result;
    result = v6;
  }

  else
  {
    v10 = 0;
    v6 = 0;
  }

  *a2 = v10;
  a2[1] = v9;
  a2[2] = v6;
  return result;
}

void *sub_22B07BD28@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  result = (*(v1 + 16))(&v6, *(v1 + 32));
  if (!v2)
  {
    *a1 = v6;
  }

  return result;
}

uint64_t sub_22B07BD84(uint64_t a1, int a2)
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

uint64_t sub_22B07BDA4(uint64_t result, int a2, int a3)
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

void sub_22B07BDF4(uint64_t a1, unint64_t *a2)
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

unint64_t sub_22B07BF40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5748, &unk_22B0E2FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E2C10;
  *(inited + 32) = 0;
  v2 = *(v0 + 24);
  *(inited + 40) = *(v0 + 16);
  *(inited + 48) = v2;
  *(inited + 56) = 1;

  *(inited + 64) = sub_22B0DF110();
  *(inited + 72) = v3;
  *(inited + 80) = 2;
  *(inited + 88) = sub_22B0DF110();
  *(inited + 96) = v4;
  v5 = sub_22B0B8BF0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5750, &qword_22B0E2C60);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_22B07C028()
{
  sub_22B0DF8E0();
  MEMORY[0x231889070](0xD00000000000001BLL, 0x800000022B0E66A0);
  MEMORY[0x231889070](*(v0 + 16), *(v0 + 24));
  MEMORY[0x231889070](0x5555656D6F68202CLL, 0xEB000000003D4449);
  sub_22B0DF140();
  sub_22B07D188(&qword_27D8B5740);
  v1 = sub_22B0DFC20();
  MEMORY[0x231889070](v1);

  MEMORY[0x231889070](0xD000000000000010, 0x800000022B0E66C0);
  v2 = sub_22B0DFC20();
  MEMORY[0x231889070](v2);

  MEMORY[0x231889070](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_22B07C19C()
{
  sub_22B0DFD40();
  sub_22B0DF380();
  return sub_22B0DFD80();
}

uint64_t sub_22B07C220()
{
  sub_22B0DFD40();
  sub_22B0DF380();
  return sub_22B0DFD80();
}

uint64_t sub_22B07C27C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22B0DFB70();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_22B07C31C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22B0DFB70();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22B07C38C(uint64_t a1)
{
  v2 = sub_22B07D0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B07C3C8(uint64_t a1)
{
  v2 = sub_22B07D0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B07C404(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_22B07C450(a1);
}

uint64_t sub_22B07C450(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5718, ">}");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5738, &unk_22B0E2C50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B07D0D0();
  sub_22B0DFDB0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for AccessoryGroupSpecifier();
    v14 = *(*v22 + 48);
    v15 = *(*v22 + 52);
    swift_deallocPartialClassInstance();
    return v6;
  }

  v13 = v8;
  sub_22B0DFB80();
  v17 = v6;
  sub_22B0DF100();

  v18 = sub_22B0DF140();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v17, 1, v18);
  if (result != 1)
  {
    (*(v19 + 32))(v22 + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID, v17, v18);
    sub_22B07D124(a1, v21);
    v6 = sub_22B07EAB8(v21);
    (*(v13 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B07C720(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5728, ">}");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  result = sub_22B07ED88(a1);
  if (!v1)
  {
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22B07D0D0();
    sub_22B0DFDC0();
    sub_22B0DF110();
    sub_22B0DFBD0();
    (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_22B07C87C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22B0DF380();
  sub_22B0DF380();
  sub_22B0DF140();
  sub_22B07D188(&qword_27D8B5720);
  return sub_22B0DF2B0();
}

uint64_t sub_22B07C90C(void *a1)
{
  v3 = sub_22B0DF140();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5710, ":}");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5718, ">}");
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  if ((sub_22B07F02C(a1) & 1) == 0)
  {
    v30 = 0;
    return v30 & 1;
  }

  v35 = v7;
  v36 = v16;
  v38 = v11;
  v22 = v4[2];
  v22(v21, v1 + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID, v3);
  v37 = v4;
  v23 = v4[7];
  v24 = 1;
  v23(v21, 0, 1, v3);
  type metadata accessor for AccessoryGroupSpecifier();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v22(v19, v25 + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID, v3);
    v24 = 0;
  }

  v23(v19, v24, 1, v3);
  v26 = *(v8 + 48);
  v27 = v38;
  sub_22B07CFBC(v21, v38);
  sub_22B07CFBC(v19, v27 + v26);
  v28 = v37;
  v29 = v37[6];
  if (v29(v27, 1, v3) != 1)
  {
    v31 = v36;
    sub_22B07CFBC(v27, v36);
    if (v29(v27 + v26, 1, v3) != 1)
    {
      v32 = v35;
      (v28[4])(v35, v27 + v26, v3);
      sub_22B07D188(&qword_2813EAD50);
      v30 = sub_22B0DF2F0();
      v33 = v28[1];
      v33(v32, v3);
      sub_22B07D02C(v19, &qword_27D8B5718, ">}");
      sub_22B07D02C(v21, &qword_27D8B5718, ">}");
      v33(v31, v3);
      sub_22B07D02C(v27, &qword_27D8B5718, ">}");
      return v30 & 1;
    }

    sub_22B07D02C(v19, &qword_27D8B5718, ">}");
    sub_22B07D02C(v21, &qword_27D8B5718, ">}");
    (v28[1])(v31, v3);
    goto LABEL_10;
  }

  sub_22B07D02C(v19, &qword_27D8B5718, ">}");
  sub_22B07D02C(v21, &qword_27D8B5718, ">}");
  if (v29(v27 + v26, 1, v3) != 1)
  {
LABEL_10:
    sub_22B07D02C(v27, &qword_27D8B5710, ":}");
    v30 = 0;
    return v30 & 1;
  }

  sub_22B07D02C(v27, &qword_27D8B5718, ">}");
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_22B07CD98()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID;
  v2 = sub_22B0DF140();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_22B07CE00()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID;
  v3 = sub_22B0DF140();
  v4 = *(*(v3 - 8) + 8);
  v4(&v0[v2], v3);
  v4(&v0[OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID], v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for AccessoryGroupSpecifier()
{
  result = qword_2813EA0D0;
  if (!qword_2813EA0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B07CF2C()
{
  result = sub_22B0DF140();
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

uint64_t sub_22B07CFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5718, ">}");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B07D02C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22B07D0D0()
{
  result = qword_27D8B5730;
  if (!qword_27D8B5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5730);
  }

  return result;
}

uint64_t sub_22B07D124(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B07D188(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22B0DF140();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryGroupSpecifier.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AccessoryGroupSpecifier.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_22B07D2BC()
{
  result = qword_27D8B5758;
  if (!qword_27D8B5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5758);
  }

  return result;
}

unint64_t sub_22B07D314()
{
  result = qword_27D8B5760;
  if (!qword_27D8B5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5760);
  }

  return result;
}

unint64_t sub_22B07D36C()
{
  result = qword_27D8B5768;
  if (!qword_27D8B5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5768);
  }

  return result;
}

void RunDatePreferencesStorage.lastRunDate.getter(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D728(v3 + *(v4 + 28), v1, a1);

  os_unfair_lock_unlock(v3);
}

void sub_22B07D444(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = (*a1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D728(v4 + *(v5 + 28), v3, a2);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_22B07D4CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_22B07D9F0(a1, &v10 - v6);
  v8 = *a2;
  return RunDatePreferencesStorage.lastRunDate.setter(v7);
}

uint64_t RunDatePreferencesStorage.lastRunDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = (v2 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D980(a1, v8 + *(v9 + 28));
  v10 = [objc_opt_self() standardUserDefaults];
  sub_22B07D9F0(a1, v7);
  v11 = sub_22B0DF0E0();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v7, 1, v11) != 1)
  {
    v13 = sub_22B0DF070();
    (*(v12 + 8))(v7, v11);
  }

  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  v16 = sub_22B0DF300();
  [v10 setObject:v13 forKey:v16];

  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v8);
  return sub_22B07D02C(a1, &unk_27D8B5670, &unk_22B0E32C0);
}

uint64_t sub_22B07D728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_22B07D9F0(a1, &v22 - v10);
  v12 = sub_22B0DF0E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_22B07D02C(v11, &unk_27D8B5670, &unk_22B0E32C0);
  if (v14 == 1)
  {
    v15 = [objc_opt_self() standardUserDefaults];
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = sub_22B0DF300();
    v19 = [v15 objectForKey_];

    if (v19)
    {
      sub_22B0DF7A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      v20 = swift_dynamicCast();
      (*(v13 + 56))(v9, v20 ^ 1u, 1, v12);
    }

    else
    {
      sub_22B07D02C(v26, &qword_27D8B5770, &unk_22B0E2E40);
      (*(v13 + 56))(v9, 1, 1, v12);
    }

    sub_22B07E0F8(v9, a1);
  }

  return sub_22B07D9F0(a1, v23);
}

uint64_t sub_22B07D980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B07D9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*RunDatePreferencesStorage.lastRunDate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = (v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D728(v6 + *(v7 + 28), v1, v5);
  os_unfair_lock_unlock(v6);
  return sub_22B07DB6C;
}

void sub_22B07DB6C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_22B07D9F0(v3, v2);
    RunDatePreferencesStorage.lastRunDate.setter(v2);
    sub_22B07D02C(v3, &unk_27D8B5670, &unk_22B0E32C0);
  }

  else
  {
    RunDatePreferencesStorage.lastRunDate.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t RunDatePreferencesStorage.deinit()
{
  v1 = *(v0 + 24);

  v2 = v0 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07DC40(v2 + *(v3 + 28));
  return v0;
}

uint64_t sub_22B07DC40(uint64_t a1)
{
  v2 = type metadata accessor for RunDatePreferencesStorage.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RunDatePreferencesStorage.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07DC40(&v2[*(v3 + 28)]);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void sub_22B07DD4C(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D728(v3 + *(v4 + 28), v1, a1);

  os_unfair_lock_unlock(v3);
}

void (*sub_22B07DDD4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = RunDatePreferencesStorage.lastRunDate.modify(v2);
  return sub_22B07DE44;
}

void sub_22B07DE44(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_22B07DEB4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B07DEEC()
{
  sub_22B07E094(319, qword_2813E99C8, type metadata accessor for RunDatePreferencesStorage.State, MEMORY[0x277D85458]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22B07DFF8()
{
  sub_22B07E094(319, &unk_2813EAD58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22B07E094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22B07E0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id HMMCounterDistribution.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMMCounterDistribution.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMMCounterDistribution();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ProcessLaunchLogEvent.__allocating_init(isFirstLaunchAfterBoot:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC14HomeKitMetrics21ProcessLaunchLogEvent_isFirstLaunchAfterBoot] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ProcessLaunchLogEvent.init(isFirstLaunchAfterBoot:)(char a1)
{
  v1[OBJC_IVAR____TtC14HomeKitMetrics21ProcessLaunchLogEvent_isFirstLaunchAfterBoot] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProcessLaunchLogEvent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ProcessLaunchLogEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessLaunchLogEvent.__allocating_init(startTime:)(double a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStartTime_];
}

id ProcessLaunchLogEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessLaunchLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for FlatFileCounterSetType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FlatFileCounterSetType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B07E96C()
{
  v1 = *v0;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v1 + 1);
  return sub_22B0DFD80();
}

uint64_t sub_22B07E9E4()
{
  v1 = *v0;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v1 + 1);
  return sub_22B0DFD80();
}

void *sub_22B07EA28@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_22B07EA64()
{
  result = qword_2813EA0E0[0];
  if (!qword_2813EA0E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813EA0E0);
  }

  return result;
}

uint64_t sub_22B07EAB8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5718, ">}");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5798, &qword_22B0E2FA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B07FB90();
  sub_22B0DFDB0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for HomeGroupSpecifier();
    v14 = *(*v22 + 48);
    v15 = *(*v22 + 52);
    swift_deallocPartialClassInstance();
    return v6;
  }

  v13 = v8;
  sub_22B0DFB80();
  v17 = v6;
  sub_22B0DF100();

  v18 = sub_22B0DF140();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v17, 1, v18);
  if (result != 1)
  {
    (*(v19 + 32))(v22 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID, v17, v18);
    sub_22B07D124(a1, v21);
    v6 = sub_22B094AF0(v21);
    (*(v13 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B07ED88(void *a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5788, &qword_22B0E2F98);
  v19 = *(v21 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v20 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5790, &qword_22B0E2FA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B07FB3C();
  sub_22B0DFDC0();
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  sub_22B0DFBD0();
  result = (*(v7 + 8))(v10, v6);
  if (!v2)
  {
    v15 = v19;
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22B07FB90();
    v17 = v20;
    sub_22B0DFDC0();
    sub_22B0DF110();
    v18 = v21;
    sub_22B0DFBD0();
    (*(v15 + 8))(v17, v18);
  }

  return result;
}

uint64_t sub_22B07EFD8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_22B0DF380();

  return sub_22B0DF380();
}

uint64_t sub_22B07F02C(void *a1)
{
  v3 = sub_22B0DF140();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5710, ":}");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5718, ">}");
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  if ((*(v1 + 2) != a1[2] || *(v1 + 3) != a1[3]) && (sub_22B0DFC60() & 1) == 0 || *v1 != *a1)
  {
    v30 = 0;
    return v30 & 1;
  }

  v35 = v7;
  v36 = v16;
  v38 = v11;
  v22 = v4[2];
  v22(v21, &v1[OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID], v3);
  v37 = v4;
  v23 = v4[7];
  v24 = 1;
  v23(v21, 0, 1, v3);
  type metadata accessor for HomeGroupSpecifier();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v22(v19, (v25 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID), v3);
    v24 = 0;
  }

  v23(v19, v24, 1, v3);
  v26 = *(v8 + 48);
  v27 = v38;
  sub_22B07CFBC(v21, v38);
  sub_22B07CFBC(v19, v27 + v26);
  v28 = v37;
  v29 = v37[6];
  if (v29(v27, 1, v3) != 1)
  {
    v31 = v36;
    sub_22B07CFBC(v27, v36);
    if (v29(v27 + v26, 1, v3) != 1)
    {
      v32 = v35;
      (v28[4])(v35, v27 + v26, v3);
      sub_22B07D188(&qword_2813EAD50);
      v30 = sub_22B0DF2F0();
      v33 = v28[1];
      v33(v32, v3);
      sub_22B07D02C(v19, &qword_27D8B5718, ">}");
      sub_22B07D02C(v21, &qword_27D8B5718, ">}");
      v33(v31, v3);
      sub_22B07D02C(v27, &qword_27D8B5718, ">}");
      return v30 & 1;
    }

    sub_22B07D02C(v19, &qword_27D8B5718, ">}");
    sub_22B07D02C(v21, &qword_27D8B5718, ">}");
    (v28[1])(v31, v3);
    goto LABEL_13;
  }

  sub_22B07D02C(v19, &qword_27D8B5718, ">}");
  sub_22B07D02C(v21, &qword_27D8B5718, ">}");
  if (v29(v27 + v26, 1, v3) != 1)
  {
LABEL_13:
    sub_22B07D02C(v27, &qword_27D8B5710, ":}");
    v30 = 0;
    return v30 & 1;
  }

  sub_22B07D02C(v27, &qword_27D8B5718, ">}");
  v30 = 1;
  return v30 & 1;
}

unint64_t sub_22B07F524()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5748, &unk_22B0E2FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E2760;
  *(inited + 32) = 0;
  v2 = *(v0 + 24);
  *(inited + 40) = *(v0 + 16);
  *(inited + 48) = v2;
  *(inited + 56) = 1;

  *(inited + 64) = sub_22B0DF110();
  *(inited + 72) = v3;
  v4 = sub_22B0B8BF0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5750, &qword_22B0E2C60);
  swift_arrayDestroy();
  return v4;
}

unint64_t sub_22B07F5E8()
{
  sub_22B0DF8E0();

  MEMORY[0x231889070](*(v0 + 16), *(v0 + 24));
  MEMORY[0x231889070](0x5555656D6F68202CLL, 0xEB000000003D4449);
  sub_22B0DF140();
  sub_22B07D188(&qword_27D8B5740);
  v1 = sub_22B0DFC20();
  MEMORY[0x231889070](v1);

  MEMORY[0x231889070](93, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t sub_22B07F6EC()
{
  sub_22B0DFD40();
  sub_22B0DF380();
  return sub_22B0DFD80();
}

uint64_t sub_22B07F758()
{
  sub_22B0DFD40();
  sub_22B0DF380();
  return sub_22B0DFD80();
}

uint64_t sub_22B07F7A8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22B0DFB70();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_22B07F830@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22B0DFB70();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22B07F888(uint64_t a1)
{
  v2 = sub_22B07FB90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B07F8C4(uint64_t a1)
{
  v2 = sub_22B07FB90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B07F900(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_22B07EAB8(a1);
}

uint64_t sub_22B07F94C()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID;
  v2 = sub_22B0DF140();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_22B07F9B4()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID;
  v3 = sub_22B0DF140();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for HomeGroupSpecifier()
{
  result = qword_2813EAD28;
  if (!qword_2813EAD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B07FAAC()
{
  result = sub_22B0DF140();
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

unint64_t sub_22B07FB3C()
{
  result = qword_2813EA2E8[0];
  if (!qword_2813EA2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813EA2E8);
  }

  return result;
}

unint64_t sub_22B07FB90()
{
  result = qword_2813EAD48;
  if (!qword_2813EAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD48);
  }

  return result;
}

unint64_t sub_22B07FBF8()
{
  result = qword_27D8B57A0;
  if (!qword_27D8B57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57A0);
  }

  return result;
}

unint64_t sub_22B07FC50()
{
  result = qword_2813EAD38;
  if (!qword_2813EAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD38);
  }

  return result;
}

unint64_t sub_22B07FCA8()
{
  result = qword_2813EAD40;
  if (!qword_2813EAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD40);
  }

  return result;
}

uint64_t sub_22B07FD14()
{
  v1 = *v0;
  sub_22B0DFD40();
  sub_22B0DFD60();
  return sub_22B0DFD80();
}

uint64_t sub_22B07FD88()
{
  v1 = *v0;
  sub_22B0DFD40();
  sub_22B0DFD60();
  return sub_22B0DFD80();
}

_BYTE *sub_22B07FDCC@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DataEncodingType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataEncodingType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B07FF58()
{
  result = qword_27D8B57A8;
  if (!qword_27D8B57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57A8);
  }

  return result;
}

uint64_t sub_22B07FFAC(uint64_t a1, unint64_t a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_19;
    }

    v5 = v5;
  }

LABEL_11:
  v9 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (v9 <= 0xFFFFFFFFLL)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25[0] = bswap32(v9);
      v14 = sub_22B0A33AC(v25, 4);
      v16 = v15;
      swift_beginAccess();
      sub_22B0DEF60();
      swift_endAccess();
      sub_22B080408(v14, v16);
      LOBYTE(v25[0]) = a3 & 1;
      v17 = sub_22B0A33AC(v25, 1);
      v19 = v18;
      swift_beginAccess();
      sub_22B0DEF60();
      swift_endAccess();
      sub_22B080408(v17, v19);
      swift_beginAccess();
      v24[3] = MEMORY[0x277CC9318];
      v24[4] = MEMORY[0x277CC9300];
      v24[0] = a1;
      v24[1] = a2;
      v20 = __swift_project_boxed_opaque_existential_1(v24, MEMORY[0x277CC9318]);
      v21 = *v20;
      v22 = v20[1];
      sub_22B08045C(a1, a2);
      sub_22B08023C(v21, v22);
      __swift_destroy_boxed_opaque_existential_0(v24);
      result = swift_endAccess();
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  sub_22B0804B0();
  swift_allocError();
  *v10 = v9;
  *(v10 + 8) = 0;
  result = swift_willThrow();
LABEL_16:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B0801E0()
{
  sub_22B080408(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22B08023C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_22B0DEF30();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22B080374(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B080374(uint64_t a1, uint64_t a2)
{
  result = sub_22B0DEE30();
  if (!result || (result = sub_22B0DEE50(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22B0DEE40();
      return sub_22B0DEF30();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B080408(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22B08045C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22B0804B0()
{
  result = qword_27D8B57B0;
  if (!qword_27D8B57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57B0);
  }

  return result;
}

id sub_22B080590()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22B0805F8@<X0>(void *a1@<X8>)
{
  result = [v1 duration];
  *a1 = v4;
  return result;
}

id sub_22B080640(double *a1)
{
  v2 = *a1;
  [v1 duration];
  v4 = v2 + v3;

  return [v1 setDuration_];
}

uint64_t sub_22B080690()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22B0DF330();
    v5 = v4;

    type metadata accessor for NamedGroupSpecifier();
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v5;
  }

  else
  {
    result = sub_22B0DFB00();
    __break(1u);
  }

  return result;
}

id sub_22B0807A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedNamedGroup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22B08087C@<X0>(void *a1@<X8>)
{
  result = [v1 value];
  *a1 = result;
  return result;
}

char *sub_22B0808C4(uint64_t *a1)
{
  v2 = *a1;
  result = [v1 value];
  if (__OFADD__(result, v2))
  {
    __break(1u);
  }

  else
  {

    return [v1 setValue_];
  }

  return result;
}

uint64_t sub_22B08091C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v6;
    v12 = *(a1 + 32);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_22B087990(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    sub_22B08A77C(a1);
    sub_22B0878DC(a2, a3, v11);

    return sub_22B08A77C(v11);
  }

  return result;
}

uint64_t sub_22B080A44(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(unint64_t, uint64_t))
{
  v10 = v7;
  if (a2)
  {
    v15 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v10;
    sub_22B087B48(a1 & 1, a2, a3, a4, isUniquelyReferenced_nonNull_native, a5, a6);

    *v10 = v27;
  }

  else
  {
    v19 = *v7;
    v20 = sub_22B0768A8(a3, a4);
    LOBYTE(v19) = v21;

    if (v19)
    {
      v22 = *v10;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v10;
      v28 = *v10;
      if (!v23)
      {
        sub_22B083E08(a5, a6);
        v24 = v28;
      }

      v25 = *(*(v24 + 48) + 16 * v20 + 8);

      v26 = *(*(v24 + 56) + 16 * v20 + 8);

      result = a7(v20, v24);
      *v10 = v24;
    }
  }

  return result;
}

uint64_t sub_22B080B9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = *v4;
    v9 = sub_22B0768A8(a3, a4);
    LOBYTE(v8) = v10;

    if (v8)
    {
      v12 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v5;
      v19 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22B084928();
        v14 = v19;
      }

      v15 = *(*(v14 + 48) + 16 * v9 + 8);

      result = sub_22B09DDE4(v9, v14);
      *v5 = v14;
    }
  }

  else
  {
    v17 = *v4;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_22B088234(a3, a4, v18, *&a1);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_22B080CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(unint64_t, uint64_t))
{
  v9 = v6;
  if (a1)
  {
    v13 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;
    sub_22B088530(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v6 = v24;
  }

  else
  {
    v17 = *v6;
    v18 = sub_22B0768A8(a2, a3);
    LOBYTE(v17) = v19;

    if (v17)
    {
      v20 = *v9;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v9;
      v25 = *v9;
      if (!v21)
      {
        sub_22B084EC0(a4, a5);
        v22 = v25;
      }

      v23 = *(*(v22 + 48) + 16 * v18 + 8);

      result = a6(v18, v22);
      *v9 = v22;
    }
  }

  return result;
}

HomeKitMetrics::TapToRadarDraft::Classification_optional __swiftcall TapToRadarDraft.Classification.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeKitMetrics::TapToRadarDraft::Reproducibility_optional __swiftcall TapToRadarDraft.Reproducibility.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeKitMetrics::TapToRadarDraft::AutoDiagnostics_optional __swiftcall TapToRadarDraft.AutoDiagnostics.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22B080E24()
{
  v1 = *v0;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v1);
  return sub_22B0DFD80();
}

uint64_t sub_22B080E6C()
{
  v1 = *v0;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v1);
  return sub_22B0DFD80();
}

uint64_t TapToRadarDraft.category.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TapToRadarDraft.category.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TapToRadarDraft.displayReason.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_22B081000(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  v5 = sub_22B089738(75);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x231889020](v5, v7, v9, v11);
  v14 = v13;

  v15 = *(a2 + 24);

  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  return result;
}

uint64_t TapToRadarDraft.displayReason.setter()
{
  v1 = sub_22B089738(75);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = MEMORY[0x231889020](v1, v3, v5, v7);
  v10 = v9;

  v11 = *(v0 + 24);

  *(v0 + 16) = v8;
  *(v0 + 24) = v10;
  return result;
}

uint64_t (*TapToRadarDraft.displayReason.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_22B08116C;
}

uint64_t sub_22B08116C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v7 = a1[1];

    v8 = sub_22B089738(75);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = MEMORY[0x231889020](v8, v10, v12, v14);
    v17 = v16;

    *(v5 + 16) = v15;
    *(v5 + 24) = v17;
    v18 = a1[1];
  }

  else
  {
    v20 = sub_22B089738(75);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x231889020](v20, v22, v24, v26);
    v29 = v28;

    *(v5 + 16) = v27;
    *(v5 + 24) = v29;
  }

  return result;
}

uint64_t TapToRadarDraft.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_22B0812C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  v5 = sub_22B089738(240);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x231889020](v5, v7, v9, v11);
  v14 = v13;

  v15 = *(a2 + 40);

  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  return result;
}

uint64_t TapToRadarDraft.title.setter()
{
  v1 = sub_22B089738(240);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = MEMORY[0x231889020](v1, v3, v5, v7);
  v10 = v9;

  v11 = *(v0 + 40);

  *(v0 + 32) = v8;
  *(v0 + 40) = v10;
  return result;
}

uint64_t (*TapToRadarDraft.title.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_22B081430;
}

uint64_t sub_22B081430(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v7 = a1[1];

    v8 = sub_22B089738(240);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = MEMORY[0x231889020](v8, v10, v12, v14);
    v17 = v16;

    *(v5 + 32) = v15;
    *(v5 + 40) = v17;
    v18 = a1[1];
  }

  else
  {
    v20 = sub_22B089738(240);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x231889020](v20, v22, v24, v26);
    v29 = v28;

    *(v5 + 32) = v27;
    *(v5 + 40) = v29;
  }

  return result;
}

uint64_t TapToRadarDraft.problemDescription.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TapToRadarDraft.problemDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TapToRadarDraft.component.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_22B0897D4(v2, v3);
}

__n128 TapToRadarDraft.component.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  sub_22B089818(v1[8], v1[9]);
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v8;
  v1[12] = v3;
  return result;
}

uint64_t TapToRadarDraft.bundleID.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t TapToRadarDraft.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t TapToRadarDraft.omitPrefixFromTitle.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t TapToRadarDraft.deleteOnAttach.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t TapToRadarDraft.shouldCaptureScreenshot.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t TapToRadarDraft.screenshotCaptureDelay.setter(double a1)
{
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t TapToRadarDraft.shouldCaptureDumpDisplay.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t TapToRadarDraft.shouldCapturePerformanceTrace.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t TapToRadarDraft.collaborationContactHandles.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft() + 116));
}

uint64_t TapToRadarDraft.collaborationGroupChatID.getter()
{
  v1 = (v0 + *(type metadata accessor for TapToRadarDraft() + 120));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TapToRadarDraft.collaborationGroupChatID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TapToRadarDraft() + 120));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TapToRadarDraft.callbackIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for TapToRadarDraft() + 128));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TapToRadarDraft.callbackIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TapToRadarDraft() + 128));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TapToRadarDraft.shouldCaptureForegroundApp.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t TapToRadarDraft.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 107) = 0u;
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F98];
  *(a1 + 128) = MEMORY[0x277D84F90];
  *(a1 + 136) = v2;
  *(a1 + 144) = v3;
  *(a1 + 152) = v2;
  *(a1 + 160) = v2;
  *(a1 + 168) = v2;
  *(a1 + 176) = 0;
  v4 = type metadata accessor for TapToRadarDraft();
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v5 = v4[22];
  v6 = sub_22B0DF0E0();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *(a1 + v4[23]) = 0;
  *(a1 + v4[24]) = 0;
  *(a1 + v4[25]) = 0;
  *(a1 + v4[26]) = 0;
  *(a1 + v4[27]) = 0;
  *(a1 + v4[28]) = 0;
  *(a1 + v4[29]) = v2;
  v7 = (a1 + v4[30]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v4[31];
  v9 = sub_22B0DEF00();
  result = (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v11 = (a1 + v4[32]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v4[33]) = 0;
  return result;
}

uint64_t TapToRadarDraft.addAttachment(_:)(uint64_t a1)
{
  v3 = sub_22B0DEF00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = *(v1 + 128);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_22B082E98(0, v8[2] + 1, 1, v8, &unk_27D8B5960, &qword_22B0E3A68, MEMORY[0x277CC9260]);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_22B082E98(v9 > 1, v10 + 1, 1, v8, &unk_27D8B5960, &qword_22B0E3A68, MEMORY[0x277CC9260]);
  }

  v8[2] = v10 + 1;
  result = (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v7, v3);
  *(v1 + 128) = v8;
  return result;
}

uint64_t sub_22B08230C(uint64_t result)
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

  v3 = sub_22B082E98(isUniquelyReferenced_nonNull_native, v16, 1, v3, &unk_27D8B5960, &qword_22B0E3A68, MEMORY[0x277CC9260]);
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
  result = sub_22B0DEF00();
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

uint64_t sub_22B08245C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22B082D64(result, v11, 1, v3);
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22B082550(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22B0DF830();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_22B0DF830();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_22B088A5C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22B088AFC(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Void __swiftcall TapToRadarDraft.addDiagnosticExtensionID(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 136);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22B082D64(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_22B082D64((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = countAndFlagsBits;
  *(v7 + 5) = object;
  *(v1 + 136) = v4;
}

uint64_t TapToRadarDraft.setDiagnosticExtensionParameter(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B089978(a1, v6);

  return sub_22B08091C(v6, a2, a3);
}

Swift::Void __swiftcall TapToRadarDraft.setDiagnosticExtensionParameters(_:)(Swift::OpaquePointer a1)
{
  v2 = a1._rawValue + 64;
  v3 = 1 << *(a1._rawValue + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1._rawValue + 8);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_21;
    }

    v5 = *&v2[8 * v9];
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5)) | (v9 << 6);
        v11 = (*(a1._rawValue + 6) + 16 * v10);
        v13 = *v11;
        v12 = v11[1];
        sub_22B089978(*(a1._rawValue + 7) + 40 * v10, &v38);
        v35 = v38;
        v36 = v39;
        v14 = v40;

        if (!v12)
        {
          break;
        }

        v38 = v35;
        v39 = v36;
        v40 = v14;
        v15 = *(v1 + 144);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v1;
        v18 = *(v1 + 144);
        v37 = v18;
        v19 = sub_22B0768A8(v13, v12);
        v21 = v18[2];
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_23;
        }

        v25 = v20;
        if (v18[3] >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = v19;
            sub_22B083C18();
            v19 = v33;
          }
        }

        else
        {
          sub_22B08518C(v24, isUniquelyReferenced_nonNull_native);
          v19 = sub_22B0768A8(v13, v12);
          if ((v25 & 1) != (v26 & 1))
          {
            goto LABEL_25;
          }
        }

        v5 &= v5 - 1;
        if (v25)
        {
          v8 = v19;

          sub_22B0899D4(&v38, v37[7] + 40 * v8);
          v1 = v17;
          *(v17 + 144) = v37;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v18[(v19 >> 6) + 8] |= 1 << v19;
          v27 = (v18[6] + 16 * v19);
          *v27 = v13;
          v27[1] = v12;
          v28 = v18[7] + 40 * v19;
          v29 = v40;
          v30 = v39;
          *v28 = v38;
          *(v28 + 16) = v30;
          *(v28 + 32) = v29;
          v31 = v18[2];
          v23 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v23)
          {
            goto LABEL_24;
          }

          v18[2] = v32;
          v1 = v17;
          *(v17 + 144) = v37;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v7;
      }

LABEL_21:

      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_22B0DFCA0();
  __break(1u);
}

Swift::Void __swiftcall TapToRadarDraft.addKeyword(_:)(NSNumber a1)
{
  v2 = a1.super.super.isa;
  MEMORY[0x231889140]();
  if (*((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B0DF4D0();
  }

  sub_22B0DF500();
}

Swift::Void __swiftcall TapToRadarDraft.addDeviceID(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 160);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22B082D64(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_22B082D64((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = countAndFlagsBits;
  *(v7 + 5) = object;
  *(v1 + 160) = v4;
}

Swift::Void __swiftcall TapToRadarDraft.addDeviceModel(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 168);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22B082D64(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_22B082D64((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = countAndFlagsBits;
  *(v7 + 5) = object;
  *(v1 + 168) = v4;
}

Swift::Void __swiftcall TapToRadarDraft.addRemoteDeviceClasses(_:)(HomeKitMetrics::TapToRadarDraft::RemoteDeviceClasses a1)
{
  v2 = *(v1 + 184);
  if ((*a1.rawValue & ~v2) != 0)
  {
    *(v1 + 184) = v2 | *a1.rawValue;
  }
}

Swift::Void __swiftcall TapToRadarDraft.addRemoteDeviceSelections(_:)(HomeKitMetrics::TapToRadarDraft::RemoteDeviceSelections a1)
{
  v2 = *(v1 + 192);
  if ((*a1.rawValue & ~v2) != 0)
  {
    *(v1 + 192) = v2 | *a1.rawValue;
  }
}

Swift::Void __swiftcall TapToRadarDraft.addCollaborationContactHandle(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(type metadata accessor for TapToRadarDraft() + 116);
  v5 = *(v1 + v4);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22B082D64(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_22B082D64((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = countAndFlagsBits;
  *(v8 + 5) = object;
  *(v1 + v4) = v5;
}

Swift::Void __swiftcall TapToRadarDraft.addCollaborationContactHandles(_:)(Swift::OpaquePointer a1)
{
  v1 = *(type metadata accessor for TapToRadarDraft() + 116);

  sub_22B08245C(v2);
}

char *sub_22B082D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5908, &qword_22B0E3A18);
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

size_t sub_22B082E98(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_22B083074(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58D8, &qword_22B0E39E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58E0, &unk_22B0E39E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B0831BC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58C8, &qword_22B0E39D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58D0, &qword_22B0E39D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B083304(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5908, &qword_22B0E3A18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_22B083388(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5880, &qword_22B0E3988);
  v4 = *(sub_22B0DF0E0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22B083484(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_22B08350C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22B0DFD40();
  sub_22B0DF380();

  v4 = sub_22B0DFD80();

  return sub_22B083790(a1, v4);
}

unint64_t sub_22B0835E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22B0DF860();

  return sub_22B083940(a1, v5);
}

unint64_t sub_22B083628(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22B0DFD40();
  (*(*a1 + 112))(v6);
  v4 = sub_22B0DFD80();

  return sub_22B083A08(a1, v4);
}

unint64_t sub_22B0836B4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22B0DFD40();
  sub_22B088D04(v6, a1);
  v4 = sub_22B0DFD80();

  return sub_22B083AF0(a1, v4);
}

unint64_t sub_22B083720(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22B0DFD40();
  MEMORY[0x231889A00](a1 + 1);
  v4 = sub_22B0DFD80();

  return sub_22B083BA8(a1, v4);
}

unint64_t sub_22B083790(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE800000000000000;
          v8 = 0x44495555656D6F68;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x726F737365636361;
          v7 = 0xED00004449555579;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE900000000000065;
            if (v8 != 0x6D614E70756F7267)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0x6D614E70756F7267;
        v7 = 0xE900000000000065;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x44495555656D6F68;
      }

      else
      {
        v10 = 0x726F737365636361;
      }

      if (v9 == 1)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xED00004449555579;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_22B0DFC60();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22B083940(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22B089978(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231889520](v9, a1);
      sub_22B08A67C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22B083A08(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(**(*(v6 + 48) + 8 * v5) + 120);

      v10 = v9(a1);

      if (v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B083AF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);

      v9 = sub_22B088EC0(v8, a1);

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22B083BA8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_22B083C18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5950, &qword_22B0E3A58);
  v2 = *v0;
  v3 = sub_22B0DFB20();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_22B089978(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_22B083E08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22B0DFB20();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(v4 + 56) + v19;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = (*(v6 + 48) + v19);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v6 + 56) + v19;
        *v27 = v24;
        *(v27 + 8) = v25;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22B083F78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5938, &qword_22B0E3A48);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22B0840DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5930, &qword_22B0E3A40);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22B084240()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5890, &qword_22B0E3F80);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22B0843A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58A0, &qword_22B0E39A8);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
        result = sub_22B08045C(v19, v20);
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

char *sub_22B084518()
{
  v1 = v0;
  v34 = sub_22B0DF0E0();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5898, &qword_22B0E39A0);
  v4 = *v0;
  v5 = sub_22B0DFB20();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_22B0847AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5900, &qword_22B0E3A10);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_22B084928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B60C0, &qword_22B0E3A08);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_22B084AA4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v40 = sub_22B0DF0E0();
  v42 = *(v40 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20]();
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_22B0DFB20();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v5;
    v35 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v35, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v41 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v36 = v42 + 32;
    v37 = v42 + 16;
    v38 = v8;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v42;
        v25 = *(v42 + 72) * v23;
        v26 = v39;
        v27 = v40;
        (*(v42 + 16))(v39, *(v8 + 48) + v25, v40);
        v28 = 16 * v23;
        v29 = *(v8 + 56) + 16 * v23;
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = v41;
        (*(v24 + 32))(*(v41 + 48) + v25, v26, v27);
        v33 = *(v32 + 56) + v28;
        *v33 = v30;
        v8 = v38;
        *(v33 + 8) = v31;

        v18 = v43;
      }

      while (v43);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v34;
        v10 = v41;
        goto LABEL_21;
      }

      v22 = *(v35 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_22B084D38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58F0, &qword_22B0E3A00);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *(v22 + 24);
        v26 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v26;
        *(v27 + 16) = v23;
        *(v27 + 24) = v25;
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

id sub_22B084EC0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22B0DFB20();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22B08501C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58E8, &qword_22B0E39F8);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

uint64_t sub_22B08518C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5950, &qword_22B0E3A58);
  v41 = a2;
  result = sub_22B0DFB30();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_22B089978(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22B085498(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = a2;
  result = sub_22B0DFB30();
  v10 = result;
  if (*(v7 + 16))
  {
    v40 = v5;
    v41 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v25 = 16 * (v22 | (v11 << 6));
      v26 = (*(v7 + 48) + v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v7 + 56) + v25;
      v43 = *v29;
      v30 = *(v29 + 8);
      if ((v42 & 1) == 0)
      {
      }

      v31 = *(v10 + 40);
      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v18 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = 16 * v18;
      v20 = (*(v10 + 48) + v19);
      *v20 = v27;
      v20[1] = v28;
      v21 = *(v10 + 56) + v19;
      *v21 = v43;
      *(v21 + 8) = v30;
      ++*(v10 + 16);
      v7 = v41;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v15 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v5 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v7 + 32);
    v5 = v40;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_22B085758(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5938, &qword_22B0E3A48);
  v33 = a2;
  result = sub_22B0DFB30();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_22B0DFD40();
      (*(*v21 + 112))(v34);
      result = sub_22B0DFD80();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B085A10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5930, &qword_22B0E3A40);
  v51 = a2;
  v7 = sub_22B0DFB30();
  v8 = v7;
  if (!*(v5 + 16))
  {
LABEL_45:

    goto LABEL_46;
  }

  v9 = 0;
  v45 = v2;
  v46 = (v5 + 64);
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
  v47 = v13;
  v48 = v5;
  v49 = v7 + 64;
  v50 = v7;
LABEL_11:
  if (v12)
  {
    v20 = __clz(__rbit64(v12));
    v52 = (v12 - 1) & v12;
    goto LABEL_18;
  }

  v21 = v9;
  result = v46;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_48;
    }

    if (v9 >= v13)
    {
      break;
    }

    v22 = v46[v9];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v52 = (v22 - 1) & v22;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 56);
      v25 = *(*(v5 + 48) + 8 * v23);
      v26 = *(v24 + 8 * v23);
      if ((v51 & 1) == 0)
      {
      }

      v53 = v26;
      v27 = *(v8 + 40);
      sub_22B0DFD40();
      v28 = 1 << *(v25 + 32);
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v30 = v29 & *(v25 + 64);
      v31 = (v28 + 63) >> 6;

      v32 = 0;
      v33 = 0;
      if (v30)
      {
        while (1)
        {
          v34 = v33;
LABEL_28:
          v35 = __clz(__rbit64(v30)) | (v34 << 6);
          v36 = *(*(v25 + 48) + v35);
          v37 = (*(v25 + 56) + 16 * v35);
          v39 = *v37;
          v38 = v37[1];

          if (!v38)
          {
            break;
          }

          v30 &= v30 - 1;
          sub_22B0DF380();

          sub_22B0DF380();

          result = sub_22B0DFD80();
          v32 ^= result;
          v33 = v34;
          if (!v30)
          {
            goto LABEL_25;
          }
        }

LABEL_8:

        MEMORY[0x231889A00](v32);
        result = sub_22B0DFD80();
        v8 = v50;
        v15 = -1 << *(v50 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v49 + 8 * (v16 >> 6))) != 0)
        {
          v18 = __clz(__rbit64((-1 << v16) & ~*(v49 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
          v19 = v53;
LABEL_10:
          *(v49 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
          *(*(v50 + 48) + 8 * v18) = v25;
          *(*(v50 + 56) + 8 * v18) = v19;
          ++*(v50 + 16);
          v13 = v47;
          v5 = v48;
          v12 = v52;
          goto LABEL_11;
        }

        v40 = 0;
        v41 = (63 - v15) >> 6;
        v19 = v53;
        while (++v17 != v41 || (v40 & 1) == 0)
        {
          v42 = v17 == v41;
          if (v17 == v41)
          {
            v17 = 0;
          }

          v40 |= v42;
          v43 = *(v49 + 8 * v17);
          if (v43 != -1)
          {
            v18 = __clz(__rbit64(~v43)) + (v17 << 6);
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_25:
        while (1)
        {
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v34 >= v31)
          {
            goto LABEL_8;
          }

          v30 = *(v25 + 64 + 8 * v34);
          ++v33;
          if (v30)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  if (v51)
  {
    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v46, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v46 = -1 << v44;
    }

    *(v5 + 16) = 0;
    goto LABEL_45;
  }

  v3 = v45;
LABEL_46:
  *v3 = v8;
  return result;
}

uint64_t sub_22B085E2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5890, &qword_22B0E3F80);
  v33 = a2;
  result = sub_22B0DFB30();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_22B0DFD40();
      (*(*v21 + 112))(v34);
      result = sub_22B0DFD80();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B0860E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58A0, &qword_22B0E39A8);
  v38 = a2;
  result = sub_22B0DFB30();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + v21);
      v24 = v22 + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v39 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {
        sub_22B08045C(v25, v26);
      }

      v27 = *(v8 + 40);
      sub_22B0DFD40();
      MEMORY[0x231889A00](v23 + 1);
      result = sub_22B0DFD80();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v23;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B08639C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22B0DF0E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5898, &qword_22B0E39A0);
  v43 = a2;
  result = sub_22B0DFB30();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_22B076420(&qword_2813EAD80);
      result = sub_22B0DF2A0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22B086778(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5900, &qword_22B0E3A10);
  v38 = a2;
  result = sub_22B0DFB30();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B086A2C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_22B0DF0E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v49 = a2;
  result = sub_22B0DFB30();
  v18 = result;
  if (*(v15 + 16))
  {
    v54 = v14;
    v45 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v11 + 16);
    v47 = v15;
    v48 = v11;
    v50 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 48);
      v53 = *(v48 + 72);
      v33 = v32 + v53 * v31;
      if (v49)
      {
        (*v50)(v54, v33, v10);
        v34 = (*(v15 + 56) + 16 * v31);
        v52 = *v34;
        v51 = *(v34 + 1);
      }

      else
      {
        (*v46)(v54, v33, v10);
        v35 = (*(v15 + 56) + 16 * v31);
        v52 = *v35;
        v51 = *(v35 + 1);
      }

      v36 = *(v18 + 40);
      sub_22B076420(&qword_2813EAD80);
      result = sub_22B0DF2A0();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v50)(*(v18 + 48) + v53 * v26, v54, v10);
      v27 = *(v18 + 56) + 16 * v26;
      *v27 = v52;
      *(v27 + 8) = v51;
      ++*(v18 + 16);
      v15 = v47;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v7 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v15 + 32);
    v7 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_22B086E18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B60C0, &qword_22B0E3A08);
  v37 = a2;
  result = sub_22B0DFB30();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B0870D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58F0, &qword_22B0E3A00);
  v40 = a2;
  result = sub_22B0DFB30();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 40 * v22;
      v27 = *(v26 + 16);
      v28 = *(v26 + 24);
      v41 = v28;
      v42 = *v26;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 40 * v16;
      *v18 = v42;
      *(v18 + 16) = v27;
      *(v18 + 24) = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B087398(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_22B0DFB30();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_22B087634(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58E8, &qword_22B0E39F8);
  v38 = a2;
  result = sub_22B0DFB30();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

double sub_22B0878DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22B0768A8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22B083C18();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 32) = *(v14 + 32);
    sub_22B09D770(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22B087990(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B0768A8(a2, a3);
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
      sub_22B08518C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22B0768A8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22B083C18();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_22B0899D4(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_22B087B48(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v16 = *v7;
  v17 = sub_22B0768A8(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_22B085498(v22, a5 & 1, a6, a7);
      v26 = *v10;
      v17 = sub_22B0768A8(a3, a4);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_22B083E08(a6, a7);
      v17 = v25;
    }
  }

  v28 = *v10;
  if (v23)
  {
    v29 = v28[7] + 16 * v17;
    v30 = *(v29 + 8);
    *v29 = a1 & 1;
    *(v29 + 8) = a2;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v28[6] + 16 * v17);
  *v32 = a3;
  v32[1] = a4;
  v33 = v28[7] + 16 * v17;
  *v33 = a1 & 1;
  *(v33 + 8) = a2;
  v34 = v28[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v35;
}

uint64_t sub_22B087D18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22B083628(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22B085758(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_22B083628(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for NamedGroupSpecifier();
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_22B083F78();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

unint64_t sub_22B087E8C(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_22B083720(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22B0860E4(v18, a5 & 1);
      v22 = *v6;
      result = sub_22B083720(a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_22B0843A4();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + result) = a4;
    v28 = v24[7] + 24 * result;
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3 & 1;
    v29 = v24[2];
    v17 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v17)
    {
      v24[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v25 = v24[7] + 24 * result;
  v26 = *v25;
  v27 = *(v25 + 8);
  *v25 = a1;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3 & 1;

  return sub_22B080408(v26, v27);
}

uint64_t sub_22B088044(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v33 = a5;
  v34 = a6;
  v7 = v6;
  v35 = a1;
  v11 = sub_22B0DF0E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_22B07639C(a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_22B084AA4(v33, v34);
      goto LABEL_9;
    }

    sub_22B086A2C(v21, a4 & 1, v33, v34);
    v24 = *v7;
    v25 = sub_22B07639C(a3);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22B0DFCA0();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = v35;
  v28 = *v7;
  if (v22)
  {
    v29 = v28[7] + 16 * v18;
    v30 = *(v29 + 8);
    *v29 = v35 & 1;
    *(v29 + 8) = a2;
  }

  else
  {
    (*(v12 + 16))(v15, a3, v11);
    return sub_22B088998(v18, v15, v27 & 1, a2, v28);
  }
}