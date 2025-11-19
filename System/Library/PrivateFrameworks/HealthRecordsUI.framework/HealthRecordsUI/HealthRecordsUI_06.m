uint64_t sub_1D10EA4F0()
{
  v1 = v0;
  v32 = sub_1D138D75C();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D10EBCBC();
  v6 = sub_1D139118C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D10EBC74(&qword_1EC60A9C0, MEMORY[0x1E6969AD0]);
      result = sub_1D139006C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D10EA800()
{
  v1 = v0;
  v2 = *v0;
  sub_1D10EB6F0(0, &qword_1EC60A958);
  result = sub_1D139118C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D139176C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D10EA9FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1D10EB8FC(0, a2, a3, a4, a5);
  result = sub_1D139118C();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_1D1390D7C();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }

  return result;
}

uint64_t sub_1D10EAC04()
{
  v1 = v0;
  v2 = *v0;
  sub_1D10EBBE0();
  result = sub_1D139118C();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_1D139177C();

      BrowseCategory.rawValue.getter();
      sub_1D139027C();

      v16 = *(v15 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_queryDescriptor);
      sub_1D1390D9C();

      result = sub_1D13917CC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D10EAE6C()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseCategory();
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D10EBB4C();
  result = sub_1D139118C();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_1D10EBA1C(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for BrowseCategory);
      sub_1D139177C();
      BrowseCategory.rawValue.getter();
      sub_1D139027C();

      result = sub_1D13917CC();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1D10EBAE4(v4, *(v7 + 48) + v14 * v18, type metadata accessor for BrowseCategory);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D10EB154()
{
  v1 = v0;
  v2 = type metadata accessor for UserDomainConceptViewData();
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v22 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1D10EB988();
  result = sub_1D139118C();
  v6 = result;
  if (*(v4 + 16))
  {
    v20 = v0;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    for (i = result + 56; v10; ++*(v6 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = v22;
      v16 = *(v23 + 72);
      sub_1D10EBA1C(*(v4 + 48) + v16 * (v12 | (v7 << 6)), v22, type metadata accessor for UserDomainConceptViewData);
      sub_1D139177C();
      UserDomainConceptViewData.hash(into:)();
      sub_1D13917CC();
      v17 = i;
      v18 = sub_1D139106C();
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D10EBAE4(v15, *(v6 + 48) + v18 * v16, type metadata accessor for UserDomainConceptViewData);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v1 = v20;
        goto LABEL_16;
      }

      v14 = *(v4 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D10EB3B0()
{
  v1 = v0;
  v2 = *v0;
  sub_1D10EB89C(0, &qword_1EC60A978, sub_1D109F238);
  result = sub_1D139118C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D139177C();
      MEMORY[0x1D38870E0](v15);
      result = sub_1D13917CC();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D10EB5E8(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D139162C() & 1;
  }
}

void sub_1D10EB65C()
{
  if (!qword_1EC60A940)
  {
    sub_1D138ED5C();
    sub_1D10EBC74(&qword_1EC60A930, MEMORY[0x1E69A3910]);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A940);
    }
  }
}

void sub_1D10EB6F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D13911BC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D10EB740()
{
  if (!qword_1EC60A968)
  {
    type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
    sub_1D10EBC74(&qword_1EC60A970, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A968);
    }
  }
}

uint64_t sub_1D10EB7D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D10E248C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D10EB89C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D13911BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D10EB8FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D106F934(255, a3);
    sub_1D109D274(a5, a3);
    v8 = sub_1D13911BC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D10EB988()
{
  if (!qword_1EC60A988)
  {
    type metadata accessor for UserDomainConceptViewData();
    sub_1D10EBC74(&qword_1EC60A990, type metadata accessor for UserDomainConceptViewData);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A988);
    }
  }
}

uint64_t sub_1D10EBA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D10EBA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D10EBAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D10EBB4C()
{
  if (!qword_1EC60A998)
  {
    type metadata accessor for BrowseCategory();
    sub_1D10EBC74(&qword_1EE06BBE8, type metadata accessor for BrowseCategory);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A998);
    }
  }
}

void sub_1D10EBBE0()
{
  if (!qword_1EC60A9A0)
  {
    type metadata accessor for CategoryRecordQueryDescription();
    sub_1D10EBC74(qword_1EE06B1E8, type metadata accessor for CategoryRecordQueryDescription);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A9A0);
    }
  }
}

uint64_t sub_1D10EBC74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D10EBCBC()
{
  if (!qword_1EC60A9D0)
  {
    sub_1D138D75C();
    sub_1D10EBC74(&qword_1EC60A9C0, MEMORY[0x1E6969AD0]);
    v0 = sub_1D13911BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A9D0);
    }
  }
}

uint64_t sub_1D10EBD50()
{
  v1[11] = v0;
  v1[12] = *v0;
  sub_1D1080C34();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_1D10E248C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v1[17] = swift_task_alloc();
  sub_1D13905AC();
  v1[18] = sub_1D139059C();
  v4 = sub_1D139055C();
  v1[19] = v4;
  v1[20] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D10EBED4, v4, v3);
}

uint64_t sub_1D10EBED4()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_fetching;
  v0[21] = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_fetching;
  if (*(v1 + v2))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    *(v1 + v2) = 1;
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_1D10EBFE4;

    return sub_1D130A29C();
  }
}

uint64_t sub_1D10EBFE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 160);
  v6 = *(v3 + 152);
  if (v1)
  {
    v7 = sub_1D10EC810;
  }

  else
  {
    v7 = sub_1D10EC128;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D10EC128()
{
  v1 = v0[23];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v4 = v0[11];
    v5 = v2 - 1;
    v6 = *(type metadata accessor for TimelineRecord() - 8);
    v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    v8 = sub_1D138D57C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v3, v7, v8);
    (*(v9 + 56))(v3, 0, 1, v8);
    v10 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_oldestSampleDate;
    swift_beginAccess();
    sub_1D10E3A1C(v3, v4 + v10);
    swift_endAccess();
    v1 = v0[23];
  }

  v11 = v0[11];
  v12 = sub_1D10DFEC4(v1);
  v0[25] = v12;

  v13 = swift_allocObject();
  v0[26] = v13;
  *(v13 + 16) = &unk_1D13A0B80;
  *(v13 + 24) = v11;

  v14 = swift_task_alloc();
  v0[27] = v14;
  v15 = type metadata accessor for TimelineRecord();
  sub_1D10E3C10();
  *v14 = v0;
  v14[1] = sub_1D10EC37C;

  return MEMORY[0x1EEE0DDB0](&unk_1D13A0B88, v13, v12, v15, v16);
}

uint64_t sub_1D10EC37C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 224) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D10EC4E4, v4, v3);
}

uint64_t sub_1D10EC4E4()
{
  v1 = v0[28];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v5 = v0[28] + 32;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        if (!sub_1D13910DC())
        {
          goto LABEL_29;
        }

LABEL_22:
        v18 = v0[15];
        v17 = v0[16];
        v19 = v0[13];
        v20 = v0[14];
        v21 = v0[11];
        sub_1D10E0C68(v1);

        sub_1D10EBC74(&qword_1EC609A40, type metadata accessor for TimelinePagingDataSource);
        sub_1D138E1DC();
        v22 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_snapshot;
        swift_beginAccess();
        (*(v20 + 16))(v18, v21 + v22, v19);
        sub_1D138F45C();
        (*(v20 + 8))(v18, v19);
        swift_beginAccess();
        (*(v20 + 40))(v21 + v22, v17, v19);
        swift_endAccess();
        goto LABEL_30;
      }

      v6 = *(v5 + 8 * v3);
      v7 = *(v6 + 16);
      v8 = v4[2];
      v9 = v8 + v7;
      if (__OFADD__(v8, v7))
      {
        goto LABEL_24;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v9 <= v4[3] >> 1)
      {
        if (*(v6 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v8 <= v9)
        {
          v11 = v8 + v7;
        }

        else
        {
          v11 = v8;
        }

        v4 = sub_1D10F7434(isUniquelyReferenced_nonNull_native, v11, 1, v4);
        if (*(v6 + 16))
        {
LABEL_15:
          if ((v4[3] >> 1) - v4[2] < v7)
          {
            goto LABEL_26;
          }

          sub_1D1080EA4(0, &qword_1EC609E28);
          swift_arrayInitWithCopy();

          if (v7)
          {
            v12 = v4[2];
            v13 = __OFADD__(v12, v7);
            v14 = v12 + v7;
            if (v13)
            {
              goto LABEL_27;
            }

            v4[2] = v14;
          }

          goto LABEL_4;
        }
      }

      if (v7)
      {
        goto LABEL_25;
      }

LABEL_4:
      if (v2 == ++v3)
      {
        goto LABEL_20;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v15 = v0[21];
  v16 = v0[11];

  *(v16 + v15) = 0;
  v1 = sub_1D10E05F0(v4);

  if (v1 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_30:

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D10EC810()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10EC898(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D10EC930;

  return sub_1D10E14D8(a1, v1);
}

uint64_t sub_1D10EC930(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D10ECA2C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D108077C;

  return sub_1D10E03E8(a1, a2, v6);
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D10ECB34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D10DEE54(a1, v4, v5, v6);
}

void *sub_1D10ECC6C(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x1E69E7CC0];
  v3[8] = MEMORY[0x1E69E7CC0];
  v3[9] = 0;
  v3[5] = a1;
  v3[6] = a2;
  swift_unknownObjectWeakAssign();
  v8 = a2;
  v9 = a1;
  v10 = ConceptsDataSource.init(arrangedSections:isHidden:)(v7, 0);
  if (!a2)
  {
    goto LABEL_6;
  }

  v11 = v8;
  if ([v11 categoryType] != 10)
  {

    goto LABEL_6;
  }

  if (!a3)
  {
LABEL_6:
    sub_1D1287820(1);
    v11 = v9;
    goto LABEL_7;
  }

  sub_1D10ECD40();
  v8 = v9;
LABEL_7:

  return v10;
}

uint64_t sub_1D10ECD40()
{
  v33 = MEMORY[0x1E69E8050];
  sub_1D10EE31C(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v32 - v2;
  sub_1D10ED99C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10EDAFC();
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 40);
  type metadata accessor for ClinicalAccountManager();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CD0];
  v14[5] = 0;
  v14[6] = 0;
  v14[4] = v15;
  v14[2] = v13;
  v16 = v13;
  v14[3] = [v16 clinicalAccountStore];
  v17 = [v16 healthStore];
  type metadata accessor for AccountStatusSummaryTileSettingsManager();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = v17;
  sub_1D1336F8C();

  v21 = MEMORY[0x1E695C028];
  sub_1D10EDBE8(0, &qword_1EC60A9F0, MEMORY[0x1E695C028]);
  sub_1D10EDAB8(&qword_1EC60AA00, &qword_1EC60A9F0, v21);

  sub_1D138F75C();
  sub_1D10EE3E0(&qword_1EC60AA20, 255, sub_1D10ED99C);
  v22 = sub_1D138F80C();
  (*(v6 + 8))(v8, v5);
  v37 = v22;
  sub_1D106F934(0, &qword_1EE06B760);
  v23 = sub_1D1390A7C();
  v36 = v23;
  v24 = sub_1D1390A2C();
  (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
  v25 = MEMORY[0x1E695BED0];
  sub_1D10EDBE8(0, &qword_1EC60AA10, MEMORY[0x1E695BED0]);
  sub_1D10EDAB8(&qword_1EC60AA18, &qword_1EC60AA10, v25);
  sub_1D10EDC58();
  sub_1D138F8BC();
  sub_1D10EE380(v3, &qword_1EE06A620, v33, v32[2], sub_1D10EE31C);

  v26 = swift_allocObject();
  v27 = v32[1];
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v18;
  sub_1D10EE3E0(&qword_1EC60AA28, 255, sub_1D10EDAFC);

  v29 = v34;
  v30 = sub_1D138F90C();

  (*(v35 + 8))(v12, v29);
  *(v27 + 72) = v30;
}

uint64_t sub_1D10ED29C(unint64_t *a1)
{
  v31 = sub_1D138D5EC();
  v2 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138EDCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v34 = MEMORY[0x1E69E7CC0];
  (*(v6 + 104))(v8, *MEMORY[0x1E69A3E88], v5);
  v32 = sub_1D1337F2C(v8);
  result = (*(v6 + 8))(v8, v5);
  v12 = v9;
  v28 = v11;
  if (v9 >> 62)
  {
    result = sub_1D13910DC();
    v12 = v9;
    v13 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_4:
      if (v13 < 1)
      {
        __break(1u);
        return result;
      }

      v14 = 0;
      v30 = v12 & 0xC000000000000001;
      v15 = (v2 + 8);
      v29 = MEMORY[0x1E69E7CC0];
      v16 = v12;
      do
      {
        if (v30)
        {
          v17 = MEMORY[0x1D3886B70](v14);
        }

        else
        {
          v17 = *(v12 + 8 * v14 + 32);
        }

        v18 = v17;
        v19 = [v17 identifier];
        sub_1D138D5CC();

        v20 = sub_1D138D59C();
        v22 = v21;
        v23 = (*v15)(v4, v31);
        v33[0] = v20;
        v33[1] = v22;
        MEMORY[0x1EEE9AC00](v23);
        *(&v28 - 2) = v33;
        LOBYTE(v20) = sub_1D10F1D44(sub_1D10EDCD0, (&v28 - 4), v32);

        if (v20)
        {
        }

        else
        {
          v24 = v18;
          MEMORY[0x1D3885D90]();
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
          }

          sub_1D13904FC();

          v29 = v34;
        }

        v12 = v16;
        ++v14;
      }

      while (v13 != v14);
      goto LABEL_17;
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v25 = v28;
  *(v28 + 64) = v29;

  v26 = *(v25 + 64);
  if (v26 >> 62)
  {
    v27 = sub_1D13910DC();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27)
  {
    sub_1D1287820(0);

    sub_1D10EDCF0();
  }

  else
  {
    sub_1D1287820(1);
  }
}

uint64_t sub_1D10ED6C0()
{
  MEMORY[0x1D3888420](v0 + 56);
}

uint64_t sub_1D10ED708()
{

  v1 = *(v0 + 40);

  MEMORY[0x1D3888420](v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D10ED7B0()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D10ED8E0()
{
  type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItemCell();
  sub_1D10EE3E0(&qword_1EC60A9E0, 255, type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItemCell);
  return sub_1D13908AC();
}

void sub_1D10ED99C()
{
  if (!qword_1EC60A9E8)
  {
    v0 = MEMORY[0x1E695C028];
    sub_1D10EDBE8(255, &qword_1EC60A9F0, MEMORY[0x1E695C028]);
    sub_1D10EDAB8(&qword_1EC60AA00, &qword_1EC60A9F0, v0);
    v1 = sub_1D138F76C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60A9E8);
    }
  }
}

void sub_1D10EDA50()
{
  if (!qword_1EC60A9F8)
  {
    sub_1D106F934(255, &qword_1EC609A00);
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A9F8);
    }
  }
}

uint64_t sub_1D10EDAB8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D10EDBE8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D10EDAFC()
{
  if (!qword_1EC60AA08)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1D10EDBE8(255, &qword_1EC60AA10, MEMORY[0x1E695BED0]);
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D10EDAB8(&qword_1EC60AA18, &qword_1EC60AA10, v0);
    sub_1D10EDC58();
    v1 = sub_1D138F5FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60AA08);
    }
  }
}

void sub_1D10EDBE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1D10EDA50();
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D10EDC58()
{
  result = qword_1EE06A610;
  if (!qword_1EE06A610)
  {
    sub_1D106F934(255, &qword_1EE06B760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06A610);
  }

  return result;
}

uint64_t sub_1D10EDCF0()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC608E90 != -1)
  {
    swift_once();
  }

  if (byte_1EC60F770 == 1)
  {
    v5 = *(v0 + 64);
    v6 = type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
    v7 = swift_allocObject();
    type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItemCell();
    sub_1D10EE3E0(&qword_1EC60A9E0, 255, type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItemCell);

    v7[4] = sub_1D138DECC();
    v7[5] = v8;
    v7[2] = v5;
    v7[3] = v0;
    v9 = sub_1D10EE3E0(&qword_1EC60AA40, 255, type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem);
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v7 = 0;
    v35[1] = 0;
    v35[2] = 0;
  }

  v35[3] = v6;
  v35[4] = v9;
  v35[0] = v7;
  sub_1D138E0FC();
  sub_1D10EE31C(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  sub_1D10A71C0(v35, v34);
  sub_1D10A71C0(v34, v31);
  v10 = v32;
  if (!v32)
  {
    v24 = MEMORY[0x1E69A3348];
    sub_1D10EE380(v34, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
    sub_1D10EE380(v31, &qword_1EC60B620, &qword_1EC60A3D0, v24, sub_1D10DC698);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    goto LABEL_14;
  }

  v11 = v33;
  v12 = __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  *(&v29 + 1) = v10;
  v30 = *(v11 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
  sub_1D10EE380(v34, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (!*(&v29 + 1))
  {
LABEL_14:
    sub_1D10EE380(&v28, &qword_1EC60AA38, &qword_1EC60F6A0, MEMORY[0x1E69A3310], sub_1D10DC698);
    goto LABEL_15;
  }

  sub_1D102CC18(&v28, v31);
  v14 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v28 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1D10F75F4(0, v14[2] + 1, 1, v14);
    *&v28 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  v27 = v1;
  v26 = v2;
  if (v17 >= v16 >> 1)
  {
    *&v28 = sub_1D10F75F4((v16 > 1), v17 + 1, 1, v14);
  }

  v18 = v32;
  v19 = v33;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  sub_1D125DA54(v17, v22, &v28, v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  v1 = v27;
  v2 = v26;
LABEL_15:
  sub_1D10EE380(v35, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  sub_1D138D5DC();
  sub_1D138D59C();
  (*(v2 + 8))(v4, v1);
  sub_1D138E50C();
  sub_1D138E58C();
}

void sub_1D10EE31C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D10EE380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D10EE3E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

Swift::String __swiftcall String.removingPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = sub_1D139032C();

  if (v5)
  {
    v6 = sub_1D139028C();
    v7 = sub_1D139028C();
    v9 = __OFSUB__(v6, v7);
    v10 = v6 - v7;
    if (v9)
    {
      __break(1u);
      goto LABEL_6;
    }

    v11 = sub_1D10EE5AC(v10, v4, v3);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v4 = MEMORY[0x1D3885B80](v11, v13, v15, v17);
    v3 = v18;
  }

  v10 = v4;
  v8 = v3;
LABEL_6:
  result._object = v8;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::Void __swiftcall String.removePrefix(_:)(Swift::String a1)
{
  v3 = *v1;
  v2 = v1[1];
  if ((sub_1D139032C() & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = sub_1D139028C();
  v5 = sub_1D139028C();
  v6 = __OFSUB__(v4, v5);
  v7 = v4 - v5;
  if (!v6)
  {
    v8 = sub_1D10EE5AC(v7, v3, v2);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v3 = MEMORY[0x1D3885B80](v8, v10, v12, v14);
    v2 = v15;

LABEL_4:
    *v1 = v3;
    v1[1] = v2;
    return;
  }

  __break(1u);
}

unint64_t sub_1D10EE5AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_1D13902AC();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_1D139037C();
}

uint64_t sub_1D10EE668()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D10EE6D4()
{
  sub_1D139177C();
  sub_1D139027C();
  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D10EE760()
{
  sub_1D139177C();
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + 16);
  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D10EE814()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(*v0 + 16) identifier];
  sub_1D138D5CC();

  v6 = sub_1D138D59C();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  v10[0] = 0x55746E756F636341;
  v10[1] = 0xEF2E656461726770;
  MEMORY[0x1D3885C10](v6, v8);

  return v10[0];
}

uint64_t sub_1D10EE954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D10EEAD0()
{
  v1 = sub_1D138F3FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v5, v20);
  if (!v21)
  {
    return sub_1D10A72B8(v20);
  }

  sub_1D10A7254();
  type metadata accessor for MedicalRecordTimelineAccountUpgradeItem();
  result = swift_dynamicCast();
  if (result)
  {

    v19[0] = v0;
    MEMORY[0x1D38864F0](v7);
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v19[1] = *algn_1EE06BB18;
    v19[2] = qword_1EE06BB10;
    sub_1D138D1CC();
    sub_1D138F3BC();
    v8 = objc_opt_self();
    v9 = *MEMORY[0x1E69DDD80];
    v10 = *MEMORY[0x1E69DB978];
    result = [v8 _preferredFontForTextStyle_weight_];
    if (result)
    {
      v11 = sub_1D138F2FC();
      sub_1D138F2CC();
      v11(v20, 0);
      v12 = objc_opt_self();
      v13 = [v12 labelColor];
      v14 = sub_1D138F2FC();
      sub_1D138F2DC();
      v14(v20, 0);
      sub_1D138D1CC();
      sub_1D138F29C();
      result = [v8 _preferredFontForTextStyle_weight_];
      if (result)
      {
        v15 = sub_1D138F34C();
        sub_1D138F2CC();
        v15(v20, 0);
        v16 = [v12 systemBlueColor];
        v17 = sub_1D138F34C();
        sub_1D138F2DC();
        v17(v20, 0);
        v21 = v1;
        v22 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
        (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
        MEMORY[0x1D3886480](v20);
        return (*(v2 + 8))(v4, v1);
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

id sub_1D10EEEBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineAccountUpgradeItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10EEF24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D10EEF7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D10EEAD0();
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D10EEFE8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D10EF04C;
}

uint64_t sub_1D10EF04C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D10EEAD0();
  }

  return result;
}

uint64_t sub_1D10EF0A8@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x1E69A36A0];
  v3 = sub_1D138E5DC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D10EF1B4(void *a1)
{
  sub_1D10EF534(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = OBJC_IVAR____TtC15HealthRecordsUI43MedicalRecordTimelineAccountUpgradeItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v22);
  if (!v22[3])
  {
    return sub_1D10A72B8(v22);
  }

  sub_1D10A7254();
  type metadata accessor for MedicalRecordTimelineAccountUpgradeItem();
  result = swift_dynamicCast();
  if (result)
  {
    v8 = v21;
    if (qword_1EE06AF70 != -1)
    {
      result = swift_once();
    }

    v21 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
    MEMORY[0x1EEE9AC00](result);
    *(&v20 - 2) = v9;
    sub_1D138D96C();
    sub_1D106F934(0, &qword_1EE06B6B0);
    sub_1D10EF588(&qword_1EE06B048, 255, MEMORY[0x1E69A3B50]);

    sub_1D138ED0C();

    v10 = v22[0];
    type metadata accessor for ClinicalAccountManager();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E7CD0];
    v11[5] = 0;
    v11[6] = 0;
    v11[4] = v12;
    v11[2] = v10;
    v13 = v10;
    v11[3] = [v13 clinicalAccountStore];
    v14 = *(v8 + 16);
    type metadata accessor for ClinicalAccountUpgradeManager();
    swift_allocObject();
    v15 = v14;

    v16 = a1;
    v17 = sub_1D1292444(v15, v11, v16);

    v18 = sub_1D13905DC();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;

    sub_1D107877C(0, 0, v5, &unk_1D13A0E78, v19);
  }

  return result;
}

void sub_1D10EF534(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D10EF588(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D10EF5D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D108077C;

  return sub_1D13201D4();
}

uint64_t sub_1D10EF858()
{
  v1 = v0;
  sub_1D10F0908(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v69 = v59 - v3;
  v4 = sub_1D138F16C();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138F13C();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138F3FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10F0D68(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_item;
  swift_beginAccess();
  sub_1D10F0E94(&v1[v20], v70, sub_1D10D14A8);
  if (!v71)
  {
    sub_1D10F0D9C(v70, sub_1D10D14A8);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_8;
  }

  sub_1D10A7254();
  v21 = swift_dynamicCast();
  (*(v17 + 56))(v15, v21 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_8:
    v37 = sub_1D10F0D68;
    v38 = v15;
    return sub_1D10F0D9C(v38, v37);
  }

  v63 = v10;
  v22 = sub_1D10F0DFC(v15, v19);
  MEMORY[0x1D38864F0](v22);
  v23 = *(v19 + 8);

  sub_1D138F3BC();
  if (*(v19 + 10))
  {

    sub_1D138F29C();
    v24 = sub_1D138F34C();
    sub_1D138F2AC();
    v24(v70, 0);
  }

  v71 = v9;
  v72 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  v26 = *(v63 + 16);
  v62 = v9;
  v26(boxed_opaque_existential_1, v12, v9);
  MEMORY[0x1D3886480](v70);
  v27 = sub_1D139012C();
  v28 = [v27 removeSpecialCharactersAndWhiteSpaces];

  v29 = sub_1D139016C();
  v31 = v30;

  if (v23)
  {
    v32 = sub_1D139012C();
    v33 = [v32 removeSpecialCharactersAndWhiteSpaces];

    v34 = sub_1D139016C();
    v36 = v35;
  }

  else
  {
    v36 = 0xEB000000006D6574;
    v34 = 0x496E776F6E6B6E55;
  }

  v39 = [v1 contentView];
  sub_1D10F0EFC(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
  v61 = v40;
  v41 = swift_allocObject();
  v60 = xmmword_1D139EAB0;
  *(v41 + 16) = xmmword_1D139EAB0;
  v59[1] = @"UIA.Health.Sharing";
  *(v41 + 32) = sub_1D139016C();
  *(v41 + 40) = v42;
  *(v41 + 48) = v29;
  *(v41 + 56) = v31;
  *(v41 + 64) = v34;
  *(v41 + 72) = v36;

  v43 = sub_1D139044C();

  v44 = HKUIJoinStringsForAutomationIdentifier();

  [v39 setAccessibilityIdentifier_];
  if (v19[48] == 1)
  {
    sub_1D10F0908(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1D138F17C();
    *(swift_allocObject() + 16) = xmmword_1D139E700;
    v45 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_selectionSwitch];
    sub_1D10A42A4();
    v47 = *(v46 + 48);
    v59[0] = v34;
    v48 = &v6[v47];
    v49 = *MEMORY[0x1E69DBF28];
    v50 = sub_1D138F0FC();
    (*(*(v50 - 8) + 104))(v6, v49, v50);
    *v48 = sub_1D10A69C4;
    v48[1] = 0;
    (*(v64 + 104))(v6, *MEMORY[0x1E69DBF60], v65);
    v51 = sub_1D138F10C();
    (*(*(v51 - 8) + 56))(v69, 1, 1, v51);
    v52 = v45;
    v53 = v66;
    sub_1D138F12C();
    sub_1D138F0EC();
    (*(v67 + 8))(v53, v68);
    sub_1D1390B8C();
    [v52 setOn_];
    v54 = swift_allocObject();
    *(v54 + 16) = v60;
    *(v54 + 32) = sub_1D139016C();
    *(v54 + 40) = v55;
    *(v54 + 48) = v59[0];
    *(v54 + 56) = v36;
    *(v54 + 64) = 0x686374697773;
    *(v54 + 72) = 0xE600000000000000;
    v56 = sub_1D139044C();

    v57 = HKUIJoinStringsForAutomationIdentifier();

    [v52 setAccessibilityIdentifier_];
  }

  else
  {

    sub_1D1390B8C();
  }

  (*(v63 + 8))(v12, v62);
  v37 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem;
  v38 = v19;
  return sub_1D10F0D9C(v38, v37);
}

id sub_1D10F0168()
{
  sub_1D10F0E60(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v12[-1] - v6;
  MEMORY[0x1D3886490](v5);
  v8 = sub_1D138F27C();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_1D10F0E94(v7, v4, sub_1D10F0E60);
    MEMORY[0x1D38864A0](v4);
    sub_1D10F0D9C(v7, sub_1D10F0E60);
  }

  else
  {
    v9 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_1D138F23C();
    MEMORY[0x1D38864A0](v7);
  }

  v12[3] = sub_1D138F3FC();
  v12[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v12);
  MEMORY[0x1D38864F0]();
  MEMORY[0x1D3886480](v12);
  return [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_selectionSwitch) addTarget:v0 action:sel_switchUpdated forControlEvents:4096];
}

uint64_t sub_1D10F031C()
{
  sub_1D10F0D68(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_item;
  swift_beginAccess();
  sub_1D10F0E94(v0 + v8, v18, sub_1D10D14A8);
  if (!v19)
  {
    sub_1D10F0D9C(v18, sub_1D10D14A8);
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_6;
  }

  sub_1D10A7254();
  v9 = swift_dynamicCast();
  (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    v11 = sub_1D10F0D68;
    v12 = v3;
    return sub_1D10F0D9C(v12, v11);
  }

  sub_1D10F0DFC(v3, v7);
  v10 = *(v7 + *(v4 + 52));
  if (v10)
  {
    v7[4](v10, [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_selectionSwitch) isOn]);
  }

  else
  {
    v13 = v7[4];
    sub_1D10F0908(0, &qword_1EC60AAB0, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem, MEMORY[0x1E69E6F90]);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D139E700;
    sub_1D10F0E94(v7, v15 + v14, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
    v13(v15, [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_selectionSwitch) isOn]);
  }

  v11 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem;
  v12 = v7;
  return sub_1D10F0D9C(v12, v11);
}

id sub_1D10F0680()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem()
{
  result = qword_1EC60AA78;
  if (!qword_1EC60AA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D10F07AC()
{
  sub_1D10A4318();
  if (v0 <= 0x3F)
  {
    sub_1D10F0EFC(319, &qword_1EE06A660, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D138ED5C();
      if (v2 <= 0x3F)
      {
        sub_1D10F0908(319, &qword_1EC60AA88, sub_1D10F08D4, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D10F0908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D10F096C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_item;
  swift_beginAccess();
  return sub_1D10F0E94(v1 + v3, a1, sub_1D10D14A8);
}

uint64_t sub_1D10F09D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D10EF858();
  return sub_1D10F0D9C(a1, sub_1D10D14A8);
}

uint64_t (*sub_1D10F0A58(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D10F0ABC;
}

uint64_t sub_1D10F0ABC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D10EF858();
  }

  return result;
}

uint64_t sub_1D10F0AF0()
{
  sub_1D139177C();
  sub_1D139027C();
  sub_1D139027C();
  return sub_1D13917CC();
}

uint64_t sub_1D10F0B40()
{
  sub_1D139027C();

  return sub_1D139027C();
}

uint64_t sub_1D10F0B80()
{
  sub_1D139177C();
  sub_1D139027C();
  sub_1D139027C();
  return sub_1D13917CC();
}

uint64_t sub_1D10F0BCC(uint64_t a1)
{
  v2 = sub_1D10F0D24(&qword_1EC60AAA0);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1D10F0C34(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_1D139162C(), result = 0, (v5 & 1) != 0))
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      return 1;
    }

    else
    {

      return sub_1D139162C();
    }
  }

  return result;
}

uint64_t sub_1D10F0D24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D10F0D9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D10F0DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10F0E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D10F0EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for FeedItemListViewController()
{
  result = qword_1EC60AAD0;
  if (!qword_1EC60AAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D10F102C()
{
  sub_1D138EC6C();
  v1 = sub_1D138EC7C();
  v1();
  v2 = [v0 collectionView];
  if (v2)
  {
    sub_1D138DE7C();
    sub_1D13908AC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D10F10CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_1EC60AAC8);
  v4 = *(v1 + qword_1EC60AAC0);

  sub_1D139092C();
  v5 = type metadata accessor for FeedItemListViewDataSourceProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  sub_1D102CC18(&v9, v6 + 32);
  a1[3] = v5;
  result = sub_1D10F1AA0(&qword_1EC60AAE0, v7, type metadata accessor for FeedItemListViewDataSourceProvider);
  a1[4] = result;
  *a1 = v6;
  return result;
}

void sub_1D10F1254()
{
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  (*((*MEMORY[0x1E69E7D40] & *v0) + qword_1EC62F8E8 + 24))(v10);
  sub_1D138EC5C();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for FeedItemListViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 systemGroupedBackgroundColor];
    [v3 setBackgroundColor_];

    v6 = [v0 collectionView];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 systemGroupedBackgroundColor];
      [v7 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D10F13EC(void *a1)
{
  v1 = a1;
  sub_1D10F1254();
}

void sub_1D10F1434(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D138F1AC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1D138DEBC();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  (*((*MEMORY[0x1E69E7D40] & *a1) + qword_1EC62F8E8 + 32))(v7);
  v8 = a1;
  sub_1D139096C();
  sub_1D138F18C();
  sub_1D139097C();
  v9 = type metadata accessor for FeedItemListViewController();
  v10.receiver = v8;
  v10.super_class = v9;
  objc_msgSendSuper2(&v10, sel_viewIsAppearing_, a3);
}

void sub_1D10F15B0(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FeedItemListViewController();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a3);
  sub_1D1390C1C();
}

uint64_t sub_1D10F1648()
{
}

id sub_1D10F1698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedItemListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10F16D0(uint64_t a1)
{
}

uint64_t sub_1D10F1734@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D138D8AC();
  result = sub_1D138D89C();
  v4 = MEMORY[0x1E69A3B38];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D10F17E4()
{
  v1 = v0;
  v2 = sub_1D138E35C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D138DB9C();
  v3 = MEMORY[0x1D38834C0]();
  [v3 setPredicate_];
  sub_1D10F1A54();
  v4 = sub_1D139044C();
  [v3 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1Tm(v1 + 4, v1[7]);
  v5 = v3;
  v6 = sub_1D138D8BC();
  [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v5 managedObjectContext:v6 sectionNameKeyPath:0 cacheName:0];

  sub_1D10A5CE8();
  sub_1D138E31C();
  v7 = sub_1D138E0DC();

  sub_1D10F1AA0(&qword_1EC60A0C0, 255, sub_1D10A5CE8);
  return v7;
}

uint64_t sub_1D10F1998()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D10F1A04()
{
  sub_1D10A5BE4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D139E700;
  *(v0 + 32) = sub_1D10F17E4();
  *(v0 + 40) = v1;
  return v0;
}

unint64_t sub_1D10F1A54()
{
  result = qword_1EE06B578;
  if (!qword_1EE06B578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06B578);
  }

  return result;
}

uint64_t sub_1D10F1AA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D10F1AE8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = a3 + 32;
    v8 = v5 - 1;
    while (1)
    {
      v9 = *(v7 + 16);
      v10 = *(v7 + 48);
      v27 = *(v7 + 32);
      v28 = v10;
      v11 = *(v7 + 16);
      v26[0] = *v7;
      v26[1] = v11;
      v12 = *(v7 + 48);
      v23 = v27;
      v24 = v12;
      v29 = *(v7 + 64);
      v25 = *(v7 + 64);
      v21 = v26[0];
      v22 = v9;
      sub_1D1082914(v26, &v16);
      v13 = a1(&v21);
      if (v3)
      {
        break;
      }

      v4 = v13;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = v21;
      v17 = v22;
      sub_1D1080D98(&v16);
      v14 = v8-- == 0;
      v7 += 72;
      if ((v4 | v14))
      {
        return v4 & 1;
      }
    }

    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_1D1080D98(&v16);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D10F1C08(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1D3886B70](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1D13910DC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1D10F1D44(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D10F1DF0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1D3886B70](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1D13910DC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t ListConceptManager.togglePinState(for:onCommitHandler:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v75 = a2;
  v76 = a3;
  v74 = a4;
  v69 = sub_1D138D5EC();
  v7 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10F26FC();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v65 - v13;
  v15 = sub_1D138F0BC();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v65 - v19;
  v21 = sub_1D138EF8C();
  v72 = *(v21 - 8);
  v73 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138EEBC();
  v24 = sub_1D138EF7C();
  v80 = a1;
  v78 = &v80;
  v25 = sub_1D10F1DF0(sub_1D10F2754, v77, v24);

  if (v25)
  {
    sub_1D138F06C();

    v26 = a1;
    v27 = sub_1D138F0AC();
    v28 = sub_1D139081C();
    v67 = v26;

    if (os_log_type_enabled(v27, v28))
    {
      v66 = v28;
      v29 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v80 = v65;
      *v29 = 136446722;
      v79 = *v5;
      sub_1D10F27AC();
      v30 = sub_1D13901EC();
      v32 = sub_1D11DF718(v30, v31, &v80);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2082;
      sub_1D138EEDC();
      v33 = v69;
      if ((*(v7 + 48))(v14, 1, v69) == 1)
      {
        v34 = 0x6E776F6E6B6E55;
        sub_1D10F27F4(v14);
        v35 = 0xE700000000000000;
      }

      else
      {
        v34 = sub_1D138D59C();
        v35 = v46;
        (*(v7 + 8))(v14, v33);
      }

      v47 = sub_1D11DF718(v34, v35, &v80);

      *(v29 + 14) = v47;
      *(v29 + 22) = 2082;
      v48 = [v67 UUID];
      v49 = v68;
      sub_1D138D5CC();

      v50 = sub_1D138D59C();
      v52 = v51;
      (*(v7 + 8))(v49, v33);
      v53 = sub_1D11DF718(v50, v52, &v80);

      *(v29 + 24) = v53;
      _os_log_impl(&dword_1D101F000, v27, v66, "[%{public}s] List UDC with identifier '%{public}s' is unpinning concept '%{public}s'", v29, 0x20u);
      v54 = v65;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v54, -1, -1);
      MEMORY[0x1D38882F0](v29, -1, -1);
    }

    (*(v70 + 8))(v20, v71);
    sub_1D138EF4C();
  }

  else
  {
    sub_1D138F06C();

    v36 = a1;
    v37 = sub_1D138F0AC();
    v38 = sub_1D139081C();
    v67 = v36;

    if (os_log_type_enabled(v37, v38))
    {
      v66 = v38;
      v39 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v80 = v65;
      *v39 = 136446722;
      v79 = *v5;
      sub_1D10F27AC();
      v40 = sub_1D13901EC();
      v42 = sub_1D11DF718(v40, v41, &v80);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      sub_1D138EEDC();
      v43 = v69;
      if ((*(v7 + 48))(v12, 1, v69) == 1)
      {
        v44 = 0x6E776F6E6B6E55;
        sub_1D10F27F4(v12);
        v45 = 0xE700000000000000;
      }

      else
      {
        v44 = sub_1D138D59C();
        v45 = v55;
        (*(v7 + 8))(v12, v43);
      }

      v56 = sub_1D11DF718(v44, v45, &v80);

      *(v39 + 14) = v56;
      *(v39 + 22) = 2082;
      v57 = [v67 UUID];
      v58 = v68;
      sub_1D138D5CC();

      v59 = sub_1D138D59C();
      v61 = v60;
      (*(v7 + 8))(v58, v43);
      v62 = sub_1D11DF718(v59, v61, &v80);

      *(v39 + 24) = v62;
      _os_log_impl(&dword_1D101F000, v37, v66, "[%{public}s] List UDC with identifier '%{public}s' is pinning concept '%{public}s'", v39, 0x20u);
      v63 = v65;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v63, -1, -1);
      MEMORY[0x1D38882F0](v39, -1, -1);
    }

    (*(v70 + 8))(v18, v71);
    sub_1D138EF5C();
  }

  sub_1D138EEEC();
  return (*(v72 + 8))(v23, v73);
}

void sub_1D10F26FC()
{
  if (!qword_1EC60D6B0)
  {
    sub_1D138D5EC();
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D6B0);
    }
  }
}

unint64_t sub_1D10F27AC()
{
  result = qword_1EC60AAE8;
  if (!qword_1EC60AAE8)
  {
    sub_1D138EF2C();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC60AAE8);
  }

  return result;
}

uint64_t sub_1D10F27F4(uint64_t a1)
{
  sub_1D10F26FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D10F2850()
{
  result = qword_1EC60AAF0;
  if (!qword_1EC60AAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60AAF0);
  }

  return result;
}

uint64_t sub_1D10F28B8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v7;
    }

    v18 = MEMORY[0x1E69E7CC0];
    sub_1D10FDC5C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v18;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3886B70](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
      }

      v16 = v10;
      a1(&v17, &v16);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v17;
      v18 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D10FDC5C((v12 > 1), v13 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v13 + 1;
      *(v7 + 8 * v13 + 32) = v11;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_1D10F2A60(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1D3886B70](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_1D10F2BD4(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v35 = MEMORY[0x1E69E7CC0];
  sub_1D10FDFA4(0, v4, 0);
  v5 = v35;
  v7 = (a3 + 72);
  while (1)
  {
    v8 = *(v7 - 4);
    v9 = *(v7 - 3);
    v10 = *(v7 - 2);
    v11 = *(v7 - 1);
    v12 = *v7;
    v28[0] = *(v7 - 5);
    v28[1] = v8;
    v28[2] = v9;
    v28[3] = v10;
    v28[4] = v11;
    v29 = v12;

    a1(v30, v28);
    if (v3)
    {
      break;
    }

    v13 = v30[0];
    v14 = v30[1];
    v15 = v31;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v35 = v5;
    v20 = *(v5 + 16);
    v19 = *(v5 + 24);
    if (v20 >= v19 >> 1)
    {
      v25 = v33;
      v26 = v31;
      v22 = v32;
      v24 = v34;
      sub_1D10FDFA4((v19 > 1), v20 + 1, 1);
      v18 = v24;
      v17 = v25;
      v15 = v26;
      v16 = v22;
      v5 = v35;
    }

    v7 += 48;
    *(v5 + 16) = v20 + 1;
    v21 = v5 + 48 * v20;
    *(v21 + 32) = v13;
    *(v21 + 40) = v14;
    *(v21 + 48) = v15;
    *(v21 + 56) = v16;
    *(v21 + 64) = v17;
    *(v21 + 72) = v18;
    --v4;
    v3 = 0;
    if (!v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

id BrowseCategory.queryDescriptors.getter()
{
  v1 = v0;
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D10F3604(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    goto LABEL_14;
  }

  result = MEMORY[0x1E69E7CC0];
  if (((1 << EnumCaseMultiPayload) & 0xEC) != 0)
  {
    return result;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_1D106F424();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D139E810;
      sub_1D106F934(0, &qword_1EE069598);
      v21 = MEMORY[0x1D3886180](*MEMORY[0x1E696B7C0]);
      v22 = [objc_opt_self() queryDescriptorWithSampleType_];

      result = v20;
      *(v20 + 32) = v22;
      return result;
    }

LABEL_14:
    if (EnumCaseMultiPayload)
    {
      sub_1D107D12C();

      (*(v3 + 32))(v5, v8, v2);
      v31 = [objc_opt_self() medicalRecordTypes];
      sub_1D106F934(0, &qword_1EE06B780);
      v32 = sub_1D139045C();

      MEMORY[0x1EEE9AC00](v33);
      *(&v36 - 2) = v5;
      v34 = sub_1D10F2A60(sub_1D10F3668, (&v36 - 4), v32);

      (*(v3 + 8))(v5, v2);
      return v34;
    }

    v23 = *v8;
    if (qword_1EE069F78 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = off_1EE069F80;
    if (*(off_1EE069F80 + 2) && (v25 = sub_1D12A2F78(v23), (v26 & 1) != 0))
    {
      v27 = v24[7] + 72 * v25;
      v38 = *v27;
      v29 = *(v27 + 32);
      v28 = *(v27 + 48);
      v30 = *(v27 + 64);
      v39 = *(v27 + 16);
      v40 = v29;
      v42 = v30;
      v41 = v28;
      swift_endAccess();
      v45 = v40;
      v46 = v41;
      v47 = v42;
      v43 = v38;
      v44 = v39;
      sub_1D1082914(&v38, v37);
    }

    else
    {
      swift_endAccess();
      result = [objc_opt_self() unknownRecordCategory];
      if (!result)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      sub_1D123E1C4(result, &v43);
    }

    v40 = v45;
    v41 = v46;
    v42 = v47;
    v38 = v43;
    v39 = v44;
    v35 = v46;

    sub_1D1080D98(&v38);
    return v35;
  }

  v11 = MEMORY[0x1E69E7CC0];
  v12 = [objc_opt_self() medicalRecordTypes];
  sub_1D106F934(0, &qword_1EE06B780);
  v13 = sub_1D139045C();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_26:

    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1D13910DC();
  if (!v14)
  {
    goto LABEL_26;
  }

LABEL_6:
  *&v43 = v11;
  result = sub_1D13912DC();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v15 = objc_opt_self();
  v16 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1D3886B70](v16, v13);
    }

    else
    {
      v17 = *(v13 + 8 * v16 + 32);
    }

    v18 = v17;
    ++v16;
    v19 = [v15 queryDescriptorWithSampleType_];

    sub_1D13912AC();
    sub_1D13912EC();
    sub_1D13912FC();
    sub_1D13912BC();
  }

  while (v14 != v16);

  return v43;
}

void sub_1D10F32F0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = objc_opt_self();
  v5 = sub_1D138D5AC();
  v6 = [v4 predicateForRecordsFromClinicalAccountIdentifier_];

  v7 = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v3 predicate:v6];
  *a2 = v7;
}

uint64_t sub_1D10F3398@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for BrowseCategory();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *a1;
  sub_1D10F3604(a2, &v27 - v12);
  v15 = [v14 sampleType];
  v16 = [v14 predicate];
  if (v16)
  {
    v17 = v16;
    if (a3)
    {
      sub_1D106F424();
      v18 = swift_allocObject();
      v28 = a4;
      *(v18 + 16) = xmmword_1D139E6E0;
      *(v18 + 32) = v17;
      *(v18 + 40) = a3;
      sub_1D106F934(0, &qword_1EE06B790);
      v19 = a3;
      v20 = v17;
      v21 = v19;
      v22 = v20;
      v23 = sub_1D139044C();
      a4 = v28;

      v17 = [objc_opt_self() andPredicateWithSubpredicates_];
    }
  }

  else if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = 0;
  }

  sub_1D10F3604(v13, v11);
  v24 = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v15 predicate:v17];

  sub_1D10F3688(v13);
  type metadata accessor for CategoryRecordQueryDescription();
  v25 = swift_allocObject();
  result = sub_1D10F36E4(v11, v25 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_category);
  *(v25 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_queryDescriptor) = v24;
  *a4 = v25;
  return result;
}

uint64_t sub_1D10F3604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseCategory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10F3688(uint64_t a1)
{
  v2 = type metadata accessor for BrowseCategory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D10F36E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseCategory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10F3760()
{
  if (*v0)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D10F378C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D139162C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D139162C();

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

uint64_t sub_1D10F3860(uint64_t a1)
{
  v2 = sub_1D10F44D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D10F389C(uint64_t a1)
{
  v2 = sub_1D10F44D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D10F38D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D10F393C(void *a1)
{
  v3 = v1;
  sub_1D10F4B4C(0, &qword_1EC60AB38, sub_1D10F44D8, &type metadata for InternalStateSection.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D10F44D8();
  sub_1D139181C();
  v14 = 0;
  sub_1D139155C();
  if (!v2)
  {
    v12[1] = *(v3 + 32);
    v13 = 1;
    sub_1D10F4844(0, &qword_1EC60AB08, v10, type metadata accessor for InternalStateItem, MEMORY[0x1E69E62F8]);
    sub_1D10F4BB4(&qword_1EC60AB40, &qword_1EC60AB48, &unk_1D13A1164);
    sub_1D139158C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D10F3B5C(void *a1)
{
  sub_1D10F4B4C(0, &qword_1EC60AAF8, sub_1D10F44D8, &type metadata for InternalStateSection.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D10F44D8();
  sub_1D13917FC();
  if (v1)
  {
    v8 = v14[0];
    type metadata accessor for InternalStateSection();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v16 = 0;
    v10 = sub_1D13914CC();
    v8 = v14[0];
    *(v14[0] + 16) = v10;
    *(v8 + 24) = v11;
    sub_1D10F4844(0, &qword_1EC60AB08, v12, type metadata accessor for InternalStateItem, MEMORY[0x1E69E62F8]);
    v15 = 1;
    sub_1D10F4BB4(&qword_1EC60AB10, &qword_1EC60AB18, &unk_1D13A118C);
    sub_1D13914FC();
    (*(v9 + 8))(v7, v4);
    *(v8 + 32) = v14[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_1D10F3E74()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D10F3EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D139162C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D139162C();

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

uint64_t sub_1D10F3F74(uint64_t a1)
{
  v2 = sub_1D10F452C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D10F3FB0(uint64_t a1)
{
  v2 = sub_1D10F452C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D10F3FEC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D10F4050(void *a1)
{
  sub_1D10F4B4C(0, &qword_1EC60AB30, sub_1D10F452C, &type metadata for InternalStateItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D10F452C();
  sub_1D139181C();
  v11 = 0;
  sub_1D139155C();
  if (!v1)
  {
    v10 = 1;
    sub_1D139155C();
  }

  return (*(v5 + 8))(v7, v4);
}

void *sub_1D10F41DC(void *a1)
{
  sub_1D10F4B4C(0, &qword_1EC60AB20, sub_1D10F452C, &type metadata for InternalStateItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D10F452C();
  sub_1D13917FC();
  if (v1)
  {
    v8 = v17;
    type metadata accessor for InternalStateItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v19 = 0;
    v10 = sub_1D13914CC();
    v8 = v17;
    v17[2] = v10;
    v8[3] = v11;
    v18 = 1;
    v13 = sub_1D13914CC();
    v15 = v14;
    (*(v9 + 8))(v7, v4);
    v8[4] = v13;
    v8[5] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_1D10F4444@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

unint64_t sub_1D10F44D8()
{
  result = qword_1EC60AB00;
  if (!qword_1EC60AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AB00);
  }

  return result;
}

unint64_t sub_1D10F452C()
{
  result = qword_1EC60AB28;
  if (!qword_1EC60AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AB28);
  }

  return result;
}

void *sub_1D10F4580(uint64_t a1, uint64_t a2)
{
  sub_1D10F4844(0, &qword_1EC60DF40, 255, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1D12189F0();
  v8 = sub_1D138D67C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1D10F48A8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E700;
  v10 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = MEMORY[0x1E69E6530];
  *(v9 + 64) = v10;
  *(v9 + 32) = v7;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v11 = sub_1D138D1CC();
  v13 = v12;
  if (*(v9 + 16))
  {
    v11 = sub_1D139019C();
    v15 = v14;

    sub_1D10CD608(v6);
    v13 = v15;
  }

  else
  {
    sub_1D10CD608(v6);
  }

  type metadata accessor for InternalStateItem();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = v11;
  result[5] = v13;
  return result;
}

void sub_1D10F4844(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D10F48A8()
{
  if (!qword_1EE06B080)
  {
    sub_1D1080EA4(255, &qword_1EE06B070);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B080);
    }
  }
}

void *sub_1D10F4910(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D10F4844(0, &qword_1EC60DF40, 255, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  if (a3[1])
  {
    v9 = 0xED0000746E756F43;
    v10 = 0x206E776F6E6B6E55;
  }

  else
  {
    v11 = *a3;
    v12 = sub_1D138D67C();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    sub_1D10F48A8();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D139E700;
    v14 = MEMORY[0x1E69E65A8];
    *(v13 + 56) = MEMORY[0x1E69E6530];
    *(v13 + 64) = v14;
    *(v13 + 32) = v11;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v10 = sub_1D138D1CC();
    v9 = v15;
    if (*(v13 + 16))
    {
      v10 = sub_1D139019C();
      v17 = v16;

      sub_1D10CD608(v8);
      v9 = v17;
    }

    else
    {
      sub_1D10CD608(v8);
    }
  }

  type metadata accessor for InternalStateItem();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = v10;
  result[5] = v9;
  return result;
}

void sub_1D10F4B4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D10F4BB4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D10F4844(255, &qword_1EC60AB08, a3, type metadata accessor for InternalStateItem, MEMORY[0x1E69E62F8]);
    sub_1D10F4C60(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D10F4C60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InternalStateItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D10F4CC4()
{
  result = qword_1EC60AB50;
  if (!qword_1EC60AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AB50);
  }

  return result;
}

unint64_t sub_1D10F4D1C()
{
  result = qword_1EC60AB58;
  if (!qword_1EC60AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AB58);
  }

  return result;
}

unint64_t sub_1D10F4D74()
{
  result = qword_1EC60AB60;
  if (!qword_1EC60AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AB60);
  }

  return result;
}

unint64_t sub_1D10F4DCC()
{
  result = qword_1EC60AB68;
  if (!qword_1EC60AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AB68);
  }

  return result;
}

unint64_t sub_1D10F4E24()
{
  result = qword_1EC60AB70;
  if (!qword_1EC60AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AB70);
  }

  return result;
}

unint64_t sub_1D10F4E7C()
{
  result = qword_1EC60AB78;
  if (!qword_1EC60AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AB78);
  }

  return result;
}

id sub_1D10F4EF4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 date];
  sub_1D138D52C();

  sub_1D10F5678(a1, v11, a3, a4);
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  objc_allocWithZone(type metadata accessor for MedicalRecordChartPoint());
  v15 = a1;
  v16 = a2;
  v17 = sub_1D120A4E8(v15, v16, v14);

  return v17;
}

uint64_t sub_1D10F51D8(void *a1)
{
  v2 = [a1 keyColor];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(type metadata accessor for MedicalRecordChartSeries()) init];
    [v4 setWantsRoundingDuringYRangeExpansion_];
    v5 = objc_opt_self();
    v6 = [v5 strokeStyleWithColor:v3 lineWidth:8.0];
    v7 = OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_selectedStrokeStyle;
    v8 = *&v4[OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_selectedStrokeStyle];
    *&v4[OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_selectedStrokeStyle] = v6;

    v9 = [objc_opt_self() hk_chartInactiveSeriesColor];
    v10 = [v5 strokeStyleWithColor:v9 lineWidth:8.0];

    v11 = OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_unselectedStrokeStyle;
    v12 = *&v4[OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_unselectedStrokeStyle];
    *&v4[OBJC_IVAR____TtC15HealthRecordsUI24MedicalRecordChartSeries_unselectedStrokeStyle] = v10;

    v13 = *&v4[v7];
    if (v13)
    {
      [v13 setLineCap_];
    }

    v14 = *&v4[v11];
    if (v14)
    {
      v15 = v14;
      [v15 setLineCap_];
    }

    return v4;
  }

  else
  {
    sub_1D13911EC();

    v17 = sub_1D139184C();
    MEMORY[0x1D3885C10](v17);

    MEMORY[0x1D3885C10](8285, 0xE200000000000000);
    v18 = [a1 description];
    v19 = sub_1D139016C();
    v21 = v20;

    MEMORY[0x1D3885C10](v19, v21);

    MEMORY[0x1D3885C10](0xD00000000000001ALL, 0x80000001D13BBDA0);
    result = sub_1D13913BC();
    __break(1u);
  }

  return result;
}

id sub_1D10F54CC(uint64_t a1)
{
  v2 = [objc_allocWithZone(HRInteractiveChartMedicalRecordFormatter) init];
  v3 = objc_allocWithZone(MEMORY[0x1E69A43F0]);
  v4 = sub_1D139012C();
  v5 = sub_1D139012C();
  v6 = [v3 initWithGraphSeries:a1 displayName:v4 unitName:v5 valueFormatter:v2 dataTypeCode:152];

  return v6;
}

void sub_1D10F5678(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v39 = v13;
  v12(v11, a2);
  if (a3 == 1)
  {
    v14 = 0;
  }

  else
  {
    if (a3 == 4)
    {
      v14 = 0;
    }

    else
    {
      if (a3 == 2)
      {
        v14 = 0;
        a3 = 6;
        goto LABEL_9;
      }

      v14 = 1;
    }

    a3 = 9;
  }

LABEL_9:
  v15 = a4 == 1;
  v16 = type metadata accessor for SingleValueChartData();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_chartableQuantitySet] = a1;
  (v12)(&v17[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_date], v11, v39);
  *&v17[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_dateFormat] = a3;
  v17[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_hasTime] = v14;
  v17[OBJC_IVAR____TtC15HealthRecordsUI20SingleValueChartData_partOfOutOfRangeSeries] = v15;
  v40.receiver = v17;
  v40.super_class = v16;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v40, sel_init);
  v20 = [v18 quantities];
  sub_1D10F5C10();
  v21 = sub_1D139045C();
  v22 = v21;
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_25;
  }

LABEL_11:

  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_26:
    v23 = MEMORY[0x1D3886B70](0, v22);
    goto LABEL_14;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = v22[4];
LABEL_14:
  v24 = v23;

  v25 = [v24 quantity];

  v22 = [v25 _unit];
  v19 = v19;
  [v19 setUnit_];
  v26 = [v18 quantities];
  v27 = sub_1D139045C();
  v20 = v27;
  if (!(v27 >> 62))
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  if (!sub_1D13910DC())
  {
LABEL_28:

    __break(1u);
    goto LABEL_29;
  }

LABEL_16:

  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v28 = MEMORY[0x1D3886B70](0, v20);
    goto LABEL_19;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v28 = *(v20 + 32);
LABEL_19:
  v29 = v28;

  [v29 doubleValue];
  v31 = v30;

  [v19 setValue_];
  [v18 minValueForUnit_];
  [v19 setMinValue_];
  [v18 maxValueForUnit_];
  [v19 setMaxValue_];
  v32 = [v18 quantities];
  v33 = sub_1D139045C();

  if (v33 >> 62)
  {
    v34 = sub_1D13910DC();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setRecordCount_];
  v35 = [v18 quantities];
  v36 = sub_1D139045C();

  if (v36 >> 62)
  {
    v37 = sub_1D13910DC();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setRepresentsRange_];

  (*(v9 + 8))(v11, v39);
}

unint64_t sub_1D10F5C10()
{
  result = qword_1EC6096C8;
  if (!qword_1EC6096C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6096C8);
  }

  return result;
}

unint64_t LocalizationContext.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

BOOL HKConcept.isNull.getter()
{
  v1 = [v0 identifier];
  v2 = [v1 rawIdentifier];

  return v2 == 0;
}

uint64_t sub_1D10F5CC4(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  v3 = [v2 rawIdentifier];

  if (v3 && ([v1 isUndefined] & 1) == 0)
  {
    v5 = [v1 isInMemory];

    return v5 ^ 1;
  }

  else
  {

    return 0;
  }
}

uint64_t HKConcept.isQualifiedForConceptRoom.getter()
{
  v1 = [v0 identifier];
  v2 = [v1 rawIdentifier];

  if (v2 && ([v0 isUndefined] & 1) == 0)
  {
    return [v0 isInMemory] ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D10F5DE4()
{
  if ([v0 isAdHoc])
  {
    v1 = [v0 attributes];
    sub_1D10F606C();
    v2 = sub_1D139045C();

    if (v2 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
    {
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D3886B70](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ([v5 type] == 2)
        {
          goto LABEL_17;
        }

        ++v4;
        if (v7 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
    v6 = 0;
LABEL_17:
  }

  v8 = [v0 localizedPreferredName];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1D139016C();

  return v10;
}

id static HKQuery.predicateForSamples(conceptId:keyPath:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_allocWithZone(MEMORY[0x1E696C020]) initWithRawIdentifier_];
  v6 = [ObjCClassFromMetadata predicateForSamplesWithConceptIdentifier:v5 keyPath:a2];

  return v6;
}

unint64_t sub_1D10F6008()
{
  result = qword_1EC60AB80;
  if (!qword_1EC60AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AB80);
  }

  return result;
}

unint64_t sub_1D10F606C()
{
  result = qword_1EC60AB88;
  if (!qword_1EC60AB88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60AB88);
  }

  return result;
}

uint64_t static SharedFeedItemIdentifierFactory.make(for:categoryKind:feedItemKind:profile:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4)
{
  v41 = a1;
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  LOBYTE(a4) = *a4;
  v12 = sub_1D138D98C();
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1D13911EC();

  v43 = 0xD000000000000016;
  v44 = 0x80000001D13BBE20;
  LOBYTE(v42) = a4;
  v13 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v13);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v14 = v43;
  v15 = v44;
  if (v12)
  {
    v43 = 0x656C69666F72505BLL;
    v44 = 0xE90000000000003ALL;
    v40 = v14;
    v12 = v12;
    v16 = [v12 identifier];
    sub_1D138D5CC();

    v17 = sub_1D138D59C();
    v18 = a2;
    v19 = v11;
    v21 = v20;
    (*(v8 + 8))(v10, v7);
    MEMORY[0x1D3885C10](v17, v21);
    v11 = v19;
    a2 = v18;

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v14 = v40;
    v23 = v43;
    v22 = v44;
  }

  else
  {
    v22 = 0x80000001D13BBE40;
    v23 = 0xD000000000000013;
  }

  v43 = v23;
  v44 = v22;
  MEMORY[0x1D3885C10](v14, v15);

  v46 = v43;
  v47 = v44;
  v48 = 0xD000000000000014;
  v49 = 0x80000001D13BBE60;
  v43 = 0x676E69726168535BLL;
  v44 = 0xEB000000003A4449;
  MEMORY[0x1D3885C10](v41, a2);
  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v50 = v43;
  v51 = v44;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1D13911EC();

  v43 = 0xD000000000000010;
  v44 = 0x80000001D13BBE80;
  v42 = v11;
  v24 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v24);

  result = MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v26 = 0;
  v52 = v43;
  v53 = v44;
  v27 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v26 <= 4)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  v29 = v28 + 1;
  v30 = 16 * v26 + 40;
  while (1)
  {
    if (v26 == 4)
    {
      v37 = MEMORY[0x1E69E6158];
      sub_1D10FAC3C(0, &qword_1EE06A660, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      v43 = v27;
      sub_1D10FAC3C(0, &qword_1EE06B0F0, v37, MEMORY[0x1E69E62F8]);
      sub_1D10F73A8();
      v38 = sub_1D139008C();

      return v38;
    }

    if (v29 == ++v26)
    {
      break;
    }

    v31 = v30 + 16;
    v32 = *&v45[v30];
    v30 += 16;
    if (v32)
    {
      v33 = *(&v42 + v31);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D10F7284(0, *(v27 + 16) + 1, 1, v27);
        v27 = result;
      }

      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_1D10F7284((v34 > 1), v35 + 1, 1, v27);
        v27 = result;
      }

      *(v27 + 16) = v35 + 1;
      v36 = v27 + 16 * v35;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t static SharedFeedItemIdentifierFactory.makePrefixComponent(feedItemKind:)()
{
  sub_1D13911EC();

  v0 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t sub_1D10F65D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = 0x656C69666F72505BLL;
    v19 = 0xE90000000000003ALL;
    v10 = a1;
    v11 = [v10 identifier];
    sub_1D138D5CC();

    v12 = sub_1D138D59C();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    MEMORY[0x1D3885C10](v12, v14);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v15 = v18;
    v16 = v19;
  }

  else
  {
    v16 = 0x80000001D13BBE40;
    v15 = 0xD000000000000013;
  }

  v18 = v15;
  v19 = v16;
  MEMORY[0x1D3885C10](a2, a3);
  return v18;
}

uint64_t static SharedFeedItemIdentifierFactory.makeComponent(sharingId:)()
{
  MEMORY[0x1D3885C10]();
  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0x676E69726168535BLL;
}

unint64_t static SharedFeedItemIdentifierFactory.makeComponent(categoryKind:)()
{
  sub_1D13911EC();

  v0 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t static SharedFeedItemIdentifierFactory.makeComboItemIdentifier(for:feedItemKind:profile:)(unsigned __int8 *a1, _BYTE *a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  LOBYTE(a2) = *a2;
  v9 = sub_1D138D98C();
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1D13911EC();

  v36 = 0xD000000000000016;
  v37 = 0x80000001D13BBE20;
  LOBYTE(v35) = a2;
  v10 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v10);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v12 = v36;
  v11 = v37;
  if (v9)
  {
    v36 = 0x656C69666F72505BLL;
    v37 = 0xE90000000000003ALL;
    v9 = v9;
    v13 = [v9 identifier];
    sub_1D138D5CC();

    v14 = sub_1D138D59C();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    MEMORY[0x1D3885C10](v14, v16);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v18 = v36;
    v17 = v37;
  }

  else
  {
    v17 = 0x80000001D13BBE40;
    v18 = 0xD000000000000013;
  }

  v36 = v18;
  v37 = v17;
  MEMORY[0x1D3885C10](v12, v11);

  v39 = v36;
  v40 = v37;
  v41 = 0xD000000000000012;
  v42 = 0x80000001D13BBEA0;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1D13911EC();

  v36 = 0xD000000000000010;
  v37 = 0x80000001D13BBE80;
  v35 = v8;
  v19 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v19);

  result = MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v21 = 0;
  v43 = v36;
  v44 = v37;
  v22 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v21 <= 3)
  {
    v23 = 3;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 + 1;
  v25 = 16 * v21 + 40;
  while (1)
  {
    if (v21 == 3)
    {
      v32 = MEMORY[0x1E69E6158];
      sub_1D10FAC3C(0, &qword_1EE06A660, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      v36 = v22;
      sub_1D10FAC3C(0, &qword_1EE06B0F0, v32, MEMORY[0x1E69E62F8]);
      sub_1D10F73A8();
      v33 = sub_1D139008C();

      return v33;
    }

    if (v24 == ++v21)
    {
      break;
    }

    v26 = v25 + 16;
    v27 = *&v38[v25];
    v25 += 16;
    if (v27)
    {
      v28 = *(&v35 + v26);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D10F7284(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_1D10F7284((v29 > 1), v30 + 1, 1, v22);
        v22 = result;
      }

      *(v22 + 16) = v30 + 1;
      v31 = v22 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t static SharedFeedItemIdentifierFactory.makeNewRecordsItemIdentifier(for:feedItemKind:profile:)(unsigned __int8 *a1, _BYTE *a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  LOBYTE(a2) = *a2;
  v9 = sub_1D138D98C();
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1D13911EC();

  v36 = 0xD000000000000016;
  v37 = 0x80000001D13BBE20;
  LOBYTE(v35) = a2;
  v10 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v10);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v12 = v36;
  v11 = v37;
  if (v9)
  {
    v36 = 0x656C69666F72505BLL;
    v37 = 0xE90000000000003ALL;
    v9 = v9;
    v13 = [v9 identifier];
    sub_1D138D5CC();

    v14 = sub_1D138D59C();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    MEMORY[0x1D3885C10](v14, v16);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v18 = v36;
    v17 = v37;
  }

  else
  {
    v17 = 0x80000001D13BBE40;
    v18 = 0xD000000000000013;
  }

  v36 = v18;
  v37 = v17;
  MEMORY[0x1D3885C10](v12, v11);

  v39 = v36;
  v40 = v37;
  v41 = 0xD000000000000019;
  v42 = 0x80000001D13BBEC0;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1D13911EC();

  v36 = 0xD000000000000010;
  v37 = 0x80000001D13BBE80;
  v35 = v8;
  v19 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v19);

  result = MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v21 = 0;
  v43 = v36;
  v44 = v37;
  v22 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v21 <= 3)
  {
    v23 = 3;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 + 1;
  v25 = 16 * v21 + 40;
  while (1)
  {
    if (v21 == 3)
    {
      v32 = MEMORY[0x1E69E6158];
      sub_1D10FAC3C(0, &qword_1EE06A660, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      v36 = v22;
      sub_1D10FAC3C(0, &qword_1EE06B0F0, v32, MEMORY[0x1E69E62F8]);
      sub_1D10F73A8();
      v33 = sub_1D139008C();

      return v33;
    }

    if (v24 == ++v21)
    {
      break;
    }

    v26 = v25 + 16;
    v27 = *&v38[v25];
    v25 += 16;
    if (v27)
    {
      v28 = *(&v35 + v26);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D10F7284(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_1D10F7284((v29 > 1), v30 + 1, 1, v22);
        v22 = result;
      }

      *(v22 + 16) = v30 + 1;
      v31 = v22 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D10F713C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10FAC8C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EE06B4B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10F7284(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1D10F73A8()
{
  result = qword_1EE06B0E8;
  if (!qword_1EE06B0E8)
  {
    sub_1D10FAC3C(255, &qword_1EE06B0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B0E8);
  }

  return result;
}

void sub_1D10F7450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1D10F74B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EE06B698, &type metadata for DisplayCategory, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10F7610(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10F7450(0, &qword_1EC60ABB8, sub_1D10FA010, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D10F776C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10FAA14(0, &qword_1EC60A098, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10FAA88(0, &qword_1EC60A0A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F78EC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10F7450(0, &qword_1EC60AC80, sub_1D10FA614, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10FA614(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10F7A54(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EC60AC78, &_s16FormattedSectionVN, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F7B88(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10FA704();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609CA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F7CB8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10FA930();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609D58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F7E08(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10FA8C0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609D28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F7F50(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10FA850();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609D00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F8098(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10FA7E0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F81CC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10FA770();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10951AC(0, &qword_1EC609CC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10F8300(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EC60ACD0, &type metadata for ClinicalAccountLoginUpgradeAction.Action, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10F8458(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EC60AD50, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D10F85B4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1D10F90E4(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10FAA88(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1D10F870C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10F7450(0, &qword_1EC60ACF0, sub_1D10FAAE4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10FAAE4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F888C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10F7450(0, &qword_1EC60AC98, sub_1D10A4318, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10A4318();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10F8A68(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D10FAC3C(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_1D10F8BA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EC60ACB8, &type metadata for UserDomainConceptFeedItemViewData, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F8D54(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6, void (*a7)(void))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10FA560(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1D10F8F64(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10FA9A0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10FAA14(0, &qword_1EC60ACB0, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D10F90E4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D10FAA88(255, a3);
    v4 = sub_1D13915DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_1D10F9140(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EE0694D8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D10F925C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EC60AD40, &type metadata for RecordTitleWithSubtitleItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10F9398(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EC60ABE8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1D10F94E8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
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

  if (v13)
  {
    sub_1D10F7450(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1D10F9630(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EC60AD20, &type metadata for GatewayIdentifiedClinicalAccount, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D10F9754(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10F7450(0, &qword_1EC60AD18, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D10F987C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10F7450(0, &qword_1EC60ABC8, sub_1D10FA068, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10FA068(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F99DC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10F7450(0, &qword_1EC60ABD8, sub_1D10FA090, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10FA090();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D10F9B50(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D10FA128();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D10FAC3C(0, &qword_1EC60ABF8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D10F9C90(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D10FAC3C(0, &qword_1EC60AD00, &type metadata for IconTextListView.ListItem, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1D10F9E1C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D10F7450(0, a5, a6, MEMORY[0x1E69E6F90]);
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

void sub_1D10FA010()
{
  if (!qword_1EC60ABC0)
  {
    v0 = sub_1D139075C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60ABC0);
    }
  }
}

void sub_1D10FA090()
{
  if (!qword_1EC60E4B0)
  {
    sub_1D10F7450(255, &qword_1EC60ABE0, type metadata accessor for MedicalRecordChartDataSource, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60E4B0);
    }
  }
}

void sub_1D10FA128()
{
  if (!qword_1EC60ABF0)
  {
    sub_1D10FAC3C(255, &qword_1EC60ABF8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60ABF0);
    }
  }
}

void sub_1D10FA1A4()
{
  if (!qword_1EC60AC00)
  {
    sub_1D10FA560(255, &qword_1EC60AC08, sub_1D10FA220);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AC00);
    }
  }
}

unint64_t sub_1D10FA220()
{
  result = qword_1EC60AC10;
  if (!qword_1EC60AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AC10);
  }

  return result;
}

void sub_1D10FA274()
{
  if (!qword_1EC60AC18)
  {
    sub_1D10FA560(255, &qword_1EC60AC20, sub_1D10FA2F0);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AC18);
    }
  }
}

unint64_t sub_1D10FA2F0()
{
  result = qword_1EC60AC28;
  if (!qword_1EC60AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AC28);
  }

  return result;
}

void sub_1D10FA344()
{
  if (!qword_1EC60AC30)
  {
    sub_1D10FA560(255, &qword_1EC60AC38, sub_1D10FA3C0);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AC30);
    }
  }
}

unint64_t sub_1D10FA3C0()
{
  result = qword_1EC60AC40;
  if (!qword_1EC60AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AC40);
  }

  return result;
}

void sub_1D10FA414()
{
  if (!qword_1EC60AC48)
  {
    sub_1D10FA560(255, &qword_1EC60AC50, sub_1D10FA490);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AC48);
    }
  }
}

unint64_t sub_1D10FA490()
{
  result = qword_1EC60AC58;
  if (!qword_1EC60AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AC58);
  }

  return result;
}

void sub_1D10FA4E4()
{
  if (!qword_1EC60AC60)
  {
    sub_1D10FA560(255, &qword_1EC60AC68, sub_1D10FA5C0);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AC60);
    }
  }
}

void sub_1D10FA560(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = _s12SortedRecordVMa();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D10FA5C0()
{
  result = qword_1EC60AC70;
  if (!qword_1EC60AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60AC70);
  }

  return result;
}

void sub_1D10FA63C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D10FA6A8()
{
  if (!qword_1EC60AC90)
  {
    v0 = sub_1D139003C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AC90);
    }
  }
}

void sub_1D10FA704()
{
  if (!qword_1EC609C98)
  {
    sub_1D10951AC(255, &qword_1EC609CA0);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609C98);
    }
  }
}

void sub_1D10FA770()
{
  if (!qword_1EC609CC8)
  {
    sub_1D10951AC(255, &qword_1EC609CC0);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609CC8);
    }
  }
}

void sub_1D10FA7E0()
{
  if (!qword_1EC609CE8)
  {
    sub_1D10951AC(255, &qword_1EC609CE0);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609CE8);
    }
  }
}

void sub_1D10FA850()
{
  if (!qword_1EC609D08)
  {
    sub_1D10951AC(255, &qword_1EC609D00);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609D08);
    }
  }
}

void sub_1D10FA8C0()
{
  if (!qword_1EC609D30)
  {
    sub_1D10951AC(255, &qword_1EC609D28);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609D30);
    }
  }
}

void sub_1D10FA930()
{
  if (!qword_1EC609D60)
  {
    sub_1D10951AC(255, &qword_1EC609D58);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609D60);
    }
  }
}

void sub_1D10FA9A0()
{
  if (!qword_1EC60ACA8)
  {
    sub_1D10FAA14(255, &qword_1EC60ACB0, MEMORY[0x1E69E6720]);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60ACA8);
    }
  }
}

void sub_1D10FAA14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D10FAA88(255, &qword_1EC60A0A0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D10FAA88(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D10FAAE4()
{
  if (!qword_1EC60ACF8)
  {
    sub_1D106F934(255, &unk_1EC6096D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60ACF8);
    }
  }
}

void sub_1D10FAB5C()
{
  if (!qword_1EC60AD10)
  {
    sub_1D106F934(255, &qword_1EC609BE8);
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AD10);
    }
  }
}

void sub_1D10FABC4()
{
  if (!qword_1EC60AD30)
  {
    sub_1D106F934(255, &qword_1EE06B0C0);
    v0 = sub_1D139003C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60AD30);
    }
  }
}

void sub_1D10FAC3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D10FAC8C()
{
  if (!qword_1EE06B088)
  {
    sub_1D10951AC(255, &qword_1EE06B4B0);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B088);
    }
  }
}

uint64_t sub_1D10FAD00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D10FAD64()
{
  v1 = *v0;
  sub_1D139177C();
  sub_1D139027C();
  v2 = *(v1 + 16);
  sub_1D1390D9C();

  return sub_1D13917CC();
}

void sub_1D10FADC4()
{
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + 16);
  sub_1D1390D9C();
}

uint64_t sub_1D10FAE28()
{
  sub_1D139177C();
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + 16);
  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D10FAE84()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1D10FAEB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D106F934(0, &qword_1EE06B0C0);
  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = v4;
  v7 = sub_1D1390D8C();

  return v7 & 1;
}

uint64_t sub_1D10FAF34()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(*v0 + 16) identifier];
  sub_1D138D5CC();

  v6 = sub_1D138D59C();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  strcpy(v10, "AccountHeader.");
  HIBYTE(v10[1]) = -18;
  MEMORY[0x1D3885C10](v6, v8);

  return v10[0];
}

uint64_t sub_1D10FB074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

char *sub_1D10FB0D8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineAccountHeaderItemCell_item];
  v10 = type metadata accessor for AccountView2(0);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v11 = [objc_allocWithZone(v10) init];
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineAccountHeaderItemCell_accountView] = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v35.receiver = v4;
  v35.super_class = type metadata accessor for MedicalRecordTimelineAccountHeaderItemCell();
  v12 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = [v12 contentView];
  v14 = OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineAccountHeaderItemCell_accountView;
  [v13 addSubview_];

  sub_1D106F424();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D139F5B0;
  v16 = [*&v12[v14] leadingAnchor];
  v17 = [v12 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:14.0];
  *(v15 + 32) = v19;
  v20 = [*&v12[v14] trailingAnchor];
  v21 = [v12 contentView];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-16.0];
  *(v15 + 40) = v23;
  v24 = [*&v12[v14] topAnchor];
  v25 = [v12 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:16.0];
  *(v15 + 48) = v27;
  v28 = [v12 contentView];

  v29 = [v28 bottomAnchor];
  v30 = [*&v12[v14] bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];

  *(v15 + 56) = v31;
  v32 = objc_opt_self();
  sub_1D106F934(0, &qword_1EC609690);
  v33 = sub_1D139044C();

  [v32 activateConstraints_];

  return v12;
}

id sub_1D10FB47C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineAccountHeaderItemCell_item];
  v4 = type metadata accessor for AccountView2(0);
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v5 = [objc_allocWithZone(v4) init];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineAccountHeaderItemCell_accountView] = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MedicalRecordTimelineAccountHeaderItemCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1D10FB558()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10FBDC4(0, &qword_1EC60A708, type metadata accessor for AccountViewData);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_1D138D5EC();
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccountViewData(0);
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineAccountHeaderItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(&v1[v15], v45);
  if (v46)
  {
    v41 = v9;
    sub_1D10A7254();
    type metadata accessor for MedicalRecordTimelineAccountHeaderItem();
    if (swift_dynamicCast())
    {
      v16 = v44;
      v17 = [*(v44 + 16) identifier];
      sub_1D138D5CC();

      v18 = [*(v16 + 16) title];
      v19 = sub_1D139016C();
      v40 = v20;

      v21 = [*(v16 + 16) subtitle];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1D139016C();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      (*(v42 + 32))(v14, v11, v41);
      v35 = &v14[*(v12 + 20)];
      v36 = v40;
      *v35 = v19;
      v35[1] = v36;
      v37 = &v14[*(v12 + 24)];
      *v37 = v23;
      v37[1] = v25;
      v38 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineAccountHeaderItemCell_accountView];
      sub_1D10D4964(v14, v8);
      (*(v43 + 56))(v8, 0, 1, v12);
      sub_1D10D251C(v8);
      sub_1D10FBE18(v8, &qword_1EC60A708, type metadata accessor for AccountViewData);
      [v38 setNeedsDisplay];

      return sub_1D10D4674(v14);
    }
  }

  else
  {
    sub_1D10FBE18(v45, &qword_1EC60B620, sub_1D10A7254);
  }

  sub_1D138F06C();
  v26 = v1;
  v27 = sub_1D138F0AC();
  v28 = sub_1D13907FC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44 = v30;
    *v29 = 136446210;
    sub_1D10A71C0(&v1[v15], v45);
    sub_1D10FBDC4(0, &qword_1EC60B620, sub_1D10A7254);
    v31 = sub_1D139020C();
    v33 = sub_1D11DF718(v31, v32, &v44);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1D101F000, v27, v28, "Incorrect view model for MedicalRecordTimelineAccountHeaderItem: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1D38882F0](v30, -1, -1);
    MEMORY[0x1D38882F0](v29, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_1D10FBA78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineAccountHeaderItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10FBB2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineAccountHeaderItemCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D10FBB84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineAccountHeaderItemCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D10FB558();
  return sub_1D10FBE18(a1, &qword_1EC60B620, sub_1D10A7254);
}

uint64_t (*sub_1D10FBC0C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D10FBC70;
}

uint64_t sub_1D10FBC70(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D10FB558();
  }

  return result;
}

uint64_t sub_1D10FBCA4@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69A36A0];
  v3 = sub_1D138E5DC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D10FBD84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicalRecordTimelineAccountHeaderItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D10FBDC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D10FBE18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D10FBDC4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D10FBE74(uint64_t a1)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v22 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *(v22 + 72 * v1 + 48);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_1D13910DC();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v21 = sub_1D13910DC();
      v9 = v21 + v6;
      if (__OFADD__(v21, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D13910DC();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D139122C();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v27 = v6;
    v24 = v2;
    v25 = v1;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_1D10A9A3C();
      sub_1D1104B64(&unk_1EC60A140, sub_1D10A9A3C);
      for (i = 0; i != v13; ++i)
      {
        v15 = sub_1D1112FB8(v26, i, v4);
        v17 = *v16;
        (v15)(v26, 0);
        *(v10 + 8 * v11 + 32 + 8 * i) = v17;
      }
    }

    else
    {
      sub_1D106F934(0, &qword_1EE06A630);
      swift_arrayInitWithCopy();
    }

    v2 = v24;
    v1 = v25;
    if (v27 >= 1)
    {
      v18 = *(v10 + 16);
      v19 = __OFADD__(v18, v27);
      v20 = v18 + v27;
      if (v19)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v20;
    }

LABEL_4:
    if (++v1 == v23)
    {
      return v2;
    }
  }

  result = sub_1D13910DC();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
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

uint64_t RecordLookupError.hashValue.getter()
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](0);
  return sub_1D13917CC();
}

uint64_t HKHealthStore.addObserver(following:sampleTypes:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = objc_allocWithZone(MEMORY[0x1E696C618]);
  sub_1D106F934(0, &qword_1EE06B780);

  v10 = sub_1D139044C();
  v18[4] = sub_1D10FC44C;
  v18[5] = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D10FD75C;
  v18[3] = &block_descriptor_15;
  v11 = _Block_copy(v18);
  v12 = [v9 initWithTypes:v10 anchor:a1 resultsHandler:v11];

  _Block_release(v11);

  v13 = v12;
  v14 = sub_1D139012C();
  [v13 setDebugIdentifier_];

  [v4 executeQuery_];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  type metadata accessor for CancellationToken();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = sub_1D10FD894;
  *(result + 32) = v16;
  return result;
}

void sub_1D10FC3CC(int a1, void *a2, int a3, id a4, void (*a5)(id, BOOL))
{
  v7 = a4;
  if (!a4)
  {
    v7 = a2;
    v8 = a2;
  }

  v9 = a4;
  a5(v7, a4 != 0);

  sub_1D1023E4C(v7);
}

void sub_1D10FC454(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong stopQuery_];
  }
}

id HKHealthStore.fetchRecord(recordId:categoryKind:completion:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *a2;
  if (v8 != 11)
  {
    sub_1D1105010(0, &qword_1EE06B090, &type metadata for DisplayCategory.Kind, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1D139E700;
    v11 = (v9 + 16);
    v9[32] = v8;
    v10 = 1;
LABEL_5:
    v35 = a4;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1D10FD8EC(0, v10, 0);
    v12 = v48;
    if (qword_1EE069F78 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v36 = v5;
      if (*v11)
      {
        v13 = 0;
        v14 = v10 - 1;
        v10 = &off_1EE069F80;
        do
        {
          v15 = v9[v13 + 32];
          swift_beginAccess();
          v16 = off_1EE069F80;
          if (*(off_1EE069F80 + 2) && (v17 = sub_1D12A2F78(v15), (v18 & 1) != 0))
          {
            v19 = v16[7] + 72 * v17;
            v38 = *v19;
            v21 = *(v19 + 32);
            v20 = *(v19 + 48);
            v22 = *(v19 + 64);
            v39 = *(v19 + 16);
            v40 = v21;
            v42 = v22;
            v41 = v20;
            swift_endAccess();
            v45 = v40;
            v46 = v41;
            v47 = v42;
            aBlock = v38;
            v44 = v39;
            sub_1D1082914(&v38, v37);
          }

          else
          {
            swift_endAccess();
            result = [objc_opt_self() unknownRecordCategory];
            if (!result)
            {
              __break(1u);
              return result;
            }

            sub_1D123E1C4(result, &aBlock);
          }

          v42 = v47;
          v40 = v45;
          v41 = v46;
          v38 = aBlock;
          v39 = v44;
          v48 = v12;
          v25 = *(v12 + 16);
          v24 = *(v12 + 24);
          v5 = (v25 + 1);
          if (v25 >= v24 >> 1)
          {
            sub_1D10FD8EC((v24 > 1), v25 + 1, 1);
            v12 = v48;
          }

          *(v12 + 16) = v5;
          v26 = v12 + 72 * v25;
          *(v26 + 32) = v38;
          v27 = v39;
          v28 = v40;
          v29 = v41;
          *(v26 + 96) = v42;
          *(v26 + 64) = v28;
          *(v26 + 80) = v29;
          *(v26 + 48) = v27;
          if (v14 == v13)
          {

            a4 = v35;
            v5 = v36;
            goto LABEL_19;
          }

          ++v13;
        }

        while (v13 < *v11);
      }

      __break(1u);
LABEL_21:
      swift_once();
    }
  }

  v9 = &unk_1F4D04598;
  v11 = &qword_1F4D045A8;
  v10 = qword_1F4D045A8;
  if (qword_1F4D045A8)
  {
    goto LABEL_5;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_19:
  sub_1D10FBE74(v12);

  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  v31 = objc_allocWithZone(MEMORY[0x1E696C3B8]);
  sub_1D106F934(0, &qword_1EE06A630);

  v32 = sub_1D139044C();

  *&v45 = sub_1D10FD90C;
  *(&v45 + 1) = v30;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_1D10FD688;
  *(&v44 + 1) = &block_descriptor_12_0;
  v33 = _Block_copy(&aBlock);
  v34 = [v31 initWithQueryDescriptors:v32 sortDescriptors:0 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 limit:1 resultsHandler:v33];

  _Block_release(v33);

  [v5 executeQuery_];
  return v34;
}

void sub_1D10FC8B4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, uint64_t))
{
  v7 = a2;
  if (!a2)
  {
    goto LABEL_11;
  }

  if (a2 >> 62)
  {
    if (sub_1D13910DC())
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1D3886B70](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
  }

LABEL_11:
  sub_1D1104F1C();
  v10 = swift_allocError();
  if (a4)
  {
    v11 = v10;
    v12 = a4;

    v13 = 1;
  }

  else if (v7)
  {

    v13 = 0;
    a4 = v7;
  }

  else
  {
    v13 = 1;
    a4 = v10;
  }

  a5(a4, v13);

  sub_1D1023E4C(a4);
}

id HKHealthStore.fetchRecords(for:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[7] = *MEMORY[0x1E69E9840];
  v9 = [objc_opt_self() allSupportedSampleTypes];
  v10 = MEMORY[0x1E69E7CD0];
  if (v9)
  {
    v11 = v9;
    sub_1D106F934(0, &qword_1EE06B780);
    v12 = sub_1D139045C();

    v13 = sub_1D12DEFE8(v12);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  v75 = v4;
  v76 = a3;
  v77 = a4;
  v73 = a1;
  v74 = a2;
  if ((v13 & 0xC000000000000001) == 0)
  {
    v36 = *(v13 + 32);
    v69 = ((1 << v36) + 63) >> 6;
    if ((v36 & 0x3Fu) <= 0xD)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

  aBlock[0] = v10;
  sub_1D139108C();
  v14 = sub_1D139110C();
  if (!v14)
  {
LABEL_28:

LABEL_50:
    a2 = v74;
    v4 = v75;
    a1 = v73;
    goto LABEL_51;
  }

  v15 = v14;
  sub_1D106F934(0, &qword_1EE06B780);
  v16 = v15;
  v13 = *MEMORY[0x1E696BE78];
  a2 = -1;
  a1 = 1;
  while (1)
  {
    v78 = v16;
    swift_dynamicCast();
    v17 = [v79 identifier];
    v18 = sub_1D139016C();
    v20 = v19;

    if (v18 != sub_1D139016C() || v20 != v21)
    {
      break;
    }

LABEL_8:

LABEL_9:
    v16 = sub_1D139110C();
    if (!v16)
    {
      goto LABEL_28;
    }
  }

  v23 = sub_1D139162C();

  if (v23)
  {
    goto LABEL_8;
  }

  v24 = v79;
  v25 = v10[2];
  if (v10[3] <= v25)
  {
    sub_1D1102BD8(v25 + 1, sub_1D1104E88);
  }

  v10 = aBlock[0];
  v4 = v79;
  v26 = sub_1D1390D7C();
  v27 = aBlock[0] + 56;
  v28 = -1 << *(aBlock[0] + 32);
  v29 = v26 & ~v28;
  v30 = v29 >> 6;
  if (((-1 << v29) & ~*(aBlock[0] + 56 + 8 * (v29 >> 6))) != 0)
  {
    v31 = __clz(__rbit64((-1 << v29) & ~*(aBlock[0] + 56 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    *(v10[6] + 8 * v31) = v24;
    ++v10[2];
    goto LABEL_9;
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v27 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_27;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_53:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_30:
    v68[0] = v68;
    MEMORY[0x1EEE9AC00](v9);
    v70 = v68 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v70, v37);
    v71 = 0;
    v38 = 0;
    v68[1] = 0;
    v4 = (v13 + 56);
    v39 = 1 << *(v13 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v13 + 56);
    v42 = (v39 + 63) >> 6;
    v72 = *MEMORY[0x1E696BE78];
    while (v41)
    {
      v43 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
LABEL_41:
      v46 = v43 | (v38 << 6);
      v47 = *(*(v13 + 48) + 8 * v46);
      v48 = [v47 identifier];
      v49 = sub_1D139016C();
      a2 = v50;

      v51 = sub_1D139016C();
      a1 = v52;
      if (v49 == v51 && a2 == v52)
      {
      }

      else
      {
        v54 = sub_1D139162C();

        if ((v54 & 1) == 0)
        {
          *&v70[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
          if (__OFADD__(v71++, 1))
          {
            __break(1u);
LABEL_49:
            v10 = sub_1D1103C40(v70, v69, v71, v13);
            goto LABEL_50;
          }
        }
      }
    }

    v44 = v38;
    while (1)
    {
      v38 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v38 >= v42)
      {
        goto LABEL_49;
      }

      v45 = v4[v38];
      ++v44;
      if (v45)
      {
        v43 = __clz(__rbit64(v45));
        v41 = (v45 - 1) & v45;
        goto LABEL_41;
      }
    }
  }

  v67 = swift_slowAlloc();
  v10 = sub_1D11037B8(v67, v69, v13, sub_1D10FD1E4);

  MEMORY[0x1D38882F0](v67, -1, -1);
LABEL_51:
  v56 = [objc_opt_self() predicateForSamplesWithConceptIdentifier:a1 keyPath:a2];
  sub_1D1104144(v10, v56);

  sub_1D1105010(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1D139E810;
  *(v57 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:*MEMORY[0x1E696B9B8] ascending:0];
  v58 = swift_allocObject();
  v59 = v77;
  *(v58 + 16) = v76;
  *(v58 + 24) = v59;
  v60 = objc_allocWithZone(MEMORY[0x1E696C3B8]);
  sub_1D106F934(0, &qword_1EE06A630);

  v61 = sub_1D139044C();

  sub_1D106F934(0, &qword_1EE06B578);
  v62 = sub_1D139044C();

  aBlock[4] = sub_1D1104458;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10FD688;
  aBlock[3] = &block_descriptor_18;
  v63 = _Block_copy(aBlock);
  v64 = [v60 initWithQueryDescriptors:v61 sortDescriptors:v62 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 limit:0 resultsHandler:v63];

  _Block_release(v63);

  v65 = v64;
  [v4 executeQuery_];

  return v65;
}

uint64_t sub_1D10FD1E4(id *a1)
{
  v1 = [*a1 identifier];
  v2 = sub_1D139016C();
  v4 = v3;

  if (v2 == sub_1D139016C() && v4 == v5)
  {

    v8 = 0;
  }

  else
  {
    v7 = sub_1D139162C();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

void sub_1D10FD2A8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, uint64_t))
{
  if (a2)
  {
    v7 = sub_1D106E218(a2);
  }

  else
  {
    v7 = 0;
  }

  sub_1D1104F1C();
  v8 = swift_allocError();
  if (a4)
  {
    v9 = v8;
    v10 = a4;

    v11 = 1;
  }

  else if (v7)
  {

    v11 = 0;
    a4 = v7;
  }

  else
  {
    v11 = 1;
    a4 = v8;
  }

  a5(a4, v11);

  sub_1D1104E7C(a4, v11);
}

uint64_t HKHealthStore.fetchRecordsForObjC(for:keyPath:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
}

void sub_1D10FD41C(void *a1, char a2, void (*a3)(void *, void *))
{
  if (a2)
  {
    v5 = a1;
    sub_1D10FAA88(0, &qword_1EE06B690);
    swift_willThrowTypedImpl();
    v6 = a1;
    a3(MEMORY[0x1E69E7CC0], a1);
    sub_1D1104E7C(a1, 1);
    sub_1D1104E7C(a1, 1);
  }

  else
  {
    a3(a1, 0);
  }
}

void sub_1D10FD4D4(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D1104BAC;
  *(v10 + 24) = v9;
  v11 = a3;
  v12 = a4;
  v13 = a1;
}

void sub_1D10FD5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D106F934(0, &qword_1EE06B0E0);
  v5 = sub_1D139044C();
  if (a2)
  {
    v6 = sub_1D138D2AC();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1D10FD688(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1D106F934(0, &qword_1EE06B0D0);
    v7 = sub_1D139045C();
  }

  v10 = a2;
  v11 = a4;
  v12 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t sub_1D10FD75C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = *(a1 + 32);
  if (a4)
  {
    sub_1D106F934(0, &qword_1EE06B780);
    sub_1D106F934(0, &qword_1EE06B0D8);
    sub_1D109D274(&qword_1EE06B778, &qword_1EE06B780);
    v6 = sub_1D138FFFC();
  }

  v10 = a2;
  v11 = a3;
  v12 = a5;
  v9(v10, a3, v6, a5);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

size_t sub_1D10FD89C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D10FE524(a1, a2, a3, *v3, &qword_1EC60AB98, type metadata accessor for TimelineRecord, type metadata accessor for TimelineRecord);
  *v3 = result;
  return result;
}

char *sub_1D10FD8EC(char *a1, int64_t a2, char a3)
{
  result = sub_1D10FE264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FD914(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FE3A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D10FD934(size_t a1, int64_t a2, char a3)
{
  result = sub_1D10FE524(a1, a2, a3, *v3, &qword_1EC60AAB0, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
  *v3 = result;
  return result;
}

char *sub_1D10FD984(char *a1, int64_t a2, char a3)
{
  result = sub_1D10FE718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FD9A4(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FE844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D10FD9C4(char *a1, int64_t a2, char a3)
{
  result = sub_1D10FE990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FD9E4(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FEAC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDA04(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FEC38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D10FDA24(char *a1, int64_t a2, char a3)
{
  result = sub_1D10FED80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDA44(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FEEBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDA64(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FF024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D10FDA84(char *a1, int64_t a2, char a3)
{
  result = sub_1D10FF16C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDAA4(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FF2A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDAC4(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FF40C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D10FDAE4(char *a1, int64_t a2, char a3)
{
  result = sub_1D10FF538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDB04(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FF65C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDB24(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FF7B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D10FDB44(char *a1, int64_t a2, char a3)
{
  result = sub_1D10FF8F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDB64(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FFA28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDB84(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FFB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D10FDBA4(char *a1, int64_t a2, char a3)
{
  result = sub_1D10FFCBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDBC4(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100CC0(a1, a2, a3, *v3, &qword_1EC60B640, &qword_1EC60F6A0);
  *v3 = result;
  return result;
}

void *sub_1D10FDBFC(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FFDE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDC1C(void *a1, int64_t a2, char a3)
{
  result = sub_1D10FFF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D10FDC3C(char *a1, int64_t a2, char a3)
{
  result = sub_1D110009C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D10FDC5C(char *a1, int64_t a2, char a3)
{
  result = sub_1D11001B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDC7C(void *a1, int64_t a2, char a3)
{
  result = sub_1D11002D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDC9C(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100CC0(a1, a2, a3, *v3, &qword_1EC60ACE0, &qword_1EC60ACE8);
  *v3 = result;
  return result;
}

void *sub_1D10FDCD4(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100CC0(a1, a2, a3, *v3, &qword_1EC60AB90, &qword_1EC609E28);
  *v3 = result;
  return result;
}

char *sub_1D10FDD0C(char *a1, int64_t a2, char a3)
{
  result = sub_1D1100414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDD2C(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100CC0(a1, a2, a3, *v3, &qword_1EC60AE98, &qword_1EC60AEA0);
  *v3 = result;
  return result;
}

void *sub_1D10FDD64(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100CC0(a1, a2, a3, *v3, &qword_1EC60ABA8, &qword_1EC60A3D0);
  *v3 = result;
  return result;
}

size_t sub_1D10FDD9C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D10FE524(a1, a2, a3, *v3, &qword_1EC60ABB0, MEMORY[0x1E69A3910], MEMORY[0x1E69A3910]);
  *v3 = result;
  return result;
}

char *sub_1D10FDDEC(char *a1, int64_t a2, char a3)
{
  result = sub_1D1100530(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D10FDE0C(char *a1, int64_t a2, char a3)
{
  result = sub_1D1100E1C(a1, a2, a3, *v3, &qword_1EC60AD38, &type metadata for SettingsSection);
  *v3 = result;
  return result;
}

size_t sub_1D10FDE3C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D10FE524(a1, a2, a3, *v3, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69A3690]);
  *v3 = result;
  return result;
}

void *sub_1D10FDE8C(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDEAC(void *a1, int64_t a2, char a3)
{
  result = sub_1D11007A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D10FDECC(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100CC0(a1, a2, a3, *v3, &qword_1EC60AED0, &qword_1EC60AED8);
  *v3 = result;
  return result;
}

size_t sub_1D10FDF04(size_t a1, int64_t a2, char a3)
{
  result = sub_1D10FE524(a1, a2, a3, *v3, &unk_1EE06B568, type metadata accessor for BrowseCategory, type metadata accessor for BrowseCategory);
  *v3 = result;
  return result;
}

size_t sub_1D10FDF54(size_t a1, int64_t a2, char a3)
{
  result = sub_1D10FE524(a1, a2, a3, *v3, &qword_1EE06B098, sub_1D1104D18, sub_1D1104D18);
  *v3 = result;
  return result;
}

char *sub_1D10FDFA4(char *a1, int64_t a2, char a3)
{
  result = sub_1D1100900(a1, a2, a3, *v3, &qword_1EC60ADD8, &_s13SortedSectionVN);
  *v3 = result;
  return result;
}

void *sub_1D10FDFD4(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100A7C(a1, a2, a3, *v3, &qword_1EC60AE40, &qword_1EC60AE48, &qword_1EC609D50, &_s23FormattedRecordMetadataVN);
  *v3 = result;
  return result;
}

void *sub_1D10FE014(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100A7C(a1, a2, a3, *v3, &qword_1EC60AE28, &qword_1EC60AE30, &qword_1EC609CB0, &_s22FormattedRecord3ValuesVN);
  *v3 = result;
  return result;
}

void *sub_1D10FE054(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100A7C(a1, a2, a3, *v3, &qword_1EC60AE10, &qword_1EC60AE18, &qword_1EC609D20, &_s27FormattedRecordValueInRangeVN);
  *v3 = result;
  return result;
}

void *sub_1D10FE094(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100A7C(a1, a2, a3, *v3, &qword_1EC60ADF8, &qword_1EC60AE00, &qword_1EC609CF8, &_s20FormattedRecordValueVN);
  *v3 = result;
  return result;
}

void *sub_1D10FE0D4(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100A7C(a1, a2, a3, *v3, &qword_1EC60ADE0, &qword_1EC60ADE8, &qword_1EC609CD8, &_s15FormattedRecordVN);
  *v3 = result;
  return result;
}

size_t sub_1D10FE114(size_t a1, int64_t a2, char a3)
{
  result = sub_1D10FE524(a1, a2, a3, *v3, &qword_1EC60AEE0, type metadata accessor for CategoryCount, type metadata accessor for CategoryCount);
  *v3 = result;
  return result;
}

void *sub_1D10FE164(void *a1, int64_t a2, char a3)
{
  result = sub_1D1100CC0(a1, a2, a3, *v3, &qword_1EC60AEA8, &qword_1EC60AEB0);
  *v3 = result;
  return result;
}

char *sub_1D10FE19C(char *a1, int64_t a2, char a3)
{
  result = sub_1D1100E1C(a1, a2, a3, *v3, &qword_1EE06B090, &type metadata for DisplayCategory.Kind);
  *v3 = result;
  return result;
}

char *sub_1D10FE1CC(char *a1, int64_t a2, char a3)
{
  result = sub_1D1101200(a1, a2, a3, *v3, &qword_1EC60AD18, type metadata accessor for CGPoint);
  *v3 = result;
  return result;
}