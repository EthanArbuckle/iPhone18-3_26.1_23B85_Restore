uint64_t sub_224B441E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_224DAF838();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_224DAF838();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224B442EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_224B44350(uint64_t a1)
{
  v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  os_unfair_lock_assert_not_owner(*(v3 + 16));
  os_unfair_lock_lock(*(v3 + 16));
  sub_224B402AC(v1, a1);
  os_unfair_lock_unlock(*(v3 + 16));

  sub_224B4042C(0);
}

unint64_t sub_224B443FC@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  while (1)
  {
    result = sub_224B40A80();
    if ((v7 & 1) == 0)
    {
      break;
    }

    if (result != 2)
    {
      result = 0;
      break;
    }
  }

  *a1 = result;
  return result;
}

void sub_224B44460(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_224B4446C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24) + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
  result = sub_224A4A248();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_224B444FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 16 * a3;
  v12 = v7 + 32 + 16 * a2;
  if (result < v12 || result >= v12 + 16 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_224B445D8()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + *((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xF0));
  return sub_224DAB348();
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224B44674(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_224B446D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_224B44720(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TaskError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TaskError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_224B448D4()
{
  result = qword_27D6F40F0;
  if (!qword_27D6F40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F40F0);
  }

  return result;
}

unint64_t sub_224B4492C()
{
  result = qword_27D6F40F8;
  if (!qword_27D6F40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F40F8);
  }

  return result;
}

unint64_t sub_224B44984()
{
  result = qword_27D6F4100;
  if (!qword_27D6F4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4100);
  }

  return result;
}

uint64_t sub_224B44A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v2 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v8);
  v33 = &v31 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = sub_224DAC248();
  v22 = [v21 extensionIdentity];
  sub_224DAF538();
  v23 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v17 + 16))(v20, &v22[v23], v16);
  v24 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(&v22[v24], v15, &unk_27D6F5060, &qword_224DB5620);
  sub_224DA9898();
  v25 = sub_224DAF508();

  sub_224C931C8(v25);
  sub_224DAC218();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v10, 1, v26) == 1)
  {
    sub_224AB4294(v10);
    v28 = 1;
    v29 = v33;
  }

  else
  {
    sub_224DAA1E8();
    sub_224B44F14(&qword_2813519C0);
    sub_224B44F14(&unk_281351998);
    sub_224B44F14(&qword_2813519B8);
    sub_224B44F14(&qword_2813519B0);
    v29 = v33;
    sub_224DAA1D8();
    (*(v27 + 8))(v10, v26);
    v28 = 0;
  }

  (*(v27 + 56))(v29, v28, 1, v26);
  sub_224DAC258();
  sub_224A3796C(v29, v35, &qword_27D6F56C0, &unk_224DB3580);
  sub_224DAC228();
  return sub_224AB4294(v29);
}

uint64_t sub_224B44F14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F30E0, &unk_224DB2AD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_224B44F78()
{
  result = qword_27D6F4108;
  if (!qword_27D6F4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4108);
  }

  return result;
}

uint64_t sub_224B44FCC()
{
  if (*v0)
  {
    result = 0x697461676976616ELL;
  }

  else
  {
    result = 0x6979616C50776F6ELL;
  }

  *v0;
  return result;
}

void sub_224B4500C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - v4;
  v6 = sub_224DA9BF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41E0, &qword_224DB5C38);
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41E8, &qword_224DB5C40);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v42 = &v37 - v18;
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock) + 16));
  v19 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenterSubscription;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenterSubscription))
  {

    sub_224DAB328();

    v20 = *(v0 + v19);
  }

  *(v0 + v19) = 0;

  v21 = *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);
  *(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers) = MEMORY[0x277D84FA0];

  v22 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenter;
  swift_beginAccess();
  sub_224A3796C(v1 + v22, &v44, &unk_27D6F5510, &qword_224DB5C28);
  if (v45)
  {
    v37 = v5;
    v38 = v16;
    v39 = v15;
    sub_224A36F98(&v44, v46);
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    sub_224DA9BE8();
    v27 = sub_224DAD4D8();
    (*(v7 + 8))(v10, v6);
    *&v44 = v27;
    v43 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F0, &qword_224DB5C48);
    sub_224A33088(&qword_281351058, &qword_27D6F41F0, &qword_224DB5C48);
    sub_224DAB3D8();

    *&v44 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__queue);
    v28 = v44;
    v29 = sub_224DAF358();
    v30 = v37;
    (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_2813513B8, &qword_27D6F41E0, &qword_224DB5C38);
    sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
    v31 = v28;
    v33 = v41;
    v32 = v42;
    sub_224DAB448();
    sub_224A3311C(v30, &qword_27D6F5090, &qword_224DB5C30);

    (*(v40 + 8))(v14, v33);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_224A33088(&unk_2813511E0, &qword_27D6F41E8, &qword_224DB5C40);
    v34 = v39;
    v35 = sub_224DAB488();

    (*(v38 + 8))(v32, v34);
    v36 = *(v1 + v19);
    *(v1 + v19) = v35;

    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    sub_224A3311C(&v44, &unk_27D6F5510, &qword_224DB5C28);
    if (qword_281351610 != -1)
    {
      swift_once();
    }

    v23 = sub_224DAB258();
    __swift_project_value_buffer(v23, qword_281364FD0);
    v24 = sub_224DAB228();
    v25 = sub_224DAF288();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_224A2F000, v24, v25, "activityCenter is nil; could not subscribe to Live Activities", v26, 2u);
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }
  }
}

void sub_224B457B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_224A6AF54();
  }
}

void sub_224B4580C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_224A6AF54();
  }
}

void sub_224B45860()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
    os_unfair_lock_lock(*(v2 + 16));
    sub_224B47470(v1);
    os_unfair_lock_unlock(*(v2 + 16));
  }
}

uint64_t sub_224B458F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v18 = a1;
  v17 = a3;
  if (v7 >> 62)
  {
LABEL_19:
    v8 = sub_224DAF838();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_14;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a2)
        {
        }
      }

      ++v9;
    }

    while (v11 != v8);
  }

  type metadata accessor for WeakProcessMonitoringObserver();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 24) = v17;
  swift_unknownObjectWeakAssign();
  v14 = swift_beginAccess();
  MEMORY[0x22AA5D350](v14);
  if (*((*(v18 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v18 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((*(v18 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_224DAF038();
  }

  sub_224DAF078();
  return swift_endAccess();
}

uint64_t sub_224B45B00(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
  result = swift_beginAccess();
  v36 = a1;
  v35 = v4;
  v6 = *(a1 + v4);
  if (v6 >> 62)
  {
    goto LABEL_56;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      if (v7 < 1)
      {
        __break(1u);
        return result;
      }

      v34 = v6 & 0xC000000000000001;
      v8 = v6;

      v9 = v8;
      v10 = 0;
      v32 = v7;
      v33 = v8;
      while (1)
      {
        if (v34)
        {
          v13 = MEMORY[0x22AA5DCC0](v10, v9);
        }

        else
        {
          v13 = *(v9 + 8 * v10 + 32);
        }

        swift_beginAccess();

        v14 = v2;
        v15 = sub_224B483BC((v36 + v35), v13);

        v16 = *(v36 + v35);
        v17 = v16 >> 62;
        if (v16 >> 62)
        {
          break;
        }

        v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 - v15;
        if (v18 < v15)
        {
          goto LABEL_50;
        }

LABEL_13:
        if (v15 < 0)
        {
          goto LABEL_51;
        }

        if (v17)
        {
          v20 = sub_224DAF838();
        }

        else
        {
          v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v20 < v18)
        {
          goto LABEL_52;
        }

        v2 = -v19;
        if (__OFSUB__(0, v19))
        {
          goto LABEL_53;
        }

        if (v17)
        {
          v21 = sub_224DAF838();
        }

        else
        {
          v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v22 = v21 - v19;
        if (__OFADD__(v21, v2))
        {
          goto LABEL_54;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v36 + v35) = v16;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (v17)
          {
            goto LABEL_30;
          }

          v24 = v16 & 0xFFFFFFFFFFFFFF8;
          if (v22 <= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v17)
          {
LABEL_30:
            sub_224DAF838();
            goto LABEL_31;
          }

          v24 = v16 & 0xFFFFFFFFFFFFFF8;
        }

        v25 = *(v24 + 16);
LABEL_31:
        v16 = sub_224DAF968();
        *(v36 + v35) = v16;
        v24 = v16 & 0xFFFFFFFFFFFFFF8;
LABEL_32:
        type metadata accessor for WeakProcessMonitoringObserver();
        swift_arrayDestroy();
        if (v19)
        {
          if (v16 >> 62)
          {
            v30 = sub_224DAF838();
            v27 = v30 - v18;
            if (__OFSUB__(v30, v18))
            {
LABEL_47:
              __break(1u);
            }
          }

          else
          {
            v26 = *(v24 + 16);
            v27 = v26 - v18;
            if (__OFSUB__(v26, v18))
            {
              goto LABEL_47;
            }
          }

          v28 = (v24 + 32 + 8 * v18);
          if (v18 != v15 || (v6 = v28 + 8 * v27, v24 + 32 + 8 * v15 >= v6))
          {
            memmove((v24 + 32 + 8 * v15), v28, 8 * v27);
          }

          if (v16 >> 62)
          {
            v29 = sub_224DAF838();
            v12 = v29 - v19;
            if (__OFADD__(v29, v2))
            {
              goto LABEL_55;
            }
          }

          else
          {
            v11 = *(v24 + 16);
            v12 = v11 - v19;
            if (__OFADD__(v11, v2))
            {
              goto LABEL_55;
            }
          }

          *(v24 + 16) = v12;
        }

        ++v10;
        *(v36 + v35) = v16;
        swift_endAccess();

        v9 = v33;
        v2 = v14;
        if (v32 == v10)
        {
        }
      }

      v18 = sub_224DAF838();
      v19 = v18 - v15;
      if (v18 >= v15)
      {
        goto LABEL_13;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v31 = v6;
      result = sub_224DAF838();
      v6 = v31;
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_224B45E54(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
    v8 = *(v7 + 16);

    os_unfair_lock_lock(v8);
    sub_224B45F1C(v6, a3, a1);
    os_unfair_lock_unlock(*(v7 + 16));

    sub_224A6AF54();
  }
}

uint64_t sub_224B45F1C(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processHandlesToObserve;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = *(a1 + v6);

  v9 = sub_224A6AC2C(a2);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = *(*(v7 + 56) + 8 * v9);

  v12 = v11;
LABEL_6:
  swift_beginAccess();

  sub_224A6ACA0(v12, a2);
  swift_endAccess();
}

uint64_t sub_224B46028(uint64_t a1, int a2)
{
  v3 = v2;
  v63 = sub_224DAB7B8();
  v64 = *(v63 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  v70 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_224DAB848();
  v69 = *(v71 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v68 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v67 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v56[-v15];
  os_unfair_lock_assert_owner(*(*&v2[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock] + 16));
  v17 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithSessionExemptions;
  swift_beginAccess();
  v18 = *&v2[v17];
  if (*(v18 + 16))
  {

    v19 = sub_224A89A08(a1);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      aBlock[0] = v21;
      sub_224ADBB84(v74, a2 & 1);
      v65 = aBlock[0];
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41C8, &qword_224DB5C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = a2 & 1;
  v65 = sub_224AE9590(inited);
  swift_setDeallocating();
LABEL_6:
  v61 = a2;
  if (qword_281351610 != -1)
  {
    swift_once();
  }

  v23 = sub_224DAB258();
  __swift_project_value_buffer(v23, qword_281364FD0);
  v24 = *(v11 + 16);
  v24(v16, a1, v10);
  v25 = v16;
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();
  v28 = os_log_type_enabled(v26, v27);
  v62 = v10;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v57 = v27;
    v30 = v29;
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v30 = 136446466;
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
    v31 = sub_224DAFD28();
    v59 = v24;
    v32 = v31;
    v60 = a1;
    v34 = v33;
    (*(v11 + 8))(v25, v10);
    v35 = sub_224A33F74(v32, v34, aBlock);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    if (v61)
    {
      v36 = 0x697461676976616ELL;
    }

    else
    {
      v36 = 0x6979616C50776F6ELL;
    }

    if (v61)
    {
      v37 = 0xEA00000000006E6FLL;
    }

    else
    {
      v37 = 0xEA0000000000676ELL;
    }

    v38 = sub_224A33F74(v36, v37, aBlock);

    *(v30 + 14) = v38;
    v24 = v59;
    a1 = v60;
    _os_log_impl(&dword_224A2F000, v26, v57, "Observed %{public}s began running for exempt reason: %{public}s", v30, 0x16u);
    v39 = v58;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v39, -1, -1);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v25, v10);
  }

  swift_beginAccess();
  v40 = *&v3[v17];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74[0] = *&v3[v17];
  *&v3[v17] = 0x8000000000000000;
  sub_224B206A0(v65, a1, isUniquelyReferenced_nonNull_native);
  *&v3[v17] = v74[0];
  swift_endAccess();
  v42 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
  swift_beginAccess();
  v43 = *&v3[v42];
  v44 = *&v3[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__calloutQueue];
  v45 = v67;
  v46 = a1;
  v47 = v62;
  v24(v67, v46, v62);
  v48 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v43;
  *(v49 + 24) = v3;
  (*(v11 + 32))(v49 + v48, v45, v47);
  aBlock[4] = sub_224B48704;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_113;
  v50 = _Block_copy(aBlock);

  v51 = v3;
  v52 = v68;
  sub_224DAB7E8();
  v72 = MEMORY[0x277D84F90];
  sub_224A3AF98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v53 = v70;
  v54 = v63;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v52, v53, v50);
  _Block_release(v50);
  (*(v64 + 8))(v53, v54);
  (*(v69 + 8))(v52, v71);
}

unint64_t sub_224B467E4(unint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  if (result >> 62)
  {
    result = sub_224DAF838();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v13[3] = type metadata accessor for ProcessMonitor();
        v13[4] = &off_28382AA58;
        v13[0] = a2;
        v10 = *(v8 + 8);
        v11 = a2;
        v10(v13, a3, ObjectType, v8);

        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_224B46934(uint64_t a1, int a2)
{
  v3 = v2;
  v81 = a2;
  v82 = a1;
  v4 = sub_224DAB7B8();
  v80 = *(v4 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_224DAB848();
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - v17;
  os_unfair_lock_assert_owner(*(*&v2[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock] + 16));
  v19 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithSessionExemptions;
  swift_beginAccess();
  v20 = *&v2[v19];
  if (*(v20 + 16))
  {

    v21 = sub_224A89A08(v82);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);

      v86 = v23;
      sub_224B02318(v81 & 1);
      v24 = v86;
      if (*(v86 + 16))
      {
        swift_beginAccess();

        v25 = *&v3[v19];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = *&v3[v19];
        *&v3[v19] = 0x8000000000000000;
        sub_224B206A0(v24, v82, isUniquelyReferenced_nonNull_native);
        *&v3[v19] = v85;
      }

      else
      {
        (*(v10 + 16))(v18, v82, v9);
        swift_beginAccess();
        sub_224B07E18(0, v18);
      }

      swift_endAccess();
      v74 = v18;
      if (qword_281351610 != -1)
      {
        swift_once();
      }

      v75 = v4;
      v39 = sub_224DAB258();
      __swift_project_value_buffer(v39, qword_281364FD0);
      v40 = *(v10 + 16);
      v40(v16, v82, v9);

      v41 = sub_224DAB228();
      v42 = sub_224DAF2A8();

      v73 = v42;
      if (os_log_type_enabled(v41, v42))
      {
        v70 = v41;
        v71 = v40;
        v72 = v10 + 16;
        v43 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock[0] = v69;
        *v43 = 136446722;
        v44 = sub_224DA9FE8();
        v46 = v45;
        (*(v10 + 8))(v16, v9);
        v47 = sub_224A33F74(v44, v46, aBlock);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        if (v81)
        {
          v48 = 0x697461676976616ELL;
        }

        else
        {
          v48 = 0x6979616C50776F6ELL;
        }

        if (v81)
        {
          v49 = 0xEA00000000006E6FLL;
        }

        else
        {
          v49 = 0xEA0000000000676ELL;
        }

        v50 = sub_224A33F74(v48, v49, aBlock);

        *(v43 + 14) = v50;
        *(v43 + 22) = 2082;
        v51 = v74;
        if (*(v24 + 16))
        {
          sub_224AEA0C0();
          v52 = sub_224DAF1C8();
          v54 = v53;
        }

        else
        {

          v54 = 0xE400000000000000;
          v52 = 1701736270;
        }

        v55 = sub_224A33F74(v52, v54, aBlock);

        *(v43 + 24) = v55;
        v56 = v70;
        _os_log_impl(&dword_224A2F000, v70, v73, "Observed %{public}s stopped running for exempt reason: %{public}s - remainingReasons: %{public}s", v43, 0x20u);
        v57 = v69;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v57, -1, -1);
        MEMORY[0x22AA5EED0](v43, -1, -1);

        v40 = v71;
      }

      else
      {

        (*(v10 + 8))(v16, v9);
        v51 = v74;
      }

      v58 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
      swift_beginAccess();
      v59 = *&v3[v58];
      v60 = *&v3[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__calloutQueue];
      v40(v51, v82, v9);
      v61 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = v59;
      *(v62 + 24) = v3;
      (*(v10 + 32))(v62 + v61, v51, v9);
      aBlock[4] = sub_224B486EC;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224A39F40;
      aBlock[3] = &block_descriptor_107;
      v63 = _Block_copy(aBlock);

      v64 = v3;
      v65 = v76;
      sub_224DAB7E8();
      v83 = MEMORY[0x277D84F90];
      sub_224A3AF98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
      v66 = v78;
      v67 = v75;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v65, v66, v63);
      _Block_release(v63);
      (*(v80 + 8))(v66, v67);
      (*(v77 + 8))(v65, v79);

      return;
    }
  }

  if (qword_281351610 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_281364FD0);
  (*(v10 + 16))(v13, v82, v9);
  v28 = sub_224DAB228();
  v29 = sub_224DAF2A8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136446466;
    v32 = sub_224DA9FE8();
    v34 = v33;
    (*(v10 + 8))(v13, v9);
    v35 = sub_224A33F74(v32, v34, aBlock);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    if (v81)
    {
      v36 = 0x697461676976616ELL;
    }

    else
    {
      v36 = 0x6979616C50776F6ELL;
    }

    if (v81)
    {
      v37 = 0xEA00000000006E6FLL;
    }

    else
    {
      v37 = 0xEA0000000000676ELL;
    }

    v38 = sub_224A33F74(v36, v37, aBlock);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_224A2F000, v28, v29, "Observed %{public}s session stopped running for exempt reason: %{public}s, but we didn't track a start!", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }
}

unint64_t sub_224B47320(unint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  if (result >> 62)
  {
    result = sub_224DAF838();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v13[3] = type metadata accessor for ProcessMonitor();
        v13[4] = &off_28382AA58;
        v13[0] = a2;
        v10 = *(v8 + 16);
        v11 = a2;
        v10(v13, a3, ObjectType, v8);

        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_224B47470(uint64_t a1)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v2 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v68 = *(v4 - 8);
  v5 = v68[8];
  v6 = MEMORY[0x28223BE20](v4);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v58 = &v52 - v9;
  MEMORY[0x28223BE20](v8);
  v65 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v66 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v63 = &v52 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v52 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v52 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__nowPlayingObserver), *(a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__nowPlayingObserver + 24));
  v27 = off_283830C70;
  type metadata accessor for NowPlayingObserver();
  v27();
  v28 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_nowPlayingApp;
  swift_beginAccess();
  v64 = a1;
  sub_224A3796C(a1 + v28, v24, &unk_27D6F5060, &qword_224DB5620);
  v29 = v68[6];
  v67 = v4;
  if (v29(v24, 1, v4) == 1)
  {
    sub_224A3311C(v24, &unk_27D6F5060, &qword_224DB5620);
    v30 = v66;
    v31 = v29;
    v32 = v67;
    goto LABEL_13;
  }

  v57 = v28;
  v33 = v68;
  v34 = v65;
  v35 = v67;
  v53 = v68[4];
  v52 = v68 + 4;
  v53(v65, v24, v67);
  (v33[2])(v21, v34, v35);
  v55 = v33[7];
  v56 = v33 + 7;
  v55(v21, 0, 1, v35);
  v36 = v61;
  v37 = *(v60 + 48);
  sub_224A3796C(v21, v61, &unk_27D6F5060, &qword_224DB5620);
  v60 = v37;
  sub_224A3796C(v26, v36 + v37, &unk_27D6F5060, &qword_224DB5620);
  v31 = v29;
  if (v29(v36, 1, v35) != 1)
  {
    v38 = v59;
    sub_224A3796C(v36, v59, &unk_27D6F5060, &qword_224DB5620);
    v39 = v60;
    if (v31(v36 + v60, 1, v67) != 1)
    {
      v54 = v31;
      v43 = v36 + v39;
      v44 = v58;
      v45 = v67;
      v53(v58, v43, v67);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
      LODWORD(v60) = sub_224DAEDD8();
      v46 = v68[1];
      v46(v44, v45);
      sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
      v46(v38, v45);
      sub_224A3311C(v36, &unk_27D6F5060, &qword_224DB5620);
      v32 = v45;
      if (v60)
      {
        v31 = v54;
        v46(v65, v45);
        goto LABEL_12;
      }

LABEL_9:
      v40 = v63;
      v55(v63, 1, 1, v32);
      v41 = v64;
      v28 = v57;
      swift_beginAccess();
      sub_224A838C0(v40, v41 + v28, &unk_27D6F5060, &qword_224DB5620);
      swift_endAccess();
      v42 = v65;
      sub_224B46934(v65, 0);
      (v68[1])(v42, v32);
      v30 = v66;
      v31 = v54;
      goto LABEL_13;
    }

    sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
    v32 = v67;
    (v68[1])(v38, v67);
LABEL_8:
    v54 = v31;
    sub_224A3311C(v36, &qword_27D6F5B90, &qword_224DB5C50);
    goto LABEL_9;
  }

  sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
  v32 = v67;
  if (v29(v36 + v60, 1, v67) != 1)
  {
    goto LABEL_8;
  }

  sub_224A3311C(v36, &unk_27D6F5060, &qword_224DB5620);
  (v68[1])(v65, v32);
LABEL_12:
  v30 = v66;
  v28 = v57;
LABEL_13:
  sub_224A3796C(v26, v30, &unk_27D6F5060, &qword_224DB5620);
  if (v31(v30, 1, v32) == 1)
  {
    sub_224A3311C(v26, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    v47 = v68;
    v48 = v62;
    (v68[4])(v62, v30, v32);
    v49 = v63;
    (v47[2])(v63, v48, v32);
    (v47[7])(v49, 0, 1, v32);
    v50 = v64;
    swift_beginAccess();
    sub_224A838C0(v49, v50 + v28, &unk_27D6F5060, &qword_224DB5620);
    swift_endAccess();
    sub_224B46028(v48, 0);
    (v47[1])(v48, v32);
    v30 = v26;
  }

  return sub_224A3311C(v30, &unk_27D6F5060, &qword_224DB5620);
}

void sub_224B47C98(void *a1, void *a2, uint64_t *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  [v6 setValues_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_224DB3100;
  v8 = *MEMORY[0x277D0AC90];
  *(v7 + 32) = sub_224DAEE18();
  *(v7 + 40) = v9;
  v10 = sub_224DAEFF8();

  [v6 setEndowmentNamespaces_];

  [a1 setStateDescriptor_];
  [a1 setServiceClass_];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v17[4] = sub_224A336CC;
  v17[5] = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_224A332F0;
  v17[3] = &block_descriptor_101;
  v12 = _Block_copy(v17);
  v13 = a2;

  [a1 setUpdateHandler_];
  _Block_release(v12);
  v14 = *a3;

  sub_224A869EC(v15);

  sub_224A3B79C(0, &qword_2813509C0, 0x277D46FA0);
  v16 = sub_224DAEFF8();

  [a1 setPredicates_];
}

id sub_224B47EE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_224B48160()
{
  sub_224B48260();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_224B48260()
{
  if (!qword_281351928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F3900, &unk_224DB4640);
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_281351928);
    }
  }
}

unint64_t sub_224B482D8()
{
  result = qword_28135B780;
  if (!qword_28135B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B780);
  }

  return result;
}

void *sub_224B48334(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_224AA0284(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_224B483BC(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
    goto LABEL_66;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
LABEL_52:
      if (v5)
      {
        return sub_224DAF838();
      }

      return *(v4 + 16);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x22AA5DCC0](v7, v3);
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_59;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_unknownObjectRelease();
      if (v10 == a2)
      {
        break;
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    swift_unknownObjectRelease();
    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_60;
    }
  }

  v13 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v4 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v13 == sub_224DAF838())
        {
          return v7;
        }
      }

      else if (v13 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v7;
      }

      v5 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v13, v3);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
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
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v6 = sub_224DAF838();
          goto LABEL_3;
        }

        if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v16 = *(v3 + 8 * v13 + 32);
      }

      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17 && (v18 = v17, swift_unknownObjectRelease(), v18 == a2))
      {
      }

      else
      {
        v19 = swift_unknownObjectWeakLoadStrong();

        if (v19)
        {
          swift_unknownObjectRelease();
          if (v7 != v13)
          {
            if (v5)
            {
              v20 = MEMORY[0x22AA5DCC0](v7, v3);
              v21 = MEMORY[0x22AA5DCC0](v13, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v22)
              {
                goto LABEL_64;
              }

              if (v13 >= v22)
              {
                goto LABEL_65;
              }

              v20 = *(v3 + 32 + 8 * v7);
              v21 = *(v3 + 32 + 8 * v13);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_224B44A20(v3);
              v23 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v23) = 0;
            }

            v5 = v3 & 0xFFFFFFFFFFFFFF8;
            v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v21;

            if ((v3 & 0x8000000000000000) != 0 || v23)
            {
              v3 = sub_224B44A20(v3);
              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v13 & 0x8000000000000000) != 0)
              {
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }

            else if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            if (v13 >= *(v5 + 16))
            {
              goto LABEL_62;
            }

            v14 = v5 + 8 * v13;
            v15 = *(v14 + 32);
            *(v14 + 32) = v20;

            *a1 = v3;
          }

          v11 = __OFADD__(v7++, 1);
          if (v11)
          {
            goto LABEL_61;
          }
        }
      }

      v11 = __OFADD__(v13++, 1);
      if (v11)
      {
        goto LABEL_58;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224B4871C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_224A42074(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_224B48750(uint64_t a1)
{
  v2 = sub_224DA9C18();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B487AC(uint64_t *a1, int a2)
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

uint64_t sub_224B487F4(uint64_t result, int a2, int a3)
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

uint64_t sub_224B48860()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_2813514D0);
  __swift_project_value_buffer(v0, qword_2813514D0);
  return sub_224DAB238();
}

uint64_t ConfigurationCharacteristic.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x22AA5E1E0](0);
  }

  v1 = *v0;
  MEMORY[0x22AA5E1E0](1);

  return sub_224DAEE78();
}

uint64_t ConfigurationCharacteristic.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_224DAFE68();
  if (v2)
  {
    MEMORY[0x22AA5E1E0](1);
    sub_224DAEE78();
  }

  else
  {
    MEMORY[0x22AA5E1E0](0);
  }

  return sub_224DAFEA8();
}

uint64_t sub_224B489CC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_224DAFE68();
  if (v2)
  {
    MEMORY[0x22AA5E1E0](1);
    sub_224DAEE78();
  }

  else
  {
    MEMORY[0x22AA5E1E0](0);
  }

  return sub_224DAFEA8();
}

uint64_t sub_224B48A3C()
{
  if (!v0[1])
  {
    return MEMORY[0x22AA5E1E0](0);
  }

  v1 = *v0;
  MEMORY[0x22AA5E1E0](1);

  return sub_224DAEE78();
}

uint64_t sub_224B48AB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_224DAFE68();
  if (v2)
  {
    MEMORY[0x22AA5E1E0](1);
    sub_224DAEE78();
  }

  else
  {
    MEMORY[0x22AA5E1E0](0);
  }

  return sub_224DAFEA8();
}

BOOL sub_224B48B24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = *(*v0 + 216);
  swift_beginAccess();
  sub_224A3796C(v0 + v5, v4, &qword_27D6F3948, &qword_224DB5C10);
  v6 = sub_224DAC378();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_224A3311C(v4, &qword_27D6F3948, &qword_224DB5C10);
  return v7;
}

uint64_t *sub_224B48C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_224B48CA4(a1, a2, a3, a4);
}

uint64_t *sub_224B48CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 216);
  v10 = sub_224DAC378();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + *(*v4 + 208)) = a4;

  return sub_224D42EF8(a1, a2, a3);
}

uint64_t sub_224B48D68()
{
  v1 = *(v0 + *(*v0 + 208));

  return sub_224A3311C(v0 + *(*v0 + 216), &qword_27D6F3948, &qword_224DB5C10);
}

uint64_t *sub_224B48DC4()
{
  v0 = sub_224D42F04();
  v1 = *(v0 + *(*v0 + 208));

  sub_224A3311C(v0 + *(*v0 + 216), &qword_27D6F3948, &qword_224DB5C10);
  return v0;
}

uint64_t sub_224B48E34()
{
  v0 = *sub_224B48DC4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224B48E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  os_unfair_lock_assert_owner(*(*(v0 + *(*v0 + 208)) + 16));
  sub_224DAA238();
  v6 = sub_224DA9FE8();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_224B48FA4()
{
  v1 = *(v0 + *(*v0 + 208));
  os_unfair_lock_lock(*(v1 + 16));
  sub_224B49024(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

uint64_t sub_224B49024@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 184);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - v8;
  v10 = *(v4 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v9, a1 + v10, v5);
  v11 = (*(*(v4 + 192) + 8))(v5);
  v13 = v12;
  result = (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_224B4918C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  os_unfair_lock_assert_owner(*(*(v1 + *(v2 + 208)) + 16));
  v8 = *(*v1 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = (*(*(v2 + 192) + 16))(v1 + qword_281365430, v3);
  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t sub_224B49374()
{
  v1 = qword_28135C9F0;
  v2 = *(v0 + qword_28135C9F0);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  sub_224B494FC(v0, &v14);
  os_unfair_lock_unlock(*(v2 + 16));

  v4 = qword_281365438;
  v5 = sub_224DAB258();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + qword_28135CA10);

  v7 = *(v0 + qword_28135CA00);

  v8 = *(v0 + qword_28135C9F8);

  v9 = *(v0 + qword_28135CA08);

  sub_224A3311C(v0 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
  if (*(v0 + qword_28135CA30 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + qword_28135CA30));
  }

  sub_224A3311C(v0 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);
  v10 = *(v0 + v1);

  v11 = *(v0 + qword_28135CA28);

  v12 = *(v0 + qword_28135CA40);

  return v0;
}

uint64_t sub_224B494FC@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + qword_28135CA40);
  if (v3)
  {
    v4 = *(result + qword_28135CA40);

    sub_224DAC5F8();
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_224B4955C()
{
  sub_224B49374();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224B495B4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_224A3796C(v3 + qword_28135CA18, &v10, &unk_27D6F53A0, &qword_224DC1A80);
  if (v11)
  {
    sub_224A36F98(&v10, v12);
    v7 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    MEMORY[0x28223BE20](v7);
    sub_224DAA308();
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_224A3311C(&v10, &unk_27D6F53A0, &qword_224DC1A80);
    v12[0] = *(v3 + qword_28135C9F0);
    v9 = type metadata accessor for UnfairLock();

    sub_224A49C20(a1, a2, v9, a3, &off_28382D228);
  }
}

uint64_t sub_224B4973C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + qword_28135C9F0);
  v7 = type metadata accessor for UnfairLock();

  sub_224A49C20(a2, a3, v7, a4, &off_28382D228);
}

uint64_t sub_224B497F4(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v5 = a2 >> 8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4218, &qword_224DB5FF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58D0, &qword_224DB5FF8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v19[1] = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v3;
  *(v16 + 25) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
  sub_224A33088(&qword_281350FA0, &unk_27D6F5390, &unk_224DB6000);
  sub_224DAB438();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224A33088(&qword_281351358, &qword_27D6F4218, &qword_224DB5FF0);
  sub_224DAB3E8();
  (*(v7 + 8))(v10, v6);
  sub_224A33088(&qword_281351380, &unk_27D6F58D0, &qword_224DB5FF8);
  v17 = sub_224DAB3A8();
  (*(v12 + 8))(v15, v11);
  return v17;
}

uint64_t sub_224B49B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v63 = *v3;
  v6 = v63;
  v69 = sub_224DAB7B8();
  v68 = *(v69 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_224DAB848();
  v65 = *(v66 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(v6 + 80);
  v61 = sub_224DAF728();
  v60 = *(v61 - 8);
  v56 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v58 = &v52 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v55 = *(v57 - 8);
  v53 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v52 - v12;
  v13 = type metadata accessor for _HostFilterableChange();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  v88 = 0;
  v87 = 0;
  (*(v14 + 56))(&v52 - v23, 1, 1, v13);
  v86 = MEMORY[0x277D84FA0];
  v73 = v3;
  v74 = a3;
  v25 = a3;
  v26 = a1;
  v75 = a1;
  v76 = &v88 + 1;
  v77 = &v88;
  v78 = v70;
  v79 = &v86;
  v80 = v24;
  v81 = &v87;
  v71 = v3;
  sub_224B495B4(sub_224B52EA0, v72, MEMORY[0x277D84F78] + 8);
  v62 = v24;
  sub_224A3796C(v24, v22, &qword_27D6F41F8, &unk_224DB5FB0);
  if ((*(v14 + 48))(v22, 1, v13) != 1)
  {
    v27 = sub_224B52FE4(v22, v17);
    v28 = v71;
    if (v87 == 1)
    {
      v27 = sub_224B4F824(8, v17);
    }

    v29 = v86;
    if (*(v86 + 16))
    {
      v27 = (*(*v28 + 304))(v86, v17);
    }

    v30 = v88;
    if (v88 == 1)
    {
      v27 = sub_224B4F824(4, v17);
    }

    if (HIBYTE(v88) == 1)
    {
      (*(*v28 + 288))(v27);
      sub_224B4F824(2, v17);
    }

    else if (((*(v29 + 16) == 0) & ~v30) != 0)
    {
LABEL_16:
      sub_224A6951C(v17);
      goto LABEL_17;
    }

    v31 = v28 + qword_28135CA30;
    if (*(v28 + qword_28135CA30 + 24))
    {
      sub_224A3317C(v31, &aBlock);
      v32 = *(&v83 + 1);
      if (!*(&v83 + 1))
      {
LABEL_15:
        sub_224B4F824(1, v17);
        goto LABEL_16;
      }
    }

    else
    {
      v51 = *(v31 + 16);
      aBlock = *v31;
      v83 = v51;
      v84 = *(v31 + 32);
      v32 = *(&v51 + 1);
      if (!*(&v51 + 1))
      {
        goto LABEL_15;
      }
    }

    v33 = v84;
    __swift_project_boxed_opaque_existential_1(&aBlock, v32);
    (*(v33 + 4))(v25, a1, v70, v32, v33);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    goto LABEL_15;
  }

  sub_224A3311C(v22, &qword_27D6F41F8, &unk_224DB5FB0);
LABEL_17:
  sub_224AC319C();
  v70 = sub_224DAF3D8();
  v34 = v55;
  v35 = v54;
  v36 = v57;
  (*(v55 + 16))(v54, v25, v57);
  v37 = v60;
  v38 = v58;
  v39 = v61;
  (*(v60 + 16))(v58, v26, v61);
  v40 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v41 = (v53 + v40 + *(v37 + 80)) & ~*(v37 + 80);
  v42 = (v56 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = v59;
  v44 = v63;
  *(v43 + 3) = *(v63 + 88);
  *(v43 + 4) = *(v44 + 96);
  (*(v34 + 32))(&v43[v40], v35, v36);
  (*(v37 + 32))(&v43[v41], v38, v39);
  *&v43[v42] = v71;
  v84 = sub_224B52ED8;
  v85 = v43;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v83 = sub_224A39F40;
  *(&v83 + 1) = &block_descriptor_10;
  v45 = _Block_copy(&aBlock);

  v46 = v64;
  sub_224DAB7E8();
  *&aBlock = MEMORY[0x277D84F90];
  sub_224A80EB8(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v47 = v67;
  v48 = v69;
  sub_224DAF788();
  v49 = v70;
  MEMORY[0x22AA5D760](0, v46, v47, v45);
  _Block_release(v45);

  (*(v68 + 8))(v47, v48);
  (*(v65 + 8))(v46, v66);

  return sub_224A3311C(v62, &qword_27D6F41F8, &unk_224DB5FB0);
}

uint64_t sub_224B4A470(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void (*a4)(char *, uint64_t, uint64_t), void (*a5)(char *, uint64_t, uint64_t), void (*a6)(void, void, void), NSObject **a7, uint64_t a8, uint64_t a9)
{
  v346 = a8;
  v349 = a7;
  v363 = a6;
  v351 = a5;
  v353 = a4;
  v371 = a3;
  v372 = a2;
  v10 = *a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v319 = &v316 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v327 = &v316 - v15;
  v355 = sub_224DAB258();
  v354 = *(v355 - 8);
  v16 = *(v354 + 64);
  v17 = MEMORY[0x28223BE20](v355);
  v350 = &v316 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v329 = &v316 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v331 = &v316 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v340 = &v316 - v24;
  v25 = v10[10];
  v368 = *(v25 - 8);
  v26 = *(v368 + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v322 = &v316 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v316 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v326 = &v316 - v33;
  MEMORY[0x28223BE20](v32);
  v352 = &v316 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v366 = *(v35 - 8);
  isa = v366[8].isa;
  v37 = MEMORY[0x28223BE20](v35);
  v317 = &v316 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v339 = &v316 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v321 = &v316 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v325 = &v316 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v334 = &v316 - v46;
  MEMORY[0x28223BE20](v45);
  v359 = &v316 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v318 = &v316 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v345 = &v316 - v52;
  v369 = sub_224DAA428();
  v381 = *(v369 - 8);
  v53 = *(v381 + 64);
  v54 = MEMORY[0x28223BE20](v369);
  v316 = &v316 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v320 = &v316 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v336 = &v316 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v324 = &v316 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v344 = &v316 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v335 = &v316 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v358 = &v316 - v67;
  MEMORY[0x28223BE20](v66);
  v330 = &v316 - v68;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4208, &qword_224DB5FD8);
  v69 = *(*(v348 - 8) + 64);
  MEMORY[0x28223BE20](v348);
  v71 = &v316 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v72 - 8);
  v341 = &v316 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v74);
  v78 = &v316 - v77;
  MEMORY[0x28223BE20](v76);
  v367 = (&v316 - v79);
  v362 = sub_224DAF728();
  v361 = v362[-1].isa;
  v80 = *(v361 + 8);
  v81 = MEMORY[0x28223BE20](v362);
  v343 = &v316 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v84 = &v316 - v83;
  v85 = qword_28135CA28;
  swift_beginAccess();
  v338 = v85;
  v86 = *(a1 + v85);
  v87 = v10[11];
  v323 = v10[12];
  v88 = type metadata accessor for _Host();
  v89 = sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);

  v360 = v35;
  v342 = v88;
  v337 = v89;
  sub_224DAED58();

  v90 = v379;
  if (v379)
  {
    v91 = *(v379->isa + 13);
    swift_beginAccess();
    v92 = v368;
    (*(v368 + 16))(v84, v90 + v91, v25);
    v93 = 0;
    v94 = v92;
  }

  else
  {
    v93 = 1;
    v94 = v368;
  }

  v328 = v31;
  v95 = *(v94 + 56);
  v370 = v25;
  v95(v84, v93, 1, v25);
  v96 = (*(*a1 + 296))(v84, v371);
  v97 = *(v361 + 1);
  v333 = v361 + 8;
  v332 = v97;
  v97(v84, v362);
  v98 = *(v96 + 16);
  v364 = a1;
  v365 = v90;
  if (v98)
  {
    v99 = *(v96 + 40);
    sub_224DAFE68();
    MEMORY[0x22AA5E1E0](0);
    v100 = sub_224DAFEA8();
    v101 = -1 << *(v96 + 32);
    v102 = v100 & ~v101;
    v103 = v369;
    v104 = v367;
    if ((*(v96 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102))
    {
      v105 = ~v101;
      while (1)
      {
        v106 = *(*(v96 + 48) + 16 * v102 + 8);

        if (!v106)
        {
          break;
        }

        v102 = (v102 + 1) & v105;
        if (((*(v96 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      LOBYTE(v98) = 1;
    }

    else
    {
LABEL_9:
      LOBYTE(v98) = 0;
    }

    v90 = v365;
  }

  else
  {
    v103 = v369;
    v104 = v367;
  }

  *v353 = v98;
  v107 = v381;
  if (v90)
  {
    v108 = *(v90->isa + 14);
    swift_beginAccess();
    (*(v107 + 16))(v104, v90 + v108, v103);
    v109 = 0;
  }

  else
  {
    v109 = 1;
  }

  v347 = v96;
  v110 = *(v107 + 56);
  v111 = 1;
  v110(v104, v109, 1, v103);
  v112 = *(v368 + 48);
  v357 = (v368 + 48);
  v356 = v112;
  if (v112(v371, 1, v370) != 1)
  {
    (*(v107 + 16))(v78, v363, v103);
    v111 = 0;
  }

  v110(v78, v111, 1, v103);
  v113 = *(v348 + 48);
  v114 = v367;
  sub_224A3796C(v367, v71, &qword_27D6F4210, &unk_224DB5FE0);
  sub_224A3796C(v78, &v71[v113], &qword_27D6F4210, &unk_224DB5FE0);
  v115 = *(v107 + 48);
  if (v115(v71, 1, v103) == 1)
  {
    sub_224A3311C(v78, &qword_27D6F4210, &unk_224DB5FE0);
    sub_224A3311C(v114, &qword_27D6F4210, &unk_224DB5FE0);
    v116 = v115(&v71[v113], 1, v103);
    v117 = v364;
    v118 = v347;
    if (v116 == 1)
    {
      sub_224A3311C(v71, &qword_27D6F4210, &unk_224DB5FE0);
      v119 = 0;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v120 = v341;
  sub_224A3796C(v71, v341, &qword_27D6F4210, &unk_224DB5FE0);
  v121 = v115(&v71[v113], 1, v103);
  v118 = v347;
  if (v121 == 1)
  {
    sub_224A3311C(v78, &qword_27D6F4210, &unk_224DB5FE0);
    sub_224A3311C(v367, &qword_27D6F4210, &unk_224DB5FE0);
    (*(v381 + 8))(v120, v103);
    v117 = v364;
LABEL_23:
    sub_224A3311C(v71, &qword_27D6F4208, &qword_224DB5FD8);
    v119 = 1;
    goto LABEL_25;
  }

  v122 = v381;
  v123 = v330;
  (*(v381 + 32))(v330, &v71[v113], v103);
  sub_224A80EB8(&qword_281351830, MEMORY[0x277CFA048]);
  v124 = sub_224DAEDD8();
  v125 = *(v122 + 8);
  v125(v123, v103);
  sub_224A3311C(v78, &qword_27D6F4210, &unk_224DB5FE0);
  sub_224A3311C(v367, &qword_27D6F4210, &unk_224DB5FE0);
  v125(v341, v103);
  sub_224A3311C(v71, &qword_27D6F4210, &unk_224DB5FE0);
  v119 = v124 ^ 1;
  v117 = v364;
LABEL_25:
  v126 = v372;
  v127 = v350;
  v128 = v349;
  *v351 = v119 & 1;
  v129 = *v128;
  *v128 = v118;

  v130 = *v128;
  v131 = (*v128)[5].isa;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](0);
  v132 = sub_224DAFEA8();
  v133 = -1 << LOBYTE(v130[4].isa);
  v134 = v132 & ~v133;
  if ((*(&v130[7].isa + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134))
  {
    v135 = ~v133;
    while (1)
    {
      v136 = *(v130[6].isa + 2 * v134 + 1);

      if (!v136)
      {
        break;
      }

      v134 = (v134 + 1) & v135;
      if (((*(&v130[7].isa + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v137 = *v128;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = *v128;
    v379 = *v128;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224AE4A28();
      v139 = v379;
    }

    v140 = *(v139[6].isa + 2 * v134 + 1);
    sub_224B063B8(v134);
    *v128 = v379;
  }

LABEL_33:
  if ((*v128)[2].isa || (*v353 & 1) != 0 || *v351 == 1)
  {
    v141 = v366;
    v142 = v366[2].isa;
    v143 = v360;
    v367 = v366 + 2;
    v353 = v142;
    (v142)(v359, v126, v360);
    v144 = v365;
    if (v365)
    {
      v145 = *(*v365 + 112);
      swift_beginAccess();
      v146 = v381;
      v147 = *(v381 + 16);
      v148 = v335;
      v149 = v369;
      v147(v335, v144 + v145, v369);
      v150 = *(v146 + 32);
      v150(v358, v148, v149);
      v151 = v356(v371, 1, v370);
      v351 = v147;
      if (v151 == 1)
      {
        v152 = v147;
        v153 = v117;
        v154 = *(*v144 + 112);
        swift_beginAccess();
        v155 = v144 + v154;
        v143 = v360;
        v156 = v324;
        v152(v324, v155, v149);
        v157 = v344;
        v150(v344, v156, v149);
        v141 = v366;
        goto LABEL_43;
      }

      v159 = v363;
      v141 = v366;
    }

    else
    {
      v158 = *(v381 + 16);
      v159 = v363;
      v149 = v369;
      (v158)(v358, v363, v369);
      v160 = v356(v371, 1, v370);
      v351 = v158;
      if (v160 == 1)
      {
        v161 = v158;
        v153 = v117;
        v157 = v344;
        v161(v344, v159, v149);
        goto LABEL_43;
      }
    }

    v157 = v344;
    v153 = v117;
    v149 = v369;
    v351(v344, v159, v369);
LABEL_43:
    v162 = v345;
    (v141[4].isa)(v345, v359, v143);
    v163 = type metadata accessor for _HostFilterableChange();
    v164 = *(v381 + 32);
    v164(v162 + *(v163 + 20), v358, v149);
    v164(v162 + *(v163 + 24), v157, v149);
    (*(*(v163 - 8) + 56))(v162, 0, 1, v163);
    sub_224A838C0(v162, v346, &qword_27D6F41F8, &unk_224DB5FB0);
    v165 = v343;
    v166 = v362;
    (*(v361 + 2))(v343, v371, v362);
    v167 = v370;
    if (v356(v165, 1, v370) == 1)
    {
      v332(v165, v166);
      v168 = v354;
      v169 = v153;
      v170 = v340;
      v171 = v355;
      (*(v354 + 16))(v340, v153 + qword_281365438, v355);
      v172 = v334;
      v353(v334, v372, v143);
      v173 = sub_224DAB228();
      v174 = v143;
      v175 = sub_224DAF2A8();
      if (os_log_type_enabled(v173, v175))
      {
        v176 = swift_slowAlloc();
        v177 = v172;
        v178 = swift_slowAlloc();
        v379 = v178;
        *v176 = 136446210;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        v179 = sub_224DAFD28();
        v181 = v180;
        (v366[1].isa)(v177, v174);
        v182 = sub_224A33F74(v179, v181, &v379);
        v169 = v364;

        *(v176 + 4) = v182;
        _os_log_impl(&dword_224A2F000, v173, v175, "[%{public}s] Invalidated", v176, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v178);
        MEMORY[0x22AA5EED0](v178, -1, -1);
        MEMORY[0x22AA5EED0](v176, -1, -1);

        (*(v354 + 8))(v340, v355);
      }

      else
      {

        (v366[1].isa)(v172, v174);
        (*(v168 + 8))(v170, v171);
      }

      v353(v339, v372, v174);
      v375 = 0;
      swift_beginAccess();
      sub_224DAED48();
      sub_224DAED68();
      swift_endAccess();
      sub_224A3796C(v169 + qword_28135CA18, &v379, &unk_27D6F53A0, &qword_224DC1A80);
      if (v380)
      {
        __swift_project_boxed_opaque_existential_1(&v379, v380);
        v375 = 0x2D74736F48;
        v376 = 0xE500000000000000;
        v220 = sub_224DAA1C8();
        MEMORY[0x22AA5D210](v220);

        sub_224DAA2C8();

LABEL_60:
        __swift_destroy_boxed_opaque_existential_1(&v379);
LABEL_63:
        sub_224B506A8();
      }
    }

    else
    {
      v183 = v368;
      v184 = v352;
      (*(v368 + 32))(v352, v165, v167);
      v185 = v354;
      if (!v144)
      {
        (*(v354 + 16))(v329, v153 + qword_281365438, v355);
        v221 = v321;
        v353(v321, v372, v143);
        v222 = v381;
        v223 = v320;
        v362 = (v381 + 16);
        v351(v320, v363, v369);
        v224 = *(v183 + 16);
        v361 = (v183 + 16);
        v359 = v224;
        (v224)(v328, v184, v167);
        v225 = sub_224DAB228();
        LODWORD(v358) = sub_224DAF2A8();
        v226 = os_log_type_enabled(v225, v358);
        v227 = v143;
        v228 = v366 + 1;
        if (v226)
        {
          v229 = swift_slowAlloc();
          v366 = swift_slowAlloc();
          v379 = v366;
          *v229 = 136446722;
          sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
          v357 = v225;
          v230 = sub_224DAFD28();
          v231 = v227;
          v233 = v232;
          (v228->isa)(v221, v231);
          v234 = sub_224A33F74(v230, v233, &v379);

          *(v229 + 4) = v234;
          *(v229 + 12) = 2082;
          sub_224A80EB8(&qword_281351820, MEMORY[0x277CFA048]);
          v235 = v369;
          v236 = sub_224DAFD28();
          v238 = v237;
          (*(v222 + 8))(v223, v235);
          v239 = sub_224A33F74(v236, v238, &v379);

          *(v229 + 14) = v239;
          *(v229 + 22) = 2082;
          v240 = v328;
          v241 = sub_224DAD688();
          v243 = v242;
          v371 = *(v183 + 8);
          v371(v240, v370);
          v244 = sub_224A33F74(v241, v243, &v379);
          v227 = v231;
          v167 = v370;
          v245 = v372;

          *(v229 + 24) = v244;
          v246 = v357;
          _os_log_impl(&dword_224A2F000, v357, v358, "[%{public}s] Created - %{public}s, configuration: %{public}s", v229, 0x20u);
          v247 = v366;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v247, -1, -1);
          MEMORY[0x22AA5EED0](v229, -1, -1);

          (*(v354 + 8))(v329, v355);
        }

        else
        {

          v371 = *(v183 + 8);
          v371(v328, v167);
          (*(v222 + 8))(v223, v369);
          (v228->isa)(v221, v227);
          (*(v185 + 8))(v329, v355);
          v245 = v372;
        }

        v268 = v339;
        v269 = v227;
        v270 = v353;
        v353(v339, v245, v269);
        v271 = v245;
        v272 = v322;
        (v359)(v322, v352, v167);
        v273 = v330;
        v351(v330, v363, v369);
        v274 = v364;
        v275 = *(v364 + qword_28135C9F0);
        v276 = v342;
        v277 = *(v342 + 48);
        v278 = *(v342 + 52);
        swift_allocObject();
        v279 = sub_224B48CA4(v268, v272, v273, v275);
        v270(v268, v271, v360);
        v375 = v279;
        swift_beginAccess();
        sub_224DAED48();

        sub_224DAED68();
        swift_endAccess();
        sub_224A3796C(v274 + qword_28135CA18, &v379, &unk_27D6F53A0, &qword_224DC1A80);
        if (v380)
        {
          __swift_project_boxed_opaque_existential_1(&v379, v380);
          v377 = v276;
          WitnessTable = swift_getWitnessTable();
          v373 = 0x2D74736F48;
          v374 = 0xE500000000000000;
          v375 = v279;

          v280 = sub_224DAA1C8();
          MEMORY[0x22AA5D210](v280);

          sub_224DAA2D8();

          v371(v352, v370);
          __swift_destroy_boxed_opaque_existential_1(&v375);
          __swift_destroy_boxed_opaque_existential_1(&v379);
        }

        else
        {
          v371(v352, v370);

          sub_224A3311C(&v379, &unk_27D6F53A0, &qword_224DC1A80);
        }

        goto LABEL_63;
      }

      v186 = v153 + qword_281365438;
      v187 = v183;
      v188 = v331;
      (*(v354 + 16))(v331, v186, v355);
      v189 = v325;
      v353(v325, v372, v143);
      v351(v336, v363, v369);
      v190 = *(v187 + 16);
      v191 = v167;
      v192 = v326;
      v190(v326, v184, v191);
      v193 = v188;

      v194 = sub_224DAB228();
      v195 = v143;
      v196 = sub_224DAF2A8();
      v197 = os_log_type_enabled(v194, v196);
      v198 = v366 + 1;
      if (v197)
      {
        v199 = swift_slowAlloc();
        v367 = swift_slowAlloc();
        v379 = v367;
        *v199 = 136446722;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        v366 = v194;
        v200 = sub_224DAFD28();
        v201 = v191;
        v203 = v202;
        (v198->isa)(v189, v195);
        v204 = sub_224A33F74(v200, v203, &v379);

        *(v199 + 4) = v204;
        *(v199 + 12) = 2082;
        sub_224A80EB8(&qword_281351820, MEMORY[0x277CFA048]);
        v205 = v336;
        v206 = v369;
        v207 = sub_224DAFD28();
        v209 = v208;
        (*(v381 + 8))(v205, v206);
        v210 = sub_224A33F74(v207, v209, &v379);

        *(v199 + 14) = v210;
        *(v199 + 22) = 2082;
        v211 = sub_224DAD688();
        v213 = v212;
        v214 = v368;
        v371 = *(v368 + 8);
        v371(v192, v201);
        v215 = sub_224A33F74(v211, v213, &v379);

        *(v199 + 24) = v215;
        v216 = v196;
        v217 = v366;
        _os_log_impl(&dword_224A2F000, v366, v216, "[%{public}s] Updated - %{public}s, configuration: %{public}s", v199, 0x20u);
        v218 = v367;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v218, -1, -1);
        MEMORY[0x22AA5EED0](v199, -1, -1);

        (*(v354 + 8))(v331, v355);
        v219 = v214;
      }

      else
      {

        v219 = v368;
        v371 = *(v368 + 8);
        v371(v192, v191);
        v248 = v369;
        (*(v381 + 8))(v336, v369);
        (v198->isa)(v189, v195);
        (*(v185 + 8))(v193, v355);
        v201 = v191;
        v206 = v248;
      }

      v249 = v365;
      v250 = *(*v365 + 104);
      swift_beginAccess();
      v251 = *(v219 + 24);

      v251(v249 + v250, v352, v201);
      swift_endAccess();
      v252 = *(*v249 + 112);
      swift_beginAccess();
      (*(v381 + 24))(v249 + v252, v363, v206);
      swift_endAccess();

      v253 = sub_224DAC378();
      v254 = v327;
      (*(*(v253 - 8) + 56))(v327, 1, 1, v253);
      v255 = *(*v249 + 216);
      swift_beginAccess();
      sub_224A838C0(v254, v249 + v255, &qword_27D6F3948, &qword_224DB5C10);
      swift_endAccess();
      v256 = qword_28135CA18;
      sub_224A3796C(v364 + qword_28135CA18, &v379, &unk_27D6F53A0, &qword_224DC1A80);
      if (v380)
      {
        __swift_project_boxed_opaque_existential_1(&v379, v380);
        v375 = 0x2D74736F48;
        v376 = 0xE500000000000000;
        v257 = sub_224DAA1C8();
        MEMORY[0x22AA5D210](v257);

        sub_224DAA2C8();

        __swift_destroy_boxed_opaque_existential_1(&v379);
      }

      else
      {
        sub_224A3311C(&v379, &unk_27D6F53A0, &qword_224DC1A80);
      }

      sub_224A3796C(v364 + v256, &v379, &unk_27D6F53A0, &qword_224DC1A80);
      if (v380)
      {
        __swift_project_boxed_opaque_existential_1(&v379, v380);
        v377 = v342;
        WitnessTable = swift_getWitnessTable();
        v373 = 0x2D74736F48;
        v374 = 0xE500000000000000;
        v375 = v365;

        v258 = sub_224DAA1C8();
        MEMORY[0x22AA5D210](v258);

        sub_224DAA2D8();

        v371(v352, v370);
        __swift_destroy_boxed_opaque_existential_1(&v375);
        goto LABEL_60;
      }

      v371(v352, v370);
    }

    sub_224A3311C(&v379, &unk_27D6F53A0, &qword_224DC1A80);
    goto LABEL_63;
  }

  v260 = v365;
  v261 = v360;
  v262 = v354;
  if (!v365)
  {
    v281 = sub_224DAC378();
    v265 = v319;
    (*(*(v281 - 8) + 56))(v319, 1, 1, v281);
    return sub_224A3311C(v265, &qword_27D6F3948, &qword_224DB5C10);
  }

  v263 = *(*v365 + 216);
  swift_beginAccess();
  v264 = v260 + v263;
  v265 = v319;
  sub_224A3796C(v264, v319, &qword_27D6F3948, &qword_224DB5C10);
  v266 = sub_224DAC378();
  v267 = *(v266 - 8);
  if ((*(v267 + 48))(v265, 1, v266) == 1)
  {

    return sub_224A3311C(v265, &qword_27D6F3948, &qword_224DB5C10);
  }

  v370 = v267;
  v371 = v266;
  v368 = a9;
  sub_224A3311C(v265, &qword_27D6F3948, &qword_224DB5C10);
  (*(v262 + 16))(v127, v117 + qword_281365438, v355);
  v282 = v126;
  v283 = v366;
  v284 = v366[2].isa;
  v285 = v317;
  v362 = v366 + 2;
  v361 = v284;
  (v284)(v317, v282, v261);
  v286 = v381;
  v287 = *(v381 + 16);
  v288 = v316;
  v289 = v363;
  v367 = (v381 + 16);
  v363 = v287;
  v287(v316, v289, v369);
  v290 = v262;
  v291 = sub_224DAB228();
  LODWORD(v359) = sub_224DAF2A8();
  if (os_log_type_enabled(v291, v359))
  {
    v292 = swift_slowAlloc();
    v358 = swift_slowAlloc();
    v375 = v358;
    *v292 = 136446466;
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
    v293 = sub_224DAFD28();
    v295 = v294;
    (v283[1].isa)(v285, v360);
    v296 = sub_224A33F74(v293, v295, &v375);

    *(v292 + 4) = v296;
    *(v292 + 12) = 2082;
    sub_224A80EB8(&qword_281351820, MEMORY[0x277CFA048]);
    v297 = v369;
    v298 = sub_224DAFD28();
    v300 = v299;
    v301 = v288;
    v302 = v297;
    (*(v286 + 8))(v301, v297);
    v303 = sub_224A33F74(v298, v300, &v375);

    *(v292 + 14) = v303;
    _os_log_impl(&dword_224A2F000, v291, v359, "[%{public}s] Revived host from orphan status as: %{public}s", v292, 0x16u);
    v304 = v358;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v304, -1, -1);
    v305 = v292;
    v261 = v360;
    MEMORY[0x22AA5EED0](v305, -1, -1);

    (*(v354 + 8))(v350, v355);
  }

  else
  {

    v306 = v288;
    v302 = v369;
    (*(v286 + 8))(v306, v369);
    (v283[1].isa)(v285, v261);
    (*(v290 + 8))(v127, v355);
  }

  v307 = v318;
  (v361)(v318, v372, v261);
  v308 = v365;
  v309 = *(*v365 + 112);
  swift_beginAccess();
  v310 = type metadata accessor for _HostFilterableChange();
  v311 = *(v310 + 24);
  v312 = v308 + v309;
  v313 = v363;
  v363(v307 + v311, v312, v302);
  v313(v307 + *(v310 + 20), v307 + v311, v302);
  (*(*(v310 - 8) + 56))(v307, 0, 1, v310);
  sub_224A838C0(v307, v346, &qword_27D6F41F8, &unk_224DB5FB0);
  *v368 = 1;
  v314 = v327;
  (*(v370 + 56))(v327, 1, 1, v371);
  v315 = *(*v308 + 216);
  swift_beginAccess();

  sub_224A838C0(v314, v308 + v315, &qword_27D6F3948, &qword_224DB5C10);
  swift_endAccess();

  sub_224B506A8();
}

void sub_224B4D104(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  v5 = *a3;
  v6 = *(*a3 + 80);
  v7 = sub_224DAF728();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAA1F8();
  v12 = sub_224DAA048();

  if ((v12 & 1) == 0)
  {
    return;
  }

  (*(v8 + 16))(v11, a2, v7);
  v13 = *(v6 - 1);
  if ((*(v13 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return;
  }

  v14 = *(v5 + 96);
  v15 = sub_224DAD678();
  v17 = *(v13 + 8);
  v16 = v13 + 8;
  v17(v11, v6);
  if (v15 >> 62)
  {
    v19 = sub_224DAF838();
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_29:

    return;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_29;
  }

LABEL_6:
  if (v19 >= 1)
  {
    v20 = 0;
    v6 = 0;
    v21 = qword_28135CA38;
    v47 = v15 & 0xC000000000000001;
    *&v18 = 138543362;
    v45 = v18;
    v44 = xmmword_224DB2780;
    while (1)
    {
      if (v47)
      {
        v22 = MEMORY[0x22AA5DCC0](v20, v15);
      }

      else
      {
        v22 = *(v15 + 8 * v20 + 32);
      }

      v23 = v22;
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v24 = sub_224DAB258();
      __swift_project_value_buffer(v24, qword_281365120);
      v25 = v23;
      v26 = sub_224DAB228();
      v27 = sub_224DAF2A8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46 = v6;
        v30 = v3;
        v31 = v15;
        v32 = v19;
        v33 = v21;
        v34 = v29;
        *v28 = v45;
        *(v28 + 4) = v25;
        *v29 = v25;
        v35 = v25;
        _os_log_impl(&dword_224A2F000, v26, v27, "Marking extension visible for location: %{public}@", v28, 0xCu);
        sub_224A3311C(v34, &unk_27D6F69F0, &unk_224DB3900);
        v36 = v34;
        v21 = v33;
        v19 = v32;
        v15 = v31;
        v3 = v30;
        v6 = v46;
        MEMORY[0x22AA5EED0](v36, -1, -1);
        MEMORY[0x22AA5EED0](v28, -1, -1);
      }

      sub_224A3796C(v3 + v21, v48, &qword_27D6F4200, &unk_224DB5FC0);
      if (v49)
      {
        break;
      }

      sub_224A3311C(v48, &qword_27D6F4200, &unk_224DB5FC0);
      v50 = 0u;
      v51 = 0u;
      v52 = 0;
      sub_224A3311C(&v50, &qword_27D6F3AE8, &unk_224DB9600);
LABEL_9:
      if (v19 == ++v20)
      {
        goto LABEL_29;
      }
    }

    v37 = __swift_project_boxed_opaque_existential_1(v48, v49);
    v38 = *v37;
    v16 = *(*v37 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    os_unfair_lock_lock(*(v16 + 16));
    sub_224A8850C(v38, v25, 0, &v50);
    if (v6)
    {
      goto LABEL_32;
    }

    os_unfair_lock_unlock(*(v16 + 16));
    v39 = v50;
    if (BYTE9(v50))
    {
      v40 = OBJC_IVAR____TtC10ChronoCore15LocationService__visibilityReloadPublisher;
    }

    else
    {
      if ((BYTE8(v50) & 1) == 0)
      {
LABEL_24:
        if (v39)
        {
          *(&v51 + 1) = sub_224DAC198();
          v52 = MEMORY[0x277CF9950];
          *&v50 = v39;
        }

        else
        {
          v52 = 0;
          v50 = 0u;
          v51 = 0u;
        }

        sub_224A3311C(&v50, &qword_27D6F3AE8, &unk_224DB9600);
        __swift_destroy_boxed_opaque_existential_1(v48);
        goto LABEL_9;
      }

      v40 = OBJC_IVAR____TtC10ChronoCore15LocationService__significantLocationChangedPublisher;
    }

    v41 = *(v38 + v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    v42 = swift_allocObject();
    *(v42 + 16) = v44;
    *(v42 + 32) = v25;
    *&v50 = v42;
    v43 = v25;
    sub_224DAB348();

    goto LABEL_24;
  }

  __break(1u);
LABEL_32:

  os_unfair_lock_unlock(*(v16 + 16));
  __break(1u);
}

uint64_t sub_224B4D660(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for _HostFilterableChange();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  (*(v6 + 56))(&v23 - v15, 1, 1, v5);
  v17 = *(v2 + qword_28135C9F0);
  os_unfair_lock_lock(*(v17 + 16));
  sub_224B4D928(v2, a2, a1, v16);
  os_unfair_lock_unlock(*(v17 + 16));
  sub_224A3796C(v16, v14, &qword_27D6F41F8, &unk_224DB5FB0);
  if ((*(v6 + 48))(v14, 1, v5) != 1)
  {
    sub_224B52FE4(v14, v9);
    sub_224B4F824(5, v9);
    v18 = v2 + qword_28135CA30;
    if (*(v2 + qword_28135CA30 + 24))
    {
      sub_224A3317C(v18, &v23);
      v19 = *(&v24 + 1);
      if (*(&v24 + 1))
      {
LABEL_5:
        v20 = v25;
        __swift_project_boxed_opaque_existential_1(&v23, v19);
        (*(v20 + 40))(a2, a1, v19, v20);
        sub_224A6951C(v9);
        goto LABEL_8;
      }
    }

    else
    {
      v21 = *(v18 + 16);
      v23 = *v18;
      v24 = v21;
      v25 = *(v18 + 32);
      v19 = *(&v21 + 1);
      if (*(&v21 + 1))
      {
        goto LABEL_5;
      }
    }

    sub_224A6951C(v9);
    if (!*(&v24 + 1))
    {
      return sub_224A3311C(v16, &qword_27D6F41F8, &unk_224DB5FB0);
    }

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(&v23);
    return sub_224A3311C(v16, &qword_27D6F41F8, &unk_224DB5FB0);
  }

  sub_224A3311C(v14, &qword_27D6F41F8, &unk_224DB5FB0);
  return sub_224A3311C(v16, &qword_27D6F41F8, &unk_224DB5FB0);
}

uint64_t sub_224B4D928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v85 = a3;
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v82 = *(v8 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x28223BE20](v8);
  v81 = &v68 - v10;
  v79 = sub_224DAB258();
  v84 = *(v79 - 8);
  v11 = *(v84 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v68 - v15;
  v88 = sub_224DAA428();
  v17 = *(v88 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v88);
  v77 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v23 = qword_28135CA28;
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = v7[10];
  v26 = v7[11];
  v27 = v7[12];
  type metadata accessor for _Host();
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);

  v80 = a2;
  v83 = v8;
  sub_224DAED58();

  v29 = v87;
  if (v87)
  {
    v75 = v4;
    v30 = *(*v87 + 112);
    swift_beginAccess();
    v31 = v88;
    v73 = v17[2];
    v73(v22, v29 + v30, v88);
    sub_224A80EB8(&qword_281351830, MEMORY[0x277CFA048]);

    v32 = sub_224DAEDD8();
    v74 = v17;
    v33 = v31;
    v36 = v17[1];
    v35 = v17 + 1;
    v34 = v36;
    v36(v22, v33);
    if (v32)
    {
    }

    else
    {
      v70 = v35;
      v71 = v34;
      v69 = *(v82 + 16);
      v37 = v83;
      v69(v16, v80, v83);
      v38 = type metadata accessor for _HostFilterableChange();
      v39 = &v16[*(v38 + 20)];
      v72 = v30;
      v40 = v29 + v30;
      v41 = v88;
      v42 = v73;
      v73(v39, v40, v88);
      v42(&v16[*(v38 + 24)], v85, v41);
      (*(*(v38 - 8) + 56))(v16, 0, 1, v38);
      sub_224A838C0(v16, v76, &qword_27D6F41F8, &unk_224DB5FB0);
      v43 = a1 + qword_281365438;
      v44 = v78;
      v45 = v79;
      (*(v84 + 16))(v78, v43, v79);
      v69(v81, v80, v37);
      v46 = v77;
      v47 = v85;
      v42(v77, v85, v41);
      v48 = v44;
      v49 = sub_224DAB228();
      v50 = sub_224DAF2A8();
      v51 = v47;
      if (os_log_type_enabled(v49, v50))
      {
        v52 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v86[0] = v80;
        *v52 = 136446466;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        LODWORD(v76) = v50;
        v53 = v81;
        v54 = v83;
        v55 = v51;
        v56 = sub_224DAFD28();
        v58 = v57;
        (*(v82 + 8))(v53, v54);
        v59 = sub_224A33F74(v56, v58, v86);

        *(v52 + 4) = v59;
        *(v52 + 12) = 2082;
        sub_224A80EB8(&qword_281351820, MEMORY[0x277CFA048]);
        v60 = v88;
        v61 = sub_224DAFD28();
        v63 = v62;
        v71(v46, v60);
        v64 = sub_224A33F74(v61, v63, v86);

        *(v52 + 14) = v64;
        v51 = v55;
        _os_log_impl(&dword_224A2F000, v49, v76, "[%{public}s] Changed activation state: %{public}s", v52, 0x16u);
        v65 = v80;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v65, -1, -1);
        MEMORY[0x22AA5EED0](v52, -1, -1);

        (*(v84 + 8))(v78, v79);
      }

      else
      {

        v71(v46, v88);
        (*(v82 + 8))(v81, v83);
        (*(v84 + 8))(v48, v45);
      }

      v66 = v74;
      v67 = v72;
      swift_beginAccess();
      (v66[3])(v29 + v67, v51, v88);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_224B4E13C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _HostFilterableChange();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-v14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAA1F8();
  v16 = sub_224DAA048();

  if ((v16 & 1) == 0)
  {
    (*(v5 + 56))(v15, 1, 1, v4);
    v18 = *(v2 + qword_28135C9F0);
    os_unfair_lock_lock(*(v18 + 16));
    sub_224B4E3A4(v2, a1, v15);
    os_unfair_lock_unlock(*(v18 + 16));
    sub_224A3796C(v15, v13, &qword_27D6F41F8, &unk_224DB5FB0);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_224A3311C(v13, &qword_27D6F41F8, &unk_224DB5FB0);
    }

    else
    {
      sub_224B52FE4(v13, v8);
      sub_224B4F824(8, v8);
      sub_224A6951C(v8);
    }

    return sub_224A3311C(v15, &qword_27D6F41F8, &unk_224DB5FB0);
  }

  return result;
}

uint64_t sub_224B4E3A4(void *a1, uint64_t a2, uint64_t *a3)
{
  v78 = a3;
  v5 = *a1;
  v83 = sub_224DAC378();
  v77 = *(v83 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v84 = *(v11 - 8);
  v12 = *(v84 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v66 - v13;
  v85 = sub_224DAB258();
  v81 = *(v85 - 8);
  v14 = *(v81 + 64);
  MEMORY[0x28223BE20](v85);
  v80 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F41F8, &unk_224DB5FB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v66 - v19;
  v21 = v5[10];
  v22 = *(v21 - 8);
  v23 = v22[8];
  MEMORY[0x28223BE20](v18);
  v88 = &v66 - v24;
  v25 = qword_28135CA28;
  swift_beginAccess();
  v26 = *(a1 + v25);
  v27 = v5[11];
  v28 = v5[12];
  v86 = v21;
  v87 = v28;
  type metadata accessor for _Host();
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);

  v29 = a2;
  sub_224DAED58();

  v31 = v90;
  if (v90)
  {
    if (sub_224B48B24())
    {
    }

    v32 = *(*v31 + 104);
    swift_beginAccess();
    v33 = v22[2];
    v75 = v32;
    v34 = v88;
    v35 = v86;
    v74 = v22 + 2;
    v73 = v33;
    v33(v88, v31 + v32, v86);

    LOBYTE(v32) = sub_224DAD698();
    v37 = v22[1];
    v36 = v22 + 1;
    v72 = v37;
    v37(v34, v35);
    if ((v32 & 1) == 0)
    {
    }

    v71 = v36;
    v38 = *(v84 + 16);
    v69 = v84 + 16;
    v70 = v38;
    v67 = v29;
    (v38)(v20, v29, v11);
    v39 = *(*v31 + 112);
    swift_beginAccess();
    v40 = type metadata accessor for _HostFilterableChange();
    v41 = *(v40 + 24);
    v42 = sub_224DAA428();
    v43 = *(v42 - 8);
    v68 = v11;
    v44 = *(v43 + 16);
    v44(&v20[v41], v31 + v39, v42);
    v44(&v20[*(v40 + 20)], &v20[v41], v42);
    (*(*(v40 - 8) + 56))(v20, 0, 1, v40);
    sub_224A838C0(v20, v78, &qword_27D6F41F8, &unk_224DB5FB0);
    v45 = v81;
    v46 = v80;
    (*(v81 + 16))(v80, a1 + qword_281365438, v85);
    v47 = v79;
    v48 = v68;
    (v70)(v79, v67, v68);
    v49 = sub_224DAB228();
    v50 = sub_224DAF2A8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v70 = v51;
      v78 = swift_slowAlloc();
      v89[0] = v78;
      *v51 = 136446210;
      sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0);
      sub_224DAEFA8();
      (*(v84 + 8))(v47, v48);
      v52 = v46;
      v53 = sub_224A33F74(v89[1], v89[2], v89);

      v54 = v70;
      *(v70 + 1) = v53;
      _os_log_impl(&dword_224A2F000, v49, v50, "[%{public}s] Orphaned.", v54, 0xCu);
      v55 = v78;
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x22AA5EED0](v55, -1, -1);
      MEMORY[0x22AA5EED0](v54, -1, -1);

      (*(v45 + 8))(v52, v85);
    }

    else
    {

      (*(v84 + 8))(v47, v48);
      (*(v45 + 8))(v46, v85);
    }

    v56 = v82;
    sub_224DAC338();
    v57 = v88;
    v58 = v86;
    v73(v88, v31 + v75, v86);

    sub_224DAD668();
    v60 = v59;
    result = v72(v57, v58);
    v61 = v60 * 1000000000.0;
    v62 = v83;
    if (COERCE__INT64(fabs(v60 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v61 > -1.0)
    {
      if (v61 < 1.84467441e19)
      {
        v63 = v76;
        sub_224DAC358();
        v64 = v77;
        (*(v77 + 8))(v56, v62);
        (*(v64 + 56))(v63, 0, 1, v62);
        v65 = *(*v31 + 216);
        swift_beginAccess();
        sub_224A838C0(v63, v31 + v65, &qword_27D6F3948, &qword_224DB5C10);
        swift_endAccess();
        sub_224B506A8();
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_224B4ED14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v34 = sub_224DAA428();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 80);
  v32 = sub_224DAF728();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - v12;
  v41 = *(v2 + qword_28135C9F0);
  v38 = v2;
  v39 = a1;
  v40 = a2;
  v13 = type metadata accessor for UnfairLock();
  v35 = v2;
  v14 = *(v5 + 96);
  v36 = v9;
  type metadata accessor for ReadOnlyHost();
  v15 = sub_224DAF0B8();

  sub_224A49C20(sub_224B52E80, v37, v13, v15, &off_28382D228);

  v16 = v42;
  if (sub_224DAF088())
  {
    v30 = v36 - 8;
    v29 = *MEMORY[0x277CFA038];
    v27 = (v6 + 8);
    v28 = (v6 + 104);
    v17 = (v10 + 8);
    v18 = 4;
    v19 = v31;
    v20 = v34;
    do
    {
      v21 = v18 - 4;
      v22 = sub_224DAF068();
      sub_224DAF028();
      if (v22)
      {
        v23 = *(v16 + 8 * v18);

        v24 = v18 - 3;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v23 = sub_224DAF948();
        v24 = v18 - 3;
        if (__OFADD__(v21, 1))
        {
LABEL_9:
          __break(1u);
        }
      }

      (*(*(v36 - 8) + 56))(v19, 1, 1);
      v25 = v33;
      (*v28)(v33, v29, v20);
      sub_224B49B08(v19, v25, v23 + qword_281365418);

      (*v27)(v25, v20);
      (*v17)(v19, v32);
      ++v18;
    }

    while (v24 != sub_224DAF088());
  }
}

uint64_t sub_224B4F0A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_28135CA28;
  swift_beginAccess();
  v16 = *(a1 + v4);
  v13 = v3[10];
  v14 = v3[11];
  v15 = v3[12];

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for _Host();
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);
  v5 = sub_224DAED48();
  OnlyHost = type metadata accessor for ReadOnlyHost();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_224A4A740(sub_224B53048, v12, v5, OnlyHost, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  v16 = v9;
  sub_224DAF0B8();
  swift_getWitnessTable();
  result = sub_224DAF9A8();
  *a2 = result;
  return result;
}

uint64_t sub_224B4F2D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for _Host();
  v4 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  result = sub_224D42F10();
  *a2 = result;
  return result;
}

uint64_t sub_224B4F37C(uint64_t a1, uint64_t a2)
{
  v31 = *v2;
  v5 = *(v31 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = &v29 - v8;
  v9 = sub_224DAF728();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v34 = &v29 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(TupleTypeMetadata2 - 8);
  v14 = *(v32 + 64);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v29 - v16;
  v18 = *(v15 + 48);
  v33 = v10;
  v19 = *(v10 + 16);
  v19(&v29 - v16, a1, v9);
  v19(&v17[v18], a2, v9);
  v20 = *(v6 + 48);
  if (v20(v17, 1, v5) == 1)
  {
    if (v20(&v17[v18], 1, v5) == 1)
    {
      (*(v33 + 8))(v17, v9);
      return MEMORY[0x277D84FA0];
    }

    goto LABEL_6;
  }

  v19(v34, v17, v9);
  if (v20(&v17[v18], 1, v5) == 1)
  {
    (*(v6 + 8))(v34, v5);
LABEL_6:
    (*(v32 + 8))(v17, TupleTypeMetadata2);
    goto LABEL_7;
  }

  v22 = &v17[v18];
  v23 = v30;
  (*(v6 + 32))(v30, v22, v5);
  v24 = *(*(*(v31 + 96) + 8) + 8);
  v25 = v34;
  v26 = sub_224DAEDD8();
  v27 = *(v6 + 8);
  v27(v23, v5);
  v27(v25, v5);
  (*(v33 + 8))(v17, v9);
  if (v26)
  {
    return MEMORY[0x277D84FA0];
  }

LABEL_7:
  v21 = sub_224D574B8(&unk_283828118);
  sub_224B531CC(&unk_283828138);
  return v21;
}

uint64_t sub_224B4F74C(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = *(a2 + qword_28135C9F0);
  os_unfair_lock_lock(*(v5 + 16));
  LOBYTE(a3) = sub_224B5014C(a1, a3);
  os_unfair_lock_unlock(*(v5 + 16));
  return a3 & 1;
}

uint64_t sub_224B4F7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_224B4F824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for _HostFilterableChange();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v79 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v80 = &v79 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v79 - v15;
  v17 = sub_224DAB258();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v20 = MEMORY[0x28223BE20](v17);
  v85 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v79 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v81 = &v79 - v26;
  result = MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  v86 = v3;
  v87 = a2;
  v82 = v12;
  v83 = v24;
  if ((a1 & 4) != 0)
  {
    (*(v18 + 2))(&v79 - v28, v3 + qword_281365438, v17);
    sub_224B530D8(a2, v16);
    v30 = sub_224DAB228();
    v31 = sub_224DAF278();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v88 = v33;
      *v32 = 136446210;
      v79 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
      v34 = sub_224DAFD28();
      v36 = v35;
      sub_224A6951C(v16);
      v37 = sub_224A33F74(v34, v36, &v88);
      v17 = v79;

      *(v32 + 4) = v37;
      _os_log_impl(&dword_224A2F000, v30, v31, "Publishing activation state changed with host: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      v38 = v32;
      v3 = v86;
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    else
    {

      sub_224A6951C(v16);
    }

    (*(v18 + 1))(v29, v17);
    v39 = *(v3 + qword_28135C9F8);
    a2 = v87;
    result = sub_224DAB348();
    v12 = v82;
    v24 = v83;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v40 = v81;
  (*(v18 + 2))(v81, v3 + qword_281365438, v17);
  v41 = v80;
  sub_224B530D8(a2, v80);
  v42 = sub_224DAB228();
  v43 = sub_224DAF278();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v88 = v45;
    *v44 = 136446210;
    v79 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
    v46 = sub_224DAFD28();
    v48 = v47;
    sub_224A6951C(v41);
    v49 = sub_224A33F74(v46, v48, &v88);
    v17 = v79;

    *(v44 + 4) = v49;
    _os_log_impl(&dword_224A2F000, v42, v43, "Publishing configurations changed with host: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x22AA5EED0](v45, -1, -1);
    v50 = v44;
    v3 = v86;
    MEMORY[0x22AA5EED0](v50, -1, -1);

    (*(v18 + 1))(v81, v17);
  }

  else
  {

    sub_224A6951C(v41);
    (*(v18 + 1))(v40, v17);
  }

  v51 = *(v3 + qword_28135CA00);
  a2 = v87;
  result = sub_224DAB348();
  v12 = v82;
  v24 = v83;
  if ((a1 & 1) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_14:
  (*(v18 + 2))(v24, v3 + qword_281365438, v17);
  sub_224B530D8(a2, v12);
  v52 = v24;
  v53 = v12;
  v54 = sub_224DAB228();
  v55 = sub_224DAF278();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v81 = v18;
    v58 = v57;
    v88 = v57;
    *v56 = 136446210;
    v80 = a1;
    a1 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
    v59 = sub_224DAFD28();
    v61 = v60;
    sub_224A6951C(v53);
    v62 = sub_224A33F74(v59, v61, &v88);
    v17 = a1;
    LOBYTE(a1) = v80;

    *(v56 + 4) = v62;
    _os_log_impl(&dword_224A2F000, v54, v55, "Publishing host changed with host: %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v63 = v58;
    v18 = v81;
    MEMORY[0x22AA5EED0](v63, -1, -1);
    v64 = v56;
    v3 = v86;
    MEMORY[0x22AA5EED0](v64, -1, -1);
  }

  else
  {

    sub_224A6951C(v12);
  }

  (*(v18 + 1))(v52, v17);
  v65 = *(v3 + qword_28135CA10);
  a2 = v87;
  result = sub_224DAB348();
  if ((a1 & 8) != 0)
  {
LABEL_18:
    (*(v18 + 2))(v85, v3 + qword_281365438, v17);
    sub_224B530D8(a2, v84);
    v66 = sub_224DAB228();
    v67 = sub_224DAF278();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v18;
      v70 = swift_slowAlloc();
      v88 = v70;
      *v68 = 136446210;
      v71 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v72 = v84;
      sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
      v73 = sub_224DAFD28();
      v75 = v74;
      sub_224A6951C(v72);
      v76 = sub_224A33F74(v73, v75, &v88);

      *(v68 + 4) = v76;
      _os_log_impl(&dword_224A2F000, v66, v67, "Publishing orphans changed with host: %{public}s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x22AA5EED0](v70, -1, -1);
      v77 = v68;
      v3 = v86;
      MEMORY[0x22AA5EED0](v77, -1, -1);

      (*(v69 + 1))(v85, v71);
    }

    else
    {

      sub_224A6951C(v84);
      (*(v18 + 1))(v85, v17);
    }

    v78 = *(v3 + qword_28135CA08);
    return sub_224DAB348();
  }

  return result;
}

BOOL sub_224B5014C(uint64_t a1, unsigned __int16 a2)
{
  v4 = a2;
  v5 = sub_224DAA428();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v2 + qword_28135C9F0) + 16));
  if (v4 >= 0x100 && HIBYTE(a2) != 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224DAA1F8();
    if (v10)
    {

      if (HIBYTE(a2) != 2)
      {
        return 0;
      }
    }

    else if (HIBYTE(a2) != 1)
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 == 1)
  {
    v11 = type metadata accessor for _HostFilterableChange();
    v12 = *(v11 + 20);
    v13 = MEMORY[0x277CFA040];
  }

  else
  {
    v11 = type metadata accessor for _HostFilterableChange();
    v14 = *(v11 + 20);
    v13 = MEMORY[0x277CFA038];
  }

  v15 = *v13;
  v20 = v6[13];
  v20(v9, v15, v5);
  sub_224A80EB8(&qword_281351828, MEMORY[0x277CFA048]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v16 = v6[1];
  v16(v9, v5);
  if (v22 == v21)
  {
    return 1;
  }

  v17 = *(v11 + 24);
  v20(v9, v15, v5);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v16(v9, v5);
  return v22 == v21;
}

uint64_t sub_224B503DC()
{
  v1 = *v0;
  os_unfair_lock_assert_owner(*(*(v0 + qword_28135C9F0) + 16));
  v2 = qword_28135CA28;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = type metadata accessor for _Host();
  v9 = sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);
  nullsub_1(v3, v4, v8, v9);
  sub_224DAED38();

  swift_getWitnessTable();
  return sub_224DAEF68();
}

BOOL sub_224B5057C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  v7 = *(*v6 + 216);
  swift_beginAccess();
  sub_224A3796C(v6 + v7, v5, &qword_27D6F3948, &qword_224DB5C10);
  v8 = sub_224DAC378();
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_224A3311C(v5, &qword_27D6F3948, &qword_224DB5C10);
  return v9;
}

uint64_t sub_224B506A8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_224DAC378();
  v97 = *(v3 - 8);
  v4 = *(v97 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v88 - v9;
  MEMORY[0x28223BE20](v8);
  v104 = &v88 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v88 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v102 = &v88 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v103 = &v88 - v23;
  MEMORY[0x28223BE20](v22);
  v109 = &v88 - v24;
  v111 = sub_224DAB258();
  v25 = *(v111 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v111);
  v108 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v106 = (&v88 - v29);
  os_unfair_lock_assert_owner(*(*&v1[qword_28135C9F0] + 16));
  v30 = qword_28135CA40;
  v31 = *&v1[qword_28135CA40];
  v92 = v7;
  v93 = v16;
  v98 = v19;
  if (v31)
  {

    sub_224DAC5F8();

    v32 = *&v1[v30];
  }

  v91 = v30;
  *&v1[v30] = 0;

  v33 = sub_224B503DC();
  v113[0] = v33;
  v34 = v2[11];
  v35 = v2[12];
  v96 = v2[10];
  v95 = v34;
  v94 = v35;
  v110 = type metadata accessor for _Host();
  v36 = sub_224DAF0B8();
  WitnessTable = swift_getWitnessTable();
  if ((sub_224DAF248() & 1) == 0)
  {
    v89 = v10;
    v46 = v25;
    v47 = *(v25 + 16);
    v48 = v108;
    v49 = v111;
    v47(v108, &v1[qword_281365438], v111);

    v50 = sub_224DAB228();
    v51 = sub_224DAF268();

    v52 = os_log_type_enabled(v50, v51);
    v90 = v1;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v105 = v53;
      v54 = swift_slowAlloc();
      v106 = v54;
      v112 = v33;
      v113[0] = v54;
      *v53 = 136446210;
      MEMORY[0x28223BE20](v54);
      v55 = v95;
      *(&v88 - 4) = v96;
      *(&v88 - 3) = v55;
      *(&v88 - 2) = v94;
      v56 = v50;
      LODWORD(v101) = v51;
      v112 = sub_224A4A740(sub_224B53148, (&v88 - 6), v36, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
      v58 = sub_224DAEDA8();
      v60 = v59;

      v61 = sub_224A33F74(v58, v60, v113);

      v62 = v105;
      *(v105 + 4) = v61;
      _os_log_impl(&dword_224A2F000, v56, v101, "Starting orphaned host purge timer for host identifiers: %{public}s", v62, 0xCu);
      v63 = v106;
      __swift_destroy_boxed_opaque_existential_1(v106);
      MEMORY[0x22AA5EED0](v63, -1, -1);
      MEMORY[0x22AA5EED0](v62, -1, -1);

      (*(v46 + 8))(v48, v111);
    }

    else
    {

      (*(v46 + 8))(v48, v49);
    }

    v65 = v103;
    v64 = v104;
    v100 = *(v97 + 56);
    v101 = v97 + 56;
    v100(v109, 1, 1, v3);
    if (!sub_224DAF088())
    {
LABEL_27:

      v79 = v109;
      v80 = v93;
      sub_224A3796C(v109, v93, &qword_27D6F3948, &qword_224DB5C10);
      v81 = v97;
      if ((*(v97 + 48))(v80, 1, v3) == 1)
      {
        sub_224A3311C(v79, &qword_27D6F3948, &qword_224DB5C10);
        return sub_224A3311C(v80, &qword_27D6F3948, &qword_224DB5C10);
      }

      else
      {
        v82 = v89;
        (*(v81 + 32))(v89, v80, v3);
        sub_224DAC648();
        (*(v81 + 16))(v92, v82, v3);
        sub_224DAC618();
        v83 = sub_224DAC608();
        v84 = *(v90 + v91);
        *(v90 + v91) = v83;

        v85 = swift_allocObject();
        swift_weakInit();
        v86 = swift_allocObject();
        v87 = v95;
        v86[2] = v96;
        v86[3] = v87;
        v86[4] = v94;
        v86[5] = v85;

        sub_224DAC638();

        (*(v81 + 8))(v82, v3);
        sub_224A3311C(v79, &qword_27D6F3948, &qword_224DB5C10);
      }
    }

    v107 = v33;
    v108 = (v97 + 48);
    v106 = (v97 + 32);
    v99 = (v97 + 8);
    v66 = 4;
    while (1)
    {
      v67 = v66 - 4;
      v68 = sub_224DAF068();
      sub_224DAF028();
      if (v68)
      {
        v69 = *(v33 + 8 * v66);

        v70 = v66 - 3;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v69 = sub_224DAF948();
        v70 = v66 - 3;
        if (__OFADD__(v67, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      v111 = v70;
      v71 = *(*v69 + 216);
      swift_beginAccess();
      sub_224A3796C(v69 + v71, v65, &qword_27D6F3948, &qword_224DB5C10);
      v72 = *v108;
      if ((*v108)(v65, 1, v3) == 1)
      {

        sub_224A3311C(v65, &qword_27D6F3948, &qword_224DB5C10);
      }

      else
      {
        v105 = *v106;
        (v105)(v64, v65, v3);
        v73 = v109;
        v74 = v102;
        sub_224A3796C(v109, v102, &qword_27D6F3948, &qword_224DB5C10);
        if (v72(v74, 1, v3) == 1)
        {

          sub_224A3311C(v74, &qword_27D6F3948, &qword_224DB5C10);
          v64 = v104;
        }

        else
        {
          sub_224A3311C(v74, &qword_27D6F3948, &qword_224DB5C10);
          v75 = v98;
          sub_224A3796C(v73, v98, &qword_27D6F3948, &qword_224DB5C10);
          result = v72(v75, 1, v3);
          if (result == 1)
          {
            __break(1u);
            return result;
          }

          sub_224A80EB8(&qword_281350DF0, MEMORY[0x277CF9A10]);
          v64 = v104;
          v76 = sub_224DAEDB8();

          v77 = *v99;
          (*v99)(v75, v3);
          if ((v76 & 1) == 0)
          {
            v77(v64, v3);
            v65 = v103;
            goto LABEL_14;
          }
        }

        v78 = v109;
        sub_224A3311C(v109, &qword_27D6F3948, &qword_224DB5C10);
        (v105)(v78, v64, v3);
        v100(v78, 0, 1, v3);
        v65 = v103;
      }

LABEL_14:
      v33 = v107;
      ++v66;
      if (v111 == sub_224DAF088())
      {
        goto LABEL_27;
      }
    }
  }

  if (v31)
  {
    v39 = v25;
    v40 = *(v25 + 16);
    v41 = v106;
    v42 = v111;
    v40(v106, &v1[qword_281365438], v111);
    v43 = sub_224DAB228();
    v44 = sub_224DAF268();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_224A2F000, v43, v44, "Invalidated orphaned host purge timer.", v45, 2u);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }

    return (*(v39 + 8))(v41, v42);
  }

  return result;
}

uint64_t sub_224B5128C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224B512E4();
  }

  return result;
}

void sub_224B512E4()
{
  v1 = type metadata accessor for _HostFilterableChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v6 = *&v0[qword_28135C9F0];
  os_unfair_lock_lock(*(v6 + 16));
  sub_224B51454(v0, &v11);
  os_unfair_lock_unlock(*(v6 + 16));
  if (v11)
  {
    v7 = *(v11 + 16);
    if (v7)
    {
      v8 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v9 = *(v2 + 72);
      do
      {
        sub_224B530D8(v8, v5);
        sub_224B4F824(15, v5);
        sub_224A6951C(v5);
        v8 += v9;
        --v7;
      }

      while (v7);
    }

    else
    {
    }
  }
}

uint64_t sub_224B51454(char *a1, void *a2)
{
  v115 = a2;
  v3 = *a1;
  v105 = type metadata accessor for _HostFilterableChange();
  v104 = *(v105 - 8);
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v114 = &v93[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v123 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v123);
  v116 = &v93[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v103 = &v93[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v93[-v13];
  v111 = sub_224DAC378();
  v15 = *(v111 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v111);
  v108 = &v93[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v93[-v20];
  MEMORY[0x28223BE20](v19);
  v119 = &v93[-v22];
  v23 = sub_224DAB258();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v109 = &v93[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v28 = &v93[-v27];
  v30 = v29;
  v31 = *(v29 + 16);
  v101 = qword_281365438;
  v121 = a1;
  v110 = v32;
  v100 = v29 + 16;
  v99 = v31;
  (v31)(&v93[-v27], &a1[qword_281365438]);
  v33 = sub_224DAB228();
  v34 = sub_224DAF278();
  v35 = os_log_type_enabled(v33, v34);
  v107 = v14;
  if (v35)
  {
    v36 = v3;
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_224A2F000, v33, v34, "Orphaned host purge timer fired", v37, 2u);
    v38 = v37;
    v3 = v36;
    v14 = v107;
    MEMORY[0x22AA5EED0](v38, -1, -1);
  }

  v39 = *(v30 + 8);
  v102 = v30 + 8;
  v98 = v39;
  v39(v28, v110);
  sub_224DAC338();
  sub_224DAC358();
  v40 = *(v15 + 8);
  v41 = v111;
  v118 = v15 + 8;
  v117 = v40;
  v40(v21, v111);
  v42 = sub_224B503DC();
  v43 = v3[10];
  v44 = v3[11];
  v45 = v3[12];
  v46 = type metadata accessor for _Host();
  v47 = sub_224DAF088();
  v49 = v108;
  if (!v47)
  {
LABEL_31:

    sub_224B506A8(v92);
    return v117(v119, v41);
  }

  v97 = &v121[qword_28135CA30];
  v124 = (v15 + 48);
  v96 = qword_28135CA28;
  v112 = (v15 + 32);
  v122 = (v6 + 16);
  v106 = (v6 + 8);
  v95 = (v15 + 56);
  v50 = 4;
  *&v48 = 136446210;
  v94 = v48;
  v113 = v42;
  v126 = v46;
  while (1)
  {
    v51 = v42;
    v52 = sub_224DAF068();
    sub_224DAF028();
    if (v52)
    {
      v53 = *(v51 + 8 * v50);
    }

    else
    {
      result = sub_224DAF948();
      v53 = result;
    }

    v42 = v51;
    if (__OFADD__(v50 - 4, 1))
    {
      break;
    }

    v127 = v50 - 3;
    v55 = *(*v53 + 216);
    swift_beginAccess();
    v125 = v55;
    sub_224A3796C(v53 + v55, v14, &qword_27D6F3948, &qword_224DB5C10);
    if ((*v124)(v14, 1, v41) != 1)
    {
      (*v112)(v49, v14, v41);
      sub_224A80EB8(&qword_281350DF0, MEMORY[0x277CF9A10]);
      if (sub_224DAEDB8())
      {
        v117(v49, v41);

LABEL_29:
        v42 = v113;
        goto LABEL_6;
      }

      v56 = v109;
      v57 = v110;
      v99(v109, &v121[v101], v110);

      v58 = sub_224DAB228();
      v59 = sub_224DAF2A8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&v128 = v120;
        *v60 = v94;
        v61 = v123;
        v62 = v116;
        (*v122)(v116, v53 + qword_281365430, v123);
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        v63 = sub_224DAFD28();
        v65 = v64;

        (*v106)(v62, v61);
        v66 = sub_224A33F74(v63, v65, &v128);

        *(v60 + 4) = v66;
        _os_log_impl(&dword_224A2F000, v58, v59, "Purging orphaned host: %{public}s", v60, 0xCu);
        v67 = v120;
        __swift_destroy_boxed_opaque_existential_1(v120);
        MEMORY[0x22AA5EED0](v67, -1, -1);
        MEMORY[0x22AA5EED0](v60, -1, -1);

        v68 = v109;
        v69 = v110;
      }

      else
      {

        v68 = v56;
        v69 = v57;
      }

      v98(v68, v69);
      if (!*v115)
      {
        *v115 = MEMORY[0x277D84F90];
      }

      v70 = v114;
      v120 = *v122;
      (v120)(v114, v53 + qword_281365430, v123);
      v71 = *(*v53 + 112);
      swift_beginAccess();
      v72 = v105;
      v73 = *(v105 + 24);
      v74 = sub_224DAA428();
      v75 = *(*(v74 - 8) + 16);
      v75(&v70[v73], v53 + v71, v74);
      v75(&v70[*(v72 + 20)], &v70[v73], v74);
      v76 = v115;
      v77 = *v115;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v76 = v77;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = sub_224AD9290(0, v77[2] + 1, 1, v77);
        *v76 = v77;
      }

      v41 = v111;
      v80 = v77[2];
      v79 = v77[3];
      if (v80 >= v79 >> 1)
      {
        v77 = sub_224AD9290(v79 > 1, v80 + 1, 1, v77);
        *v76 = v77;
      }

      v77[2] = v80 + 1;
      sub_224B52FE4(v114, v77 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v80);
      v81 = v103;
      (*v95)(v103, 1, 1, v41);
      v82 = v125;
      swift_beginAccess();
      sub_224A838C0(v81, v53 + v82, &qword_27D6F3948, &qword_224DB5C10);
      swift_endAccess();
      v83 = qword_281365430;
      (v120)(v116, v53 + qword_281365430, v123);
      v131 = 0;
      swift_beginAccess();
      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);
      sub_224DAED48();

      sub_224DAED68();
      swift_endAccess();
      if (*(v97 + 3))
      {
        sub_224A3317C(v97, &v128);
        v84 = *(&v129 + 1);
        if (*(&v129 + 1))
        {
          goto LABEL_24;
        }

LABEL_26:

        v49 = v108;
        v117(v108, v41);
        if (*(&v129 + 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v91 = *(v97 + 1);
        v128 = *v97;
        v129 = v91;
        v130 = *(v97 + 4);
        v84 = *(&v91 + 1);
        if (!*(&v91 + 1))
        {
          goto LABEL_26;
        }

LABEL_24:
        v85 = v130;
        __swift_project_boxed_opaque_existential_1(&v128, v84);
        v86 = v53 + v83;
        v87 = v116;
        v88 = v123;
        (v120)(v116, v86, v123);

        v89 = *(v85 + 48);
        v90 = v85;
        v41 = v111;
        v89(v87, v84, v90);

        (*v106)(v87, v88);
        v49 = v108;
        v117(v108, v41);
LABEL_27:
        __swift_destroy_boxed_opaque_existential_1(&v128);
      }

      v14 = v107;
      goto LABEL_29;
    }

    sub_224A3311C(v14, &qword_27D6F3948, &qword_224DB5C10);
LABEL_6:
    ++v50;
    if (v127 == sub_224DAF088())
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224B522B0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  type metadata accessor for HostService();
  swift_getMetatypeMetadata();
  return sub_224DAEE28();
}

unint64_t sub_224B5234C()
{
  v1 = *(v0 + qword_28135C9F0);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224B523C0(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

uint64_t sub_224B523C0@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v15[5] = 0;
  v15[6] = 0xE000000000000000;
  sub_224DAF938();

  v16 = 0xD000000000000014;
  v17 = 0x8000000224DC6BE0;
  v5 = qword_28135CA28;
  swift_beginAccess();
  v18 = *(a1 + v5);
  v15[2] = v4[10];
  v15[3] = v4[11];
  v15[4] = v4[12];

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for _Host();
  sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0);
  v6 = sub_224DAED48();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_224A4A740(sub_224B530B4, v15, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
  v10 = sub_224DAEDA8();
  v12 = v11;

  MEMORY[0x22AA5D210](v10, v12);

  result = MEMORY[0x22AA5D210](32010, 0xE200000000000000);
  v14 = v17;
  *a2 = v16;
  a2[1] = v14;
  return result;
}

uint64_t sub_224B52650@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_224DAA428();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for _Host();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v29 - v10;
  v36 = 9;
  v37 = 0xE100000000000000;
  v12 = *(v8 + 16);
  v12(&v29 - v10, a1, TupleTypeMetadata2);
  v13 = *&v11[*(TupleTypeMetadata2 + 48)];

  v14 = sub_224DAA1C8();
  v16 = v15;
  v17 = *(v6 - 8);
  v30 = *(v17 + 8);
  v31 = v17 + 8;
  v30(v11, v6);
  MEMORY[0x22AA5D210](v14, v16);

  MEMORY[0x22AA5D210](10272, 0xE200000000000000);
  v12(v11, a1, TupleTypeMetadata2);
  v18 = *&v11[*(TupleTypeMetadata2 + 48)];
  v19 = *(*v18 + 112);
  swift_beginAccess();
  v20 = v32;
  v21 = v33;
  v22 = v34;
  (*(v33 + 16))(v32, v18 + v19, v34);

  v23 = sub_224DAA408();
  v25 = v24;
  (*(v21 + 8))(v20, v22);
  MEMORY[0x22AA5D210](v23, v25);

  v30(v11, v6);
  result = MEMORY[0x22AA5D210](41, 0xE100000000000000);
  v27 = v37;
  v28 = v35;
  *v35 = v36;
  v28[1] = v27;
  return result;
}

uint64_t _s10ChronoCore27ConfigurationCharacteristicO2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_224DAFD88();
}

unint64_t sub_224B52A2C()
{
  result = qword_2813549F8[0];
  if (!qword_2813549F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813549F8);
  }

  return result;
}

uint64_t sub_224B52A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_224B52AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_224B52B24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_224B52B74()
{
  sub_224B52C2C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_224B52C2C()
{
  if (!qword_281350DC8)
  {
    sub_224DAC378();
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_281350DC8);
    }
  }
}

uint64_t sub_224B52C84()
{
  result = sub_224DAB258();
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

void sub_224B52D9C()
{
  sub_224AFCD10();
  if (v0 <= 0x3F)
  {
    sub_224DAA428();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_224B52E28(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224B52E80@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_224B4F0A0(*(v1 + 16), a1);
}

void sub_224B52ED8()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_224DAF728() - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_224B4D104(v0 + v3, v0 + v6, v7);
}

uint64_t sub_224B52FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _HostFilterableChange();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B53048@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_224B4F2D4(a1, a2);
}

BOOL sub_224B5306C(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return (v2(*a1) & 1) == 0;
}

uint64_t sub_224B530B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_224B52650(a1, a2);
}

uint64_t sub_224B530D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _HostFilterableChange();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B5313C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  return sub_224B5128C();
}

uint64_t sub_224B53148@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  result = sub_224DAA1C8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

BOOL sub_224B531A8(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_224B5057C(a1);
}

uint64_t sub_224B53220()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4240, &unk_224DB60F0);
    sub_224B55454();
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_224B532B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224B533EC, 0, 0);
}

uint64_t sub_224B533EC()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  sub_224DAABA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_224B53508;
  v9 = v0[9];
  v10 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_224B53508()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224B53604, 0, 0);
}

uint64_t sub_224B53604()
{
  if (v0[2])
  {
    v1 = v0[3];
    sub_224B53734(v0[2]);

    v2 = *(MEMORY[0x277D85798] + 4);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_224B53508;
    v4 = v0[9];
    v5 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
  }

  else
  {
    v6 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];

    return v7();
  }
}

void sub_224B53734(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(sub_224DAAA98() - 8);
    v5 = (a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v6 = *(v4 + 72);
    do
    {
      v7 = MEMORY[0x22AA5E4C0]();
      sub_224B53AEC(v5, v1);
      objc_autoreleasePoolPop(v7);
      v5 += v6;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_224B53804()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v3 = v0[11];

  v4 = OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_logger;
  v5 = sub_224DAB258();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224B538E8()
{
  result = sub_224DAB258();
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

void sub_224B539CC()
{
  sub_224B53A78(319, &qword_281351710, MEMORY[0x277D467E8]);
  if (v0 <= 0x3F)
  {
    sub_224B53A78(319, &qword_281351718, MEMORY[0x277D46790]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_224B53A78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_224DAAE38();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_224B53AEC(char *a1, uint64_t *a2)
{
  v239 = a1;
  v242 = a2;
  updated = type metadata accessor for ReplicatorUpdateObserver.Update(0);
  v2 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v225 = &v211 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v223 = &v211 - v6;
  v216 = sub_224DAB018();
  v215 = *(v216 - 8);
  v7 = v215[8];
  MEMORY[0x28223BE20](v216);
  v217 = &v211 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v226 = (&v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v227 = &v211 - v13;
  v232 = sub_224DAAE38();
  v237 = *(v232 - 8);
  v14 = *(v237 + 64);
  v15 = MEMORY[0x28223BE20](v232);
  v222 = &v211 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v228 = &v211 - v17;
  v238 = sub_224DA9908();
  v241 = *(v238 - 8);
  v18 = *(v241 + 64);
  v19 = MEMORY[0x28223BE20](v238);
  v235 = &v211 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v231 = &v211 - v21;
  v22 = sub_224DAAF28();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v229 = &v211 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v230 = &v211 - v26;
  v27 = sub_224DAAF48();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v219 = &v211 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v221 = &v211 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v234 = &v211 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v211 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v218 = &v211 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v220 = &v211 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v233 = (&v211 - v44);
  MEMORY[0x28223BE20](v43);
  v46 = &v211 - v45;
  v47 = sub_224DAAB18();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v211 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_224DAAA98();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v211 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224B5533C(v239, v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v243 = v28;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v28 + 32))(v38, v55, v27);
    v57 = sub_224DAAF08();
    v59 = v242;
    v60 = v27;
    v61 = v28;
    v62 = v38;
    if (v57 == v242[10] && v58 == v242[11])
    {

      v63 = v234;
    }

    else
    {
      v68 = sub_224DAFD88();

      v63 = v234;
      if ((v68 & 1) == 0)
      {
        return (*(v28 + 8))(v38, v60);
      }
    }

    v69 = OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_logger;
    v70 = *(v28 + 16);
    v214 = v62;
    v233 = v70;
    v234 = (v28 + 16);
    v70(v63, v62, v60);
    v71 = v59;
    v231 = v69;
    v72 = sub_224DAB228();
    v73 = sub_224DAF2A8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v63;
      v75 = swift_slowAlloc();
      v76 = v60;
      v77 = swift_slowAlloc();
      v244 = v77;
      *v75 = 136446210;
      sub_224B553A0();
      v78 = sub_224DAFD28();
      v80 = v79;
      v239 = *(v243 + 8);
      (v239)(v74, v76);
      v81 = sub_224A33F74(v78, v80, &v244);

      *(v75 + 4) = v81;
      _os_log_impl(&dword_224A2F000, v72, v73, "Received deleted record: %{public}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v82 = v77;
      v60 = v76;
      v83 = v241;
      MEMORY[0x22AA5EED0](v82, -1, -1);
      MEMORY[0x22AA5EED0](v75, -1, -1);

      v84 = v237;
    }

    else
    {

      v239 = *(v61 + 8);
      (v239)(v63, v60);
      v84 = v237;
      v83 = v241;
    }

    v105 = v229;
    v106 = v214;
    sub_224DAAF38();
    v107 = v238;
    if ((*(v83 + 48))(v105, 1, v238) == 1)
    {
      v108 = v106;
      return (v239)(v108, v60);
    }

    (*(v83 + 32))(v235, v105, v107);
    v112 = v71[8];
    __swift_project_boxed_opaque_existential_1(v71 + 4, v71[7]);
    v113 = *(v112 + 16);
    v114 = v226;
    sub_224DAAC98();
    v115 = v232;
    if ((*(v84 + 48))(v114, 1, v232) != 1)
    {
      v148 = v222;
      (*(v84 + 32))(v222, v114, v115);
      v149 = v71[3];
      v150 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4230, &unk_224DB60E0) + 48);
      v151 = v225;
      v152 = v214;
      v233(v225, v214, v60);
      (*(v84 + 16))(v151 + v150, v148, v115);
      swift_storeEnumTagMultiPayload();
      sub_224DAB348();
      sub_224B553F8(v151);
      (*(v84 + 8))(v148, v115);
      (*(v241 + 8))(v235, v107);
      v108 = v152;
      return (v239)(v108, v60);
    }

    sub_224A3311C(v114, &qword_27D6F3320, &unk_224DBD6F0);
    v116 = v221;
    v117 = v214;
    v233(v221, v214, v60);
    v118 = sub_224DAB228();
    v119 = sub_224DAF288();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v244 = v121;
      *v120 = 136446210;
      sub_224B553A0();
      v122 = sub_224DAFD28();
      v123 = v116;
      v125 = v124;
      v126 = v60;
      v243 += 8;
      v127 = v60;
      v128 = v239;
      (v239)(v123, v127);
      v129 = sub_224A33F74(v122, v125, &v244);

      *(v120 + 4) = v129;
      _os_log_impl(&dword_224A2F000, v118, v119, "Received deleted remote record from a device that does not exist: %{public}s", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v121);
      MEMORY[0x22AA5EED0](v121, -1, -1);
      MEMORY[0x22AA5EED0](v120, -1, -1);

      (*(v241 + 8))(v235, v238);
      return (v128)(v214, v126);
    }

    else
    {

      v181 = v239;
      (v239)(v116, v60);
      (*(v241 + 8))(v235, v107);
      return (v181)(v117, v60);
    }
  }

  else
  {
    v236 = v27;
    (*(v48 + 32))(v51, v55, v47);
    sub_224DAAAF8();
    v65 = v51;
    if (sub_224DAAF08() == v242[10] && v64 == v242[11])
    {

      v66 = v236;
      v67 = v233;
    }

    else
    {
      v85 = sub_224DAFD88();

      v66 = v236;
      v67 = v233;
      if ((v85 & 1) == 0)
      {
        (*(v243 + 8))(v46, v236);
        return (*(v48 + 8))(v65, v47);
      }
    }

    v239 = v65;
    v86 = OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_logger;
    v87 = v243;
    v88 = *(v243 + 16);
    v213 = v46;
    v234 = (v243 + 16);
    v235 = v88;
    (v88)(v67, v46, v66);
    v233 = v86;
    v89 = sub_224DAB228();
    v90 = sub_224DAF2A8();
    v91 = os_log_type_enabled(v89, v90);
    v212 = v48;
    if (v91)
    {
      v92 = v47;
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v244 = v94;
      *v93 = 136446210;
      sub_224B553A0();
      v95 = sub_224DAFD28();
      v96 = v67;
      v98 = v97;
      v99 = *(v87 + 8);
      v99(v96, v236);
      v100 = sub_224A33F74(v95, v98, &v244);

      *(v93 + 4) = v100;
      _os_log_impl(&dword_224A2F000, v89, v90, "Received updated record: %{public}s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v94);
      v101 = v94;
      v66 = v236;
      MEMORY[0x22AA5EED0](v101, -1, -1);
      v102 = v93;
      v47 = v92;
      v48 = v212;
      v103 = v241;
      MEMORY[0x22AA5EED0](v102, -1, -1);

      v104 = v238;
    }

    else
    {

      v99 = *(v87 + 8);
      v99(v67, v66);
      v104 = v238;
      v103 = v241;
    }

    v109 = v230;
    v110 = v213;
    sub_224DAAF38();
    if ((*(v103 + 48))(v109, 1, v104) == 1)
    {
      v99(v110, v66);
      return (*(v48 + 8))(v239, v47);
    }

    else
    {
      v226 = v99;
      v229 = v47;
      (*(v103 + 32))(v231, v109, v104);
      v130 = v242;
      v131 = v242[8];
      __swift_project_boxed_opaque_existential_1(v242 + 4, v242[7]);
      v132 = *(v131 + 16);
      v133 = v227;
      sub_224DAAC98();
      v134 = v237;
      v135 = v232;
      if ((*(v237 + 48))(v133, 1, v232) == 1)
      {
        sub_224A3311C(v133, &qword_27D6F3320, &unk_224DBD6F0);
        v136 = v220;
        (v235)(v220, v110, v66);
        v137 = sub_224DAB228();
        v138 = sub_224DAF288();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = v136;
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v244 = v141;
          *v140 = 136446210;
          sub_224B553A0();
          v142 = sub_224DAFD28();
          v144 = v143;
          v145 = v139;
          v146 = v226;
          v226(v145, v66);
          v147 = sub_224A33F74(v142, v144, &v244);

          *(v140 + 4) = v147;
          _os_log_impl(&dword_224A2F000, v137, v138, "Received incoming remote record from a device that does not exist: %{public}s", v140, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v141);
          MEMORY[0x22AA5EED0](v141, -1, -1);
          MEMORY[0x22AA5EED0](v140, -1, -1);

          (*(v241 + 8))(v231, v238);
          v146(v213, v66);
        }

        else
        {

          v182 = v226;
          v226(v136, v66);
          (*(v241 + 8))(v231, v104);
          v182(v110, v66);
        }
      }

      else
      {
        (*(v134 + 32))(v228, v133, v135);
        v153 = v110;
        v154 = v130[9];
        __swift_project_boxed_opaque_existential_1(v130 + 4, v130[7]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
        v155 = *(v243 + 72);
        v156 = (*(v243 + 80) + 32) & ~*(v243 + 80);
        v157 = swift_allocObject();
        *(v157 + 16) = xmmword_224DB3100;
        v158 = v157 + v156;
        v159 = v235;
        (v235)(v158, v153, v66);
        v160 = sub_224DA9688();
        v161 = v223;
        (*(*(v160 - 8) + 56))(v223, 1, 1, v160);
        v162 = v240;
        v163 = sub_224DAAC08();
        if (v162)
        {
          sub_224A3311C(v161, &unk_27D6F4680, &unk_224DB4610);

          v164 = v219;
          (v159)(v219, v213, v66);
          v165 = v162;
          v166 = v66;
          v167 = sub_224DAB228();
          v168 = sub_224DAF288();

          if (os_log_type_enabled(v167, v168))
          {
            v169 = v166;
            v170 = swift_slowAlloc();
            v240 = swift_slowAlloc();
            v242 = swift_slowAlloc();
            v244 = v242;
            *v170 = 136446466;
            sub_224B553A0();
            v171 = sub_224DAFD28();
            v173 = v172;
            v174 = v169;
            v175 = v226;
            v226(v164, v174);
            v176 = sub_224A33F74(v171, v173, &v244);

            *(v170 + 4) = v176;
            *(v170 + 12) = 2114;
            v177 = v162;
            v178 = _swift_stdlib_bridgeErrorToNSError();
            *(v170 + 14) = v178;
            v179 = v240;
            *v240 = v178;
            _os_log_impl(&dword_224A2F000, v167, v168, "Could not retrieve incoming record: %{public}s; %{public}@", v170, 0x16u);
            sub_224A3311C(v179, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v179, -1, -1);
            v180 = v242;
            __swift_destroy_boxed_opaque_existential_1(v242);
            MEMORY[0x22AA5EED0](v180, -1, -1);
            MEMORY[0x22AA5EED0](v170, -1, -1);

            (*(v237 + 8))(v228, v232);
            (*(v241 + 8))(v231, v238);
            v175(v213, v236);
          }

          else
          {

            v197 = v226;
            v226(v164, v166);
            (*(v237 + 8))(v228, v232);
            (*(v241 + 8))(v231, v238);
            v197(v213, v166);
          }
        }

        else
        {
          v183 = v163;
          v240 = 0;
          sub_224A3311C(v161, &unk_27D6F4680, &unk_224DB4610);

          v184 = v213;
          if (*(v183 + 16) && (v185 = sub_224B0B3CC(v213), (v186 & 1) != 0))
          {
            v187 = v215;
            v188 = v215[2];
            v189 = v217;
            v190 = v216;
            v188(v217, *(v183 + 56) + v215[9] * v185, v216);

            v191 = v242[3];
            v192 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4238, &unk_224DC3330) + 48);
            v193 = v225;
            v188(v225, v189, v190);
            v194 = v237;
            v195 = v228;
            v196 = v232;
            (*(v237 + 16))(v193 + v192, v228, v232);
            swift_storeEnumTagMultiPayload();
            sub_224DAB348();
            sub_224B553F8(v193);
            (v187[1])(v217, v190);
            (*(v194 + 8))(v195, v196);
            (*(v241 + 8))(v231, v238);
            v226(v184, v236);
          }

          else
          {

            v198 = v218;
            v199 = v236;
            (v235)(v218, v184, v236);
            v200 = sub_224DAB228();
            v201 = sub_224DAF288();
            if (os_log_type_enabled(v200, v201))
            {
              v202 = swift_slowAlloc();
              v203 = swift_slowAlloc();
              v244 = v203;
              *v202 = 136446210;
              sub_224B553A0();
              v204 = sub_224DAFD28();
              v206 = v205;
              v207 = v198;
              v208 = v226;
              v226(v207, v199);
              v209 = sub_224A33F74(v204, v206, &v244);

              *(v202 + 4) = v209;
              _os_log_impl(&dword_224A2F000, v200, v201, "Received incoming remote record that does not exist: %{public}s", v202, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v203);
              MEMORY[0x22AA5EED0](v203, -1, -1);
              MEMORY[0x22AA5EED0](v202, -1, -1);

              (*(v237 + 8))(v228, v232);
              (*(v241 + 8))(v231, v238);
              v208(v213, v199);
            }

            else
            {

              v210 = v226;
              v226(v198, v199);
              (*(v237 + 8))(v228, v232);
              (*(v241 + 8))(v231, v238);
              v210(v184, v199);
            }
          }
        }
      }

      return (*(v212 + 8))(v239, v229);
    }
  }
}

uint64_t sub_224B5533C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAAA98();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_224B553A0()
{
  result = qword_281351720;
  if (!qword_281351720)
  {
    sub_224DAAF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351720);
  }

  return result;
}

uint64_t sub_224B553F8(uint64_t a1)
{
  updated = type metadata accessor for ReplicatorUpdateObserver.Update(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_224B55454()
{
  result = qword_281350F98;
  if (!qword_281350F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4240, &unk_224DB60F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350F98);
  }

  return result;
}

uint64_t sub_224B554B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a6;
  v26 = a7;
  v27 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  updated = type metadata accessor for ReplicatorUpdateObserver(0);
  v15 = *(updated + 48);
  v16 = *(updated + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4240, &unk_224DB60F0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v17 + 24) = sub_224DAB358();
  *(v17 + OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_started) = 0;
  sub_224AB1DE0(&v24, (v17 + 32));
  *(v17 + 80) = a2;
  *(v17 + 88) = a3;
  v21 = OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_logger;
  v22 = sub_224DAB258();
  (*(*(v22 - 8) + 32))(v17 + v21, a4, v22);
  return v17;
}

uint64_t type metadata accessor for PushEvent()
{
  result = qword_281351BB8;
  if (!qword_281351BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B55660()
{
  result = sub_224DA9878();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_224B556FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_224B55744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_224B557A4()
{
  v1 = v0;
  sub_224DAF938();
  MEMORY[0x22AA5D210](0x6D617473656D6974, 0xEB00000000203A70);
  v2 = *(type metadata accessor for PushEvent() + 20);
  sub_224DA9878();
  sub_224B558C8();
  v3 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v3);

  MEMORY[0x22AA5D210](0x54746E657665203BLL, 0xED0000203A657079);
  v5 = *v1;
  v6 = *(v1 + 8);
  sub_224DAFA48();
  MEMORY[0x22AA5D210](59, 0xE100000000000000);
  return 0;
}

unint64_t sub_224B558C8()
{
  result = qword_27D6F32B8;
  if (!qword_27D6F32B8)
  {
    sub_224DA9878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F32B8);
  }

  return result;
}

uint64_t sub_224B55920()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364EE0);
  __swift_project_value_buffer(v0, qword_281364EE0);
  return sub_224DAB238();
}

uint64_t sub_224B559A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  __swift_allocate_value_buffer(v2, qword_27D6F7198);
  __swift_project_value_buffer(v2, qword_27D6F7198);
  sub_224DA9FF8();
  return sub_224DAA228();
}

void sub_224B55AAC(uint64_t a1, void *a2)
{
  v89 = a2;
  v95 = sub_224DAA428();
  v92 = *(v95 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v95);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_224DA9908();
  v90 = *(v91 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC268();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v79 - v20;
  sub_224DAC218();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_224A3311C(v16, &qword_27D6F56C0, &unk_224DB3580);
    return;
  }

  v80 = v5;
  (*(v18 + 32))(v21, v16, v17);
  v87 = v9;
  v22 = *(v9 + 16);
  v86 = v12;
  v22(v12, a1, v8);
  v101 = MEMORY[0x277D84F90];
  v23 = v94[5];
  v24 = v94[6];
  __swift_project_boxed_opaque_existential_1(v94 + 2, v23);
  (*(v24 + 24))(v99, v21, v23, v24);
  v84 = v17;
  v83 = v18;
  v82 = v21;
  v81 = v8;
  if (v100)
  {
    v25 = v95;
    if (*(v100 + 16))
    {
      v26 = a1;
      v27 = sub_224A79FA8(v100);
      sub_224A699F0(v99);
      v28 = v87;
      v29 = v86;
      if (v27 >> 62)
      {
LABEL_29:
        v30 = sub_224DAF838();
        if (v30)
        {
LABEL_7:
          v29 = 0;
          v97 = (v27 & 0xC000000000000001);
          v98 = 0;
          v93 = MEMORY[0x277D84F90];
          v85 = v27 & 0xFFFFFFFFFFFFFF8;
          v96 = v26;
          do
          {
            if (v97)
            {
              v32 = MEMORY[0x22AA5DCC0](v29, v27);
            }

            else
            {
              if (v29 >= *(v85 + 16))
              {
                goto LABEL_28;
              }

              v32 = *(v27 + 8 * v29 + 32);
            }

            v33 = v32;
            v25 = (v29 + 1);
            if (__OFADD__(v29, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            v28 = [v32 family];
            v34 = sub_224DAC248();
            v35 = [v34 family];

            if (v28 == v35)
            {
              v36 = [v33 widgets];
              sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
              v37 = sub_224DAF008();

              MEMORY[0x28223BE20](v38);
              v78 = v26;
              v28 = sub_224AFD844(sub_224B57590, (&v79 - 4), v37);

              if (v28)
              {

                (v87)[1](v86, v81);
                (*(v83 + 8))(v82, v84);

                return;
              }

              v98 = v33;
            }

            else
            {
              v31 = v33;
              MEMORY[0x22AA5D350]();
              if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v39 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_224DAF038();
              }

              sub_224DAF078();

              v93 = v101;
            }

            ++v29;
            v26 = v96;
          }

          while (v25 != v30);

          v25 = v95;
          v28 = v87;
          v29 = v86;
          if (!v98)
          {
            goto LABEL_31;
          }

          v98 = v98;
          v40 = [v98 widgets];
          sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
          v41 = sub_224DAF008();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_224DB2780;
          v43 = v89;
          *(inited + 32) = v89;
          v99[0] = v41;
          v44 = v43;
          sub_224B42648(inited);
          v45 = v88;
          sub_224DA98F8();
          sub_224DA9898();
          (*(v90 + 8))(v45, v91);
          v46 = sub_224DAC248();
          v47 = [v46 family];

          v48 = objc_allocWithZone(MEMORY[0x277CFA1E0]);
          v49 = sub_224DAEDE8();

          v50 = sub_224DAEFF8();

          [v48 initWithUniqueIdentifier:v49 location:0 canAppearInSecureEnvironment:0 page:0 family:v47 widgets:v50 activeWidget:0];

          v51 = (*(v28 + 1))(v29, v81);
          MEMORY[0x22AA5D350](v51);
          if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v77 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_224DAF038();
          }

          sub_224DAF078();

          goto LABEL_34;
        }
      }

      else
      {
        v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_224A699F0(v99);
      v28 = v87;
      v29 = v86;
    }
  }

  else
  {
    sub_224A3311C(v99, &qword_27D6F50E0, &qword_224DB41A0);
    v28 = v87;
    v29 = v86;
    v25 = v95;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_224DB2780;
  v53 = v89;
  *(v52 + 32) = v89;
  v54 = v53;
  v55 = v88;
  sub_224DA98F8();
  sub_224DA9898();
  (*(v90 + 8))(v55, v91);
  v56 = sub_224DAC248();
  v57 = [v56 family];

  v58 = objc_allocWithZone(MEMORY[0x277CFA1E0]);
  v59 = sub_224DAEDE8();

  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v60 = sub_224DAEFF8();

  [v58 initWithUniqueIdentifier:v59 location:0 canAppearInSecureEnvironment:0 page:0 family:v57 widgets:v60 activeWidget:0];

  v61 = (*(v28 + 1))(v29, v81);
  MEMORY[0x22AA5D350](v61);
  if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v76 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_224DAF038();
  }

  sub_224DAF078();
  v98 = 0;
LABEL_34:
  v62 = [objc_allocWithZone(MEMORY[0x277CFA3F8]) init];
  v63 = objc_allocWithZone(MEMORY[0x277CFA2B0]);
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v64 = v62;
  v97 = v64;
  v65 = sub_224DAEFF8();

  v66 = [v63 initWithContainerDescriptors:v65 metricsSpecification:v64];

  v67 = [objc_opt_self() allPredicate];
  [v66 setReplicationPredicate_];

  [v66 setExpirationTimeout_];
  v68 = v92;
  v69 = v80;
  (*(v92 + 104))(v80, *MEMORY[0x277CFA040], v25);
  v70 = v94[5];
  v71 = v94[6];
  __swift_project_boxed_opaque_existential_1(v94 + 2, v70);
  v99[0] = v66;
  v72 = *(v71 + 8);
  v73 = *(v72 + 56);
  v74 = v66;
  v75 = v82;
  v73(v99, v69, v82, v70, v72);

  (*(v68 + 8))(v69, v95);
  (*(v83 + 8))(v75, v84);
}

uint64_t sub_224B566EC(void **a1)
{
  v1 = *a1;
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v2 = [v1 widget];
  v3 = sub_224DAC248();
  v4 = sub_224DAF6A8();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [v1 metrics];
  v6 = sub_224DAC258();
  v7 = sub_224DAF6A8();

  return v7 & 1;
}

void sub_224B567E4(void *a1)
{
  v79 = sub_224DAA428();
  v77 = *(v79 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DA9908();
  v75 = *(v5 - 1);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x28223BE20](v5);
  v74 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC268();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  sub_224DAC218();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_224A3311C(v16, &qword_27D6F56C0, &unk_224DB3580);
    return;
  }

  (*(v18 + 32))(v21, v16, v17);
  v69 = v9;
  v70 = v8;
  v23 = *(v9 + 16);
  v22 = (v9 + 16);
  v23(v12, a1, v8);
  v83 = MEMORY[0x277D84F90];
  v24 = v1[5];
  v25 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v24);
  (*(v25 + 24))(v81, v21, v24, v25);
  v72 = v18;
  v73 = v17;
  v71 = v21;
  if (!v82)
  {
    a1 = v1;
    sub_224A3311C(v81, &qword_27D6F50E0, &qword_224DB41A0);
LABEL_27:
    v50 = v69;
    v28 = v78;
LABEL_28:
    (*(v50 + 8))(v12, v70);
    v80 = 0;
LABEL_29:
    v51 = [objc_allocWithZone(MEMORY[0x277CFA3F8]) init];
    v52 = objc_allocWithZone(MEMORY[0x277CFA360]);
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v53 = v51;
    v76 = v53;
    v54 = sub_224DAEFF8();

    v55 = [v52 initWithContainerDescriptors:v54 metricsSpecification:v53];

    v56 = v77;
    (*(v77 + 104))(v28, *MEMORY[0x277CFA038], v79);
    v57 = v28;
    v58 = a1[5];
    v59 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v58);
    v81[0] = v55;
    v60 = *(v59 + 8);
    v61 = *(v60 + 56);
    v62 = v55;
    v63 = v71;
    v61(v81, v57, v71, v58, v60);

    (*(v56 + 8))(v57, v79);
    (*(v72 + 8))(v63, v73);

    return;
  }

  if (!*(v82 + 16))
  {
    a1 = v1;
    sub_224A699F0(v81);
    goto LABEL_27;
  }

  v68 = v1;
  v26 = sub_224A79FA8(v82);
  sub_224A699F0(v81);
  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v78;
    if (v27)
    {
      goto LABEL_7;
    }

LABEL_32:

    a1 = v68;
    v50 = v69;
    goto LABEL_28;
  }

  v27 = sub_224DAF838();
  v28 = v78;
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_7:
  v66 = 0;
  v67 = v12;
  if (v27 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v29 = a1;
  v80 = 0;
  for (i = 0; i != v27; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x22AA5DCC0](i, v26);
    }

    else
    {
      v31 = *(v26 + 8 * i + 32);
    }

    v32 = v31;
    v33 = [v31 family];
    v34 = sub_224DAC248();
    v35 = [v34 family];

    if (v33 == v35)
    {

      v80 = v32;
    }

    else
    {
      v36 = v32;
      MEMORY[0x22AA5D350]();
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      sub_224DAF078();
    }
  }

  if (!v80)
  {
    v28 = v78;
    a1 = v68;
    v50 = v69;
    v12 = v67;
    goto LABEL_28;
  }

  v12 = v80;
  v38 = [v12 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v39 = sub_224DAF008();

  MEMORY[0x28223BE20](v40);
  v65 = v29;
  v41 = v66;
  v42 = sub_224A4ECE8(sub_224B575B0, (&v66 - 4), v39);
  a1 = v68;
  v27 = v69;
  v22 = v67;
  if (!v41)
  {
    if (!(v42 >> 62))
    {
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_23:
        v43 = v74;
        sub_224DA98F8();
        sub_224DA9898();
        (*(v75 + 8))(v43, v76);
        v44 = sub_224DAC248();
        v45 = [v44 family];

        v46 = objc_allocWithZone(MEMORY[0x277CFA1E0]);
        v47 = sub_224DAEDE8();

        v48 = sub_224DAEFF8();

        [v46 initWithUniqueIdentifier:v47 location:0 canAppearInSecureEnvironment:0 page:0 family:v45 widgets:v48 activeWidget:0];

        v49 = (*(v27 + 8))(v22, v70);
        MEMORY[0x22AA5D350](v49);
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v64 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_224DAF038();
        }

        sub_224DAF078();

        goto LABEL_36;
      }

LABEL_35:
      (*(v27 + 8))(v22, v70);

LABEL_36:
      v28 = v78;
      goto LABEL_29;
    }

LABEL_34:
    if (sub_224DAF838())
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  (*(v27 + 8))(v22, v70);
  __break(1u);
}

uint64_t sub_224B570F8(id *a1)
{
  v1 = *a1;
  v2 = [*a1 widget];
  v3 = sub_224DAC248();
  sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
  v4 = sub_224DAF6A8();

  if (v4)
  {
    v5 = [v1 metrics];
    v6 = sub_224DAC258();
    sub_224A3B79C(0, &unk_281350AD8, 0x277CFA3F0);
    v7 = sub_224DAF6A8();

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_224B57200(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_224B57260(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_224B572D0(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t sub_224B57340(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 40))(a1, v3, v4) & 1;
}

uint64_t sub_224B573B4()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4250, qword_224DB6280);
  return sub_224DAEE28();
}

unint64_t sub_224B5741C()
{
  result = qword_27D6F4248;
  if (!qword_27D6F4248)
  {
    sub_224A3B79C(255, &qword_281350958, 0x277CFA360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4248);
  }

  return result;
}

uint64_t sub_224B57484(uint64_t a1)
{
  result = sub_224B574C8(qword_281354670);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224B574C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreviewConfigurationService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224B57508(uint64_t a1)
{
  result = sub_224B574C8(&qword_281354660);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224B5754C(uint64_t a1)
{
  result = sub_224B574C8(&qword_281354658);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224B5760C()
{
  v0 = type metadata accessor for SignificantTimeChangeNotification(0);
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_224B57898(v5);
  qword_2813651C8 = v3;
  return result;
}

uint64_t sub_224B57664()
{
  v1 = v0;
  sub_224DAF938();

  sub_224DA9878();
  sub_224B59870(&qword_27D6F32B8, MEMORY[0x277CC9578]);
  v2 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v2);

  MEMORY[0x22AA5D210](0x6D6574737973203BLL, 0xEA0000000000203ALL);
  v3 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  v4 = *(v3 + 20);
  sub_224DAC378();
  sub_224B59870(&unk_281350DD0, MEMORY[0x277CF9A10]);
  v5 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v5);

  MEMORY[0x22AA5D210](0xD00000000000001ALL, 0x8000000224DC6E60);
  v8 = *(v1 + *(v3 + 24));
  v6 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v6);

  return 0x203A646C726F77;
}

uint64_t sub_224B57820()
{
  v1 = 0x76617254656D6974;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7A656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7665446B636F6C63;
  }
}

uint64_t sub_224B57898(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB7C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + 56) = sub_224DAB358();
  v12 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v2 + v12) = v13;
  *(v2 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_pendingNotificationReason) = 3;
  *v14 = 0;
  *(v2 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_started) = 0;
  *(v13 + 16) = v14;
  v15 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_significantTimeChangeSubscription;
  *(v2 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_significantTimeChangeSubscription) = -1;
  sub_224B598B8(a1, &v36);
  if (v37)
  {
    sub_224A36F98(&v36, &aBlock);
  }

  else
  {
    v16 = type metadata accessor for SignificantTimeChangeStore(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_224B58CA4();
    v33 = v16;
    v34 = &off_28382B2C8;
    *&aBlock = v19;
    if (v37)
    {
      sub_224B59928(&v36);
    }
  }

  sub_224A36F98(&aBlock, v2 + 16);
  swift_beginAccess();
  v20 = *__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v21 = OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes;
  swift_beginAccess();
  sub_224B5950C(v20 + v21, v2 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_previousTimes);
  sub_224AC319C();
  (*(v5 + 104))(v8, *MEMORY[0x277D851C8], v4);
  v22 = sub_224DAF428();
  (*(v5 + 8))(v8, v4);
  v23 = swift_allocObject();
  swift_weakInit();
  v34 = sub_224B59990;
  v35 = v23;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v32 = sub_224AC3A24;
  v33 = &block_descriptor_11;
  v24 = _Block_copy(&aBlock);

  swift_beginAccess();
  v25 = notify_register_dispatch("SignificantTimeChangeNotification", (v2 + v15), v22, v24);
  swift_endAccess();
  _Block_release(v24);

  if (v25)
  {
    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v26 = sub_224DAB258();
    __swift_project_value_buffer(v26, qword_281364DF0);
    v27 = sub_224DAB228();
    v28 = sub_224DAF288();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67240192;
      *(v29 + 4) = v25;
      _os_log_impl(&dword_224A2F000, v27, v28, "Unable to register for significant time change notifications: %{public}u", v29, 8u);
      MEMORY[0x22AA5EED0](v29, -1, -1);
    }
  }

  sub_224B59928(a1);
  return v2;
}

uint64_t sub_224B57CAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224B57D08(1);
  }

  return result;
}

uint64_t sub_224B57D08(int a1)
{
  v3 = *v1;
  v4 = *(v1 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  sub_224B57ED4(v1, a1);
  os_unfair_lock_unlock(*(v4 + 16));

  return sub_224B58274();
}

uint64_t sub_224B57DD4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock;
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  *(v0 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_started) = 1;
  os_unfair_lock_unlock(*(v3 + 16));

  v5 = *(v0 + v2);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_224B57ED4(v0, 1);
  os_unfair_lock_unlock(*(v5 + 16));

  return sub_224B58274();
}

uint64_t sub_224B57ED4(uint64_t a1, int a2)
{
  v32 = a2;
  v37 = sub_224DA9878();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_224DA9A08();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v36 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v31[-v19];
  sub_224DA9868();
  v21 = &v20[*(v12 + 28)];
  sub_224DAC338();
  sub_224DA99F8();
  sub_224DA9868();
  v22 = sub_224DA99C8();
  v33 = *(v3 + 8);
  v34 = v3 + 8;
  v33(v6, v37);
  (*(v7 + 8))(v10, v35);
  *&v20[*(v12 + 32)] = v22;
  v23 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_previousTimes;
  swift_beginAccess();
  sub_224B5950C(a1 + v23, v18);
  if (*&v18[*(v12 + 32)] != v22)
  {
    v25 = 2;
    goto LABEL_5;
  }

  sub_224DA9768();
  v24 = sub_224DA9788();
  v33(v6, v37);
  if (v24)
  {
    v25 = 1;
LABEL_5:
    sub_224B5941C(v18);
LABEL_6:
    *(a1 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_pendingNotificationReason) = v25;
    goto LABEL_7;
  }

  if ((v32 & 1) == 0)
  {
    sub_224B5941C(v18);
    goto LABEL_7;
  }

  v30 = sub_224B59570(v18, v20);
  sub_224B5941C(v18);
  if (v30)
  {
    v25 = 0;
    goto LABEL_6;
  }

LABEL_7:
  swift_beginAccess();
  sub_224B593B8(v20, a1 + v23);
  swift_endAccess();
  v26 = v36;
  sub_224B5950C(v20, v36);
  swift_beginAccess();
  v27 = *(a1 + 40);
  v28 = *(a1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(a1 + 16, v27);
  (*(v28 + 16))(v26, v27, v28);
  swift_endAccess();
  return sub_224B5941C(v20);
}

uint64_t sub_224B58274()
{
  v5 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_224B58360(v0, &v5);
  os_unfair_lock_unlock(*(v1 + 16));

  if (v5)
  {
    v4 = *(v0 + 56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
    sub_224B594A8();
    sub_224DAB398();
  }

  return result;
}

void sub_224B58360(uint64_t a1, _BYTE *a2)
{
  v3 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_pendingNotificationReason;
  v4 = *(a1 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_pendingNotificationReason);
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_started) != 1)
  {
    if (v4 == 3)
    {
      if (qword_281351480 != -1)
      {
        swift_once();
      }

      v10 = sub_224DAB258();
      __swift_project_value_buffer(v10, qword_281364DF0);
      v6 = sub_224DAB228();
      v7 = sub_224DAF2A8();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_37;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "SignificantTimeChangeNotification: ignoring; no pending notification and not started";
LABEL_12:
      _os_log_impl(&dword_224A2F000, v6, v7, v9, v8, 2u);
LABEL_36:
      MEMORY[0x22AA5EED0](v8, -1, -1);
      goto LABEL_37;
    }

    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v19 = sub_224DAB258();
    __swift_project_value_buffer(v19, qword_281364DF0);

    v6 = sub_224DAB228();
    v20 = sub_224DAF2A8();
    if (!os_log_type_enabled(v6, v20))
    {

LABEL_37:

      return;
    }

    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v8 = 136446210;
    v22 = *(a1 + v3);

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_39;
      }

      v23 = 0x656E6F7A656D6974;
      v24 = 0xEE0065676E616843;
    }

    else if (v22)
    {
      v23 = 0x76617254656D6974;
      v24 = 0xEA00000000006C65;
    }

    else
    {
      v23 = 0x7665446B636F6C63;
      v24 = 0xEE006E6F69746169;
    }

    v26 = sub_224A33F74(v23, v24, &v28);

    *(v8 + 4) = v26;
    _os_log_impl(&dword_224A2F000, v6, v20, "SignificantTimeChangeNotification: pending (%{public}s); not started", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x22AA5EED0](v21, -1, -1);
    goto LABEL_36;
  }

  if (v4 == 3)
  {
    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281364DF0);
    v6 = sub_224DAB228();
    v7 = sub_224DAF2A8();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_37;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "SignificantTimeChangeNotification: ignoring; no pending notification";
    goto LABEL_12;
  }

  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281364DF0);

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();
  if (!os_log_type_enabled(v12, v13))
  {

LABEL_33:

    *a2 = 1;
    *(a1 + v3) = 3;
    return;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v28 = v15;
  *v14 = 136446210;
  v16 = *(a1 + v3);

  if (v16 <= 1)
  {
    if (v16)
    {
      v17 = 0x76617254656D6974;
      v18 = 0xEA00000000006C65;
    }

    else
    {
      v17 = 0x7665446B636F6C63;
      v18 = 0xEE006E6F69746169;
    }

    goto LABEL_32;
  }

  if (v16 == 2)
  {
    v17 = 0x656E6F7A656D6974;
    v18 = 0xEE0065676E616843;
LABEL_32:
    v25 = sub_224A33F74(v17, v18, &v28);

    *(v14 + 4) = v25;
    _os_log_impl(&dword_224A2F000, v12, v13, "SignificantTimeChangeNotification: notifying (%{public}s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x22AA5EED0](v15, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    goto LABEL_33;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_224B58850()
{
  v1 = OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_significantTimeChangeSubscription;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[7];

  sub_224B5941C(v0 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_previousTimes);
  v4 = *(v0 + OBJC_IVAR____TtC10ChronoCore33SignificantTimeChangeNotification_lock);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_224B5892C()
{
  result = type metadata accessor for SignificantTimeChangeNotification.Times(319);
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

void sub_224B58A18()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x646C726F77;
  *(inited + 16) = xmmword_224DB30F0;
  *(inited + 40) = 0xE500000000000000;
  v7 = v0 + OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes;
  swift_beginAccess();
  (*(v2 + 16))(v5, v7, v1);
  sub_224DA97D8();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v10 = MEMORY[0x277D839F8];
  *(inited + 48) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x8000000224DC6E40;
  v11 = *(v7 + *(type metadata accessor for SignificantTimeChangeNotification.Times(0) + 24));
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = v11;
  sub_224DA0AC0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58E0, &unk_224DB6450);
  swift_arrayDestroy();
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_224DAECC8();

  v14 = sub_224DAEDE8();
  [v12 setObject:v13 forKey:v14];
}

void sub_224B58CA4()
{
  v0 = sub_224DAC378();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x28223BE20](v0);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_224DA9878();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DA9A08();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = sub_224DAEDE8();
  v18 = [v16 dictionaryForKey_];

  if (!v18)
  {
    sub_224DA9868();
    v28 = &v15[*(v12 + 20)];
    sub_224DAC338();
    sub_224DA99F8();
    sub_224DA9868();
    v29 = sub_224DA99C8();
    (*(v4 + 8))(v7, v3);
    (*(v30 + 8))(v11, v8);
    *&v15[*(v12 + 24)] = v29;
    sub_224B59998(v15, v34 + OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes);
    return;
  }

  v19 = v34;
  v20 = sub_224DAECE8();

  if (!*(v20 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = sub_224A3A40C(0x646C726F77, 0xE500000000000000);
  if ((v22 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_224A33E0C(*(v20 + 56) + 32 * v21, v36);
  sub_224A739A4(v36, v37);
  swift_dynamicCast();
  sub_224DA97C8();
  v23 = v33;
  sub_224DAC338();
  if (*(v20 + 16))
  {
    v24 = sub_224A3A40C(0xD000000000000016, 0x8000000224DC6E40);
    if (v25)
    {
      sub_224A33E0C(*(v20 + 56) + 32 * v24, v36);

      sub_224A739A4(v36, v37);
      swift_dynamicCast();
      v26 = v35;
      v27 = v19 + OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes;
      (*(v4 + 32))(v19 + OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes, v7, v3);
      (*(v31 + 32))(v27 + *(v12 + 20), v23, v32);
      *(v27 + *(v12 + 24)) = v26;
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_224B59110()
{
  sub_224B5941C(v0 + OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224B5919C()
{
  result = type metadata accessor for SignificantTimeChangeNotification.Times(319);
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

uint64_t sub_224B59264()
{
  result = sub_224DA9878();
  if (v1 <= 0x3F)
  {
    result = sub_224DAC378();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_224B592F4()
{
  result = qword_27D6F4258;
  if (!qword_27D6F4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4258);
  }

  return result;
}

uint64_t sub_224B59348(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_CD8B3F3014DD5CE7C63C09EF6D23F37326SignificantTimeChangeStore_lastKnownTimes;
  swift_beginAccess();
  sub_224B593B8(a1, v3 + v4);
  swift_endAccess();
  sub_224B58A18();
  return sub_224B5941C(a1);
}

uint64_t sub_224B593B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B5941C(uint64_t a1)
{
  v2 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B59478@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_224B594A8()
{
  result = qword_281350EF0;
  if (!qword_281350EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4A10, &unk_224DB4000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350EF0);
  }

  return result;
}

uint64_t sub_224B5950C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B59570(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC378();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v28 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v28 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v28 - v16;
  sub_224DA9838();
  v19 = v18;
  result = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  v21 = v19 * 1000000000.0;
  if (COERCE__INT64(fabs(v19 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = a1 + *(result + 20);
  sub_224DAC348();
  sub_224DAC348();
  sub_224DAC348();
  sub_224B59870(&qword_281350DF0, MEMORY[0x277CF9A10]);
  if (sub_224DAEDB8())
  {
    v28[1] = a2;
    v24 = v5[4];
    v24(v9, v15, v4);
    v24(v15, v12, v4);
    v24(v12, v9, v4);
  }

  v25 = *(v22 + 20);
  if (sub_224DAC318())
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_224DAEDB8();
  }

  v27 = v5[1];
  v27(v12, v4);
  v27(v15, v4);
  v27(v17, v4);
  return v26 & 1;
}

uint64_t sub_224B59870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224B598B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4260, &qword_224DB6460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B59928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4260, &qword_224DB6460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B59998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantTimeChangeNotification.Times(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_224B599FC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2, 0);
    v33 = v34;
    v3 = v1 + 64;
    v4 = -1 << *(v1 + 32);
    v5 = sub_224DAF798();
    v6 = 0;
    v7 = *(v1 + 36);
    v28 = v1 + 72;
    v29 = v2;
    v30 = v7;
    v31 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v32 = v6;
      v10 = *(v1 + 56);
      v11 = (*(v1 + 48) + 16 * v5);
      v12 = v1;
      v14 = *v11;
      v13 = v11[1];
      v15 = *(v10 + 8 * v5);

      v16 = v15;
      MEMORY[0x22AA5D210](v14, v13);
      MEMORY[0x22AA5D210](58, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      sub_224DAFA48();

      v17 = v33;
      v19 = *(v33 + 16);
      v18 = *(v33 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_224A3DFD8((v18 > 1), v19 + 1, 1);
        v17 = v33;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0xE000000000000000;
      v8 = 1 << *(v12 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v1 = v12;
      v3 = v31;
      v21 = *(v31 + 8 * v9);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v33 = v17;
      v7 = v30;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v8 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        while (v24 < (v8 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_224A3E204(v5, v30, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_224A3E204(v5, v30, 0);
      }

LABEL_4:
      v6 = v32 + 1;
      v5 = v8;
      if (v32 + 1 == v29)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_224B59CCC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2, 0);
    v28 = v33;
    v3 = v1 + 64;
    v4 = -1 << *(v1 + 32);
    v5 = sub_224DAF798();
    v6 = 0;
    v29 = *(v1 + 36);
    v24 = v1 + 72;
    v25 = v2;
    v26 = v1 + 64;
    v27 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v29 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v9 = (*(v1 + 48) + 16 * v5);
      v10 = *(*(v1 + 56) + 8 * v5);
      v31 = *v9;
      v32 = v9[1];
      swift_bridgeObjectRetain_n();
      v11 = v10;
      MEMORY[0x22AA5D210](58, 0xE100000000000000);
      swift_getErrorValue();
      v12 = sub_224D1680C(v30);
      MEMORY[0x22AA5D210](v12);

      v13 = v28;
      v15 = *(v28 + 16);
      v14 = *(v28 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_224A3DFD8((v14 > 1), v15 + 1, 1);
        v13 = v28;
      }

      *(v13 + 16) = v15 + 1;
      v16 = v13 + 16 * v15;
      *(v16 + 32) = v31;
      *(v16 + 40) = v32;
      v1 = v27;
      v7 = 1 << *(v27 + 32);
      if (v5 >= v7)
      {
        goto LABEL_24;
      }

      v3 = v26;
      v17 = *(v26 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v28 = v13;
      if (v29 != *(v27 + 36))
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_224A3E204(v5, v29, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_224A3E204(v5, v29, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_224B59F80()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_224B59FEC()
{
  v0 = sub_224DAD448();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DADC48();
  (*(v1 + 104))(v4, *MEMORY[0x277CF9CC8], v0);
  v6 = sub_224CD6C74(v4, v5);

  (*(v1 + 8))(v4, v0);
  return v6 & 1;
}

uint64_t sub_224B5A0FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DADC38();
  *a1 = result;
  return result;
}

uint64_t sub_224B5A128()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_2813513D8 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_25;
  }

  while (1)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_3:
    v9 = sub_224DAB258();
    __swift_project_value_buffer(v9, qword_281364CD0);

    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v37[0] = v13;
      *v12 = 136446210;
      sub_224DACF58();
      sub_224DAF538();
      sub_224A80F00(&unk_2813509A0, MEMORY[0x277CFA140]);
      v14 = sub_224DAF1C8();
      v16 = v15;

      v17 = sub_224A33F74(v14, v16, v37);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_224A2F000, v10, v11, "Got updated descriptor collection with identities %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    v18 = sub_224DACF58();
    v19 = v18;
    if ((v18 & 0xC000000000000001) != 0)
    {
      sub_224DAF7E8();
      sub_224DAF538();
      sub_224A80F00(&unk_2813509A0, MEMORY[0x277CFA140]);
      sub_224DAF1F8();
      v19 = v37[0];
      v20 = v37[1];
      v21 = v37[2];
      v22 = v37[3];
      v23 = v37[4];
    }

    else
    {
      v22 = 0;
      v24 = -1 << *(v18 + 32);
      v20 = v18 + 56;
      v21 = ~v24;
      v25 = -v24;
      v26 = v25 < 64 ? ~(-1 << v25) : -1;
      v23 = v26 & *(v18 + 56);
    }

    if (v19 < 0)
    {
      break;
    }

LABEL_12:
    v27 = v22;
    v28 = v23;
    v29 = v22;
    if (v23)
    {
LABEL_16:
      v30 = (v28 - 1) & v28;
      v31 = *(*(v19 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
      if (v31)
      {
        goto LABEL_20;
      }

      return sub_224A3B7E4();
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= ((v21 + 64) >> 6))
      {
        return sub_224A3B7E4();
      }

      v28 = *(v20 + 8 * v29);
      ++v27;
      if (v28)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v32 = sub_224DAF878();
    if (!v32)
    {
      break;
    }

    v35[1] = v32;
    sub_224DAF538();
    swift_dynamicCast();
    v31 = v36;
    v29 = v22;
    v30 = v23;
    if (!v36)
    {
      break;
    }

LABEL_20:
    v33 = v31;
    sub_224B6627C(v33, v1, v33);

    v22 = v29;
    v23 = v30;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

  return sub_224A3B7E4();
}

uint64_t *sub_224B5A58C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v1 = v0[22];
  swift_unknownObjectRelease();
  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheUrl, &unk_27D6F4680, &unk_224DB4610);
  v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_finishLaunchingToken);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_keybagStateProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheManagerProvider));
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_pendingReloadTasks);

  v4 = *(v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_reloadDates);

  v5 = *(v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_subscriptions);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_powerlogReporter));
  v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__widgetRelevanceEventPublisher);

  return v0;
}

uint64_t sub_224B5A67C()
{
  sub_224B5A58C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetRelevanceService()
{
  result = qword_2813570A8;
  if (!qword_2813570A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224B5A728()
{
  sub_224B5A81C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_224B5A81C()
{
  if (!qword_281351A68)
  {
    sub_224DA9688();
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_281351A68);
    }
  }
}

uint64_t sub_224B5A874()
{
  v1 = v0;
  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364CD0);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_224A2F000, v3, v4, "start", v5, 2u);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_224B67CEC;
  *(v7 + 24) = v1;
  v10[4] = sub_224A8A838;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_224A9B6F8;
  v10[3] = &block_descriptor_129;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_224B5AA68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5300, &qword_224DB6600);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = &unk_281357000;
  if (!a1[22])
  {
    v16 = *(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_keybagStateProvider + 32);
    v17 = *(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_keybagStateProvider + 24);
    v28 = v12;
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_keybagStateProvider), v17);
    v27 = sub_224DAA168();
    v30 = v27;
    v31 = *(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
    v18 = v31;
    v19 = sub_224DAF358();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    v26 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00);
    sub_224B67CF4();
    v15 = &unk_281357000;
    sub_224DAB448();
    sub_224A3311C(v9, &qword_27D6F5090, &qword_224DB5C30);

    swift_allocObject();
    swift_weakInit();
    sub_224A33088(&qword_281351210, &unk_27D6F5300, &qword_224DB6600);
    v20 = sub_224DAB488();

    (*(v28 + 8))(v14, v10);
    v21 = *(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_finishLaunchingToken);
    *(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_finishLaunchingToken) = v20;
  }

  v22 = a1[16];
  __swift_project_boxed_opaque_existential_1(a1 + 12, a1[15]);
  v30 = sub_224DAC698();
  v31 = *(a1 + v15[23]);
  v23 = v31;
  v24 = sub_224DAF358();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v9, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020);
  sub_224DAB488();

  (*(v29 + 8))(v5, v2);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  if (a1[22])
  {
    sub_224B5B340();
  }
}

uint64_t sub_224B5B028(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22[-1] - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (v6)
    {
      if (qword_2813513D8 != -1)
      {
        swift_once();
      }

      v9 = sub_224DAB258();
      __swift_project_value_buffer(v9, qword_281364CD0);
      v10 = sub_224DAB228();
      v11 = sub_224DAF2A8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_224A2F000, v10, v11, "First unlock event received with relevanceCacheManager being nil.  Reloading any default intents if necessary...", v12, 2u);
        MEMORY[0x22AA5EED0](v12, -1, -1);
      }

      sub_224DAD348();
      sub_224A3317C((v8 + 17), &v23);
      v13 = v8[10];
      v14 = v8[11];
      v15 = __swift_project_boxed_opaque_existential_1(v8 + 7, v13);
      v16 = *(v14 + 40);
      v22[3] = v13;
      v22[4] = v16;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
      sub_224A3796C(v8 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheUrl, v5, &unk_27D6F4680, &unk_224DB4610);
      v18 = sub_224DAD338();
      v19 = sub_224A80F00(&qword_27D6F4288, MEMORY[0x277CF9C98]);
      v20 = v8[22];
      v8[22] = v18;
      v8[23] = v19;
      swift_unknownObjectRelease();
      sub_224B5B340();
    }
  }

  return result;
}

void sub_224B5B340()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = v0[22];
  if (!v6)
  {
    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v19 = sub_224DAB258();
    __swift_project_value_buffer(v19, qword_281364CD0);
    v30 = sub_224DAB228();
    v20 = sub_224DAF2A8();
    if (os_log_type_enabled(v30, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_224A2F000, v30, v20, "func _queue_reap - nil relevanceCacheManager returning early", v21, 2u);
      MEMORY[0x22AA5EED0](v21, -1, -1);
    }

    v22 = v30;

    return;
  }

  v30 = v0[23];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v8 = *(v7 + 24);
  swift_unknownObjectRetain();
  v9 = sub_224DADA38();
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_23:
    v23 = sub_224DAF128();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v25 = v30;
    v24[4] = v6;
    v24[5] = v25;
    v24[6] = v10;
    v24[7] = v1;

    sub_224D8E744(0, 0, v5, &unk_224DB6610, v24);

    return;
  }

  v11 = sub_224DACF18();

  if (v11 >> 62)
  {
    v12 = sub_224DAF838();
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_5:
  v27 = v6;
  v28 = v5;
  v29 = v0;
  v31 = v10;
  sub_224DAF9E8();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x22AA5DCC0](v13, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 extensionIdentity];
      v18 = [v16 kind];
      if (!v18)
      {
        sub_224DAEE18();
        v18 = sub_224DAEDE8();
      }

      ++v13;
      [objc_allocWithZone(MEMORY[0x277CFA418]) initWithExtensionIdentity:v17 kind:v18];

      sub_224DAF9B8();
      v14 = *(v31 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
    }

    while (v12 != v13);

    v10 = v31;
    v5 = v28;
    v1 = v29;
    v6 = v27;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_224B5B704(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

void sub_224B5B778(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  BSDispatchQueueAssert();
  v9 = *(v1 + 176);
  if (v9)
  {
    v10 = *(v1 + 184);
    v11 = qword_2813513D8;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281364CD0);

    v13 = sub_224DAB228();
    v14 = sub_224DAF2A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      *(v15 + 4) = *(a1 + 16);

      _os_log_impl(&dword_224A2F000, v13, v14, "Purging %{public}ld widget relevances", v15, 0xCu);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    else
    {
    }

    v20 = sub_224DAF128();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a1;
    v21[5] = v9;
    v21[6] = v10;
    v21[7] = v2;

    sub_224D8E744(0, 0, v7, &unk_224DB6620, v21);
  }

  else
  {
    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_281364CD0);
    v23 = sub_224DAB228();
    v17 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_224A2F000, v23, v17, "func _queue_handleExtensionsRemoved with nil relevanceCacheManager returning early", v18, 2u);
      MEMORY[0x22AA5EED0](v18, -1, -1);
    }

    v19 = v23;
  }
}

void sub_224B5BA90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = v46 - v9;
  v10 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v11 = *(v10 + 24);
  if (!sub_224DADA38())
  {
    return;
  }

  v12 = sub_224DACF58();

  v46[1] = v12;
  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224A80F00(&unk_2813509A0, MEMORY[0x277CFA140]);
    sub_224DAF1F8();
    v12 = v63;
    v13 = v64;
    v14 = v65;
    v15 = v66;
    v16 = v67;
  }

  else
  {
    v17 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v12 + 56);

    v15 = 0;
  }

  v46[0] = v14;
  v20 = (v14 + 64) >> 6;
  v52 = (v4 + 16);
  v53 = (v4 + 8);
  v21 = MEMORY[0x277CFA138];
  v47 = a1;
  v48 = v8;
  v51 = v13;
  for (i = v12; ; v12 = i)
  {
    v54 = v15;
    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

    v25 = sub_224DAF878();
    if (!v25)
    {
      goto LABEL_32;
    }

    v59 = v25;
    sub_224DAF538();
    swift_dynamicCast();
    v24 = v61;
    v56 = v16;
    if (!v61)
    {
      goto LABEL_32;
    }

LABEL_20:
    v55 = v16;
    v26 = *v21;
    swift_beginAccess();
    v27 = v24;
    v28 = *v52;
    v58 = v27;
    v28(v57, &v27[v26], v3);
    v29 = *v21;
    swift_beginAccess();
    v28(v8, (a1 + v29), v3);
    sub_224A33088(&qword_2813518E8, &unk_27D6F3920, &qword_224DB35B0);
    sub_224DAEFA8();
    sub_224DAEFA8();
    if (v61 == v59 && v62 == v60)
    {
      v30 = *v53;
      (*v53)(v8, v3);
      v30(v57, v3);
    }

    else
    {
      v49 = sub_224DAFD88();
      v31 = *v53;
      (*v53)(v8, v3);
      v31(v57, v3);

      if ((v49 & 1) == 0)
      {

        v16 = v56;
        goto LABEL_10;
      }
    }

    v32 = MEMORY[0x277CFA128];
    v33 = &v58[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v35 = *v33;
    v34 = *(v33 + 1);
    v36 = (a1 + *v32);
    swift_beginAccess();
    v37 = *v36;
    v38 = v36[1];

    v39 = sub_224DAA058();
    v41 = v40;

    v42 = sub_224DAA058();
    v44 = v43;

    if (!v41)
    {
      if (!v44)
      {
        goto LABEL_32;
      }

LABEL_31:

      v16 = v56;
      a1 = v47;
      v8 = v48;
      goto LABEL_10;
    }

    if (!v44)
    {
      goto LABEL_31;
    }

    if (v39 == v42 && v41 == v44)
    {

LABEL_32:
      sub_224A3B7E4();

      return;
    }

    v45 = sub_224DAFD88();

    v8 = v48;
    if (v45)
    {
      goto LABEL_32;
    }

    v16 = v56;
    a1 = v47;
LABEL_10:
    v13 = v51;
  }

  v22 = v15;
  v23 = v16;
  if (v16)
  {
LABEL_16:
    v56 = (v23 - 1) & v23;
    v24 = *(*(v12 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v24)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      goto LABEL_32;
    }

    v23 = *(v13 + 8 * v15);
    ++v22;
    if (v23)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_224B5C188(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v124 = a2;
  v125 = a4;
  v10 = sub_224DAB798();
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v10);
  v113 = (&v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_224DAB878();
  v116 = *(v13 - 8);
  v117 = v13;
  v14 = *(v116 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v111 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v112 = &v108 - v17;
  v119 = sub_224DA9878();
  v121 = *(v119 - 8);
  v18 = *(v121 + 64);
  v19 = MEMORY[0x28223BE20](v119);
  v118 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v108 - v21;
  v22 = sub_224DAB7B8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v24 = sub_224DAB8C8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (&v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v6 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v28 = v29;
  (*(v25 + 104))(v28, *MEMORY[0x277D85200], v24);
  v122 = v29;
  v30 = sub_224DAB8F8();
  (*(v25 + 8))(v28, v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (*(v6 + 176))
  {
    v31 = objc_allocWithZone(MEMORY[0x277CFA418]);
    v30 = v124;
    v32 = sub_224DAEDE8();
    v33 = [v31 initWithExtensionIdentity:a1 kind:v32];

    v34 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_pendingReloadTasks;
    swift_beginAccess();
    v35 = *(v6 + v34);
    v123 = v33;
    v36 = sub_224D24244(v33, v35);
    if (v36)
    {
      v28 = v36;
      swift_endAccess();
      if (qword_2813513D8 == -1)
      {
LABEL_5:
        v37 = sub_224DAB258();
        __swift_project_value_buffer(v37, qword_281364CD0);
        v38 = a1;

        v39 = sub_224DAB228();
        v40 = sub_224DAF2A8();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v43 = a3;
          v44 = swift_slowAlloc();
          aBlock[0] = v44;
          *v41 = 138543618;
          *(v41 + 4) = v38;
          *v42 = v38;
          *(v41 + 12) = 2082;
          v45 = v38;
          *(v41 + 14) = sub_224A33F74(v30, v43, aBlock);
          _os_log_impl(&dword_224A2F000, v39, v40, "[%{public}@-%{public}s] debouncing _queue_reloadWidgetRelevances due to frequent calling", v41, 0x16u);
          sub_224A3311C(v42, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v42, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x22AA5EED0](v44, -1, -1);
          MEMORY[0x22AA5EED0](v41, -1, -1);
        }

        v46 = v123;
        v47 = swift_allocObject();
        *(v47 + 16) = v125;
        *(v47 + 24) = a5;
        swift_beginAccess();
        v48 = v28[6];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28[6] = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = sub_224AD95EC(0, v48[2] + 1, 1, v48);
          v28[6] = v48;
        }

        v51 = v48[2];
        v50 = v48[3];
        if (v51 >= v50 >> 1)
        {
          v48 = sub_224AD95EC((v50 > 1), v51 + 1, 1, v48);
        }

        v48[2] = v51 + 1;
        v52 = &v48[2 * v51];
        v52[4] = sub_224B680D4;
        v52[5] = v47;
        v28[6] = v48;
        swift_endAccess();

        v28[5] = 0;

        return;
      }

LABEL_39:
      swift_once();
      goto LABEL_5;
    }

    swift_endAccess();
    type metadata accessor for WidgetRelevanceRefreshTask();
    v59 = swift_allocObject();
    v59[2] = a1;
    v59[3] = v30;
    v59[4] = a3;
    v59[5] = 0;
    v110 = v59;
    v59[6] = MEMORY[0x277D84F90];
    v60 = (v59 + 6);
    v61 = swift_allocObject();
    *(v61 + 16) = v125;
    *(v61 + 24) = a5;
    swift_beginAccess();
    v62 = *v60;
    v63 = a1;
    v125 = a3;

    v64 = swift_isUniquelyReferenced_nonNull_native();
    *v60 = v62;
    v109 = v63;
    if ((v64 & 1) == 0)
    {
      v62 = sub_224AD95EC(0, v62[2] + 1, 1, v62);
      *v60 = v62;
    }

    v65 = v123;
    v67 = v62[2];
    v66 = v62[3];
    if (v67 >= v66 >> 1)
    {
      v62 = sub_224AD95EC((v66 > 1), v67 + 1, 1, v62);
    }

    v62[2] = v67 + 1;
    v68 = &v62[2 * v67];
    v68[4] = sub_224B675D8;
    v68[5] = v61;
    *v60 = v62;
    swift_endAccess();
    swift_beginAccess();
    v69 = *(v6 + v34);
    if ((v69 & 0xC000000000000001) != 0)
    {
      if (v69 < 0)
      {
        v70 = *(v6 + v34);
      }

      else
      {
        v70 = v69 & 0xFFFFFFFFFFFFFF8;
      }

      v71 = v65;
      v72 = v110;

      v73 = sub_224DAF838();
      if (__OFADD__(v73, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      *(v6 + v34) = sub_224D2CB80(v70, v73 + 1);
    }

    else
    {
      v74 = *(v6 + v34);
      v75 = v65;
      v72 = v110;
    }

    v76 = swift_isUniquelyReferenced_nonNull_native();
    v127 = *(v6 + v34);
    sub_224B208F8(v72, v65, v76);
    *(v6 + v34) = v127;

    swift_endAccess();
    v77 = swift_allocObject();
    v77[2] = v6;
    v77[3] = v65;
    v77[4] = v72;
    aBlock[4] = sub_224B67604;
    aBlock[5] = v77;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_45;
    _Block_copy(aBlock);
    v127 = MEMORY[0x277D84F90];
    sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198]);
    v67 = v65;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    v78 = sub_224DAB8B8();
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    sub_224DAB8A8();

    v81 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_reloadDates;
    swift_beginAccess();
    v82 = *(v6 + v81);
    if (*(v82 + 16) && (v83 = sub_224B0B854(v67), (v84 & 1) != 0))
    {
      v86 = v120;
      v85 = v121;
      v34 = v119;
      (*(v121 + 16))(v120, *(v82 + 56) + *(v121 + 72) * v83, v119);
      swift_endAccess();
      v87 = v118;
      sub_224DA9808();
      sub_224DA9758();
      v89 = v88;
      v90 = *(v85 + 8);
      v70 = v85 + 8;
      v65 = v90;
      v90(v87, v34);
      if (v89 < 4.0)
      {
        if (qword_2813513D8 == -1)
        {
LABEL_32:
          v121 = v70;
          v91 = sub_224DAB258();
          __swift_project_value_buffer(v91, qword_281364CD0);
          v92 = v109;
          v93 = v125;

          v94 = sub_224DAB228();
          v95 = sub_224DAF2A8();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            aBlock[0] = v98;
            *v96 = 138543618;
            *(v96 + 4) = v92;
            *v97 = v92;
            *(v96 + 12) = 2082;
            v99 = v92;
            *(v96 + 14) = sub_224A33F74(v124, v93, aBlock);
            _os_log_impl(&dword_224A2F000, v94, v95, "[%{public}@-%{public}s] delaying _queue_reloadWidgetRelevances due to frequent calling", v96, 0x16u);
            sub_224A3311C(v97, &unk_27D6F69F0, &unk_224DB3900);
            v100 = v97;
            v34 = v119;
            MEMORY[0x22AA5EED0](v100, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v98);
            MEMORY[0x22AA5EED0](v98, -1, -1);
            MEMORY[0x22AA5EED0](v96, -1, -1);
          }

          v101 = v111;
          sub_224DAB858();
          v102 = v113;
          *v113 = 4;
          v104 = v114;
          v103 = v115;
          (*(v114 + 104))(v102, *MEMORY[0x277D85188], v115);
          v105 = v112;
          MEMORY[0x22AA59C40](v101, v102);
          (*(v104 + 8))(v102, v103);
          v106 = v117;
          v107 = *(v116 + 8);
          v107(v101, v117);
          sub_224DAF328();

          v107(v105, v106);
          (v65)(v120, v34);
          return;
        }

LABEL_41:
        swift_once();
        goto LABEL_32;
      }

      (v65)(v86, v34);
    }

    else
    {
      swift_endAccess();
    }

    sub_224DAF408();

    return;
  }

  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v53 = sub_224DAB258();
  __swift_project_value_buffer(v53, qword_281364CD0);
  v54 = sub_224DAB228();
  v55 = sub_224DAF2A8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_224A2F000, v54, v55, "func _queue_reloadWidgetRelevances with nil relevanceCacheManager returning early", v56, 2u);
    MEMORY[0x22AA5EED0](v56, -1, -1);
  }

  sub_224B67480();
  v57 = swift_allocError();
  *v58 = 0;
  *(v58 + 8) = 5;
  v125();
}

uint64_t sub_224B5CF4C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_224DAB7B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_224DAB848();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v4 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_224B6786C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_96;
  v18 = _Block_copy(aBlock);

  v19 = a1;

  sub_224DAB7E8();
  v23 = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

void sub_224B5D240(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v79 = a2;
  v80 = a1;
  v6 = sub_224DAB7B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DADA98();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB8C8();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v17);
  v21 = (&v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v4 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v21 = v22;
  v23 = v18[13];
  v75 = *MEMORY[0x277D85200];
  v76 = v18 + 13;
  v74 = v23;
  v23(v21);
  v72 = v22;
  LOBYTE(v22) = sub_224DAB8F8();
  v24 = v18[1];
  v77 = v17;
  v73 = v24;
  v24(v21, v17);
  if (v22)
  {
    v64 = v10;
    v78 = a3;
    v65 = v7;
    v66 = v6;
    if (qword_2813513D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281364CD0);
  v26 = v80;
  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_224A2F000, v27, v28, "[%{public}@] batch reload requested", v29, 0xCu);
    sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v30, -1, -1);
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  sub_224B5BA90(v26);
  if (!v32)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v44 = sub_224CBC42C(0x18u, 0xD000000000000025, 0x8000000224DC72C0);
    v79();
LABEL_11:

    return;
  }

  v33 = v32;
  v34 = *(v4 + 88);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v35 = *(v34 + 24);
  if (!sub_224DADA38())
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v44 = sub_224CBC42C(0x18u, 0xD000000000000034, 0x8000000224DC72F0);
    v79();

    goto LABEL_11;
  }

  sub_224DACA18();
  v36 = v71;
  sub_224DACF08();

  (*(v70 + 8))(v16, v36);
  v37 = sub_224B5DB74(aBlock[0]);

  v38 = v33;

  v39 = sub_224DAB228();
  v40 = sub_224DAF2A8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138543618;
    *(v41 + 4) = v38;
    *v42 = v33;
    *(v41 + 12) = 2050;
    *(v41 + 14) = *(v37 + 16);
    v43 = v38;

    _os_log_impl(&dword_224A2F000, v39, v40, "[%{public}@] batch reload beginning with %{public}ld kinds", v41, 0x16u);
    sub_224A3311C(v42, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v42, -1, -1);
    MEMORY[0x22AA5EED0](v41, -1, -1);
  }

  else
  {
  }

  v45 = v77;
  v46 = v75;
  v48 = v73;
  v47 = v74;
  v49 = v72;
  *v21 = v72;
  v47(v21, v46, v45);
  v50 = v49;
  LOBYTE(v49) = sub_224DAB8F8();
  v48(v21, v45);
  if (v49)
  {
    v80 = v50;
    v51 = dispatch_group_create();
    v52 = swift_allocObject();
    v52[2] = MEMORY[0x277D84F98];
    v53 = *(v37 + 16);
    if (v53)
    {
      v54 = (v37 + 40);
      do
      {
        v55 = *(v54 - 1);
        v56 = *v54;

        dispatch_group_enter(v51);

        v57 = v51;
        sub_224B652F4(v38, v55, v56, v4, v4, v52, v55, v56, v57);

        swift_bridgeObjectRelease_n();
        v54 += 2;
        --v53;
      }

      while (v53);
    }

    v58 = swift_allocObject();
    v59 = v78;
    v58[2] = v79;
    v58[3] = v59;
    v58[4] = v4;
    v58[5] = v52;
    aBlock[4] = sub_224B67898;
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_105;
    v60 = _Block_copy(aBlock);

    v79 = v37;
    v61 = v67;
    sub_224DAB7E8();
    v81 = MEMORY[0x277D84F90];
    sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v62 = v69;
    v63 = v66;
    sub_224DAF788();
    sub_224DAF308();
    _Block_release(v60);

    (*(v65 + 8))(v62, v63);
    (*(v68 + 8))(v61, v64);
  }

  else
  {
    __break(1u);
  }
}