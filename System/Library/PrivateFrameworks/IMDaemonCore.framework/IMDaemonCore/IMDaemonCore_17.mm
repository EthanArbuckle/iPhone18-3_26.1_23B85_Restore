uint64_t sub_22B7C9804(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_22B6F0AD4(a3, a4);
    v10 = sub_22B7DC288();
    v24 = v10;
    sub_22B7DC188();
    if (sub_22B7DC1F8())
    {
      sub_22B4D01A0(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_22B7CA74C(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_22B7DBFC8();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_22B7DC1F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22B7C9A04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22B6F0AD4(&qword_27D8CFC68, &qword_22B7FE538);
    v2 = sub_22B7DC288();
    v16 = v2;
    sub_22B7DC188();
    if (sub_22B7DC1F8())
    {
      sub_22B7DBEF8();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_22B7CA74C(v10 + 1, &qword_27D8CFC68, &qword_22B7FE538);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_22B7DBFC8();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_22B7DC1F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22B7C9C04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22B6F0AD4(&qword_27D8CFC60, &qword_22B7FE528);
    v2 = sub_22B7DC288();
    v16 = v2;
    sub_22B7DC188();
    if (sub_22B7DC1F8())
    {
      sub_22B7DB2D8();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_22B7CA96C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_22B7CCF08(&unk_28141F358);
        result = sub_22B7DB5A8();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_22B7DC1F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22B7C9E24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CFC78, &unk_22B7FE548);
  result = sub_22B7DC278();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      result = MEMORY[0x231895FC0](*(v6 + 40), v18, 2);
      v19 = -1 << *(v6 + 32);
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 2 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22B7CA04C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CFC70, &qword_22B7FE540);
  result = sub_22B7DC278();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_22B7DC658();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22B7CA270(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CD818, &qword_22B7FE530);
  result = sub_22B7DC278();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22B7DC668();
      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22B7CA4D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CFC80, &unk_22B7FE558);
  result = sub_22B7DC278();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_22B7DC668();
      sub_22B7DC688();
      if (v20)
      {
        sub_22B7DB758();
      }

      result = sub_22B7DC6B8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22B7CA74C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_22B6F0AD4(a2, a3);
  result = sub_22B7DC278();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_22B7DBFC8();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_22B7CA96C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CFC60, &qword_22B7FE528);
  result = sub_22B7DC278();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22B7DB2D8();
      sub_22B7CCF08(&unk_28141F358);
      result = sub_22B7DB5A8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_22B7CABEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22B7DBFC8();
  v5 = -1 << *(a2 + 32);
  result = sub_22B7DC168();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_22B7CAC70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22B7DB2D8();
  sub_22B7CCF08(&unk_28141F358);
  sub_22B7DB5A8();
  v5 = -1 << *(a2 + 32);
  result = sub_22B7DC168();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22B7CAD44(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B7C9E24(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22B7CB7A4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22B7CBF90(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x231895FC0](*(*v3 + 40), v4, 2);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 2 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 2 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B7DC568();
  __break(1u);
  return result;
}

uint64_t sub_22B7CAE68(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B7CA04C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22B7CB8E4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22B7CC184(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_22B7DC658();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B7DC568();
  __break(1u);
  return result;
}

void sub_22B7CAF88(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_22B7CA74C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22B7CBD00(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_22B7CC800(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_22B7DBFC8();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_22B4D01A0(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_22B7DBFD8();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22B7DC568();
  __break(1u);
}

uint64_t sub_22B7CB118(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_22B7CA270(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22B7CBA38();
      goto LABEL_16;
    }

    sub_22B7CC374(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22B7DC668();
  sub_22B7DB758();
  result = sub_22B7DC6B8();
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

      result = sub_22B7DC518();
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
  result = sub_22B7DC568();
  __break(1u);
  return result;
}

uint64_t sub_22B7CB298(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_22B7CA4D0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_22B7CBB94();
      goto LABEL_22;
    }

    sub_22B7CC5AC(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_22B7DC668();
  sub_22B7DC688();
  if (a2)
  {
    sub_22B7DB758();
  }

  result = sub_22B7DC6B8();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_22B7DC518(), (result & 1) != 0))
          {
LABEL_21:
            sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
            result = sub_22B7DC568();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void sub_22B7CB454(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B7CA74C(v6 + 1, &qword_27D8CFC68, &qword_22B7FE538);
  }

  else
  {
    if (v7 > v6)
    {
      sub_22B7CBD00(&qword_27D8CFC68, &qword_22B7FE538);
      goto LABEL_12;
    }

    sub_22B7CC800(v6 + 1, &qword_27D8CFC68, &qword_22B7FE538);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_22B7DBFC8();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_22B7DBEF8();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_22B7DBFD8();

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
  sub_22B7DC568();
  __break(1u);
}

uint64_t sub_22B7CB5E4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B7CA96C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22B7CBE40();
      goto LABEL_12;
    }

    sub_22B7CCA0C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22B7DB2D8();
  sub_22B7CCF08(&unk_28141F358);
  result = sub_22B7DB5A8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_22B7CCF08(&qword_27D8CFC58);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_22B7DB658();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B7DC568();
  __break(1u);
  return result;
}

void *sub_22B7CB7A4()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CFC78, &unk_22B7FE548);
  v2 = *v0;
  v3 = sub_22B7DC268();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_22B7CB8E4()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CFC70, &qword_22B7FE540);
  v2 = *v0;
  v3 = sub_22B7DC268();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_22B7CBA38()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CD818, &qword_22B7FE530);
  v2 = *v0;
  v3 = sub_22B7DC268();
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

void *sub_22B7CBB94()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CFC80, &unk_22B7FE558);
  v2 = *v0;
  v3 = sub_22B7DC268();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

id sub_22B7CBD00(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_22B6F0AD4(a1, a2);
  v4 = *v2;
  v5 = sub_22B7DC268();
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

void *sub_22B7CBE40()
{
  v1 = v0;
  sub_22B6F0AD4(&qword_27D8CFC60, &qword_22B7FE528);
  v2 = *v0;
  v3 = sub_22B7DC268();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_22B7CBF90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CFC78, &unk_22B7FE548);
  result = sub_22B7DC278();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
      result = MEMORY[0x231895FC0](*(v6 + 40), v17, 2);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 2 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_22B7CC184(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CFC70, &qword_22B7FE540);
  result = sub_22B7DC278();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_22B7DC658();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_22B7CC374(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CD818, &qword_22B7FE530);
  result = sub_22B7DC278();
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
      sub_22B7DC668();

      sub_22B7DB758();
      result = sub_22B7DC6B8();
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

uint64_t sub_22B7CC5AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CFC80, &unk_22B7FE558);
  result = sub_22B7DC278();
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
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_22B7DC668();
      sub_22B7DC688();
      if (v19)
      {

        sub_22B7DB758();
      }

      result = sub_22B7DC6B8();
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

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
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
        goto LABEL_30;
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
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22B7CC800(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_22B6F0AD4(a2, a3);
  result = sub_22B7DC278();
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
      result = sub_22B7DBFC8();
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

uint64_t sub_22B7CCA0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B6F0AD4(&qword_27D8CFC60, &qword_22B7FE528);
  result = sub_22B7DC278();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22B7DB2D8();
      sub_22B7CCF08(&unk_28141F358);

      result = sub_22B7DB5A8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_22B7CCC70()
{
  v2 = *MEMORY[0x277D85DE8];
  CMFBlockListCopyItemsForAllServicesService();
  v0 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277D84F90];
}

uint64_t sub_22B7CCF08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22B7DB2D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B7CCF4C(uint64_t a1, int a2)
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

uint64_t sub_22B7CCF94(uint64_t result, int a2, int a3)
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

id PostDeliveryReceiptProcessingComponent.runIndividually(withInput:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B7DB2B8();
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v75 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v75 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v75 - v16;
  MEMORY[0x28223BE20](v15);
  v76 = &v75 - v18;
  v19 = sub_22B7DA828();
  v77 = *(v19 - 8);
  v20 = *(v77 + 64);
  MEMORY[0x28223BE20](v19);
  v75 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v75 - v28;
  MEMORY[0x28223BE20](v27);
  v78 = &v75 - v30;
  v82 = &unk_283F85B68;
  v31 = swift_dynamicCastObjCProtocolConditional();
  if (v31)
  {
    v32 = v31;
    v79 = a1;
    swift_unknownObjectRetain();
    result = [v32 messageItems];
    if (!result)
    {
      goto LABEL_40;
    }

    v34 = result;
    sub_22B4D01A0(0, &qword_28141F288, 0x277D1AA70);
    v35 = sub_22B7DB918();

    if (v35 >> 62)
    {
      result = sub_22B7DC1C8();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v35 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x231895C80](0, v35);
LABEL_8:
          v37 = v36;

          v38 = [v37 balloonBundleID];
          v39 = [v2 validBundleID_];

          if (v39)
          {
            v40 = [v37 payloadData];
            if (v40)
            {
              v41 = v40;
              v42 = sub_22B7DA848();
              v44 = v43;

              v45 = sub_22B7DA838();
              sub_22B705E98(v42, v44);
            }

            else
            {
              v45 = 0;
            }

            v52 = IMDictionaryFromPayloadData();

            if (v52)
            {
              sub_22B7DB588();

              v53 = sub_22B7DB568();
            }

            else
            {
              v53 = 0;
            }

            v55 = v77;
            v54 = v78;
            v56 = IMSanitizedURLForIMExtensionPayloadURLKey();

            if (v56)
            {
              sub_22B7DA7D8();

              v57 = 0;
            }

            else
            {
              v57 = 1;
            }

            (*(v55 + 56))(v29, v57, 1, v19);
            sub_22B7AA5D4(v29, v54);
            sub_22B7AA644(v54, v26);
            if ((*(v55 + 48))(v26, 1, v19) == 1)
            {
              sub_22B7CDAE0(v26);
              sub_22B7DB288();
              sub_22B7DB2A8();
              v58 = sub_22B7DB298();
              v59 = sub_22B7DBCB8();
              if (os_log_type_enabled(v58, v59))
              {
                v60 = swift_slowAlloc();
                *v60 = 0;
                _os_log_impl(&dword_22B4CC000, v58, v59, "Unable to get payload URL. Bailing and passing input to next pipeline", v60, 2u);
                MEMORY[0x231898D60](v60, -1, -1);
              }

              (*(v80 + 8))(v17, v81);
              v61 = objc_allocWithZone(MEMORY[0x277D18E08]);
              v62 = [v61 initWithValue_];

              swift_unknownObjectRelease();
              sub_22B7CDAE0(v54);
              return v62;
            }

            v63 = v75;
            (*(v55 + 32))(v75, v26, v19);
            v64 = sub_22B7DB548();
            v65 = *(v64 + 48);
            v66 = *(v64 + 52);
            swift_allocObject();
            sub_22B7DB538();
            sub_22B7DB528();

            sub_22B7DB288();
            v67 = v76;
            sub_22B7DB2A8();
            v68 = sub_22B7DB298();
            v69 = sub_22B7DBCB8();
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              *v70 = 0;
              _os_log_impl(&dword_22B4CC000, v68, v69, "Sending message received receipt to AskTo", v70, 2u);
              MEMORY[0x231898D60](v70, -1, -1);
            }

            (*(v80 + 8))(v67, v81);
            (*(v55 + 8))(v63, v19);
            sub_22B7CDAE0(v54);
          }

          else
          {
            sub_22B7DB288();
            sub_22B7DB2A8();
            v49 = sub_22B7DB298();
            v50 = sub_22B7DBCB8();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              *v51 = 0;
              _os_log_impl(&dword_22B4CC000, v49, v50, "Not a screentime message request", v51, 2u);
              MEMORY[0x231898D60](v51, -1, -1);
            }

            (*(v80 + 8))(v14, v81);
          }

          v62 = [objc_allocWithZone(MEMORY[0x277D18E08]) initWithValue_];
          swift_unknownObjectRelease();

          return v62;
        }

        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v36 = *(v35 + 32);
          goto LABEL_8;
        }

        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }
    }

    sub_22B7DB288();
    sub_22B7DB2A8();
    v71 = sub_22B7DB298();
    v72 = sub_22B7DBC98();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_22B4CC000, v71, v72, "Message item does not exist. Bailing and passing input to next pipeline", v73, 2u);
      MEMORY[0x231898D60](v73, -1, -1);
    }

    (*(v80 + 8))(v11, v81);
    v74 = objc_allocWithZone(MEMORY[0x277D18E08]);
    v62 = [v74 initWithValue_];
    swift_unknownObjectRelease();
    return v62;
  }

  sub_22B7DB288();
  sub_22B7DB2A8();
  v46 = sub_22B7DB298();
  v47 = sub_22B7DBC98();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_22B4CC000, v46, v47, "Unable to convert input into PostDeliveryReceiptProcessingParameter. Bailing and passing input to next pipeline", v48, 2u);
    MEMORY[0x231898D60](v48, -1, -1);
  }

  (*(v80 + 8))(v8, v81);
  return [objc_allocWithZone(MEMORY[0x277D18E08]) initWithValue_];
}

PostDeliveryReceiptProcessingComponent __swiftcall PostDeliveryReceiptProcessingComponent.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.super._nextComponent = v2;
  result.super.super.isa = v1;
  return result;
}

uint64_t sub_22B7CDAE0(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_22B7CDB5C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D19700];
  v5 = IMBalloonExtensionIDWithSuffix();
  if (v5)
  {
    v6 = v5;
    v7 = sub_22B7DB6A8();
    v9 = v8;

    if (a2)
    {
      if (v7 == a1 && v9 == a2)
      {
        goto LABEL_20;
      }

      v11 = sub_22B7DC518();

      if (v11)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  else if (!a2)
  {
    return 1;
  }

  v12 = *MEMORY[0x277D196D0];
  v13 = IMBalloonExtensionIDWithSuffix();
  if (v13)
  {
    v14 = v13;
    v15 = sub_22B7DB6A8();
    v17 = v16;

    if (a2)
    {
      if (v15 != a1 || v17 != a2)
      {
        v19 = sub_22B7DC518();

        return (v19 & 1) != 0;
      }

LABEL_20:

      return 1;
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22B7CDCB0(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  v40 = 4 * v8;
  v38 = a3 >> 14;
  if (a3 >> 14 != 4 * v8)
  {
    v11 = a3;
    v13 = result;
    v14 = 0;
    v36 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v37 = a2 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      v15 = sub_22B7C1564(v11, v13, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_22B7DC2D8();
      }

      else
      {
        v16 = v15 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          *&v42 = v13;
          *(&v42 + 1) = v37;
          v18 = &v42 + v16;
        }

        else
        {
          v17 = v36;
          if ((v13 & 0x1000000000000000) == 0)
          {
            v17 = sub_22B7DC328();
          }

          v18 = (v17 + v16);
        }

        v19 = *v18;
        if (*v18 < 0)
        {
          v32 = (__clz(v19 ^ 0xFF) - 24);
          if (v32 > 2)
          {
            if (v32 == 3)
            {
              v34 = ((v19 & 0xF) << 12) | ((v18[1] & 0x3F) << 6) | v18[2] & 0x3Fu;
            }

            else
            {
              v35 = ((v19 & 0xF) << 18) | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6) | v18[3] & 0x3Fu;
            }
          }

          else if (v32 != 1)
          {
            v33 = v18[1] & 0x3F | ((v19 & 0x1F) << 6);
          }
        }
      }

      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      sub_22B7DC698();
      v54 = v44;
      v55 = v45;
      v56 = v46;
      v52 = v42;
      v53 = v43;
      a4 = sub_22B7DC6A8();
      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      MEMORY[0x231895FF0](0);
      v49 = v44;
      v50 = v45;
      v51 = v46;
      v47 = v42;
      v48 = v43;
      v20 = sub_22B7DC6A8();
      v21 = sub_22B7C1564(v11, v13, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_22B7DB718();
        v11 = result;
      }

      else
      {
        v22 = v21 >> 16;
        result = sub_22B7DC2C8();
        v11 = ((result + v22) << 16) | 5;
      }

      if (a7 < 0)
      {
        break;
      }

      if (!a7)
      {
        goto LABEL_46;
      }

      result = sub_22B7DB1C8();
      if (result)
      {
        if (v38 > v11 >> 14)
        {
          goto LABEL_47;
        }

        v23 = *a8;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v23;
        if ((result & 1) == 0)
        {
          result = sub_22B71B8E0(0, *(v23 + 16) + 1, 1, v23);
          v23 = result;
          *a8 = result;
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_22B71B8E0((v24 > 1), v25 + 1, 1, v23);
          v23 = result;
          *a8 = result;
        }

        *(v23 + 16) = v25 + 1;
        *(v23 + 8 * v25 + 32) = v20;
      }

      v26 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_45;
      }

      if ((a5 & 1) == 0)
      {
        goto LABEL_35;
      }

      if (v26 < 0xFFFFFFFF80000000)
      {
        goto LABEL_48;
      }

      if (v26 > 0x7FFFFFFF)
      {
        goto LABEL_49;
      }

      if (__OFSUB__(v26, 1))
      {
        goto LABEL_50;
      }

      v27 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
      v28 = v27 | (v27 >> 4) | ((v27 | (v27 >> 4)) >> 8);
      v29 = v28 | (v28 >> 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_51;
      }

      if (v31 != v26)
      {
        if (v40 == v11 >> 14)
        {
          return result;
        }
      }

      else
      {
LABEL_35:
        result = sub_22B7DB1C8();
        if ((result & 1) == 0 || v11 >> 14 == v40)
        {
          return result;
        }
      }

      ++v14;
    }

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
  }

  return result;
}

unint64_t sub_22B7CE088(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  v43 = a5;
  if (a3 < 0x4000)
  {
    return result;
  }

  v10 = a3;
  v12 = result;
  result = sub_22B7030EC(a3, result, a2);
  if (result >= 0x4000)
  {
    v13 = 0;
    v41 = v10 >> 14;
    while ((a2 & 0x1000000000000000) != 0)
    {
      v20 = sub_22B7DB728();
      sub_22B7C1564(v20, v12, a2);
      sub_22B7DC2D8();
LABEL_27:
      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      sub_22B7DC698();
      v56 = v46;
      v57 = v47;
      v58 = v48;
      v54 = v44;
      v55 = v45;
      a4 = sub_22B7DC6A8();
      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      MEMORY[0x231895FF0](0);
      v51 = v46;
      v52 = v47;
      v53 = v48;
      v49 = v44;
      v50 = v45;
      v27 = sub_22B7DC6A8();
      result = sub_22B74AED0(v10, v12, a2);
      if (a7 < 0)
      {
        goto LABEL_53;
      }

      if (!a7)
      {
        goto LABEL_55;
      }

      v10 = result;
      result = sub_22B7DB1C8();
      if (result)
      {
        if (v41 < v10 >> 14)
        {
          goto LABEL_56;
        }

        v28 = *a8;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v28;
        if ((result & 1) == 0)
        {
          result = sub_22B71B8E0(0, *(v28 + 16) + 1, 1, v28);
          v28 = result;
          *a8 = result;
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          result = sub_22B71B8E0((v29 > 1), v30 + 1, 1, v28);
          v28 = result;
          *a8 = result;
        }

        *(v28 + 16) = v30 + 1;
        *(v28 + 8 * v30 + 32) = v27;
      }

      v31 = __OFADD__(v13++, 1);
      if (v31)
      {
        goto LABEL_54;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_43;
      }

      if (v13 < 0xFFFFFFFF80000000)
      {
        goto LABEL_57;
      }

      if (v13 > 0x7FFFFFFF)
      {
        goto LABEL_58;
      }

      if (__OFSUB__(v13, 1))
      {
        goto LABEL_59;
      }

      v32 = (v13 - 1) | ((v13 - 1) >> 1) | (((v13 - 1) | ((v13 - 1) >> 1)) >> 2);
      v33 = v32 | (v32 >> 4) | ((v32 | (v32 >> 4)) >> 8);
      v34 = v33 | (v33 >> 16);
      v31 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v31)
      {
        goto LABEL_60;
      }

      if (v35 != v13)
      {
        if (v10 < 0x4000)
        {
          return result;
        }
      }

      else
      {
LABEL_43:
        result = sub_22B7DB1C8();
        if ((result & 1) == 0 || !(v10 >> 14))
        {
          return result;
        }
      }

      result = sub_22B7030EC(v10, v12, a2);
      if (result < 0x4000)
      {
        goto LABEL_52;
      }
    }

    v14 = result >> 16;
    if ((a2 & 0x2000000000000000) != 0)
    {
      *&v44 = v12;
      *(&v44 + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v43 + v14 + 3) & 0xC0) == 0x80)
      {
        v21 = -2;
        do
        {
          v22 = *(&v44 + v14 + v21--) & 0xC0;
        }

        while (v22 == 128);
        v19 = v21 + 1;
        goto LABEL_21;
      }
    }

    else
    {
      v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v40 = result;
        v15 = sub_22B7DC328();
        result = v40;
      }

      v16 = v15 + v14;
      if ((*(v16 - 1) & 0xC0) == 0x80)
      {
        v17 = -2;
        do
        {
          v18 = *(v16 + v17--) & 0xC0;
        }

        while (v18 == 128);
        v19 = v17 + 1;
        goto LABEL_21;
      }
    }

    v19 = -1;
LABEL_21:
    v23 = sub_22B7C1564((result + (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5, v12, a2) >> 16;
    if ((a2 & 0x2000000000000000) != 0)
    {
      *&v44 = v12;
      *(&v44 + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
      v25 = &v44 + v23;
    }

    else
    {
      v24 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v24 = sub_22B7DC328();
      }

      v25 = (v24 + v23);
    }

    v26 = *v25;
    if (*v25 < 0)
    {
      v36 = (__clz(v26 ^ 0xFF) - 24);
      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v38 = ((v26 & 0xF) << 12) | ((v25[1] & 0x3F) << 6) | v25[2] & 0x3Fu;
        }

        else
        {
          v39 = ((v26 & 0xF) << 18) | ((v25[1] & 0x3F) << 12) | ((v25[2] & 0x3F) << 6) | v25[3] & 0x3Fu;
        }
      }

      else if (v36 != 1)
      {
        v37 = v25[1] & 0x3F | ((v26 & 0x1F) << 6);
      }
    }

    goto LABEL_27;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_22B7CE50C(uint64_t a1, uint64_t *a2, char **a3)
{
  v5 = *a2;
  if (*(*a2 + 16) && (v6 = *(v5 + 40), result = sub_22B7DC658(), v8 = -1 << *(v5 + 32), v9 = result & ~v8, ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v11 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_22B71B8E0(0, *(v11 + 2) + 1, 1, v11);
      *a3 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_22B71B8E0((v13 > 1), v14 + 1, 1, v11);
      *a3 = v11;
    }

    *(v11 + 2) = v14 + 1;
    *&v11[8 * v14 + 32] = a1;
    return sub_22B7C8CCC(&v15, a1);
  }

  return result;
}

uint64_t sub_22B7CE640(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t *a8, char **a9)
{
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  v38 = 4 * v9;
  v37 = a3 >> 14;
  if (a3 >> 14 != 4 * v9)
  {
    v12 = a3;
    v14 = result;
    v15 = 0;
    v35 = a2 & 0xFFFFFFFFFFFFFFLL;
    v34 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      v16 = sub_22B7C1564(v12, v14, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_22B7DC2D8();
      }

      else
      {
        v17 = v16 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          *&v40 = v14;
          *(&v40 + 1) = v35;
          v19 = &v40 + v17;
        }

        else
        {
          v18 = v34;
          if ((v14 & 0x1000000000000000) == 0)
          {
            v18 = sub_22B7DC328();
          }

          v19 = (v18 + v17);
        }

        v20 = *v19;
        if (*v19 < 0)
        {
          v30 = (__clz(v20 ^ 0xFF) - 24);
          if (v30 > 2)
          {
            if (v30 == 3)
            {
              v32 = ((v20 & 0xF) << 12) | ((v19[1] & 0x3F) << 6) | v19[2] & 0x3Fu;
            }

            else
            {
              v33 = ((v20 & 0xF) << 18) | ((v19[1] & 0x3F) << 12) | ((v19[2] & 0x3F) << 6) | v19[3] & 0x3Fu;
            }
          }

          else if (v30 != 1)
          {
            v31 = v19[1] & 0x3F | ((v20 & 0x1F) << 6);
          }
        }
      }

      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      sub_22B7DC698();
      v52 = v42;
      v53 = v43;
      v54 = v44;
      v50 = v40;
      v51 = v41;
      a4 = sub_22B7DC6A8();
      sub_22B7DC6C8();
      MEMORY[0x231895FF0](a4);
      MEMORY[0x231895FF0](0);
      v47 = v42;
      v48 = v43;
      v49 = v44;
      v45 = v40;
      v46 = v41;
      v21 = sub_22B7DC6A8();
      v22 = sub_22B7C1564(v12, v14, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_22B7DB718();
        v12 = result;
      }

      else
      {
        v23 = v22 >> 16;
        result = sub_22B7DC2C8();
        v12 = ((result + v23) << 16) | 5;
      }

      if (a7 < 0)
      {
        break;
      }

      if (!a7)
      {
        goto LABEL_42;
      }

      result = sub_22B7DB1C8();
      if (result)
      {
        if (v37 > v12 >> 14)
        {
          goto LABEL_43;
        }

        result = sub_22B7CE50C(v21, a8, a9);
      }

      v24 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_41;
      }

      if ((a5 & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v24 < 0xFFFFFFFF80000000)
      {
        goto LABEL_44;
      }

      if (v24 > 0x7FFFFFFF)
      {
        goto LABEL_45;
      }

      if (__OFSUB__(v24, 1))
      {
        goto LABEL_46;
      }

      v25 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
      v26 = v25 | (v25 >> 4) | ((v25 | (v25 >> 4)) >> 8);
      v27 = v26 | (v26 >> 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_47;
      }

      if (v29 != v24)
      {
        if (v38 == v12 >> 14)
        {
          return result;
        }
      }

      else
      {
LABEL_31:
        result = sub_22B7DB1C8();
        if ((result & 1) == 0 || v12 >> 14 == v38)
        {
          return result;
        }
      }

      ++v15;
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
    __break(1u);
  }

  return result;
}

unint64_t sub_22B7CE9A0(unint64_t result, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7, char **a8)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return result;
  }

  v14 = result;
  v15 = 4 * v8;
  v16 = (result >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v24 = a2 & 0xFFFFFFFFFFFFFFLL;
  v18 = 15;
  while (1)
  {
    while (1)
    {
      result = sub_22B7CE640(v14, a2, v18, a3, a4 & 1, a5, a6, a7, a8);
      if ((v18 & 0xC) == v17 || (v18 & 1) == 0)
      {
        break;
      }

      if (v8 <= v18 >> 16)
      {
        goto LABEL_32;
      }

LABEL_16:
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_8;
      }

LABEL_17:
      v19 = v18 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v27[0] = v14;
        v27[1] = v24;
        v20 = *(v27 + v19);
      }

      else
      {
        result = v23;
        if ((v14 & 0x1000000000000000) == 0)
        {
          result = sub_22B7DC328();
        }

        v20 = *(result + v19);
      }

      v21 = v20;
      v22 = __clz(v20 ^ 0xFF) - 24;
      if (v21 >= 0)
      {
        LOBYTE(v22) = 1;
      }

      v18 = ((v19 + v22) << 16) | 5;
      if (v15 == v18 >> 14)
      {
        return result;
      }
    }

    if ((v18 & 0xC) == v17)
    {
      break;
    }

    if (v8 <= v18 >> 16)
    {
      goto LABEL_31;
    }

LABEL_15:
    if (v18)
    {
      goto LABEL_16;
    }

    result = sub_22B7C1670(v18, v14, a2);
    v18 = v18 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_8:
    result = sub_22B7DB718();
    v18 = result;
    if (v15 == result >> 14)
    {
      return result;
    }
  }

  result = sub_22B7C1398(v18, v14, a2);
  v18 = result;
  if (v8 > result >> 16)
  {
    goto LABEL_15;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B7CEB74()
{
  result = sub_22B7DB678();
  qword_281422600 = result;
  return result;
}

uint64_t sub_22B7CEBB0()
{
  v0 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_22B7DA828();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_22B7DA808();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_22B7CDAE0(v3);
    return 0;
  }

  (*(v5 + 32))(v11, v3, v4);
  while (1)
  {
    v14 = sub_22B7DA738();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      break;
    }

LABEL_5:
    sub_22B7DA7C8();
    (*(v5 + 40))(v11, v9, v4);
  }

  if (sub_22B7DA778() == 0x6F685070756F7247 && v18 == 0xEF6567616D496F74)
  {

    goto LABEL_5;
  }

  v13 = sub_22B7DC518();

  if (v13)
  {
    goto LABEL_5;
  }

  v19 = sub_22B7DA778();
  (*(v5 + 8))(v11, v4);
  return v19;
}

id PersistedCollaborationNotice.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PersistedCollaborationNotice.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PersistedCollaborationNotice();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PersistedCollaborationNotice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersistedCollaborationNotice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PersistedCollaborationNotice.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22B7DB678();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_22B7CF008@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_22B7DA928();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_22B7DA968();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_22B7CF0A8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_22B7368FC(a1, &v16 - v10);
  v12 = *a2;
  v13 = sub_22B7DA968();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_22B7DA8B8();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

void sub_22B7CF1D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22B7DA848();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22B7CF23C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_22B7DA838();
  }

  v5 = v3;
  [v2 setMetadata_];
}

void sub_22B7CF2B4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22B7DB6A8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_22B7CF318(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_22B7DB678();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_22B7CF388@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PersistedCollaborationNotice();
  result = sub_22B7DC2F8();
  *a1 = result;
  return result;
}

void sub_22B7CF420()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[IMDBroadcastController registerSharedProvider:]"];
  [v1 handleFailureInFunction:v0 file:@"IMDBroadcastController.m" lineNumber:27 description:@"Can't set shared provider more than once!"];
}

void sub_22B7CF4C0(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 guid];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "Chat GUID %@ or message GUID %@ not found", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7CF574(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Got nil chat for chatID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7CF628(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "No account or ID set: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7CF6F8(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  sub_22B4F9594(&dword_22B4CC000, v2, v3, "will update sync state: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7CF784(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  sub_22B4F9594(&dword_22B4CC000, v2, v3, "broadcasting current sync state: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7CF80C(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  sub_22B4F9594(&dword_22B4CC000, v2, v3, "broadcasting final requested update: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7CFA14(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 8) isLoaded];
  sub_22B4FFBA0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7CFAD8(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  [*a2 isLoaded];
  v9 = [*a2 bundleIdentifier];
  sub_22B4FFBA0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7CFBC4(uint64_t a1, Class *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = NSStringFromClass(*a2);
  sub_22B4FFBA0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7CFC70(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_22B4CC000, log, OS_LOG_TYPE_DEBUG, "%@: Service properties: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7CFCFC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "%@: Load failed! Disabling any active accounts  (Error: %@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B7CFD84(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "   => Disabling: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7CFDFC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Latest item time is nil, can't update chat's lastTUConversationCreatedDate! item: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7CFE74(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "Failed to respond to ST request with answer: %@ error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7CFFE4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Error checking if sysdiagnose is in progress: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0098(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "No message dictionary to report for message: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0110(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "No chat found to report not junk for message guid: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0188(void *a1)
{

  objc_end_catch();
}

void sub_22B7D01BC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = @"recipient-uri";
  v3 = 2080;
  v4 = "messageDictionary";
  _os_log_error_impl(&dword_22B4CC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_22B7D03B8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "Found attribute. Value = [%@], string in range", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0430(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  sub_22B517C64();
  sub_22B517C7C(&dword_22B4CC000, v2, v3, "Failed transcoding file transfer: %@   error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D04E0(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed transcoding file transfer: %@   error: <NO OUTPUT PATH FOR ENCODED ITEM>", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B7D055C(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  sub_22B517C64();
  sub_22B517C7C(&dword_22B4CC000, v2, v3, "Error cleaning up linked path: %@  error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D06AC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 guid];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_22B4CC000, a4, OS_LOG_TYPE_ERROR, "Failed to find rowID for guid %@ to mark transfer as failed", a1, 0xCu);
}

void sub_22B7D0738(unsigned __int8 *a1, unsigned __int16 a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "IMSyndicationActionPipelineParameter received wrong version of SyndicationAction. Got: %d, expected: %d", v5, 0xEu);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0838(unsigned __int8 a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "IMSyndicationActionPipelineParameter invalid SyndicationItemType: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0900()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D093C()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D0978(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  sub_22B531164();
  sub_22B517C7C(&dword_22B4CC000, v2, v3, "Error fetching subscription validation tokens for handle handleID: %@ Error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D09E8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  sub_22B531164();
  sub_22B517C7C(&dword_22B4CC000, v2, v3, "Error fetching subscription validation token for handle handleID: %@ Error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0A58()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D0A94()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0B08(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  sub_22B531164();
  sub_22B531178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0B80()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D0BE4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Reindex request failed with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0C5C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed to clear index state due to restore from backup: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0CD4(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 context];
  v4 = [v3 batchIdentifier];
  sub_22B53EEE4();
  sub_22B53EEF0(&dword_22B4CC000, a2, v5, "Multiple message with SSM seen for batch %@, grabbing the latest one", v7);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0D7C()
{
  v4 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B53EEF0(&dword_22B4CC000, v0, v1, "Couldn't find batch ID or message index in %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0DE8(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 batchNumber];
  sub_22B53EEE4();
  sub_22B53EEF0(&dword_22B4CC000, a2, v4, "Error tracking batch %@", v6);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0E78()
{
  v4 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B53EEF0(&dword_22B4CC000, v0, v1, "Couldn't find tracker for batch %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D0EE4(void *a1, NSObject *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a1 service];
  v5 = [a1 service];
  v6 = [v5 serviceIdentifier];
  v7 = [a1 contextWithSSM];
  v8 = [a1 contextWithSSM];
  v9 = [v8 batchIdentifier];
  v11 = 134218754;
  v12 = v4;
  v13 = 2112;
  v14 = v6;
  v15 = 2048;
  v16 = v7;
  v17 = 2112;
  v18 = v9;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed to send batch complete, but we had missing prereqs service %p %@, context %p %@", &v11, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1054(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = sub_22B4E3C10([a1 state]);
  v2 = sub_22B4E3C10(1uLL);
  sub_22B544EE8();
  sub_22B544EC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1108(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = sub_22B4E3C10([a1 state]);
  v2 = sub_22B4E3C10(2uLL);
  sub_22B544EE8();
  sub_22B544EC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D11BC(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = sub_22B4E3C10([a1 state]);
  v4 = sub_22B4E3C10(3uLL);
  v6 = 138412546;
  v7 = v3;
  sub_22B544EE8();
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Invalid state transition attempted %@ -> %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D127C(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = sub_22B4E3C10([a1 state]);
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1310(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) guid];
  v4 = [*(a1 + 32) getCMMState];
  if (v4 <= 4)
  {
    v5 = off_278704090[v4];
  }

  sub_22B544EC4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22B7D13F0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 40);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  sub_22B517C7C(&dword_22B4CC000, a2, a3, "Error fetching moment share from %@. Error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B7D146C()
{
  sub_22B544F14();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 momentShare];
  v3 = [v0 guid];
  sub_22B544EE8();
  sub_22B544EC4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B7D151C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sub_22B4E3C10([a2 state]);
  sub_22B544EE8();
  sub_22B544EC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D15C8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Attempted to accept a moment share that is in an unknown state %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1630(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) shareURL];
  v7 = [*(a1 + 40) guid];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = a2;
  v13 = 2112;
  v14 = v7;
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "Failed to accept the share at url: %@, error: %@ for message %@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1708()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Scheduling retry of moment share fetch after %{public}@ seconds", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1770(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) uuid];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1848()
{
  sub_22B544F14();
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(v0 + 32) guid];
  v3 = *(v1 + 40);
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B7D18FC()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Failed to create temporary directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1964()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Failed to remove existing item from temporary directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D19CC()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Failed to copy item to temporary directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1A34()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B544ED4();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Failed copy photo/video URL: %@, error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1AA0()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B544ED4();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Failed copy of video complement URL: %@, error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1B0C()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1B74()
{
  sub_22B544F14();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 uuid];
  sub_22B544ED4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1C0C()
{
  sub_22B544F14();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 uuid];
  sub_22B544ED4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1CA4()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B544ED4();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Failed copy of file URLs: %@, error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1D10()
{
  sub_22B544F14();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 48) uuid];
  sub_22B544ED4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1DAC()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Unable to mark message %@ as completed when it should be", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1E14()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Missing transfer map for message %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1E7C(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 uuid];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1F08(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 uuid];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D1F94(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 message];
  v2 = [v1 guid];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2038(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 uniqueID];
  v3 = 138412546;
  v4 = v1;
  v5 = 2080;
  v6 = "_pendingCodesToDevicesForApproval";
  _os_log_error_impl(&dword_22B4CC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v3, 0x16u);

  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D212C(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Updating SafetyMonitor on Notification response failed with error %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2220(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Did receive a display name change, but found no identifier in domain %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D22E8(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 chatIdentifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "No message for chat: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D23C4(void *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 guid];
  v6 = [a2 service];
  v7 = [v6 internalName];
  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "Requested to report junk for message GUID %@ but service %@ does not support this!", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D24C0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Message not found to update SyndicationAction: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2538(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Error processing SyndicationAction: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D25C4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "Key value store will update: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D263C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "Key value store did update value: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D26B4()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B570F84();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Temporary file URL was nil for transferName (%@) and transfer: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D271C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Unable to copy file transfer: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D27D8()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B570F84();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Receive file URL was nil for transferName (%@) and transfer: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2840()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B570F84();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Failing tap to download for transferID %@ due to default com.apple.imessage FailTapToDownload transfer %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2978(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Attachments - Failed to update transfer preview size for %@, transfer not found", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D29F0()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B570F84();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Failed to release sandbox token, %@ token:%@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2A58()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B570F84();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Failed to consume sandbox token, %@ token:%@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2AC0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_22B4CC000, log, OS_LOG_TYPE_DEBUG, "Writing other plugin payload attachment to disk.", buf, 2u);
}

void sub_22B7D2B00(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_22B4CC000, log, OS_LOG_TYPE_DEBUG, "Writing image plugin payload attachment to disk.", buf, 2u);
}

void sub_22B7D2B40(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "%s was given no transfer guids", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2C3C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "Error fetching off grid subscription validation tokens for handle handleID: %@ Error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2CC8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Cache miss for subscription validation token for handleID %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2D84(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2E4C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 guid];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_22B4CC000, a4, OS_LOG_TYPE_ERROR, "Unexpected state! Chat %@ to sync has syncState 1", a1, 0xCu);
}

void sub_22B7D2EEC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D2FA0(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  sub_22B5867DC();
  sub_22B544EC4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3074()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3134(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  sub_22B5867DC();
  sub_22B544EC4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3208()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3288()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B5867C8();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3304(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "version")}];
  sub_22B5867C8();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D33C4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3444()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B5867C8();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D34C0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3540()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B5867C8();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D35BC(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "version")}];
  sub_22B5867C8();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D367C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D36FC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B5867C8();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3778(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  sub_22B544EC4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3818()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  sub_22B5867C8();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_ERROR, "%s: Bailing receive notice. Could not unarchive event with expected type '%@' error: %@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B7D38A4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "eventType")}];
  sub_22B5867C8();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3950()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_SWHighlightEventAllowListClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMDCollaborationNoticeDispatcher.m" lineNumber:35 description:{@"Unable to find class %s", "_SWHighlightEventAllowList"}];

  __break(1u);
}

void sub_22B7D39CC(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SharedWithYouLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMDCollaborationNoticeDispatcher.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22B7D3A4C(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 service];
  v6 = [a2 actualService];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_DEBUG, "Protobuf4 will override messages' service (current %@, override %@)", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3B8C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch client state: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3C04(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_FAULT, "Failed to inspect client state: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3C90()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"DMUserDataDisposition _DMGetUserDataDisposition(void)"];
  [v0 handleFailureInFunction:v1 file:@"IMDaemonCoreSpotlightUtilities.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_22B7D3D4C(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DataMigrationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMDaemonCoreSpotlightUtilities.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22B7D3DCC(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 fromIdentifier];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "Empty normalizedFamilyMemberHandles. Dropping Family message received from: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3E54(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 fromIdentifier];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "(nil SCI) Message is not from known family member, received from: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3EDC()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  _os_log_error_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_ERROR, "FAFetchFamilyCircleRequest failed %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_22B7D3F94(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 48) fromIdentifier];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "(with SCI lookup) Message is not from known family member, received from: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4020()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFAFetchFamilyCircleRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMFamilySenderMessageProcessingPipelineComponent.m" lineNumber:32 description:{@"Unable to find class %s", "FAFetchFamilyCircleRequest"}];

  __break(1u);
}

void sub_22B7D409C(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FamilyCircleLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMFamilySenderMessageProcessingPipelineComponent.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22B7D41CC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D427C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D432C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "Chunk contained no valid message guids, stopping chunking.", buf, 2u);
}

void sub_22B7D436C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D43DC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D444C(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 chatIdentifier];
  sub_22B53EEE4();
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Missing last sent date for chatID %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D453C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22B5AA7C8(&dword_22B4CC000, a1, a3, "LQM-WRM CoreAnalytics isLQMSwitchEnabled is %{BOOL}d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D45B0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B5AA7E4();
  sub_22B5AA7C8(&dword_22B4CC000, v0, v1, "LQM-WRM CoreAnalytics isSender is %{BOOL}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4618(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22B5AA7C8(&dword_22B4CC000, a1, a3, "LQM-WRM CoreAnalytics isDynamicLQMDisabledByWRMCB is %{BOOL}d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D468C()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B5AA7E4();
  sub_22B5AA7C8(&dword_22B4CC000, v0, v1, "LQM-WRM CoreAnalytics networkPreference is %{BOOL}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D46F4()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B5AA7E4();
  sub_22B5AA7C8(&dword_22B4CC000, v0, v1, "LQM-WRM CoreAnalytics doesWRMRecommendDisablingLQM is %{BOOL}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D475C()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B5AA7E4();
  sub_22B5AA7C8(&dword_22B4CC000, v0, v1, "LQM-WRM CoreAnalytics is5GInterfaceExpensive is %{BOOL}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4808(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_22B4CC000, log, OS_LOG_TYPE_FAULT, "Failed type check! {key: %@, class: %@}", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B7D48B8(uint64_t a1)
{
  sub_22B5BEE6C(a1, *MEMORY[0x277D85DE8]);
  sub_22B5BEE7C();
  sub_22B544EF8(&dword_22B4CC000, v1, v2, "%@ is not running in the background", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4920(uint64_t a1)
{
  sub_22B5BEE6C(a1, *MEMORY[0x277D85DE8]);
  sub_22B5BEE7C();
  sub_22B544EF8(&dword_22B4CC000, v1, v2, "%@ send throttled", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4988(uint64_t a1)
{
  sub_22B5BEE6C(a1, *MEMORY[0x277D85DE8]);
  sub_22B5BEE7C();
  sub_22B544EF8(&dword_22B4CC000, v1, v2, "%@ tried sending to an unauthorized recipient", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D49F0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "Failed to find session for service %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4A5C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  sub_22B5BEE7C();
  sub_22B544EF8(&dword_22B4CC000, v2, v3, "%@ send failed", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4AC8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) identifier];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "Error posting notification request %@. Error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4B80()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Failed fetching new personal nickname: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4BE8()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D4C24()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error sending nickname over IDS: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4C8C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_22B4CC000, a4, OS_LOG_TYPE_ERROR, "Could not get IDS recipient ID from handle: %@", a1, 0xCu);
}

void sub_22B7D4D04(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "Could not get my IDS ID from handle: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4D74()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D4DB0()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D4DEC(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v4 = [a2 localizedDescription];
  sub_22B5D82F4();
  sub_22B544EC4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4EAC()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B5D82F4();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Received a personal nickname update, but it was not from one of our own devices From: %@, ID:%@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4F1C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22B544EF8(&dword_22B4CC000, a1, a3, "%s: Bailing receive notice. Zero length fromHandle. Dropping message", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D4F94(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  sub_22B5D82F4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D503C()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D5078()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D50B4()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D50F0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Failed to delete avatar with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5158()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Failed to delete wallpaper with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D51C0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Failed to delete watch wallpaper with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5228()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "No handle ID provided for nickname %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5290()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "_updateNicknameInHandledMap called with nothing to update for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D52F8(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 handle];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D53C8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error while loading personal nickname: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5430()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B5D82F4();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Error writing data to KVStore %@ %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D54A0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error writing personal nickname data to KVStore %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5508()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error writing data to kvStore %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5570()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error reading pendingNickname %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D55D8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error unarchiving storedPersonalNickname %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5640()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error deleting data from KVStore %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D56A8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error reading nickNameDecryptionKey %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5710()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error reading wallpaperTag %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5778()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error reading low res wallpaperTag %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D57E0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error reading wallpaper metadata Tag %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5848()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error reading avatar recipe Tag %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D58B0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error reading storedPersonalNickname %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5918()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error reading nickname for pending upload %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5980()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error unarching pending nickname upload %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D59E8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Error deleting nickname avatar from path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5AA0()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D5ADC()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D5B18()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D5B54()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D5B90()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Scheduled message was marked as failed but didn't update the scheduleState: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5BF8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "IMDMessageRecordRef was not created for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5C60()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "IMMessageItem was not created for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5CC8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  sub_22B517C64();
  sub_22B517C7C(&dword_22B4CC000, v2, v3, "Failed to delete %@ from index with error %@");
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5D34(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  sub_22B517C64();
  sub_22B517C7C(&dword_22B4CC000, v2, v3, "Failed to add %@ to index with error %@");
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5DC8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Failed to find message to mark as unread for GUID:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5E30()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Failed to get a chat for message to be marked as unread: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5EAC()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "ASSERTION FAILED: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5F14()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Failed to store edited message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5F7C()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Incomplete sticker user info for file transfer guid: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D5FF8(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = &unk_283F4EE88;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Error getting Carrier Bundle dictionary. Key Hierarchy -> %@.\nCarrier Bundle object -> %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6100(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 serviceName];
  sub_22B593850(&dword_22B4CC000, v2, v3, "Debug info, service: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6188(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 account];
  sub_22B593850(&dword_22B4CC000, v2, v3, "Debug info, account: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6278(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Invalid businessID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6304()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B5FE828();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D638C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B5FE828();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6414()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B5FE828();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D649C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B5FE828();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6524()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B5FE828();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6618(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 guid];
  v6 = 138412546;
  v7 = v4;
  v8 = 2048;
  v9 = [a1 rowID];
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "Fetching unread count report for chat GUID %@ chat rowID %lld", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D66D4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "Expected to blocklist chat but groupID does not exist: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6740(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "ASSERTION FAILED: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6804(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "Error marking chats as reviewed: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6924(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D69B0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Not marking attachment path for cachedelete, not in attachment store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6A70()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Could not find IMMessageItem from temporary transferGUID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6AD8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Could not find a matching message record for temporary transferGUID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6B40()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B544EF8(&dword_22B4CC000, v0, v1, "Could not find a matching attachment record for temporary transferGUID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6BA8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  sub_22B53EEE4();
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "updateTemporaryTransferGUIDsOn got something thats not a IMMessageItem: %@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6C30(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = [a2 fileTransferGUIDs];
  _os_log_error_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_ERROR, "We may have failed to update a message (guid %@) in the DB, and orphaned its attachments whose GUIDs we just updated %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6CE4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getILMessageFilterCapabilitiesQueryRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMDIdentityLookupDecisioningManager.m" lineNumber:23 description:{@"Unable to find class %s", "ILMessageFilterCapabilitiesQueryRequest"}];

  __break(1u);
}

void sub_22B7D6D60(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IdentityLookupLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMDIdentityLookupDecisioningManager.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22B7D6DE0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getILMessageFilterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMDIdentityLookupDecisioningManager.m" lineNumber:21 description:{@"Unable to find class %s", "ILMessageFilter"}];

  __break(1u);
}

void sub_22B7D6E5C()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getILMessageFilterQueryRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMDIdentityLookupDecisioningManager.m" lineNumber:20 description:{@"Unable to find class %s", "ILMessageFilterQueryRequest"}];

  __break(1u);
}

void sub_22B7D6F28()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D185E0];
  sub_22B633BCC();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D6FB0()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_22B633BCC();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D7038(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed to send reachability response to %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D70C4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "Failed to create IMMessageItem for scheduled message from recordRef.", buf, 2u);
}

void sub_22B7D7104(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 guid];
  v6 = 138412546;
  v7 = v4;
  v8 = 2048;
  v9 = [a1 rowID];
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "Counting unread messages for chat GUID %@ chat rowID %lld", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D71C0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "Failed adding %@ to Spotlight with error %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B7D724C(NSObject *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
  v4 = 136315906;
  v5 = "chat";
  v6 = 2080;
  v7 = "[IMDChatStore deleteChat:]";
  v8 = 1024;
  v9 = 839;
  v10 = 2112;
  v11 = v2;
  _os_log_error_impl(&dword_22B4CC000, a1, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", &v4, 0x26u);

  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B7D732C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D73B0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D7420()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D745C()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7498()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D74D4()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7510()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D7580()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D75BC()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D75F8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_ERROR, "Start emergency message reported error: %@, message: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D767C()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D76B8()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D76F4()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7730()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D776C(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "Stewie emergency stop sharing reported error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D77F4()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7830()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D78A0()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D78DC()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7918()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7954()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D79C4()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7A00()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7A3C()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7A78()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D7AE8()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7B24()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D7B94()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D7BE4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 chatIdentifier];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "generateStopTranscriptSharingStatusItemForChat: called for unsupported chat identifier: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D7C6C()
{
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  sub_22B53EEE4();
  v1 = v0;
  sub_22B593850(&dword_22B4CC000, v2, v3, "Dropping Stewie message, class not supported: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D7CF4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getDMFEmergencyModeMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMDChorosController.m" lineNumber:57 description:{@"Unable to find class %s", "DMFEmergencyModeMonitor"}];

  __break(1u);
}

void sub_22B7D7D70(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DeviceManagementLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMDChorosController.m" lineNumber:56 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22B7D7E48(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "FindMyLocateSession startUpdatingFriendsWithCompletion failed with an error. This breaks our ability to get FindMy friendship updates throughout the app. If you see this error, please file a radar to the FindMy team. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D7F24(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "SyndicationAction is nil when attempting to update IMDChat: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8044()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_ERROR, "Unable to apply edits, message edit is older than previously processed edit. ThisEdit: %@, DateOfLastEdit: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D80C8()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D8104()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D8140()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D817C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D81EC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D825C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D82CC()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D8308()
{
  sub_22B51470C();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22B7D836C()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_22B65EC28();
  sub_22B5FE838(&dword_22B4CC000, v0, v1, "%s Invalid url: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D83E4()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_22B65EC28();
  sub_22B5FE838(&dword_22B4CC000, v0, v1, "%s Invalid notice: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D845C()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_22B65EC28();
  sub_22B5FE838(&dword_22B4CC000, v0, v1, "%s Invalid url: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D84D4()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_22B65EC28();
  sub_22B5FE838(&dword_22B4CC000, v0, v1, "%s Invalid notice: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8560(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Error persisting noticeEventHistory, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D85EC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = @"mT";
  v3 = 2080;
  v4 = "dict";
  _os_log_error_impl(&dword_22B4CC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8688(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Attempting to relay a display name change, but found no identifier in domain %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8714(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 chipList];
  [v1 count];
  sub_22B593850(&dword_22B4CC000, v2, v3, "Failed to generate relay data for chip list of items: %lu", v4, v5, v6, v7, 0);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D87A4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Failed to generate relay data for chip list, we cannot parse the attributes: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8860(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 cards];
  [v1 count];
  sub_22B593850(&dword_22B4CC000, v2, v3, "Failed to generate data for rich card of items: %lu", v4, v5, v6, v7, 0);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8904(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 service];
  v2 = [v1 internalName];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v3, v4, "%@ does not yet support relaying a message.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B7D89A0(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 service];
  v2 = [v1 internalName];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v3, v4, "%@ does not yet support relaying a delivery receipt.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8ABC(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 guid];
  sub_22B53EEE4();
  sub_22B593850(&dword_22B4CC000, v2, v3, "Could not get message time from message: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8B44()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8BB4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8C24()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8C94()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8D04()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8DF0(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 count];
  sub_22B544ED4();
  v7 = a2;
  _os_log_debug_impl(&dword_22B4CC000, a3, OS_LOG_TYPE_DEBUG, "Caching %lld listeners for guid %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8E80(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_DEBUG, "No cached listeners for GUID %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8F0C()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_22B544ED4();
  v4 = v0;
  _os_log_fault_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_FAULT, "Failed type check! {key: %@, class: %@}", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D8FD8(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 guid];
  sub_22B593850(&dword_22B4CC000, v2, v3, "Not pregenerating preview, no filePath for transfer %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9064(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 guid];
  sub_22B593850(&dword_22B4CC000, v2, v3, "Not pregenerating preview, no destination attachmentPath for transfer %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9118(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 guidString];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9244()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  _os_log_error_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_ERROR, "Received a notice for a URL without a tracked highlight, dropping notice. error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_22B7D92B8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  sub_22B6BB0EC();
  sub_22B517C7C(&dword_22B4CC000, v1, v2, "Unable to get app link for url: %@, error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B7D932C(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  sub_22B53EEE4();
  sub_22B517C7C(&dword_22B4CC000, v3, v4, "Unable to get a bundle identifier from appLink: %@ for URL: %@");
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D93A4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 collaborationId];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9448(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 collaborationId];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D94D4()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B6BB0EC();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "attribution:%@ does not have a conversationIdentifier:%@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D95A8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  sub_22B6BB0EC();
  sub_22B517C7C(&dword_22B4CC000, v1, v2, "Received an error trying to get highlight for url: %@, error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B7D961C()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B6BB0EC();
  sub_22B517C7C(&dword_22B4CC000, v0, v1, "Error while getting metadata: %@ error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9688(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) URL];
  sub_22B53EEE4();
  sub_22B544EC4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9794(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"IMDServiceSession_BuddyList.m" lineNumber:169 description:@"Too many calls to [IMDService endBuddyChanges]!"];

  *a4 = *a3;
}

void sub_22B7D9824(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 4;
  _os_log_error_impl(&dword_22B4CC000, log, OS_LOG_TYPE_ERROR, "XPC Activity state was NOT in state continue(4), was in state %ld!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9954()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22B633BCC();
  v2 = "SMSFilteringSettingsDict";
  _os_log_error_impl(&dword_22B4CC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9A0C(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 groupUUID];
  v4 = [v3 UUIDString];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Couldn't find a chat for groupID: (%@)", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9AC0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9B74(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = 67109120;
  v4[1] = [a1 style];
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Can't upgrade from 1:1 chat to Group chat -- Invalid chat style: %c", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9C00()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B531178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9C74()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_DEBUG, "%@ - write account defaults: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9CF8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B6E41FC(&dword_22B4CC000, v0, v1, "writeAccountDefaults - Started with %@ as the login ID", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9D60()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B6E41FC(&dword_22B4CC000, v0, v1, "writeAccountDefaults - Setting %@ as the login ID", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9DC8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_22B53EEE4();
  sub_22B6E41FC(&dword_22B4CC000, v0, v1, "writeAccountDefaults - Removing login ID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9E30(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "** Received account removed for account: %@, but we can't find an account for it", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9E9C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "** Received account enabled for account: %@, but we can't find an account for it", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7D9F08(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_22B544EF8(&dword_22B4CC000, a2, a3, "** Received account disabled for account: %@, but we can't find an account for it", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B7DA024()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_22B633BCC();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7DA0AC()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_22B633BCC();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7DA134()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_22B633BCC();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7DA200()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_22B633BCC();
  sub_22B5FE838(&dword_22B4CC000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B7DA288(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Error taking data from typing indicator icon image: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B7DA300(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22B4CC000, a2, OS_LOG_TYPE_ERROR, "Unable to get callerURI for account: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}