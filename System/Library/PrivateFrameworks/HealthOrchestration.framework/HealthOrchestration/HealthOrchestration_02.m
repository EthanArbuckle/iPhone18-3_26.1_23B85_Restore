uint64_t ExecutorIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_228807B78(0, &qword_27D851A38, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228807B24();
  sub_22887FCE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_22887FAB0();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_22887FA90();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

HealthOrchestration::ExecutorIdentifier __swiftcall ExecutorIdentifier.init(stringLiteral:)(Swift::String stringLiteral)
{
  *v1 = stringLiteral;
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  result.value = stringLiteral;
  return result;
}

uint64_t ExecutorIdentifier.hashValue.getter()
{
  sub_22887FC90();
  sub_22887F3E0();
  return sub_22887FCD0();
}

uint64_t sub_228807734(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t sub_228807764()
{
  sub_22887FC90();
  sub_22887F3E0();
  return sub_22887FCD0();
}

uint64_t sub_2288077B8()
{
  sub_22887FC90();
  sub_22887F3E0();
  return sub_22887FCD0();
}

uint64_t ExecutorIdentifier.description.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = *v0;
  }

  return v1;
}

uint64_t sub_228807854()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = *v0;
  }

  return v1;
}

uint64_t sub_2288078A8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t sub_2288078D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_22887FBF0() ^ 1) & 1;
  }
}

uint64_t sub_228807920(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_22887FBF0() ^ 1) & 1;
  }
}

uint64_t sub_228807974(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_22887FBF0();
  }
}

uint64_t _s19HealthOrchestration24ScopedExecutorIdentifierV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22887FBF0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22887FBF0();
    }
  }

  return result;
}

uint64_t _s19HealthOrchestration24ScopedExecutorIdentifierV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    v7 = 1;
    if (sub_22887FBF0())
    {
      return v7;
    }

    if (sub_22887FBF0())
    {
      return 0;
    }
  }

  if (v2 == v4 && v3 == v5)
  {
    return 0;
  }

  return sub_22887FBF0();
}

unint64_t sub_228807B24()
{
  result = qword_27D851A30;
  if (!qword_27D851A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851A30);
  }

  return result;
}

void sub_228807B78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228807B24();
    v7 = a3(a1, &type metadata for ExecutorIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_228807BDC()
{
  result = qword_2813CFDE8;
  if (!qword_2813CFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813CFDE8);
  }

  return result;
}

unint64_t sub_228807C34()
{
  result = qword_2813D0D98;
  if (!qword_2813D0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0D98);
  }

  return result;
}

unint64_t sub_228807C98()
{
  result = qword_2813D0DA8;
  if (!qword_2813D0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0DA8);
  }

  return result;
}

unint64_t sub_228807CFC()
{
  result = qword_2813D0DA0;
  if (!qword_2813D0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0DA0);
  }

  return result;
}

unint64_t sub_228807D68()
{
  result = qword_27D851A40;
  if (!qword_27D851A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851A40);
  }

  return result;
}

uint64_t sub_228807DBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_228807E50(uint64_t a1, int a2)
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

unint64_t sub_228807EBC()
{
  result = qword_27D851A48;
  if (!qword_27D851A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851A48);
  }

  return result;
}

unint64_t sub_228807F14()
{
  result = qword_27D851A50;
  if (!qword_27D851A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851A50);
  }

  return result;
}

unint64_t sub_228807F6C()
{
  result = qword_27D851A58;
  if (!qword_27D851A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851A58);
  }

  return result;
}

void *DeviceLockStateComponent.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeviceLockStateComponent.LockStateObserverShim();
  v4 = swift_allocObject();
  v5 = swift_allocObject();

  return sub_2288087D8(a1, a2, v4, v5);
}

void *DeviceLockStateComponent.__allocating_init(observer:shim:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_228809FC0(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

void *DeviceLockStateComponent.init(observer:shim:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_228808AE4(a1, a2, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v13;
}

void sub_228808204(int *a1, void *a2, uint64_t a3)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 24))(v5, v6);
  v7 = *(a3 + 24);
  v8 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_22880ABB4;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2288674A4;
  v11[3] = &block_descriptor;
  v9 = _Block_copy(v11);

  v10 = sub_22887F3C0();

  notify_register_dispatch((v10 + 32), a1, v7, v9);

  _Block_release(v9);
}

uint64_t sub_228808350()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);
    v2 = result;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v4 = DeviceLockStateComponent.currentState.getter();
    v5 = *(v1 + 8);

    v5(v4, v2, &protocol witness table for DeviceLockStateComponent, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t DeviceLockStateComponent.currentState.getter()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v1);
  if ((*(v2 + 8))(v1, v2))
  {
    sub_22880A0C4();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2288817E0;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x8000000228888350;
    *(inited + 48) = 5457241;
    *(inited + 56) = 0xE300000000000000;
    *(inited + 64) = 0x746174536B636F4CLL;
    *(inited + 72) = 0xE900000000000065;
    v4 = v0[9];
    v5 = v0[10];
    __swift_project_boxed_opaque_existential_1(v0 + 6, v4);
    v6 = (*(v5 + 16))(v4, v5);
    v7 = 0x64656B636F6CLL;
    if (v6)
    {
      v7 = 0x64656B636F6C6E75;
    }

    v8 = 0xE600000000000000;
    if (v6)
    {
      v8 = 0xE800000000000000;
    }

    *(inited + 80) = v7;
    *(inited + 88) = v8;
    v9 = sub_2287E97C0(inited);
    swift_setDeallocating();
    sub_2287E98EC(0, &qword_2813CF638);
    swift_arrayDestroy();
  }

  else
  {
    v9 = sub_2287E97C0(&unk_283BC7D40);
    sub_2287E8CD4(&unk_283BC7D60);
  }

  return v9;
}

uint64_t DeviceLockStateComponent.deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(v1 + 5);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  return v0;
}

uint64_t DeviceLockStateComponent.__deallocating_deinit()
{
  DeviceLockStateComponent.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DeviceLockStateComponent.stopObserving()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
  }

  v1[4]._os_unfair_lock_opaque = -1;

  os_unfair_lock_unlock(v1 + 5);
}

void sub_228808784()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
  }

  v1[4]._os_unfair_lock_opaque = -1;

  os_unfair_lock_unlock(v1 + 5);
}

void *sub_2288087D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = a1;
  v17 = a2;
  v6 = sub_22887F6F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22887F6E0();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22887F270();
  MEMORY[0x28223BE20](v11 - 8);
  v21[3] = type metadata accessor for DeviceLockStateComponent.LockStateObserverShim();
  v21[4] = &off_283BC8518;
  v21[0] = a3;
  sub_22880AA1C();
  v12 = swift_allocObject();
  *(v12 + 16) = 0xFFFFFFFFLL;
  a4[2] = v12;
  sub_22880AA7C();
  sub_22887F260();
  v20 = MEMORY[0x277D84F90];
  sub_22880AAC8(&qword_2813CF510, MEMORY[0x277D85230]);
  sub_2287E95F4(0, &qword_2813CF590, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22880AB10();
  sub_22887F820();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v6);
  a4[3] = sub_22887F710();
  sub_2287E766C(v21, (a4 + 6));
  v13 = v17;
  a4[4] = v16;
  a4[5] = v13;
  v14 = a4[2];
  v18 = v21;
  v19 = a4;
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v14 + 5);
  sub_22880AC68(&v14[4]);
  os_unfair_lock_unlock(v14 + 5);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return a4;
}

void *sub_228808AE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v22 = a2;
  v10 = sub_22887F6F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22887F6E0();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22887F270();
  MEMORY[0x28223BE20](v15 - 8);
  v26[3] = a5;
  v26[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  sub_22880AA1C();
  v17 = swift_allocObject();
  *(v17 + 16) = 0xFFFFFFFFLL;
  a4[2] = v17;
  sub_22880AA7C();
  sub_22887F260();
  v25 = MEMORY[0x277D84F90];
  sub_22880AAC8(&qword_2813CF510, MEMORY[0x277D85230]);
  sub_2287E95F4(0, &qword_2813CF590, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22880AB10();
  sub_22887F820();
  (*(v11 + 104))(v13, *MEMORY[0x277D85260], v10);
  a4[3] = sub_22887F710();
  sub_2287E766C(v26, (a4 + 6));
  v18 = v22;
  a4[4] = v21;
  a4[5] = v18;
  v19 = a4[2];
  v23 = v26;
  v24 = a4;
  swift_unknownObjectRetain();

  os_unfair_lock_lock(v19 + 5);
  sub_22880AB98(&v19[4]);
  os_unfair_lock_unlock(v19 + 5);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return a4;
}

unint64_t sub_228808E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22880A400();
    v3 = sub_22887FA50();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_228819D5C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228808EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2287E5F5C(0, &qword_27D851A60, MEMORY[0x277D839F8], MEMORY[0x277D84460]);
    v3 = sub_22887FA50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2287E5E2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228809030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22880A99C();
    v3 = sub_22887FA50();

    for (i = (a1 + 80); ; i += 4)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v9 = *(i - 2);
      v8 = *(i - 1);
      v17 = *i;
      *&v18 = *(i - 6);
      *(&v18 + 1) = v5;
      *&v19 = v6;
      *(&v19 + 1) = v7;
      *&v20 = v9;
      *(&v20 + 1) = v8;

      swift_unknownObjectRetain();

      result = sub_228819DA4(&v18);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 48 * result);
      v13 = v19;
      *v12 = v18;
      v12[1] = v13;
      v12[2] = v20;
      *(v3[7] + 16 * result) = v17;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228809188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22880A718();
    v3 = sub_22887FA50();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;
      *&v18 = *(i - 6);
      *(&v18 + 1) = v5;
      *&v19 = v6;
      *(&v19 + 1) = v7;
      *&v20 = v9;
      *(&v20 + 1) = v8;

      result = sub_228819DA4(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 48 * result);
      v14 = v19;
      *v13 = v18;
      v13[1] = v14;
      v13[2] = v20;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2288092DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_22880A658(0, a2, a3);
    v5 = sub_22887FA50();

    for (i = (a1 + 64); ; i += 5)
    {
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_2287E6768(v7, v8, v9, v10);
      if (v13)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v5[6] + 32 * result);
      *v14 = v7;
      v14[1] = v8;
      v14[2] = v9;
      v14[3] = v10;
      *(v5[7] + 8 * result) = v11;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228809420(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2287E5F5C(0, &unk_27D852680, MEMORY[0x277D849A8], MEMORY[0x277D84460]);
    v3 = sub_22887FA50();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2287E5E2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_228809534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_22880A2DC(0, &unk_27D8526A0, sub_22880A39C);
  v3 = sub_22887FA50();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_228819D5C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;
    swift_unknownObjectRetain();
    v8 = sub_228819D5C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_228809654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22880A2DC(0, &unk_27D852690, sub_22880A340);
    v3 = sub_22887FA50();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_228819D5C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228809744(uint64_t a1)
{
  sub_22880A878(0, &qword_27D851AD0, MEMORY[0x277CC9578]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_22880A8F0(0, &unk_27D852670, MEMORY[0x277CC9578]);
    v8 = sub_22887FA50();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_22880A808(v10, v6, &qword_27D851AD0, MEMORY[0x277CC9578], sub_22880A878);
      result = sub_228819CC0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22887F060();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_22887F0C0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2288099A4(uint64_t a1)
{
  sub_22880A878(0, &qword_27D851AB8, type metadata accessor for FileCoordinatorInputSignal.Presenter);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_22880A8F0(0, &qword_27D851AC0, type metadata accessor for FileCoordinatorInputSignal.Presenter);
    v8 = sub_22887FA50();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_22880A808(v10, v6, &qword_27D851AB8, type metadata accessor for FileCoordinatorInputSignal.Presenter, sub_22880A878);
      result = sub_228819CC0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22887F060();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228809BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x277D84F70];
    sub_2287E5F5C(0, &qword_27D851AA0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84460]);
    v4 = sub_22887FA50();
    v5 = a1 + 32;

    while (1)
    {
      sub_22880A808(v5, &v14, &qword_27D851AA8, v3 + 8, sub_2287E98EC);
      v6 = v14;
      v7 = v15;
      result = sub_2287E5E2C(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_22880A460(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 48;
      if (!--v1)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228809D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2287E5F5C(0, &qword_27D8526C0, &type metadata for RequestedWorkExecutor.RequestedWork, MEMORY[0x277D84460]);
    v3 = sub_22887FA50();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v9 = i[2];
      v10 = *(i + 24);
      v11 = i[4];
      v12 = i[5];

      result = sub_2287E5E2C(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 48 * result;
      *v16 = v8;
      *(v16 + 8) = v7;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_228809EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22880A1C8();
    v3 = sub_22887FA50();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_2287E5E2C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_228809FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return sub_228808AE4(a1, a2, v13, v14, a5, a6);
}

void sub_22880A0C4()
{
  if (!qword_2813CF200)
  {
    sub_2287E98EC(255, &qword_2813CF638);
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF200);
    }
  }
}

void sub_22880A1C8()
{
  if (!qword_2813CF340)
  {
    sub_2287E670C(255, &qword_2813CFC00);
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF340);
    }
  }
}

void sub_22880A244()
{
  if (!qword_27D851A68)
  {
    sub_2287E95F4(255, &qword_27D851A70, type metadata accessor for DebugSnapshot, MEMORY[0x277D83940]);
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_27D851A68);
    }
  }
}

void sub_22880A2DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22887FA60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22880A340()
{
  result = qword_27D851A80;
  if (!qword_27D851A80)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D851A80);
  }

  return result;
}

unint64_t sub_22880A39C()
{
  result = qword_27D851A90;
  if (!qword_27D851A90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D851A90);
  }

  return result;
}

void sub_22880A400()
{
  if (!qword_27D8526B0)
  {
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8526B0);
    }
  }
}

_OWORD *sub_22880A460(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22880A470(uint64_t a1, uint64_t a2)
{
  sub_22880A4D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22880A4D4()
{
  if (!qword_2813D04F0)
  {
    sub_2287E670C(255, qword_2813D0F88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813D04F0);
    }
  }
}

void sub_22880A550()
{
  if (!qword_2813CF550)
  {
    sub_22880A5AC();
    v0 = sub_22887F610();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF550);
    }
  }
}

unint64_t sub_22880A5AC()
{
  result = qword_2813CFB50;
  if (!qword_2813CFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813CFB50);
  }

  return result;
}

void sub_22880A600()
{
  if (!qword_2813CF540)
  {
    v0 = sub_22887F610();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF540);
    }
  }
}

void sub_22880A658(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2287F74F8();
    v4 = sub_22887FA60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22880A6C8()
{
  if (!qword_2813CF5D8)
  {
    v0 = sub_22887F550();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF5D8);
    }
  }
}

void sub_22880A718()
{
  if (!qword_2813CF360)
  {
    sub_2287E95F4(255, &qword_2813CF620, type metadata accessor for WorkCriteriaRecord, MEMORY[0x277D83940]);
    sub_22880A7B4();
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF360);
    }
  }
}

unint64_t sub_22880A7B4()
{
  result = qword_2813CFDF0;
  if (!qword_2813CFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813CFDF0);
  }

  return result;
}

uint64_t sub_22880A808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_22880A878(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_22887F060();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_22880A8F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_22887F060();
    a3(255);
    sub_22880AAC8(&qword_27D851AC8, MEMORY[0x277CC9260]);
    v5 = sub_22887FA60();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22880A99C()
{
  if (!qword_2813CF370)
  {
    sub_2287E670C(255, &qword_2813CF810);
    sub_22880A7B4();
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF370);
    }
  }
}

void sub_22880AA1C()
{
  if (!qword_2813CF430)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF430);
    }
  }
}

unint64_t sub_22880AA7C()
{
  result = qword_2813CF500;
  if (!qword_2813CF500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813CF500);
  }

  return result;
}

uint64_t sub_22880AAC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22880AB10()
{
  result = qword_2813CF580;
  if (!qword_2813CF580)
  {
    sub_2287E95F4(255, &qword_2813CF590, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813CF580);
  }

  return result;
}

void sub_22880ABBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t OrchestrationDirector.Errors.hashValue.getter()
{
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](0);
  return sub_22887FCD0();
}

uint64_t sub_22880AD04()
{
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](0);
  return sub_22887FCD0();
}

uint64_t sub_22880AD70()
{
  sub_22887FC90();
  MEMORY[0x22AAC0BD0](0);
  return sub_22887FCD0();
}

uint64_t OrchestrationDirector.__allocating_init(environment:inputSignalProviders:executorProviders:contextProvider:dispatchers:logger:debugIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  sub_2287F36D8(0, &qword_2813CF498);
  v17 = swift_allocObject();
  *(v17 + 44) = 0;
  *(v17 + 16) = MEMORY[0x277D84F90];
  *(v17 + 24) = xmmword_2288818E0;
  *(v17 + 40) = 0;
  *(v16 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState) = v17;
  *(v16 + 16) = a1;
  type metadata accessor for WorkQueue();
  swift_allocObject();

  v19 = sub_228860C6C(v18);

  *(v16 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue) = v19;
  *(v16 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_inputSignalProviders) = a2;
  *(v16 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_executorProviders) = a3;
  v20 = (v16 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_contextProvider);
  *v20 = a4;
  v20[1] = a5;
  *(v16 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_dispatchers) = a6;
  v21 = OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_logger;
  v22 = sub_22887F180();
  (*(*(v22 - 8) + 32))(v16 + v21, a7, v22);
  v23 = (v16 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier);
  *v23 = a8;
  v23[1] = a9;
  return v16;
}

uint64_t OrchestrationDirector.init(environment:inputSignalProviders:executorProviders:contextProvider:dispatchers:logger:debugIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  sub_2287F36D8(0, &qword_2813CF498);
  v18 = swift_allocObject();
  *(v18 + 44) = 0;
  *(v18 + 16) = MEMORY[0x277D84F90];
  *(v18 + 24) = xmmword_2288818E0;
  *(v18 + 40) = 0;
  *(v9 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState) = v18;
  *(v9 + 16) = a1;
  type metadata accessor for WorkQueue();
  swift_allocObject();

  v20 = sub_228860C6C(v19);

  *(v10 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue) = v20;
  *(v10 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_inputSignalProviders) = a2;
  *(v10 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_executorProviders) = a3;
  v21 = (v10 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_contextProvider);
  *v21 = a4;
  v21[1] = a5;
  *(v10 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_dispatchers) = a6;
  v22 = OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_logger;
  v23 = sub_22887F180();
  (*(*(v23 - 8) + 32))(v10 + v22, a7, v23);
  v24 = (v10 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier);
  *v24 = a8;
  v24[1] = a9;
  return v10;
}

void OrchestrationDirector.start(completion:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock(v1 + 11);
  sub_22880EE74(&v1[4], v13);
  os_unfair_lock_unlock(v1 + 11);
  if (LOBYTE(v13[0]) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_dispatchers);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue);
      v5 = v2 + 32;
      do
      {
        sub_2287E766C(v5, v13);
        v6 = v14;
        v7 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        v12 = v4;
        v8 = *(v7 + 8);
        v9 = type metadata accessor for WorkQueue();

        v8(&v12, v9, &protocol witness table for WorkQueue, v6, v7);
        __swift_destroy_boxed_opaque_existential_1(v13);

        v5 += 40;
        --v3;
      }

      while (v3);
    }

    v10 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_contextProvider + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 32))(v0, &protocol witness table for OrchestrationDirector, ObjectType, v10);
  }
}

Swift::Void __swiftcall OrchestrationDirector.stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = xmmword_2288818F0;
  sub_22880EEE4(v2);
  os_unfair_lock_unlock((v1 + 44));
  v4 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_contextProvider + 8);
  ObjectType = swift_getObjectType();
  (*(v4 + 40))(ObjectType, v4);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22887FA20())
  {
    v7 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAC07F0](v7, v3);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v10 = *(*(v8 + 56) + 24);
      os_unfair_lock_lock((v10 + 24));
      sub_22880EEF8((v10 + 16));
      os_unfair_lock_unlock((v10 + 24));

      ++v7;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v3 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t OrchestrationDirector.paused.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 44));
  return v2;
}

Swift::Void __swiftcall OrchestrationDirector.pause()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  sub_22880EF14((v1 + 16));

  os_unfair_lock_unlock((v1 + 44));
}

void sub_22880B47C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  if ((a1[3] & 1) == 0)
  {
    *(a1 + 24) = 1;
    if (a1[1] == 2)
    {
      v4 = *a1;
      i = *a1 >> 62;
      if (i)
      {
LABEL_23:
        v18 = a2;
        v19 = sub_22887FA20();
        a2 = v18;
        v6 = v19;
      }

      else
      {
        v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = a2;

      v8 = sub_22887F160();
      v9 = sub_22887F6B0();
      v10 = v7;

      if (os_log_type_enabled(v8, v9))
      {
        v11 = swift_slowAlloc();
        v20 = v6;
        v12 = swift_slowAlloc();
        v21 = v12;
        *v11 = 136315394;
        sub_22887F8A0();

        MEMORY[0x22AAC0340](*(v10 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier), *(v10 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier + 8));
        MEMORY[0x22AAC0340](62, 0xE100000000000000);
        v13 = sub_2287E64D8(0xD000000000000018, 0x8000000228888690, &v21);

        *(v11 + 4) = v13;
        *(v11 + 12) = 2048;
        *(v11 + 14) = v20;
        _os_log_impl(&dword_2287E4000, v8, v9, "%s: Pausing (%ld orchestrators).", v11, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x22AAC1440](v12, -1, -1);
        MEMORY[0x22AAC1440](v11, -1, -1);
      }

      if (i)
      {
        v14 = sub_22887FA20();
        if (!v14)
        {
          return;
        }
      }

      else
      {
        v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          return;
        }
      }

      for (i = 0; ; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x22AAC07F0](i, v4);
          v16 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_20:
            __break(1u);
            return;
          }
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v15 = *(v4 + 8 * i + 32);

          v16 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_20;
          }
        }

        v17 = *(v15 + 48);
        os_unfair_lock_lock(v17 + 26);
        sub_22880FA40(&v17[4]);
        if (v3)
        {
          break;
        }

        v3 = 0;
        os_unfair_lock_unlock(v17 + 26);

        if (v16 == v14)
        {
          return;
        }
      }

      os_unfair_lock_unlock(v17 + 26);
      __break(1u);
    }
  }
}

Swift::Void __swiftcall OrchestrationDirector.resume()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  sub_2287ECA90((v1 + 16));

  os_unfair_lock_unlock((v1 + 44));
}

void OrchestrationDirector.add(_:from:context:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  sub_22880EF30((v1 + 16));
  os_unfair_lock_unlock((v1 + 44));
}

uint64_t sub_22880B804(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  if (*a1 >> 62)
  {
LABEL_15:
    v9 = sub_22887FA20();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x22AAC07F0](v10, v7);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            Orchestrator.add(_:from:)(a4, a5, a6);
          }
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v11 = *(v7 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_12;
          }
        }

        if (*(v11 + 16) == a2)
        {
          goto LABEL_13;
        }

        ++v10;
      }

      while (v12 != v9);
    }
  }

  sub_22880F838();
  swift_allocError();
  return swift_willThrow();
}

void OrchestrationDirector.remove(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  sub_22880EF54((v1 + 16));
  os_unfair_lock_unlock((v1 + 44));
}

void sub_22880B9A8(uint64_t *a1, uint64_t a2, uint64_t (*a3)())
{
  v4 = v3;
  v12[3] = a3;
  v5 = *a1;
  if (*a1 >> 62)
  {
LABEL_14:
    v6 = sub_22887FA20();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAC07F0](i, v5);
      v8 = v9;
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * i + 32);

      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    v11 = *(v8 + 48);
    MEMORY[0x28223BE20](v9);
    os_unfair_lock_lock(v11 + 26);
    sub_22880F818(&v11[4], v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    os_unfair_lock_unlock(v11 + 26);
    v12[0]();

    if (v10 == v6)
    {
      return;
    }
  }

  os_unfair_lock_unlock(v11 + 26);
  __break(1u);
}

void OrchestrationDirector.statusObserver.getter(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue) + 16);
  os_unfair_lock_lock(v3 + 21);
  sub_2287F7E00(&v3[10], a1);

  os_unfair_lock_unlock(v3 + 21);
}

void sub_22880BB80(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(*a1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue) + 16);
  os_unfair_lock_lock(v3 + 21);
  sub_2287F7E00(&v3[10], a2);

  os_unfair_lock_unlock(v3 + 21);
}

uint64_t OrchestrationDirector.statusObserver.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue);
  sub_2287F7E00(a1, v6);
  v4 = *(v3 + 16);
  os_unfair_lock_lock(v4 + 21);
  sub_22880EF70(&v4[4]);
  os_unfair_lock_unlock(v4 + 21);
  sub_22880EF8C(a1);
  return sub_22880EF8C(v6);
}

void (*OrchestrationDirector.statusObserver.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue);
  *(v3 + 120) = v5;
  v6 = *(v5 + 16);
  os_unfair_lock_lock(v6 + 21);
  sub_2287F7E00(&v6[10], v4);
  os_unfair_lock_unlock(v6 + 21);
  return sub_22880BCF8;
}

void sub_22880BCF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 40;
  v4 = *(*a1 + 120);
  if (a2)
  {
    sub_2287F7E00(*a1, v3);
    v5 = sub_2287F7E00(v3, v2 + 80);
    v6 = *(v4 + 16);
    MEMORY[0x28223BE20](v5);
    os_unfair_lock_lock(v6 + 21);
    sub_22880FA58(&v6[4]);
    os_unfair_lock_unlock(v6 + 21);
    sub_22880EF8C(v3);
    sub_22880EF8C(v2 + 80);
    v7 = v2;
  }

  else
  {
    v8 = sub_2287F7E00(*a1, v3);
    v9 = *(v4 + 16);
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock(v9 + 21);
    sub_22880FA58(&v9[4]);
    os_unfair_lock_unlock(v9 + 21);
    sub_22880EF8C(v2);
    v7 = v3;
  }

  sub_22880EF8C(v7);
  free(v2);
}

uint64_t OrchestrationDirector.orchestrationGraph()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  sub_22880BE94((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 44));
  return v3;
}

void sub_22880BE94(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v17)
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_16:
      *a2 = v7;
      return;
    }

    v8 = v5;
    v24 = MEMORY[0x277D84F90];
    sub_2287F2304(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v7 = v24;
    v10 = v8;
    v20 = v8;
    v21 = v8 & 0xC000000000000001;
    v18 = a2;
    v19 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a2 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v21)
      {
        v11 = MEMORY[0x22AAC07F0](v9, v10);
      }

      else
      {
        if (v9 >= *(v19 + 16))
        {
          goto LABEL_18;
        }

        v11 = *&v10[2 * v9 + 8]._os_unfair_lock_opaque;
      }

      v8 = *(v11 + 48);
      os_unfair_lock_lock((v8 + 104));
      sub_22880F7FC(v8 + 16, v23);
      if (v3)
      {
        goto LABEL_21;
      }

      v3 = 0;
      os_unfair_lock_unlock((v8 + 104));
      v12 = v23[0];
      v22 = v23[1];

      v24 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2287F2304((v13 > 1), v14 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      v5 = v22;
      *(v15 + 32) = v12;
      *(v15 + 40) = v22;
      ++v9;
      v10 = v20;
      if (a2 == i)
      {
        a2 = v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v16 = v5;
    v17 = sub_22887FA20();
    v5 = v16;
  }

  __break(1u);
LABEL_21:
  os_unfair_lock_unlock((v8 + 104));
  __break(1u);
}

uint64_t sub_22880C054(unint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_16:
    v17 = v3 & 0xFFFFFFFFFFFFFF8;
    v13 = sub_22887FA20();
    if (v13)
    {
      v4 = v13;
      v5 = sub_22887FA20();
      goto LABEL_4;
    }
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
      sub_2287F36D8(0, &qword_2813CF3E0);
      v6 = swift_allocObject();
      v7 = 0;
      *(v6 + 24) = 0;
      v18 = v6;
      *(v6 + 16) = v5;
      v14 = v3;
      v15 = v3 & 0xC000000000000001;
      while (1)
      {
        if (v15)
        {
          v8 = MEMORY[0x22AAC07F0](v7, v3);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
          }
        }

        else
        {
          if (v7 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v3 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_13;
          }
        }

        v10 = swift_allocObject();
        v10[2] = v16;
        v10[3] = v18;
        v10[4] = a2;
        v10[5] = a3;
        v11 = *(v8 + 48);
        (MEMORY[0x28223BE20])();

        os_unfair_lock_lock(v11 + 26);
        sub_22880F7C4(&v11[4], &v21);
        os_unfair_lock_unlock(v11 + 26);
        if (v21)
        {
          sub_22882A5A4(v21);
        }

        ++v7;
        v3 = v14;
        if (v9 == v4)
        {
        }
      }
    }
  }

  return a2();
}

void sub_22880C280(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock(v4 + 11);
  sub_22880F7E0(&v5);
  os_unfair_lock_unlock(v4 + 11);
  if (v5)
  {
    a3();
  }
}

void sub_22880C304(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  v4 = *(a1 + 16);
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v5;
    os_unfair_lock_unlock((a1 + 24));
    *a2 = v5 == 0;
  }
}

void OrchestrationDirector.priorityThreshold.getter(_BYTE *a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue) + 16);
  os_unfair_lock_lock((v3 + 84));
  *a1 = *(v3 + 80);

  os_unfair_lock_unlock((v3 + 84));
}

uint64_t (*OrchestrationDirector.priorityThreshold.modify(uint64_t a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue);
  *a1 = v3;
  v4 = *(v3 + 16);
  os_unfair_lock_lock((v4 + 84));
  *(a1 + 8) = *(v4 + 80);
  os_unfair_lock_unlock((v4 + 84));
  return sub_22880C470;
}

uint64_t sub_22880C470(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return WorkQueue.priorityThreshold.setter(v2);
}

Swift::Void __swiftcall OrchestrationDirector.didUpdate(contexts:)(Swift::OpaquePointer contexts)
{
  v2 = *(v1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock(v2 + 11);
  sub_22880EFE8(&v2[4], &v3);
  os_unfair_lock_unlock(v2 + 11);
  v3();
}

void sub_22880C52C(uint64_t a1@<X0>, uint64_t a2@<X1>, os_unfair_lock_s *a3@<X2>, void *a4@<X8>)
{
  v5 = a4;
  v6 = *(a1 + 8);
  if (v6 == 3)
  {
    *a4 = nullsub_1;
    a4[1] = 0;
    return;
  }

  v9 = a1;
  v10 = *(a1 + 16);

  v11 = sub_22880E0E8(v9, a2, a3);
  v12 = v4;
  v29 = v9;
  if (*v9 >> 62)
  {
    goto LABEL_27;
  }

  v13 = *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 < v11)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  while (1)
  {
    v26 = v10;
    v27 = v6;
    v28 = v5;
    sub_228872604(v11, v13);

    v15 = v12;
    v12 = sub_22880CC50(v14, v9);
    a2 = v15;
    v10 = *(v12 + 16);
    if (!v10)
    {

      v5 = MEMORY[0x277D84F90];
LABEL_12:
      v30 = v5;
      if ((*(v9 + 24) & 1) == 0)
      {
        goto LABEL_30;
      }

      if (!(v5 >> 62))
      {
        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
LABEL_15:
          v17 = 0;
          v18 = v5 & 0xC000000000000001;
          v19 = v5 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v18)
            {
              v11 = MEMORY[0x22AAC07F0](v17, v5);
              v5 = v11;
              v6 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                goto LABEL_24;
              }
            }

            else
            {
              if (v17 >= *(v19 + 16))
              {
                goto LABEL_26;
              }

              v5 = *(v5 + 8 * v17 + 32);

              v6 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }
            }

            v12 = a3;
            a3 = *(v5 + 48);
            os_unfair_lock_lock(a3 + 26);
            sub_22880F79C(&a3[4]);
            if (a2)
            {
              goto LABEL_36;
            }

            a2 = 0;
            os_unfair_lock_unlock(a3 + 26);

            ++v17;
            a3 = v12;
            v5 = v30;
          }

          while (v6 != v10);
        }

LABEL_30:

        sub_228861418(v21);
        v22 = v27;
        if (v27 - 1 >= 3)
        {
          *(v29 + 8) = xmmword_228881900;
          v24 = v28;
          v23 = v26;
        }

        else
        {
          v22 = 0;
          v23 = 0;
          v24 = v28;
        }

        v25 = swift_allocObject();
        *(v25 + 2) = v22;
        *(v25 + 3) = v23;
        *(v25 + 4) = a3;
        *(v25 + 5) = v30;
        *v24 = sub_22880F790;
        v24[1] = v25;

        return;
      }

LABEL_29:
      v11 = sub_22887FA20();
      v10 = v11;
      if (v11)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }

    v33 = MEMORY[0x277D84F90];
    v5 = &v33;
    v11 = sub_22887F960();
    v16 = 0;
LABEL_7:
    if (v16 < *(v12 + 16))
    {
      break;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v20 = v11;
    v13 = sub_22887FA20();
    v11 = v20;
    v9 = v29;
    if (v13 < v11)
    {
      goto LABEL_28;
    }
  }

  v31 = *(v12 + 16 * v16 + 32);
  swift_unknownObjectRetain();
  sub_22880CDAC(&v31, a3, &v32);
  if (!a2)
  {
    a2 = 0;
    ++v16;
    swift_unknownObjectRelease();
    v5 = &v33;
    sub_22887F930();
    sub_22887F970();
    sub_22887F980();
    v11 = sub_22887F940();
    if (v10 == v16)
    {

      v5 = v33;
      v9 = v29;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  swift_unknownObjectRelease();

  __break(1u);
LABEL_36:
  os_unfair_lock_unlock(a3 + 26);
  __break(1u);
}

void sub_22880C890(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a2 + 40;
  v7 = *(a2 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 16;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = sub_2287FF530();
    swift_unknownObjectRelease();
    v6 = v8;
    if (v9)
    {
      return;
    }
  }

  v10 = sub_22887F160();
  v11 = sub_22887F6B0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315394;
    sub_22887F8A0();

    MEMORY[0x22AAC0340](*(a3 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier), *(a3 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier + 8));
    MEMORY[0x22AAC0340](62, 0xE100000000000000);
    v14 = sub_2287E64D8(0xD000000000000018, 0x8000000228888690, &v19);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    type metadata accessor for Orchestrator();

    v15 = sub_22887F3B0();
    v17 = sub_2287E64D8(v15, v16, &v19);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_2287E4000, v10, v11, "%s: Stopping orchestrator for removed context: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC1440](v13, -1, -1);
    MEMORY[0x22AAC1440](v12, -1, -1);
  }

  v18 = *(*(v5 + 56) + 24);
  os_unfair_lock_lock((v18 + 24));
  sub_22880FA28((v18 + 16));
  os_unfair_lock_unlock((v18 + 24));
  if (v3)
  {
    __break(1u);
  }
}

BOOL sub_22880CB2C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 & 0xFFFFFFFFFFFFFF8;
  if (*a2 >> 62)
  {
LABEL_15:
    v4 = sub_22887FA20();
  }

  else
  {
    v4 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x22AAC07F0](v5, v2);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    swift_getObjectType();
    v7 = sub_2287FF530();

    v5 = v6 + 1;
  }

  while ((v7 & 1) == 0);

  return v4 == v6;
}

uint64_t sub_22880CC50(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (v6 < *(v3 + 16))
    {
      v11 = *(v3 + 16 * v6 + 32);
      v12 = v11;
      swift_unknownObjectRetain();
      v8 = sub_22880CB2C(&v12, a2);
      if (v2)
      {

        swift_unknownObjectRelease();
        return v7;
      }

      if (v8)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v13 = v7;
        if ((result & 1) == 0)
        {
          result = sub_22881D9A4(0, *(v7 + 16) + 1, 1);
          v7 = v13;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_22881D9A4((v9 > 1), v10 + 1, 1);
          v7 = v13;
        }

        *(v7 + 16) = v10 + 1;
        *(v7 + 16 * v10 + 32) = v11;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

      if (v4 == ++v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_14:

    return v7;
  }

  return result;
}

uint64_t sub_22880CDAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  swift_unknownObjectRetain();
  v6 = sub_22887F160();
  v7 = sub_22887F6B0();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    sub_22887F8A0();

    MEMORY[0x22AAC0340](*(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier), *(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier + 8));
    MEMORY[0x22AAC0340](62, 0xE100000000000000);
    v10 = sub_2287E64D8(0xD000000000000018, 0x8000000228888690, &v19);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_22887F3B0();
    v13 = sub_2287E64D8(v11, v12, &v19);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_2287E4000, v6, v7, "%s: Starting orchestrator for new context: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC1440](v9, -1, -1);
    MEMORY[0x22AAC1440](v8, -1, -1);
  }

  v14 = *(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_inputSignalProviders);
  v15 = *(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_executorProviders);
  v16 = *(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue);
  type metadata accessor for Orchestrator();
  swift_allocObject();
  swift_unknownObjectRetain();

  result = Orchestrator.init(context:inputSignalProviders:executorProviders:workQueue:)(v4, v5, v14, v15, v16);
  *a3 = result;
  return result;
}

unint64_t sub_22880D030(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {

    sub_22880C054(a4, a1, a2);

    return sub_2287E75A4(a1);
  }

  else
  {

    return sub_22880F514(a4);
  }
}

uint64_t OrchestrationDirector.deinit()
{

  v1 = OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_logger;
  v2 = sub_22887F180();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t OrchestrationDirector.__deallocating_deinit()
{
  OrchestrationDirector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22880D1F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock(v1 + 11);
  sub_22880FA74(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 11);
  v3();
}

void sub_22880D264()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  sub_22880FA10((v1 + 16));

  os_unfair_lock_unlock((v1 + 44));
}

void sub_22880D2C4(_BYTE *a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue) + 16);
  os_unfair_lock_lock((v3 + 84));
  *a1 = *(v3 + 80);

  os_unfair_lock_unlock((v3 + 84));
}

void (*sub_22880D318(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = OrchestrationDirector.priorityThreshold.modify(v2);
  return sub_22880D388;
}

void sub_22880D388(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t OrchestrationDirector.description.getter()
{
  sub_22887F8A0();

  MEMORY[0x22AAC0340](*(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier), *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier + 8));
  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_22880D45C()
{
  v1 = *v0;
  sub_22887F8A0();

  MEMORY[0x22AAC0340](*(v1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier), *(v1 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier + 8));
  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t OrchestrationDirector.debugSnapshot.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  sub_22880F004((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 44));
  return v3;
}

void *sub_22880D544@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v83 = a3;
  sub_22887F8A0();

  v88 = 0xD000000000000018;
  v89 = 0x8000000228888690;
  MEMORY[0x22AAC0340](*(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier), *(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier + 8));
  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  v81 = 0x8000000228888690;
  v82 = 0xD000000000000018;
  v6 = MEMORY[0x277D84560];
  sub_2288008A4(0, &qword_2813CF200, sub_22880F394, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228881910;
  *(inited + 32) = 0x6863746170736964;
  *(inited + 40) = 0xEB00000000737265;
  v8 = *(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_dispatchers);
  v9 = sub_2287EC070(0, &qword_27D851AE0);
  *(inited + 48) = MEMORY[0x22AAC0400](v8, v9);
  *(inited + 56) = v10;
  *(inited + 64) = 0x646573756170;
  *(inited + 72) = 0xE600000000000000;
  v11 = 28526;
  if (*(a1 + 24))
  {
    v12 = 5457241;
  }

  else
  {
    v12 = 28526;
  }

  if (*(a1 + 24))
  {
    v13 = 0xE300000000000000;
  }

  else
  {
    v13 = 0xE200000000000000;
  }

  *(inited + 80) = v12;
  *(inited + 88) = v13;
  *(inited + 96) = 0x657669746361;
  *(inited + 104) = 0xE600000000000000;
  if (a1[1] == 2)
  {
    v11 = 5457241;
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = 0xE200000000000000;
  }

  *(inited + 112) = v11;
  *(inited + 120) = v14;
  *(inited + 128) = 0x50747865746E6F63;
  *(inited + 136) = 0xEF72656469766F72;
  v88 = 0;
  v89 = 0xE000000000000000;
  v15 = *(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_contextProvider);
  swift_getObjectType();
  v91 = v15;
  sub_22887FBD0();
  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  v80 = sub_2287E97C0(inited);
  swift_setDeallocating();
  sub_22880F394();
  swift_arrayDestroy();
  sub_2288008A4(0, &qword_27D851AE8, sub_22880F3F0, v6);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_228881920;
  *(v16 + 32) = 0x6575657571;
  v79 = v16 + 32;
  *(v16 + 40) = 0xE500000000000000;
  sub_22880F488();
  v17 = swift_allocObject();
  v87 = xmmword_228881930;
  *(v17 + 16) = xmmword_228881930;
  i = *(*(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_workQueue) + 16);
  os_unfair_lock_lock((i + 84));
  sub_22880F4DC(i + 16, &v88);
  if (v3)
  {
LABEL_53:
    os_unfair_lock_unlock((i + 84));
    __break(1u);
    os_unfair_lock_unlock((v17 + 40));
    __break(1u);
    v78 = a1;
LABEL_55:

    __break(1u);
    return result;
  }

  os_unfair_lock_unlock((i + 84));
  *(v17 + 32) = v88;
  *(v16 + 48) = v17;
  *(v16 + 56) = 0x6D6E6F7269766E65;
  *(v16 + 64) = 0xEB00000000746E65;
  v19 = swift_allocObject();
  *(v19 + 16) = v87;
  v84 = a2;
  v17 = *(*(a2 + 16) + 16);
  os_unfair_lock_lock((v17 + 40));
  sub_228872068((v17 + 16), &v88);
  os_unfair_lock_unlock((v17 + 40));
  *(v19 + 32) = v88;
  *(v16 + 72) = v19;
  strcpy((v16 + 80), "orchestrators");
  *(v16 + 94) = -4864;
  v20 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v77)
  {
    v85 = v16;
    if (!i)
    {
      break;
    }

    v21 = v20;
    v88 = MEMORY[0x277D84F90];
    sub_22887F960();
    if ((i & 0x8000000000000000) != 0)
    {
      __break(1u);
      os_unfair_lock_unlock((i + 104));
      __break(1u);
      goto LABEL_53;
    }

    v17 = 0;
    v22 = v21;
    v20 = v21 & 0xC000000000000001;
    v86 = v21 & 0xFFFFFFFFFFFFFF8;
    *&v87 = v21 & 0xC000000000000001;
    v16 = i;
    while (1)
    {
      a1 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v87)
      {
        v23 = MEMORY[0x22AAC07F0](v17, v22);
      }

      else
      {
        if (v17 >= *(v86 + 16))
        {
          goto LABEL_50;
        }

        v23 = *(v22 + 8 * v17 + 32);
      }

      v24 = *(v23 + 48);
      os_unfair_lock_lock(v24 + 26);
      sub_22880F4F8(&v24[4], &v91);
      os_unfair_lock_unlock(v24 + 26);

      sub_22887F930();
      sub_22887F970();
      sub_22887F980();
      sub_22887F940();
      ++v17;
      v22 = v21;
      if (a1 == v16)
      {
        v16 = v85;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v76 = v20;
    v77 = sub_22887FA20();
    v20 = v76;
  }

LABEL_23:

  v88 = sub_2288722EC(v25);
  sub_22880E06C(&v88);
  v26 = v84;

  *(v16 + 96) = v88;
  *(v16 + 104) = 0xD000000000000014;
  *(v16 + 112) = 0x8000000228888700;
  v27 = *(v26 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_inputSignalProviders);
  v28 = *(v27 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v91 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v28, 0);
    v30 = v91;
    v31 = v27 + 32;
    do
    {
      sub_2287E766C(v31, &v88);
      v32 = __swift_project_boxed_opaque_existential_1(&v88, v90);
      MEMORY[0x28223BE20](v32);
      (*(v34 + 16))(&v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      v35 = sub_22887F3B0();
      v37 = v36;
      __swift_destroy_boxed_opaque_existential_1(&v88);
      v91 = v30;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2287F2304((v38 > 1), v39 + 1, 1);
        v30 = v91;
      }

      *(v30 + 16) = v39 + 1;
      v40 = v30 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v31 += 40;
      --v28;
    }

    while (v28);
    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v88 = v30;

  sub_22883DC10(&v88);
  *&v87 = 0;

  v41 = v88;
  v42 = *(v88 + 2);
  v43 = MEMORY[0x277D84F98];
  if (v42)
  {
    v88 = v29;
    sub_22887F960();
    type metadata accessor for DebugSnapshot();
    v44 = (v41 + 40);
    do
    {
      v46 = *(v44 - 1);
      v45 = *v44;
      v47 = swift_allocObject();
      v47[2] = v46;
      v47[3] = v45;
      v47[4] = v43;
      v47[5] = v43;

      sub_22887F930();
      sub_22887F970();
      sub_22887F980();
      sub_22887F940();
      v44 += 2;
      --v42;
    }

    while (v42);

    v48 = v88;
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  v49 = v85;
  *(v85 + 120) = v48;
  *(v49 + 128) = 0xD000000000000011;
  *(v49 + 136) = 0x8000000228888720;
  v50 = *(v84 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_executorProviders);
  v51 = *(v50 + 16);
  v52 = MEMORY[0x277D84F90];
  if (v51)
  {
    v91 = MEMORY[0x277D84F90];
    sub_2287F2304(0, v51, 0);
    v53 = v91;
    v54 = v50 + 32;
    do
    {
      sub_2287E766C(v54, &v88);
      v55 = __swift_project_boxed_opaque_existential_1(&v88, v90);
      MEMORY[0x28223BE20](v55);
      (*(v57 + 16))(&v79 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
      v58 = sub_22887F3B0();
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1(&v88);
      v91 = v53;
      v62 = *(v53 + 16);
      v61 = *(v53 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_2287F2304((v61 > 1), v62 + 1, 1);
        v53 = v91;
      }

      *(v53 + 16) = v62 + 1;
      v63 = v53 + 16 * v62;
      *(v63 + 32) = v58;
      *(v63 + 40) = v60;
      v54 += 40;
      --v51;
    }

    while (v51);
    v52 = MEMORY[0x277D84F90];
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v88 = v53;

  v64 = v87;
  sub_22883DC10(&v88);
  if (v64)
  {
    v78 = v64;
    goto LABEL_55;
  }

  v65 = v88;
  v66 = *(v88 + 2);
  if (v66)
  {
    *&v87 = 0;
    v88 = v52;
    sub_22887F960();
    type metadata accessor for DebugSnapshot();
    v67 = (v65 + 40);
    do
    {
      v69 = *(v67 - 1);
      v68 = *v67;
      v70 = swift_allocObject();
      v70[2] = v69;
      v70[3] = v68;
      v70[4] = v43;
      v70[5] = v43;

      sub_22887F930();
      sub_22887F970();
      sub_22887F980();
      sub_22887F940();
      v67 += 2;
      --v66;
    }

    while (v66);

    v71 = v88;
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v72 = v85;
  *(v85 + 144) = v71;
  v73 = sub_2288093F4(v72);
  swift_setDeallocating();
  sub_22880F3F0();
  swift_arrayDestroy();
  type metadata accessor for DebugSnapshot();
  result = swift_allocObject();
  v75 = v81;
  result[2] = v82;
  result[3] = v75;
  result[4] = v80;
  result[5] = v73;
  *v83 = result;
  return result;
}

uint64_t sub_22880E00C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  sub_22880F9F8((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 44));
  return v3;
}

uint64_t sub_22880E06C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_228863F94(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22880E3A0(v6);
  return sub_22887F940();
}

unint64_t sub_22880E0E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  v9 = sub_22880F674(*a1, a2, a3);
  if (v3)
  {

    return v4;
  }

  if ((v10 & 1) == 0)
  {
    v4 = v9;
    v21 = a1;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_11;
    }

    while (1)
    {
      if (v8 >> 62)
      {
        if (v12 == sub_22887FA20())
        {
          goto LABEL_6;
        }
      }

      else if (v12 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x22AAC07F0](v12, v8);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v14 = *(v8 + 8 * v12 + 32);
      }

      v23 = v14;
      sub_22880C890(&v23, a2, a3);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        if (v4 != v12)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x22AAC07F0](v4, v8);
            v17 = MEMORY[0x22AAC07F0](v12, v8);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_49;
            }

            v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v4 >= v18)
            {
              goto LABEL_50;
            }

            if (v12 >= v18)
            {
              goto LABEL_51;
            }

            v17 = *(v8 + 32 + 8 * v12);
            v22 = *(v8 + 32 + 8 * v4);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
          {
            v8 = sub_228872CE0(v8);
            v19 = (v8 >> 62) & 1;
          }

          else
          {
            LODWORD(v19) = 0;
          }

          v20 = v8 & 0xFFFFFFFFFFFFFF8;
          *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v17;

          if ((v8 & 0x8000000000000000) != 0 || v19)
          {
            v8 = sub_228872CE0(v8);
            v20 = v8 & 0xFFFFFFFFFFFFFF8;
            if ((v12 & 0x8000000000000000) != 0)
            {
LABEL_42:
              __break(1u);

              return v4;
            }
          }

          else if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_42;
          }

          if (v12 >= *(v20 + 16))
          {
            goto LABEL_48;
          }

          *(v20 + 8 * v12 + 32) = v22;

          *v21 = v8;
        }

LABEL_11:
        v13 = __OFADD__(v4++, 1);
        if (v13)
        {
          goto LABEL_47;
        }
      }

      v13 = __OFADD__(v12++, 1);
      if (v13)
      {
        goto LABEL_46;
      }
    }
  }

  if (v8 >> 62)
  {
LABEL_52:
    v4 = sub_22887FA20();
  }

  else
  {
    v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_6:

  return v4;
}

uint64_t sub_22880E3A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22887FB90();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DebugSnapshot();
        v6 = sub_22887F500();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_22880E564(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22880E4A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22880E4A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      result = *(v9 + 16);
      v12 = result == *(*v11 + 16) && *(v9 + 24) == *(*v11 + 24);
      if (v12 || (result = sub_22887FBF0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v13;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22880E564(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v86;
    if (!*v86)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_228863AEC(v7);
      v7 = result;
    }

    v80 = *(v7 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v7[16 * v80];
        v82 = *&v7[16 * v80 + 24];
        sub_22880EB34((*a3 + 8 * v81), (*a3 + 8 * *&v7[16 * v80 + 16]), (*a3 + 8 * v82), v8);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_228863AEC(v7);
        }

        if (v80 - 2 >= *(v7 + 2))
        {
          goto LABEL_131;
        }

        v83 = &v7[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_228863A60(v80 - 1);
        v80 = *(v7 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(*a3 + 8 * v6);
      v11 = *(*a3 + 8 * v8);
      result = *(v10 + 16);
      if (result == *(v11 + 16) && *(v10 + 24) == *(v11 + 24))
      {
        v13 = 0;
      }

      else
      {
        result = sub_22887FBF0();
        v13 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v14 = v9 + 8 * v8 + 16;
        do
        {
          v15 = *(v14 - 8);
          result = *(*v14 + 16);
          if (result == *(v15 + 16) && *(*v14 + 24) == *(v15 + 24))
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22887FBF0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v14 += 8;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v17 = 8 * v6 - 8;
          v18 = 8 * v8;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v21 = *(v22 + v18);
              *(v22 + v18) = *(v22 + v17);
              *(v22 + v17) = v21;
            }

            ++v20;
            v17 -= 8;
            v18 += 8;
          }

          while (v20 < v19);
        }
      }
    }

    v23 = a3[1];
    if (v6 < v23)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v23)
        {
          v24 = a3[1];
        }

        else
        {
          v24 = (v8 + a4);
        }

        if (v24 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v24)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22882F8B4(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v35 = *(v7 + 2);
    v34 = *(v7 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_22882F8B4((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v36;
    v37 = &v7[16 * v35];
    *(v37 + 4) = v8;
    *(v37 + 5) = v6;
    v38 = *v86;
    if (!*v86)
    {
      goto LABEL_142;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_74:
          if (v43)
          {
            goto LABEL_121;
          }

          v56 = &v7[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_124;
          }

          v62 = &v7[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_128;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v66 = &v7[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_88:
        if (v61)
        {
          goto LABEL_123;
        }

        v69 = &v7[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_126;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v77 = *&v7[16 * v8 + 32];
        v78 = *&v7[16 * v39 + 40];
        sub_22880EB34((*a3 + 8 * v77), (*a3 + 8 * *&v7[16 * v39 + 32]), (*a3 + 8 * v78), v38);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_228863AEC(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v7[16 * v8];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_228863A60(v39);
        v36 = *(v7 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v7[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_119;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_120;
      }

      v51 = &v7[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_122;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_125;
      }

      if (v55 >= v47)
      {
        v73 = &v7[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_129;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v6 - 8;
  v84 = v8;
  v27 = (v8 - v6);
LABEL_43:
  v28 = *(v25 + 8 * v6);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *(v28 + 16) == *(*v30 + 16) && *(v28 + 24) == *(*v30 + 24);
    if (v31 || (result = sub_22887FBF0(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v26 += 8;
      --v27;
      if (v6 != v24)
      {
        goto LABEL_43;
      }

      v6 = v24;
      v8 = v84;
      goto LABEL_54;
    }

    if (!v25)
    {
      break;
    }

    v32 = *v30;
    v28 = v30[1];
    *v30 = v28;
    v30[1] = v32;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_22880EB34(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 16) == *(*v4 + 16) && *(*v6 + 24) == *(*v4 + 24);
      if (!v16 && (sub_22887FBF0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 24);
      v21 = *(v19 + 16) == *(*v17 + 16) && v20 == *(*v17 + 24);
      if (!v21 && (sub_22887FBF0() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t (*sub_22880ED6C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAC07F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_22880EDEC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22880EDF4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAC07F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_22880FA70;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22880EE74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>))(void)
{
  result = *(v2 + 16);
  v5 = *(v2 + 24);
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = result;
    *(a1 + 16) = v5;
    *a2 = 1;
    return sub_2287F8E74(result);
  }

  else
  {
    if (result)
    {
      v6 = a2;
      result = result();
      a2 = v6;
    }

    *a2 = 0;
  }

  return result;
}

uint64_t sub_22880EEE4(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return sub_2287E75A4(result);
  }

  return result;
}

uint64_t sub_22880EF8C(uint64_t a1)
{
  sub_2287FDE90();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22880F024()
{
  result = qword_27D851AD8;
  if (!qword_27D851AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851AD8);
  }

  return result;
}

uint64_t type metadata accessor for OrchestrationDirector()
{
  result = qword_2813D1670;
  if (!qword_2813D1670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22880F0CC()
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

uint64_t getEnumTagSinglePayload for OrchestrationDirector.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OrchestrationDirector.Errors(_WORD *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_Iegh_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19HealthOrchestration0B8DirectorC8RunState33_9222F469EB64FF61BA421325B0E10553LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_22880F2F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_22880F340(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_22880F394()
{
  if (!qword_2813CF638)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813CF638);
    }
  }
}

void sub_22880F3F0()
{
  if (!qword_27D851AF0)
  {
    sub_2288008A4(255, &qword_27D851A70, type metadata accessor for DebugSnapshot, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D851AF0);
    }
  }
}

void sub_22880F488()
{
  if (!qword_2813CF1C0)
  {
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF1C0);
    }
  }
}

unint64_t sub_22880F514(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAC07F0](v3, v1);
        v4 = v5;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        v7 = *(v4 + 48);
        MEMORY[0x28223BE20](v5);
        os_unfair_lock_lock(v7 + 26);
        sub_22880FA8C(&v7[4], &v8);
        os_unfair_lock_unlock(v7 + 26);
        if (v8)
        {
          sub_22882A5A4(v8);
        }

        ++v3;
        if (v6 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v6 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_22887FA20();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_22880F674(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v7 = sub_22887FA20();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAC07F0](v8, a1);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    v15 = v9;
    sub_22880C890(&v15, a2, a3);
    v11 = v10;

    if (v3)
    {
      return result;
    }

    if (v11)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_18;
    }
  }
}

unint64_t sub_22880F838()
{
  result = qword_27D851AF8;
  if (!qword_27D851AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851AF8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22880F8A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22880F908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_22880F964(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

unint64_t sub_22880F9A4()
{
  result = qword_27D851B00;
  if (!qword_27D851B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851B00);
  }

  return result;
}

uint64_t sub_22880FAA4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22887F640();
  if (!v19)
  {
    return sub_22887F4F0();
  }

  v41 = v19;
  v45 = sub_22887F9A0();
  v32 = sub_22887F9B0();
  sub_22887F950();
  result = sub_22887F630();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_22887F660();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_22887F990();
      result = sub_22887F650();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SecureCodingValuesAnchor.init(identifier:values:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = *(a1 + 16);
  v8 = type metadata accessor for SecureCodingValuesAnchor();
  return (*(*(a3 - 8) + 32))(a4 + *(v8 + 52), a2, a3);
}

uint64_t SecureCodingValuesAnchor.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t SecureCodingValuesAnchor.hasDifference(from:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22887F7D0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  if ((*(v10 + 48))(v9, 1, a3) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v13 = 1;
  }

  else
  {
    (*(v10 + 32))(v12, v9, a3);
    v14 = sub_22887F360();
    (*(v10 + 8))(v12, a3);
    v13 = v14 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_2288101F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22887FBF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_22887FBF0();

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

uint64_t sub_2288102C4(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_228810304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2288101F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22881032C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_228806B04();
  *a1 = result;
  return result;
}

uint64_t sub_228810360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2288103B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SecureCodingValuesAnchor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a6;
  v46 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v12;
  v54 = v13;
  *&v55 = v14;
  *(&v55 + 1) = v15;
  type metadata accessor for SecureCodingValuesAnchor.CodingKeys();
  swift_getWitnessTable();
  v16 = sub_22887FAF0();
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v53 = a2;
  v54 = a3;
  v48 = a4;
  v49 = a3;
  *&v55 = a4;
  *(&v55 + 1) = a5;
  v47 = a5;
  v19 = type metadata accessor for SecureCodingValuesAnchor();
  v43 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v52;
  sub_22887FCE0();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v21;
  v42 = v19;
  v23 = v48;
  v24 = v49;
  v52 = a1;
  sub_22881094C();
  v56 = 1;
  sub_228810F24(&unk_27D851B18, sub_228806364);
  v25 = sub_22887FAE0();
  v39 = &v39;
  v40 = v18;
  MEMORY[0x28223BE20](v25);
  *(&v39 - 4) = a2;
  *(&v39 - 3) = v24;
  v26 = v24;
  v27 = a2;
  v28 = v26;
  v29 = v47;
  *(&v39 - 2) = v23;
  *(&v39 - 1) = v29;
  swift_getAssociatedTypeWitness();
  sub_228810A54();
  v30 = sub_22887F470();

  v31 = v45;
  (*(v28 + 16))(v30, v27, v28);
  v33 = v41;
  v32 = v42;
  (*(v46 + 32))(&v41[*(v42 + 52)], v31, v27);
  v56 = 0;
  sub_22880640C();
  v34 = v51;
  v35 = v40;
  sub_22887FAE0();
  (*(v50 + 8))(v35, v34);
  v36 = v54;
  *v33 = v53;
  *(v33 + 1) = v36;
  *(v33 + 1) = v55;
  v37 = v43;
  (*(v43 + 16))(v44, v33, v32);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return (*(v37 + 8))(v33, v32);
}

void sub_22881094C()
{
  if (!qword_27D851B10)
  {
    v0 = sub_22887F550();
    if (!v1)
    {
      atomic_store(v0, &qword_27D851B10);
    }
  }
}

uint64_t sub_22881099C@<X0>(uint64_t *a1@<X8>)
{
  sub_2288112B4();
  swift_getAssociatedTypeWitness();
  result = sub_22887F6C0();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_228810A54()
{
  result = qword_27D851B28;
  if (!qword_27D851B28)
  {
    sub_22881094C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851B28);
  }

  return result;
}

uint64_t SecureCodingValuesAnchor.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v20 = a2[5];
  v21 = v5;
  v32 = v4;
  v33 = v3;
  v34 = v5;
  v35 = v20;
  type metadata accessor for SecureCodingValuesAnchor.CodingKeys();
  swift_getWitnessTable();
  v26 = sub_22887FB70();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = v7;
  v8 = v22;
  sub_22887FCF0();
  v28 = v4;
  v29 = v3;
  v30 = v21;
  v31 = v20;
  v9 = sub_228810EC0();
  v10 = v24;
  v11 = sub_22880FAA4(sub_228810E9C, v27, v4, MEMORY[0x277CC9318], v9, *(v3 + 8), MEMORY[0x277D84950], &v32);
  if (v10)
  {
    return (*(v23 + 8))(v25, v26);
  }

  v13 = v23;
  v32 = v11;
  v36 = 1;
  sub_22881094C();
  sub_228810F24(qword_27D851B30, sub_228806744);
  v14 = v26;
  v15 = v25;
  sub_22887FB50();

  v16 = v8[1];
  v17 = v8[2];
  v18 = v8[3];
  v32 = *v8;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = 0;
  sub_228806798();

  sub_22887FB50();

  return (*(v13 + 8))(v15, v14);
}

void sub_228810DAC(uint64_t *a1@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v13[0] = 0;
  v6 = [objc_opt_self() archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = sub_22887F090();
    v10 = v9;

    *a3 = v8;
    a3[1] = v10;
  }

  else
  {
    v11 = v7;
    v12 = sub_22887F020();

    swift_willThrow();
    *a2 = v12;
  }
}

unint64_t sub_228810EC0()
{
  result = qword_2813CF1A8;
  if (!qword_2813CF1A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813CF1A8);
  }

  return result;
}

uint64_t sub_228810F24(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22881094C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228810F9C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_228811058@<X0>(uint64_t *a1@<X8>)
{
  swift_getWitnessTable();
  result = sub_22887F560();
  *a1 = result;
  return result;
}

uint64_t sub_2288110C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_228811100@<X0>(uint64_t *a1@<X8>)
{
  sub_22887F550();
  swift_getWitnessTable();
  result = sub_22887F620();
  *a1 = result;
  return result;
}

uint64_t sub_228811188(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2288111D8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2288112B4()
{
  result = qword_2813CF518;
  if (!qword_2813CF518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813CF518);
  }

  return result;
}

uint64_t _s19HealthOrchestration15BuiltinProviderC12inputSignals3for8observerSayAA11InputSignal_pGAA11WorkContext_p_AA0iJ8Observer_ptF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v6 = type metadata accessor for LocaleInputSignal.BuiltinLocaleProvider();
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228811DD8(0, &qword_2813CF2C8, &qword_2813D1578);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228881EA0;
  v10 = type metadata accessor for CalendarDayInputSignal();
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  swift_allocObject();
  v11 = swift_unknownObjectRetain();
  v12 = CalendarDayInputSignal.init(observer:dateProvider:)(v11, a4, v38);
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_228811D90(&qword_2813D0368, type metadata accessor for CalendarDayInputSignal);
  *(v9 + 32) = v12;
  v13 = type metadata accessor for DeadlineInputSignal.DispatchSourceTimeDelayProvider();
  v14 = swift_allocObject();
  sub_2287F36D8(0, &qword_2813CF460);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  v16 = type metadata accessor for DeadlineInputSignal();
  v17 = swift_allocObject();
  v17[7] = v13;
  v17[8] = &off_283BC8D28;
  v17[4] = v14;
  sub_228811C18();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D84F90];
  *(v18 + 24) = 0;
  *(v18 + 16) = v19;
  v17[9] = v18;
  v17[2] = a3;
  v17[3] = a4;
  *(v9 + 96) = v16;
  *(v9 + 104) = sub_228811D90(&unk_2813D09C0, type metadata accessor for DeadlineInputSignal);
  *(v9 + 72) = v17;
  v20 = objc_opt_self();
  swift_unknownObjectRetain();
  v21 = [v20 autoupdatingCurrentLocale];
  sub_22887F100();

  v22 = type metadata accessor for LocaleInputSignal();
  v23 = swift_allocObject();
  v23[7] = v6;
  v23[8] = &off_283BCB3D0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23 + 4);
  sub_228811CD0(v8, boxed_opaque_existential_1);
  sub_2287F36D8(0, &qword_2813CF480);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = 0;
  v23[9] = v25;
  v23[2] = a3;
  v23[3] = a4;
  swift_unknownObjectRetain();
  sub_228811D34(v8);
  *(v9 + 136) = v22;
  *(v9 + 144) = sub_228811D90(&qword_2813D0E68, type metadata accessor for LocaleInputSignal);
  *(v9 + 112) = v23;
  v26 = type metadata accessor for NotificationInputSignal();
  swift_allocObject();
  swift_unknownObjectRetain();
  v27 = swift_unknownObjectRetain();
  v28 = v37;
  v29 = NotificationInputSignal.init(context:observer:)(v27, v37, a3, a4);
  *(v9 + 176) = v26;
  *(v9 + 184) = sub_228811D90(&qword_2813D0130, type metadata accessor for NotificationInputSignal);
  *(v9 + 152) = v29;
  v30 = type metadata accessor for POSIXSignalInputSignal();
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = swift_unknownObjectRetain();
  v32 = POSIXSignalInputSignal.init(context:observer:)(v31, v28, a3, a4);
  *(v9 + 216) = v30;
  *(v9 + 224) = sub_228811D90(&qword_2813D02B0, type metadata accessor for POSIXSignalInputSignal);
  *(v9 + 192) = v32;
  v33 = type metadata accessor for PresenceInputSignal();
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = a4;
  *(v9 + 256) = v33;
  *(v9 + 264) = sub_228811D90(&qword_2813D07F8, type metadata accessor for PresenceInputSignal);
  *(v9 + 232) = v34;
  swift_unknownObjectRetain();
  return v9;
}

uint64_t sub_2288117F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v22[3] = sub_228811E38();
  v22[4] = &protocol witness table for RBSProcessMonitor;
  v22[0] = a4;
  v10 = sub_2287E97C0(MEMORY[0x277D84F90]);
  sub_2287F36D8(0, &qword_2813CF458);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  v12 = (v11 + 24);
  *(v11 + 16) = v10;
  v13 = v11 + 16;
  a5[2] = v11;
  a5[8] = a2;
  a5[9] = a3;
  v20[6] = a1;

  swift_unknownObjectRetain();
  os_unfair_lock_lock(v12);
  sub_228811E84(v13);
  os_unfair_lock_unlock(v12);

  v14 = sub_2287E766C(v22, (a5 + 3));
  MEMORY[0x28223BE20](v14);
  v20[2] = a1;
  v20[3] = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_228811EA0;
  *(v15 + 24) = v20;
  aBlock[4] = sub_228811EA8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288486F8;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);

  [a4 updateConfiguration_];
  swift_unknownObjectRelease();
  _Block_release(v16);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    os_unfair_lock_unlock(v18);

    swift_unknownObjectRelease();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    return a5;
  }

  return result;
}

uint64_t _s19HealthOrchestration15BuiltinProviderC28environmentalStateComponents8observerSayAA013EnvironmentalF9Component_pGAA0ifJ8Observer_p_tF_0(uint64_t a1, uint64_t a2)
{
  sub_228811DD8(0, &qword_2813CF268, &qword_2813CFC00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2288817E0;
  type metadata accessor for DeviceLockStateComponent.LockStateObserverShim();
  v5 = swift_allocObject();
  type metadata accessor for DeviceLockStateComponent();
  v6 = swift_allocObject();
  v7 = swift_unknownObjectRetain();
  *(v4 + 32) = sub_2288087D8(v7, a2, v5, v6);
  *(v4 + 40) = &protocol witness table for DeviceLockStateComponent;
  v8 = [objc_allocWithZone(MEMORY[0x277D46F80]) init];
  type metadata accessor for ProcessStateComponent();
  v9 = swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + 48) = sub_2288117F4(&unk_283BC7DA8, a1, a2, v8, v9);
  *(v4 + 56) = &protocol witness table for ProcessStateComponent;
  return v4;
}

void sub_228811C18()
{
  if (!qword_2813CF3F0)
  {
    sub_228811C80();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF3F0);
    }
  }
}

void sub_228811C80()
{
  if (!qword_2813CF610)
  {
    v0 = sub_22887F550();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF610);
    }
  }
}

uint64_t sub_228811CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocaleInputSignal.BuiltinLocaleProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228811D34(uint64_t a1)
{
  v2 = type metadata accessor for LocaleInputSignal.BuiltinLocaleProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228811D90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228811DD8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2287E670C(255, a3);
    v4 = sub_22887FBB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_228811E38()
{
  result = qword_2813CF4F0;
  if (!qword_2813CF4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813CF4F0);
  }

  return result;
}

uint64_t sub_228811FA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228811FC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void *DeadlineInputSignal.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeadlineInputSignal.DispatchSourceTimeDelayProvider();
  v5 = swift_allocObject();
  sub_228812100();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(v5 + 16) = v6;
  v7 = swift_allocObject();
  v7[7] = v4;
  v7[8] = &off_283BC8D28;
  v7[4] = v5;
  sub_228811C18();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 24) = 0;
  *(v8 + 16) = v9;
  v7[9] = v8;
  v7[2] = a1;
  v7[3] = a2;
  return v7;
}

void sub_228812100()
{
  if (!qword_2813CF460)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22887F910();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF460);
    }
  }
}

void static InputSignalIdentifier.deadline.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228881F90;
  a1[2] = 0;
  a1[3] = 0;
}

void static InputSignalSet.LookupKey.deadline.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228881F90;
  a1[2] = 0;
  a1[3] = 0;
}

void DeadlineInputSignal.Configuration.identifier.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228881F90;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t DeadlineInputSignal.Configuration.interval.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

HealthOrchestration::DeadlineInputSignal::Configuration __swiftcall DeadlineInputSignal.Configuration.init(deadline:interval:)(Swift::Double deadline, Swift::Double_optional interval)
{
  *v3 = deadline;
  *(v3 + 8) = *&interval.is_nil;
  *(v3 + 16) = v2 & 1;
  result.interval.value = interval.value;
  result.interval.is_nil = interval.is_nil;
  result.deadline = deadline;
  return result;
}

uint64_t static DeadlineInputSignal.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t DeadlineInputSignal.Configuration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x22AAC0BF0](*&v1);
  if (v3 == 1)
  {
    return sub_22887FCB0();
  }

  sub_22887FCB0();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x22AAC0BF0](v5);
}

uint64_t DeadlineInputSignal.Configuration.hashValue.getter()
{
  sub_22887FC90();
  DeadlineInputSignal.Configuration.hash(into:)();
  return sub_22887FCD0();
}

uint64_t sub_228812360()
{
  sub_22887FC90();
  DeadlineInputSignal.Configuration.hash(into:)();
  return sub_22887FCD0();
}

uint64_t sub_2288123C0()
{
  sub_22887FC90();
  DeadlineInputSignal.Configuration.hash(into:)();
  return sub_22887FCD0();
}

uint64_t sub_228812418(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

Swift::Bool __swiftcall DeadlineInputSignal.Anchor.hasDifference(from:for:)(HealthOrchestration::DeadlineInputSignal::Anchor_optional from, HealthOrchestration::DeadlineInputSignal::Configuration a2)
{
  v3 = **&a2.interval.is_nil;
  v4 = *v2;
  if (*(*&from.is_nil + 8))
  {
    v5 = 0.0;
    if (v3 <= 0.0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = **&from.is_nil;
    if (**&from.is_nil >= v3)
    {
LABEL_3:
      if (*(*&a2.interval.is_nil + 16))
      {
        return v4 < v3;
      }

      v8 = *(*&a2.interval.is_nil + 8);
      v7 = v3 + (floor((v5 - v3) / v8) + 1.0) * v8;
      if (v4 < v3)
      {
        return v3 != v7;
      }

      goto LABEL_13;
    }
  }

  if (v4 >= v3)
  {
    if (*(*&a2.interval.is_nil + 16))
    {
      return 1;
    }

    v8 = *(*&a2.interval.is_nil + 8);
    v7 = **&a2.interval.is_nil;
LABEL_13:
    v3 = v3 + (floor((v4 - v3) / v8) + 1.0) * v8;
    return v3 != v7;
  }

  v7 = **&a2.interval.is_nil;
  return v3 != v7;
}

HealthOrchestration::DeadlineInputSignal::Anchor __swiftcall DeadlineInputSignal.Anchor.merged(with:)(HealthOrchestration::DeadlineInputSignal::Anchor with)
{
  *&result.timestamp = *v1;
  if (*v1 >= *v3)
  {
    *&result.timestamp = *v3;
  }

  v2->timestamp = result.timestamp;
  return result;
}

uint64_t sub_2288125A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22887FBF0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22881263C(uint64_t a1)
{
  v2 = sub_228813BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228812678(uint64_t a1)
{
  v2 = sub_228813BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeadlineInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_228813C50(0, &qword_2813CF2E8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228813BFC();
  sub_22887FCF0();
  sub_22887FB30();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DeadlineInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_228813C50(0, &qword_2813CF308, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228813BFC();
  sub_22887FCE0();
  if (!v2)
  {
    sub_22887FAC0();
    v11 = v10;
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double *sub_228812984@<X0>(double *result@<X0>, double *a2@<X8>)
{
  v3 = *result;
  if (*result >= *v2)
  {
    v3 = *v2;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2288129B8(void *a1)
{
  sub_228813C50(0, &qword_2813CF2E8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228813BFC();
  sub_22887FCF0();
  sub_22887FB30();
  return (*(v4 + 8))(v6, v3);
}

void DeadlineInputSignal.identifier.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000228881F90;
  a1[2] = 0;
  a1[3] = 0;
}

void *DeadlineInputSignal.__allocating_init(observer:provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_2288144C4(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

void *DeadlineInputSignal.init(observer:provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_228814404(a1, a2, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v13;
}

uint64_t sub_228812CC8(double a1)
{
  v3 = *(v1 + 72);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 48);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(v6 - 2);
      if (v8 > a1)
      {
        goto LABEL_8;
      }

      if ((*v6 & 1) == 0)
      {
        break;
      }

LABEL_4:
      v6 += 3;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    v8 = v8 + *(v6 - 1) * (floor((a1 - v8) / *(v6 - 1)) + 1.0);
LABEL_8:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_22882FEDC(0, *(v7 + 2) + 1, 1, v7);
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_22882FEDC((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    *&v7[8 * v10 + 32] = v8;
    goto LABEL_4;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_13:

  v13 = v7;

  sub_228813AC8(&v13);

  if (*(v13 + 2))
  {
    v11 = *(v13 + 4);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void *sub_228812E64()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result[7];
    v3 = result[8];
    __swift_project_boxed_opaque_existential_1(result + 4, v2);
    v4 = (*(v3 + 8))(v2, v3);
    v5 = v1[3];
    ObjectType = swift_getObjectType();
    v19 = v4;
    v18 = v1;
    v7 = *(v5 + 8);
    v8 = type metadata accessor for DeadlineInputSignal();
    v10 = sub_2287FAA70(&unk_2813D09C0, v9, type metadata accessor for DeadlineInputSignal);
    v7(&v19, &v18, v8, v10, ObjectType, v5);
    *&v11 = COERCE_DOUBLE(sub_228812CC8(v4));
    if ((v12 & 1) == 0)
    {
      v13 = *&v11;
      v14 = v1[7];
      v15 = v1[8];
      __swift_project_boxed_opaque_existential_1(v1 + 4, v14);
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = *(v15 + 16);

      v17(sub_228814CB4, v16, v14, v15, v13);
    }
  }

  return result;
}

uint64_t sub_228813024(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v4 = sub_22887F230();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v45 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v32 - v7;
  v49 = sub_22887F2A0();
  v43 = *(v49 - 8);
  v8 = MEMORY[0x28223BE20](v49);
  v41 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v32 - v10;
  v11 = sub_22887F240();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22887F270();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22887F730();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  if (*a1)
  {
    swift_getObjectType();
    sub_22887F770();
    swift_unknownObjectRelease();
  }

  sub_228814C68();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2287FAA70(&qword_2813CF4E8, 255, MEMORY[0x277D85278]);
  v19 = MEMORY[0x277D85278];
  sub_2287FAAB8(0, &qword_2813CF570, MEMORY[0x277D85278]);
  sub_2287F8A2C(&qword_2813CF568, &qword_2813CF570, v19);
  sub_22887F820();
  v20 = sub_22887F740();
  (*(v16 + 8))(v18, v15);
  ObjectType = swift_getObjectType();
  aBlock[4] = v39;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2287E72C0;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);

  sub_22887F260();
  v22 = v36;
  sub_2287FA980();
  sub_22887F760();
  _Block_release(v21);
  (*(v37 + 8))(v22, v38);
  (*(v34 + 8))(v14, v35);

  CFAbsoluteTimeGetCurrent();
  v23 = v41;
  sub_22887F280();
  v24 = v42;
  sub_22887F2C0();
  v43 = *(v43 + 8);
  (v43)(v23, v49);
  v26 = v46;
  v25 = v47;
  v27 = *(v46 + 104);
  v28 = v44;
  v27(v44, *MEMORY[0x277D85180], v47);
  v29 = v45;
  *v45 = 0;
  v27(v29, *MEMORY[0x277D85168], v25);
  MEMORY[0x22AAC06D0](v24, v28, v29, ObjectType);
  v30 = *(v26 + 8);
  v30(v29, v25);
  v30(v28, v25);
  (v43)(v24, v49);
  *v48 = v20;
  swift_unknownObjectRetain();
  sub_22887F780();
  return swift_unknownObjectRelease();
}

uint64_t sub_22881364C()
{

  return swift_deallocClassInstance();
}

void sub_228813688()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_228814C48((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_2288136E4()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    swift_getObjectType();
    sub_22887F770();
  }

  os_unfair_lock_unlock((v1 + 24));
}

Swift::Void __swiftcall DeadlineInputSignal.beginObservation(from:configurations:)(HealthOrchestration::DeadlineInputSignal::Anchor_optional from, Swift::OpaquePointer configurations)
{
  v3 = v2[9];
  v4 = *v2;
  os_unfair_lock_lock((v3 + 24));
  sub_2288145C8((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = v2[3];
  ObjectType = swift_getObjectType();
  v21[0] = v7;
  v20 = v2;
  v10 = *(v8 + 8);
  v12 = sub_2287FAA70(&unk_2813D09C0, v11, type metadata accessor for DeadlineInputSignal);
  v10(v21, &v20, v4, v12, ObjectType, v8);
  *&v13 = COERCE_DOUBLE(sub_228812CC8(v7));
  if ((v14 & 1) == 0)
  {
    v15 = *&v13;
    v16 = v2[7];
    v17 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v16);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = *(v17 + 16);

    v19(sub_228814634, v18, v16, v17, v15);
  }
}

Swift::Void __swiftcall DeadlineInputSignal.stopObservation()()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  (*(v2 + 24))(v1, v2);
}

uint64_t DeadlineInputSignal.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t DeadlineInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_228813A3C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_228813AC8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_228863C50(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_22887FB90();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_22887F500();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_228813CB4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_228813BFC()
{
  result = qword_2813D0A20[0];
  if (!qword_2813D0A20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813D0A20);
  }

  return result;
}

void sub_228813C50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228813BFC();
    v7 = a3(a1, &type metadata for DeadlineInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228813CB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_228863AEC(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_228814210((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22882F8B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_22882F8B4((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_228814210((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_228814210(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_228814404(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v15 = a5;
  v16 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  sub_228811C18();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = MEMORY[0x277D84F90];
  a4[9] = v12;
  a4[2] = a1;
  a4[3] = a2;
  sub_2287EC014(&v14, (a4 + 4));
  return a4;
}

void *sub_2288144C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return sub_228814404(a1, a2, v13, v14, a5, a6);
}

uint64_t sub_2288145C8(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

unint64_t sub_22881463C(uint64_t a1)
{
  result = sub_228814664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_228814664()
{
  result = qword_2813D0AD8[0];
  if (!qword_2813D0AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813D0AD8);
  }

  return result;
}

unint64_t sub_2288146BC()
{
  result = qword_2813D0AD0;
  if (!qword_2813D0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0AD0);
  }

  return result;
}

unint64_t sub_228814714()
{
  result = qword_27D851C88;
  if (!qword_27D851C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851C88);
  }

  return result;
}

unint64_t sub_228814768(void *a1)
{
  a1[1] = sub_2288147A0();
  a1[2] = sub_2288147F4();
  result = sub_228814848();
  a1[3] = result;
  return result;
}

unint64_t sub_2288147A0()
{
  result = qword_2813D09E8;
  if (!qword_2813D09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D09E8);
  }

  return result;
}

unint64_t sub_2288147F4()
{
  result = qword_2813D0A00;
  if (!qword_2813D0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0A00);
  }

  return result;
}

unint64_t sub_228814848()
{
  result = qword_2813D09F8;
  if (!qword_2813D09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D09F8);
  }

  return result;
}

unint64_t sub_2288148A0()
{
  result = qword_2813D09E0;
  if (!qword_2813D09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D09E0);
  }

  return result;
}

uint64_t sub_2288148F4(uint64_t a1, uint64_t a2)
{
  result = sub_2287FAA70(&unk_2813D09D0, a2, type metadata accessor for DeadlineInputSignal);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DeadlineInputSignal.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeadlineInputSignal.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DeadlineInputSignal.Anchor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DeadlineInputSignal.Anchor(uint64_t result, int a2, int a3)
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

uint64_t sub_228814A84(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_228814AE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

unint64_t sub_228814B44()
{
  result = qword_27D851C98;
  if (!qword_27D851C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D851C98);
  }

  return result;
}

unint64_t sub_228814B9C()
{
  result = qword_2813D0A10;
  if (!qword_2813D0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0A10);
  }

  return result;
}

unint64_t sub_228814BF4()
{
  result = qword_2813D0A18;
  if (!qword_2813D0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0A18);
  }

  return result;
}

unint64_t sub_228814C68()
{
  result = qword_2813CF4E0;
  if (!qword_2813CF4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813CF4E0);
  }

  return result;
}

uint64_t SecureCodingCurrentValueWorkPlan.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 SecureCodingCurrentValueWorkPlan.identifier.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t SecureCodingCurrentValueWorkPlan.priority.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t SecureCodingCurrentValueWorkPlan.priority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

__n128 SecureCodingCurrentValueWorkPlan.init(identifier:priority:value:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  v5 = a1[1].n128_u64[0];
  v6 = *a2;
  v7 = *(a2 + 8);
  *a4 = *a1;
  a4[1].n128_u64[0] = v5;
  a4[1].n128_u64[1] = v6;
  a4[2].n128_u8[0] = v7;
  a4[2].n128_u64[1] = a3;
  return result;
}

id SecureCodingCurrentValueWorkPlan.merged(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;

  return v7;
}

uint64_t sub_228814E8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22887FBF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_22887FBF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22887FBF0();

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

uint64_t sub_228814FA8(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0x797469726F697270;
}

uint64_t sub_22881501C()
{
  sub_22887FC90();
  sub_228802B80(v2, *v0);
  return sub_22887FCD0();
}

uint64_t sub_228815064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_228814E8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22881508C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2288054D0();
  *a1 = result;
  return result;
}

uint64_t sub_2288150B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22881510C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void SecureCodingCurrentValueWorkPlan.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  type metadata accessor for SecureCodingCurrentValueWorkPlan.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_22887FAF0();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_22887FCE0();
  if (v2)
  {
    goto LABEL_3;
  }

  v8 = v28;
  v9 = v29;
  v34 = 0;
  sub_228806364();
  sub_22887FAE0();
  v27 = v6;
  v10 = v31;
  v11 = v32;
  sub_2287E76D0(0, &qword_2813CF518);
  v12 = sub_22887F6C0();
  v25 = v10;
  v26 = v11;
  if (!v12)
  {
    type metadata accessor for SecureCodingCurrentValueWorkPlan.Errors();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    sub_2288063B8(v25, v26);
    (*(v8 + 8))(v27, v4);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v30);
    return;
  }

  v13 = v12;
  v34 = 1;
  sub_228803528();
  v14 = v27;
  sub_22887FAE0();
  v15 = v32;
  v23 = v33;
  v24 = v31;
  v34 = 2;
  sub_22880357C();
  sub_22887FAE0();
  v17 = v25;
  v16 = v26;
  (*(v8 + 8))(v14, v4);
  sub_2288063B8(v17, v16);
  v18 = v31;
  v19 = v32;
  v20 = v23;
  *v9 = v24;
  *(v9 + 8) = v15;
  *(v9 + 16) = v20;
  *(v9 + 24) = v18;
  *(v9 + 32) = v19;
  *(v9 + 40) = v13;

  v21 = v13;
  __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t SecureCodingCurrentValueWorkPlan.encode(to:)(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  type metadata accessor for SecureCodingCurrentValueWorkPlan.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_22887FB70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v22 - v5;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v26 = *(v1 + 16);
  v27 = v6;
  v25 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = objc_opt_self();
  v32 = 0;
  v11 = [v10 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v32];
  v12 = v32;
  if (v11)
  {
    v23 = v8;
    v24 = v7;
    v28 = v4;
    v13 = v3;
    v14 = sub_22887F090();
    v16 = v15;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = v29;
    sub_22887FCF0();
    v32 = v14;
    v33 = v16;
    v31 = 0;
    sub_228806744();
    v18 = v30;
    sub_22887FB50();
    if (v18)
    {
      (*(v28 + 8))(v17, v13);
      return sub_2288063B8(v14, v16);
    }

    else
    {
      v32 = v27;
      v33 = v24;
      v34 = v26;
      v31 = 1;
      sub_228803064();

      sub_22887FB50();
      v21 = v28;

      v32 = v23;
      LOBYTE(v33) = v25;
      v31 = 2;
      sub_2288030B8();

      sub_22887FB50();
      sub_2288063B8(v14, v16);

      return (*(v21 + 8))(v17, v13);
    }
  }

  else
  {
    v20 = v12;
    sub_22887F020();

    return swift_willThrow();
  }
}

uint64_t static SecureCodingCurrentValueWorkPlan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_22887FBF0()) && v2 == v6)
  {

    if (sub_228803A60(v3, v5))
    {
      v8 = sub_2287ECD4C(v4, v7);

      if (v8)
      {
        sub_2287E76D0(0, &qword_2813CF4D0);
        return sub_22887F7C0() & 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t SecureCodingCurrentValueWorkPlan.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[5];
  sub_22887F8A0();
  MEMORY[0x22AAC0340](0x616C506B726F573CLL, 0xEB00000000203A6ELL);

  MEMORY[0x22AAC0340](40, 0xE100000000000000);
  v4 = sub_22887FBA0();
  MEMORY[0x22AAC0340](v4);

  MEMORY[0x22AAC0340](41, 0xE100000000000000);
  MEMORY[0x22AAC0340](v2, v1);

  MEMORY[0x22AAC0340](10272, 0xE200000000000000);
  v5 = PriorityRuleSet.description.getter();
  MEMORY[0x22AAC0340](v5);

  MEMORY[0x22AAC0340](2112041, 0xE300000000000000);
  swift_getWitnessTable();
  sub_22887FBE0();

  MEMORY[0x22AAC0340](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_228815BD8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_228815C38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void static InputSignalIdentifier.fileCoordinator.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000228882670;
  a1[2] = 0;
  a1[3] = 0;
}

void static InputSignalSet.LookupKey.fileCoordinator.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000228882670;
  a1[2] = 0;
  a1[3] = 0;
}

void FileCoordinatorInputSignal.identifier.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000228882670;
  a1[2] = 0;
  a1[3] = 0;
}

void FileCoordinatorInputSignal.Configuration.identifier.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000228882670;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t FileCoordinatorInputSignal.Configuration.paths.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_228815E20(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_22887FC90();

    sub_22887F3E0();
    v16 = sub_22887FCD0();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_22887FBF0() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228815FD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v18 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v19 = (v7 - 1) & v7;
LABEL_13:
      sub_22881B930(*(result + 48) + 40 * (v10 | (v3 << 6)), v25);
      v22 = v25[0];
      v23 = v25[1];
      v24 = v26;
      sub_22887FC90();
      __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      sub_22887F340();
      v13 = sub_22887FCD0();
      v14 = -1 << *(a2 + 32);
      v15 = v13 & ~v14;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        break;
      }

      v16 = ~v14;
      while (1)
      {
        sub_22881B930(*(a2 + 48) + 40 * v15, v20);
        v17 = v21;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        LOBYTE(v17) = sub_22884F624(&v22, v17);
        sub_22881B98C(v20);
        if (v17)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_22881B98C(&v22);
      result = v18;
      v7 = v19;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_22881B98C(&v22);
    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v19 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2288161E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22887F060();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_22881BB64(&qword_27D851AC8, 255, MEMORY[0x277CC9260]);
      v26 = sub_22887F330();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_22881BB64(qword_27D851F90, 255, MEMORY[0x277CC9260]);
        v31 = sub_22887F360();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228816598(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    result = MEMORY[0x22AAC0BB0](*(a2 + 40), v13, 4);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 4 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2288166F0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v26 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v30 = a2;
  v31 = a2 + 56;
  v27 = v6;
  v28 = result;
  if (v5)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v29 = (v5 - 1) & v5;
LABEL_13:
      v10 = (*(result + 48) + 48 * (v7 | (v2 << 6)));
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = a2;
      sub_22887FC90();

      sub_22887F3E0();
      sub_22887F3E0();
      v16 = sub_22887FCD0();
      v17 = -1 << *(v15 + 32);
      v18 = v16 & ~v17;
      if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      v20 = *(v30 + 48);
      while (1)
      {
        v21 = (v20 + 48 * v18);
        v22 = v21[2];
        v23 = v21[3];
        v24 = *v21 == v12 && v21[1] == v11;
        if (v24 || (sub_22887FBF0() & 1) != 0)
        {
          v25 = v22 == v14 && v23 == v13;
          if (v25 || (sub_22887FBF0() & 1) != 0)
          {
            break;
          }
        }

        v18 = (v18 + 1) & v19;
        if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      a2 = v30;
      v6 = v27;
      result = v28;
      v5 = v29;
      if (!v29)
      {
        goto LABEL_8;
      }
    }

LABEL_29:

    return 0;
  }

LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v26 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v29 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t FileCoordinatorInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22887FC90();
  sub_22881A3B0(v3, v1);
  return sub_22887FCD0();
}

uint64_t sub_2288169A8()
{
  v1 = *v0;
  sub_22887FC90();
  sub_22881A3B0(v3, v1);
  return sub_22887FCD0();
}

uint64_t sub_2288169F8()
{
  v1 = *v0;
  sub_22887FC90();
  sub_22881A3B0(v3, v1);
  return sub_22887FCD0();
}

uint64_t FileCoordinatorInputSignal.Anchor.hasDifference(from:for:)(uint64_t *a1, uint64_t *a2)
{
  v62 = sub_22887F0C0();
  v5 = *(v62 - 8);
  v6 = MEMORY[0x28223BE20](v62);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v50 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v61 = &v50 - v13;
  v14 = sub_22887F060();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = &v50 - v19;
  v20 = *a2;
  v23 = *(*a2 + 56);
  v22 = *a2 + 56;
  v21 = v23;
  v63 = *a1;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v68 = *v2;
  v27 = (v24 + 63) >> 6;
  v64 = v15 + 32;
  v65 = v15 + 16;
  v58 = v5 + 32;
  v59 = v5 + 16;
  v57 = v5;
  v54 = (v5 + 8);
  v28 = v20;
  v66 = (v15 + 8);

  v30 = 0;
  v50 = v12;
  v55 = v28;
  v56 = v14;
  v60 = v18;
  while (v26)
  {
LABEL_10:
    v32 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v33 = v67;
    (*(v15 + 16))(v67, *(v28 + 48) + *(v15 + 72) * (v32 | (v30 << 6)), v14);
    (*(v15 + 32))(v18, v33, v14);
    if (*(v68 + 16) && (v34 = sub_228819CC0(v18), (v35 & 1) != 0))
    {
      v36 = v57;
      v37 = *(v57 + 72);
      v38 = *(v57 + 16);
      v39 = v62;
      v38(v12, *(v68 + 56) + v37 * v34, v62);
      v40 = *(v36 + 32);
      v40(v61, v12, v39);
      if (!v63 || !*(v63 + 16) || (v41 = sub_228819CC0(v60), (v42 & 1) == 0))
      {

        (*v54)(v61, v62);
        (*v66)(v60, v56);
        return 1;
      }

      v43 = *(v63 + 56) + v41 * v37;
      v44 = v52;
      v45 = v62;
      v38(v52, v43, v62);
      v46 = v51;
      v40(v51, v44, v45);
      v47 = v61;
      v53 = sub_22887F0A0();
      v48 = *v54;
      v49 = v46;
      v12 = v50;
      (*v54)(v49, v45);
      v48(v47, v45);
      v18 = v60;
      v14 = v56;
      result = (*v66)(v60, v56);
      v28 = v55;
      if (v53)
      {

        return 1;
      }
    }

    else
    {
      result = (*v66)(v18, v14);
    }
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v27)
    {

      return 0;
    }

    v26 = *(v22 + 8 * v31);
    ++v30;
    if (v26)
    {
      v30 = v31;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t FileCoordinatorInputSignal.Anchor.merged(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_22881A850(v4, sub_22881A2E8, 0, isUniquelyReferenced_nonNull_native, &v8);

  result = v8;
  *a2 = v8;
  return result;
}

uint64_t sub_228817008(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_2287E5E2C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_22887FBF0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2288171AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22887F0C0();
  v76 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = v59 - v8;
  v75 = sub_22887F060();
  v67 = *(v75 - 8);
  v9 = MEMORY[0x28223BE20](v75);
  v68 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = v59 - v11;
  sub_2287E9708(0, &qword_27D851F68, sub_22881BA00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = a2;
  v65 = v59 - v15;
  v69 = v16;
  v63 = v7;
  v17 = 0;
  v60 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v59[0] = v19;
  v59[1] = v67 + 16;
  v70 = v76 + 16;
  v72 = (v67 + 32);
  v71 = (v76 + 32);
  v61 = (v67 + 8);
  v62 = (v76 + 8);
  while (v23)
  {
    v73 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
    v31 = v60;
    v33 = v66;
    v32 = v67;
    v34 = v75;
    (*(v67 + 16))(v66, *(v60 + 48) + *(v67 + 72) * v25, v75);
    v35 = *(v31 + 56);
    v36 = v76;
    v37 = v74;
    (*(v76 + 16))(v74, v35 + *(v76 + 72) * v25, v4);
    sub_22881BA00();
    v39 = v38;
    v40 = *(v38 + 48);
    v41 = *(v32 + 32);
    v28 = v69;
    v41(v69, v33, v34);
    (*(v36 + 32))(v28 + v40, v37, v4);
    (*(*(v39 - 8) + 56))(v28, 0, 1, v39);
LABEL_17:
    v42 = v65;
    sub_22881BA74(v28, v65);
    sub_22881BA00();
    v43 = (*(*(v39 - 8) + 48))(v42, 1, v39);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *(v39 + 48);
    v46 = v68;
    v47 = v75;
    (*v72)(v68, v42, v75);
    v48 = v63;
    (*v71)(v63, v42 + v45, v4);
    v49 = v64;
    v50 = sub_228819CC0(v46);
    v52 = v51;
    (*v61)(v46, v47);
    if ((v52 & 1) == 0)
    {
      (*v62)(v48, v4);
      return 0;
    }

    v53 = v76;
    v54 = *(v49 + 56) + *(v76 + 72) * v50;
    v55 = v74;
    (*(v76 + 16))(v74, v54, v4);
    sub_22881BB64(&qword_27D851F78, 255, MEMORY[0x277CC9578]);
    v56 = sub_22887F360();
    v57 = *(v53 + 8);
    v57(v55, v4);
    result = (v57)(v48, v4);
    v23 = v73;
    if ((v56 & 1) == 0)
    {
      return v44;
    }
  }

  if (v24 <= v17 + 1)
  {
    v26 = v17 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  v28 = v69;
  while (1)
  {
    v29 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      sub_22881BA00();
      v39 = v58;
      (*(*(v58 - 8) + 56))(v28, 1, 1, v58);
      v73 = 0;
      v17 = v27;
      goto LABEL_17;
    }

    v30 = *(v59[0] + 8 * v29);
    ++v17;
    if (v30)
    {
      v73 = (v30 - 1) & v30;
      v25 = __clz(__rbit64(v30)) | (v29 << 6);
      v17 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2288177B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_2287E5E2C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2288178F4(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_228819D5C(*(*(v3 + 48) + 4 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228817A14(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    sub_2287E5E2C(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {

      return 0;
    }

    v20 = a3(v19, v16);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228817BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002288889C0 == a2)
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

uint64_t sub_228817C40(uint64_t a1)
{
  v2 = sub_22881ADEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228817C7C(uint64_t a1)
{
  v2 = sub_22881ADEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileCoordinatorInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_22881AFD8(0, &qword_27D851E10, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22881ADEC();

  sub_22887FCF0();
  v10[1] = v8;
  sub_22881AE40();
  sub_22881AEF0();
  sub_22887FB50();

  return (*(v5 + 8))(v7, v4);
}

uint64_t FileCoordinatorInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22881AFD8(0, &qword_27D851E48, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22881ADEC();
  sub_22887FCE0();
  if (!v2)
  {
    sub_22881AE40();
    sub_22881B03C();
    sub_22887FAE0();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_228817FD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_22881A850(v4, sub_22881A2E8, 0, isUniquelyReferenced_nonNull_native, &v8);

  result = v8;
  *a2 = v8;
  return result;
}

uint64_t FileCoordinatorInputSignal.__allocating_init(context:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  FileCoordinatorInputSignal.init(context:observer:)(a1, a2, a3, a4);
  return v8;
}

void *FileCoordinatorInputSignal.init(context:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v9 = MEMORY[0x277D84F90];
  v10 = sub_228809744(MEMORY[0x277D84F90]);
  v11 = sub_2288099A4(v9);
  sub_22881B124();
  v12 = swift_allocObject();
  *(v12 + 32) = 0;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v4[6] = a2;
  v4[7] = v12;
  v4[5] = a1;
  v4[2] = a3;
  v4[3] = a4;
  return v4;
}

void FileCoordinatorInputSignal.beginObservation(from:configurations:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(v2 + 56);
  os_unfair_lock_lock(v5 + 8);
  sub_228819358(&v5[4]);
  os_unfair_lock_unlock(v5 + 8);
  v6 = *(v2 + 32);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = a2;
  aBlock[4] = sub_22881B184;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2287E72C0;
  aBlock[3] = &block_descriptor_3;
  v8 = _Block_copy(aBlock);

  [v6 addOperationWithBlock_];
  _Block_release(v8);
}

Swift::Void __swiftcall FileCoordinatorInputSignal.stopObservation()()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 8);
  sub_228819358(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_228818334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = a2 + 32;
    do
    {
      v7 += 8;

      sub_228861508(v8);
      --v6;
    }

    while (v6);
    v5 = v19;
  }

  sub_22887D38C(v5);

  v10 = v3[7];
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock((v10 + 32));
  sub_22881B9E0((v10 + 16), &v19);
  os_unfair_lock_unlock((v10 + 32));

  v11 = v19;
  v12 = v3[3];
  ObjectType = swift_getObjectType();
  v19 = v11;
  v18 = v3;
  v14 = *(v12 + 8);
  v16 = sub_22881BB64(&qword_27D851F50, v15, type metadata accessor for FileCoordinatorInputSignal);
  v14(&v19, &v18, v4, v16, ObjectType, v12);
}

uint64_t sub_2288184D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v107 = a1;
  v108 = a4;
  v100 = a3;
  v81 = a5;
  sub_2287E9708(0, &qword_27D851F48, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v80 - v7;
  v9 = sub_22887F0C0();
  v85 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v91 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v80 - v12;
  v13 = sub_22887F060();
  v106 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v98 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v80 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v109 = &v80 - v19;
  MEMORY[0x28223BE20](v18);
  v94 = &v80 - v20;
  if (a2)
  {
    v21 = v107;

    *v21 = a2;
  }

  v22 = v100 + 56;
  v23 = 1 << *(v100 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v100 + 56);
  v26 = (v23 + 63) >> 6;
  v105 = v106 + 2;
  v93 = v106 + 4;
  v101 = v106 + 1;
  v92 = (v85 + 48);
  v86 = (v85 + 32);
  v84 = (v85 + 16);
  v83 = v85 + 8;
  v82 = v85 + 40;

  v27 = 0;
  v96 = v8;
  v103 = v9;
  v89 = v22;
  v88 = v26;
  for (i = v13; v25; v13 = v68)
  {
LABEL_12:
    while (1)
    {
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = *(v100 + 48);
      v97 = v106[9];
      v31 = v106[2];
      v32 = v106;
      v33 = v94;
      v31(v94, v30 + v97 * (v29 | (v27 << 6)), v13);
      (v32[4])(v109, v33, v13);
      v34 = v95;
      v31(v95, v109, v13);
      v35 = v13;
      v104 = *(v108 + 32);
      v36 = type metadata accessor for FileCoordinatorInputSignal.Presenter();
      v37 = objc_allocWithZone(v36);
      swift_weakInit();
      v99 = v31;
      v31(&v37[OBJC_IVAR____TtCC19HealthOrchestration26FileCoordinatorInputSignal9Presenter_observedURL], v34, v13);
      v38 = v104;
      *&v37[OBJC_IVAR____TtCC19HealthOrchestration26FileCoordinatorInputSignal9Presenter_presentedItemOperationQueue] = v104;
      swift_weakAssign();
      v110.receiver = v37;
      v110.super_class = v36;
      v39 = v38;
      v40 = objc_msgSendSuper2(&v110, sel_init);
      v41 = v106[1];
      v42 = v109;
      v41(v34, v35);
      v43 = v40;
      v44 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v44[1];
      sub_228849BC4(v43, v42, isUniquelyReferenced_nonNull_native);
      v44[1] = v111;
      [objc_opt_self() addFilePresenter_];
      v46 = v96;
      sub_228818D74(v42, v96);
      v47 = v103;
      if ((*v92)(v46, 1, v103) != 1)
      {
        break;
      }

      v13 = i;
      v41(v109, i);

      sub_22881B888(v46, &qword_27D851F48, MEMORY[0x277CC9578]);
      v22 = v89;
      v26 = v88;
      if (!v25)
      {
        goto LABEL_8;
      }
    }

    v87 = v43;
    v104 = v41;
    v48 = *v86;
    v49 = v107;
    v50 = v90;
    (*v86)(v90, v46, v47);
    v51 = v98;
    v52 = v99;
    v99(v98, v109, i);
    (*v84)(v91, v50, v47);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v111 = *v49;
    v54 = v111;
    *v49 = 0x8000000000000000;
    v56 = sub_228819CC0(v51);
    v57 = v54[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_28;
    }

    v60 = v55;
    if (v54[3] >= v59)
    {
      if (v53)
      {
        v63 = v111;
        if (v55)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_228852CCC();
        v63 = v111;
        if (v60)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_22885004C(v59, v53);
      v61 = sub_228819CC0(v98);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_30;
      }

      v56 = v61;
      v63 = v111;
      if (v60)
      {
LABEL_20:
        v64 = v85;
        v65 = v103;
        (*(v85 + 40))(v63[7] + *(v85 + 72) * v56, v91, v103);

        v66 = i;
        v67 = v104;
        v104(v98, i);
        (*(v64 + 8))(v90, v65);
        v68 = v66;
        v67(v109, v66);
        goto LABEL_24;
      }
    }

    v63[(v56 >> 6) + 8] |= 1 << v56;
    v69 = v63[6] + v56 * v97;
    v99 = v48;
    v70 = v98;
    v71 = i;
    v52(v69, v98, i);
    v72 = v85;
    v73 = v103;
    v99(v63[7] + *(v85 + 72) * v56, v91, v103);

    v74 = v104;
    v104(v70, v71);
    (*(v72 + 8))(v90, v73);
    v68 = v71;
    v74(v109, v71);
    v75 = v63[2];
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (v76)
    {
      goto LABEL_29;
    }

    v63[2] = v77;
LABEL_24:
    v78 = v107;

    *v78 = v63;
    v22 = v89;
    v26 = v88;
  }

LABEL_8:
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      *v81 = *v107;
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22887FC20();
  __break(1u);
  return result;
}