id sub_1C1ED1F80(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C1ED4C30(a1);

  return v4;
}

id _NumberFormatterObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_numberFormatter;
  v2 = *&v0[OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_numberFormatter];

  v3 = v2;
  v4 = sub_1C1F52424();

  [v3 removeObserver:v0 forKeyPath:v4];

  v5 = *&v0[v1];

  v6 = v5;
  v7 = sub_1C1F52424();

  [v6 removeObserver:v0 forKeyPath:v7];

  v8 = *&v0[v1];

  v9 = v8;
  v10 = sub_1C1F52424();

  [v9 removeObserver:v0 forKeyPath:v10];

  v11 = *&v0[v1];

  v12 = v11;
  v13 = sub_1C1F52424();

  [v12 removeObserver:v0 forKeyPath:v13];

  v14 = *&v0[v1];

  v15 = v14;
  v16 = sub_1C1F52424();

  [v15 removeObserver:v0 forKeyPath:v16];

  v17 = *&v0[v1];

  v18 = v17;
  v19 = sub_1C1F52424();

  [v18 removeObserver:v0 forKeyPath:v19];

  v21.receiver = v0;
  v21.super_class = type metadata accessor for _NumberFormatterObserver();
  return objc_msgSendSuper2(&v21, sel_dealloc);
}

id _NumberFormatterObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C1ED2338()
{
  result = sub_1C1ED430C(MEMORY[0x1E69E7CC0]);
  qword_1EDC2F378 = result;
  return result;
}

uint64_t static NumberFormatterObserver.sharedObservers.getter()
{
  if (qword_1EDC2F370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static NumberFormatterObserver.sharedObservers.setter(uint64_t a1)
{
  if (qword_1EDC2F370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC2F378 = a1;
}

uint64_t (*static NumberFormatterObserver.sharedObservers.modify())()
{
  if (qword_1EDC2F370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C1ED24E0@<X0>(void *a1@<X8>)
{
  if (qword_1EDC2F370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDC2F378;
}

uint64_t sub_1C1ED2560(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EDC2F370;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC2F378 = v1;
}

id sub_1C1ED25E8()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1EDC2F388 = result;
  return result;
}

uint64_t NumberFormatterObserver.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Calculate23NumberFormatterObserver_id;
  v4 = sub_1C1F52034();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NumberFormatterObserver.init(_:didChange:willChange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C1E7B48C(a1, a2, a3, a4, a5);
  sub_1C1E7A724(a4);

  return v7;
}

uint64_t NumberFormatterObserver.deinit()
{
  v1 = v0;
  if (qword_1EDC2F380 != -1)
  {
    swift_once();
  }

  [qword_1EDC2F388 lock];
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  v5 = v2;
  v4(v1);

  v6 = *(v1 + 16);
  v7 = *((*v3 & *v6) + 0x88);
  v8 = v6;
  LOBYTE(v7) = v7();

  if (v7)
  {
    if (qword_1EDC2F370 != -1)
    {
      swift_once();
    }

    v9 = *(*(v1 + 16) + OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_numberFormatter);
    swift_beginAccess();
    v10 = v9;
    v11 = sub_1C1ED2BA8(v10);
    swift_endAccess();
  }

  [qword_1EDC2F388 unlock];

  v12 = *(v1 + 32);

  v13 = *(v1 + 48);
  sub_1C1E7A724(*(v1 + 40));
  v14 = OBJC_IVAR____TtC9Calculate23NumberFormatterObserver_id;
  v15 = sub_1C1F52034();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  return v1;
}

uint64_t NumberFormatterObserver.__deallocating_deinit()
{
  NumberFormatterObserver.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1ED293C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Calculate23NumberFormatterObserver_id;
  v5 = sub_1C1F52034();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C1ED29B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C1F52014();
}

uint64_t sub_1C1ED29D4(uint64_t a1)
{
  v2 = sub_1C1ED5210(&qword_1EDC2C2B0, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1C1ED5210(&qword_1EBF21390, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1C1ED2A90(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C1F528B4();

  return sub_1C1ED2AD4(a1, v5);
}

unint64_t sub_1C1ED2AD4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C1F528C4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C1ED2BA8(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1C1ED2A90(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1C1ED3888(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1C1ED3FD8();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1C1F52B64();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1C1F52994();
  v8 = sub_1C1ED2CF4(v4, v7);

  v9 = sub_1C1ED2A90(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1C1ED3888(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1C1ED2CF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21358, &qword_1C1F574F8);
    v2 = sub_1C1F52BD4();
    v20 = v2;
    sub_1C1F52B44();
    v3 = sub_1C1F52B74();
    if (v3)
    {
      v4 = v3;
      sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for _NumberFormatterObserver();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1C1ED3300(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1C1F528B4();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1C1F52B74();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1C1ED2F24(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1C1F52034();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21360, &qword_1C1F57500);
  v43 = a2;
  result = sub_1C1F52BC4();
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
      sub_1C1ED5210(&qword_1EDC2E8F8, MEMORY[0x1E69695A8]);
      result = sub_1C1F523B4();
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

uint64_t sub_1C1ED3300(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21358, &qword_1C1F574F8);
  result = sub_1C1F52BC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_1C1F528B4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
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

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1C1ED3568(int64_t a1, uint64_t a2)
{
  v43 = sub_1C1F52034();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_1C1F52964();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1C1ED5210(&qword_1EDC2E8F8, MEMORY[0x1E69695A8]);
      v26 = sub_1C1F523B4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

void sub_1C1ED3888(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1F52964() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1C1F528B4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1C1ED3A14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C1F52034();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1C1EB4BE4(a2);
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
      sub_1C1ED3D58();
      goto LABEL_7;
    }

    sub_1C1ED2F24(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1C1EB4BE4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1C1EB5894(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1C1F52CA4();
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
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

id sub_1C1ED3BE0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1C1ED2A90(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1C1ED3300(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1C1ED2A90(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
        sub_1C1F52CA4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1C1ED3FD8();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

char *sub_1C1ED3D58()
{
  v1 = v0;
  v34 = sub_1C1F52034();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21360, &qword_1C1F57500);
  v4 = *v0;
  v5 = sub_1C1F52BB4();
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

id sub_1C1ED3FD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21358, &qword_1C1F574F8);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

unint64_t sub_1C1ED4138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21378, &qword_1C1F57518);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21360, &qword_1C1F57500);
    v8 = sub_1C1F52BE4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C1ED50C8(v10, v6);
      result = sub_1C1EB4BE4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C1F52034();
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1ED430C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21358, &qword_1C1F574F8);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1C1ED2A90(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1ED4404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a1;
  v80 = a2;
  v6 = sub_1C1F52034();
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21368, &qword_1C1F57508);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v78 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v78 - v20;
  result = [*(v4 + OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_numberFormatter) shouldIgnoreChanges];
  if ((result & 1) == 0)
  {
    v81 = v6;
    if (a4 && *(a4 + 16) && (v23 = sub_1C1E81EB0(*MEMORY[0x1E696A4F8]), (v24 & 1) != 0) && (sub_1C1EB0E00(*(a4 + 56) + 32 * v23, v92), sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98), (swift_dynamicCast() & 1) != 0) && (v25 = v91, v26 = [v91 BOOLValue], v25, v26))
    {
      v27 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
      swift_beginAccess();
      v28 = *(v4 + v27);
      v29 = v28 + 64;
      v30 = 1 << *(v28 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v28 + 64);
      v33 = (v30 + 63) >> 6;
      v82 = (v88 + 32);
      v83 = v88 + 16;
      v90 = (v88 + 8);
      v86 = v28;

      v34 = 0;
      v84 = v21;
      v85 = v19;
      v89 = v29;
      while (v32)
      {
        v35 = v34;
LABEL_21:
        v38 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v39 = v38 | (v35 << 6);
        v40 = v86;
        v41 = v87;
        v42 = v88;
        v43 = v81;
        (*(v88 + 16))(v87, *(v86 + 48) + *(v88 + 72) * v39, v81);
        v44 = *(*(v40 + 56) + 8 * v39);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
        v46 = *(v45 + 48);
        v47 = *(v42 + 32);
        v19 = v85;
        v47(v85, v41, v43);
        *&v19[v46] = v44;
        (*(*(v45 - 8) + 56))(v19, 0, 1, v45);

        v21 = v84;
LABEL_22:
        sub_1C1ED5058(v19, v21);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
        if ((*(*(v48 - 8) + 48))(v21, 1, v48) == 1)
        {
        }

        v49 = (*(**&v21[*(v48 + 48)] + 104))();
        if (v49)
        {
          v50 = *(v49 + 40);
          sub_1C1E7A714(v50);

          if (v50)
          {
            v50(v79, v80);
            sub_1C1E7A724(v50);
          }
        }

        result = (*v90)(v21, v81);
        v29 = v89;
      }

      if (v33 <= v34 + 1)
      {
        v36 = v34 + 1;
      }

      else
      {
        v36 = v33;
      }

      v37 = v36 - 1;
      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v35 >= v33)
        {
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
          (*(*(v51 - 8) + 56))(v19, 1, 1, v51);
          v32 = 0;
          v34 = v37;
          goto LABEL_22;
        }

        v32 = *(v29 + 8 * v35);
        ++v34;
        if (v32)
        {
          v34 = v35;
          goto LABEL_21;
        }
      }
    }

    else
    {
      v52 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
      swift_beginAccess();
      v53 = *(v4 + v52);
      v54 = v53 + 64;
      v55 = 1 << *(v53 + 32);
      v56 = -1;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      v57 = v56 & *(v53 + 64);
      v58 = (v55 + 63) >> 6;
      v83 = v88 + 32;
      v84 = (v88 + 16);
      v90 = (v88 + 8);
      v86 = v53;

      v59 = 0;
      v85 = v13;
      v82 = v16;
      v89 = v54;
      while (v57)
      {
        v62 = v59;
LABEL_42:
        v65 = __clz(__rbit64(v57));
        v57 &= v57 - 1;
        v66 = v65 | (v62 << 6);
        v67 = v86;
        v68 = v88;
        (*(v88 + 16))(v87, *(v86 + 48) + *(v88 + 72) * v66, v6);
        v69 = *(*(v67 + 56) + 8 * v66);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
        v71 = v6;
        v72 = *(v70 + 48);
        v73 = *(v68 + 32);
        v13 = v85;
        v74 = v71;
        v73();
        *&v13[v72] = v69;
        (*(*(v70 - 8) + 56))(v13, 0, 1, v70);

        v16 = v82;
LABEL_43:
        sub_1C1ED5058(v13, v16);
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
        if ((*(*(v75 - 8) + 48))(v16, 1, v75) == 1)
        {
        }

        v76 = (*(**&v16[*(v75 + 48)] + 104))();
        if (v76)
        {
          v61 = *(v76 + 24);
          v60 = *(v76 + 32);

          v61(v79, v80);
          v6 = v81;
        }

        else
        {

          v6 = v74;
        }

        v54 = v89;
        result = (*v90)(v16, v6);
      }

      if (v58 <= v59 + 1)
      {
        v63 = v59 + 1;
      }

      else
      {
        v63 = v58;
      }

      v64 = v63 - 1;
      while (1)
      {
        v62 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v62 >= v58)
        {
          v74 = v6;
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
          (*(*(v77 - 8) + 56))(v13, 1, 1, v77);
          v57 = 0;
          v59 = v64;
          goto LABEL_43;
        }

        v57 = *(v54 + 8 * v62);
        ++v59;
        if (v57)
        {
          v59 = v62;
          goto LABEL_42;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_1C1ED4C30(void *a1)
{
  v3 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
  *&v1[v3] = sub_1C1ED4138(MEMORY[0x1E69E7CC0]);
  *&v1[OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_numberFormatter] = a1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for _NumberFormatterObserver();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v13, sel_init);

  v6 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v6 options:8 context:{0, v13.receiver, v13.super_class}];

  v7 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v7 options:8 context:0];

  v8 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v8 options:8 context:0];

  v9 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v9 options:8 context:0];

  v10 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v10 options:8 context:0];

  v11 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v11 options:8 context:0];

  return v5;
}

uint64_t sub_1C1ED4F24()
{
  result = sub_1C1F52034();
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

void type metadata accessor for NSKeyValueChangeKey()
{
  if (!qword_1EDC2C2A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDC2C2A0);
    }
  }
}

uint64_t sub_1C1ED5058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21368, &qword_1C1F57508);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1ED50C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21378, &qword_1C1F57518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1ED5210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1ED52B4()
{
  result = sub_1C1E91DC4(&unk_1F418DF10);
  qword_1EBF22018 = result;
  return result;
}

uint64_t sub_1C1ED52DC()
{
  result = sub_1C1E91DC4(&unk_1F418DF38);
  qword_1EDC2F668 = result;
  return result;
}

uint64_t sub_1C1ED5304()
{
  result = sub_1C1E91DC4(&unk_1F418DF70);
  qword_1EDC2F628 = result;
  return result;
}

uint64_t sub_1C1ED532C()
{
  result = sub_1C1E91DC4(&unk_1F418DFA0);
  qword_1EBF22028 = result;
  return result;
}

uint64_t sub_1C1ED5354()
{
  result = sub_1C1E91DC4(&unk_1F418E000);
  qword_1EBF22040 = result;
  return result;
}

uint64_t sub_1C1ED537C()
{
  result = sub_1C1E91DC4(&unk_1F418E028);
  qword_1EDC2F610 = result;
  return result;
}

uint64_t sub_1C1ED53A4()
{
  result = sub_1C1E91DC4(&unk_1F418E050);
  qword_1EDC2F680 = result;
  return result;
}

uint64_t sub_1C1ED53CC()
{
  result = sub_1C1E91DC4(&unk_1F418E078);
  qword_1EDC2F640 = result;
  return result;
}

uint64_t sub_1C1ED53F4()
{
  result = sub_1C1E91DC4(&unk_1F418E0A0);
  qword_1EDC2F5F0 = result;
  return result;
}

uint64_t sub_1C1ED541C()
{
  result = sub_1C1E91DC4(&unk_1F418E0D0);
  qword_1EDC2F5E0 = result;
  return result;
}

uint64_t sub_1C1ED5444()
{
  result = sub_1C1E91DC4(&unk_1F418E100);
  qword_1EDC2F5D0 = result;
  return result;
}

uint64_t sub_1C1ED546C()
{
  result = sub_1C1E91DC4(&unk_1F418E130);
  qword_1EDC2F650 = result;
  return result;
}

unint64_t sub_1C1ED5654()
{
  result = sub_1C1EEB9F0(&unk_1F418E158);
  qword_1EBF22050 = result;
  return result;
}

unint64_t CalculateExpression.TokenType.match.getter@<X0>(char *a1@<X8>)
{
  result = *v1;
  if (qword_1EBF22048 != -1)
  {
    v7 = *v1;
    swift_once();
    result = v7;
  }

  v4 = qword_1EBF22050;
  if (*(qword_1EBF22050 + 16) && (result = sub_1C1E901F0(result), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + result);
  }

  else
  {
    v6 = 53;
  }

  *a1 = v6;
  return result;
}

unint64_t sub_1C1ED5708()
{
  result = sub_1C1EEBAD0(&unk_1F418E1A0);
  qword_1EDC2F6B0 = result;
  return result;
}

unint64_t sub_1C1ED5730@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if (qword_1EDC2F6A8 != -1)
  {
    v6 = result;
    swift_once();
    result = v6;
  }

  v3 = qword_1EDC2F6B0;
  if (*(qword_1EDC2F6B0 + 16) && (result = sub_1C1EE9778(result), (v4 & 1) != 0))
  {
    v5 = *(*(v3 + 56) + result);
  }

  else
  {
    v5 = 52;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C1ED57B8()
{
  v0 = *sub_1C1E9E410();

  v1 = sub_1C1EEBBB0(&unk_1F418E520, v0);
  result = swift_arrayDestroy();
  qword_1EBF22060 = v1;
  return result;
}

uint64_t sub_1C1ED5818(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1C1F52984();
    type metadata accessor for CalculateExpression.Operation();
    sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);
    result = sub_1C1F527F4();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_1C1E96B60();
      return v16;
    }

    while (1)
    {
      sub_1C1E7E554(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C1F529C4())
      {
        type metadata accessor for CalculateExpression.Operation();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CalculateExpression.allWordBasedSymbols.getter()
{
  if (qword_1EBF22058 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C1ED5A80()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](qword_1C1F58578[v1]);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1ED5B08()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](qword_1C1F58578[v1]);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1ED5B5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v5 = sub_1C1F52034();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1ED5C54(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1F52034();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_1C1ED5D20(v7);
}

uint64_t sub_1C1ED5D20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1F52034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_1C1E77790(&qword_1EDC2E8F0, MEMORY[0x1E69695A8]);
  v10 = sub_1C1F52414();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v9, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[-2] = v2;
    v14[-1] = a1;
    v14[1] = v2;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  return (v11)(a1, v4);
}

uint64_t CalculateExpression.hash(into:)()
{
  v1 = v0;
  v2 = sub_1C1F52034();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v7 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  sub_1C1E77790(&qword_1EDC2E8F8, MEMORY[0x1E69695A8]);
  sub_1C1F523C4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t CalculateExpression.debugDescription.getter()
{
  v6 = 0;
  v7 = 0;
  v1 = *(*sub_1C1EEBC30() + 264);

  v3 = v1(v2);

  sub_1C1EEBFC4(v3, v0, &v7, &v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B8, &qword_1C1F57100);
  sub_1C1E785EC(&qword_1EDC2C328, &qword_1EBF211B8, &qword_1C1F57100);
  v4 = sub_1C1F523E4();

  return v4;
}

uint64_t CalculateExpression.plain.getter()
{
  sub_1C1EEBC30();
}

void sub_1C1ED62E0(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1C1EB1C58(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1C1EEA928(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_1C1E83580(a1, &qword_1EBF212D8, &qword_1C1F574F0);
    sub_1C1EE9EA0(a2, v7);

    sub_1C1E83580(v7, &qword_1EBF212D8, &qword_1C1F574F0);
  }
}

void *sub_1C1ED6394()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_1C1ED6458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1C1ED652C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C1ED655C(v2);
}

void sub_1C1ED655C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C1E785A4(0, &qword_1EDC2C300, off_1E815B848);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C1F528C4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1C1ED66E8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

id CalculateExpression.result.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    sub_1C1ED6924();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  result = *(v1 + v2);
  if (result)
  {
    return [result ignoringNaN];
  }

  return result;
}

void sub_1C1ED6924()
{
  v1 = v0;
  swift_getKeyPath();
  *&v38 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v3 = (*(*Strong + 216))(Strong), , (v3 & 1) != 0))
  {
    swift_getKeyPath();
    *&v38 = v0;
    sub_1C1F52104();

    if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1F520F4();

      v5 = sub_1C1ED73F4();
      v7 = v6;
      swift_getKeyPath();
      *&v38 = v0;
      sub_1C1F52104();

      v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
      swift_beginAccess();
      v9 = *(v1 + v8);
      swift_getKeyPath();
      *&v38 = v1;

      sub_1C1F52104();

      v10 = swift_weakLoadStrong();
      v36 = v7;
      if (v10)
      {
        v11 = (*(*v10 + 168))(v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v38 = v11;
        sub_1C1EEDCDC(v9, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, &v38);
        v13 = v5;

        v9 = v38;
      }

      else
      {
        v13 = v5;
      }

      v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v15 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
      v39 = v15;
      *&v38 = v14;
      sub_1C1EB1C58(&v38, v37);
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_1C1EEA928(v37, @"CalculateKeyForceResult", v16);
      v18 = sub_1C1E83C94(v17);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21398, &qword_1C1F57828);
      *&v38 = v18;
      sub_1C1EB1C58(&v38, v37);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C1EEA928(v37, @"CalculateKeyVariables", v19);
      if (!*(v9 + 16) || (, sub_1C1EE987C(@"CalculateKeyAllowEqualSign"), v21 = v20, , (v21 & 1) == 0))
      {
        v39 = MEMORY[0x1E69E6370];
        LOBYTE(v38) = 1;
        sub_1C1EB1C58(&v38, v37);
        v22 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C1EEA928(v37, @"CalculateKeyAllowEqualSign", v22);
      }

      v23 = *(*sub_1C1EEBC30() + 448);

      v23();
      v25 = v24;

      if (v25)
      {

        v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v39 = v15;
        *&v38 = v26;
        sub_1C1EB1C58(&v38, v37);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C1EEA928(v37, @"CalculateKeyConvertTrivial", v27);
      }

      v28 = OBJC_IVAR____TtC9Calculate19CalculateExpression_internalRequest;
      swift_beginAccess();
      v29 = *(v1 + v28);
      if (v29)
      {
        [v29 cancel];
      }

      v30 = OBJC_IVAR____TtC9Calculate19CalculateExpression__isEvaluating;
      swift_beginAccess();
      if (*(v1 + v30) == 1)
      {
        *(v1 + v30) = 1;
      }

      else
      {
        v31 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v31);
        sub_1C1F520F4();
      }

      v32 = OBJC_IVAR____TtC9Calculate19CalculateExpression_rebuild;
      swift_beginAccess();
      *(v1 + v32) = 0;
      v33 = swift_allocObject();
      swift_weakInit();

      v34 = evaluate(_:options:resultHandler:)(v13, v36, v9, sub_1C1EEC708, v33);

      v35 = *(v1 + v28);
      *(v1 + v28) = v34;
    }
  }
}

void *sub_1C1ED6FF0()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_1C1ED70B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return v5;
}

void sub_1C1ED71A0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void *CalculateExpression.error.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    sub_1C1ED6924();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t CalculateExpression.activeError.getter()
{
  v0 = *(*sub_1C1E7F10C() + 344);

  v2 = v0(v1);

  return v2;
}

uint64_t sub_1C1ED73F4()
{
  v0 = sub_1C1E83618();

  v1 = *(*sub_1C1EEBC30() + 448);

  v1();
  v3 = v2;

  if (!v3)
  {
    return v0;
  }

  sub_1C1E94E48();
  if (sub_1C1F52934())
  {
    v4 = sub_1C1F52904();

    if (v4[2] >= 2uLL)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if ((sub_1C1F52934() & 1) == 0)
  {
    return v0;
  }

  v4 = sub_1C1F52904();

  if (v4[2] >= 2uLL)
  {
LABEL_7:
    v7 = v4[6];
    v6 = v4[7];

    return sub_1C1F525E4();
  }

  __break(1u);
  return result;
}

uint64_t CalculateExpression.declaredSymbol.getter()
{
  v0 = *(*sub_1C1EEBC30() + 448);

  v2 = v0(v1);

  return v2;
}

void sub_1C1ED76F4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C1ED7724(v2);
}

void sub_1C1ED7724(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult;
  v5 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C1E785A4(0, &qword_1EDC2C300, off_1E815B848);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C1F528C4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t CalculateExpression.graphableType.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  *a1 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType);
  return result;
}

double (*CalculateExpression.graphableFunction2D.getter())()
{
  v1 = v0;
  swift_getKeyPath();
  v13 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v2 = (v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];

    v5 = sub_1C1EEC754();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1C1F52424();

      v8 = [v6 graphableFunction2DFor_];

      v9 = sub_1C1EEE5C0;
LABEL_11:
      *(swift_allocObject() + 16) = v8;
      return v9;
    }
  }

  swift_getKeyPath();
  sub_1C1F52104();

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  if (!*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType))
  {
    return sub_1C1ED7D60;
  }

  v10 = sub_1C1EEC754();
  if (!v10)
  {
    return sub_1C1ED7D60;
  }

  v11 = [v10 graphableFunction2D];
  v9 = sub_1C1EC44EC;
  if (v11)
  {
    v8 = v11;
    goto LABEL_11;
  }

  return sub_1C1ED7D60;
}

BOOL CalculateExpression.isGraphable.getter()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  return *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) != 0;
}

uint64_t (*CalculateExpression.graphableFunction3D.getter())()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v1 = sub_1C1ED7D60;
  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) == 2)
  {
    v2 = sub_1C1EEC754();
    v1 = sub_1C1ED7D60;
    if (v2)
    {
      v3 = [v2 graphableFunction3D];
      v1 = sub_1C1ED7D60;
      if (v3)
      {
        *(swift_allocObject() + 16) = v3;
        return sub_1C1EC44EC;
      }
    }
  }

  return v1;
}

uint64_t sub_1C1ED7F04()
{
  if (qword_1EDC2FEF8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC2FF00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F576C0;

  *(inited + 32) = *sub_1C1EB971C();

  *(inited + 40) = *sub_1C1EB97BC();

  *(inited + 48) = *sub_1C1EB980C();

  *(inited + 56) = *sub_1C1EB985C();

  *(inited + 64) = *sub_1C1EB98AC();

  *(inited + 72) = *sub_1C1EB9C6C();

  *(inited + 80) = *sub_1C1EB9CBC();

  *(inited + 88) = *sub_1C1EB98FC();

  *(inited + 96) = *sub_1C1EB994C();

  *(inited + 104) = *sub_1C1EB999C();

  *(inited + 112) = *sub_1C1EB99EC();

  *(inited + 120) = *sub_1C1EB9A3C();

  *(inited + 128) = *sub_1C1EB9A8C();

  *(inited + 136) = *sub_1C1EB9ADC();

  *(inited + 144) = *sub_1C1EB9B2C();

  *(inited + 152) = *sub_1C1EB9B7C();

  *(inited + 160) = *sub_1C1EB9BCC();

  *(inited + 168) = *sub_1C1EB9C1C();

  v2 = sub_1C1E81D78(inited, v0);
  swift_setDeallocating();
  v3 = *(inited + 16);
  result = swift_arrayDestroy();
  qword_1EBF22070 = v2;
  return result;
}

uint64_t sub_1C1ED80F8()
{
  if (qword_1EBF22068 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBF22070;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F56430;

  *(inited + 32) = *sub_1C1E7D7BC();

  *(inited + 40) = *sub_1C1E7D80C();

  v2 = sub_1C1E81D78(inited, v0);
  swift_setDeallocating();
  v3 = *(inited + 16);
  result = swift_arrayDestroy();
  qword_1EDC2FEF0 = v2;
  return result;
}

uint64_t sub_1C1ED81EC()
{
  if (qword_1EBF22078 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC2FEF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F576E0;

  *(inited + 32) = *sub_1C1EB953C();

  *(inited + 40) = *sub_1C1EB958C();

  *(inited + 48) = *sub_1C1EB95DC();

  *(inited + 56) = *sub_1C1EB962C();

  *(inited + 64) = *sub_1C1EB967C();

  *(inited + 72) = *sub_1C1EB96CC();

  *(inited + 80) = *sub_1C1EB976C();

  v2 = sub_1C1E81D78(inited, v0);
  swift_setDeallocating();
  v3 = *(inited + 16);
  result = swift_arrayDestroy();
  qword_1EDC2FEE0 = v2;
  return result;
}

uint64_t sub_1C1ED8330()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F576F0;
  *(inited + 32) = *sub_1C1EB9E0C();

  *(inited + 40) = *sub_1C1EB9EAC();

  *(inited + 48) = *sub_1C1EB9EFC();

  *(inited + 56) = *sub_1C1EB9E5C();

  *(inited + 64) = *sub_1C1EB9F4C();

  *(inited + 72) = *sub_1C1EB9F9C();

  v1 = sub_1C1E7D41C(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  result = swift_arrayDestroy();
  qword_1EDC2FF10 = v1;
  return result;
}

uint64_t sub_1C1ED8434(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E7BACC(v4, &OBJC_IVAR____TtC9Calculate19CalculateExpression__allowedOperations, sub_1C1E7EDC0);
}

Swift::Void __swiftcall CalculateExpression.setNeedsEvaluation(rebuild:)(Swift::Bool rebuild)
{
  v2 = v1;
  if (rebuild)
  {
    v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression_rebuild;
    swift_beginAccess();
    *(v2 + v3) = 1;
  }

  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) = 1;
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t CalculateExpression.referenceCount.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression___documentReferenceCount;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphReferenceCount;
  swift_beginAccess();
  v5 = *(v1 + v4);
  result = v3 + v5;
  if (__OFADD__(v3, v5))
  {
    __break(1u);
  }

  return result;
}

void sub_1C1ED88EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21400, &unk_1C1F58440);
    v2 = sub_1C1F52BE4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_1C1E785A4(0, &qword_1EDC2C300, off_1E815B848);

        v20 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21308, &qword_1C1F572A0);
        swift_dynamicCast();
        v21 = sub_1C1EAC150(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v27;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v27;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1C1ED8B28(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a1;
    v11 = objc_opt_self();
    v12 = a1;
    v13 = a2;

    v14 = [v11 currentThread];
    v15 = [v14 isMainThread];

    if (v15)
    {
      sub_1C1ED8D38(v9, a2, a1);
    }

    else
    {
      v16 = sub_1C1F527A4();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
      sub_1C1F52784();

      v17 = sub_1C1F52774();
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E85E0];
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = sub_1C1EEE2F8;
      v18[5] = v10;
      sub_1C1EBE044(0, 0, v7, &unk_1C1F58488, v18);
    }
  }

  return result;
}

uint64_t sub_1C1ED8D38(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F520F4();

  v5 = a3;
  sub_1C1ED655C(a3);
  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression__isEvaluating;
  result = swift_beginAccess();
  if (*(a1 + v6))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1F520F4();
  }

  else
  {
    *(a1 + v6) = 0;
  }

  return result;
}

uint64_t sub_1C1ED8ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1C1F52784();
  v5[4] = sub_1C1F52774();
  v7 = sub_1C1F52764();

  return MEMORY[0x1EEE6DFA0](sub_1C1ED8F68, v7, v6);
}

uint64_t sub_1C1ED8F68()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v3(v4);
  v5 = v0[1];

  return v5();
}

uint64_t CalculateExpression.foundSymbols.getter()
{
  v0 = *(*sub_1C1EEBC30() + 456);

  v2 = v0(v1);

  return v2;
}

uint64_t sub_1C1ED9054(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1ED9080(v4);
}

uint64_t sub_1C1ED9080(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      type metadata accessor for CalculateDocument();
      sub_1C1E77790(&qword_1EBF21408, type metadata accessor for CalculateDocument);

      v2 = sub_1C1F52414();

      if ((v2 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_weakAssign();
      sub_1C1E77A68();
    }
  }

  else
  {

    if (!a1)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F520F4();
}

uint64_t sub_1C1ED9284@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v6 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t sub_1C1ED9350(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CalculateExpression.parent.setter(v4);
}

uint64_t CalculateExpression.parent.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1F52034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v13 = &unk_1EDC30000;
  if (Strong)
  {
    if (a1)
    {
      v14 = Strong;
      swift_getKeyPath();
      v22 = v5;
      v24 = v14;
      v21[1] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
      sub_1C1F52104();

      v15 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
      swift_beginAccess();
      v21[0] = *(v5 + 16);
      (v21[0])(v11, v14 + v15, v4);
      swift_getKeyPath();
      v23 = a1;
      sub_1C1F52104();

      v16 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
      swift_beginAccess();
      (v21[0])(v9, a1 + v16, v4);
      LOBYTE(v16) = sub_1C1F52014();

      v17 = *(v22 + 8);
      v17(v9, v4);
      v17(v11, v4);
      v13 = &unk_1EDC30000;
      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_weakAssign();
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v21[-2] = v2;
  v21[-1] = a1;
  v20 = v13[370];
  v25 = v2;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F520F4();
}

void (*CalculateExpression.parent.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1F52124();

  v4[7] = OBJC_IVAR____TtC9Calculate19CalculateExpression__parent;
  swift_beginAccess();
  v4[3] = swift_weakLoadStrong();
  return sub_1C1ED984C;
}

void sub_1C1ED984C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 56);
  swift_weakAssign();
  v7 = v3[5];
  v6 = v3[6];
  v8 = v3[4];
  if (a2)
  {
    v9 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  *v3 = v8;
  swift_getKeyPath();
  sub_1C1F52114();

  free(v3);
}

uint64_t CalculateExpression.__allocating_init(_:options:base:id:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  CalculateExpression.init(_:options:base:id:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_1C1ED99A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C1F52034();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  v16 = 1;
  sub_1C1F52024();
  v10 = type metadata accessor for CalculateExpression();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  result = CalculateExpression.init(_:options:base:id:)(a2, 0xE100000000000000, v9, &v16, v8);
  *a3 = v13;
  return result;
}

uint64_t sub_1C1ED9AA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1ED9ACC(v4);
}

uint64_t sub_1C1ED9ACC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___variableResults;
  swift_beginAccess();
  v4 = *(v1 + v3);

  sub_1C1EE93E4(v5, a1);
  v7 = v6;

  if (v7)
  {
    v8 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1ED9C30(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

void sub_1C1ED9CFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_1C1ED9D28(v4);
}

void sub_1C1ED9D28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__variables;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1C1EE958C(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;

    v8 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
    sub_1C1ED9ACC(v8);
    sub_1C1E77A68();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1ED9F00@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *a1 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType);
  return result;
}

uint64_t sub_1C1ED9FB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *a2 = *(v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType);
  return result;
}

unsigned __int8 *sub_1C1EDA060(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C1EDA098(&v4);
}

unsigned __int8 *sub_1C1EDA098(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t sub_1C1EDA1D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1EDA1FC(v4);
}

uint64_t sub_1C1EDA1FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableVariables;
  if (sub_1C1EEB85C(*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableVariables), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1EDA348()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) != 1)
  {
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1F520F4();

  v4 = *(*sub_1C1EEBC30() + 264);

  v6 = v4(v5);

  v36 = v0;
  if (v6 >> 62)
  {
LABEL_17:
    v7 = sub_1C1F52994();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_18:

    v12 = *(*sub_1C1EEBC30() + 400);

    v14 = v12(v13);

    if (v14 >= 3)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (*(v36 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) != v15)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_4:
  v8 = 0;
  while ((v6 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1C6911DB0](v8, v6);
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    v11 = *((*(*v9 + 232))() + 16);

    if (v11)
    {
      goto LABEL_14;
    }

    ++v8;
    if (v10 == v7)
    {
      goto LABEL_18;
    }
  }

  if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v6 + 8 * v8 + 32);

  v10 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  if (!*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType))
  {
    goto LABEL_23;
  }

LABEL_22:
  v16 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C1F520F4();

LABEL_23:
  v17 = *(*sub_1C1EEBC30() + 264);

  v19 = v17(v18);

  if (v19 >> 62)
  {
    goto LABEL_43;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_25:
    v21 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C6911DB0](v21, v19);
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:

LABEL_41:

          v32 = MEMORY[0x1E69E7CC0];
          return sub_1C1EDA1FC(v32);
        }
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_43:
          v20 = sub_1C1F52994();
          if (!v20)
          {
            break;
          }

          goto LABEL_25;
        }

        v22 = *(v19 + 8 * v21 + 32);

        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_38;
        }
      }

      v24 = *(*v22 + 232);
      v25 = *(v24() + 16);

      if (v25)
      {
        v27 = *((v24)(v26) + 16);

        if (v27 != 1)
        {
          goto LABEL_39;
        }

        v29 = (v24)(v28);
        if (!*(v29 + 16))
        {

          goto LABEL_41;
        }

        v30 = *(v29 + 32);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21200, &qword_1C1F568F0);
        sub_1C1E785A4(0, &qword_1EBF213C8, 0x1E696ABC0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_39;
        }

        v31 = [v37 code];

        if (v31 != -1003)
        {
          goto LABEL_39;
        }
      }

      ++v21;
    }

    while (v23 != v20);
  }

  v33 = *(*sub_1C1EEBC30() + 424);

  v35 = v33(v34);

  v32 = v35;
  return sub_1C1EDA1FC(v32);
}

uint64_t sub_1C1EDA988(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C1F525D4();
  }

  else
  {
    return 0;
  }
}

uint64_t CalculateExpression.effectiveGraphableType.getter@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v5 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType);
  if (!v5)
  {
    swift_getKeyPath();
    sub_1C1F52104();

    if (*(v1 + v3) == 1)
    {
      sub_1C1EDA348();
    }

    swift_getKeyPath();
    sub_1C1F52104();

    if (*(*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableVariables) + 16))
    {
      v5 = 1;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t CalculateExpression.graphableVariables.getter()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v1 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableVariables);
}

void sub_1C1EDAC74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  v8 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
  sub_1C1ED9ACC(v8);
  sub_1C1E77A68();
  if (*(v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 0;
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(0);
}

void (*sub_1C1EDADE4(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1EDAE48;
}

void sub_1C1EDAE48(void *a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = a1[3];
    v5 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
    sub_1C1ED9ACC(v5);
    sub_1C1E77A68();
    if (*(v4 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      v6 = a1[3];
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *a1 = v6;
      sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
      sub_1C1F520F4();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 0;
    }

    v8 = a1[3];
    CalculateExpression.setNeedsEvaluation(rebuild:)(0);
  }
}

uint64_t sub_1C1EDAF94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = (v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

void sub_1C1EDB060(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  CalculateExpression.graphableVariable.setter(v2, v3);
}

void CalculateExpression.graphableVariable.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1C1F52C64() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    sub_1C1EDAC74(a1, a2);
    return;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F520F4();
}

void (*CalculateExpression.graphableVariable.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1F52124();

  v4[7] = sub_1C1EDADE4(v4);
  return sub_1C1EDB344;
}

uint64_t CalculateExpression.isLikelyMath.getter()
{
  v0 = *(*sub_1C1EEBC30() + 488);

  LOBYTE(v0) = v0(v1);

  return v0 & 1;
}

uint64_t sub_1C1EDB430()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v1 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
  v2 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression + 8);

  return v1;
}

uint64_t sub_1C1EDB4EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = *(v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
  a2[1] = v4;
}

uint64_t sub_1C1EDB5BC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
  v6 = *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression) == a1 && *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression + 8), (sub_1C1F52C64() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1EDB728@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_1C1E83618();
  a2[1] = v4;
}

uint64_t sub_1C1EDB780(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t CalculateExpression.expression.setter(uint64_t a1, uint64_t a2)
{
  sub_1C1EDB5BC(a1, a2);
  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 0;
  }

  sub_1C1EE6250(0, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation);
  sub_1C1EDBB90(0);
  sub_1C1E77A68();
  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation))
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation))
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) = 0;
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

uint64_t sub_1C1EDBB90(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression;
  if (!*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CalculateExpression.RichExpression();
  sub_1C1E77790(&qword_1EDC2E8C8, type metadata accessor for CalculateExpression.RichExpression);

  v5 = sub_1C1F52414();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v2 + v4);
LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t (*CalculateExpression.expression.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1C1E83618();
  a1[1] = v3;

  return sub_1C1EDBD94;
}

uint64_t sub_1C1EDBD94(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return CalculateExpression.expression.setter(*a1, v2);
  }

  v5 = a1[1];

  CalculateExpression.expression.setter(v3, v2);
}

uint64_t CalculateExpression.copyableExpression.getter()
{
  v0 = *(*sub_1C1EEBC30() + 304);

  v2 = v0(v1);

  return v2;
}

uint64_t sub_1C1EDBE7C()
{
  sub_1C1E7F10C();
  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    *(v0 + v1) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t sub_1C1EDC0A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1C1EDC18C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F520F4();
}

uint64_t sub_1C1EDC248(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1C1EDC2B0()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v1 = (v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

__n128 sub_1C1EDC374@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = (v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a2 = *v4;
  a2[1].n128_u8[0] = v5;
  return result;
}

uint64_t sub_1C1EDC478(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange;
  result = swift_beginAccess();
  if ((*(v7 + 16) & 1) == 0)
  {
    if (a3)
    {
      goto LABEL_11;
    }

    if (*v7 != a1 || *(v7 + 8) != a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = a3 & 1;
    return result;
  }

  if (a3)
  {
    goto LABEL_10;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F520F4();
}

uint64_t CalculateExpression.assumeDegrees.setter(char a1)
{
  v2 = a1 & 1;
  sub_1C1EDBE7C();
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees) == v2)
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[0] = v1;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  v5 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
  swift_getKeyPath();
  v9[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  v6 = @"CalculateKeyAssumeDegrees";
  sub_1C1F52104();

  v7 = *(v1 + v3);
  v9[3] = v5;
  v9[0] = sub_1C1F528A4();
  swift_getKeyPath();
  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v9, v6);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  CalculateExpression.setNeedsEvaluation(rebuild:)(0);
  swift_getKeyPath();
  v9[0] = v1;
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

uint64_t (*CalculateExpression.assumeDegrees.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees);
  return sub_1C1EDCA50;
}

uint64_t CalculateExpression.allowPartialExpressions.setter(char a1)
{
  v2 = a1 & 1;
  sub_1C1EDBE7C();
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions) == v2)
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[0] = v1;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  v5 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
  swift_getKeyPath();
  v9[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  v6 = @"CalculateKeyAllowPartialExpressions";
  sub_1C1F52104();

  v7 = *(v1 + v3);
  v9[3] = v5;
  v9[0] = sub_1C1F528A4();
  swift_getKeyPath();
  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v9, v6);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  v9[0] = v1;
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

uint64_t (*CalculateExpression.allowPartialExpressions.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions);
  return sub_1C1EDCEE8;
}

uint64_t CalculateExpression.flexibleFractionDigits.setter(char a1)
{
  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[0] = v1;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  v4 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
  swift_getKeyPath();
  v8[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  v5 = @"CalculateKeyFlexibleFractionDigits";
  sub_1C1F52104();

  v6 = *(v1 + v2);
  v8[3] = v4;
  v8[0] = sub_1C1F528A4();
  swift_getKeyPath();
  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v8, v5);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  return sub_1C1EDD220();
}

uint64_t sub_1C1EDD220()
{
  isUniquelyReferenced_nonNull_native = v0;
  v99 = *v0;
  v2 = sub_1C1F52034();
  v103 = *(v2 - 8);
  v3 = *(v103 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v98 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v111 = &v94 - v6;
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  v113 = v0;
  v8 = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) != 2)
  {
    return sub_1C1E7BACC(MEMORY[0x1E69E7CC0], &OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack, sub_1C1E767BC);
  }

  v114 = MEMORY[0x1E69E7CC0];
  v115 = MEMORY[0x1E69E7CC0];
  v110 = sub_1C1E74A5C(MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  v113 = v0;
  sub_1C1F52104();

  v9 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack);
  if (v9 >> 62)
  {
    goto LABEL_116;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v106 = v7;
  v100 = isUniquelyReferenced_nonNull_native;
  v101 = v8;
  if (v10)
  {
    v109 = v9 & 0xC000000000000001;
    v102 = v9 & 0xFFFFFFFFFFFFFF8;
    v107 = (v103 + 16);
    v105 = v103 + 8;

    v8 = 0;
    v104 = v9;
    v108 = v10;
    while (1)
    {
      if (v109)
      {
        v11 = MEMORY[0x1C6911DB0](v8, v9);
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_108;
        }
      }

      else
      {
        if (v8 >= *(v102 + 16))
        {
          goto LABEL_112;
        }

        v11 = *(v9 + 8 * v8 + 32);

        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
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
          v10 = sub_1C1F52994();
          goto LABEL_4;
        }
      }

      v112 = v12;
      isUniquelyReferenced_nonNull_native = sub_1C1E7F10C();
      v13 = *(*isUniquelyReferenced_nonNull_native + 392);

      v14 = v13();

      if (v14 >> 62)
      {
        if (!sub_1C1F52994())
        {
LABEL_6:

          goto LABEL_7;
        }
      }

      else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1C6911DB0](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_111;
        }

        v15 = *(v14 + 32);
      }

      v16 = *v107;
      v17 = v111;
      v9 = v2;
      (*v107)(v111, v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_id, v2);

      v18 = v110;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v18;
      v7 = sub_1C1EB4BE4(v17);
      v20 = *(v18 + 16);
      v21 = (v19 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_110;
      }

      v23 = v19;
      if (*(v18 + 24) >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C1EB594C();
        }
      }

      else
      {
        sub_1C1EB4FF8(v22, isUniquelyReferenced_nonNull_native);
        v24 = sub_1C1EB4BE4(v111);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_123;
        }

        v7 = v24;
      }

      v26 = v113;
      v110 = v113;
      if (v23)
      {
        v27 = v113[7];
        v28 = *(v27 + 8 * v7);
        *(v27 + 8 * v7) = v11;

        v2 = v9;
        (*v105)(v111, v9);
      }

      else
      {
        v113[(v7 >> 6) + 8] |= 1 << v7;
        isUniquelyReferenced_nonNull_native = v103;
        v29 = v111;
        v16(v26[6] + *(v103 + 72) * v7, v111, v9);
        *(v26[7] + 8 * v7) = v11;

        v30 = v29;
        v2 = v9;
        (*(isUniquelyReferenced_nonNull_native + 8))(v30, v9);
        v31 = v26[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_114;
        }

        v26[2] = v33;
      }

      v7 = v106;
      v9 = v104;
LABEL_7:
      isUniquelyReferenced_nonNull_native = *(*sub_1C1E7F10C() + 352);

      (isUniquelyReferenced_nonNull_native)(0);

      ++v8;
      if (v112 == v108)
      {

        isUniquelyReferenced_nonNull_native = v100;
        v8 = v101;
        break;
      }
    }
  }

  v35 = *(*sub_1C1E7F10C() + 392);

  v37 = v35(v36);

  if (v37 >> 62)
  {
    v38 = sub_1C1F52994();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v111 = v37 & 0xC000000000000001;
    v102 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
    v103 = OBJC_IVAR____TtC9Calculate19CalculateExpression___engine;
    swift_beginAccess();
    v40 = 0;
    v9 = 0;
    v107 = (v37 + 32);
    v108 = v37 & 0xFFFFFFFFFFFFFF8;
    v97 = @"CalculateKeyEngine";
    v96 = xmmword_1C1F56480;
    v104 = v37;
    v105 = v39;
    v109 = v38;
    while (1)
    {
      if (v111)
      {
        v2 = MEMORY[0x1C6911DB0](v40, v37);
        v32 = __OFADD__(v40++, 1);
        if (v32)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v40 >= *(v108 + 16))
        {
          goto LABEL_113;
        }

        v2 = v107[v40];

        v32 = __OFADD__(v40++, 1);
        if (v32)
        {
          goto LABEL_109;
        }
      }

      MEMORY[0x1C6911980](v41);
      if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v59 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C1F526E4();
      }

      sub_1C1F52724();
      v112 = v114;
      v42 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if (qword_1EDC2F690 != -1)
      {
        swift_once();
      }

      isUniquelyReferenced_nonNull_native = qword_1EDC2F698;
      if (*(qword_1EDC2F698 + 16))
      {
        v43 = *(qword_1EDC2F698 + 40);
        sub_1C1F52CD4();
        MEMORY[0x1C6911FD0](v42);
        v44 = sub_1C1F52CF4();
        v45 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
        v46 = v44 & ~v45;
        if ((*(isUniquelyReferenced_nonNull_native + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
        {
          v47 = ~v45;
          while (*(*(isUniquelyReferenced_nonNull_native + 48) + v46) != v42)
          {
            v46 = (v46 + 1) & v47;
            if (((*(isUniquelyReferenced_nonNull_native + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v48 = v112;
          if (v112 >> 62)
          {
            if (sub_1C1F52994() > 0)
            {
              if (!sub_1C1F52994())
              {
LABEL_81:
                v105 = v9;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21178, &qword_1C1F57C50);
                inited = swift_initStackObject();
                *(inited + 16) = v96;
                v61 = v97;
                *(inited + 32) = v97;
                swift_getKeyPath();
                v62 = v100;
                v113 = v100;
                v63 = v61;
                sub_1C1F52104();

                v64 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
                *(inited + 64) = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
                *(inited + 40) = v64;
                v65 = sub_1C1E74EC0(inited);
                swift_setDeallocating();
                sub_1C1E83580(inited + 32, &qword_1EBF21180, &qword_1C1F564D0);
                LOBYTE(v113) = 1;
                v66 = v98;
                sub_1C1F52024();
                v67 = *(v99 + 48);
                v68 = *(v99 + 52);
                v69 = swift_allocObject();
                CalculateExpression.init(_:options:base:id:)(0, 0xE000000000000000, v65, &v113, v66);
                swift_getKeyPath();
                v113 = v62;
                v8 = v101;
                sub_1C1F52104();

                v70 = *(v62 + v102);
                v71 = *(v62 + v102);
                v72 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
                swift_beginAccess();
                if (qword_1C1F58578[*(v69 + v72)] == qword_1C1F58578[v70])
                {
                  *(v69 + v72) = v71;
                  sub_1C1EE1790();
                  v9 = v105;
                }

                else
                {
                  KeyPath = swift_getKeyPath();
                  MEMORY[0x1EEE9AC00](KeyPath);
                  *(&v94 - 2) = v69;
                  *(&v94 - 8) = v71;
                  v113 = v69;
                  v9 = v105;
                  sub_1C1F520F4();
                }

                v74 = sub_1C1E7F10C();
                v75 = *(*v74 + 400);
                isUniquelyReferenced_nonNull_native = *v74 + 400;

                v75(v76);

                CalculateExpression.parent.setter(v77);
                v78 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
                swift_beginAccess();
                v37 = v104;
                if (*(v69 + v78) == 1)
                {
                  *(v69 + v78) = 1;
                }

                else
                {
                  v79 = swift_getKeyPath();
                  isUniquelyReferenced_nonNull_native = &v94;
                  MEMORY[0x1EEE9AC00](v79);
                  *(&v94 - 2) = v69;
                  *(&v94 - 8) = 1;
                  v113 = v69;
                  sub_1C1F520F4();
                }

                v80 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
                swift_beginAccess();
                if (*(v69 + v80))
                {
                  v81 = swift_getKeyPath();
                  isUniquelyReferenced_nonNull_native = &v94;
                  MEMORY[0x1EEE9AC00](v81);
                  *(&v94 - 2) = v69;
                  *(&v94 - 8) = 0;
                  v113 = v69;
                  sub_1C1F520F4();
                }

                else
                {
                  *(v69 + v80) = 0;
                }

                if (*(v69 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
                {
                  *(v69 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
                }

                else
                {
                  v82 = swift_getKeyPath();
                  isUniquelyReferenced_nonNull_native = &v94;
                  MEMORY[0x1EEE9AC00](v82);
                  *(&v94 - 2) = v69;
                  *(&v94 - 8) = 1;
                  v113 = v69;
                  sub_1C1F520F4();
                }

                MEMORY[0x1C6911980](v83);
                if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v84 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_1C1F526E4();
                }

                sub_1C1F52724();

                v105 = v115;

                goto LABEL_96;
              }

LABEL_59:
              if ((v48 & 0xC000000000000001) != 0)
              {
                v50 = MEMORY[0x1C6911DB0](0, v48);
                if (*(v110 + 16))
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v49 = v110;
                if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_115;
                }

                v50 = *(v48 + 32);

                if (*(v49 + 16))
                {
LABEL_62:
                  v51 = sub_1C1EB4BE4(v50 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_id);
                  if (v52)
                  {
                    v53 = *(*(v110 + 56) + 8 * v51);
                    v54 = swift_retain_n();
                    MEMORY[0x1C6911980](v54);
                    if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v85 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_1C1F526E4();
                    }

                    sub_1C1F52724();
                    v105 = v115;
                    v55 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
                    swift_beginAccess();
                    if (*(v53 + v55) == 1)
                    {
                      *(v53 + v55) = 1;
                    }

                    else
                    {
                      v56 = swift_getKeyPath();
                      MEMORY[0x1EEE9AC00](v56);
                      *(&v94 - 2) = v53;
                      *(&v94 - 8) = 1;
                      v113 = v53;
                      sub_1C1F520F4();
                    }

                    v57 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
                    swift_beginAccess();
                    if (*(v53 + v57) == 1)
                    {
                      *(v53 + v57) = 1;
                      goto LABEL_71;
                    }

                    isUniquelyReferenced_nonNull_native = swift_getKeyPath();
                    v95 = &v94;
                    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
                    *(&v94 - 2) = v53;
                    *(&v94 - 8) = 1;
                    v113 = v53;
                    sub_1C1F520F4();

                    if (*(v53 + v57))
                    {
LABEL_71:
                      isUniquelyReferenced_nonNull_native = swift_getKeyPath();
                      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
                      *(&v94 - 2) = v53;
                      *(&v94 - 8) = 0;
                      v113 = v53;
                      sub_1C1F520F4();
                    }

                    else
                    {
                      *(v53 + v57) = 0;
                    }

                    v58 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression;
                    if (*(v53 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
                    {

                      *(v53 + v58) = 1;

                      v8 = v101;
                    }

                    else
                    {
                      isUniquelyReferenced_nonNull_native = swift_getKeyPath();
                      v95 = &v94;
                      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
                      *(&v94 - 2) = v53;
                      *(&v94 - 8) = 1;
                      v113 = v53;
                      v8 = v101;
                      sub_1C1F520F4();
                    }

LABEL_96:
                    v114 = MEMORY[0x1E69E7CC0];
                    v112 = MEMORY[0x1E69E7CC0];
                    v7 = v106;
                    goto LABEL_40;
                  }
                }
              }

              goto LABEL_81;
            }
          }

          else if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }
        }
      }

LABEL_39:

LABEL_40:
      if (v40 == v109)
      {
        goto LABEL_98;
      }
    }
  }

  v112 = MEMORY[0x1E69E7CC0];
  v105 = MEMORY[0x1E69E7CC0];
LABEL_98:

  v86 = v105;
  if (v105 >> 62)
  {
    v87 = sub_1C1F52994();
  }

  else
  {
    v87 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v87)
  {
    goto LABEL_107;
  }

  v32 = __OFSUB__(v87, 1);
  v88 = v87 - 1;
  if (v32)
  {
    __break(1u);
    goto LABEL_120;
  }

  if ((v86 & 0xC000000000000001) != 0)
  {
LABEL_120:
    MEMORY[0x1C6911DB0](v88, v86);
    goto LABEL_106;
  }

  if ((v88 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v88 < *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v89 = *(v86 + 8 * v88 + 32);

LABEL_106:
    v90 = sub_1C1E7F10C();

    v91 = *(*sub_1C1E7F10C() + 344);

    v93 = v91(v92);

    (*(*v90 + 352))(v93);

LABEL_107:
    sub_1C1E7BACC(v86, &OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack, sub_1C1E767BC);
  }

  __break(1u);
LABEL_123:
  result = sub_1C1F52CA4();
  __break(1u);
  return result;
}

uint64_t (*CalculateExpression.flexibleFractionDigits.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits);
  return sub_1C1EDE660;
}

void CalculateExpression.engine.setter(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v25[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___engine;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) != a1)
  {
    v5 = *(*sub_1C1E7F10C() + 344);

    v24 = v5(v6);

    CalculateExpression.setNeedsEvaluation(rebuild:)(0);
    swift_getKeyPath();
    v25[0] = v1;
    sub_1C1F52104();

    v23 = OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation;
    if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    v25[0] = v1;
    sub_1C1F52104();

    v7 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
    swift_beginAccess();
    v8 = *(v1 + v7);
    if (v8)
    {
      v9 = [v8 ignoringNaN];
      CalculateExpression.clearAll()();
      if (v9)
      {
        type metadata accessor for CalculateExpression.CustomOperandOperation();
        v9 = v9;
        v10 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v9);
        CalculateExpression.update(_:)(v10);
      }
    }

    else
    {
      CalculateExpression.clearAll()();
      v9 = 0;
    }

    if (*(v1 + v4) != a1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v25[0] = v1;
      sub_1C1F520F4();
    }

    swift_getKeyPath();
    v25[0] = v1;
    v12 = @"CalculateKeyEngine";
    sub_1C1F52104();

    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v25[3] = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
    v25[0] = v13;
    swift_getKeyPath();
    sub_1C1F52104();

    swift_getKeyPath();
    sub_1C1F52124();

    swift_beginAccess();
    sub_1C1ED62E0(v25, v12);
    swift_endAccess();
    swift_getKeyPath();
    sub_1C1F52114();

    CalculateExpression.setNeedsEvaluation(rebuild:)(1);
    swift_getKeyPath();
    v25[0] = v2;
    sub_1C1F52104();

    if (*(v2 + v23) == 1)
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    v25[0] = v2;
    sub_1C1F52104();

    v14 = *(v2 + v7);
    if (v14)
    {
      v15 = [v14 ignoringNaN];
      CalculateExpression.clearAll()();
      if (v15)
      {
        type metadata accessor for CalculateExpression.CustomOperandOperation();
        v15 = v15;
        v16 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v15);
        CalculateExpression.update(_:)(v16);
      }
    }

    else
    {
      CalculateExpression.clearAll()();
      v15 = 0;
    }

    sub_1C1E7BEDC();
    v17 = *(*sub_1C1E7F10C() + 352);

    v18 = v24;
    v17(v24);

    v19 = *(*sub_1C1E7F10C() + 232);

    v19(1);

    v20 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
    swift_beginAccess();
    if (*(v2 + v20))
    {
      v21 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v21);
      sub_1C1F520F4();
    }

    else
    {
      *(v2 + v20) = 0;
    }

    sub_1C1EDD220();
    swift_getKeyPath();
    sub_1C1F52104();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 488))(Strong);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CalculateExpression.clearAll()()
{
  v1 = v0;
  v2 = *(*sub_1C1E7F10C() + 424);

  v2(v3);

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
  swift_beginAccess();
  if (*(v1 + v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v1 + v4) = 0;
  }

  sub_1C1EE6250(0, &OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation);
  CalculateExpression.removed.setter(0);
  sub_1C1EE6250(0, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation);
  sub_1C1EDBB90(0);
  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v1 + v6) == 1)
  {
    *(v1 + v6) = 1;
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
  }

  else
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  sub_1C1EDD220();
  v9 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
  swift_beginAccess();
  if (*(v1 + v9) == 1)
  {
    *(v1 + v9) = 1;
  }

  else
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 488))(Strong);
  }
}

uint64_t CalculateExpression.update(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v52 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
    swift_beginAccess();
    if (*(v1 + v4) == 1)
    {
      *(v1 + v4) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v55 = v1;
      sub_1C1F520F4();
    }

    v7 = CalculateExpression.update(_:)(a1);

    return v7 & 1;
  }

  CalculateExpression.removed.setter(0);
  v5 = sub_1C1E7F10C();
  swift_getKeyPath();

  sub_1C1F52104();

  v52 = v1;
  swift_getKeyPath();
  sub_1C1F52124();

  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange;
  swift_beginAccess();
  v7 = (*(*v5 + 720))(a1, v2 + v6);
  swift_endAccess();

  v52 = v2;
  swift_getKeyPath();
  sub_1C1F52114();

  type metadata accessor for CalculateExpression.LiteralOperation();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for CalculateExpression.NegateOperation();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for CalculateExpression.EqualsOperation();
      if (!swift_dynamicCastClass())
      {
        sub_1C1EE6250(0, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation);
        sub_1C1EDBB90(0);
      }
    }
  }

  v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v2 + v8) == 1)
  {
    *(v2 + v8) = 1;
  }

  else
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10);
    v52 = v2;
    sub_1C1F520F4();
  }

  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
  }

  else
  {
    v11 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v11);
    v52 = v2;
    sub_1C1F520F4();
  }

  sub_1C1EDD220();
  v12 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
  swift_beginAccess();
  if (*(v2 + v12) == 1)
  {
    *(v2 + v12) = 1;
  }

  else
  {
    v13 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v13);
    v52 = v2;
    sub_1C1F520F4();
  }

  sub_1C1E7F10C();

  v14 = CalculateExpression.RichExpression.editingTokens()();

  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = v14 + 32 * v15;
  v17 = *(**v16 + 272);

  v17(&v52, v18);

  if (v52 != 4)
  {
    sub_1C1EB1200();
    result = sub_1C1F52414();
    if (result)
    {

      v20 = *sub_1C1E81CD8();

LABEL_40:
      sub_1C1EE6250(v21, &OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation);
LABEL_41:
      CalculateExpression.setNeedsEvaluation(rebuild:)(1);
      return v7 & 1;
    }
  }

  if (v15 > *(v14 + 16))
  {
    __break(1u);
    goto LABEL_53;
  }

  v22 = *(v16 + 24);
  v52 = *v16;
  v53 = *(v16 + 8);
  v54 = v22;
  result = CalculateExpression.RichExpression.EditingToken.token.getter();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) == 1)
    {
      v23 = *(*result + 232);
      v23();
      v24 = sub_1C1F525A4();

      if (v24 & 1) != 0 || ((v23)(v25), v26 = sub_1C1F525A4(), v27 = , (v26) || ((v23)(v27), v28 = sub_1C1F525A4(), , (v28))
      {

        v29 = *sub_1C1E7D99C();

        sub_1C1EE6250(v30, &OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation);
LABEL_51:

        goto LABEL_41;
      }
    }
  }

  v31 = *(v14 + 16);
  v32 = v31 - 2;
  if (v31 < 2)
  {
LABEL_39:

    v21 = 0;
    goto LABEL_40;
  }

  if (v15 > v31)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v33 = *(v16 + 24);
  v52 = *v16;
  v53 = *(v16 + 8);
  v54 = v33;
  v34 = CalculateExpression.RichExpression.EditingToken.token.getter();
  if (!v34)
  {
    goto LABEL_39;
  }

  v35 = *(v34 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  if (v35 != 18)
  {
    goto LABEL_39;
  }

  if (v32 < *(v14 + 16))
  {
    v36 = (v14 + 32 * v32);
    v38 = v36[4];
    v37 = v36[5];
    v40 = v36[6];
    v39 = v36[7];

    v52 = v38;
    *&v53 = v37;
    *(&v53 + 1) = v40;
    v54 = v39;
    v41 = CalculateExpression.RichExpression.EditingToken.token.getter();
    if (v41)
    {
      v42 = *(v41 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      if (v42 == 7)
      {
        v43 = sub_1C1E7DCC0();
LABEL_48:
        v50 = *v43;

LABEL_50:
        sub_1C1EE6250(v51, &OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation);

        goto LABEL_51;
      }
    }

    if (v39)
    {
      v44 = *(*v39 + 384);

      v46 = v44(v45);

      if (v46)
      {
        v43 = sub_1C1E81BB8();
        goto LABEL_48;
      }

      v47 = *(*v39 + 368);

      v49 = v47(v48);

      if (v49)
      {
        v43 = sub_1C1E7DEA0();
        goto LABEL_48;
      }
    }

    v51 = 0;
    goto LABEL_50;
  }

LABEL_54:
  __break(1u);
  return result;
}

void (*CalculateExpression.engine.modify(void *a1))(uint64_t *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *a1 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine);
  return sub_1C1EDFDDC;
}

uint64_t sub_1C1EDFE50(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t sub_1C1EDFF48@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *a3 = *(v5 + *a2);
  return result;
}

void CalculateExpression.format.setter(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v45[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___format;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) == a1)
  {
    return;
  }

  v5 = *(*sub_1C1E7F10C() + 224);

  v42 = v5(v6);

  if (a1 != 2)
  {
    swift_getKeyPath();
    v45[0] = v1;
    sub_1C1F52104();

    if (*(v1 + v4) != 2)
    {
      sub_1C1EDBE7C();
    }
  }

  v7 = *(*sub_1C1E7F10C() + 344);

  v9 = v7(v8);

  if (a1 == 2)
  {
    swift_getKeyPath();
    v45[0] = v1;
    sub_1C1F52104();

    if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    v45[0] = v1;
    sub_1C1F52104();

    v11 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
    swift_beginAccess();
    v10 = *(v2 + v11);
    if (v10)
    {
      v10 = [v10 ignoringNaN];
    }
  }

  else
  {
    v10 = 0;
  }

  v43 = v9;
  v44 = v10;
  swift_getKeyPath();
  v45[0] = v2;
  sub_1C1F52104();

  v12 = *(v2 + v4);
  if (v12 != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v45[0] = v2;
    sub_1C1F520F4();
  }

  swift_getKeyPath();
  v45[0] = v2;
  v14 = @"CalculateKeyFormat";
  sub_1C1F52104();

  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v45[3] = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
  v45[0] = v15;
  swift_getKeyPath();
  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v45, v14);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  if (a1 != 2 || v12)
  {
    v17 = v43;
    v16 = v44;
    if (a1 || v12 != 2)
    {
      goto LABEL_32;
    }

    swift_getKeyPath();
    v45[0] = v2;
    sub_1C1F52104();

    v20 = *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack);
    if (v20 >> 62)
    {
      if (v20 < 0)
      {
        v28 = *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack);
      }

      v21 = sub_1C1F52994();
      if (v21)
      {
LABEL_21:
        v22 = v21 - 1;
        if (__OFSUB__(v21, 1))
        {
          __break(1u);
        }

        else if ((v20 & 0xC000000000000001) == 0)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v22 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v23 = *(v20 + 8 * v22 + 32);

LABEL_26:
            v24 = sub_1C1E7F10C();

            v25 = *(*sub_1C1E7F10C() + 392);

            v27 = v25(v26);

            (*(*v24 + 400))(v27);

            v16 = v44;
            goto LABEL_32;
          }

          __break(1u);
          return;
        }

        MEMORY[0x1C6911DB0](v22, v20);

        goto LABEL_26;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_21;
      }
    }

    v29 = *(*sub_1C1E7F10C() + 400);

    v29(MEMORY[0x1E69E7CC0]);
    goto LABEL_31;
  }

  CalculateExpression.clearAll()();
  v17 = v43;
  v16 = v44;
  if (v44)
  {
    type metadata accessor for CalculateExpression.CustomOperandOperation();
    v18 = v44;
    v19 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v18);
    CalculateExpression.update(_:)(v19);

LABEL_31:
  }

LABEL_32:
  v30 = *(*sub_1C1E7F10C() + 352);

  v31 = v17;
  v30(v17);

  v32 = *(*sub_1C1E7F10C() + 232);

  v32(1);

  v33 = *(*sub_1C1E7F10C() + 256);

  v33((v42 & 1) == 0);

  v34 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
  swift_beginAccess();
  if (*(v2 + v34))
  {
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    sub_1C1F520F4();
  }

  else
  {
    *(v2 + v34) = 0;
  }

  sub_1C1E7BEDC();
  v36 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v2 + v36) == 1)
  {
    *(v2 + v36) = 1;
  }

  else
  {
    v37 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v37);
    sub_1C1F520F4();
  }

  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
  }

  else
  {
    v38 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v38);
    sub_1C1F520F4();
  }

  sub_1C1EDD220();
  v39 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
  swift_beginAccess();
  if (*(v2 + v39) == 1)
  {
    *(v2 + v39) = 1;
  }

  else
  {
    v40 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v40);
    sub_1C1F520F4();
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 488))(Strong);
  }

  else
  {
  }
}

void (*CalculateExpression.format.modify(void *a1))(uint64_t *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *a1 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format);
  return sub_1C1EE0C1C;
}

uint64_t sub_1C1EE0C44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E7BACC(v4, &OBJC_IVAR____TtC9Calculate19CalculateExpression___locales, sub_1C1E7BC2C);
}

uint64_t sub_1C1EE0CA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CalculateExpression.locales.setter(v4);
}

uint64_t CalculateExpression.locales.setter(uint64_t a1)
{
  v2 = v1;
  sub_1C1EDBE7C();
  sub_1C1E7BACC(a1, &OBJC_IVAR____TtC9Calculate19CalculateExpression___locales, sub_1C1E7BC2C);
  swift_getKeyPath();
  v7[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  v4 = @"CalculateKeyLocales";
  sub_1C1F52104();

  v5 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___locales);
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A0, &qword_1C1F57C20);
  v7[0] = v5;
  swift_getKeyPath();

  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v7, v4);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  v7[0] = v2;
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

uint64_t (*CalculateExpression.locales.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *a1 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___locales);

  return sub_1C1EE1048;
}

uint64_t sub_1C1EE1048(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[2];
  if ((a2 & 1) == 0)
  {
    return CalculateExpression.locales.setter(*a1);
  }

  v4 = *a1;

  CalculateExpression.locales.setter(v5);
}

uint64_t sub_1C1EE10CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E7B6FC(v4);
}

uint64_t sub_1C1EE10F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F52104();

    if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) == 2)
    {
      sub_1C1EDD220();
    }

    v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
    swift_beginAccess();
    if (*(v1 + v2) == 1)
    {
      *(v1 + v2) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1F520F4();
    }
  }

  return result;
}

void sub_1C1EE12A8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C1E7B090(v2);
}

id sub_1C1EE12D8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_1C1EE139C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  CalculateExpression.numberFormatter.setter(v2);
}

void CalculateExpression.numberFormatter.setter(void *a1)
{
  v2 = v1;
  sub_1C1EDBE7C();
  v4 = a1;
  sub_1C1E7B090(a1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  v5 = @"CalculateKeyNumberFormatter";
  sub_1C1F52104();

  v6 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  if (v6)
  {
    v7 = sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
  }

  else
  {
    v7 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  v10[0] = v6;
  v10[3] = v7;
  swift_getKeyPath();
  v8 = v6;
  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v10, v5);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  v10[0] = v2;
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 488))(Strong);
  }
}

void (*CalculateExpression.numberFormatter.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v3 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  *a1 = v3;
  v4 = v3;
  return sub_1C1EE1724;
}

void sub_1C1EE1724(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = v2;
    CalculateExpression.numberFormatter.setter(v2);
  }

  else
  {
    CalculateExpression.numberFormatter.setter(*a1);
  }
}

uint64_t sub_1C1EE1790()
{
  v1 = v0;
  sub_1C1E7BEDC();
  sub_1C1E7F10C();

  sub_1C1EE1C50(v2);

  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  v4 = swift_beginAccess();
  if (*(v0 + v3) == 1)
  {
    *(v0 + v3) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
  }

  else
  {
    v6 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v6);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  sub_1C1EDD220(v4);
  v7 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
  swift_beginAccess();
  if (*(v0 + v7) == 1)
  {
    *(v0 + v7) = 1;
  }

  else
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  v9 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  if (*(v1 + v9))
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

unint64_t sub_1C1EE1C50(uint64_t a1)
{
  result = (*(*a1 + 392))();
  v3 = result;
  if (result >> 62)
  {
    result = sub_1C1F52994();
    v4 = result;
    if (result)
    {
LABEL_3:
      if (v4 < 1)
      {
        __break(1u);
      }

      else
      {
        v5 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
        swift_beginAccess();
        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1C6911DB0](i, v3);
          }

          else
          {
            v7 = *(v3 + 8 * i + 32);
          }

          if (*(v7 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) == 1)
          {
            swift_getKeyPath();
            v11 = v1;
            sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
            sub_1C1F52104();

            LOBYTE(v11) = *(v1 + v5);
            (*(*v7 + 424))(&v11);
          }

          else
          {
            v8 = (*(*v7 + 280))();
            if (v8)
            {
              (sub_1C1EE1C50)();
            }

            v9 = (*(*v7 + 304))(v8);
            if (v9)
            {
              v10 = v9;
              if (((*(*v7 + 392))() & 1) == 0)
              {
                sub_1C1EE1C50(v10);
              }
            }
          }
        }
      }

      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }
}

uint64_t (*sub_1C1EE1F50(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1EE1FB4;
}

uint64_t sub_1C1EE1FB4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1C1EE1790();
  }

  return result;
}

uint64_t sub_1C1EE1FE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1EE20AC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return CalculateExpression.base.setter(&v4);
}

uint64_t CalculateExpression.base.setter(char *a1)
{
  v2 = *a1;
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
  swift_beginAccess();
  if (qword_1C1F58578[*(v1 + v4)] == qword_1C1F58578[v2])
  {
    *(v1 + v4) = v3;
    return sub_1C1EE1790();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }
}

void (*CalculateExpression.base.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1F52124();

  v4[7] = sub_1C1EE1F50(v4);
  return sub_1C1EE2360;
}

uint64_t CalculateExpression.lastOperand.getter()
{
  v3 = v0;
  v4 = sub_1C1EE3BB0(0);
  if (!v4)
  {
    goto LABEL_31;
  }

  v7 = v5;
  v8 = v6;
  v9 = v4;
  v10 = (*(*v4 + 392))();
  v12 = __OFADD__(v8, 1);
  v13 = v8 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v1 = v10;
    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    v2 = v10 >> 62;
    if (!(v10 >> 62))
    {
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 < v7)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v14 >= v13)
      {
        goto LABEL_6;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  if (v1 < 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = v11;
  }

  if (sub_1C1F52994() < v7)
  {
    goto LABEL_41;
  }

  if (sub_1C1F52994() < v13)
  {
    goto LABEL_40;
  }

LABEL_6:
  if (v13 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((v1 & 0xC000000000000001) == 0)
  {
LABEL_10:

    goto LABEL_15;
  }

  if (v13 < v7)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v7 == v13)
  {
    goto LABEL_10;
  }

  if (v7 >= v13)
  {
    __break(1u);
LABEL_46:
    __break(1u);

    __break(1u);
    return result;
  }

  type metadata accessor for CalculateExpression.RichToken();

  v15 = v7;
  do
  {
    v16 = v15 + 1;
    sub_1C1F52AA4();
    v15 = v16;
  }

  while (v13 != v16);
LABEL_15:

  if (v2)
  {
    v9 = sub_1C1F52BA4();
    v2 = v17;
    v7 = v18;
    v13 = v19;

    if (v13)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1C1EAFAA4(v9, v2, v7, v13);
    v21 = v20;
    goto LABEL_26;
  }

  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  v2 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
  v13 = (2 * v13) | 1;
  if ((v13 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  sub_1C1F52C74();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v13 >> 1, v7))
  {
    goto LABEL_44;
  }

  if (v23 != (v13 >> 1) - v7)
  {
LABEL_45:
    swift_unknownObjectRelease_n();
    goto LABEL_19;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v21)
  {
    goto LABEL_27;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_26:
  swift_unknownObjectRelease();
LABEL_27:
  type metadata accessor for CalculateExpression.RichExpression();

  CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v21);
  type metadata accessor for CalculateExpression.PlainExpression();

  v25 = *CalculateExpression.PlainExpression.__allocating_init(_:)(v24);
  _ = (*(v25 + 296))();
  v27 = v26;
  swift_getKeyPath();
  v50[4] = v3;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v28 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v29 = *(v3 + v28);
  swift_getKeyPath();
  v50[1] = v3;

  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = (*(*Strong + 168))(Strong);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v32;
    sub_1C1EEDCDC(v29, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, v50);

    v29 = v50[0];
  }

  v34._countAndFlagsBits = _;
  v34._object = v27;
  evaluate(_:options:)(v31, v34, v29);
  v36 = v35;

  if (v36)
  {
    return v36;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21178, &qword_1C1F57C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F56480;
  *(inited + 32) = @"CalculateKeyLocales";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A8, &unk_1C1F57C58);
  v39 = *(sub_1C1F520E4() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C1F56480;
  v43 = @"CalculateKeyLocales";
  sub_1C1F52044();
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A0, &qword_1C1F57C20);
  *(inited + 40) = v42;
  v44 = sub_1C1E74EC0(inited);
  swift_setDeallocating();
  sub_1C1E83580(inited + 32, &qword_1EBF21180, &qword_1C1F564D0);
  v45._countAndFlagsBits = 48;
  v45._object = 0xE100000000000000;
  evaluate(_:options:)(v46, v45, v44);
  v48 = v47;

  if (!v48)
  {
    goto LABEL_46;
  }

  return v48;
}

void CalculateExpression.lastOperand.setter(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696ADA0]);
  v5 = a1;
  v6 = [v4 init];
  [v6 setNumberStyle_];
  [v6 setUsesGroupingSeparator_];
  [v5 setNumberFormatter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A8, &unk_1C1F57C58);
  v7 = *(sub_1C1F520E4() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1C1F56480;
  sub_1C1F52044();
  v10 = sub_1C1F526A4();

  [v5 setLocales_];

  v11 = [v5 formattedResult];
  v12 = sub_1C1F52454();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  v16 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v17 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    goto LABEL_65;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    LOBYTE(v65) = 0;
    v20 = sub_1C1E9A8B4(v12, v14, 10);
    v63 = v62;

    if ((v63 & 1) == 0)
    {
LABEL_66:
      type metadata accessor for CalculateExpression.RichToken();
      v64[0] = v20;
      swift_getKeyPath();
      v65 = v2;
      sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
      sub_1C1F52104();

      v34 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
      swift_beginAccess();
      v35 = qword_1C1F58578[*(v2 + v34)];
      sub_1C1EB05DC();
      v36 = sub_1C1F525C4();
      v38 = v37;
      swift_getKeyPath();
      v64[0] = v2;
      sub_1C1F52104();

      LOBYTE(v64[0]) = *(v2 + v34);

      sub_1C1E8FBEC(v36, v38, v64);
      v39 = sub_1C1EE3BB0(0);
      if (!v39)
      {

        v52 = v5;

LABEL_87:
        return;
      }

      v42 = v40;
      v43 = v41;
      v44 = v6;
      v45 = (*v39 + 408);
      v46 = *v45;
      v47 = (*v45)(v64);
      if (__OFADD__(v43, 1))
      {
        __break(1u);
      }

      else
      {
        v48 = v47;
        sub_1C1E98F60(v42, v43 + 1);
        v48(v64, 0);

        v42 = v46(v64);
        v50 = v49;
        MEMORY[0x1C6911980]();
        if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_69:
          sub_1C1F52724();
          v42(v64, 0);
          v51 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
          swift_beginAccess();
          if (*(v2 + v51) == 1)
          {
            *(v2 + v51) = 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            sub_1C1F520F4();
          }

          v54 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
          swift_beginAccess();
          if (*(v2 + v54) == 1)
          {
            *(v2 + v54) = 1;
          }

          else
          {
            v55 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v55);
            sub_1C1F520F4();
          }

          if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
          {
            *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
          }

          else
          {
            v56 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v56);
            sub_1C1F520F4();
          }

          sub_1C1EDD220();
          v57 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
          swift_beginAccess();
          if (*(v2 + v57) == 1)
          {
            *(v2 + v57) = 1;
          }

          else
          {
            v58 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v58);
            sub_1C1F520F4();
          }

          v59 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
          swift_beginAccess();
          if (*(v2 + v59))
          {
            v60 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v60);
            sub_1C1F520F4();
          }

          CalculateExpression.setNeedsEvaluation(rebuild:)(1);
          swift_getKeyPath();
          sub_1C1F52104();

          swift_beginAccess();
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            (*(*Strong + 488))(Strong);
          }

          v52 = v44;
          goto LABEL_87;
        }
      }

      sub_1C1F526E4();
      goto LABEL_69;
    }

LABEL_65:
    v20 = 0;
    goto LABEL_66;
  }

  if ((v14 & 0x2000000000000000) == 0)
  {
    if ((v12 & 0x1000000000000000) != 0)
    {
      v18 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v18 = sub_1C1F52AE4();
    }

    v19 = *v18;
    if (v19 == 43)
    {
      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v20 = 0;
          if (v18)
          {
            v26 = v18 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v20, 0xAuLL))
              {
                goto LABEL_63;
              }

              v23 = __CFADD__(10 * v20, v27);
              v20 = 10 * v20 + v27;
              if (v23)
              {
                goto LABEL_63;
              }

              ++v26;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_96;
    }

    if (v19 != 45)
    {
      if (v16)
      {
        v20 = 0;
        if (v18)
        {
          while (1)
          {
            v30 = *v18 - 48;
            if (v30 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              goto LABEL_63;
            }

            v23 = __CFADD__(10 * v20, v30);
            v20 = 10 * v20 + v30;
            if (v23)
            {
              goto LABEL_63;
            }

            ++v18;
            if (!--v16)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v20 = 0;
      LOBYTE(v15) = 1;
LABEL_64:
      LOBYTE(v65) = v15;
      v33 = v15;

      if ((v33 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v20 = 0;
        if (v18)
        {
          v21 = v18 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              goto LABEL_63;
            }

            v23 = 10 * v20 >= v22;
            v20 = 10 * v20 - v22;
            if (!v23)
            {
              goto LABEL_63;
            }

            ++v21;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v15) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v64[0] = v12;
  v64[1] = v14 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v15)
      {
        v20 = 0;
        v31 = v64;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            break;
          }

          v23 = __CFADD__(10 * v20, v32);
          v20 = 10 * v20 + v32;
          if (v23)
          {
            break;
          }

          ++v31;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v15)
    {
      if (--v15)
      {
        v20 = 0;
        v24 = v64 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          if (!is_mul_ok(v20, 0xAuLL))
          {
            break;
          }

          v23 = 10 * v20 >= v25;
          v20 = 10 * v20 - v25;
          if (!v23)
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_95;
  }

  if (v15)
  {
    if (--v15)
    {
      v20 = 0;
      v28 = v64 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        if (!is_mul_ok(v20, 0xAuLL))
        {
          break;
        }

        v23 = __CFADD__(10 * v20, v29);
        v20 = 10 * v20 + v29;
        if (v23)
        {
          break;
        }

        ++v28;
        if (!--v15)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_97:
  __break(1u);
}

void CalculateExpression.bits.getter()
{
  v0 = sub_1C1F52704();
  *(v0 + 16) = 64;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  v1 = CalculateExpression.lastOperand.getter();
  v3 = resultTree(v1, v2);
  v4 = treeIntegerValue(v3);

  if (v4)
  {
    v5 = 95;
    while ((v5 - 32) < *(v0 + 16))
    {
      *(v0 + v5) = v4 & 1;
      if (v4 >= 2)
      {
        v4 >>= 1;
        if (v5-- != 32)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_1C1EE355C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  CalculateExpression.bits.getter();
  *a2 = v4;
}

void sub_1C1EE3588(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CalculateExpression.bits.setter(v4);
}

void CalculateExpression.bits.setter(uint64_t a1)
{
  if (*(a1 + 16) == 64)
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
    v4 = 95;
    v5 = 1;
    do
    {
      if (*(a1 + v4) == 1)
      {
        v7 = __CFADD__(v1, v5);
        v1 += v5;
        if (v7)
        {
          __break(1u);
          goto LABEL_15;
        }

        v3 = v5;
      }

      v6 = 2 * v3;
      if (v2 < 0x3F)
      {
        v3 *= 2;
        v5 = v6;
      }

      --v4;
      ++v2;
    }

    while (v4 != 31);

    v26 = v1;
    v8 = sub_1C1F52C34();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21178, &qword_1C1F57C50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1F57710;
    *(inited + 32) = @"CalculateKeyEngine";
    v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v13 = @"CalculateKeyEngine";
    v14 = [v12 initWithUnsignedInteger_];
    v15 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
    *(inited + 40) = v14;
    *(inited + 64) = v15;
    *(inited + 72) = @"CalculateKeyLocales";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A8, &unk_1C1F57C58);
    v16 = *(sub_1C1F520E4() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C1F56480;
    v20 = @"CalculateKeyLocales";
    sub_1C1F52044();
    *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A0, &qword_1C1F57C20);
    *(inited + 80) = v19;
    v21 = sub_1C1E74EC0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21180, &qword_1C1F564D0);
    swift_arrayDestroy();
    v22._countAndFlagsBits = v8;
    v22._object = v10;
    evaluate(_:options:)(v23, v22, v21);
    v25 = v24;

    if (v25)
    {
      CalculateExpression.lastOperand.setter(v25);
      return;
    }

LABEL_15:
    __break(1u);
  }

  else
  {
  }
}

void (*CalculateExpression.bits.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  CalculateExpression.bits.getter();
  *a1 = v3;
  return sub_1C1EE38C0;
}

void sub_1C1EE38C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    CalculateExpression.bits.setter(v5);
  }

  else
  {
    CalculateExpression.bits.setter(*a1);
  }
}

uint64_t CalculateExpression.ascii.getter()
{
  v0 = CalculateExpression.lastOperand.getter();
  v2 = resultTree(v0, v1);
  v3 = treeIntegerValue(v2);

  v4 = 0;
  v5 = 0xE000000000000000;
  if (v3)
  {
    do
    {
      v9 = sub_1C1F52494();
      v10 = v6;

      MEMORY[0x1C69117F0](v4, v5);

      v4 = v9;
      v5 = v10;
      v7 = v3 >= 0x100;
      v3 >>= 8;
    }

    while (v7);
  }

  return v4;
}

void CalculateExpression.unicode.getter()
{
  v0 = CalculateExpression.lastOperand.getter();
  v2 = resultTree(v0, v1);
  v3 = treeIntegerValue(v2);

  if (HIWORD(v3) <= 0x10u && (v3 & 0xFFFFF800) != 55296)
  {
    if ((*&v3 & 0x1FFF80) == 0 && v3 > 0xFF)
    {
      __break(1u);
    }

    goto LABEL_13;
  }

  if ((v3 & 0xF800) != 0xD800)
  {
    if ((v3 & 0xFF80) != 0 || v3 <= 0xFFu)
    {
LABEL_13:
      sub_1C1F52494();
      return;
    }

    __break(1u);
  }
}

uint64_t sub_1C1EE3BB0(char a1)
{
  v2 = v1;
  sub_1C1E7F10C();

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB63C4, v36);

  v4 = v36[0];
  if (!v36[0])
  {
    return v4;
  }

  v5 = v36[1];
  v6 = v37;

  v7 = CalculateExpression.RichExpression.EditingToken.token.getter();
  if (!v7)
  {
LABEL_52:
    sub_1C1E98278(v4);
LABEL_53:

    return 0;
  }

  v8 = v7;
  v35 = a1;
  swift_getKeyPath();
  v36[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v9 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) == 2)
  {
    v10 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if (qword_1EDC2F690 != -1)
    {
      v34 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      swift_once();
      v10 = v34;
      v9 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    }

    if (sub_1C1E91F6C(v10, qword_1EDC2F698))
    {

      result = sub_1C1E98278(v4);
      v13 = v5;
      goto LABEL_41;
    }
  }

  v14 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v15 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if (qword_1EDC2F690 != -1)
  {
    v33 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    swift_once();
    v15 = v33;
  }

  result = sub_1C1E91F6C(v15, qword_1EDC2F698);
  if (result)
  {
    v35 = v6;
    v16 = (v5 - 1);
    v17 = __OFSUB__(v5, 1);
    v18 = *v4;
    if (v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_15:
    v19 = *(v18 + 416);
    v9 = v5;
    while (1)
    {
      v20 = v19(v16);
      if (!v20)
      {

        result = sub_1C1E98278(v4);
        v13 = v9;
        goto LABEL_41;
      }

      v21 = *(v20 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      v22 = qword_1EDC2F698;
      if (!*(qword_1EDC2F698 + 16))
      {
        break;
      }

      v23 = *(qword_1EDC2F698 + 40);
      sub_1C1F52CD4();
      MEMORY[0x1C6911FD0](v21);
      v24 = sub_1C1F52CF4();
      v25 = -1 << *(v22 + 32);
      v26 = v24 & ~v25;
      if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        break;
      }

      v27 = ~v25;
      while (*(*(v22 + 48) + v26) != v21)
      {
        v26 = (v26 + 1) & v27;
        if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v9 = v16;
      v28 = __OFSUB__(v16, 1);
      v16 = (v16 - 1);
      if (v28)
      {
        goto LABEL_25;
      }
    }

LABEL_26:

    sub_1C1E98278(v4);

    v13 = v9;
    goto LABEL_41;
  }

  v12 = *(v8 + v14);
  if (v12 == 9)
  {
    swift_getKeyPath();
    v36[0] = v2;
    sub_1C1F52104();
    v9 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;

    if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) == 1)
    {
LABEL_35:
      v12 = *(v8 + v14);
      goto LABEL_36;
    }
  }

  else if (v12 != 7)
  {
LABEL_36:
    if (v12 > 0x10 || ((1 << v12) & 0x10180) == 0)
    {
      goto LABEL_44;
    }

    v38 = v5;
    sub_1C1EBA588(&v38);

    result = sub_1C1E98278(v4);
    v13 = v38;
LABEL_41:
    while ((v13 & 0x8000000000000000) == 0)
    {
      if (v5 >= v13)
      {
        return v4;
      }

      __break(1u);
LABEL_44:
      if ((v35 & 1) == 0 || v12 != 15)
      {

        goto LABEL_52;
      }

      if (__OFSUB__(v5, 1))
      {
        goto LABEL_57;
      }

      v31 = (*(*v4 + 416))(v5 - 1);

      result = sub_1C1E98278(v4);
      v13 = v5;
      if (v31)
      {
        v32 = *(v31 + *v9);

        if (v32 == 10)
        {
          v13 = v5 - 1;
        }

        else
        {
          v13 = v5;
        }
      }
    }

    goto LABEL_53;
  }

  v16 = (v5 - 1);
  if (!__OFSUB__(v5, 1))
  {
    result = (*(*v4 + 416))(v5 - 1);
    if (result)
    {
      v29 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      result = sub_1C1E91F6C(v29, qword_1EDC2F698);
      if (result)
      {
        v35 = v6;
        v18 = *v4;
        goto LABEL_15;
      }
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1C1EE414C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CalculateExpression.lastOperand.getter();
  *a2 = result;
  return result;
}

void (*CalculateExpression.lastOperand.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CalculateExpression.lastOperand.getter();
  return sub_1C1EE41EC;
}

void sub_1C1EE41EC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = v3;
    CalculateExpression.lastOperand.setter(v5);
  }

  else
  {
    CalculateExpression.lastOperand.setter(v3);
  }
}

void CalculateExpression.inlineEvaluate(_:)(uint64_t a1)
{
  v2 = v1;
  CalculateExpression.setRepeatableOperation(from:)();
  swift_getKeyPath();
  v42[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation);
  swift_getKeyPath();

  sub_1C1F52104();

  v5 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression);
  swift_getKeyPath();
  v42[0] = a1;
  v41 = v5;

  sub_1C1F52104();

  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation;
  if (*(a1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    sub_1C1ED6924();
  }

  swift_getKeyPath();
  v42[0] = a1;
  sub_1C1F52104();

  v7 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v8 = *(a1 + v7);
  if (v8)
  {
    v9 = [v8 ignoringNaN];
  }

  else
  {
    v9 = 0;
  }

  swift_getKeyPath();
  v42[0] = a1;
  sub_1C1F52104();

  if (*(a1 + v6) == 1)
  {
    sub_1C1ED6924();
  }

  swift_getKeyPath();
  v42[0] = a1;
  sub_1C1F52104();

  v10 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v11 = *(a1 + v10);
  v12 = v11;
  CalculateExpression.clearAll()();
  if (!v9)
  {
LABEL_18:
    sub_1C1ED6924();
    v28 = v9;
    if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v42[0] = v2;
      sub_1C1F520F4();
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 0;
    }

    v30 = *(*sub_1C1E7F10C() + 352);
    v31 = v11;

    v30(v11);

    v32 = *(*sub_1C1E7F10C() + 232);

    v32(1);

    v33 = *(*sub_1C1E7F10C() + 256);

    v33(0);

    v34 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
    swift_beginAccess();
    if (*(v2 + v34))
    {
      v35 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v35);
      v42[5] = v2;
      sub_1C1F520F4();

      v36 = v41;
      if (!v11)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *(v2 + v34) = 0;
      v36 = v41;
      if (!v11)
      {
LABEL_26:

        sub_1C1EE6250(v37, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation);
        sub_1C1EDBB90(v36);

        return;
      }
    }

    v36 = 0;
    goto LABEL_26;
  }

  type metadata accessor for CalculateExpression.CustomOperandOperation();
  v13 = v9;
  v14 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v13);
  CalculateExpression.update(_:)(v14);

  v15 = *(*sub_1C1E7F10C() + 528);

  v17 = v15(v16);

  if ((v17 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v18 = *(*sub_1C1E7F10C() + 408);

  v20 = v18(v42);
  v21 = v19;
  v22 = *v19;
  if (!(*v19 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v22 < 0)
  {
    v38 = *v19;
  }

  if (!sub_1C1F52994())
  {
    goto LABEL_30;
  }

LABEL_12:
  v40 = v9;
  if (sub_1C1EAFB88())
  {
LABEL_16:

    v20(v42, 0);

    v26 = *(*sub_1C1E7F10C() + 408);

    v27 = v26(v42);
    sub_1C1EE4E8C();

    v27(v42, 0);

    v9 = v40;
    goto LABEL_17;
  }

  if (*v21 >> 62)
  {
LABEL_31:
    v39 = sub_1C1F52994();
    v24 = __OFSUB__(v39, 1);
    v25 = v39 - 1;
    if (!v24)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v23 = *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (!v24)
  {
LABEL_15:
    sub_1C1E98338(v25);
    goto LABEL_16;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1C1EE49E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1EE6250(v4, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation);
}

uint64_t sub_1C1EE4A60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1EDBB90(v4);
}

Swift::Void __swiftcall CalculateExpression.repeatOperation()()
{
  swift_getKeyPath();
  v24[0] = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v1 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation);
  if (v1)
  {
    swift_getKeyPath();
    v24[0] = v0;

    sub_1C1F52104();

    v2 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression);
    if (!v2)
    {
LABEL_16:

      return;
    }

    v3 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression);

    v4 = *(*sub_1C1E7F10C() + 344);

    v6 = v4(v5);

    if (v6)
    {

      goto LABEL_16;
    }

    CalculateExpression.update(_:)(v1);
    sub_1C1E7F10C();

    v7 = CalculateExpression.RichExpression.editingTokens()();

    v8 = *(v7 + 16);
    if (!v8)
    {

      return;
    }

    v9 = (v7 + 32 * v8);
    v10 = *v9;
    v11 = v9[3];

    v13 = (*(*v10 + 392))(v12);
    if (v13 >> 62)
    {
      v18 = v13;
      v19 = sub_1C1F52994();
      v13 = v18;
      if (v19)
      {
        goto LABEL_8;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C6911DB0](0, v13);

        v23 = *(v22 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        v16 = swift_unknownObjectRelease();
        if (v23 != 18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v14 = *(v13 + 32);

        v15 = *(v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        if (v15 != 18)
        {
          goto LABEL_15;
        }
      }

      v17 = (*(*v10 + 408))(v24);
      sub_1C1EE4E8C();

      v16 = v17(v24, 0);
LABEL_15:
      v20 = (*(*v2 + 392))(v16);
      v21 = (*(*v10 + 408))(v24);
      sub_1C1E8CECC(v20);
      v21(v24, 0);

      goto LABEL_16;
    }

    goto LABEL_15;
  }
}

void sub_1C1EE4E8C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x1C6911DB0](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_1C1F52994())
  {
    goto LABEL_20;
  }

  if (!sub_1C1F52994())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = sub_1C1F52994();
LABEL_16:
    if (v4)
    {
      sub_1C1E98F60(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t CalculateExpression.setRepeatableOperation(from:)()
{
  v3 = v0;
  sub_1C1E7F10C();

  v4 = CalculateExpression.RichExpression.editingTokens()();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32 * v5);
    v7 = *(**v6 + 272);
    v1 = **v6 + 272;

    v7(&v76, v8);

    if (v76 != 4)
    {
      LOBYTE(v79) = 3;
      sub_1C1EB1200();
      if (sub_1C1F52414())
      {
        v9 = sub_1C1E81CD8();
        v10 = *(v4 + 16);
        if (v5 <= v10)
        {
          v11 = *v9;
          v12 = *v6;
          v13 = v6[3];

LABEL_73:

LABEL_112:

          sub_1C1EE6250(v72, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation);
          sub_1C1EDBB90(v12);
        }

        goto LABEL_118;
      }
    }

    v10 = *(v4 + 16);
    v14 = v10 - 2;
    if (v10 >= 2)
    {
      if (v5 > v10)
      {
        __break(1u);
        goto LABEL_117;
      }

      v15 = *(**v6 + 296);
      v1 = **v6 + 296;

      v5 = v15(v16);

      if (v5)
      {
        v10 = *(v4 + 16);
        if (v14 >= v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        v17 = v4 + 32 + 32 * v14;
        v18 = *(v17 + 24);
        v76 = *v17;
        v77 = *(v17 + 8);
        v78 = v18;

        v19 = CalculateExpression.RichExpression.EditingToken.token.getter();
        if (v19)
        {
          v20 = *(v19 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v20 == 7)
          {
            v21 = sub_1C1E7DCC0();
LABEL_72:
            v57 = *v21;

            v12 = *v6;
            v58 = v6[3];

            goto LABEL_73;
          }
        }

        if (v18)
        {
          v51 = *(*v18 + 384);

          v53 = v51(v52);

          if (v53)
          {
            v21 = sub_1C1E81BB8();
            goto LABEL_72;
          }

          v54 = *(*v18 + 368);

          v56 = v54(v55);

          if (v56)
          {
            v21 = sub_1C1E7DEA0();
            goto LABEL_72;
          }
        }

LABEL_111:
        v12 = 0;
        goto LABEL_112;
      }
    }
  }

  v22 = sub_1C1E7F10C();
  v5 = *(*v22 + 392);
  v23 = *v22 + 392;

  v25 = (v5)();
  if (v25 >> 62)
  {
    v26 = sub_1C1F52994();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = (v26 - 1);
  if (!__OFSUB__(v26, 1))
  {
    v28 = (*v22 + 416);
    v2 = *v28;
    v6 = v28;
    v29 = (*v28)(v26 - 1);
    v23 = v29;
    if (!v29)
    {
      goto LABEL_110;
    }

    v74 = v5;
    v10 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    v3 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    v24 = *(v29 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if (v24 != 9)
    {
      v5 = v26 - 1;
      goto LABEL_22;
    }

    v5 = v26 - 2;
    if (!__OFSUB__(v27, 1))
    {
      v30 = (v2)(v26 - 2);

      if (!v30)
      {
        goto LABEL_110;
      }

      v3 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      v24 = *(v30 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v23 = v30;
      v27 = (v26 - 1);
LABEL_22:
      v31 = qword_1EDC2F690;

      if (v31 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_115;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  __break(1u);
LABEL_115:
  swift_once();
LABEL_23:
  v1 = &unk_1EDC2F000;
  v75 = v26;
  if (sub_1C1E91F6C(v24, qword_1EDC2F698))
  {
    v73 = v27;
    v32 = v5 - 1;
    if (!__OFSUB__(v5, 1))
    {
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
LABEL_35:

    v79 = v5;
    v27 = v73;
    v26 = v75;
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_110;
    }

    goto LABEL_47;
  }

  v42 = *(v23 + v3);
  if (v42 == 7)
  {
    v73 = v27;
    v32 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v43 = (v2)(v5 - 1);
    if (v43)
    {
      v44 = *(v43 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      if (sub_1C1E91F6C(v44, qword_1EDC2F698))
      {
LABEL_25:
        while (1)
        {
          v33 = (v2)(v32);
          if (!v33)
          {
            break;
          }

          v34 = *(v33 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          v35 = v1;
          v1 = *(v1 + 1688);
          if (!*(v1 + 16))
          {
            goto LABEL_35;
          }

          v36 = *(v1 + 40);
          sub_1C1F52CD4();
          MEMORY[0x1C6911FD0](v34);
          v37 = sub_1C1F52CF4();
          v38 = -1 << *(v1 + 32);
          v39 = v37 & ~v38;
          if (((*(v1 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_35;
          }

          v40 = ~v38;
          while (*(*(v1 + 48) + v39) != v34)
          {
            v39 = (v39 + 1) & v40;
            if (((*(v1 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v5 = v32;
          v41 = __OFSUB__(v32--, 1);
          v1 = v35;
          v26 = v75;
          if (v41)
          {
            goto LABEL_34;
          }
        }

        v79 = v5;
        v27 = v73;
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_110;
        }

        goto LABEL_47;
      }
    }

    v42 = *(v23 + v3);
    v27 = v73;
  }

  v45 = v42 > 0x10;
  v46 = (1 << v42) & 0x10180;
  if (v45 || v46 == 0)
  {
    goto LABEL_109;
  }

  v79 = v5;
  sub_1C1EBA588(&v79);

  v5 = v79;
  if ((v79 & 0x8000000000000000) != 0)
  {
LABEL_110:

    goto LABEL_111;
  }

LABEL_47:
  v48 = (v2)(v5 - 1);
  if (!v48)
  {
    goto LABEL_110;
  }

  v49 = *(v48 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if (v49 > 0x1B)
  {
    if (*(v48 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) <= 0x1Du)
    {
      if (v49 == 28)
      {
        v6 = v27;
        v50 = sub_1C1EB98AC();
        goto LABEL_83;
      }

      if (v49 == 29)
      {
        v6 = v27;
        v50 = sub_1C1EB99EC();
        goto LABEL_83;
      }
    }

    else
    {
      switch(v49)
      {
        case 0x1Eu:
          v6 = v27;
          v50 = sub_1C1EB9A3C();
          goto LABEL_83;
        case 0x1Fu:
          v6 = v27;
          v50 = sub_1C1EB9B2C();
          goto LABEL_83;
        case 0x20u:
          v6 = v27;
          v50 = sub_1C1EB9B7C();
          goto LABEL_83;
      }
    }

LABEL_109:

    goto LABEL_110;
  }

  if (*(v48 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) <= 4u)
  {
    if (v49 == 3)
    {
      v6 = v27;
      v50 = sub_1C1E7CD3C();
      goto LABEL_83;
    }

    if (v49 == 4)
    {
      v6 = v27;
      v50 = sub_1C1E7CE54();
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  switch(v49)
  {
    case 5u:
      v6 = v27;
      v50 = sub_1C1E7CF1C();
      break;
    case 6u:
      v6 = v27;
      v50 = sub_1C1E7CFA8();
      break;
    case 0x1Bu:
      v6 = v27;
      v50 = sub_1C1EB985C();
      break;
    default:
      goto LABEL_109;
  }

LABEL_83:
  v59 = *v50;

  if (v6 < v5)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v24 = v22;
  v61 = v74(v60);
  v1 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v2 = v61;
  v10 = (v61 & 0xFFFFFFFFFFFFFF8);
  v6 = (v61 >> 62);
  if (!(v61 >> 62))
  {
    result = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < v5)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (result < v1)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    goto LABEL_88;
  }

LABEL_122:
  if (v2 < 0)
  {
    v24 = v2;
  }

  else
  {
    v24 = v10;
  }

  result = sub_1C1F52994();
  if (result < v5)
  {
    goto LABEL_135;
  }

  result = sub_1C1F52994();
  v26 = v75;
  if (result < v1)
  {
    goto LABEL_127;
  }

LABEL_88:
  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_92;
  }

  if (v1 < v5)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v5 == v1)
  {
LABEL_92:

    goto LABEL_96;
  }

  if (v5 < v1)
  {
    type metadata accessor for CalculateExpression.RichToken();

    v63 = v5;
    do
    {
      v64 = v63 + 1;
      sub_1C1F52AA4();
      v63 = v64;
    }

    while (v26 != v64);
LABEL_96:

    if (v6)
    {
      v24 = sub_1C1F52BA4();
      v26 = v65;
      v5 = v66;
      v1 = v67;

      if (v1)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v24 = v2 & 0xFFFFFFFFFFFFFF8;
      v26 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      v1 = (2 * v1) | 1;
      if (v1)
      {
LABEL_101:
        sub_1C1F52C74();
        swift_unknownObjectRetain_n();
        v70 = swift_dynamicCastClass();
        if (!v70)
        {
          swift_unknownObjectRelease();
          v70 = MEMORY[0x1E69E7CC0];
        }

        v71 = *(v70 + 16);

        if (!__OFSUB__(v1 >> 1, v5))
        {
          if (v71 == (v1 >> 1) - v5)
          {
            v69 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v69)
            {
LABEL_108:
              type metadata accessor for CalculateExpression.RichExpression();

              v12 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v69);

              goto LABEL_112;
            }

            v69 = MEMORY[0x1E69E7CC0];
LABEL_107:
            swift_unknownObjectRelease();
            goto LABEL_108;
          }

          goto LABEL_133;
        }

LABEL_132:
        __break(1u);
LABEL_133:
        swift_unknownObjectRelease_n();
      }
    }

    sub_1C1EAFAA4(v24, v26, v5, v1);
    v69 = v68;
    goto LABEL_107;
  }

  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

unint64_t CalculateExpression.__allocating_init(result:error:options:base:id:)(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v11 = sub_1C1F52034();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[0] = *a4;
  v49 = v16;
  v50 = v15;
  (*(v16 + 16))(v14, a5);
  v17 = *(v5 + 48);
  v18 = *(v5 + 52);
  v19 = swift_allocObject();
  CalculateExpression.init(_:options:base:id:)(0, 0xE000000000000000, a3, v52, v14);
  v51 = a5;
  if (!a1)
  {

    goto LABEL_12;
  }

  type metadata accessor for CalculateExpression.CustomOperandOperation();
  v20 = a1;

  v21 = v20;
  v22 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v21);
  CalculateExpression.update(_:)(v22);

  v23 = *(*sub_1C1E7F10C() + 528);

  v25 = v23(v24);

  if (v25)
  {
    v26 = *(*sub_1C1E7F10C() + 408);

    v28 = v26(v52);
    v29 = v27;
    v30 = *v27;
    if (*v27 >> 62)
    {
      if (v30 < 0)
      {
        v47 = *v27;
      }

      if (sub_1C1F52994())
      {
LABEL_5:
        if (sub_1C1EAFB88())
        {
LABEL_9:

          v28(v52, 0);

          v34 = *(*sub_1C1E7F10C() + 408);

          v35 = v34(v52);
          sub_1C1EE4E8C();

          v35(v52, 0);

          goto LABEL_10;
        }

        if (!(*v29 >> 62))
        {
          v31 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v32 = __OFSUB__(v31, 1);
          result = v31 - 1;
          if (!v32)
          {
LABEL_8:
            sub_1C1E98338(result);
            goto LABEL_9;
          }

LABEL_22:
          __break(1u);
          return result;
        }

LABEL_20:
        v48 = sub_1C1F52994();
        v32 = __OFSUB__(v48, 1);
        result = v48 - 1;
        if (!v32)
        {
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_10:

LABEL_12:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v49 - 2) = v19;
  *(&v49 - 1) = a2;
  *v52 = v19;
  v37 = a2;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F520F4();

  v38 = a1;
  sub_1C1ED655C(a1);
  if (*(v19 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation))
  {
    v39 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v39);
    *(&v49 - 2) = v19;
    *(&v49 - 8) = 0;
    *v52 = v19;
    sub_1C1F520F4();
  }

  else
  {
    *(v19 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 0;
  }

  v41 = v50;
  v40 = v51;
  v42 = v49;
  v43 = *(*sub_1C1E7F10C() + 352);
  v44 = a2;

  v43(a2);

  v45 = *(*sub_1C1E7F10C() + 232);

  v45(1);

  v46 = *(*sub_1C1E7F10C() + 256);

  v46(0);

  (*(v42 + 8))(v40, v41);
  return v19;
}

uint64_t sub_1C1EE5F58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    return sub_1C1EE6650(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F520F4();
}

uint64_t CalculateExpression.removed.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__removed;
  swift_beginAccess();
  if (!*(v1 + v4))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CalculateExpression.RichExpression();
  sub_1C1E77790(&qword_1EDC2E8C8, type metadata accessor for CalculateExpression.RichExpression);

  v5 = sub_1C1F52414();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v2 + v4);
LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1C1EE6250(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CalculateExpression.Operation();
  sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation);

  v6 = sub_1C1F52414();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v3 + v5);
LABEL_7:
  *(v3 + v5) = a1;
}

uint64_t sub_1C1EE63F8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t sub_1C1EE6524(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_1C1EE6650(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  v5 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {

    *(v1 + v5) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t sub_1C1EE67C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1EE5F58(v4);
}

void sub_1C1EE67F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C1F52114();

  free(v1);
}

uint64_t sub_1C1EE6920@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_1C1EE6A48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1C1EE6B14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E917DC(v4);
}

uint64_t CalculateExpression.removed.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression__removed;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1C1EE6C00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__removed;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1EE6CC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return CalculateExpression.removed.setter(v4);
}

void (*CalculateExpression.removed.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  return sub_1C1EE6E3C;
}

void sub_1C1EE6E48(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C1F52114();

  free(v1);
}

uint64_t sub_1C1EE6EE0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1C1EE6F98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E7BACC(v4, &OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack, sub_1C1E767BC);
}

uint64_t sub_1C1EE6FFC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = *(v2 + *a2);
}

uint64_t sub_1C1EE70B4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1C1EE716C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1EE6250(v4, &OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation);
}

uint64_t sub_1C1EE721C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t CalculateExpression.allowsArabicMath.setter(char a1)
{
  v2 = a1 & 1;
  sub_1C1EDBE7C();
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowsArabicMath) == v2)
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowsArabicMath) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

uint64_t (*CalculateExpression.allowsArabicMath.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowsArabicMath);
  return sub_1C1EE75BC;
}

uint64_t CalculateExpression.deinit()
{
  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  v2 = sub_1C1F52034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__allowedOperations);

  swift_weakDestroy();
  swift_weakDestroy();
  v4 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___variableResults);

  v5 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__variables);

  v6 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableVariables);

  v7 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable + 8);

  v8 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression + 8);

  v9 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__options);

  v10 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___locales);

  v11 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatterObserver);

  v12 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation);

  v13 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression);

  v14 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___plain);

  v15 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___rich);

  v16 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__removed);

  v17 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack);

  v18 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation);

  v19 = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  v20 = sub_1C1F52144();
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  return v0;
}

uint64_t CalculateExpression.__deallocating_deinit()
{
  CalculateExpression.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t CalculateExpression.hashValue.getter()
{
  v1 = *v0;
  sub_1C1F52CD4();
  sub_1C1E77790(&qword_1EBF213C0, type metadata accessor for CalculateExpression);
  sub_1C1F523C4();
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EE7900()
{
  v2 = *v0;
  sub_1C1F52CD4();
  sub_1C1F523C4();
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EE7964()
{
  v1 = sub_1C1F52034();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  swift_getKeyPath();
  v9[1] = v6;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v7 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  sub_1C1E77790(&qword_1EDC2E8F8, MEMORY[0x1E69695A8]);
  sub_1C1F523C4();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1C1EE7B28()
{
  v2 = *v0;
  sub_1C1F52CD4();
  sub_1C1F523C4();
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EE7B88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v5 = sub_1C1F52034();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1C1EE7CA4(uint64_t *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v5 = a1[2];
  if (Strong)
  {
    v6 = Strong;

    if (v6 != v5)
    {
LABEL_3:
      v7 = 0;
      return v7 & 1;
    }
  }

  else if (v5)
  {
    goto LABEL_3;
  }

  v8 = *a1;
  v9 = a1[1];
  if (v8 == sub_1C1ED73F4() && v9 == v10)
  {

    v7 = 0;
  }

  else
  {
    v11 = sub_1C1F52C64();

    v7 = v11 ^ 1;
  }

  v12 = OBJC_IVAR____TtC9Calculate19CalculateExpression_rebuild;
  swift_beginAccess();
  *(v2 + v12) = 0;
  v13 = a1[5];
  if (!v13)
  {
    if (!a1[6])
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v14 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  swift_beginAccess();
  if (*(v2 + v14) == v13)
  {
    v16 = swift_retain_n();
    sub_1C1EE6650(v16);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);

    sub_1C1F520F4();
  }

  v17 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v2 + v17))
  {
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    sub_1C1F520F4();
  }

  else
  {

    *(v2 + v17) = 0;
  }

  if (a1[6])
  {
LABEL_19:
    v19 = swift_retain_n();
    sub_1C1E917DC(v19);
    v20 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
    swift_beginAccess();
    if (*(v2 + v20))
    {
      v21 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v21);
      sub_1C1F520F4();
    }

    else
    {

      *(v2 + v20) = 0;
    }
  }

LABEL_22:
  swift_getKeyPath();
  sub_1C1F52104();

  v22 = OBJC_IVAR____TtC9Calculate19CalculateExpression___documentReferenceCount;
  swift_beginAccess();
  if (*(v2 + v22) != a1[10])
  {
    v23 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v23);
    sub_1C1F520F4();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v24 = OBJC_IVAR____TtC9Calculate19CalculateExpression__variables;
  swift_beginAccess();
  v25 = *(v2 + v24);
  v26 = a1[4];

  v27 = sub_1C1EE958C(v25, v26);

  if (v27)
  {
  }

  else
  {
    sub_1C1ED9D28(v26);
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v28 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v29 = *(v2 + v28);
  if (v29 && (v30 = v29, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21200, &qword_1C1F568F0), sub_1C1E785A4(0, &qword_1EBF213C8, 0x1E696ABC0), swift_dynamicCast()))
  {
    v31 = v48;
    v32 = a1[8];
    if (!v32)
    {
LABEL_36:
      v34 = 0;
      if (v31)
      {
        goto LABEL_37;
      }

LABEL_34:
      if (!v34)
      {
        goto LABEL_40;
      }

      swift_unknownObjectRelease();
      goto LABEL_39;
    }
  }

  else
  {
    v31 = 0;
    v32 = a1[8];
    if (!v32)
    {
      goto LABEL_36;
    }
  }

  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21200, &qword_1C1F568F0);
  sub_1C1E785A4(0, &qword_1EBF213C8, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
    goto LABEL_36;
  }

  v34 = v48;
  if (!v31)
  {
    goto LABEL_34;
  }

LABEL_37:
  swift_unknownObjectRelease();
  if (!v34 || (swift_unknownObjectRelease(), v31 != v34))
  {
LABEL_39:
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    sub_1C1F520F4();
  }

LABEL_40:
  swift_getKeyPath();
  sub_1C1F52104();

  v36 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v37 = *(v2 + v36);
  v38 = a1[7];
  if (v37)
  {
    if (v37 == v38)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v38)
  {
LABEL_42:
    v39 = v38;
    sub_1C1ED655C(v38);
  }

LABEL_43:
  v40 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
  sub_1C1ED9ACC(v40);
  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) = 1;
  }

  else
  {
    v41 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v41);
    sub_1C1F520F4();
  }

  v42 = OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation;
  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 1;
LABEL_49:
    v44 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v44);
    sub_1C1F520F4();

    goto LABEL_53;
  }

  v43 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C1F520F4();

  if (*(v2 + v42))
  {
    goto LABEL_49;
  }

  *(v2 + v42) = 0;
LABEL_53:
  v45 = OBJC_IVAR____TtC9Calculate19CalculateExpression__isEvaluating;
  swift_beginAccess();
  if (*(v2 + v45))
  {
    v46 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v46);
    sub_1C1F520F4();
  }

  else
  {
    *(v2 + v45) = 0;
  }

  return v7 & 1;
}

void (*CalculateExpression.graphReferenceCount.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  swift_getKeyPath();
  v5[6] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v5 = v1;
  v5[7] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphReferenceCount;
  v5[8] = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphReferenceCount;
  swift_beginAccess();
  v5[3] = *(v2 + v6);
  return sub_1C1EE8874;
}

uint64_t sub_1C1EE88BC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1C1EE8970@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_1C1EE8A88(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

void (*CalculateExpression.documentReferenceCount.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  swift_getKeyPath();
  v5[6] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v5 = v1;
  v5[7] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___documentReferenceCount;
  v5[8] = OBJC_IVAR____TtC9Calculate19CalculateExpression___documentReferenceCount;
  swift_beginAccess();
  v5[3] = *(v2 + v6);
  return sub_1C1EE8CB0;
}

void sub_1C1EE8CE4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 40);
  v5 = *(v4 + *(*a1 + 64));
  if (a2)
  {
    if (v5 != v3)
    {
      v7 = v2[6];
      v6 = v2[7];
LABEL_6:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v2[4] = v4;
      sub_1C1F520F4();
    }
  }

  else if (v5 != v3)
  {
    v9 = v2[6];
    v8 = v2[7];
    goto LABEL_6;
  }

  free(v2);
}

uint64_t sub_1C1EE8DD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_getKeyPath();
  v27[7] = a1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getKeyPath();
    v27[4] = v9;
    sub_1C1F52104();

    v10 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
    swift_beginAccess();
    v11 = *(v9 + v10);
  }

  else
  {
    v11 = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  }

  swift_getKeyPath();
  v27[1] = a1;
  sub_1C1F52104();

  v12 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v13 = *(a1 + v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = v11;
  sub_1C1EEDCDC(v13, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, v27);

  v15 = v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21178, &qword_1C1F57C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F56480;
  *(inited + 32) = @"CalculateKeyNumberFormatter";
  *(inited + 64) = sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
  *(inited + 40) = a2;
  v17 = @"CalculateKeyNumberFormatter";
  v18 = a2;
  v19 = sub_1C1E74EC0(inited);
  swift_setDeallocating();
  sub_1C1E83580(inited + 32, &qword_1EBF21180, &qword_1C1F564D0);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = v15;
  sub_1C1EEDCDC(v19, sub_1C1EAF22C, 0, v20, v27);

  v21 = sub_1C1F52424();
  type metadata accessor for CalculateKey();
  sub_1C1E77790(&qword_1EDC2C320, type metadata accessor for CalculateKey);
  v22 = sub_1C1F52344();

  v23 = 0;
  if (a5 != 2)
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v24 = CalculateTermFormatDecimalString(v21, v22, v23);

  if (!v24)
  {
    return 0;
  }

  v25 = sub_1C1F52454();

  return v25;
}