uint64_t sub_1B7CCB02C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B7CCAB80(v3, 0, sub_1B7C31320, sub_1B7CCA8B0);
  result = sub_1B7AECF0C(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = v6 + 24 * v5;
    v8 = *v7;
    v9 = (v15 + 32);
    v14 = *(v7 + 8);
    v10 = *(v15 + 16);
    if (v10)
    {
      break;
    }

LABEL_6:

    result = sub_1B7CC9AA4(v8);
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_1B7AECF0C((v12 > 1), v13 + 1, 1);
    }

    ++v5;
    *(v2 + 16) = v13 + 1;
    *(v2 + 16 * v13 + 32) = v14;
    if (v5 == v3)
    {
      return 0;
    }
  }

  while (1)
  {
    v11 = *v9++;
    if (v11 == v8)
    {
      break;
    }

    if (!--v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CCB25C(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v4 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  sub_1B7CCAB80(v5, 0, sub_1B7AECEEC, sub_1B7CCA780);
  a2(0, v5, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    v8 = v7 + 32 * v6;
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v18 + 16);
    v17 = *(v8 + 16);
    if (v11)
    {
      break;
    }

LABEL_11:

    sub_1B7AECF3C(v10, v9);
    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    if (v15 >= v14 >> 1)
    {
      a2(v14 > 1, v15 + 1, 1);
    }

    ++v6;
    *(v4 + 16) = v15 + 1;
    *(v4 + 16 * v15 + 32) = v17;
    if (v6 == v5)
    {
      return 0;
    }
  }

  v12 = (v18 + 40);
  while (1)
  {
    v13 = *(v12 - 1) == v10 && *v12 == v9;
    if (v13 || (sub_1B7CFF590() & 1) != 0)
    {
      break;
    }

    v12 += 2;
    if (!--v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1B7CCB478(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___IMDSpotlightActivityPublisher_monitors);
  swift_getKeyPath();

  os_unfair_lock_lock((v3 + 40));
  sub_1B7CCBE38((v3 + 16), v10);
  os_unfair_lock_unlock((v3 + 40));

  v4 = sub_1B7CCAF40(v10[1], v10[2]);

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8CAE380](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      (*(a2 + 16))(a2, v7);
      swift_unknownObjectRelease();
      ++v6;
      if (v8 == i)
      {
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(v4 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
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
}

uint64_t sub_1B7CCB620(void *a1, const void *a2)
{
  v4 = sub_1B7CFE450();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7CFE470();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  _Block_copy(a2);
  v15 = [a1 queue];
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = sub_1B7AE15E4;
    v17[4] = v14;
    aBlock[4] = sub_1B7CCBD54;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7AE14D0;
    aBlock[3] = &unk_1F2FA8208;
    v22 = _Block_copy(aBlock);
    v18 = a1;

    sub_1B7CFE460();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B7CCBD60();
    v23 = v14;
    sub_1B7C107FC(&unk_1EBA53828, &unk_1B7D135B0);
    v21 = v9;
    sub_1B7C81070(&qword_1EBA50E60, &unk_1EBA53828, &unk_1B7D135B0);
    sub_1B7CFF0D0();
    v19 = v22;
    MEMORY[0x1B8CAE0A0](0, v13, v8, v22);
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v21);
  }

  else
  {
    _Block_copy(a2);
    sub_1B7CCB478(a1, a2);
    _Block_release(a2);
  }
}

uint64_t sub_1B7CCB988(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CC0];
  v14 = sub_1B7CCAAEC(MEMORY[0x1E69E7CC0]);
  v2 = *(a1 + 16);
  sub_1B7CCAB80(v2, 0, sub_1B7AECEEC, sub_1B7CCA780);
  sub_1B7CFF2C0();
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v6 = (v4 + 24 * v3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = *(v15 + 16);
    if (v10)
    {
      break;
    }

LABEL_12:

    swift_unknownObjectRetain();
    ++v3;
    sub_1B7AECF3C(v8, v7);
    swift_unknownObjectRetain();
    sub_1B7CFF290();
    v5 = *(v14 + 16);
    sub_1B7CFF2D0();
    sub_1B7CFF2E0();
    sub_1B7CFF2A0();
    swift_unknownObjectRelease();

    if (v3 == v2)
    {
      return 0;
    }
  }

  v11 = (v15 + 40);
  while (1)
  {
    v12 = *(v11 - 1) == v8 && *v11 == v7;
    if (v12 || (sub_1B7CFF590() & 1) != 0)
    {
      break;
    }

    v11 += 2;
    if (!--v10)
    {
      goto LABEL_12;
    }
  }

  result = swift_unknownObjectRetain();
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1B7CCBBA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7CCBBF4@<X0>(BOOL *a1@<X8>)
{
  result = sub_1B7CC827C(*(v1 + 16), *(v1 + 24));
  v4 = result;
  if (result)
  {
    result = swift_unknownObjectRelease();
  }

  *a1 = v4 != 0;
  return result;
}

uint64_t sub_1B7CCBC50()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  v4 = swift_unknownObjectRetain();
  return sub_1B7CC7F70(v4, v1, v2);
}

void sub_1B7CCBCA8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = sub_1B7CFEA30();
  [v2 removeActivityMonitorWithID_];
}

uint64_t sub_1B7CCBD04(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

unint64_t sub_1B7CCBD60()
{
  result = qword_1EBA50E90;
  if (!qword_1EBA50E90)
  {
    sub_1B7CFE450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E90);
  }

  return result;
}

uint64_t sub_1B7CCBDD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

uint64_t sub_1B7CCBE5C()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA53850);
  sub_1B7AD9040(v0, qword_1EBA53850);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

id sub_1B7CCBEC8()
{
  result = [objc_allocWithZone(IMSpotlightActivityMonitor) init];
  qword_1EBA53868 = result;
  return result;
}

id sub_1B7CCBF58()
{
  v1 = OBJC_IVAR___IMSpotlightActivityMonitor_state;
  v2 = sub_1B7CCCDF0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1B7C107FC(&unk_1EBA53900, qword_1B7D135E8);
  v9 = swift_allocObject();
  *(v9 + 44) = 0;
  *(v9 + 16) = v2;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8 & 1;
  *&v0[v1] = v9;
  v15.receiver = v0;
  v15.super_class = IMSpotlightActivityMonitor;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 defaultCenter];
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v12 selector:? name:? object:?];

  return v12;
}

void sub_1B7CCC0C4()
{
  v1 = v0;
  if (qword_1EBA51640 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EBA53850);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEEF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Connection died, removing all monitors and resetting state", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___IMSpotlightActivityMonitor_state);
  os_unfair_lock_lock((v6 + 44));
  [*(v6 + 32) removeAllObjects];
  *(v6 + 40) = 0;

  os_unfair_lock_unlock((v6 + 44));
}

void sub_1B7CCC224(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if ([v4 containsObject_])
  {
    if (qword_1EBA51640 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EBA53850);
    swift_unknownObjectRetain();
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_unknownObjectRetain();
      sub_1B7C107FC(&qword_1EBA53838, &qword_1B7D135D8);
      v10 = sub_1B7CFEAB0();
      v12 = sub_1B7AED1B8(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "Asked to register activity monitor %s but it was already tracked.", v8, 0xCu);
      sub_1B7AE9168(v9);
      MEMORY[0x1B8CB0E70](v9, -1, -1);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }
  }

  else
  {
    [v4 addObject_];
    sub_1B7CCC3F0(a1);
  }
}

void sub_1B7CCC3F0(uint64_t *a1)
{
  v3 = *(a1 + 24);
  v4 = [a1[2] count];
  if (v3 == 1)
  {
    if (!v4)
    {
      v5 = [objc_opt_self() synchronousSpotlightActivityMonitorQueryProvider];
      if (v5)
      {
        v6 = v5;
        v7 = *a1;
        v8 = a1[1];
        v9 = sub_1B7CFEA30();
        [v6 removeActivityMonitorWithID_];

        if (qword_1EBA51640 != -1)
        {
          swift_once();
        }

        v10 = sub_1B7CFE420();
        sub_1B7AD9040(v10, qword_1EBA53850);
        v11 = sub_1B7CFE400();
        v12 = sub_1B7CFEF00();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_1B7AD5000, v11, v12, "Unregistered activity monitor from IMDPersistenceAgent", v13, 2u);
          MEMORY[0x1B8CB0E70](v13, -1, -1);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1EBA51640 != -1)
        {
          swift_once();
        }

        v25 = sub_1B7CFE420();
        sub_1B7AD9040(v25, qword_1EBA53850);
        v11 = sub_1B7CFE400();
        v26 = sub_1B7CFEEF0();
        if (os_log_type_enabled(v11, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1B7AD5000, v11, v26, "Failed to obtain Spotlight activity monitor query provider", v27, 2u);
          MEMORY[0x1B8CB0E70](v27, -1, -1);
        }
      }

      *(a1 + 24) = 0;
    }
  }

  else if (v4 >= 1)
  {
    v14 = [objc_opt_self() synchronousSpotlightActivityMonitorQueryProvider];
    if (v14)
    {
      v15 = v14;
      v16 = *a1;
      v17 = a1[1];
      v18 = sub_1B7CFEA30();
      [v15 addActivityMonitor:v1 withID:v18];

      *(a1 + 24) = 1;
      if (qword_1EBA51640 != -1)
      {
        swift_once();
      }

      v19 = sub_1B7CFE420();
      sub_1B7AD9040(v19, qword_1EBA53850);
      oslog = sub_1B7CFE400();
      v20 = sub_1B7CFEF00();
      if (os_log_type_enabled(oslog, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1B7AD5000, oslog, v20, "Registered activity monitor with IMDPersistenceAgent", v21, 2u);
        MEMORY[0x1B8CB0E70](v21, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EBA51640 != -1)
      {
        swift_once();
      }

      v22 = sub_1B7CFE420();
      sub_1B7AD9040(v22, qword_1EBA53850);
      oslog = sub_1B7CFE400();
      v23 = sub_1B7CFEEF0();
      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1B7AD5000, oslog, v23, "Failed to obtain Spotlight activity monitor query provider", v24, 2u);
        MEMORY[0x1B8CB0E70](v24, -1, -1);
      }
    }
  }
}

void sub_1B7CCC888(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if ([v4 containsObject_])
  {
    [v4 removeObject_];
    sub_1B7CCC3F0(a1);
  }

  else
  {
    if (qword_1EBA51640 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EBA53850);
    swift_unknownObjectRetain();
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_unknownObjectRetain();
      sub_1B7C107FC(&qword_1EBA53838, &qword_1B7D135D8);
      v10 = sub_1B7CFEAB0();
      v12 = sub_1B7AED1B8(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "Asked to unregister activity monitor %s but it was not tracked.", v8, 0xCu);
      sub_1B7AE9168(v9);
      MEMORY[0x1B8CB0E70](v9, -1, -1);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }
  }
}

void (*sub_1B7CCCC60(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CAE380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B7CCCCE0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1B7CCCCE8(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B8CAE380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1B7CCCD68;
  }

  __break(1u);
  return result;
}

void (*sub_1B7CCCD70(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CAE380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B7CCD7A0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CCCDF0()
{
  v0 = sub_1B7CFE180();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFE170();
  v5 = sub_1B7CFE140();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v13 = v5;
  v14 = v7;
  MEMORY[0x1B8CADCA0](58, 0xE100000000000000);
  v8 = [objc_opt_self() processInfo];
  LODWORD(v4) = [v8 processIdentifier];

  v12[3] = v4;
  v9 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v9);

  v10 = v13;
  [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  return v10;
}

uint64_t sub_1B7CCCF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v25 = a2;
  v26 = a3;
  v6 = sub_1B7CFDED0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR___IMSpotlightActivityMonitor_state);
  os_unfair_lock_lock((v11 + 44));
  [*(v11 + 32) copy];
  sub_1B7CFF0A0();
  swift_unknownObjectRelease();
  sub_1B7AEE088(0, &unk_1EDBE5A38, 0x1E695DFB8);
  swift_dynamicCast();
  os_unfair_lock_unlock((v11 + 44));
  v12 = v29;
  v13 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  sub_1B7CFEEB0();
  sub_1B7CCD660();
  sub_1B7CFF040();
  if (v33)
  {
    v24 = v12;
    do
    {
      while (1)
      {
        sub_1B7C255E0(&v32, &v29);
        sub_1B7C107FC(&qword_1EBA53838, &qword_1B7D135D8);
        if ((swift_dynamicCast() & 1) == 0 || !v30)
        {
          break;
        }

        MEMORY[0x1B8CADDF0]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = v7;
          v15 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B7CFED00();
          v7 = v14;
        }

        sub_1B7CFED40();
        v13 = v31;
        sub_1B7CFF040();
        v12 = v24;
        if (!v33)
        {
          goto LABEL_11;
        }
      }

      sub_1B7CFF040();
    }

    while (v33);
    v12 = v24;
  }

LABEL_11:

  (*(v7 + 8))(v10, v6);
  if (v13 >> 62)
  {
    goto LABEL_23;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_13:
    v17 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B8CAE380](v17, v13);
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v18 = *(v13 + 8 * v17 + 32);
        swift_unknownObjectRetain();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v16 = sub_1B7CFF120();
          if (!v16)
          {
          }

          goto LABEL_13;
        }
      }

      v20 = sub_1B7CFECC0();
      v21 = sub_1B7CFEA30();
      [v18 searchableItemsDidUpdateWithIdentifiers:v20 forDomainIdentifier:v21 context:v28];
      swift_unknownObjectRelease();

      ++v17;
    }

    while (v19 != v16);
  }
}

uint64_t sub_1B7CCD2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v25 = a3;
  v26 = a2;
  v6 = sub_1B7CFDED0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR___IMSpotlightActivityMonitor_state);
  os_unfair_lock_lock((v11 + 44));
  [*(v11 + 32) copy];
  sub_1B7CFF0A0();
  swift_unknownObjectRelease();
  sub_1B7AEE088(0, &unk_1EDBE5A38, 0x1E695DFB8);
  swift_dynamicCast();
  os_unfair_lock_unlock((v11 + 44));
  v12 = v29;
  v13 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  sub_1B7CFEEB0();
  sub_1B7CCD660();
  sub_1B7CFF040();
  if (v33)
  {
    v24 = v12;
    do
    {
      while (1)
      {
        sub_1B7C255E0(&v32, &v29);
        sub_1B7C107FC(&qword_1EBA53838, &qword_1B7D135D8);
        if ((swift_dynamicCast() & 1) == 0 || !v30)
        {
          break;
        }

        MEMORY[0x1B8CADDF0]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = v7;
          v15 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B7CFED00();
          v7 = v14;
        }

        sub_1B7CFED40();
        v13 = v31;
        sub_1B7CFF040();
        v12 = v24;
        if (!v33)
        {
          goto LABEL_11;
        }
      }

      sub_1B7CFF040();
    }

    while (v33);
    v12 = v24;
  }

LABEL_11:

  (*(v7 + 8))(v10, v6);
  if (v13 >> 62)
  {
    goto LABEL_25;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_13:
    v17 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1B8CAE380](v17, v13);
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v19 = *(v13 + 8 * v17 + 32);
        swift_unknownObjectRetain();
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v16 = sub_1B7CFF120();
          if (!v16)
          {
          }

          goto LABEL_13;
        }
      }

      v21 = sub_1B7CFECC0();
      if (v27)
      {
        v18 = sub_1B7CFEA30();
      }

      else
      {
        v18 = 0;
      }

      [v19 searchableItemsDeletedWithIdentifiers:v21 forDomainIdentifier:v18 context:v28];
      swift_unknownObjectRelease();

      ++v17;
    }

    while (v20 != v16);
  }
}

unint64_t sub_1B7CCD660()
{
  result = qword_1EBA538F0;
  if (!qword_1EBA538F0)
  {
    sub_1B7CFDED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA538F0);
  }

  return result;
}

__n128 sub_1B7CCD6F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B7CCD704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B7CCD74C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id IMDIndexingContext.laneOverride.getter()
{
  v1 = [v0 laneOverride];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 unsignedIntegerValue];

  return v3;
}

void sub_1B7CCD80C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 laneOverride];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 == 0;
}

void sub_1B7CCD884(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_1B7CFF050();
  }

  v5 = v3;
  [v2 setLaneOverride_];
}

void IMDIndexingContext.laneOverride.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B7CFF050();
  }

  v4 = v3;
  [v2 setLaneOverride_];
}

void (*IMDIndexingContext.laneOverride.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 laneOverride];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return sub_1B7CCD9E0;
}

void sub_1B7CCD9E0(uint64_t *a1)
{
  if (a1[1])
  {
    v2 = 0;
  }

  else
  {
    v3 = *a1;
    v2 = sub_1B7CFF050();
  }

  v4 = v2;
  [a1[2] setLaneOverride_];
}

unint64_t sub_1B7CCDA4C(unint64_t isUniquelyReferenced_nonNull_bridgeObject, void **a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v4 = MEMORY[0x1E69E7CC0];
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = v2;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B8CAE380](v3, v27);
      }

      else
      {
        if (v3 >= *(v30 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

      v7 = sub_1B7B9E198(isUniquelyReferenced_nonNull_bridgeObject, *a2);
      sub_1B7AEE088(0, &qword_1EBA50E38, 0x1E6964E80);
      v8 = sub_1B7CFECE0();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1B7CFF120();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v4 >> 62;
      if (v4 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B7CFF120();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v35 = v10;
      v6 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (v6)
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = v4;
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_1B7CFF120();
          goto LABEL_23;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1B7CFF250();
      v33 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B7CFF120();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_28:
          if (((v16 >> 1) - v15) < v35)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_1B7C81070(&qword_1EBA50E58, &qword_1EBA53948, &qword_1B7D13648);
            for (i = 0; i != v17; ++i)
            {
              sub_1B7C107FC(&qword_1EBA53948, &qword_1B7D13648);
              v20 = sub_1B7CCCD70(v34, i, v8);
              v22 = *v21;
              (v20)(v34, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v2 = v28;
          v4 = v33;
          if (v35 >= 1)
          {
            v23 = *(v13 + 16);
            v6 = __OFADD__(v23, v35);
            v24 = v23 + v35;
            if (v6)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_28;
        }
      }

      v4 = v33;
      if (v35 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v3 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v2 = sub_1B7CFF120();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1B7CCDDE0()
{
  result = IMDIndexingClientRequestQueue();
  qword_1EBA53910 = result;
  return result;
}

uint64_t sub_1B7CCDE08()
{
  v1 = OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime;
  v2 = sub_1B7CFE440();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_messageAge;
  v4 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id IMDHandleReindexer.init(handles:batchDeferralTime:messageAge:reason:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_1B7CFECC0();

  v9 = [v7 initWithHandles:v8 batchDeferralTime:a3 messageAge:a4 reason:a1];

  return v9;
}

id IMDHandleReindexer.init(handles:batchDeferralTime:messageAge:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B7CFE440();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v23.receiver - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  result = IMDIsRunningInDatabaseServerProcess();
  if (result)
  {
    *&v3[OBJC_IVAR___IMDHandleReindexer_handles] = a1;
    *&v3[OBJC_IVAR___IMDHandleReindexer_reason] = a3;
    v18 = [objc_opt_self() seconds];
    sub_1B7AEE088(0, &qword_1EBA50E40, 0x1E696B008);
    sub_1B7CFDC20();
    *v11 = a2;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E7F38], v7);
    v19 = _s13ConfigurationCMa();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    (*(v8 + 32))(v22 + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v11, v7);
    (*(v13 + 32))(v22 + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_messageAge, v16, v12);
    *&v3[OBJC_IVAR___IMDHandleReindexer_configuration] = v22;
    v23.receiver = v3;
    v23.super_class = IMDHandleReindexer;
    return objc_msgSendSuper2(&v23, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s13ConfigurationCMa()
{
  result = qword_1EBA50E00;
  if (!qword_1EBA50E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall IMDHandleReindexer.reindex()()
{
  v1 = sub_1B7CFE450();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7CFE470();
  v48 = *(v6 - 8);
  isa = v48[8].isa;
  MEMORY[0x1EEE9AC00](v6);
  v47 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7CFE440();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1B7CFE490();
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v39 - v19;
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_7:
    v41 = v5;
    v23 = sub_1B7CFE420();
    sub_1B7AD9040(v23, qword_1EBA5DA08);
    v24 = sub_1B7CFE400();
    v25 = sub_1B7CFEED0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v1;
      _os_log_impl(&dword_1B7AD5000, v24, v25, "Deferring reindexing for %ld seconds.", v26, 0xCu);
      MEMORY[0x1B8CB0E70](v26, -1, -1);
    }

    if (qword_1EBA51650 != -1)
    {
      swift_once();
    }

    v39[1] = qword_1EBA53910;
    sub_1B7CFE480();
    *v13 = v1;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E7F48], v9);
    MEMORY[0x1B8CAD5F0](v17, v13);
    (*(v10 + 8))(v13, v9);
    v27 = v46;
    v45 = *(v45 + 8);
    (v45)(v17, v46);
    v28 = swift_allocObject();
    v29 = v40;
    *(v28 + 16) = v40;
    aBlock[4] = sub_1B7CD21E0;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7AE14D0;
    aBlock[3] = &unk_1F2F9FA00;
    v30 = _Block_copy(aBlock);
    v31 = v29;
    v32 = v47;
    sub_1B7CFE460();
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B7CCBD60();
    sub_1B7C107FC(&unk_1EBA53828, &unk_1B7D135B0);
    sub_1B7C81070(&qword_1EBA50E60, &unk_1EBA53828, &unk_1B7D135B0);
    v33 = v41;
    v34 = v44;
    sub_1B7CFF0D0();
    MEMORY[0x1B8CAE080](v20, v32, v33, v30);
    _Block_release(v30);
    (*(v43 + 8))(v33, v34);
    (v48[1].isa)(v32, v42);
    (v45)(v20, v27);

    return;
  }

  if (*(*&v0[OBJC_IVAR___IMDHandleReindexer_handles] + 16))
  {
    v40 = v0;
    v42 = v6;
    v43 = v2;
    v44 = v1;
    v21 = [objc_opt_self() sharedFeatureFlags];
    v22 = [v21 isBGSTMessageProcessingEnabled];

    if (v22)
    {
      v1 = 0;
    }

    else
    {
      v1 = 10;
    }

    if (qword_1EBA50EA8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v35 = sub_1B7CFE420();
  sub_1B7AD9040(v35, qword_1EBA5DA08);
  v48 = sub_1B7CFE400();
  v36 = sub_1B7CFEEF0();
  if (os_log_type_enabled(v48, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1B7AD5000, v48, v36, "No handles to update Core Spotlight indexes for", v37, 2u);
    MEMORY[0x1B8CB0E70](v37, -1, -1);
  }

  v38 = v48;
}

void sub_1B7CCE968(unint64_t a1)
{
  v2 = sub_1B7CFE120();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v95 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v88 - v11;
  if (qword_1EBA50EA8 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v12 = sub_1B7CFE420();
    v13 = sub_1B7AD9040(v12, qword_1EBA5DA08);
    v14 = a1;
    v96 = v13;
    v15 = sub_1B7CFE400();
    v16 = sub_1B7CFEED0();

    v17 = os_log_type_enabled(v15, v16);
    v90 = v2;
    v89 = v3;
    v94 = v6;
    v93 = v7;
    if (v17)
    {
      v2 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v2 = 136315138;
      v19 = MEMORY[0x1B8CADE30](*&v14[OBJC_IVAR___IMDHandleReindexer_handles], MEMORY[0x1E69E6158]);
      v6 = v20;
      v7 = sub_1B7AED1B8(v19, v20, &aBlock);

      *(v2 + 4) = v7;
      _os_log_impl(&dword_1B7AD5000, v15, v16, "Finding chats to re-index with CoreSpotlight for handles: %s", v2, 0xCu);
      sub_1B7AE9168(v18);
      MEMORY[0x1B8CB0E70](v18, -1, -1);
      MEMORY[0x1B8CB0E70](v2, -1, -1);
    }

    v21 = swift_allocObject();
    v22 = sub_1B7C25004(MEMORY[0x1E69E7CC0]);
    v97 = v21;
    *(v21 + 16) = v22;
    v3 = v21 + 16;
    v23 = *&v14[OBJC_IVAR___IMDHandleReindexer_handles];
    v106 = v14;
    v107 = v23;
    v105 = *(v23 + 16);
    if (!v105)
    {
      break;
    }

    a1 = 0;
    v104 = *MEMORY[0x1E69A7AD8];
    v103 = *MEMORY[0x1E69A7AE0];
    v102 = *MEMORY[0x1E69A7AF0];
    v101 = *MEMORY[0x1E69A7AE8];
    v100 = *MEMORY[0x1E69A7AF8];
    v99 = v107 + 32;
    v98 = xmmword_1B7D0CB70;
    while (1)
    {
      if (a1 >= *(v107 + 16))
      {
        goto LABEL_42;
      }

      v108 = a1;
      v24 = (v99 + 16 * a1);
      v25 = *v24;
      v2 = v24[1];
      sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
      v26 = swift_allocObject();
      *(v26 + 16) = v98;
      *(v26 + 32) = sub_1B7CFEA60();
      *(v26 + 40) = v27;
      *(v26 + 48) = sub_1B7CFEA60();
      *(v26 + 56) = v28;
      *(v26 + 64) = sub_1B7CFEA60();
      *(v26 + 72) = v29;
      *(v26 + 80) = sub_1B7CFEA60();
      *(v26 + 88) = v30;
      *(v26 + 96) = sub_1B7CFEA60();
      *(v26 + 104) = v31;

      v6 = sub_1B7CD25EC(v25, v2, v26, sub_1B7CD1FF4, 0);

      v110 = *(v6 + 16);
      if (v110)
      {
        break;
      }

LABEL_6:
      a1 = v108 + 1;

      v14 = v106;
      if (a1 == v105)
      {
        goto LABEL_24;
      }
    }

    v32 = 0;
    v33 = (v6 + 48);
    v109 = v6;
    while (1)
    {
      if (v32 >= *(v6 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v2 = *(v33 - 2);
      v36 = *(v33 - 1);
      v6 = *v33;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = *v3;
      v38 = aBlock;
      v7 = v3;
      *v3 = 0x8000000000000000;
      v3 = sub_1B7AE1160(v2);
      v40 = *(v38 + 16);
      v41 = (v39 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_37;
      }

      a1 = v39;
      if (*(v38 + 24) < v42)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v45 = aBlock;
        if ((v39 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1B7CE9D14();
        v45 = aBlock;
        if ((a1 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_10:
      v34 = (v45[7] + 16 * v3);
      v35 = v34[1];
      *v34 = v36;
      v34[1] = v6;

LABEL_11:
      v32 = (v32 + 1);
      v3 = v7;
      *v7 = v45;

      v33 += 3;
      v6 = v109;
      if (v110 == v32)
      {
        goto LABEL_6;
      }
    }

    sub_1B7CE6984(v42, isUniquelyReferenced_nonNull_native);
    v43 = sub_1B7AE1160(v2);
    if ((a1 & 1) != (v44 & 1))
    {
      goto LABEL_46;
    }

    v3 = v43;
    v45 = aBlock;
    if (a1)
    {
      goto LABEL_10;
    }

LABEL_20:
    v45[(v3 >> 6) + 8] |= 1 << v3;
    *(v45[6] + 8 * v3) = v2;
    v46 = (v45[7] + 16 * v3);
    *v46 = v36;
    v46[1] = v6;
    v47 = v45[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (!v48)
    {
      v45[2] = v49;
      goto LABEL_11;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_24:
  v50 = v97;

  v51 = sub_1B7CFE400();
  v52 = sub_1B7CFEED0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    swift_beginAccess();
    *(v53 + 4) = *(*(v50 + 16) + 16);

    _os_log_impl(&dword_1B7AD5000, v51, v52, "Computed %ld chats to update CoreSpotlight indexes for.", v53, 0xCu);
    MEMORY[0x1B8CB0E70](v53, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(*v3 + 16))
  {
    v54 = [objc_opt_self() sharedFeatureFlags];
    v55 = [v54 isBGSTMessageProcessingEnabled];

    if (v55)
    {
      v56 = *v3;
      v57 = v14;
      v58 = v3;
      v3 = v57;

      sub_1B7CD2338(v59, v3);

      v33 = [objc_allocWithZone(IMDPersistentTaskQueryProvider) init];
      sub_1B7AEE088(0, &qword_1EDBE5A20, off_1E7CB5138);
      v60 = sub_1B7CFECC0();

      [v33 storeTasks_];

      v61 = v93;
      v62 = v91;
      v63 = v94;
      (v93[2])(v91, *(v3 + OBJC_IVAR___IMDHandleReindexer_configuration) + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_messageAge, v94);
      v64 = [objc_opt_self() seconds];
      v65 = v92;
      sub_1B7CFDC40();

      v66 = v61[1];
      v66(v62, v63);
      sub_1B7CFDC30();
      v66(v65, v63);
      sub_1B7CFE0C0();
      v67 = *v58;
      v68 = *(*v58 + 16);
      if (v68)
      {
        v110 = v33;
        v69 = sub_1B7CD9494(v68, 0);
        v70 = sub_1B7CDA0D8(&aBlock, v69 + 4, v68, v67);

        sub_1B7AEC4CC();
        if (v70 == v68)
        {
          v33 = v110;
          goto LABEL_39;
        }

        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        sub_1B7CFF740();
        __break(1u);
      }

      else
      {
LABEL_38:
        v69 = MEMORY[0x1E69E7CC0];
LABEL_39:
        v76 = *(v3 + OBJC_IVAR___IMDHandleReindexer_reason);
        sub_1B7C2F4A4(v69);

        sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
        v77 = sub_1B7CFECC0();

        v78 = v95;
        v79 = sub_1B7CFE0A0();
        v80 = *(*sub_1B7C40CA8(2) + 144);

        v81 = v80(2, v76);

        v115 = sub_1B7CCF5FC;
        v116 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v112 = 1107296256;
        v113 = sub_1B7AE14D0;
        v114 = &unk_1F2F9F7A8;
        v82 = _Block_copy(&aBlock);

        [v33 scheduleMessageGUIDsInChatRowIDs:v77 afterDate:v79 flag:2 lane:v81 reason:v76 completionBlock:v82];
        _Block_release(v82);

        (*(v89 + 8))(v78, v90);
      }
    }

    else
    {
      v71 = [objc_opt_self() queryProvider];
      v72 = *v3;
      v73 = *(v72 + 16);
      if (v73)
      {
        v74 = sub_1B7CD9410(*(v72 + 16), 0);
        v75 = sub_1B7CD9F80(&aBlock, v74 + 4, v73, v72);

        sub_1B7AEC4CC();
        if (v75 != v73)
        {
          goto LABEL_45;
        }

        v50 = v97;
        v14 = v106;
      }

      v83 = sub_1B7CFECC0();

      v84 = [objc_opt_self() contextWithReason_];
      v85 = swift_allocObject();
      *(v85 + 16) = v14;
      *(v85 + 24) = v50;
      v115 = sub_1B7CD2894;
      v116 = v85;
      aBlock = MEMORY[0x1E69E9820];
      v112 = 1107296256;
      v113 = sub_1B7C30C34;
      v114 = &unk_1F2FA8330;
      v86 = _Block_copy(&aBlock);
      v87 = v14;

      [v71 addChatGUIDs:v83 context:v84 completionHandler:v86];
      _Block_release(v86);

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

void sub_1B7CCF5FC()
{
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B7CFE420();
  sub_1B7AD9040(v0, qword_1EBA5DA08);
  oslog = sub_1B7CFE400();
  v1 = sub_1B7CFEED0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B7AD5000, oslog, v1, "Scheduled messages for reindexing!", v2, 2u);
    MEMORY[0x1B8CB0E70](v2, -1, -1);
  }
}

uint64_t sub_1B7CCF6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  swift_beginAccess();
  v10 = *(a3 + 16);
  v11 = *(v10 + 16);
  if (!v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v15 = a2;
  v16 = v5;
  v12 = sub_1B7CD9410(v11, 0);
  v17 = sub_1B7CD9F80(&v18, v12 + 4, v11, v10);

  result = sub_1B7AEC4CC();
  if (v17 == v11)
  {
    a2 = v15;
    v5 = v16;
LABEL_5:
    (*(v6 + 16))(v9, *(a2 + OBJC_IVAR___IMDHandleReindexer_configuration) + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_messageAge, v5);
    sub_1B7CCF8A8(v12, v9);

    return (*(v6 + 8))(v9, v5);
  }

  __break(1u);
  return result;
}

void sub_1B7CCF8A8(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = sub_1B7CFE450();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7CFE470();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B7CFE440();
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1B7CFE490();
  isa = v70[-1].isa;
  v16 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v70);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v53 - v20;
  v68 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v21 = *(v68 - 8);
  v61 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v23 = &v53 - v22;
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    __break(1u);
    goto LABEL_18;
  }

  v60 = v12;
  v12 = *(a1 + 16);
  if (v12)
  {
    v55 = v9;
    v56 = v7;
    v57 = v8;
    v58 = v4;
    v59 = v3;
    sub_1B7AEE088(0, &qword_1EBA50CB8, off_1E7CB5108);
    sub_1B7AEE088(0, &unk_1EDBE5930, 0x1E696AE18);
    sub_1B7C107FC(&qword_1EBA52F88, &qword_1B7D0FFA8);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B7D0A6F0;
    v25 = *MEMORY[0x1E69A6B70];
    v26 = sub_1B7CFEA60();
    v28 = v27;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1B7CD289C();
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    *(v24 + 96) = sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    *(v24 + 104) = sub_1B7C81070(&qword_1EBA53940, &unk_1EBA525A0, "D\r\b");
    *(v24 + 72) = a1;

    v29 = sub_1B7CFEE80();
    v9 = *(v21 + 16);
    (v9)(v23, v69, v68);
    v54 = sub_1B7CD28F0(v29, v23);

    if (qword_1EBA50EA8 == -1)
    {
LABEL_4:
      v30 = sub_1B7CFE420();
      sub_1B7AD9040(v30, qword_1EBA5DA08);

      v31 = sub_1B7CFE400();
      v32 = sub_1B7CFEED0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        *(v33 + 4) = v12;

        _os_log_impl(&dword_1B7AD5000, v31, v32, "Queuing up reindexing for %ld chats", v33, 0xCu);
        MEMORY[0x1B8CB0E70](v33, -1, -1);
      }

      else
      {
      }

      if (qword_1EBA51650 != -1)
      {
        swift_once();
      }

      v53 = qword_1EBA53910;
      sub_1B7CFE480();
      v38 = v67;
      v40 = v62;
      v39 = v63;
      v41 = v64;
      (*(v63 + 16))(v62, *&v67[OBJC_IVAR___IMDHandleReindexer_configuration] + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v64);
      v42 = v65;
      MEMORY[0x1B8CAD5F0](v18, v40);
      (*(v39 + 8))(v40, v41);
      isa = *(isa + 1);
      (isa)(v18, v70);
      v43 = v68;
      (v9)(v23, v69, v68);
      v44 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v45 = swift_allocObject();
      v46 = v54;
      *(v45 + 16) = v38;
      *(v45 + 24) = v46;
      (*(v21 + 32))(v45 + v44, v23, v43);
      aBlock[4] = sub_1B7CD2C18;
      aBlock[5] = v45;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7AE14D0;
      aBlock[3] = &unk_1F2F9F758;
      v47 = _Block_copy(aBlock);
      v48 = v38;
      v49 = v46;
      v50 = v60;
      sub_1B7CFE460();
      v71 = MEMORY[0x1E69E7CC0];
      sub_1B7CCBD60();
      sub_1B7C107FC(&unk_1EBA53828, &unk_1B7D135B0);
      sub_1B7C81070(&qword_1EBA50E60, &unk_1EBA53828, &unk_1B7D135B0);
      v51 = v56;
      v52 = v59;
      sub_1B7CFF0D0();
      MEMORY[0x1B8CAE080](v42, v50, v51, v47);
      _Block_release(v47);

      (*(v58 + 8))(v51, v52);
      (*(v55 + 8))(v50, v57);
      (isa)(v42, v70);

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v34 = sub_1B7CFE420();
  sub_1B7AD9040(v34, qword_1EBA5DA08);
  v70 = sub_1B7CFE400();
  v35 = sub_1B7CFEEF0();
  if (os_log_type_enabled(v70, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B7AD5000, v70, v35, "No chats to reindex recent messages", v36, 2u);
    MEMORY[0x1B8CB0E70](v36, -1, -1);
  }

  v37 = v70;
}

void sub_1B7CD01C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedFeatureFlags];
  v6 = [v5 isSpotlightRefactorEnabled];

  if (v6)
  {
    sub_1B7CD0250(a2, a3);
  }

  else
  {
    sub_1B7CD0538(a2, a3);
  }
}

void sub_1B7CD0250(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B7CFE420();
  sub_1B7AD9040(v11, qword_1EBA5DA08);
  v12 = sub_1B7CFE400();
  v13 = sub_1B7CFEED0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B7AD5000, v12, v13, "Fetching batch of messages to reindex", v14, 2u);
    MEMORY[0x1B8CB0E70](v14, -1, -1);
  }

  v15 = [objc_allocWithZone(IMDIndexingContext) initForReindexing:1 reason:*&v3[OBJC_IVAR___IMDHandleReindexer_reason]];
  v16 = [objc_opt_self() sharedController];
  (*(v7 + 16))(v10, a2, v6);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = a1;
  (*(v7 + 32))(v18 + v17, v10, v6);
  aBlock[4] = sub_1B7CD2C88;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7CD1914;
  aBlock[3] = &unk_1F2FA83A8;
  v19 = _Block_copy(aBlock);
  v20 = v3;
  v21 = a1;

  [v16 _indexNextBatchOfMessagesWithFetcher_context_completionHandler_];
  _Block_release(v19);
}

void sub_1B7CD0538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v5 = sub_1B7CFE450();
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1B7CFE470();
  v79 = *(v81 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v73 = *(v10 - 8);
  v74 = v10;
  v71 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v66 - v11;
  v12 = sub_1B7CFE490();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v66 - v16;
  v17 = sub_1B7CFE440();
  v85 = *(v17 - 8);
  isa = v85[8].isa;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v21 = sub_1B7CFE420();
  sub_1B7AD9040(v21, qword_1EBA5DA08);
  v22 = sub_1B7CFE400();
  v23 = sub_1B7CFEED0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1B7AD5000, v22, v23, "Fetching batch of messages to reindex", v24, 2u);
    MEMORY[0x1B8CB0E70](v24, -1, -1);
  }

  v68 = v3;
  v25 = *&v3[OBJC_IVAR___IMDHandleReindexer_reason];
  v84 = a1;
  v26 = sub_1B7CD0F24();
  v27 = v26;
  v28 = v26 >> 62;
  if (v26 >> 62)
  {
    if (sub_1B7CFF120())
    {
LABEL_7:

      v29 = sub_1B7CFE400();
      v30 = sub_1B7CFEED0();
      v31 = os_log_type_enabled(v29, v30);
      v67 = v17;
      if (v31)
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        if (v28)
        {
          v33 = sub_1B7CFF120();
        }

        else
        {
          v33 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v32 + 4) = v33;

        _os_log_impl(&dword_1B7AD5000, v29, v30, "Kicking off indexing of %ld searchable items", v32, 0xCu);
        MEMORY[0x1B8CB0E70](v32, -1, -1);
      }

      else
      {
      }

      sub_1B7AEE088(0, &qword_1EBA50E38, 0x1E6964E80);
      v34 = sub_1B7CFECC0();
      sub_1B7AEE088(0, &qword_1EBA50CC0, 0x1E69A7FF0);
      v35 = sub_1B7CFECC0();
      v36 = _IMDSpotlightIndexForIndexingReason();
      if (v36)
      {
        v37 = v36;

        sub_1B7B99408(v34, v35, v25, v37);

        swift_unknownObjectRelease();
        v38 = v68;
        v39 = sub_1B7CFE400();
        v40 = sub_1B7CFEED0();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock[0] = v42;
          *v41 = 136315138;
          (v85[2].isa)(v20, *&v38[OBJC_IVAR___IMDHandleReindexer_configuration] + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v67);
          v43 = sub_1B7CFEAC0();
          v45 = sub_1B7AED1B8(v43, v44, aBlock);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_1B7AD5000, v39, v40, "Scheduling fetching the next batch of messages for re-indexing after %s seconds", v41, 0xCu);
          sub_1B7AE9168(v42);
          MEMORY[0x1B8CB0E70](v42, -1, -1);
          MEMORY[0x1B8CB0E70](v41, -1, -1);
        }

        v46 = v84;
        if (qword_1EBA51650 != -1)
        {
          swift_once();
        }

        v84 = qword_1EBA53910;
        v47 = v69;
        sub_1B7CFE480();
        v48 = v85;
        v49 = v67;
        (v85[2].isa)(v20, *&v38[OBJC_IVAR___IMDHandleReindexer_configuration] + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v67);
        v50 = v70;
        MEMORY[0x1B8CAD5F0](v47, v20);
        (v48[1].isa)(v20, v49);
        v51 = v77;
        v85 = *(v76 + 8);
        (v85)(v47, v77);
        v53 = v72;
        v52 = v73;
        v54 = v74;
        (*(v73 + 16))(v72, v75, v74);
        v55 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v56 = swift_allocObject();
        *(v56 + 16) = v38;
        *(v56 + 24) = v46;
        (*(v52 + 32))(v56 + v55, v53, v54);
        aBlock[4] = sub_1B7CD2E08;
        aBlock[5] = v56;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B7AE14D0;
        aBlock[3] = &unk_1F2F9F6B8;
        v57 = _Block_copy(aBlock);
        v58 = v38;
        v59 = v46;
        v60 = v78;
        sub_1B7CFE460();
        v86 = MEMORY[0x1E69E7CC0];
        sub_1B7CCBD60();
        sub_1B7C107FC(&unk_1EBA53828, &unk_1B7D135B0);
        sub_1B7C81070(&qword_1EBA50E60, &unk_1EBA53828, &unk_1B7D135B0);
        v61 = v80;
        v62 = v83;
        sub_1B7CFF0D0();
        MEMORY[0x1B8CAE080](v50, v60, v61, v57);
        _Block_release(v57);
        (*(v82 + 8))(v61, v62);
        (*(v79 + 8))(v60, v81);
        (v85)(v50, v51);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  v85 = sub_1B7CFE400();
  v63 = sub_1B7CFEED0();
  if (os_log_type_enabled(v85, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_1B7AD5000, v85, v63, "Finished scheduling reindexing", v64, 2u);
    MEMORY[0x1B8CB0E70](v64, -1, -1);
  }

  v65 = v85;
}

unint64_t sub_1B7CD0F24()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v12 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0;
  aBlock[4] = sub_1B7CD2E98;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA8498;
  v4 = _Block_copy(aBlock);

  v5 = v0;

  IMDPersistencePerformBlock(v4, 1, v6);
  _Block_release(v4);
  swift_beginAccess();
  v7 = *(v1 + 16);

  v9 = sub_1B7CCDA4C(v8, &v12);

  sub_1B7AEE088(0, &qword_1EBA50CC0, 0x1E69A7FF0);
  sub_1B7CFECD0();

  return v9;
}

uint64_t sub_1B7CD10D8(void *a1, void *a2, uint64_t a3)
{
  v52 = a3;
  v53 = a2;
  v4 = sub_1B7CFE450();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1B7CFE470();
  v62 = *(v64 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v9 = *(v51 - 8);
  v56 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v49 - v10;
  v11 = sub_1B7CFE490();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v49 - v15;
  v16 = sub_1B7CFE440();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA50EA8 != -1)
  {
    swift_once();
  }

  v21 = sub_1B7CFE420();
  sub_1B7AD9040(v21, qword_1EBA5DA08);
  v22 = a1;
  v23 = sub_1B7CFE400();
  v24 = sub_1B7CFEED0();

  v25 = os_log_type_enabled(v23, v24);
  v54 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v26 = 136315138;
    v27 = v17;
    (*(v17 + 16))(v20, *&v22[OBJC_IVAR___IMDHandleReindexer_configuration] + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v16);
    v28 = v16;
    v29 = sub_1B7CFEAC0();
    v31 = sub_1B7AED1B8(v29, v30, aBlock);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_1B7AD5000, v23, v24, "Scheduling fetching the next batch of messages for re-indexing after %s seconds", v26, 0xCu);
    v32 = v50;
    sub_1B7AE9168(v50);
    MEMORY[0x1B8CB0E70](v32, -1, -1);
    MEMORY[0x1B8CB0E70](v26, -1, -1);
  }

  else
  {
    v27 = v17;
    v28 = v16;
  }

  if (qword_1EBA51650 != -1)
  {
    swift_once();
  }

  v50 = qword_1EBA53910;
  v33 = v55;
  sub_1B7CFE480();
  v34 = v54;
  (*(v27 + 16))(v20, *&v54[OBJC_IVAR___IMDHandleReindexer_configuration] + OBJC_IVAR____TtCE14IMDPersistenceCSo18IMDHandleReindexerP33_C7D6950E930B81ED1AC79C62E336298213Configuration_deferralTime, v28);
  v35 = v58;
  MEMORY[0x1B8CAD5F0](v33, v20);
  (*(v27 + 8))(v20, v28);
  v36 = v60;
  v59 = *(v59 + 8);
  (v59)(v33, v60);
  v37 = v57;
  v38 = v51;
  (*(v9 + 16))(v57, v52, v51);
  v39 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v40 = swift_allocObject();
  v41 = v53;
  *(v40 + 16) = v34;
  *(v40 + 24) = v41;
  (*(v9 + 32))(v40 + v39, v37, v38);
  aBlock[4] = sub_1B7CD2D18;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA83F8;
  v42 = _Block_copy(aBlock);
  v43 = v34;
  v44 = v41;
  v45 = v61;
  sub_1B7CFE460();
  v67 = MEMORY[0x1E69E7CC0];
  sub_1B7CCBD60();
  sub_1B7C107FC(&unk_1EBA53828, &unk_1B7D135B0);
  sub_1B7C81070(&qword_1EBA50E60, &unk_1EBA53828, &unk_1B7D135B0);
  v46 = v63;
  v47 = v66;
  sub_1B7CFF0D0();
  MEMORY[0x1B8CAE080](v35, v45, v46, v42);
  _Block_release(v42);
  (*(v65 + 8))(v46, v47);
  (*(v62 + 8))(v45, v64);
  (v59)(v35, v36);
}

void sub_1B7CD17FC(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (a1)
  {

    sub_1B7CD10D8(a3, a4, a5);
  }

  else
  {
    if (qword_1EBA50EA8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EBA5DA08);
    oslog = sub_1B7CFE400();
    v6 = sub_1B7CFEED0();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, oslog, v6, "No more chats to reindex, stopping", v7, 2u);
      MEMORY[0x1B8CB0E70](v7, -1, -1);
    }
  }
}

void sub_1B7CD1914(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, v7);
}

void sub_1B7CD198C(uint64_t a1, void (*a2)(unint64_t *__return_ptr, id), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  v39 = *(a4 + 16);
  if (!v39)
  {
LABEL_25:
    v32 = [objc_opt_self() synchronousDatabase];
    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1B7D0A7B0;
    *(v33 + 32) = a5;
    *(v33 + 40) = a6;

    v34 = sub_1B7CFECC0();

    v35 = sub_1B7CFECC0();
    v36 = swift_allocObject();
    v36[2] = v7;
    v36[3] = a2;
    v36[4] = a3;
    v53 = sub_1B7CD2F18;
    v54 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1B7CD1F70;
    v52 = &unk_1F2FA8560;
    v37 = _Block_copy(&aBlock);

    [v32 fetchChatRecordsWithAtLeastHandles:v34 serviceNames:v35 style:43 completionHandler:v37];
    _Block_release(v37);
    swift_unknownObjectRelease();

    return;
  }

  v8 = 0;
  v38 = a4 + 32;
  while (1)
  {
    v42 = v8;
    v9 = (v38 + 16 * v8);
    v11 = *v9;
    v10 = v9[1];

    v12 = sub_1B7CFEA30();
    v13 = sub_1B7CFEA30();

    v14 = IMDChatRecordCopyChatsWithHandleOnService(v12, v13);

    if (v14)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_4;
      }

      aBlock = 0;
      sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
      sub_1B7CFECD0();

      v15 = aBlock;
      if (aBlock)
      {
        break;
      }
    }

LABEL_4:
    v8 = v42 + 1;
    if (v42 + 1 == v39)
    {
      goto LABEL_25;
    }
  }

  v16 = aBlock & 0xFFFFFFFFFFFFFF8;
  if (!(aBlock >> 62))
  {
    v17 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }

  v17 = sub_1B7CFF120();
  if (!v17)
  {
LABEL_3:

    goto LABEL_4;
  }

LABEL_10:
  v18 = 0;
  v47 = v15;
  v48 = v15 & 0xC000000000000001;
  v45 = v17;
  v46 = v15 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v48)
    {
      v19 = MEMORY[0x1B8CAE380](v18, v15);
    }

    else
    {
      if (v18 >= *(v16 + 16))
      {
        goto LABEL_27;
      }

      v19 = *(v15 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    a2(&aBlock, v19);
    swift_beginAccess();
    v23 = aBlock;
    v22 = v50;
    v24 = v51;
    v25 = *(v7 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 16) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = v25[2];

      v31 = sub_1B7CA36E0(0, v30 + 1, 1, v25);
      *(a1 + 16) = v31;

      v25 = v31;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1B7CA36E0((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[3 * v28];
    v29[4] = v23;
    v29[5] = v22;
    v29[6] = v24;
    v7 = a1;
    *(a1 + 16) = v25;
    swift_endAccess();

    ++v18;
    v16 = v46;
    v15 = v47;
    if (v21 == v45)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1B7CD1DBC(unint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, id))
{
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v6 = 0;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v22 = v4 & 0xC000000000000001;
    v19 = v4;
    v20 = a2;
    v18 = i;
    while (1)
    {
      if (v22)
      {
        v7 = MEMORY[0x1B8CAE380](v6, v4);
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      a3(v24, v7);
      swift_beginAccess();
      v11 = v24[0];
      v10 = v24[1];
      v12 = v24[2];
      v13 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1B7CA36E0(0, v13[2] + 1, 1, v13);
        *(a2 + 16) = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1B7CA36E0((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v17 = &v13[3 * v16];
      v17[4] = v11;
      v17[5] = v10;
      v17[6] = v12;
      a2 = v20;
      *(v20 + 16) = v13;
      swift_endAccess();

      ++v6;
      v4 = v19;
      if (v9 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_1B7CD1F70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
  v3 = sub_1B7CFECE0();

  v2(v3);
}

void sub_1B7CD1FF4(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = [a1 rowID];
  v4 = [a1 guid];
  v5 = sub_1B7CFEA60();
  v7 = v6;

  a2[1] = v5;
  a2[2] = v7;
}

void __swiftcall IMDHandleReindexer.init()(IMDHandleReindexer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1B7CD2144(uint64_t a1, id a2)
{
  v3 = [a2 nextBatch];
  sub_1B7AEE088(0, &unk_1EDBE5910, off_1E7CB5100);
  v4 = sub_1B7CFECE0();

  swift_beginAccess();
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
}

void sub_1B7CD21F0()
{
  v0 = sub_1B7CFE440();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B7CD22BC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B7CD22BC()
{
  if (!qword_1EBA50FB8)
  {
    sub_1B7AEE088(255, &qword_1EBA50E40, 0x1E696B008);
    v0 = sub_1B7CFDC50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA50FB8);
    }
  }
}

uint64_t sub_1B7CD2338(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B7CFF2C0();
    v6 = v2 + 64;
    v7 = -1 << *(v2 + 32);
    v8 = sub_1B7CFF0E0();
    v9 = *(v2 + 36);
    result = objc_opt_self();
    v10 = 0;
    v29 = *(a2 + OBJC_IVAR___IMDHandleReindexer_reason);
    v30 = result;
    v27 = v2 + 72;
    v28 = v9;
    v31 = v2;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v2 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v2 + 36))
      {
        goto LABEL_22;
      }

      v32 = v10;
      v9 = v3;
      v13 = (*(v2 + 56) + 16 * v8);
      v14 = *v13;
      v15 = v13[1];

      v16 = [v30 contextWithReason_];
      v17 = objc_allocWithZone(IMDPersistentTask);
      v18 = sub_1B7CFEA30();
      [v17 initWithGUIDForSpotlight:v18 flag:3 context:v16];
      v2 = v31;

      sub_1B7CFF290();
      v19 = *(v33 + 16);
      sub_1B7CFF2D0();
      sub_1B7CFF2E0();
      result = sub_1B7CFF2A0();
      v11 = 1 << *(v31 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v20 = *(v6 + 8 * v12);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v3 = v9;
      LODWORD(v9) = v28;
      if (v28 != *(v31 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v11 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v12 << 6;
        v23 = v12 + 1;
        v24 = (v27 + 8 * v12);
        while (v23 < (v11 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1B7C8CB5C(v8, v28, 0);
            v11 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1B7C8CB5C(v8, v28, 0);
      }

LABEL_4:
      v10 = v32 + 1;
      v8 = v11;
      if (v32 + 1 == v3)
      {
        return v33;
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

uint64_t sub_1B7CD25EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 && *(a3 + 16))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a4;
    v12[4] = a5;
    v12[5] = a3;
    v12[6] = a1;
    v12[7] = a2;
    v22[4] = sub_1B7CD2F08;
    v22[5] = v12;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_1B7AE14D0;
    v22[3] = &unk_1F2FA8510;
    v13 = _Block_copy(v22);

    IMDPersistencePerformBlock(v13, 1, v14);
    _Block_release(v13);
    swift_beginAccess();
    v15 = *(v11 + 16);

    return v15;
  }

  if (qword_1EBA50EA8 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v16 = sub_1B7CFE420();
  sub_1B7AD9040(v16, qword_1EBA5DA08);

  v17 = sub_1B7CFE400();
  v18 = sub_1B7CFEEF0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1B7AED1B8(a1, a2, v22);
    _os_log_impl(&dword_1B7AD5000, v17, v18, "Handle (%s) or services is empty", v19, 0xCu);
    sub_1B7AE9168(v20);
    MEMORY[0x1B8CB0E70](v20, -1, -1);
    MEMORY[0x1B8CB0E70](v19, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1B7CD289C()
{
  result = qword_1EBA50E88;
  if (!qword_1EBA50E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E88);
  }

  return result;
}

id sub_1B7CD28F0(uint64_t a1, char *a2)
{
  v25 = a2;
  v26 = sub_1B7CFE120();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithChatPredicate:a1 sortAscending:1];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 seconds];
  sub_1B7CFDC40();

  sub_1B7CFDC30();
  v16 = *(v8 + 8);
  v16(v11, v7);
  sub_1B7AEE088(0, &unk_1EDBE5930, 0x1E696AE18);
  sub_1B7C107FC(&qword_1EBA52F88, &qword_1B7D0FFA8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B7D0A6F0;
  v18 = *MEMORY[0x1E69A7148];
  v19 = sub_1B7CFEA60();
  v21 = v20;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1B7CD289C();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  sub_1B7CFE0C0();
  v22 = sub_1B7CFE0A0();
  (*(v3 + 8))(v6, v26);
  *(v17 + 96) = sub_1B7AEE088(0, &qword_1EDBE59E0, 0x1E695DF00);
  *(v17 + 104) = sub_1B7CD2EA0();
  *(v17 + 72) = v22;
  v23 = sub_1B7CFEE80();
  [v14 setPredicate_];

  [v14 setBatchSize_];
  v16(v25, v7);
  return v14;
}

void sub_1B7CD2C18()
{
  v1 = *(sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1B7CD01C8(v2, v3, v4);
}

void sub_1B7CD2C88(char a1, uint64_t a2)
{
  v5 = *(sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1B7CD17FC(a1, a2, v6, v7, v8);
}

uint64_t sub_1B7CD2D30()
{
  v1 = sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7CD2E20(uint64_t (*a1)(void, unint64_t))
{
  v3 = *(sub_1B7C107FC(&qword_1EBA53918, &qword_1B7D13628) - 8);
  v4 = *(v1 + 16);
  return a1(*(v1 + 24), v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
}

unint64_t sub_1B7CD2EA0()
{
  result = qword_1EBA50C78;
  if (!qword_1EBA50C78)
  {
    sub_1B7AEE088(255, &qword_1EDBE59E0, 0x1E695DF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50C78);
  }

  return result;
}

uint64_t sub_1B7CD2F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1B7AE3A9C((v8 > 1), v9 + 1, 1, v7);
  }

  v14 = MEMORY[0x1E69E6158];
  v15 = &off_1F2FA8B58;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v7[2] = v10;
  sub_1B7AE910C(&v13, &v7[5 * v9 + 4]);
  v11 = v7[3];
  if ((v9 + 2) > (v11 >> 1))
  {
    v7 = sub_1B7AE3A9C((v11 > 1), v9 + 2, 1, v7);
  }

  v14 = MEMORY[0x1E69E6530];
  v15 = &off_1F2FA89F8;
  *&v13 = a1;
  v7[2] = v9 + 2;
  sub_1B7AE910C(&v13, &v7[5 * v10 + 4]);
  sub_1B7AE3B2C(0xD00000000000003DLL, 0x80000001B7D5B360, 0);
  if (!v3)
  {
    sub_1B7AF3FE4(v7);
  }
}

void sub_1B7CD3170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v77 = a3;
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B7CFE420();
  sub_1B7AD9040(v8, qword_1EBA5DA20);

  v9 = sub_1B7CFE400();
  v10 = sub_1B7CFEEE0();

  v79 = a2;
  *(&v77 + 1) = a4;
  v78 = a1;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v84 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x1B8CADE30](a1, MEMORY[0x1E69E6530]);
    v15 = sub_1B7AED1B8(v13, v14, &v84);

    *(v11 + 4) = v15;
    a2 = v79;
    _os_log_impl(&dword_1B7AD5000, v9, v10, " ==> merging in %s", v11, 0xCu);
    sub_1B7AE9168(v12);
    MEMORY[0x1B8CB0E70](v12, -1, -1);
    MEMORY[0x1B8CB0E70](v11, -1, -1);
  }

  v88 = v87;
  v16 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1B7AE3A9C((v17 > 1), v18 + 1, 1, v16);
  }

  v85 = MEMORY[0x1E69E6530];
  v86 = &off_1F2FA89F8;
  *&v84 = a2;
  v16[2] = v18 + 1;
  sub_1B7AE910C(&v84, &v16[5 * v18 + 4]);
  sub_1B7C159CC(0xD00000000000002DLL, 0x80000001B7D5B580, v16, 0, &v88);
  if (v4)
  {
  }

  else
  {

    v19 = v87[0];
    v20 = v87[1];
    v21 = sub_1B7CFE010();
    v22 = JWDecodeDictionary();

    if (v22)
    {
      v23 = sub_1B7CFE990();
    }

    else
    {
      v23 = sub_1B7C24230(MEMORY[0x1E69E7CC0]);
    }

    sub_1B7C204B0(v19, v20);
    v89 = v23;
    v76 = *(v78 + 16);
    if (v76)
    {
      v24 = (v78 + 32);
      v25 = *(v78 + 16);
      do
      {
        v27 = *v24++;
        v26 = v27;
        sub_1B7CD4F9C(v27, a2);
        sub_1B7CD525C(v27, a2);
        sub_1B7CD5568(v27, a2);
        sub_1B7CD5828(v27, a2);
        v83 = v82;
        v28 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v30 = v28[2];
        v29 = v28[3];
        if (v30 >= v29 >> 1)
        {
          v28 = sub_1B7AE3A9C((v29 > 1), v30 + 1, 1, v28);
        }

        v86 = &off_1F2FA89F8;
        v85 = MEMORY[0x1E69E6530];
        *&v84 = v26;
        v28[2] = v30 + 1;
        sub_1B7AE910C(&v84, &v28[5 * v30 + 4]);
        sub_1B7C159CC(0xD00000000000002DLL, 0x80000001B7D5B580, v28, 0, &v83);

        v31 = v82[0];
        v32 = v82[1];
        v33 = sub_1B7CFE010();
        v34 = JWDecodeDictionary();

        if (v34)
        {
          v35 = sub_1B7CFE990();
        }

        else
        {
          v35 = sub_1B7C24230(MEMORY[0x1E69E7CC0]);
        }

        sub_1B7C204B0(v31, v32);
        v36 = sub_1B7CFE400();
        v37 = sub_1B7CFEEE0();
        a2 = v79;
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134217984;
          *(v38 + 4) = v26;
          _os_log_impl(&dword_1B7AD5000, v36, v37, " ==> merging properties from %ld", v38, 0xCu);
          MEMORY[0x1B8CB0E70](v38, -1, -1);
        }

        if (qword_1EBA51638 != -1)
        {
          swift_once();
        }

        v39 = qword_1EBA53240;

        sub_1B7C9C5CC(v35, &v89, v39, 0x3D3D202020202020, 0xEA0000000000203ELL);

        v81 = &v80;
        v40 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = sub_1B7AE3A9C((v41 > 1), v42 + 1, 1, v40);
        }

        v86 = &off_1F2FA89F8;
        v85 = MEMORY[0x1E69E6530];
        *&v84 = v79;
        v40[2] = v42 + 1;
        sub_1B7AE910C(&v84, &v40[5 * v42 + 4]);
        sub_1B7AF45D8(0xD000000000000039, 0x80000001B7D5B5B0, v40, 0, &v81);

        if (!v80)
        {
          v43 = sub_1B7CFE400();
          v44 = sub_1B7CFEEF0();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 134218240;
            *(v45 + 4) = v79;
            *(v45 + 12) = 2048;
            *(v45 + 14) = v26;
            _os_log_impl(&dword_1B7AD5000, v43, v44, " ==> !!! No handle associations on destination chat %ld, copying from %ld", v45, 0x16u);
            MEMORY[0x1B8CB0E70](v45, -1, -1);
          }

          sub_1B7CD5AE8(v26, v79);
        }

        --v25;
      }

      while (v25);
    }

    if (*(&v77 + 1))
    {

      v46 = sub_1B7CFE400();
      v47 = sub_1B7CFEEE0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v84 = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_1B7AED1B8(v77, *(&v77 + 1), &v84);
        _os_log_impl(&dword_1B7AD5000, v46, v47, " ==> renaming to %s", v48, 0xCu);
        sub_1B7AE9168(v49);
        MEMORY[0x1B8CB0E70](v49, -1, -1);
        MEMORY[0x1B8CB0E70](v48, -1, -1);
      }

      v50 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v52 = v50[2];
      v51 = v50[3];
      if (v52 >= v51 >> 1)
      {
        v50 = sub_1B7AE3A9C((v51 > 1), v52 + 1, 1, v50);
      }

      v85 = MEMORY[0x1E69E6158];
      v86 = &off_1F2FA8B58;
      v84 = v77;
      v50[2] = v52 + 1;
      sub_1B7AE910C(&v84, &v50[5 * v52 + 4]);

      v54 = v50[2];
      v53 = v50[3];
      if (v54 >= v53 >> 1)
      {
        v50 = sub_1B7AE3A9C((v53 > 1), v54 + 1, 1, v50);
      }

      v86 = &off_1F2FA89F8;
      v85 = MEMORY[0x1E69E6530];
      *&v84 = a2;
      v50[2] = v54 + 1;
      sub_1B7AE910C(&v84, &v50[5 * v54 + 4]);
      sub_1B7AE3B2C(0xD00000000000002CLL, 0x80000001B7D5B610, 0);
      sub_1B7AF3FE4(v50);

      v74 = v78;
    }

    else
    {
      v74 = v78;
    }

    sub_1B7CD5DA8(a2, v89);

    v55 = v76;
    if (v76)
    {
      v56 = (v74 + 32);
      do
      {
        v58 = *v56++;
        v57 = v58;
        v59 = sub_1B7CFE400();
        v60 = sub_1B7CFEEE0();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 134217984;
          *(v61 + 4) = v57;
          _os_log_impl(&dword_1B7AD5000, v59, v60, " ==> executing: deleting chat with ROWID %ld", v61, 0xCu);
          MEMORY[0x1B8CB0E70](v61, -1, -1);
        }

        v62 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v64 = v62[2];
        v63 = v62[3];
        if (v64 >= v63 >> 1)
        {
          v62 = sub_1B7AE3A9C((v63 > 1), v64 + 1, 1, v62);
        }

        v86 = &off_1F2FA89F8;
        v85 = MEMORY[0x1E69E6530];
        *&v84 = v57;
        v62[2] = v64 + 1;
        sub_1B7AE910C(&v84, &v62[5 * v64 + 4]);
        sub_1B7AE3B2C(0xD000000000000022, 0x80000001B7D51030, 0);
        sub_1B7AF3FE4(v62);

        --v55;
      }

      while (v55);
    }

    v65 = sub_1B7CFE400();
    v66 = sub_1B7CFEED0();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v82[0] = v68;
      *v67 = 136315650;
      v69 = MEMORY[0x1B8CADE30](v78, MEMORY[0x1E69E6530]);
      v71 = sub_1B7AED1B8(v69, v70, v82);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2048;
      *(v67 + 14) = v79;
      *(v67 + 22) = 2080;
      v72 = 0xE000000000000000;
      if (*(&v77 + 1))
      {
        *&v84 = 0;
        *(&v84 + 1) = 0xE000000000000000;
        sub_1B7CFF210();

        *&v84 = 0xD000000000000015;
        *(&v84 + 1) = 0x80000001B7D5B5F0;

        MEMORY[0x1B8CADCA0](v77, *(&v77 + 1));

        v72 = *(&v84 + 1);
        v73 = v84;
      }

      else
      {
        v73 = 0;
      }

      v75 = sub_1B7AED1B8(v73, v72, v82);

      *(v67 + 24) = v75;
      _os_log_impl(&dword_1B7AD5000, v65, v66, "Collapsed chats with rowids %s into chat with rowid %ld%s", v67, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v68, -1, -1);
      MEMORY[0x1B8CB0E70](v67, -1, -1);
    }
  }
}

void sub_1B7CD3FA4()
{
  v2 = *(v0 + 8);
  if ((v2 & 1) != 0 || (v3 = [objc_opt_self() sharedFeatureFlags], v4 = objc_msgSend(v3, sel__isOneChatOptedOut), v3, (v4 & 1) == 0))
  {
    v5 = *v0;
    v6 = sub_1B7AED4F8();
    if (!v1)
    {
      if (v6)
      {
        if (qword_1EBA50EB8 != -1)
        {
          swift_once();
        }

        v7 = sub_1B7CFE420();
        sub_1B7AD9040(v7, qword_1EBA5DA20);
        v8 = sub_1B7CFE400();
        v9 = sub_1B7CFEF00();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_1B7AD5000, v8, v9, "Migrating chat table to legacy chat slices", v10, 2u);
          MEMORY[0x1B8CB0E70](v10, -1, -1);
        }

        v11 = MEMORY[0x1E69E7CC0];
        v26 = sub_1B7C23CF8(MEMORY[0x1E69E7CC0]);
        v25 = v11;

        v12 = sub_1B7AE3B2C(0xD0000000000000F4, 0x80000001B7D5B240, 0);
        sub_1B7C94D70(MEMORY[0x1E69E7CC0], v12, &v26, &v25);

        if (*(v25 + 16))
        {
          v17 = sub_1B7C2F27C(v25);
          sub_1B7C1F044();
          v18 = swift_allocError();
          *v19 = v17;
          sub_1B7C4C33C(v18, 0xD000000000000010, 0x80000001B7D5B340, v2);
        }

        v20 = sub_1B7CFE400();
        v21 = sub_1B7CFEF00();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1B7AD5000, v20, v21, "Migrating chat table to merged chats", v22, 2u);
          MEMORY[0x1B8CB0E70](v22, -1, -1);
        }

        sub_1B7CD447C();

        sub_1B7CD2F6C(1, 0x7372655674616863, 0xEB000000006E6F69);

        v23 = sub_1B7CFEA30();
        v24 = sub_1B7CFEA30();
        IMSetDomainIntForKey();
      }

      else
      {
        if (qword_1EBA50EB8 != -1)
        {
          swift_once();
        }

        v13 = sub_1B7CFE420();
        sub_1B7AD9040(v13, qword_1EBA5DA20);
        v14 = sub_1B7CFE400();
        v15 = sub_1B7CFEED0();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1B7AD5000, v14, v15, "Chat table doesn't need merge migration", v16, 2u);
          MEMORY[0x1B8CB0E70](v16, -1, -1);
        }
      }
    }
  }
}

void sub_1B7CD447C()
{
  v65 = &v64;
  v1 = MEMORY[0x1E69E7CC0];
  sub_1B7AF45D8(0xD000000000000019, 0x80000001B7D5B3A0, MEMORY[0x1E69E7CC0], 0, &v65);
  if (!v0)
  {
    v48 = 0;
    v47 = v64;
    v50 = *MEMORY[0x1E69A7AC8];
LABEL_3:
    *&v61 = sub_1B7CFEA60();
    *(&v61 + 1) = v2;

    MEMORY[0x1B8CADCA0](59, 0xE100000000000000);

    v3 = v61;

    v4 = sub_1B7AE3A9C(0, 1, 1, v1);
    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1B7AE3A9C((v5 > 1), v6 + 1, 1, v4);
    }

    v62 = MEMORY[0x1E69E6158];
    v63 = &off_1F2FA8B58;
    v61 = v3;
    v4[2] = v6 + 1;
    sub_1B7AE910C(&v61, &v4[5 * v6 + 4]);
    v7 = sub_1B7AE3B2C(0xD00000000000007DLL, 0x80000001B7D5B3C0, 0);
    v1 = MEMORY[0x1E69E7CC0];
    *&v61 = MEMORY[0x1E69E7CC0];

    sub_1B7AF1A7C(v4, v7, &v61, v7);

    v55 = v61;
    v51 = *(v61 + 16);
    if (v51)
    {
      if (!__OFADD__(v48, 1))
      {
        if (v47 < v48 + 1)
        {

          sub_1B7CD6150();
          swift_allocError();
          *v46 = v47;
          *(v46 + 8) = 0;
          swift_willThrow();
          return;
        }

        ++v48;
        v8 = 0;
        v54 = v61 + 32;
        while (v8 < *(v55 + 16))
        {
          v56 = v8;
          v9 = v54 + 16 * v8;
          v10 = *(v9 + 8);
          log = *v9;
          swift_bridgeObjectRetain_n();
          v11 = sub_1B7AE3A9C(0, 1, 1, v1);
          v13 = v11[2];
          v12 = v11[3];
          if (v13 >= v12 >> 1)
          {
            v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
          }

          v62 = MEMORY[0x1E69E6158];
          v63 = &off_1F2FA8B58;
          *&v61 = log;
          *(&v61 + 1) = v10;
          v11[2] = v13 + 1;
          sub_1B7AE910C(&v61, &v11[5 * v13 + 4]);
          v14 = sub_1B7AE3B2C(0xD0000000000000C8, 0x80000001B7D5B440, 0);
          *&v61 = v1;

          sub_1B7AF2C24(v11, v14, &v61, v14);

          v15 = v61;
          v16 = *(v61 + 16);
          if (v16)
          {
            v17 = *(v61 + 32);
            v60 = &v59;
            v18 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v20 = v18[2];
            v19 = v18[3];
            if (v20 >= v19 >> 1)
            {
              v18 = sub_1B7AE3A9C((v19 > 1), v20 + 1, 1, v18);
            }

            v63 = &off_1F2FA89F8;
            v62 = MEMORY[0x1E69E6530];
            *&v61 = v17;
            v18[2] = v20 + 1;
            v21 = v18;
            sub_1B7AE910C(&v61, &v18[5 * v20 + 4]);
            sub_1B7AF45D8(0xD000000000000028, 0x80000001B7D5B510, v21, 0, &v60);

            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_48;
            }

            if (v59 > 0xFF)
            {
              goto LABEL_49;
            }

            v22 = sub_1B7CFEA30();
            v23 = IMCopyAnyServiceGUIDForChat();

            if (!v23)
            {
              goto LABEL_51;
            }

            v24 = sub_1B7CFEA60();
            v26 = v25;

            sub_1B7CD4D9C(v24, v26);
            v29 = v28;
            if (v28)
            {
              v30 = *(v15 + 32);
            }

            else
            {
              v30 = v27;
            }

            if (qword_1EBA50EB8 != -1)
            {
              swift_once();
            }

            v52 = v24;
            v53 = v26;
            v31 = sub_1B7CFE420();
            sub_1B7AD9040(v31, qword_1EBA5DA20);

            v32 = sub_1B7CFE400();
            v33 = sub_1B7CFEEE0();

            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              *&v61 = v49;
              *v34 = 134218498;
              *(v34 + 4) = v30;
              *(v34 + 12) = 2080;
              v35 = sub_1B7AED1B8(log, v10, &v61);
              loga = v32;
              v36 = v35;

              *(v34 + 14) = v36;
              *(v34 + 22) = 2080;
              if (v29)
              {
                v37 = 0xD000000000000010;
              }

              else
              {
                v37 = 0xD000000000000011;
              }

              if (v29)
              {
                v38 = "M chat WHERE ROWID =  ? ";
              }

              else
              {
                v38 = "no existing chat";
              }

              v39 = sub_1B7AED1B8(v37, v38 | 0x8000000000000000, &v61);

              *(v34 + 24) = v39;
              _os_log_impl(&dword_1B7AD5000, loga, v33, "Selected chat %ld as winner of %s (%s)", v34, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1B8CB0E70](v49, -1, -1);
              MEMORY[0x1B8CB0E70](v34, -1, -1);
            }

            else
            {
            }

            v40 = 32;
            v41 = MEMORY[0x1E69E7CC0];
            do
            {
              v44 = *(v15 + v40);
              if (v44 != v30)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v61 = v41;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1B7C31320(0, *(v41 + 16) + 1, 1);
                  v41 = v61;
                }

                v43 = *(v41 + 16);
                v42 = *(v41 + 24);
                if (v43 >= v42 >> 1)
                {
                  sub_1B7C31320((v42 > 1), v43 + 1, 1);
                  v41 = v61;
                }

                *(v41 + 16) = v43 + 1;
                *(v41 + 8 * v43 + 32) = v44;
              }

              v40 += 8;
              --v16;
            }

            while (v16);

            sub_1B7CD3170(v41, v30, v52, v53);
          }

          else
          {
          }

          v8 = v56 + 1;
          v1 = MEMORY[0x1E69E7CC0];
          if (v56 + 1 == v51)
          {

            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      __break(1u);
LABEL_51:
      __break(1u);
    }

    else
    {
    }
  }
}

void sub_1B7CD4D9C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SQLConnectionError(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16;

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v14 = MEMORY[0x1E69E6158];
  v15 = &off_1F2FA8B58;
  *&v13 = a1;
  *(&v13 + 1) = a2;
  v9[2] = v11 + 1;
  sub_1B7AE910C(&v13, &v9[5 * v11 + 4]);
  sub_1B7AF45D8(0xD000000000000037, 0x80000001B7D5B970, v9, 0, &v17);
  if (v2)
  {

    *&v13 = v2;
    v12 = v2;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {

        return;
      }

      sub_1B7C19DBC(v8);
    }
  }

  else
  {
  }
}

uint64_t sub_1B7CD4F9C(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: moving messages from chat %ld to chat %ld", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  v18 = &off_1F2FA89F8;
  *&v16 = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v16, &v9[5 * v11 + 4]);
  v14 = v9[3];
  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v17 = v13;
  v18 = &off_1F2FA89F8;
  *&v16 = a1;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v16, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD000000000000050, 0x80000001B7D5B910, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v9);
  }
}

uint64_t sub_1B7CD525C(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B7CFE420();
  sub_1B7AD9040(v4, qword_1EBA5DA20);
  v5 = sub_1B7CFE400();
  v6 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = a1;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v5, v6, " ==> executing: moving identifiers from chat %ld to chat %ld", v7, 0x16u);
    MEMORY[0x1B8CB0E70](v7, -1, -1);
  }

  v8 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1B7AE3A9C((v9 > 1), v10 + 1, 1, v8);
  }

  v12 = MEMORY[0x1E69E6530];
  v19 = MEMORY[0x1E69E6530];
  v20 = &off_1F2FA89F8;
  *&v18 = a2;
  v8[2] = v11;
  sub_1B7AE910C(&v18, &v8[5 * v10 + 4]);
  v13 = v8[3];
  v14 = v10 + 2;
  if ((v10 + 2) > (v13 >> 1))
  {
    v8 = sub_1B7AE3A9C((v13 > 1), v10 + 2, 1, v8);
  }

  v19 = v12;
  v20 = &off_1F2FA89F8;
  *&v18 = a2;
  v8[2] = v14;
  sub_1B7AE910C(&v18, &v8[5 * v11 + 4]);
  v15 = v8[3];
  if ((v10 + 3) > (v15 >> 1))
  {
    v8 = sub_1B7AE3A9C((v15 > 1), v10 + 3, 1, v8);
  }

  v19 = v12;
  v20 = &off_1F2FA89F8;
  *&v18 = a1;
  v8[2] = v10 + 3;
  sub_1B7AE910C(&v18, &v8[5 * v14 + 4]);
  v16 = v21;
  sub_1B7AE3B2C(0xD00000000000016ALL, 0x80000001B7D5B7A0, 0);
  if (!v16)
  {
    sub_1B7AF3FE4(v8);
  }
}

uint64_t sub_1B7CD5568(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: moving sync chat slices from chat %ld to chat %ld", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  v18 = &off_1F2FA89F8;
  *&v16 = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v16, &v9[5 * v11 + 4]);
  v14 = v9[3];
  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v17 = v13;
  v18 = &off_1F2FA89F8;
  *&v16 = a1;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v16, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD000000000000048, 0x80000001B7D5B750, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v9);
  }
}

uint64_t sub_1B7CD5828(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: moving chat services from chat %ld to chat %ld", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  v18 = &off_1F2FA89F8;
  *&v16 = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v16, &v9[5 * v11 + 4]);
  v14 = v9[3];
  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v17 = v13;
  v18 = &off_1F2FA89F8;
  *&v16 = a1;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v16, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD000000000000045, 0x80000001B7D5B700, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v9);
  }
}

uint64_t sub_1B7CD5AE8(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: copy handle associates from chat %ld to chat %ld", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  v18 = &off_1F2FA89F8;
  *&v16 = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v16, &v9[5 * v11 + 4]);
  v14 = v9[3];
  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v17 = v13;
  v18 = &off_1F2FA89F8;
  *&v16 = a1;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v16, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD00000000000007BLL, 0x80000001B7D5B680, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v9);
  }
}

uint64_t sub_1B7CD5DA8(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);

  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(a2 + 16);

    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: update chat %ld with %ld properties", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  else
  {
  }

  v9 = sub_1B7CFE980();
  v10 = JWEncodeDictionary();

  if (v10)
  {
    v11 = sub_1B7CFE020();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  sub_1B7C3D3CC(v11, v13);
  v14 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v14[2];
  v15 = v14[3];
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1B7AE3A9C((v15 > 1), v16 + 1, 1, v14);
  }

  v22 = sub_1B7C107FC(&qword_1EBA52408, qword_1B7D13650);
  v23 = sub_1B7C3D464();
  *&v21 = v11;
  *(&v21 + 1) = v13;
  v14[2] = v17;
  sub_1B7AE910C(&v21, &v14[5 * v16 + 4]);
  v18 = v14[3];
  v19 = v16 + 2;
  if (v19 > (v18 >> 1))
  {
    v14 = sub_1B7AE3A9C((v18 > 1), v19, 1, v14);
  }

  v22 = MEMORY[0x1E69E6530];
  v23 = &off_1F2FA89F8;
  *&v21 = a1;
  v14[2] = v19;
  sub_1B7AE910C(&v21, &v14[5 * v17 + 4]);
  sub_1B7AE3B2C(0xD000000000000032, 0x80000001B7D5B640, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v14);
  }

  return sub_1B7C2049C(v11, v13);
}

unint64_t sub_1B7CD6150()
{
  result = qword_1EBA53950;
  if (!qword_1EBA53950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MergedChatMigrator.MigrationError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MergedChatMigrator.MigrationError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B7CD6204(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7CD6220(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1B7CD6250(unsigned int a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x403020105uLL >> (8 * a1));
  }
}

uint64_t sub_1B7CD6274()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA5DA08);
  sub_1B7AD9040(v0, qword_1EBA5DA08);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

void sub_1B7CD62E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for SQLConnectionConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = sub_1B7CFEA30();
  IMDSqlOperationInitAndCreateIfNeededWithPath(v11, v28);

  Connection = IMDSqlOperationGetConnection(v28);
  if (!Connection || (v14 = *(Connection + 8)) == 0)
  {
    sub_1B7CD68B0();
    v24 = swift_allocError();
    *v25 = 0;
    v25[1] = 0;
    a3();

    goto LABEL_10;
  }

  IMDDropAllTriggersWithOperation(v28, 1, v13);
  v15 = *(v4 + 28);
  v16 = sub_1B7CFE420();
  (*(*(v16 - 8) + 56))(&v10[v15], 1, 1, v16);
  *v10 = 1;
  *(v10 + 1) = 0;
  *(v10 + 8) = 1;
  sub_1B7AE3EA4(v10, v7);
  v17 = type metadata accessor for SQLConnection(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v22 = MEMORY[0x1E69E7CC8];
  *v21 = MEMORY[0x1E69E7CC8];
  v21[1] = v22;
  v21[2] = 32;
  *(v20 + 16) = v14;
  *(v20 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  sub_1B7AE3EA4(v7, v20 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if ((v7[2] & 1) == 0)
  {
    v23 = v7[1] * 1000.0;
    if (COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -2147483650.0)
    {
      if (v23 < 2147483650.0)
      {
        sqlite3_busy_timeout(v14, v23);
        goto LABEL_8;
      }

LABEL_13:
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_8:
  sub_1B7AE3F08(v7);
  v27[2] = v20;

  sub_1B7C17B04();
  (a3)(0);

  sub_1B7AE3F08(v10);
  IMDCreateTriggersWithOperation(v28, 1);
LABEL_10:
  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7CD66B0(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_opt_self();
  _Block_copy(a3);
  v8 = [v7 sharedFeatureFlags];
  v9 = [v8 isOneChatEnabled];

  if (v9)
  {
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = sub_1B7AF5954;
    v10[5] = v6;
    v17[4] = sub_1B7CD6904;
    v17[5] = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1B7AE14D0;
    v17[3] = &unk_1F2F9FA28;
    v11 = _Block_copy(v17);

    IMDPersistencePerformBlock(v11, 1, v12);
    _Block_release(v11);
  }

  else
  {
    sub_1B7CD68B0();
    v14 = swift_allocError();
    *v15 = 0xD000000000000014;
    v15[1] = 0x80000001B7D5B9E0;
    v16 = sub_1B7CFDEB0();
    (a3)[2](a3, v16);
  }
}

unint64_t sub_1B7CD68B0()
{
  result = qword_1EBA53960;
  if (!qword_1EBA53960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53960);
  }

  return result;
}

uint64_t sub_1B7CD6910(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B7CD6960(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1B7CD69B4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_1B7CD69E4()
{
  sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7D0A6F0;
  v1 = *MEMORY[0x1E695DBA8];
  v5 = *MEMORY[0x1E695DC58];
  v2 = *MEMORY[0x1E695DC58];
  *(v0 + 32) = *MEMORY[0x1E695DBA8];
  *(v0 + 40) = v2;
  qword_1EBA5DB50 = v0;
  v3 = v1;

  return v5;
}

uint64_t sub_1B7CD6A6C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error) = 0;
  v4 = OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_directoryURL;
  v5 = sub_1B7CFDFF0();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, a1, v5);
  v7 = [objc_opt_self() defaultManager];
  swift_allocObject();
  swift_weakInit();

  v8 = sub_1B7CFEEC0();

  if (v8)
  {
    (*(v6 + 8))(a1, v5);
    v9 = *(v2 + 16);
    *(v2 + 16) = v8;
  }

  else
  {
    sub_1B7CD725C();
    swift_allocError();
    swift_willThrow();

    (*(v6 + 8))(a1, v5);
  }

  return v2;
}

BOOL sub_1B7CD6C3C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v44 = a1;
  v3 = sub_1B7CFDFF0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = sub_1B7CFE420();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v43 = v12;
    sub_1B7CFE410();
    v42 = v4[2];
    v42(v10, v44, v3);

    v16 = a2;
    v17 = sub_1B7CFE400();
    v18 = sub_1B7CFEEF0();

    LODWORD(v44) = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v41 = v11;
      v20 = v19;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = v40;
      *v20 = 136315650;
      v42(v8, Strong + OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_directoryURL, v3);
      sub_1B7C5A16C();
      v38 = v17;
      v21 = sub_1B7CFF570();
      v23 = v22;
      v42 = a2;
      v24 = v4[1];
      v24(v8, v3);
      v25 = sub_1B7AED1B8(v21, v23, &v46);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v26 = sub_1B7CFF570();
      v28 = v27;
      v24(v10, v3);
      a2 = v42;
      v29 = sub_1B7AED1B8(v26, v28, &v46);

      *(v20 + 14) = v29;
      *(v20 + 22) = 2112;
      v30 = a2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v31;
      v33 = v38;
      v32 = v39;
      *v39 = v31;
      _os_log_impl(&dword_1B7AD5000, v33, v44, "directoryIterator for '%s' failed at '%s' with error: %@ ", v20, 0x20u);
      sub_1B7C20434(v32);
      MEMORY[0x1B8CB0E70](v32, -1, -1);
      v34 = v40;
      swift_arrayDestroy();
      MEMORY[0x1B8CB0E70](v34, -1, -1);
      MEMORY[0x1B8CB0E70](v20, -1, -1);

      (*(v43 + 8))(v45, v41);
    }

    else
    {

      (v4[1])(v10, v3);
      (*(v43 + 8))(v45, v11);
    }

    v35 = *(Strong + OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error);
    *(Strong + OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error) = a2;
    v36 = a2;
  }

  return Strong != 0;
}

uint64_t sub_1B7CD70B0()
{
  v1 = OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_directoryURL;
  v2 = sub_1B7CFDFF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttachmentDirectoryEnumerator()
{
  result = qword_1EBA53970;
  if (!qword_1EBA53970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7CD71B8()
{
  result = sub_1B7CFDFF0();
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

unint64_t sub_1B7CD725C()
{
  result = qword_1EBA53980;
  if (!qword_1EBA53980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53980);
  }

  return result;
}

unint64_t sub_1B7CD72C4()
{
  result = qword_1EBA53988;
  if (!qword_1EBA53988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53988);
  }

  return result;
}

unint64_t sub_1B7CD731C()
{
  result = qword_1EBA53990;
  if (!qword_1EBA53990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53990);
  }

  return result;
}

uint64_t sub_1B7CD7370(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  result = sub_1B7CD73E4(a1, a2, a3, a4, sub_1B7CDB4A0, sub_1B7CDB4A4);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7CD73E4(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, void (*a5)(void, uint64_t), void (*a6)(void, uint64_t))
{
  v10 = v7;
  v22[3] = *MEMORY[0x1E69E9840];
  v13 = objc_autoreleasePoolPush();
  v14 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v6 + 16, v14);
  swift_endAccess();

  swift_beginAccess();
  v21 = 0;
  IMDSqlOperationGetError(v6 + 16, &v21);
  v15 = v21;
  swift_endAccess();
  if (!v15)
  {
    if (a3)
    {
      a5(a3, a4);
      a3(v22, v6);
      if (v7)
      {
        a6(a3, a4);
        v16 = 0;
LABEL_10:
        swift_beginAccess();
        IMDSqlOperationFinishQuery(v6 + 16);
        v21 = 0;
        IMDSqlOperationGetError(v6 + 16, &v21);
        v18 = v21;
        swift_endAccess();
        swift_willThrow();
        if (v18)
        {
          v18;
        }

        goto LABEL_12;
      }

      a6(a3, a4);
      v16 = v22[0];
    }

    else
    {
      v16 = 0;
    }

    swift_beginAccess();
    IMDSqlOperationFinishQuery(v6 + 16);
    v21 = 0;
    IMDSqlOperationGetError(v6 + 16, &v21);
    v17 = v21;
    swift_endAccess();
    if (!v17)
    {
      objc_autoreleasePoolPop(v13);
      goto LABEL_13;
    }

    swift_willThrow();
    v10 = v17;
    goto LABEL_10;
  }

  swift_willThrow();
  v15;
  v16 = 0;
LABEL_12:
  objc_autoreleasePoolPop(v13);

LABEL_13:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_1B7CD7640(void *a1)
{
  v3 = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = *a1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000002BLL, 0x80000001B7D5BAA0);
  v6 = *(v1 + 64);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0xD00000000000002DLL, 0x80000001B7D55340);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v1;

  v10 = sub_1B7CD73E4(0, 0xE000000000000000, sub_1B7CD93F4, v9, sub_1B7CDB4A0, sub_1B7CDB4A4);
  if (v3)
  {

    return v3;
  }

  v3 = v10;

  if (!v3)
  {
LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v3 + 16))
  {

    goto LABEL_10;
  }

  swift_beginAccess();
  v11 = *(v5 + 16);

  if (v11 != -1)
  {
    *a1 = v11 + 1;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7CD7888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7CFF210();

  v5 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v5);

  MEMORY[0x1B8CADCA0](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  MEMORY[0x1B8CADCA0](a2, a3);
  return 0xD000000000000024;
}

uint64_t sub_1B7CD795C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_1B7C107FC(&qword_1EBA539A8, &qword_1B7D139B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CDB334();
  sub_1B7CFF830();
  v15 = 0;
  sub_1B7CFF520();
  if (!v4)
  {
    v14 = 1;
    sub_1B7CFF4E0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B7CD7AF0()
{
  if (*v0)
  {
    result = 0x656C646E6168;
  }

  else
  {
    result = 0x4449776F72;
  }

  *v0;
  return result;
}

uint64_t sub_1B7CD7B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B7CFF590();

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

uint64_t sub_1B7CD7BF8(uint64_t a1)
{
  v2 = sub_1B7CDB334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7CD7C34(uint64_t a1)
{
  v2 = sub_1B7CDB334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7CD7C70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B7CDB188(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1B7CD7CCC(Swift::OpaquePointer a1@<0:X1>, uint64_t a2@<X0>, char **a3@<X8>)
{
  SqlOperation.bind(_:)(a1);
  if (!v5)
  {
    v27 = a3;
    v36 = 0;

    swift_beginAccess();

    HasRows = IMDSqlOperationHasRows(a2 + 16);
    swift_endAccess();
    if (!HasRows)
    {
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_22;
    }

    type metadata accessor for SqlOperation.Row();
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v26 = v8;
      while (1)
      {
        inited = swift_initStackObject();
        v13 = sub_1B7C23650(v7);
        *(inited + 16) = a2;
        *(inited + 24) = v13;
        SqlOperation.Row.column(forColumnName:)(0x6469uLL, 0xE200000000000000, &v28);
        if (!*(&v28 + 1))
        {
          goto LABEL_6;
        }

        v32 = v28;
        v33 = v29;
        v34 = v30;
        v35 = v31;
        v14 = v29;
        sub_1B7C26C78(&v32);
        v15 = SqlOperation.Row.string(forColumnIndex:)(v14);
        if (!v15.value._object)
        {
          goto LABEL_13;
        }

        SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v28);
        if (*(&v28 + 1))
        {
          break;
        }

LABEL_6:
        swift_setDeallocating();
        v9 = *(inited + 16);

        v10 = *(inited + 24);

        sub_1B7AEE190(&v28, &qword_1EBA52298, &unk_1B7D10570);
LABEL_7:
        swift_beginAccess();

        v11 = IMDSqlOperationHasRows(a2 + 16);
        swift_endAccess();
        if (!v11)
        {
          v8 = v26;
          goto LABEL_22;
        }
      }

      v32 = v28;
      v33 = v29;
      v34 = v30;
      v35 = v31;
      v16 = v29;
      sub_1B7C26C78(&v32);
      v37 = SqlOperation.Row.uint64(forColumnIndex:)(v16);
      if (v37.is_nil)
      {

LABEL_13:
        swift_setDeallocating();
        v17 = *(inited + 16);

        v18 = *(inited + 24);

        goto LABEL_7;
      }

      value = v37.value;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1B7CA3704(0, *(v26 + 2) + 1, 1, v26);
      }

      v21 = *(v26 + 2);
      v20 = *(v26 + 3);
      v24 = v21 + 1;
      v25 = v21;
      if (v21 >= v20 >> 1)
      {
        v26 = sub_1B7CA3704((v20 > 1), v21 + 1, 1, v26);
      }

      v8 = v26;
      *(v26 + 2) = v24;
      v22 = &v26[24 * v25];
      *(v22 + 4) = value;
      *(v22 + 40) = v15;
      swift_beginAccess();

      v23 = IMDSqlOperationHasRows(a2 + 16);
      swift_endAccess();
      if (!v23)
      {
LABEL_22:

        *v27 = v8;
        return;
      }
    }
  }
}

id sub_1B7CD7FB8@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, void *a3@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a2);
  v10[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v10);
  v6 = v10[0];
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    result = v6;
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    result = SqlOperation.uint64s(forColumnName:)(0x695F656C646E6168uLL, 0xE900000000000064);
    *a3 = result;
    v9 = *MEMORY[0x1E69E9840];
  }

  return result;
}

id sub_1B7CD80B8@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a2);
  v22 = 0;
  IMDSqlOperationGetError(a1 + 16, &v22);
  v6 = v22;
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    result = v6;
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v10 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = a1;
      *(inited + 24) = v10;
      swift_beginAccess();
      v13 = IMDSqlStatementColumnCount((a1 + 48));
      swift_endAccess();
      if (v13)
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((a1 + 48), 0, &v22);
        v14 = v22;
        v15 = v23;
        v16 = v24;
        swift_endAccess();
        v25 = v14;
        v26 = v15;
        v27 = v16;
        if (IMDSqlColumnGetType(&v25) == 1)
        {
          break;
        }
      }

      swift_beginAccess();

      v11 = IMDSqlOperationHasRows(a1 + 16);
      swift_endAccess();
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    IMDSqlStatementColumnByIndex((a1 + 48), 0, &v22);
    v17 = v22;
    v18 = v23;
    v19 = v24;
    swift_endAccess();
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v20 = IMDInt64FromSqlColumn(&v25);

    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

LABEL_11:

  v20 = 0;
LABEL_12:
  *a3 = v20;
  *(a3 + 8) = 0;
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7CD8340(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B7CFF280();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_1B7CDA2D8(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id sub_1B7CD8640@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, void *a3@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a2);
  *&v52 = 0;
  IMDSqlOperationGetError(a1 + 16, &v52);
  v6 = v52;
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    result = v6;
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = MEMORY[0x1E69E7CD0];
  v51 = MEMORY[0x1E69E7CD0];

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
    goto LABEL_89;
  }

  type metadata accessor for SqlOperation.Row();
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    inited = swift_initStackObject();
    v16 = sub_1B7C23650(v11);
    *(inited + 16) = a1;
    *(inited + 24) = v16;
    SqlOperation.Row.column(forColumnName:)(0x695F656C646E6168uLL, 0xE900000000000064, &v52);
    if (!*(&v52 + 1))
    {
      sub_1B7AEE190(&v52, &qword_1EBA52298, &unk_1B7D10570);
      goto LABEL_78;
    }

    v56 = v52;
    v57 = v53;
    v58 = v54;
    v59 = v55;
    v17 = v53;
    sub_1B7C26C78(&v56);
    v18 = SqlOperation.Row.string(forColumnIndex:)(v17);
    if (!v18.value._object)
    {
      goto LABEL_78;
    }

    v19 = (v18.value._object >> 56) & 0xF;
    v20 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v18.value._object & 0x2000000000000000) != 0)
    {
      v21 = (v18.value._object >> 56) & 0xF;
    }

    else
    {
      v21 = v18.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      if ((v18.value._object & 0x1000000000000000) != 0)
      {
        v24 = sub_1B7CDA2D8(v18.value._countAndFlagsBits, v18.value._object, 10);
        v45 = v44;

        if ((v45 & 1) == 0)
        {
LABEL_75:
          if (v24)
          {
            sub_1B7C5E800(&v56, v24);
          }
        }

LABEL_77:
        v11 = MEMORY[0x1E69E7CC0];
        goto LABEL_78;
      }

      if ((v18.value._object & 0x2000000000000000) != 0)
      {
        *&v56 = v18.value._countAndFlagsBits;
        *(&v56 + 1) = v18.value._object & 0xFFFFFFFFFFFFFFLL;
        if (LOBYTE(v18.value._countAndFlagsBits) == 43)
        {
          if (!v19)
          {
            goto LABEL_95;
          }

          v20 = v19 - 1;
          if (v19 != 1)
          {
            v24 = 0;
            v32 = &v56 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              if (!is_mul_ok(v24, 0xAuLL))
              {
                break;
              }

              v27 = __CFADD__(10 * v24, v33);
              v24 = 10 * v24 + v33;
              if (v27)
              {
                break;
              }

              ++v32;
              if (!--v20)
              {
                goto LABEL_74;
              }
            }
          }
        }

        else if (LOBYTE(v18.value._countAndFlagsBits) == 45)
        {
          if (!v19)
          {
            goto LABEL_96;
          }

          v20 = v19 - 1;
          if (v19 != 1)
          {
            v24 = 0;
            v28 = &v56 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              if (!is_mul_ok(v24, 0xAuLL))
              {
                break;
              }

              v27 = 10 * v24 >= v29;
              v24 = 10 * v24 - v29;
              if (!v27)
              {
                break;
              }

              ++v28;
              if (!--v20)
              {
                goto LABEL_74;
              }
            }
          }
        }

        else if (v19)
        {
          v24 = 0;
          v35 = &v56;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            if (!is_mul_ok(v24, 0xAuLL))
            {
              break;
            }

            v27 = __CFADD__(10 * v24, v36);
            v24 = 10 * v24 + v36;
            if (v27)
            {
              break;
            }

            ++v35;
            if (!--v19)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_73;
      }

      if ((v18.value._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v22 = ((v18.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v22 = sub_1B7CFF280();
        v20 = v46;
      }

      v23 = *v22;
      if (v23 == 43)
      {
        if (v20 < 1)
        {
          goto LABEL_97;
        }

        if (!--v20)
        {
          goto LABEL_73;
        }

        v24 = 0;
        if (v22)
        {
          v30 = v22 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v24, 0xAuLL))
            {
              goto LABEL_73;
            }

            v27 = __CFADD__(10 * v24, v31);
            v24 = 10 * v24 + v31;
            if (v27)
            {
              goto LABEL_73;
            }

            ++v30;
            if (!--v20)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v23 == 45)
      {
        if (v20 < 1)
        {
          goto LABEL_98;
        }

        if (!--v20)
        {
          goto LABEL_73;
        }

        v24 = 0;
        if (v22)
        {
          v25 = v22 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v24, 0xAuLL))
            {
              goto LABEL_73;
            }

            v27 = 10 * v24 >= v26;
            v24 = 10 * v24 - v26;
            if (!v27)
            {
              goto LABEL_73;
            }

            ++v25;
            if (!--v20)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else
      {
        if (!v20)
        {
LABEL_73:
          v24 = 0;
          LOBYTE(v20) = 1;
LABEL_74:
          LOBYTE(v52) = v20;
          v37 = v20;

          if ((v37 & 1) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_77;
        }

        v24 = 0;
        if (v22)
        {
          while (1)
          {
            v34 = *v22 - 48;
            if (v34 > 9)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v24, 0xAuLL))
            {
              goto LABEL_73;
            }

            v27 = __CFADD__(10 * v24, v34);
            v24 = 10 * v24 + v34;
            if (v27)
            {
              goto LABEL_73;
            }

            ++v22;
            if (!--v20)
            {
              goto LABEL_74;
            }
          }
        }
      }

LABEL_72:
      LOBYTE(v20) = 0;
      goto LABEL_74;
    }

LABEL_78:
    SqlOperation.Row.column(forColumnName:)(0x61685F726568746FuLL, 0xEC000000656C646ELL, &v52);
    if (*(&v52 + 1))
    {
      v56 = v52;
      v57 = v53;
      v58 = v54;
      v59 = v55;
      v38 = v53;
      sub_1B7C26C78(&v56);
      v39 = SqlOperation.Row.string(forColumnIndex:)(v38);
      if (v39.value._object)
      {
        v40 = sub_1B7CD8340(v39.value._countAndFlagsBits, v39.value._object);
        if ((v41 & 1) == 0)
        {
          if (v40)
          {
            sub_1B7C5E800(&v56, v40);
          }
        }
      }

      swift_setDeallocating();
      v12 = *(inited + 16);

      v13 = *(inited + 24);
    }

    else
    {
      swift_setDeallocating();
      v42 = *(inited + 16);

      v43 = *(inited + 24);

      sub_1B7AEE190(&v52, &qword_1EBA52298, &unk_1B7D10570);
    }

    swift_beginAccess();

    v14 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
  }

  while (v14);
  v9 = v51;
LABEL_89:

  v47 = *(v9 + 16);
  if (v47)
  {
    v48 = sub_1B7CD94BC(*(v9 + 16), 0, &qword_1EBA52998, &qword_1B7D0DC40);
    v49 = sub_1B7CDA1D8(&v56, v48 + 4, v47, v9);
    result = sub_1B7AEC4CC();
    if (v49 != v47)
    {
      __break(1u);
      goto LABEL_92;
    }
  }

  else
  {
LABEL_92:

    v48 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v48;
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7CD8CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_102;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, v8);
  *&v56 = 0;
  IMDSqlOperationGetError(a1 + 16, &v56);
  v9 = v56;
  swift_endAccess();
  if (!v9)
  {
    v10 = *(a3 + 24);
    if (v10 >= 0xFFFFFFFF80000000)
    {
      if (v10 <= 0x7FFFFFFF)
      {
        swift_beginAccess();
        IMDSqlStatementBindInt(a1 + 48, v10);
        *&v56 = 0;
        IMDSqlOperationGetError(a1 + 16, &v56);
        v9 = v56;
        swift_endAccess();
        if (v9)
        {
          goto LABEL_6;
        }

        v13 = MEMORY[0x1E69E7CD0];
        v55 = MEMORY[0x1E69E7CD0];

        swift_beginAccess();
        swift_beginAccess();

        HasRows = IMDSqlOperationHasRows(a1 + 16);
        swift_endAccess();
        if (!HasRows)
        {
          goto LABEL_97;
        }

        type metadata accessor for SqlOperation.Row();
        v15 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          inited = swift_initStackObject();
          v20 = sub_1B7C23650(v15);
          *(inited + 16) = a1;
          *(inited + 24) = v20;
          SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v56);
          if (*(&v56 + 1))
          {
            v60 = v56;
            v61 = v57;
            v62 = v58;
            v63 = v59;
            v21 = v57;
            sub_1B7C26C78(&v60);
            v65 = SqlOperation.Row.uint64(forColumnIndex:)(v21);
            if (!v65.is_nil)
            {
              *(a2 + 16) = v65.value;
            }
          }

          else
          {
            sub_1B7AEE190(&v56, &qword_1EBA52298, &unk_1B7D10570);
          }

          SqlOperation.Row.column(forColumnName:)(0x695F656C646E6168uLL, 0xE900000000000064, &v56);
          if (*(&v56 + 1))
          {
            v60 = v56;
            v61 = v57;
            v62 = v58;
            v63 = v59;
            v22 = v57;
            sub_1B7C26C78(&v60);
            v23 = SqlOperation.Row.string(forColumnIndex:)(v22);
            if (v23.value._object)
            {
              v24 = (v23.value._object >> 56) & 0xF;
              v25 = v23.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
              if ((v23.value._object & 0x2000000000000000) != 0)
              {
                v26 = (v23.value._object >> 56) & 0xF;
              }

              else
              {
                v26 = v23.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
              }

              if (!v26)
              {

                goto LABEL_86;
              }

              if ((v23.value._object & 0x1000000000000000) == 0)
              {
                if ((v23.value._object & 0x2000000000000000) != 0)
                {
                  *&v60 = v23.value._countAndFlagsBits;
                  *(&v60 + 1) = v23.value._object & 0xFFFFFFFFFFFFFFLL;
                  if (LOBYTE(v23.value._countAndFlagsBits) == 43)
                  {
                    if (!v24)
                    {
                      goto LABEL_104;
                    }

                    v25 = v24 - 1;
                    if (v24 != 1)
                    {
                      v29 = 0;
                      v37 = &v60 + 1;
                      while (1)
                      {
                        v38 = *v37 - 48;
                        if (v38 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v29, 0xAuLL))
                        {
                          break;
                        }

                        v32 = __CFADD__(10 * v29, v38);
                        v29 = 10 * v29 + v38;
                        if (v32)
                        {
                          break;
                        }

                        ++v37;
                        if (!--v25)
                        {
                          goto LABEL_82;
                        }
                      }
                    }
                  }

                  else if (LOBYTE(v23.value._countAndFlagsBits) == 45)
                  {
                    if (!v24)
                    {
                      goto LABEL_105;
                    }

                    v25 = v24 - 1;
                    if (v24 != 1)
                    {
                      v29 = 0;
                      v33 = &v60 + 1;
                      while (1)
                      {
                        v34 = *v33 - 48;
                        if (v34 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v29, 0xAuLL))
                        {
                          break;
                        }

                        v32 = 10 * v29 >= v34;
                        v29 = 10 * v29 - v34;
                        if (!v32)
                        {
                          break;
                        }

                        ++v33;
                        if (!--v25)
                        {
                          goto LABEL_82;
                        }
                      }
                    }
                  }

                  else if (v24)
                  {
                    v29 = 0;
                    v40 = &v60;
                    while (1)
                    {
                      v41 = *v40 - 48;
                      if (v41 > 9)
                      {
                        break;
                      }

                      if (!is_mul_ok(v29, 0xAuLL))
                      {
                        break;
                      }

                      v32 = __CFADD__(10 * v29, v41);
                      v29 = 10 * v29 + v41;
                      if (v32)
                      {
                        break;
                      }

                      ++v40;
                      if (!--v24)
                      {
                        goto LABEL_80;
                      }
                    }
                  }
                }

                else
                {
                  if ((v23.value._countAndFlagsBits & 0x1000000000000000) != 0)
                  {
                    v27 = ((v23.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
                  }

                  else
                  {
                    v27 = sub_1B7CFF280();
                    v25 = v51;
                  }

                  v28 = *v27;
                  if (v28 == 43)
                  {
                    if (v25 < 1)
                    {
                      goto LABEL_106;
                    }

                    if (--v25)
                    {
                      v29 = 0;
                      if (!v27)
                      {
                        goto LABEL_80;
                      }

                      v35 = v27 + 1;
                      while (1)
                      {
                        v36 = *v35 - 48;
                        if (v36 > 9)
                        {
                          break;
                        }

                        if (!is_mul_ok(v29, 0xAuLL))
                        {
                          break;
                        }

                        v32 = __CFADD__(10 * v29, v36);
                        v29 = 10 * v29 + v36;
                        if (v32)
                        {
                          break;
                        }

                        ++v35;
                        if (!--v25)
                        {
                          goto LABEL_82;
                        }
                      }
                    }
                  }

                  else if (v28 == 45)
                  {
                    if (v25 < 1)
                    {
                      goto LABEL_107;
                    }

                    if (--v25)
                    {
                      v29 = 0;
                      if (v27)
                      {
                        v30 = v27 + 1;
                        while (1)
                        {
                          v31 = *v30 - 48;
                          if (v31 > 9)
                          {
                            goto LABEL_81;
                          }

                          if (!is_mul_ok(v29, 0xAuLL))
                          {
                            goto LABEL_81;
                          }

                          v32 = 10 * v29 >= v31;
                          v29 = 10 * v29 - v31;
                          if (!v32)
                          {
                            goto LABEL_81;
                          }

                          ++v30;
                          if (!--v25)
                          {
                            goto LABEL_82;
                          }
                        }
                      }

LABEL_80:
                      LOBYTE(v25) = 0;
LABEL_82:
                      LOBYTE(v56) = v25;
                      v42 = v25;

                      if ((v42 & 1) == 0)
                      {
LABEL_83:
                        if (v29)
                        {
                          sub_1B7C5E800(&v60, v29);
                        }
                      }

LABEL_85:
                      v15 = MEMORY[0x1E69E7CC0];
                      goto LABEL_86;
                    }
                  }

                  else
                  {
                    if (!v25)
                    {
                      goto LABEL_81;
                    }

                    v29 = 0;
                    if (!v27)
                    {
                      goto LABEL_80;
                    }

                    while (1)
                    {
                      v39 = *v27 - 48;
                      if (v39 > 9)
                      {
                        break;
                      }

                      if (!is_mul_ok(v29, 0xAuLL))
                      {
                        break;
                      }

                      v32 = __CFADD__(10 * v29, v39);
                      v29 = 10 * v29 + v39;
                      if (v32)
                      {
                        break;
                      }

                      ++v27;
                      if (!--v25)
                      {
                        goto LABEL_82;
                      }
                    }
                  }
                }

LABEL_81:
                v29 = 0;
                LOBYTE(v25) = 1;
                goto LABEL_82;
              }

              v29 = sub_1B7CDA2D8(v23.value._countAndFlagsBits, v23.value._object, 10);
              v50 = v49;

              if ((v50 & 1) == 0)
              {
                goto LABEL_83;
              }

              goto LABEL_85;
            }
          }

          else
          {
            sub_1B7AEE190(&v56, &qword_1EBA52298, &unk_1B7D10570);
          }

LABEL_86:
          SqlOperation.Row.column(forColumnName:)(0x61685F726568746FuLL, 0xEC000000656C646ELL, &v56);
          if (*(&v56 + 1))
          {
            v60 = v56;
            v61 = v57;
            v62 = v58;
            v63 = v59;
            v43 = v57;
            sub_1B7C26C78(&v60);
            v44 = SqlOperation.Row.string(forColumnIndex:)(v43);
            if (v44.value._object)
            {
              v45 = sub_1B7CD8340(v44.value._countAndFlagsBits, v44.value._object);
              if ((v46 & 1) == 0)
              {
                if (v45)
                {
                  sub_1B7C5E800(&v60, v45);
                }
              }
            }

            swift_setDeallocating();
            v16 = *(inited + 16);

            v17 = *(inited + 24);
          }

          else
          {
            swift_setDeallocating();
            v47 = *(inited + 16);

            v48 = *(inited + 24);

            sub_1B7AEE190(&v56, &qword_1EBA52298, &unk_1B7D10570);
          }

          swift_beginAccess();

          v18 = IMDSqlOperationHasRows(a1 + 16);
          swift_endAccess();
          if (!v18)
          {
            v13 = v55;
LABEL_97:

            v52 = *(v13 + 16);
            if (!v52)
            {

              *a4 = MEMORY[0x1E69E7CC0];
              goto LABEL_7;
            }

            v53 = sub_1B7CD94BC(*(v13 + 16), 0, &qword_1EBA52998, &qword_1B7D0DC40);
            v54 = sub_1B7CDA1D8(&v60, v53 + 4, v52, v13);
            result = sub_1B7AEC4CC();
            if (v54 == v52)
            {
              *a4 = v53;
              goto LABEL_7;
            }

LABEL_108:
            __break(1u);
          }
        }
      }

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
      goto LABEL_108;
    }

LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

LABEL_6:
  v9;
  result = swift_willThrow();
LABEL_7:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B7CD9410(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

void *sub_1B7CD94BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B7C107FC(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_1B7CD9538(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

void *sub_1B7CD95C0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B7C107FC(&qword_1EBA52768, &qword_1B7D0CFA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1B7CD9634(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B7CFEBE0();
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
    v5 = MEMORY[0x1B8CADD00](15, a1 >> 16);
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

uint64_t sub_1B7CD96B0(uint64_t *a1, _OWORD *a2, unint64_t a3)
{
  v4 = v3;
  result = *(v3 + 16);
  if (!a2)
  {
    *a1 = result;
    a1[1] = v3;
    a1[2] = 0;

    return 0;
  }

  v7 = a3;
  v40 = *(v3 + 16);
  if (!a3)
  {

LABEL_34:
    *a1 = v40;
    a1[1] = v4;
    a1[2] = v7;
    return v7;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  v8 = a2;

  v9 = *(v3 + 16);
  swift_beginAccess();
  LODWORD(v9) = IMDSqlStatementColumnCount((v9 + 48));
  swift_endAccess();
  v10 = 0;
  if (!v9)
  {
LABEL_31:
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v38 = v10;
LABEL_36:
    sub_1B7AEE190(&v52, &qword_1EBA52298, &unk_1B7D10570);
    *a1 = v40;
    a1[1] = v4;
    v7 = v10;
    a1[2] = v38;
    return v7;
  }

  while (1)
  {
    swift_beginAccess();
    v11 = *(v4 + 24);
    if (*(v11 + 16))
    {
      v12 = sub_1B7AE1160(v10);
      if (v13)
      {
        sub_1B7CDB094(*(v11 + 56) + (v12 << 6), &v48);
        v52 = v48;
        v53 = v49;
        v54 = v50;
        v55 = v51;
        goto LABEL_28;
      }
    }

    result = swift_endAccess();
    if (v10 >> 31)
    {
      break;
    }

    v14 = *(v4 + 16);
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v14 + 48), v10, &v44);
    v15 = *(&v44 + 1);
    v16 = v45;
    swift_endAccess();
    if (v15)
    {
      v17 = sub_1B7CFEB70();
      v19 = v18;
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    v20 = *(v4 + 16);
    swift_beginAccess();
    v21 = IMDSqlStatementColumnCount((v20 + 48));
    swift_endAccess();
    if (v16 >= v21)
    {
      goto LABEL_23;
    }

    v22 = *(v4 + 16);
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v22 + 48), v16, &v44);
    v23 = v44;
    v24 = v45;
    swift_endAccess();
    v46 = v23;
    v47 = v24;
    v25 = IMDSqlColumnGetType(&v46) - 1;
    if (v25 > 4)
    {
      goto LABEL_23;
    }

    v26 = *(v4 + 16);
    swift_beginAccess();
    LODWORD(v26) = IMDSqlStatementColumnCount((v26 + 48));
    swift_endAccess();
    if (v16 >= v26)
    {
      v44 = 0u;
      v45 = 0u;
LABEL_22:
      sub_1B7AEE190(&v44, &qword_1EBA51FA8, qword_1B7D0B230);
LABEL_23:
      v50 = 0u;
      v51 = 0u;
      *&v48 = v17;
      *(&v48 + 1) = v19;
      *&v49 = v16;
      BYTE8(v49) = 4;
      goto LABEL_24;
    }

    v39 = a1;
    v27 = *(v4 + 16);
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v27 + 48), v16, v43);
    v29 = v43[0];
    v28 = v43[1];
    v30 = v43[2];
    swift_endAccess();
    *&v41 = v29;
    *(&v41 + 1) = v28;
    *&v42 = v30;
    if (IMDSqlColumnGetObject(&v41))
    {
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    a1 = v39;
    v44 = v41;
    v45 = v42;
    if (!*(&v42 + 1))
    {
      goto LABEL_22;
    }

    sub_1B7C255E0(&v44, &v46);
    sub_1B7C255E0(&v46, &v50);
    *&v48 = v17;
    *(&v48 + 1) = v19;
    *&v49 = v16;
    BYTE8(v49) = v25;
LABEL_24:
    swift_beginAccess();
    sub_1B7CE097C(&v48, v10);
    swift_endAccess();
    swift_beginAccess();
    v31 = *(v4 + 24);
    if (*(v31 + 16) && (v32 = sub_1B7AE1160(v10), (v33 & 1) != 0))
    {
      sub_1B7CDB094(*(v31 + 56) + (v32 << 6), &v52);
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
    }

LABEL_28:
    swift_endAccess();
    if (!*(&v52 + 1))
    {
      v38 = v10 + 1;
      goto LABEL_36;
    }

    v34 = v53;
    v56 = v52;
    v57 = v53;
    v35 = v54;
    v36 = v55;
    v58 = v54;
    v59 = v55;
    *v8 = v52;
    v8[1] = v34;
    v8[2] = v35;
    v8[3] = v36;
    if (v7 - 1 == v10)
    {
      goto LABEL_34;
    }

    v8 += 4;
    v37 = *(v4 + 16);
    swift_beginAccess();
    LODWORD(v37) = IMDSqlStatementColumnCount((v37 + 48));
    swift_endAccess();
    if (++v10 >= v37)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void *sub_1B7CD9B30(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2 || !a3)
  {
LABEL_10:
    v7 = 0;
LABEL_13:
    *v4 = v3;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (!IMDSqlOperationHasRows(v3 + 16))
      {
        swift_endAccess();
        goto LABEL_13;
      }

      type metadata accessor for SqlOperation.Row();
      v9 = swift_allocObject();
      *(v9 + 16) = v3;
      *(v9 + 24) = v8;
      *(a2 + 8 * v7) = v9;
      if (a3 - 1 == v7)
      {
        break;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    swift_endAccess();

    v7 = a3;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_1B7CD9C2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1B7CD9D84(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1B7CFF110();
  sub_1B7C60A20();
  sub_1B7CBC9EC();
  result = sub_1B7CFEE10();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1B7CFF140())
      {
        goto LABEL_30;
      }

      sub_1B7C60A20();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1B7CD9F80(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B7CDA0D8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1B7CDA1D8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B7CDA2D8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1B7CFEC30();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B7CDA85C();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B7CFF280();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1B7CDA85C()
{
  v0 = sub_1B7CFEC40();
  v4 = sub_1B7CDA8DC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1B7CDA8DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B7CFEB00();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1B7CFF010();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1B7CD95C0(v9, 0);
  v12 = sub_1B7CDAA34(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1B7CFEB00();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1B7CFF280();
LABEL_4:

  return sub_1B7CFEB00();
}

unint64_t sub_1B7CDAA34(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B7CD9634(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B7CFEBD0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B7CFF280();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B7CD9634(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B7CFEBB0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B7CDAC54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    sub_1B7CFF210();

    sub_1B7AF7F10(0x3F, 0xE100000000000000, v1);
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v4 = sub_1B7CFEA10();
    v6 = v5;

    MEMORY[0x1B8CADCA0](v4, v6);

    MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;

    v8 = sub_1B7CD73E4(0xD00000000000002DLL, 0x80000001B7D5BAD0, sub_1B7CDAE48, v7, sub_1B7CDB4A0, sub_1B7CDB4A4);

    if (v8)
    {
      return v8;
    }

    else
    {
      return v2;
    }
  }

  return v2;
}

void sub_1B7CDAE64(sqlite3_int64 a1)
{
  v2 = v1;
  v12[3] = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v4 = off_1EBA52D08;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v4 + 16, v6);
  swift_endAccess();

  swift_beginAccess();
  v11 = 0;
  IMDSqlOperationGetError((v4 + 16), &v11);
  v7 = v11;
  swift_endAccess();
  if (v7)
  {
    swift_willThrow();
    v7;
  }

  else
  {
    sub_1B7CD80B8(v4, a1, v12);
    if (!v1)
    {
      swift_beginAccess();
      IMDSqlOperationFinishQuery((v4 + 16));
      v11 = 0;
      IMDSqlOperationGetError((v4 + 16), &v11);
      v8 = v11;
      swift_endAccess();
      if (!v8)
      {
        goto LABEL_10;
      }

      swift_willThrow();
      v2 = v8;
    }

    swift_beginAccess();
    IMDSqlOperationFinishQuery((v4 + 16));
    v11 = 0;
    IMDSqlOperationGetError((v4 + 16), &v11);
    v9 = v11;
    swift_endAccess();
    swift_willThrow();
    if (v9)
    {
      v9;
    }
  }

LABEL_10:
  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7CDB0F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B7CDB138(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1B7CDB188(uint64_t *a1)
{
  v3 = sub_1B7C107FC(&qword_1EBA53998, &qword_1B7D139B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1B7AE9124(a1, v8);
  sub_1B7CDB334();
  sub_1B7CFF820();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1B7CFF460();
    v10[14] = 1;
    sub_1B7CFF420();
    (*(v4 + 8))(v7, v3);
  }

  sub_1B7AE9168(a1);
  return v8;
}

unint64_t sub_1B7CDB334()
{
  result = qword_1EBA539A0;
  if (!qword_1EBA539A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539A0);
  }

  return result;
}

unint64_t sub_1B7CDB39C()
{
  result = qword_1EBA539B0;
  if (!qword_1EBA539B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539B0);
  }

  return result;
}

unint64_t sub_1B7CDB3F4()
{
  result = qword_1EBA539B8;
  if (!qword_1EBA539B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539B8);
  }

  return result;
}

unint64_t sub_1B7CDB44C()
{
  result = qword_1EBA539C0;
  if (!qword_1EBA539C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539C0);
  }

  return result;
}

uint64_t sub_1B7CDB4A8(sqlite3_stmt *a1, int a2, char a3)
{
  result = sqlite3_bind_int(a1, a2, a3);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB568@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  result = sqlite3_column_int(a1, a2);
  if (result < -128)
  {
    __break(1u);
  }

  else if (result <= 127)
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CDB5B0(sqlite3_stmt *a1, int a2, __int16 a3)
{
  result = sqlite3_bind_int(a1, a2, a3);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB670@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _WORD *a3@<X8>)
{
  result = sqlite3_column_int(a1, a2);
  if (result < -32768)
  {
    __break(1u);
  }

  else if (result < 0x8000)
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CDB6B8(sqlite3_stmt *a1, int a2)
{
  result = sqlite3_bind_int(a1, a2, *v2);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB75C@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  result = sqlite3_column_int(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7CDB78C(sqlite3_stmt *a1, int a2)
{
  result = sqlite3_bind_int64(a1, a2, *v2);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB830(sqlite3_stmt *a1, int a2, unsigned __int8 a3)
{
  result = sqlite3_bind_int(a1, a2, a3);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB8F0@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  result = sqlite3_column_int(a1, a2);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CDB934(sqlite3_stmt *a1, int a2, unsigned __int16 a3)
{
  result = sqlite3_bind_int(a1, a2, a3);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDB9F4@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _WORD *a3@<X8>)
{
  result = sqlite3_column_int(a1, a2);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (!WORD1(result))
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CDBA38(sqlite3_stmt *a1, int a2, unsigned int a3)
{
  result = sqlite3_bind_int64(a1, a2, a3);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1B7CDBAF8@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CDBB3C(uint64_t result, int a2, sqlite3_int64 a3)
{
  if (a3 < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  result = sqlite3_bind_int64(result, a2, a3);
  if (!result)
  {
    return result;
  }

  result = sqlite3_db_handle(v3);
  if (!result)
  {
    goto LABEL_8;
  }

  v4 = result;
  result = sqlite3_errmsg(result);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = sub_1B7CFEB70();
  v7 = v6;
  v8 = sqlite3_extended_errcode(v4);
  sub_1B7C951E8();
  swift_allocError();
  *v9 = v8;
  v9[1] = v5;
  v9[2] = v7;
  return swift_willThrow();
}

sqlite3_int64 sub_1B7CDBBE4@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, sqlite3_int64 *a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B7CDBC1C(sqlite3_stmt *a1, int a2)
{
  result = sqlite3_bind_double(a1, a2, *v2);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDBCF0(uint64_t result, uint64_t a2, sqlite3_stmt *a3, int a4)
{
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v4 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = _IMDSQLTransient();
  result = sqlite3_bind_blob(a3, a4, v7, v4, v8);
  if (!result)
  {
    return result;
  }

  result = sqlite3_db_handle(a3);
  if (!result)
  {
    goto LABEL_13;
  }

  v9 = result;
  result = sqlite3_errmsg(result);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = sub_1B7CFEB70();
  v12 = v11;
  v13 = sqlite3_extended_errcode(v9);
  sub_1B7C951E8();
  swift_allocError();
  *v14 = v13;
  v14[1] = v10;
  v14[2] = v12;
  return swift_willThrow();
}

_BYTE *sub_1B7CDBE10@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = sqlite3_column_bytes(a1, a2);
  if (v6 < 1)
  {
    result = 0;
    v9 = 0xC000000000000000;
    goto LABEL_5;
  }

  v7 = v6;
  result = sqlite3_column_blob(a1, a2);
  if (result)
  {
    result = sub_1B7C3A6B4(result, v7);
LABEL_5:
    *a3 = result;
    a3[1] = v9;
    return result;
  }

  __break(1u);
  return result;
}

sqlite3 *sub_1B7CDBE8C(sqlite3_stmt *a1, int a2)
{
  sub_1B7CFE140();
  v4 = _IMDSQLTransient();
  v5 = sub_1B7CFEAD0();

  v6 = sqlite3_bind_text(a1, a2, (v5 + 32), -1, v4);

  if (v6)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v8 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v9 = sub_1B7CFEB70();
        v11 = v10;
        v12 = sqlite3_extended_errcode(v8);
        sub_1B7C951E8();
        swift_allocError();
        *v13 = v12;
        v13[1] = v9;
        v13[2] = v11;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

const unsigned __int8 *sub_1B7CDBF84@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1B7C107FC(&qword_1EBA525D8, &qword_1B7D0CB88);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  result = sqlite3_column_text(a1, a2);
  if (result)
  {
    sub_1B7CFEB80();
    sub_1B7CFE130();

    v11 = sub_1B7CFE180();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_1B7CDC378(v9);
      sub_1B7CDC3E0();
      swift_allocError();
      return swift_willThrow();
    }

    else
    {
      return (*(v12 + 32))(a3, v9, v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7CDC150(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x1EEE9AC00])();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, v18);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    return (*(v7 + 8))(v11, a3);
  }

  (*(v14 + 32))(v17, v11, v13);
  (*(a4 + 16))(a1, v21, v13, a4);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1B7CDC378(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA525D8, &qword_1B7D0CB88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7CDC3E0()
{
  result = qword_1EBA539C8;
  if (!qword_1EBA539C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539C8);
  }

  return result;
}

uint64_t sub_1B7CDC434(uint64_t a1, unint64_t a2, sqlite3_stmt *a3, int a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v21, 0, 14);
      v6 = v21;
      v5 = v21;
      goto LABEL_23;
    }

    v7 = a3;
    v8 = a4;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    a1 = sub_1B7CFDC90();
    v11 = a1;
    if (a1)
    {
      a1 = sub_1B7CFDCB0();
      if (__OFSUB__(v9, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 += v9 - a1;
    }

    v12 = __OFSUB__(v10, v9);
    v13 = v10 - v9;
    if (!v12)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v21[0] = a1;
    LOWORD(v21[1]) = a2;
    BYTE2(v21[1]) = BYTE2(a2);
    BYTE3(v21[1]) = BYTE3(a2);
    BYTE4(v21[1]) = BYTE4(a2);
    BYTE5(v21[1]) = BYTE5(a2);
    v5 = v21 + BYTE6(a2);
    v6 = v21;
    goto LABEL_23;
  }

  v14 = a1;
  v13 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = a3;
  v8 = a4;
  v11 = sub_1B7CFDC90();
  if (v11)
  {
    v15 = sub_1B7CFDCB0();
    if (!__OFSUB__(v14, v15))
    {
      v11 += v14 - v15;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v16 = sub_1B7CFDCA0();
  if (v16 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v17 + v11);
  if (v11)
  {
    v5 = v18;
  }

  else
  {
    v5 = 0;
  }

  v6 = v11;
  a3 = v7;
  a4 = v8;
LABEL_23:
  result = sub_1B7CDBCF0(v6, v5, a3, a4);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B7CDC62C()
{
  result = qword_1EBA539D0;
  if (!qword_1EBA539D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539D0);
  }

  return result;
}

uint64_t sub_1B7CDC9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - v14;
  v16 = &v6[OBJC_IVAR___IMDSyncDeletedChatRecord_ckRecordID];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v6[OBJC_IVAR___IMDSyncDeletedChatRecord_guid];
  *v17 = a1;
  *(v17 + 1) = a2;
  *v16 = a3;
  *(v16 + 1) = a4;
  sub_1B7C108AC(a5, v15);
  v18 = sub_1B7CFE120();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    sub_1B7C10844(v15);
    v20 = 0.0;
LABEL_6:
    *&v6[OBJC_IVAR___IMDSyncDeletedChatRecord_rawDate] = v20;
    v25.receiver = v6;
    v25.super_class = IMDSyncDeletedChatRecord;
    v24 = objc_msgSendSuper2(&v25, sel_init);
    sub_1B7C10844(a5);
    return v24;
  }

  sub_1B7CFE060();
  v22 = v21;
  result = (*(v19 + 8))(v15, v18);
  v20 = v22 * 1000000000.0;
  if (COERCE__INT64(fabs(v22 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v20 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v20 < 9.22337204e18)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id IMDSyncDeletedChatRecord.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  v4 = sub_1B7CFE120();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  v9 = sub_1B7CFEFB0();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B7CFEFB0();
    v12 = sub_1B7CFEA30();
    [a1 decodeIntegerForKey_];

    sub_1B7CFE050();
    v13 = sub_1B7CFE0A0();
    v14 = [v2 initWithGUID:v10 ckRecordID:v11 date:v13];

    (*(v5 + 8))(v8, v4);
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

void sub_1B7CDCF58(void *a1)
{
  v3 = [v1 guid];
  if (!v3)
  {
    sub_1B7CFEA60();
    v3 = sub_1B7CFEA30();
  }

  v4 = sub_1B7CFEA30();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [v1 ckRecordID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B7CFEA30();
    [a1 encodeObject:v6 forKey:v7];
  }

  v8 = [v1 rawDate];
  v9 = sub_1B7CFEA30();
  [a1 encodeInt64:v8 forKey:v9];
}

id IMDSyncDeletedChatRecord.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1B7CDD1FC()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000083, 0x80000001B7D5BD00);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0);

  if (!v1)
  {
    sub_1B7C741A8();

    sub_1B7C741A8();
  }

  return result;
}

uint64_t sub_1B7CDD354@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1B7CFEA30();
  v5 = [v4 stringByAbbreviatingWithTildeInPath];

  sub_1B7CFEA60();
  v6 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlStatementBindTextFromCFString(a1 + 48, v6);
  swift_endAccess();

  swift_beginAccess();
  v10[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v10);
  v7 = v10[0];
  swift_endAccess();
  if (v7)
  {
    swift_willThrow();
    v7;
  }

  else
  {

    result = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
    *a2 = result;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}