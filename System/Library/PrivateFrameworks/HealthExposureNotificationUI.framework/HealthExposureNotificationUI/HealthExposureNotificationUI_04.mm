void sub_2516EFBAC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI16ENManagerAdapter_statusChangeObservers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_251703464();
    type metadata accessor for ENManagerAdapter.StatusChangeObserver();
    sub_2516F17B0();
    sub_2517032F4();
    v6 = v23;
    v5 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v4;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      sub_2516ABA28();

      return;
    }

    while (1)
    {
      v19 = *&v18[OBJC_IVAR___ENStatusChangeObserver_didChangeHandler + 8];
      (*&v18[OBJC_IVAR___ENStatusChangeObserver_didChangeHandler])(a1, a2);

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_251703494())
      {
        type metadata accessor for ENManagerAdapter.StatusChangeObserver();
        swift_dynamicCast();
        v18 = v22;
        v16 = v8;
        v17 = v9;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id ENManagerAdapter.StatusChangeObserver.__allocating_init(adapter:didChangeHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR___ENStatusChangeObserver_active] = 0;
  swift_unknownObjectWeakAssign();
  v8 = &v7[OBJC_IVAR___ENStatusChangeObserver_didChangeHandler];
  *v8 = a2;
  v8[1] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id ENManagerAdapter.StatusChangeObserver.init(adapter:didChangeHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___ENStatusChangeObserver_active] = 0;
  swift_unknownObjectWeakAssign();
  v7 = &v3[OBJC_IVAR___ENStatusChangeObserver_didChangeHandler];
  *v7 = a2;
  v7[1] = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

uint64_t ENManagerAdapter.StatusChangeObserver.active.getter()
{
  v1 = OBJC_IVAR___ENStatusChangeObserver_active;
  swift_beginAccess();
  return *(v0 + v1);
}

void ENManagerAdapter.StatusChangeObserver.active.setter(char a1)
{
  v3 = OBJC_IVAR___ENStatusChangeObserver_active;
  swift_beginAccess();
  v1[v3] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    if (a1)
    {
      sub_2516F08B0(&v7, v1);
      v6 = v7;
    }

    else
    {
      v6 = sub_2516F161C(v1);
    }

    swift_endAccess();
  }
}

void (*ENManagerAdapter.StatusChangeObserver.active.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___ENStatusChangeObserver_active;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2516F0290;
}

void sub_2516F0290(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = v3[3];
      v7 = Strong;
      if (*(v6 + v3[4]) == 1)
      {
        swift_beginAccess();
        sub_2516F08B0(&v10, v6);
        v8 = v10;
        swift_endAccess();
      }

      else
      {
        swift_beginAccess();
        v9 = sub_2516F161C(v6);
        swift_endAccess();
      }
    }
  }

  free(v3);
}

id ENManagerAdapter.StatusChangeObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR___ENStatusChangeObserver_active;
  swift_beginAccess();
  v0[v1] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ENManagerAdapter.StatusChangeObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2516F0548(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_251703484();

    if (v9)
    {

      type metadata accessor for ENUIPublicHealthAgencyModel(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_251703474();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2516A5AF4(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2516A620C(v22 + 1);
    }

    v20 = v8;
    sub_2516ABFB4();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for ENUIPublicHealthAgencyModel(0);
  v11 = *(v6 + 40);
  v12 = sub_2517033A4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2516F0AC0(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2517033B4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_2516F0760(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2517036E4();
  sub_2517031A4();
  v9 = sub_251703724();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_251703624() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2516F0C40(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2516F08B0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_251703484();

    if (v9)
    {

      type metadata accessor for ENManagerAdapter.StatusChangeObserver();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_251703474();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2516A5B1C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2516A6480(v22 + 1);
    }

    v20 = v8;
    sub_2516ABFB4();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  v11 = *(v6 + 40);
  v12 = sub_2517033A4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2516F0DC0(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2517033B4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void sub_2516F0AC0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2516A620C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2516F1098(&qword_27F454080, &qword_251708908);
      goto LABEL_12;
    }

    sub_2516F1410(v6 + 1, &qword_27F454080, &qword_251708908);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_2517033A4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ENUIPublicHealthAgencyModel(0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_2517033B4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_251703644();
  __break(1u);
}

uint64_t sub_2516F0C40(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2516A6220(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2516F0F3C();
      goto LABEL_16;
    }

    sub_2516F11D8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2517036E4();
  sub_2517031A4();
  result = sub_251703724();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_251703624();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_251703644();
  __break(1u);
  return result;
}

void sub_2516F0DC0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2516A6480(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2516F1098(&qword_27F454088, &qword_251708910);
      goto LABEL_12;
    }

    sub_2516F1410(v6 + 1, &qword_27F454088, &qword_251708910);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_2517033A4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ENManagerAdapter.StatusChangeObserver();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_2517033B4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_251703644();
  __break(1u);
}

void *sub_2516F0F3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454090, &unk_251708918);
  v2 = *v0;
  v3 = sub_2517034E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_2516F1098(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2517034E4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

uint64_t sub_2516F11D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454090, &unk_251708918);
  result = sub_2517034F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2517036E4();

      sub_2517031A4();
      result = sub_251703724();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2516F1410(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2517034F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_2517033A4();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_2516F161C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_2517034A4();

    if (v7)
    {
      v8 = sub_2516F1804();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  v11 = *(v3 + 40);
  v12 = sub_2517033A4();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_2517033B4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2516F1098(&qword_27F454088, &qword_251708910);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_2516F1958(v14);
  result = v21;
  *v10 = v22;
  return result;
}

unint64_t sub_2516F17B0()
{
  result = qword_27F454410;
  if (!qword_27F454410)
  {
    type metadata accessor for ENManagerAdapter.StatusChangeObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454410);
  }

  return result;
}

uint64_t sub_2516F1804()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_251703474();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2516A5B1C(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_2517033A4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for ENManagerAdapter.StatusChangeObserver();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_2517033B4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_2516F1958(v9);
  result = sub_2517033B4();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2516F1958(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_251703444();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_2517033A4();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t VerificationTravelStatusViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_2516F3C94(a1, a3, v7, ObjectType, a2);
}

uint64_t VerificationTravelStatusViewController.init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_2516F3C94(a1, a3, v3, ObjectType, a2);
}

void sub_2516F1BB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4539F0, &qword_251706F70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v28[-v7];
  v9 = [v0 viewIfLoaded];
  [v9 setNeedsLayout];

  v10 = [v1 tableView];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource];
  if (!v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v10;
  v28[15] = 1;
  v13 = v11;
  sub_251703034();

  v14 = sub_251702EE4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = sub_251702EB4();
  (*(v15 + 8))(v8, v14);
  v17 = [v12 cellForRowAtIndexPath_];

  if (v17)
  {
    type metadata accessor for VerificationCheckmarkCell();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v18[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled] & 1;
      [v18 setNeedsLayout];
    }
  }

LABEL_8:
  v19 = [v1 tableView];
  if (!v19)
  {
    return;
  }

  v20 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource];
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = v19;
  v28[14] = 2;
  v22 = v20;
  sub_251703034();

  v23 = sub_251702EE4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v6, 1, v23) == 1)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v25 = sub_251702EB4();
  (*(v24 + 8))(v6, v23);
  v26 = [v21 cellForRowAtIndexPath_];

  if (v26)
  {
    type metadata accessor for VerificationCheckmarkCell();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v27[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = ((v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled] != 2) ^ v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled]) & 1;
      [v27 setNeedsLayout];
    }
  }
}

void *sub_2516F1F34@<X0>(void *result@<X0>, char *a2@<X8>)
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

Swift::Void __swiftcall VerificationTravelStatusViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_2516F2190();
  v1 = [v0 navigationItem];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v5 = 0u;
  v6 = 0u;
  v2 = sub_251703134();

  v3 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v4 = [v3 initWithTitle:v2 style:0 target:0 action:{0, v5, v6}];

  swift_unknownObjectRelease();
  [v1 setBackBarButtonItem_];
}

void sub_2516F2190()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_primaryButton];
  v3 = sub_251703134();
  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v4 = [v0 buttonTray];
  [v4 addButton_];

  sub_251702C94();
  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_secondaryButton];
  v6 = sub_251703134();
  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = [objc_allocWithZone(type metadata accessor for VerificationTableView()) init];
  [v0 setTableView_];

  v9 = [v0 tableView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 setDelegate_];

  v11 = [v0 tableView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  type metadata accessor for AuthorityTextCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_251703134();
  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

  v15 = [v0 tableView];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  type metadata accessor for VerificationCheckmarkCell();
  v17 = swift_getObjCClassFromMetadata();
  v18 = sub_251703134();
  [v16 registerClass:v17 forCellReuseIdentifier:v18];

  v19 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_traveledCell];
  v20 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
  sub_251702C94();
  v21 = sub_251703134();

  [v20 setText_];

  v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled;
  v19[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled] & 1;
  [v19 setNeedsLayout];
  v23 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_notTraveledCell];
  v24 = *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
  sub_251702C94();
  v25 = sub_251703134();

  [v24 setText_];

  v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = ((v1[v22] != 2) ^ v1[v22]) & 1;
  [v23 setNeedsLayout];
  if (![v1 tableView])
  {
LABEL_13:
    __break(1u);
    return;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454708, &qword_251709C40));
  v27 = sub_251702FE4();
  v28 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource] = v27;
  v29 = v27;

  sub_251703004();
  sub_2516F2B14();
  v30 = [v1 navigationItem];
  v31 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  [v30 setRightBarButtonItem_];

  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251708140;
  v34 = [v1 scrollView];
  v35 = [v34 contentLayoutGuide];

  v36 = [v35 heightAnchor];
  v37 = [v1 scrollView];
  v38 = [v37 safeAreaLayoutGuide];

  v39 = [v38 heightAnchor];
  v40 = [v36 constraintGreaterThanOrEqualToAnchor_];

  *(v33 + 32) = v40;
  sub_25168B5B4();
  v41 = sub_2517031F4();

  [v32 activateConstraints_];
}

char *sub_2516F294C(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  if (v4)
  {
    if (v4 == 1)
    {
      v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_traveledCell;
    }

    else
    {
      v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_notTraveledCell;
    }

    v8 = *(Strong + v7);
  }

  else
  {
    v9 = sub_251703134();
    v10 = sub_251702EB4();
    v11 = [a1 dequeueReusableCellWithIdentifier:v9 forIndexPath:v10];

    type metadata accessor for AuthorityTextCell();
    v8 = swift_dynamicCastClassUnconditional();
    v12 = *&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_healthAgencyModel];
    v13 = *(v12 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
    v14 = (v12 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText);
    v15 = *v14;
    v16 = v14[1];
    v17 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
    v18 = v13;

    v19 = sub_2516DD44C(v18, 20.0, 20.0, 20.0, 20.0);
    v20 = *&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView];
    *&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView] = v19;
    v21 = v19;
    sub_2516FDCBC(v20);

    v6 = v20;
  }

  return v8;
}

id sub_2516F2B14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4546F8, &unk_251709C30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  result = [v0 isViewLoaded];
  if (!result)
  {
    return result;
  }

  sub_2516F42E4();
  sub_2516F4338();
  sub_251702FD4();
  sub_251702FB4();
  v16[15] = 0;
  sub_251702FA4();
  v16[14] = 1;
  result = sub_251702FA4();
  v11 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  (*(v3 + 16))(v7, v9, v2);
  v12 = v11;
  result = [v1 tableView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result window];

  if (v14)
  {
  }

  sub_251703014();

  v15 = *(v3 + 8);
  v15(v7, v2);
  return (v15)(v9, v2);
}

Swift::Void __swiftcall VerificationTravelStatusViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_primaryButton] setEnabled_];
}

void VerificationTravelStatusViewController.tableView(_:shouldHighlightRowAt:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (!v1)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return;
  }

  v2 = v1;
  sub_251702FF4();

  if (v3 - 1 >= 2 && v3)
  {
    goto LABEL_6;
  }
}

void VerificationTravelStatusViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v3 = sub_251702EB4();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  v4 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  sub_251702FF4();

  if (v10 > 1u)
  {
    if (v10 == 2)
    {
      v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled;
      v9 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled);
      if (v9 == 2 || (v9 & 1) != 0)
      {
        v8 = 0;
        goto LABEL_12;
      }

LABEL_11:
      v8 = 2;
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (!v10)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled;
  v7 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled);
  if (v7 != 2 && (v7 & 1) != 0)
  {
    goto LABEL_11;
  }

  v8 = 1;
LABEL_12:
  *(v1 + v6) = v8;
  sub_2516F1BB8();
}

void VerificationTravelStatusViewController.tableView(_:heightForRowAt:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v2;
  sub_251702FF4();

  if (v8 <= 1u)
  {
    if (!v8)
    {
      v5 = *MEMORY[0x277D76F30];
      return;
    }

    v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_traveledCell;
    goto LABEL_8;
  }

  if (v8 != 2)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_notTraveledCell;
LABEL_8:
  v7 = *(v1 + v6);
  [a1 bounds];
  [v7 systemLayoutSizeFittingSize_];
}

uint64_t sub_2516F3480()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow + 8);
  type metadata accessor for VerificationOnboardingFlow(0);
  if (swift_dynamicCastClass())
  {
    v3 = swift_dynamicCastClassUnconditional();
    v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled);
    v5 = &OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled;
LABEL_5:
    v6 = *v5;
    swift_beginAccess();
    *(v3 + v6) = v4;
    goto LABEL_6;
  }

  type metadata accessor for PreAuthorizationFlow(0);
  if (swift_dynamicCastClass())
  {
    v3 = swift_dynamicCastClassUnconditional();
    v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled);
    v5 = &OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_hasTraveled;
    goto LABEL_5;
  }

LABEL_6:
  ObjectType = swift_getObjectType();
  return (*(v2 + 120))(v0, &protocol witness table for VerificationTravelStatusViewController, ObjectType, v2);
}

id VerificationTravelStatusViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_251703134();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_251703134();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id VerificationTravelStatusViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_251703134();

  if (a4)
  {
    v10 = sub_251703134();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id VerificationTravelStatusViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id VerificationTravelStatusViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

id VerificationTravelStatusViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2516F3C94(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_hasTraveled] = 2;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource] = 0;
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_traveledCell;
  v11 = type metadata accessor for VerificationCheckmarkCell();
  *&a3[v10] = [objc_allocWithZone(v11) initWithStyle:0 reuseIdentifier:0];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_notTraveledCell;
  *&a3[v12] = [objc_allocWithZone(v11) initWithStyle:0 reuseIdentifier:0];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_primaryButton;
  *&a3[v13] = [objc_opt_self() boldButton];
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_secondaryButton;
  *&a3[v14] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v15 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_flow];
    *v15 = a1;
    v15[1] = a5;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_healthAgencyModel] = a2;
    v16 = qword_28151EB58;
    swift_unknownObjectRetain();
    v17 = a2;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v18 = sub_251703134();

    v23.receiver = a3;
    v23.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_, v18, 0, 0, 0xE000000000000000);

    v20 = v19;
    [v20 set:1 shouldInlineButtontray:?];

    swift_unknownObjectRelease();
    return v20;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v22 = sub_251703194();
    MEMORY[0x25307F580](v22);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

uint64_t sub_2516F3F70(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4546F8, &unk_251709C30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    sub_251703024();

    v11 = sub_251702FC4();
    result = (*(v4 + 8))(v8, v3);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v11 + 16) > a1)
    {
      v12 = *(v11 + a1 + 32);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2516F40AC(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4546F8, &unk_251709C30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI38VerificationTravelStatusViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    sub_251703024();

    v11 = sub_251702FC4();
    result = (*(v4 + 8))(v8, v3);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v11 + 16) > a1)
    {
      v12 = *(v11 + a1 + 32);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2516F4230()
{
  result = qword_27F4546E8;
  if (!qword_27F4546E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4546E8);
  }

  return result;
}

unint64_t sub_2516F4288()
{
  result = qword_27F4546F0;
  if (!qword_27F4546F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4546F0);
  }

  return result;
}

unint64_t sub_2516F42E4()
{
  result = qword_27F454710;
  if (!qword_27F454710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454710);
  }

  return result;
}

unint64_t sub_2516F4338()
{
  result = qword_27F454718;
  if (!qword_27F454718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454718);
  }

  return result;
}

uint64_t VerificationWelcomeViewController.init(flow:agencyModel:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v54 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v54 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v20 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_primaryButton;
  v21 = objc_opt_self();
  v22 = v3;
  *&v3[v20] = [v21 boldButton];
  v23 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_secondaryButton;
  *&v22[v23] = [objc_opt_self() linkButton];
  *&v22[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_flow] = a1;
  v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel;
  *&v22[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel] = a2;

  v25 = a2;
  v26 = [v25 supportsFeatures_];
  v60 = ObjectType;
  if (v26)
  {
    v56 = v24;
    v57 = a1;
    v27 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL;
    sub_251699D18(v25 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v19, &qword_27F453E10, &unk_251708160);
    v28 = sub_251702DA4();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    v31 = v30(v19, 1, v28);
    sub_25168B718(v19, &qword_27F453E10, &unk_251708160);
    if (v31 == 1)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      ObjectType = v60;
    }

    else
    {
      v55 = v25;
      sub_251699D18(v25 + v27, v17, &qword_27F453E10, &unk_251708160);
      result = v30(v17, 1, v28);
      if (result == 1)
      {
        __break(1u);
        goto LABEL_26;
      }

      v37 = sub_251702D64();
      v33 = v38;
      (*(v29 + 8))(v17, v28);
      v32 = v37 & 0xFFFFFFFFFFFFLL;
      ObjectType = v60;
      v25 = v55;
    }

    v39 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v39 = v32;
    }

    v34 = v39 != 0;
    v35 = v61;
    v24 = v56;
  }

  else
  {
    v34 = 0;
    v35 = v61;
  }

  v22[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_regionSupportsWebReport] = v34;
  if ([v25 supportsFeatures_])
  {
    sub_251699D18(v25 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_webReportURL, v35, &qword_27F453E10, &unk_251708160);
    v40 = sub_251702DA4();
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    if (v42(v35, 1, v40) != 1)
    {

      sub_25168B718(v35, &qword_27F453E10, &unk_251708160);
      v47 = 0;
LABEL_21:
      ObjectType = v60;
      goto LABEL_22;
    }

    v55 = v25;
    sub_25168B718(v35, &qword_27F453E10, &unk_251708160);
    v43 = v59;
    sub_251699D18(*&v22[v24] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL, v59, &qword_27F453E10, &unk_251708160);
    v44 = v42(v43, 1, v40);
    sub_25168B718(v43, &qword_27F453E10, &unk_251708160);
    if (v44 == 1)
    {
      v45 = 0;
      v46 = 0xE000000000000000;
LABEL_18:
      v25 = v55;

      v51 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v51 = v45;
      }

      v47 = v51 != 0;
      goto LABEL_21;
    }

    v48 = v58;
    sub_251699D18(*&v22[v24] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL, v58, &qword_27F453E10, &unk_251708160);
    result = (v42)(v48, 1, v40);
    if (result != 1)
    {
      v49 = sub_251702D64();
      v46 = v50;
      (*(v41 + 8))(v48, v40);
      v45 = v49 & 0xFFFFFFFFFFFFLL;
      goto LABEL_18;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v47 = 0;
LABEL_22:
  v22[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_regionSupportsSelfReportV1] = v47;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v52 = sub_251703134();

  v62.receiver = v22;
  v62.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v62, sel_initWithTitle_detailText_icon_contentLayout_, v52, 0, 0, 2);

  return v53;
}

Swift::Void __swiftcall VerificationWelcomeViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516F4A2C();
}

void sub_2516F4A2C()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_primaryButton];
  v3 = sub_251703134();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v4 = [v0 buttonTray];
  [v4 addButton_];

  sub_251702C94();
  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_secondaryButton];
  v6 = sub_251703134();

  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:v0 action:sel_didTapCancel forControlEvents:64];
  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel];
  v9 = *(v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
  v10 = (v8 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationIntroductoryText);
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
  v14 = v9;

  v15 = sub_2516DD44C(v14, 20.0, 20.0, 20.0, 20.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v1 contentView];
  [v16 addSubview_];

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2517068A0;
  v19 = [v15 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v18 + 32) = v22;
  v23 = [v15 trailingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v18 + 40) = v26;
  v27 = [v15 topAnchor];
  v28 = [v1 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v18 + 48) = v30;
  v31 = [v15 bottomAnchor];

  v32 = [v1 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v18 + 56) = v34;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v35 = sub_2517031F4();

  [v17 activateConstraints_];
}

void sub_2516F4FC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v35[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35[-v7];
  v9 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_flow];
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  swift_beginAccess();
  sub_251699D18(v9 + v10, v8, &qword_27F454000, &unk_251708500);
  v11 = sub_251702E64();
  LODWORD(v10) = (*(*(v11 - 8) + 48))(v8, 1, v11);
  sub_25168B718(v8, &qword_27F454000, &unk_251708500);
  if (v10 != 1)
  {
    [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_primaryButton] setUserInteractionEnabled_];
    v18 = swift_allocObject();
    *(v18 + 16) = v0;
    sub_25168CD90(0, &qword_28151E930, 0x277D85C78);
    v19 = v0;
    v20 = sub_251703364();
    sub_2516AAE70(sub_2516F5AE8, v18);

    return;
  }

  if ((*(v9 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_enteredFromMainScreen) & 1) == 0 && ![*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel] supportsFeatures_])
  {
    v28 = sub_2516A3614(v9);
    if (v28)
    {
      v29 = v28;
      v30 = [v0 navigationController];
      if (!v30)
      {
LABEL_13:

        return;
      }

LABEL_12:
      v31 = v30;
      [v30 pushViewController:v29 animated:1];

      goto LABEL_13;
    }

LABEL_17:
    swift_beginAccess();
    v33 = *(v9 + 16);
    v34 = *(v9 + 24);

    v33(1);

    return;
  }

  if (v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_regionSupportsSelfReportV1] != 1)
  {
    if (v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_regionSupportsWebReport] == 1)
    {
      v21 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel];
      v22 = objc_allocWithZone(type metadata accessor for WebReportViewController());
      v23 = v21;
      v24 = v21;
      v25 = v0;
      v26 = WebReportViewController.init(agencyModel:)(v24);
      v27 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      [v27 setModalPresentationStyle_];
      [v25 presentViewController:v27 animated:1 completion:0];

      return;
    }

    v32 = sub_2516A3614(v9);
    if (v32)
    {
      v29 = v32;
      v30 = [v0 navigationController];
      if (!v30)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v12 = v0;
  sub_251699D18(*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_healthAgencyModel] + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationCodeHelpURL, v4, &qword_27F453E10, &unk_251708160);
  v13 = sub_251702DA4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = objc_allocWithZone(MEMORY[0x277CDB700]);
    v16 = sub_251702D74();
    v17 = [v15 initWithURL_];

    (*(v14 + 8))(v4, v13);
    [v17 setModalPresentationStyle_];
    [v12 presentViewController:v17 animated:1 completion:0];
  }
}

void sub_2516F5488(void *a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_primaryButton] setUserInteractionEnabled_];
  if (a1)
  {
    v4 = a1;
    if (qword_27F453888 != -1)
    {
      swift_once();
    }

    v5 = sub_251702F84();
    __swift_project_value_buffer(v5, static Logger.testVerification);
    v6 = a1;
    v7 = sub_251702F64();
    v8 = sub_251703324();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F40, &unk_251708510);
      v12 = sub_251703194();
      v14 = sub_251693FCC(v12, v13, &v22);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25167E000, v7, v8, "Failed to receive test metadata %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2530803C0](v10, -1, -1);
      MEMORY[0x2530803C0](v9, -1, -1);

      return;
    }

    v18 = a1;

    goto LABEL_9;
  }

  v15 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33VerificationWelcomeViewController_flow];
  v16 = sub_2516A3614(v15);
  if (v16)
  {
    v21 = v16;
    v17 = [a2 navigationController];
    [v17 pushViewController:v21 animated:1];

    v18 = v21;

LABEL_9:

    return;
  }

  swift_beginAccess();
  v20 = *(v15 + 16);
  v19 = *(v15 + 24);

  v20(1);
}

id VerificationWelcomeViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id VerificationWelcomeViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id VerificationWelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::String __swiftcall OnboardingSource.sourceBundleIdentifier()()
{
  v1 = 0xE000000000000000;
  v2 = 0x800000025170EC50;
  v3 = 0x800000025170EC30;
  v4 = 0xD00000000000001ALL;
  if (v0 != 4)
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  if (v0 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v2 = v3;
  }

  v5 = 0xD00000000000001ELL;
  if (v0 == 2)
  {
    v1 = 0x800000025170EC70;
  }

  else
  {
    v5 = 0;
  }

  if (v0 == 1)
  {
    v5 = 0xD000000000000015;
    v1 = 0x800000025170E650;
  }

  v6 = v0 <= 2;
  if (v0 <= 2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v6)
  {
    v8 = v1;
  }

  else
  {
    v8 = v2;
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

id sub_2516F5BC4()
{
  result = [objc_allocWithZone(type metadata accessor for ViewControllerFactory()) init];
  static ViewControllerFactory.shared = result;
  return result;
}

id ViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *ViewControllerFactory.shared.unsafeMutableAddressor()
{
  if (qword_28151EB48 != -1)
  {
    swift_once();
  }

  return &static ViewControllerFactory.shared;
}

id static ViewControllerFactory.shared.getter()
{
  if (qword_28151EB48 != -1)
  {
    swift_once();
  }

  v1 = static ViewControllerFactory.shared;

  return v1;
}

uint64_t (*ViewControllerFactory.inflightOnboardingStack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ENUIViewControllerFactory_inflightOnboardingStack;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2516F5DF8;
}

uint64_t (*ViewControllerFactory.inflightVerificationStack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ENUIViewControllerFactory_inflightVerificationStack;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2516F79D4;
}

id sub_2516F5ED0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_2516F5F34(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2516F5F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void sub_2516F5FE8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*ViewControllerFactory.inflightPreAuthorizationStack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ENUIViewControllerFactory_inflightPreAuthorizationStack;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2516F79D4;
}

void sub_2516F60D8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id ViewControllerFactory.createOnboardingStack(forAgencyModel:exposureManager:fromAvailabilityAlert:fromDeepLink:subsequentFlow:completion:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (static ENUIPublicHealthAgencyModel.activeRegion)
  {
    goto LABEL_6;
  }

  if (qword_28151EBA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static ENUIPublicHealthAgencyModel.authorizedRegions >> 62)
  {
    if (sub_251703474())
    {
      goto LABEL_6;
    }

LABEL_9:
    v25 = swift_allocObject();
    v25[2] = v7;
    v25[3] = a6;
    v25[4] = a7;
    type metadata accessor for StandardOnboardingFlow();
    v26 = swift_allocObject();
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    v27 = MEMORY[0x277D84F90];
    *(v26 + 64) = 0;
    *(v26 + 72) = v27;
    *(v26 + 97) = 0;
    swift_beginAccess();
    *(v26 + 32) = a1;
    *(v26 + 16) = sub_2516F7530;
    *(v26 + 24) = v25;
    *(v26 + 96) = a3 & 1;
    *(v26 + 97) = a4 & 1;
    *(v26 + 80) = a2;
    *(v26 + 88) = a5;
    v18 = &protocol witness table for StandardOnboardingFlow;
    goto LABEL_7;
  }

  if (!*((static ENUIPublicHealthAgencyModel.authorizedRegions & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_6:
  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = a6;
  v15[4] = a7;
  type metadata accessor for AddRegionOnboardingFlow();
  v16 = swift_allocObject();
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  v17 = MEMORY[0x277D84F90];
  *(v16 + 64) = 0;
  *(v16 + 72) = v17;
  *(v16 + 80) = 0;
  swift_beginAccess();
  *(v16 + 32) = a1;
  *(v16 + 16) = sub_2516F7508;
  *(v16 + 24) = v15;
  *(v16 + 88) = a2;
  *(v16 + 80) = a4 & 1;
  v18 = &protocol witness table for AddRegionOnboardingFlow;
LABEL_7:
  swift_getObjectType();
  v19 = v18[11];
  v20 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = v7;

  v22 = v19();
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v23 setModalInPresentation_];
  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v23;
}

uint64_t sub_2516F6454(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, const char *a5)
{
  if (qword_27F453878 != -1)
  {
    swift_once();
  }

  v8 = sub_251702F84();
  __swift_project_value_buffer(v8, static Logger.general);
  v9 = sub_251702F64();
  v10 = sub_251703314();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1;
    _os_log_impl(&dword_25167E000, v9, v10, a5, v11, 0xCu);
    MEMORY[0x2530803C0](v11, -1, -1);
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return a3(a1);
}

id ViewControllerFactory.createVerificationStack(forAgencyModel:exposureManager:sessionIdentifier:reportType:enteredFromMainScreen:completion:)(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v42 = a5;
  v41 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - v15;
  sub_2516F7688(a3, &v40 - v15);
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = a6;
  v17[4] = a7;
  v18 = type metadata accessor for VerificationOnboardingFlow(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_sessionIdentifier;
  v23 = sub_251702E64();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel;
  *(v21 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_healthAgencyModel) = 0;
  v25 = (v21 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegion);
  *v25 = 0u;
  v25[1] = 0u;
  *(v21 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_currentSelectedRegionSubdivisionCodes) = MEMORY[0x277D84F90];
  v26 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_symptomOnset;
  v27 = type metadata accessor for SymptomOnset(0);
  (*(*(v27 - 8) + 56))(v21 + v26, 1, 1, v27);
  *(v21 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_hasTraveled) = 2;
  *(v21 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated) = 2;
  swift_beginAccess();
  v28 = v7;

  sub_2516D8CF4(v16, v21 + v22);
  swift_endAccess();
  *(v21 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType) = a4;
  swift_beginAccess();
  v29 = *(v21 + v24);
  *(v21 + v24) = a1;
  v30 = a1;

  v31 = v41;
  *(v21 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_nonNilAgencyModel) = v30;
  *(v21 + 16) = sub_2516F76F8;
  *(v21 + 24) = v17;
  *(v21 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_exposureManager) = v31;
  *(v21 + OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_enteredFromMainScreen) = v42;
  v32 = OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_reportType;
  swift_beginAccess();
  if (*(v21 + v32) == 3)
  {
    objc_allocWithZone(type metadata accessor for SelfReportVerificationWelcomeViewController());
    v33 = v30;
    swift_unknownObjectRetain();

    v35 = sub_25169E258(v34, v33);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for VerificationWelcomeViewController());
    v36 = v30;
    swift_unknownObjectRetain();

    v35 = VerificationWelcomeViewController.init(flow:agencyModel:)(v37, v36);
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v38 setModalInPresentation_];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v38;
}

id ViewControllerFactory.createPreAuthorizationStack(forAgencyModel:exposureManager:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PreAuthorizationFlow(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = *(PreAuthorizationFlow.init(agencyModel:exposureManager:completion:)(a1, a2, a3, a4) + 24);
  v12 = objc_allocWithZone(type metadata accessor for PreAuthorizationWelcomeViewController());
  v13 = a1;
  swift_unknownObjectRetain();

  v14 = v11;

  v16 = PreAuthorizationWelcomeViewController.init(flow:agencyModel:)(v15, v14);
  v17 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  [v17 setModalInPresentation_];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v17;
}

id ViewControllerFactory.createKeyReleaseDialogue(with:region:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  sub_2516E4F44(v15);
  v11 = objc_allocWithZone(type metadata accessor for KeyReleaseAuthorizationViewController());
  v12 = a3;

  v13 = _s28HealthExposureNotificationUI37KeyReleaseAuthorizationViewControllerC4with16bundleIdentifier6region17completionHandlerAcA0eF8DialogueV_SSSgSo8ENRegionCSgySbcSgtcfc_0(v15, a1, a2, a3, sub_2516F7824, v10);
  [v13 setModalPresentationStyle_];
  return v13;
}

id ViewControllerFactory.createPreApprovalDialogue(with:region:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  sub_25168D904(v15);
  v11 = objc_allocWithZone(type metadata accessor for PreApprovalViewController());
  v12 = a3;

  v13 = sub_25168D49C(v15, a1, a2, a3, sub_2516F79DC, v10);
  [v13 setModalPresentationStyle_];
  return v13;
}

id ViewControllerFactory.init()()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s28HealthExposureNotificationUI21ViewControllerFactoryC27createAnalyticsConsentStack14forAgencyModel15exposureManager10completionSo06UIViewF0CAA010ENUIPublicamN0C_AA0B9Notifying_pyAA10FlowResultOctF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnalyticsConsentOnboardingFlow();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a1;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 72) = a2;
  v9 = objc_allocWithZone(type metadata accessor for OnboardingAnalyticsViewController());
  v10 = a1;
  swift_unknownObjectRetain();

  v12 = sub_2516AA1D8(v11, v10, v9);
  v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  v14 = v13;
  [v14 setModalInPresentation_];

  return v14;
}

uint64_t sub_2516F7688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516F76F8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v4(a1);
}

id _s28HealthExposureNotificationUI21ViewControllerFactoryC19createTurndownStack21enteredFromMainScreen10completionSo06UIViewF0CSgSb_yAA10FlowResultOctF_0()
{
  swift_beginAccess();
  v0 = static ENUIPublicHealthAgencyModel.turndownEntity;
  if (static ENUIPublicHealthAgencyModel.turndownEntity)
  {
    v1 = objc_allocWithZone(type metadata accessor for TurndownViewController());
    v2 = v0;
    v3 = TurndownViewController.init(turndownEntity:)(v2);
    v0 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v0 setModalInPresentation_];
  }

  return v0;
}

uint64_t sub_2516F7824()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2516F7874()
{
  result = qword_27F454768;
  if (!qword_27F454768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454768);
  }

  return result;
}

unint64_t sub_2516F78CC()
{
  result = qword_27F454770;
  if (!qword_27F454770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454770);
  }

  return result;
}

uint64_t sub_2516F7958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454000, &unk_251708500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OnboardingOpenAppStoreViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_2516F8BDC(a1, a3, v7, ObjectType, a2);
}

id OnboardingOpenAppStoreViewController.init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_2516F8BDC(a1, a3, v3, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingOpenAppStoreViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516F7AE0();
}

void sub_2516F7AE0()
{
  v1 = [objc_opt_self() buttonWithType_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = sub_251703134();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_openAppStoreButtonTapped forControlEvents:64];
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];
  }

  v6 = [v1 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setAdjustsFontForContentSizeCategory_];
  }

  v8 = [v0 contentView];
  [v8 addSubview_];

  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_251709E60;
  v10 = [v1 topAnchor];
  v11 = [v0 contentView];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:8.0];
  *(v9 + 32) = v13;
  v14 = [v1 centerXAnchor];
  v15 = [v0 contentView];
  v16 = [v15 centerXAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v9 + 40) = v17;
  v18 = [v1 leadingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintGreaterThanOrEqualToAnchor_];
  *(v9 + 48) = v21;
  v22 = [v1 trailingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintLessThanOrEqualToAnchor_];
  *(v9 + 56) = v25;
  v26 = [v1 bottomAnchor];

  v27 = [v0 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v9 + 64) = v29;
  sub_25168B5B4();
  v30 = sub_2517031F4();

  [v33 activateConstraints_];

  sub_251702C94();
  v31 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_primaryButton];
  v32 = sub_251703134();

  [v31 setTitle:v32 forState:{0, 0xE000000000000000}];

  [v31 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v34 = [v0 buttonTray];
  [v34 addButton_];
}

void sub_2516F8104()
{
  v1 = type metadata accessor for AppStoreAssetManager();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_healthAgencyModel];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
    v6 = v0;
    if ((ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) == 0)
    {
      v10 = [v6 view];
      if (v10)
      {
        v11 = v10;
        [v10 setUserInteractionEnabled_];

        v12 = swift_allocObject();
        v12[2] = v6;
        v12[3] = v1;
        v12[4] = sub_2516F8F8C;
        v12[5] = v3;
        v13 = v6;

        sub_2516C39D0(0, 0, v5, v4);
        v15 = v14;
        v16 = swift_allocObject();
        v16[2] = sub_2516C4694;
        v16[3] = v12;
        v16[4] = v5;
        v16[5] = v4;
        v18[4] = sub_2516C4040;
        v18[5] = v16;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 1107296256;
        v18[2] = sub_2516C2438;
        v18[3] = &block_descriptor_14;
        v17 = _Block_copy(v18);

        [v15 addFinishBlock_];

        _Block_release(v17);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v7 = [objc_opt_self() defaultWorkspace];
    if (v7)
    {
      v8 = v7;
      v9 = sub_251703134();
      [v8 openApplicationWithBundleID_];
    }
  }

  else
  {
    sub_2516F83A4(0, v0);
  }
}

void sub_2516F83A4(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_251702DA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v13 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_appStoreURL);
    v14 = *(a2 + OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_appStoreURL + 8);
    sub_251702D94();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_2516B5AC4(v7);
      if (qword_27F453878 != -1)
      {
        swift_once();
      }

      v15 = sub_251702F84();
      __swift_project_value_buffer(v15, static Logger.general);
      v16 = sub_251702F64();
      v17 = sub_251703324();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_25167E000, v16, v17, "Error: Invalid URL used as parameter", v18, 2u);
        MEMORY[0x2530803C0](v18, -1, -1);
      }
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v19 = objc_opt_self();
      v20 = [v19 sharedApplication];
      v21 = sub_251702D74();
      v22 = [v20 canOpenURL_];

      if (v22)
      {
        v23 = [v19 sharedApplication];
        v24 = sub_251702D74();
        sub_2516991DC(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_251699304();
        v25 = sub_2517030F4();

        [v23 openURL:v24 options:v25 completionHandler:0];
      }

      else
      {
        v26 = [objc_opt_self() defaultWorkspace];
        if (!v26)
        {
          __break(1u);
          return;
        }

        v27 = v26;
        v28 = sub_251703134();
        [v27 openApplicationWithBundleID_];

        if (qword_27F453878 != -1)
        {
          swift_once();
        }

        v29 = sub_251702F84();
        __swift_project_value_buffer(v29, static Logger.general);
        v30 = sub_251702F64();
        v31 = sub_251703324();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_25167E000, v30, v31, "Error: Could not open URL", v32, 2u);
          MEMORY[0x2530803C0](v32, -1, -1);
        }
      }

      (*(v9 + 8))(v12, v8);
    }
  }
}

id OnboardingOpenAppStoreViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingOpenAppStoreViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingOpenAppStoreViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516F8BDC(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_appStoreURL];
  *v9 = 0xD000000000000029;
  *(v9 + 1) = 0x800000025170A8C0;
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_primaryButton;
  *&a3[v10] = [objc_opt_self() boldButton];
  v11 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_flow];
  *v11 = a1;
  *(v11 + 1) = a5;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI36OnboardingOpenAppStoreViewController_healthAgencyModel] = a2;
  v12 = qword_28151EB58;
  swift_unknownObjectRetain();
  v13 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_251708520;
  v15 = *&v13[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name];
  v16 = *&v13[OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8];
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_25169F41C();
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;

  sub_251703184();

  v17 = sub_251703134();

  v18 = sub_251703134();

  v19 = sub_251703134();
  v20 = [objc_opt_self() systemImageNamed_];

  v29.receiver = a3;
  v29.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v29, sel_initWithTitle_detailText_icon_contentLayout_, v17, v18, v20, 3);

  v22 = v21;
  v23 = [v22 headerView];
  v24 = [objc_opt_self() systemBlueColor];
  [v23 setTintColor_];

  v25 = [v22 headerView];
  LODWORD(v26) = 1036831949;
  [v25 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v22;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t VaccinationQuestionViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_2516FB118(a1, a3, v7, ObjectType, a2);
}

uint64_t VaccinationQuestionViewController.init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_2516FB118(a1, a3, v3, ObjectType, a2);
}

void sub_2516F906C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4539F0, &qword_251706F70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v28[-v7];
  v9 = [v0 viewIfLoaded];
  [v9 setNeedsLayout];

  v10 = [v1 tableView];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource];
  if (!v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v10;
  v28[15] = 1;
  v13 = v11;
  sub_251703034();

  v14 = sub_251702EE4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = sub_251702EB4();
  (*(v15 + 8))(v8, v14);
  v17 = [v12 cellForRowAtIndexPath_];

  if (v17)
  {
    type metadata accessor for VerificationCheckmarkCell();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v18[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated] & 1;
      [v18 setNeedsLayout];
    }
  }

LABEL_8:
  v19 = [v1 tableView];
  if (!v19)
  {
    return;
  }

  v20 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource];
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = v19;
  v28[14] = 2;
  v22 = v20;
  sub_251703034();

  v23 = sub_251702EE4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v6, 1, v23) == 1)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v25 = sub_251702EB4();
  (*(v24 + 8))(v6, v23);
  v26 = [v21 cellForRowAtIndexPath_];

  if (v26)
  {
    type metadata accessor for VerificationCheckmarkCell();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v27[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = ((v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated] != 2) ^ v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated]) & 1;
      [v27 setNeedsLayout];
    }
  }
}

Swift::Void __swiftcall VaccinationQuestionViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_2516F9624();
  v1 = [v0 navigationItem];
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v5 = 0u;
  v6 = 0u;
  v2 = sub_251703134();

  v3 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v4 = [v3 initWithTitle:v2 style:0 target:0 action:{0, v5, v6}];

  swift_unknownObjectRelease();
  [v1 setBackBarButtonItem_];
}

void sub_2516F9624()
{
  v1 = v0;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_primaryButton];
  v3 = sub_251703134();
  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v4 = [v0 buttonTray];
  [v4 addButton_];

  sub_251702C94();
  v5 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_secondaryButton];
  v6 = sub_251703134();
  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = [objc_allocWithZone(type metadata accessor for VerificationTableView()) init];
  [v0 setTableView_];

  v9 = [v0 tableView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 setDelegate_];

  v11 = [v0 tableView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  type metadata accessor for AuthorityTextCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_251703134();
  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

  v15 = [v0 tableView];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  type metadata accessor for VerificationCheckmarkCell();
  v17 = swift_getObjCClassFromMetadata();
  v18 = sub_251703134();
  [v16 registerClass:v17 forCellReuseIdentifier:v18];

  v19 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_vaccinatedCell];
  v20 = *&v19[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
  sub_251702C94();
  v21 = sub_251703134();

  [v20 setText_];

  v22 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated;
  v19[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated] & 1;
  [v19 setNeedsLayout];
  v23 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_notVaccinatedCell];
  v24 = *&v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
  sub_251702C94();
  v25 = sub_251703134();

  [v24 setText_];

  v23[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = ((v1[v22] != 2) ^ v1[v22]) & 1;
  [v23 setNeedsLayout];
  if (![v1 tableView])
  {
LABEL_13:
    __break(1u);
    return;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454808, &qword_25170A068));
  v27 = sub_251702FE4();
  v28 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource];
  *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource] = v27;
  v29 = v27;

  sub_251703004();
  sub_2516F9F98();
  v30 = [v1 navigationItem];
  v31 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  [v30 setRightBarButtonItem_];

  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251708140;
  v34 = [v1 scrollView];
  v35 = [v34 contentLayoutGuide];

  v36 = [v35 heightAnchor];
  v37 = [v1 scrollView];
  v38 = [v37 safeAreaLayoutGuide];

  v39 = [v38 heightAnchor];
  v40 = [v36 constraintGreaterThanOrEqualToAnchor_];

  *(v33 + 32) = v40;
  sub_25168B5B4();
  v41 = sub_2517031F4();

  [v32 activateConstraints_];
}

char *sub_2516F9DD0(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  if (v4)
  {
    if (v4 == 1)
    {
      v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_vaccinatedCell;
    }

    else
    {
      v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_notVaccinatedCell;
    }

    v8 = *(Strong + v7);
  }

  else
  {
    v9 = sub_251703134();
    v10 = sub_251702EB4();
    v11 = [a1 dequeueReusableCellWithIdentifier:v9 forIndexPath:v10];

    type metadata accessor for AuthorityTextCell();
    v8 = swift_dynamicCastClassUnconditional();
    v12 = *&v6[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_healthAgencyModel];
    v13 = *(v12 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
    v14 = (v12 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_vaccinationQuestionText);
    v15 = *v14;
    v16 = v14[1];
    v17 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
    v18 = v13;

    v19 = sub_2516DD44C(v18, 20.0, 20.0, 20.0, 20.0);
    v20 = *&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView];
    *&v8[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView] = v19;
    v21 = v19;
    sub_2516FDCBC(v20);

    v6 = v20;
  }

  return v8;
}

id sub_2516F9F98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4547F8, &unk_25170A058);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  result = [v0 isViewLoaded];
  if (!result)
  {
    return result;
  }

  sub_2516FB768();
  sub_2516FB7BC();
  sub_251702FD4();
  sub_251702FB4();
  v16[15] = 0;
  sub_251702FA4();
  v16[14] = 1;
  result = sub_251702FA4();
  v11 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  (*(v3 + 16))(v7, v9, v2);
  v12 = v11;
  result = [v1 tableView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result window];

  if (v14)
  {
  }

  sub_251703014();

  v15 = *(v3 + 8);
  v15(v7, v2);
  return (v15)(v9, v2);
}

Swift::Void __swiftcall VaccinationQuestionViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  [*&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_primaryButton] setEnabled_];
}

void VaccinationQuestionViewController.tableView(_:shouldHighlightRowAt:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource);
  if (!v1)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return;
  }

  v2 = v1;
  sub_251702FF4();

  if (v3 - 1 >= 2 && v3)
  {
    goto LABEL_6;
  }
}

void VaccinationQuestionViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v3 = sub_251702EB4();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  v4 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource);
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  sub_251702FF4();

  if (v10 > 1u)
  {
    if (v10 == 2)
    {
      v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated;
      v9 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated);
      if (v9 == 2 || (v9 & 1) != 0)
      {
        v8 = 0;
        goto LABEL_12;
      }

LABEL_11:
      v8 = 2;
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (!v10)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated;
  v7 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated);
  if (v7 != 2 && (v7 & 1) != 0)
  {
    goto LABEL_11;
  }

  v8 = 1;
LABEL_12:
  *(v1 + v6) = v8;
  sub_2516F906C();
}

void VaccinationQuestionViewController.tableView(_:heightForRowAt:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource);
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v2;
  sub_251702FF4();

  if (v8 <= 1u)
  {
    if (!v8)
    {
      v5 = *MEMORY[0x277D76F30];
      return;
    }

    v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_vaccinatedCell;
    goto LABEL_8;
  }

  if (v8 != 2)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_notVaccinatedCell;
LABEL_8:
  v7 = *(v1 + v6);
  [a1 bounds];
  [v7 systemLayoutSizeFittingSize_];
}

uint64_t sub_2516FA904()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_flow);
  v2 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_flow + 8);
  type metadata accessor for VerificationOnboardingFlow(0);
  if (swift_dynamicCastClass())
  {
    v3 = swift_dynamicCastClassUnconditional();
    v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated);
    v5 = &OBJC_IVAR____TtC28HealthExposureNotificationUI26VerificationOnboardingFlow_isVaccinated;
LABEL_5:
    v6 = *v5;
    swift_beginAccess();
    *(v3 + v6) = v4;
    goto LABEL_6;
  }

  type metadata accessor for PreAuthorizationFlow(0);
  if (swift_dynamicCastClass())
  {
    v3 = swift_dynamicCastClassUnconditional();
    v4 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated);
    v5 = &OBJC_IVAR____TtC28HealthExposureNotificationUI20PreAuthorizationFlow_isVaccinated;
    goto LABEL_5;
  }

LABEL_6:
  ObjectType = swift_getObjectType();
  return (*(v2 + 120))(v0, &protocol witness table for VaccinationQuestionViewController, ObjectType, v2);
}

id VaccinationQuestionViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_251703134();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_251703134();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id VaccinationQuestionViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_251703134();

  if (a4)
  {
    v10 = sub_251703134();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id VaccinationQuestionViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id VaccinationQuestionViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

id VaccinationQuestionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2516FB118(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_isVaccinated] = 2;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource] = 0;
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_vaccinatedCell;
  v11 = type metadata accessor for VerificationCheckmarkCell();
  *&a3[v10] = [objc_allocWithZone(v11) initWithStyle:0 reuseIdentifier:0];
  v12 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_notVaccinatedCell;
  *&a3[v12] = [objc_allocWithZone(v11) initWithStyle:0 reuseIdentifier:0];
  v13 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_primaryButton;
  *&a3[v13] = [objc_opt_self() boldButton];
  v14 = OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_secondaryButton;
  *&a3[v14] = [objc_opt_self() linkButton];
  if (sub_25168A810())
  {
    v15 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_flow];
    *v15 = a1;
    v15[1] = a5;
    *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_healthAgencyModel] = a2;
    v16 = qword_28151EB58;
    swift_unknownObjectRetain();
    v17 = a2;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v18 = sub_251703134();

    v23.receiver = a3;
    v23.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_, v18, 0, 0, 0xE000000000000000);

    v20 = v19;
    [v20 set:1 shouldInlineButtontray:?];

    swift_unknownObjectRelease();
    return v20;
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453A10, &unk_251706F80);
    v22 = sub_251703194();
    MEMORY[0x25307F580](v22);

    result = sub_251703584();
    __break(1u);
  }

  return result;
}

uint64_t sub_2516FB3F4(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4547F8, &unk_25170A058);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    sub_251703024();

    v11 = sub_251702FC4();
    result = (*(v4 + 8))(v8, v3);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v11 + 16) > a1)
    {
      v12 = *(v11 + a1 + 32);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2516FB530(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4547F8, &unk_25170A058);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC28HealthExposureNotificationUI33VaccinationQuestionViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    sub_251703024();

    v11 = sub_251702FC4();
    result = (*(v4 + 8))(v8, v3);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v11 + 16) > a1)
    {
      v12 = *(v11 + a1 + 32);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2516FB6B4()
{
  result = qword_27F4547E8;
  if (!qword_27F4547E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4547E8);
  }

  return result;
}

unint64_t sub_2516FB70C()
{
  result = qword_27F4547F0;
  if (!qword_27F4547F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4547F0);
  }

  return result;
}

unint64_t sub_2516FB768()
{
  result = qword_27F454810;
  if (!qword_27F454810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454810);
  }

  return result;
}

unint64_t sub_2516FB7BC()
{
  result = qword_27F454818;
  if (!qword_27F454818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F454818);
  }

  return result;
}

void sub_2516FB810()
{
  if ((*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_isPresented) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_isPresented) = 1;
    v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_content);
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *&v35 = sub_2516FD620;
    *(&v35 + 1) = v3;
    *&v33 = MEMORY[0x277D85DD0];
    *(&v33 + 1) = 1107296256;
    *&v34 = sub_251693A80;
    *(&v34 + 1) = &block_descriptor_24_0;
    v4 = _Block_copy(&v33);
    v5 = v1;

    [v2 animateWithDuration:4 delay:v4 usingSpringWithDamping:0 initialSpringVelocity:1.0 options:0.5 animations:1.0 completion:0.0];
    _Block_release(v4);
    v6 = sub_251703134();
    v7 = objc_opt_self();
    v8 = [v7 animationWithKeyPath_];

    v9 = *(MEMORY[0x277CD9DE8] + 80);
    v37 = *(MEMORY[0x277CD9DE8] + 64);
    v38 = v9;
    v10 = *(MEMORY[0x277CD9DE8] + 112);
    v39 = *(MEMORY[0x277CD9DE8] + 96);
    v40 = v10;
    v11 = *(MEMORY[0x277CD9DE8] + 16);
    v33 = *MEMORY[0x277CD9DE8];
    v34 = v11;
    v12 = *(MEMORY[0x277CD9DE8] + 48);
    v35 = *(MEMORY[0x277CD9DE8] + 32);
    v36 = v12;
    v13 = sub_251703304();
    [v8 setToValue_];

    v14 = sub_251703134();
    v15 = [v7 animationWithKeyPath_];

    v16 = sub_251702EF4();
    [v15 setToValue_];

    v17 = sub_251703134();
    v18 = [v7 animationWithKeyPath_];

    v19 = sub_251702EF4();
    [v18 setToValue_];

    v20 = sub_251703134();
    v21 = [v7 animationWithKeyPath_];

    v22 = sub_251703394();
    [v21 setToValue_];

    v23 = [objc_allocWithZone(MEMORY[0x277CD9E00]) init];
    [v23 setDuration_];
    [v23 setFillMode_];
    [v23 setRemovedOnCompletion_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2517068A0;
    *(v24 + 32) = v8;
    *(v24 + 40) = v15;
    *(v24 + 48) = v18;
    *(v24 + 56) = v21;
    sub_25168CD90(0, &unk_28151E958, 0x277CD9DF8);
    v25 = v8;
    v26 = v15;
    v27 = v18;
    v28 = v21;
    v29 = sub_2517031F4();

    [v23 setAnimations_];

    v30 = [objc_opt_self() functionWithName_];
    [v23 setTimingFunction_];

    v31 = [v5 layer];
    v32 = sub_251703134();
    [v31 addAnimation:v23 forKey:v32];
  }
}

void sub_2516FBCEC()
{
  *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_isPresented) = 0;
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_content);
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent_notificationContainer;
  [*&v1[OBJC_IVAR____TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent_notificationContainer] setAlpha_];
  v3 = *&v1[v2];
  CGAffineTransformMakeScale(&v11, 0.6, 0.6);
  [v3 setTransform_];
  v4 = [v1 layer];
  CATransform3DMakeTranslation(&v11, 0.0, 40.0, 0.0);
  CATransform3DScale(&v10, &v11, 0.8, 0.8, 1.0);
  [v4 setTransform_];

  v5 = [v1 layer];
  LODWORD(v6) = 0.5;
  [v5 setShadowOpacity_];

  v7 = [v1 layer];
  [v7 setShadowRadius_];

  v8 = [v1 layer];
  [v8 setShadowOffset_];

  v9 = [v1 layer];
  [v9 removeAllAnimations];
}

id sub_2516FBEA8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_content;
  type metadata accessor for NotificationContent();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_isPresented] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_allocWithZone(MEMORY[0x277D75348]);
  v17[4] = sub_2516FD534;
  v17[5] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2516FD5A0;
  v17[3] = &block_descriptor_18_0;
  v13 = _Block_copy(v17);
  v14 = v11;
  v15 = [v12 initWithDynamicProvider_];
  _Block_release(v13);

  [v14 setBackgroundColor_];

  sub_2516FC030();
  return v14;
}

void sub_2516FC030()
{
  [v0 setClipsToBounds_];
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI23NotificationPreviewView_content];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2517068A0;
  v4 = [v1 widthAnchor];
  v5 = [v0 widthAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 multiplier:0.5];

  *(v3 + 32) = v6;
  v7 = [v1 centerXAnchor];
  v8 = [v0 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [v1 centerYAnchor];
  v11 = [v0 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 48) = v12;
  v13 = [v0 heightAnchor];
  v14 = [v1 heightAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14 constant:32.0];

  *(v3 + 56) = v15;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v16 = sub_2517031F4();

  [v2 activateConstraints_];

  sub_2516FBCEC();
}

void sub_2516FC3C4()
{
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6[4] = sub_2516FD6A8;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2516FD5A0;
  v6[3] = &block_descriptor_15;
  v4 = _Block_copy(v6);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  [v0 setBackgroundColor_];
}

void sub_2516FC60C()
{
  v0 = [objc_opt_self() systemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_28151EB78 = v1;
}

void sub_2516FC678()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent_notificationContainer);
  v2 = [v1 layer];
  [v2 setCornerRadius_];

  if (qword_28151EB70 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v87 = v1;
    [v1 setBackgroundColor_];
    if (qword_28151E860 != -1)
    {
      swift_once();
    }

    v3 = static NSBundle.exposureNotificationUI;
    v4 = sub_251703134();
    v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

    if (!v5)
    {
      goto LABEL_21;
    }

    v6 = [v5 imageWithRenderingMode_];

    v85 = v6;
    v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v7 setContentMode_];
    v8 = [objc_opt_self() systemRedColor];
    [v7 setTintColor_];

    type metadata accessor for NotificationCapsuleView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    v11 = swift_allocObject();
    *(v11 + 16) = 1;
    v12 = objc_allocWithZone(MEMORY[0x277D75348]);
    *&aBlock.tx = sub_2516FD52C;
    *&aBlock.ty = v11;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_2516FD5A0;
    *&aBlock.d = &block_descriptor_15;
    v13 = _Block_copy(&aBlock);
    v1 = v10;
    v14 = [v12 initWithDynamicProvider_];
    _Block_release(v13);

    [v1 setBackgroundColor_];

    v15 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_251707F70;
    *(v17 + 32) = v1;
    *(v17 + 40) = v15;
    *(v17 + 48) = v16;
    v18 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
    v19 = v15;
    v20 = v16;
    v89 = v1;
    v84 = v19;
    v83 = v20;
    v21 = sub_2517031F4();

    v22 = [v18 initWithArrangedSubviews_];

    [v22 setAxis_];
    [v22 setAlignment_];
    [v22 setDistribution_];
    [v22 setSpacing_];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251707F60;
    *(inited + 32) = v7;
    *(inited + 40) = v22;
    v24 = v22;
    v25 = v7;
    v26 = v24;
    if ((inited & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x25307F910](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v27 = v25;
    }

    v28 = v27;
    v1 = &selRef_setDidEnterDigit_;
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];
    [v87 addSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v29 = *(inited + 40);
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v29 = MEMORY[0x25307F910](1, inited);
LABEL_11:
  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  [v87 addSubview_];

  swift_setDeallocating();
  v31 = *(inited + 16);
  swift_arrayDestroy();
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_251708140;
  *(v32 + 32) = v87;
  v33 = v87;
  v34 = v33;
  if ((v32 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x25307F910](0, v32);
    goto LABEL_14;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = v33;
LABEL_14:
    v36 = v35;
    [v35 setTranslatesAutoresizingMaskIntoConstraints_];
    [v86 addSubview_];

    swift_setDeallocating();
    v37 = *(v32 + 16);
    swift_arrayDestroy();
    v88 = objc_opt_self();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_25170A080;
    v39 = [v34 widthAnchor];
    v40 = [v86 &selRef_init + 6];
    v41 = [v39 constraintEqualToAnchor_];

    *(v38 + 32) = v41;
    v42 = [v34 topAnchor];
    v43 = [v86 &selRef_navigationController];
    v44 = [v42 &selRef:v43 notifyChangeObserversForChangeFrom:? to:? + 5];

    *(v38 + 40) = v44;
    v45 = [v34 bottomAnchor];
    v46 = [v86 bottomAnchor];
    v47 = [v45 &selRef:v46 notifyChangeObserversForChangeFrom:? to:? + 5];

    *(v38 + 48) = v47;
    v48 = [v34 centerXAnchor];
    v49 = [v86 centerXAnchor];
    v50 = [v48 &selRef:v49 notifyChangeObserversForChangeFrom:? to:? + 5];

    *(v38 + 56) = v50;
    v51 = [v25 centerYAnchor];
    v52 = [v89 centerYAnchor];
    v53 = [v51 &selRef:v52 notifyChangeObserversForChangeFrom:? to:? + 5];

    *(v38 + 64) = v53;
    v54 = [v25 leadingAnchor];
    v55 = [v34 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:6.0];

    *(v38 + 72) = v56;
    v57 = [v25 widthAnchor];
    v58 = [v57 constraintEqualToConstant_];

    *(v38 + 80) = v58;
    v59 = [v25 heightAnchor];
    v60 = [v59 constraintEqualToConstant_];

    *(v38 + 88) = v60;
    v61 = [v26 topAnchor];
    v62 = [v34 topAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:20.0];

    *(v38 + 96) = v63;
    v64 = [v26 bottomAnchor];
    v65 = [v34 bottomAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:-20.0];

    *(v38 + 104) = v66;
    v67 = [v26 leadingAnchor];
    v68 = [v25 trailingAnchor];

    v69 = [v67 constraintEqualToAnchor:v68 constant:8.0];
    *(v38 + 112) = v69;
    v70 = [v26 trailingAnchor];
    v71 = [v34 trailingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71 constant:-14.0];

    *(v38 + 120) = v72;
    v73 = [v89 widthAnchor];

    v74 = [v26 widthAnchor];
    v75 = [v73 constraintEqualToAnchor_];

    *(v38 + 128) = v75;
    v76 = [v84 widthAnchor];

    v77 = [v26 widthAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 multiplier:0.7];

    *(v38 + 136) = v78;
    v79 = [v83 widthAnchor];

    v80 = [v26 widthAnchor];
    v81 = [v79 constraintEqualToAnchor:v80 multiplier:0.5];

    *(v38 + 144) = v81;
    sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
    v82 = sub_2517031F4();

    [v88 activateConstraints_];

    [v34 setAlpha_];
    CGAffineTransformMakeScale(&aBlock, 0.6, 0.6);
    [v34 setTransform_];

    return;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_2516FD4A0(void *a1, char a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = objc_opt_self();
  v5 = &selRef_systemGrayColor;
  if (v3 != 2)
  {
    v5 = &selRef_systemGray2Color;
  }

  v6 = &selRef_systemGray4Color;
  if (v3 != 2)
  {
    v6 = &selRef_systemGray5Color;
  }

  if ((a2 & 1) == 0)
  {
    v5 = v6;
  }

  v7 = [v4 *v5];

  return v7;
}

id sub_2516FD534(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray4Color;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray6Color;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_2516FD5A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2516FD620()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC28HealthExposureNotificationUIP33_3C5A5DB4CABD7B5AF1E395A3DB5E24F719NotificationContent_notificationContainer);
  [v1 setAlpha_];
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

id sub_2516FD6AC()
{
  v1 = OBJC_IVAR____TtC28HealthExposureNotificationUI21VerificationTableView____lazy_storage___heightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI21VerificationTableView____lazy_storage___heightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI21VerificationTableView____lazy_storage___heightConstraint];
  }

  else
  {
    v4 = [v0 heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_2516FD74C()
{
  *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI21VerificationTableView____lazy_storage___heightConstraint] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for VerificationTableView();
  v1 = objc_msgSendSuper2(&v10, sel_initWithFrame_style_, 2, 0.0, 0.0, 0.0, 0.0);
  v2 = sub_2516FD6AC();
  [v2 setActive_];

  v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI21VerificationTableView____lazy_storage___heightConstraint];
  type metadata accessor for UILayoutPriority(0);
  sub_2516FED64();
  v4 = v3;
  sub_251702F94();
  LODWORD(v5) = v9;
  [v4 setPriority_];

  [v1 setBackgroundColor_];
  v6 = v1;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setScrollEnabled_];

  [v6 setClipsToBounds_];
  [v6 setEstimatedSectionHeaderHeight_];
  [v6 setEstimatedSectionFooterHeight_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v6 setTableHeaderView_];

  return v6;
}

id sub_2516FD99C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for VerificationTableView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  result = [v0 contentSize];
  if (v3 != 0.0 || v2 != 0.0)
  {
    do
    {
      [v0 contentSize];
      v8 = v7;
      v10 = v9;
      v11 = sub_2516FD6AC();
      [v11 setConstant_];

      v12 = [v0 superview];
      if (v12)
      {
        v13 = v12;
        [v12 layoutIfNeeded];
      }

      result = [v0 contentSize];
    }

    while (v5 != v8 || v4 != v10);
  }

  return result;
}

id sub_2516FDB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView] = 0;
  if (a3)
  {
    v5 = sub_251703134();
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for AuthorityTextCell();
  v6 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = v6;
  [v7 setBackgroundColor_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v7 setBackgroundView_];

  return v7;
}

void sub_2516FDCBC(void *a1)
{
  v2 = v1;
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v3 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI17AuthorityTextCell_authorityTextView];
  if (v3)
  {
    v4 = v3;
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [v1 contentView];
    [v5 addSubview_];

    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2517068A0;
    v8 = [v4 leadingAnchor];
    v9 = [v2 contentView];
    v10 = [v9 leadingAnchor];

    v11 = [v8 constraintEqualToAnchor_];
    *(v7 + 32) = v11;
    v12 = [v4 trailingAnchor];
    v13 = [v2 contentView];
    v14 = [v13 trailingAnchor];

    v15 = [v12 constraintEqualToAnchor_];
    *(v7 + 40) = v15;
    v16 = [v4 topAnchor];
    v17 = [v2 contentView];
    v18 = [v17 topAnchor];

    v19 = [v16 constraintEqualToAnchor:v18 constant:25.0];
    *(v7 + 48) = v19;
    v20 = [v4 bottomAnchor];

    v21 = [v2 contentView];
    v22 = [v21 bottomAnchor];

    v23 = [v20 constraintEqualToAnchor_];
    *(v7 + 56) = v23;
    sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
    v24 = sub_2517031F4();

    [v6 activateConstraints_];
  }
}

void sub_2516FE058()
{
  v0 = *MEMORY[0x277D74420];
  v1 = *MEMORY[0x277D76918];
  v2 = sub_2516C19DC(v1, v0, 0, 0, 0, 0);

  qword_27F457EA8 = v2;
}

void sub_2516FE0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_251703134();
  }

  else
  {
    v5 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for VerificationCell();
  v6 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v8 = v6;
  v9 = [v7 init];
  [v8 setBackgroundView_];

  v10 = [v8 backgroundView];
  if (v10)
  {

    v11 = [objc_opt_self() secondarySystemBackgroundColor];
    [v10 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2516FE30C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_2516FE37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked] = 0;
  if (a3)
  {
    v9 = sub_251703134();
  }

  else
  {
    v9 = 0;
  }

  v57.receiver = v3;
  v57.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v57, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label;
  v12 = *&v10[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label];
  v13 = qword_27F4538A8;
  v14 = v10;
  v15 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  [v15 setFont_];

  [*&v10[v11] setAdjustsFontForContentSizeCategory_];
  [*&v10[v11] setNumberOfLines_];
  v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView;
  [*&v14[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView] setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  LODWORD(v17) = 1148846080;
  [*&v14[v16] setContentHuggingPriority:0 forAxis:v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_251707F60;
  v19 = *&v10[v11];
  *(v18 + 32) = v19;
  v20 = *&v14[v16];
  *(v18 + 40) = v20;
  v21 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v22 = v19;
  v23 = v20;
  v24 = sub_2517031F4();

  v25 = [v21 initWithArrangedSubviews_];

  v26 = v25;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAlignment_];
  [v26 setSpacing_];
  v27 = [v14 contentView];
  [v27 addSubview_];

  v56 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_251708A20;
  v29 = [v26 leadingAnchor];
  v30 = [v14 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 constraintEqualToAnchor_];

  *(v28 + 32) = v33;
  v34 = [v26 trailingAnchor];
  v35 = [v14 contentView];
  v36 = [v35 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v34 constraintEqualToAnchor_];

  *(v28 + 40) = v38;
  v39 = [v26 centerYAnchor];
  v40 = [v14 contentView];
  v41 = [v40 centerYAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v28 + 48) = v42;
  v43 = [v26 topAnchor];
  v44 = [v14 contentView];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintGreaterThanOrEqualToAnchor:v45 constant:8.0];
  *(v28 + 56) = v46;
  v47 = [v26 bottomAnchor];

  v48 = [v14 contentView];
  v49 = [v48 bottomAnchor];

  v50 = [v47 constraintLessThanOrEqualToAnchor:v49 constant:8.0];
  *(v28 + 64) = v50;
  v51 = [v14 contentView];

  v52 = [v51 heightAnchor];
  v53 = [v52 constraintGreaterThanOrEqualToConstant_];

  *(v28 + 72) = v53;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v54 = sub_2517031F4();

  [v56 activateConstraints_];

  return v14;
}

uint64_t sub_2516FE9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = sub_251703164();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

void sub_2516FEB2C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView];
  v2 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked;
  v0[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked];
  v0[OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked];
  v3 = sub_251703134();

  v4 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
  if (v0[v2])
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_opt_self() secondaryLabelColor];
  }

  [v1 setTintColor_];
}

void sub_2516FECB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView);
}

unint64_t sub_2516FED64()
{
  result = qword_28151E948;
  if (!qword_28151E948)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151E948);
  }

  return result;
}

id OnboardingAddRegionWelcomeViewController.__allocating_init(flow:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  ObjectType = swift_getObjectType();

  return sub_2516FFAFC(a1, v5, ObjectType, a2);
}

id OnboardingAddRegionWelcomeViewController.init(flow:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_2516FFAFC(a1, v2, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingAddRegionWelcomeViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2516FEEA8();
}

void sub_2516FEEA8()
{
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v1 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_primaryButton];
  v2 = sub_251703134();

  [v1 setTitle:v2 forState:{0, 0xE000000000000000}];

  [v1 addTarget:v0 action:sel_didTapPrimaryButton forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];

  sub_251702C94();
  v4 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_secondaryButton];
  v5 = sub_251703134();

  [v4 setTitle:v5 forState:{0, 0xE000000000000000}];

  [v4 addTarget:v0 action:sel_didTapSecondaryButton forControlEvents:64];
  v6 = [v0 buttonTray];
  [v6 addButton_];

  type metadata accessor for MultilineButton();
  v7 = [swift_getObjCClassFromMetadata() buttonWithType_];
  sub_251702C94();
  v8 = sub_251703134();

  [v7 setTitle:v8 forState:{0, 0xE000000000000000}];

  [v7 addTarget:v0 action:sel_didTapHowExposureNotificationsWork forControlEvents:64];
  v9 = [v7 titleLabel];
  if (v9)
  {
    v10 = v9;
    [v9 setTextAlignment_];
  }

  v11 = [v7 titleLabel];
  [v11 setNumberOfLines_];

  v12 = [v7 titleLabel];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() preferredFontForTextStyle_];
    [v13 setFont_];
  }

  v15 = [v7 titleLabel];
  if (v15)
  {
    v16 = v15;
    [v15 setAdjustsFontForContentSizeCategory_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251708140;
  *(v17 + 32) = v7;
  v18 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
  v41 = v7;
  v19 = sub_2517031F4();

  v20 = [v18 initWithArrangedSubviews_];

  [v20 setAxis_];
  [v20 setAlignment_];
  v21 = v20;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [v0 contentView];
  [v22 addSubview_];

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2517068A0;
  v25 = [v21 leadingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 leadingAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v24 + 32) = v28;
  v29 = [v21 trailingAnchor];
  v30 = [v0 contentView];
  v31 = [v30 trailingAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v24 + 40) = v32;
  v33 = [v21 topAnchor];
  v34 = [v0 contentView];
  v35 = [v34 topAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v24 + 48) = v36;
  v37 = [v21 bottomAnchor];

  v38 = [v0 contentView];
  v39 = [v38 bottomAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v24 + 56) = v40;
  sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
  v42 = sub_2517031F4();

  [v23 activateConstraints_];
}

id OnboardingAddRegionWelcomeViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingAddRegionWelcomeViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingAddRegionWelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2516FFAFC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_primaryButton;
  *&a2[v8] = [objc_opt_self() boldButton];
  v9 = OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_secondaryButton;
  *&a2[v9] = [objc_opt_self() linkButton];
  v10 = &a2[OBJC_IVAR____TtC28HealthExposureNotificationUI40OnboardingAddRegionWelcomeViewController_flow];
  *v10 = a1;
  *(v10 + 1) = a4;
  v11 = qword_28151EB58;
  swift_unknownObjectRetain();
  if (v11 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v12 = sub_251703134();

  sub_251702C94();
  v13 = sub_251703134();

  if (qword_28151E860 != -1)
  {
    swift_once();
  }

  v14 = static NSBundle.exposureNotificationUI;
  v15 = sub_251703134();
  v16 = [objc_opt_self() imageNamed:v15 inBundle:{v14, 0xE000000000000000}];

  v24.receiver = a2;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, v16, 2);

  v18 = v17;
  v19 = [v18 headerView];
  v20 = [objc_opt_self() systemPinkColor];
  [v19 setTintColor_];

  v21 = [v18 headerView];
  LODWORD(v22) = 1036831949;
  [v21 setTitleHyphenationFactor_];

  swift_unknownObjectRelease();
  return v18;
}

id OnboardingAnalyticsViewController.__allocating_init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_251701190(a1, a3, v7, ObjectType, a2);
}

id OnboardingAnalyticsViewController.init(flow:agencyModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return sub_251701190(a1, a3, v3, ObjectType, a2);
}

Swift::Void __swiftcall OnboardingAnalyticsViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_2516FFF7C();
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];
}

void sub_2516FFF7C()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    v5 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_primaryButton];
    v6 = sub_251703134();

    [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

    [v5 addTarget:v1 action:sel_didTapPrimaryButton forControlEvents:64];
    v7 = [v1 buttonTray];
    [v7 addButton_];

    sub_251702C94();
    v8 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_secondaryButton];
    v9 = sub_251703134();

    [v8 setTitle:v9 forState:{0, 0xE000000000000000}];

    [v8 addTarget:v1 action:sel_didTapSecondaryButton forControlEvents:64];
    v10 = [v1 buttonTray];
    [v10 addButton_];

    v11 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel];
    v12 = *(v11 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_header);
    v13 = (v11 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentText);
    if (v13[1])
    {
      v14 = *v13;
      v15 = v13[1];
    }

    v16 = objc_allocWithZone(type metadata accessor for OnboardingAuthorityTextView());
    v17 = v12;

    v18 = sub_2516DD44C(v17, 20.0, 20.0, 20.0, 20.0);
    v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v20 = sub_251701388();
    [v19 setAttributedText_];

    [v19 setAdjustsFontForContentSizeCategory_];
    [v19 setNumberOfLines_];
    [v19 setTextAlignment_];
    [v19 setUserInteractionEnabled_];
    v21 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_didTapLearnMore];
    v22 = v19;
    [v22 addGestureRecognizer_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_251707F60;
    *(v23 + 32) = v18;
    *(v23 + 40) = v22;
    v24 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_25168CD90(0, &qword_28151E888, 0x277D75D18);
    v47 = v18;
    v25 = sub_2517031F4();

    v26 = [v24 initWithArrangedSubviews_];

    [v26 setSpacing_];
    [v26 setAxis_];
    v27 = v26;
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];
    v28 = [v1 contentView];
    [v28 addSubview_];

    v46 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2517068A0;
    v30 = [v27 leadingAnchor];
    v31 = [v1 contentView];
    v32 = [v31 leadingAnchor];

    v33 = [v30 constraintEqualToAnchor:v32 constant:20.0];
    *(v29 + 32) = v33;
    v34 = [v27 trailingAnchor];
    v35 = [v1 contentView];
    v36 = [v35 trailingAnchor];

    v37 = [v34 constraintEqualToAnchor:v36 constant:-20.0];
    *(v29 + 40) = v37;
    v38 = [v27 topAnchor];
    v39 = [v1 contentView];
    v40 = [v39 topAnchor];

    v41 = [v38 constraintEqualToAnchor_];
    *(v29 + 48) = v41;
    v42 = [v27 bottomAnchor];

    v43 = [v1 contentView];
    v44 = [v43 bottomAnchor];

    v45 = [v42 constraintEqualToAnchor_];
    *(v29 + 56) = v45;
    sub_25168CD90(0, &qword_28151E920, 0x277CCAAD0);
    v48 = sub_2517031F4();

    [v46 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_25170075C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (!v3)
    {
      __break(1u);
      return;
    }

    [v3 setUserInteractionEnabled_];
  }

  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel];
  v5 = static ENManagerAdapter.defaultAdapter;
  v6 = *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  v7 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentVersion);
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = 1;
  *(v11 + 40) = v5;
  *(v11 + 48) = v6;
  *(v11 + 56) = sub_251701368;
  *(v11 + 64) = v10;
  v12 = v5;
  v13 = v6;
  v14 = v12;
  v15 = v13;

  v16 = v0;

  sub_2516C59C8(sub_2516CFC48, v11);
}

void sub_251700980()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (!v3)
    {
      __break(1u);
      return;
    }

    [v3 setUserInteractionEnabled_];
  }

  if (qword_28151EB60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel];
  v5 = static ENManagerAdapter.defaultAdapter;
  v6 = *(v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  v7 = (v4 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_consentVersion);
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = 0;
  *(v11 + 40) = v5;
  *(v11 + 48) = v6;
  *(v11 + 56) = sub_251701348;
  *(v11 + 64) = v10;
  v12 = v5;
  v13 = v6;
  v14 = v12;
  v15 = v13;

  v16 = v0;

  sub_2516C59C8(sub_2516CA030, v11);
}

void sub_251700B58(void *a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_27F453878 != -1)
    {
      swift_once();
    }

    v5 = sub_251702F84();
    __swift_project_value_buffer(v5, static Logger.general);
    v6 = a1;
    v7 = sub_251702F64();
    v8 = sub_251703324();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136315138;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454898, qword_25170A288);
      v12 = sub_251703194();
      v14 = sub_251693FCC(v12, v13, &v26);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25167E000, v7, v8, "Failed to set share analytics: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2530803C0](v10, -1, -1);
      MEMORY[0x2530803C0](v9, -1, -1);
    }

    v15 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel];
    v16 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
    swift_beginAccess();
    *(v15 + v16) = 0;
  }

  else
  {
    v18 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel];
    v19 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
    swift_beginAccess();
    *(v18 + v19) = a3;
  }

  v20 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_flow];
  v21 = *&a2[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_flow + 8];
  ObjectType = swift_getObjectType();
  (*(v21 + 120))(a2, &protocol witness table for OnboardingAnalyticsViewController, ObjectType, v21);
  v23 = [a2 navigationController];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 view];

    if (v25)
    {
      [v25 setUserInteractionEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

id OnboardingAnalyticsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_251703134();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_251703134();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_251703134();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingAnalyticsViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_251703134();

  if (a4)
  {
    v12 = sub_251703134();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingAnalyticsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_251701190(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_primaryButton;
  *&a3[v10] = [objc_opt_self() boldButton];
  v11 = OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_secondaryButton;
  *&a3[v11] = [objc_opt_self() linkButton];
  v12 = &a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_flow];
  *v12 = a1;
  *(v12 + 1) = a5;
  *&a3[OBJC_IVAR____TtC28HealthExposureNotificationUI33OnboardingAnalyticsViewController_healthAgencyModel] = a2;
  v13 = qword_28151EB58;
  swift_unknownObjectRetain();
  v14 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v15 = sub_251703134();

  v18.receiver = a3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_contentLayout_, v15, 0, 0, 3, 0xE000000000000000);

  swift_unknownObjectRelease();
  return v16;
}

id sub_251701388()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F454188, &qword_251708B28);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v41 - v2;
  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  v4 = sub_251702C94();
  v6 = v5;
  sub_251702C94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
  v7 = swift_allocObject();
  v46 = xmmword_251708520;
  *(v7 + 16) = xmmword_251708520;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_25169F41C();
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  v8 = sub_251703184();
  v10 = v9;

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454190, &unk_251708B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2517068B0;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v13 = *MEMORY[0x277D76968];
  v14 = *MEMORY[0x277D74418];
  v15 = v12;
  v16 = sub_2516C19DC(v13, v14, 0, 0, 0, 0);
  v17 = sub_25168CD90(0, &unk_28151E890, 0x277D74300);
  *(inited + 40) = v16;
  v18 = *MEMORY[0x277D740C0];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  v19 = objc_opt_self();
  v43 = v18;
  v44 = v19;
  v20 = [v19 secondaryLabelColor];
  v42 = sub_25168CD90(0, &qword_28151E880, 0x277D75348);
  *(inited + 104) = v42;
  *(inited + 80) = v20;
  sub_251698DC4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453F18, &qword_2517083C0);
  swift_arrayDestroy();
  v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v22 = sub_251703134();
  type metadata accessor for Key(0);
  v24 = v23;
  sub_2516AE954();
  v41[1] = v24;
  v25 = sub_2517030F4();

  v26 = [v21 initWithString:v22 attributes:v25];

  v49 = v8;
  v50 = v10;
  v47 = v4;
  v48 = v6;
  v27 = sub_251702EA4();
  (*(*(v27 - 8) + 56))(v3, 1, 1, v27);
  sub_2516B4924();
  v28 = sub_251703404();
  v30 = v29;
  LOBYTE(v25) = v31;
  sub_25168B718(v3, &qword_27F454188, &qword_251708B28);

  if (v25)
  {
  }

  else
  {
    v49 = v28;
    v50 = v30;
    v47 = v8;
    v48 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4541A0, qword_251708B40);
    sub_2516B4978();
    v32 = sub_2517033D4();
    v34 = v33;
    v35 = swift_initStackObject();
    *(v35 + 16) = v46;
    v36 = v43;
    *(v35 + 32) = v43;
    v37 = v36;
    v38 = [v44 systemBlueColor];
    *(v35 + 64) = v42;
    *(v35 + 40) = v38;
    sub_251698DC4(v35);
    swift_setDeallocating();
    sub_25168B718(v35 + 32, &qword_27F453F18, &qword_2517083C0);
    v39 = sub_2517030F4();

    [v26 addAttributes:v39 range:{v32, v34}];
  }

  return v26;
}

void sub_251701920(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  if (sub_251703474() != 3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x25307F910](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  [v3 floatValue];
  v6 = v5;

  if (v2)
  {
    v7 = MEMORY[0x25307F910](1, a1);
LABEL_10:
    v8 = v7;
    [v7 floatValue];
    v10 = v9;

    if (v2)
    {
      v11 = MEMORY[0x25307F910](2, a1);
LABEL_14:
      v12 = v11;

      v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      [v12 floatValue];
      v15 = v14;

      [v13 initWithRed:v6 green:v10 blue:v15 alpha:1.0];
      return;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v11 = *(a1 + 48);
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v7 = *(a1 + 40);
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_251701AB4()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0.0;
  v15[0] = 0.0;
  v13 = 0.0;
  [v0 getRed:v15 green:&v14 blue:&v13 alpha:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_251707F70;
  v2 = v15[0];
  v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v4 = v2;
  *(v1 + 32) = [v3 initWithFloat_];
  v5 = v14;
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v7 = v5;
  *(v1 + 40) = [v6 initWithFloat_];
  v8 = v13;
  v9 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v10 = v8;
  *(v1 + 48) = [v9 initWithFloat_];
  v11 = *MEMORY[0x277D85DE8];
  return v1;
}

id sub_251701D50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultilineButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_251701E00()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_healthAgencyModel];
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    if (*(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion) < 2)
    {
      goto LABEL_9;
    }

    if (*(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8))
    {
      v3 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
      if (qword_28151EB60 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v4 = static ENManagerAdapter.defaultAdapter;
      _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0();
      v6 = v5;

      if (v6)
      {
        goto LABEL_9;
      }
    }
  }

  if ((ENUIPublicHealthAgencyModel.isAppInstalled.getter() & 1) != 0 && (*(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized) & 1) == 0)
  {
LABEL_9:
    v7 = [objc_opt_self() buttonWithType_];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    if (qword_28151EB58 != -1)
    {
      swift_once();
    }

    sub_251702C94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F454350, "Ф");
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_251708520;
    v10 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name);
    v9 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_name + 8);
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_25169F41C();
    *(v8 + 32) = v10;
    *(v8 + 40) = v9;

    sub_251703184();

    v11 = sub_251703134();

    [v7 setTitle:v11 forState:{0, 0xE000000000000000}];

    v12 = [v7 titleLabel];
    if (v12)
    {
      v13 = v12;
      [v12 setLineBreakMode_];
    }

    v14 = [v7 titleLabel];
    [v14 setNumberOfLines_];

    [v7 addTarget:v1 action:sel_openAppButtonTapped forControlEvents:64];
    v15 = [v7 titleLabel];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_opt_self() preferredFontForTextStyle_];
      [v16 setFont_];
    }

    v18 = [v7 titleLabel];
    if (v18)
    {
      v19 = v18;
      [v18 setAdjustsFontForContentSizeCategory_];
    }

    v20 = [v1 contentView];
    [v20 addSubview_];

    v21 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F453F60, &qword_251706F60);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_251709E60;
    v23 = [v7 topAnchor];
    v24 = [v1 contentView];
    v25 = [v24 topAnchor];

    v26 = [v23 constraintEqualToAnchor:v25 constant:8.0];
    *(v22 + 32) = v26;
    v27 = [v7 centerXAnchor];
    v28 = [v1 contentView];
    v29 = [v28 centerXAnchor];

    v30 = [v27 constraintEqualToAnchor_];
    *(v22 + 40) = v30;
    v31 = [v7 leadingAnchor];
    v32 = [v1 contentView];
    v33 = [v32 leadingAnchor];

    v34 = [v31 constraintGreaterThanOrEqualToAnchor_];
    *(v22 + 48) = v34;
    v35 = [v7 trailingAnchor];
    v36 = [v1 contentView];
    v37 = [v36 trailingAnchor];

    v38 = [v35 constraintLessThanOrEqualToAnchor_];
    *(v22 + 56) = v38;
    v39 = [v7 bottomAnchor];

    v40 = [v1 contentView];
    v41 = [v40 bottomAnchor];

    v42 = [v39 constraintEqualToAnchor_];
    *(v22 + 64) = v42;
    sub_25168B5B4();
    v43 = sub_2517031F4();

    [v21 activateConstraints_];
  }

  if (qword_28151EB58 != -1)
  {
    swift_once();
  }

  sub_251702C94();
  v44 = *&v1[OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_primaryButton];
  v45 = sub_251703134();

  [v44 setTitle:v45 forState:{0, 0xE000000000000000}];

  [v44 addTarget:v1 action:sel_didTapPrimaryButton forControlEvents:64];
  v46 = [v1 buttonTray];
  [v46 addButton_];
}

void sub_25170263C()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    v3 = (*(v0 + OBJC_IVAR____TtC28HealthExposureNotificationUI43OnboardingRegionAlreadyExistsViewController_healthAgencyModel) + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
    if (v3[1])
    {
      v4 = *v3;
      v5 = v3[1];

      v6 = sub_251703134();
    }

    else
    {
      v6 = 0;
    }

    [v2 openApplicationWithBundleID_];
  }
}

id sub_2517027C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingRegionAlreadyExistsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}