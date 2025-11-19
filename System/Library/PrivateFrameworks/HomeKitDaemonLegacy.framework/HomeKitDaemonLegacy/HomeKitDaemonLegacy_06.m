uint64_t sub_25328847C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CE8, &qword_253D4AD70);
  result = sub_253CD0F78();
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
      sub_253CD11C8();
      sub_253CD09A8();
      result = sub_253CD11E8();
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

uint64_t sub_2532886DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeDeviceEntity();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3830, &unk_253D499F0);
  result = sub_253CD0F78();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v36 + 72);
      sub_25328F0EC(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for HomeDeviceEntity);
      v25 = *(v11 + 40);
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
      sub_253CD0908();
      result = sub_253CD11E8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_25328F0EC(v7, *(v11 + 48) + v19 * v24, type metadata accessor for HomeDeviceEntity);
      ++*(v11 + 16);
      v8 = v35;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v8 + 32);
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_253288A30(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeGroupEntity();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E40, &qword_253D4B210);
  result = sub_253CD0F78();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v38 + 72);
      sub_25328F0EC(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for HomeGroupEntity);
      v25 = *(v11 + 40);
      sub_253CD11C8();
      v26 = *(v39 + 20);
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
      sub_253CD0908();
      result = sub_253CD11E8();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_25328F0EC(v7, *(v11 + 48) + v19 * v24, type metadata accessor for HomeGroupEntity);
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_253288D90(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_253CD0F78();
  v9 = result;
  if (*(v6 + 16))
  {
    v31 = v5;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(*(v6 + 48) + (v18 | (v10 << 6)));
      v22 = *(v9 + 40);
      sub_253CD11C8();
      a4(v21);
      sub_253CD09A8();

      result = sub_253CD11E8();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero((v6 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    v5 = v31;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

unint64_t sub_253289000(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_253CD0D78();
  v5 = -1 << *(a2 + 32);
  result = sub_253CD0E78();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_253289084(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_253CD11C8();
  sub_253CCFF58();
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  sub_253CD11E8();
  v5 = -1 << *(a2 + 32);
  result = sub_253CD0E78();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_25328917C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_253287C50(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_25328A2C8();
      goto LABEL_12;
    }

    sub_25328AC34(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_253CD0D78();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_253200644(0, &qword_281530E30, off_27971A270);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_253CD0D88();

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
  sub_253CD1148();
  __break(1u);
}

uint64_t sub_2532892EC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_253CCFF58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_253287E78(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25328A418();
      goto LABEL_12;
    }

    sub_25328AE48(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
  v15 = sub_253CD08F8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25328F154(&qword_27F5A2AE0, MEMORY[0x277CC95F0]);
      v23 = sub_253CD0918();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_253289590(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2532881D4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25328A650();
      goto LABEL_12;
    }

    sub_25328B164(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_253CD11C8();
  sub_253CCFF58();
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  result = sub_253CD11E8();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for AssertionHandle.Assertion(0);
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);

      v14 = sub_253CCFF28();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_25328976C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25328847C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25328A7A0();
      goto LABEL_16;
    }

    sub_25328B3EC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_253CD11C8();
  sub_253CD09A8();
  result = sub_253CD11E8();
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

      result = sub_253CD1118();
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
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_2532898EC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for HomeDeviceEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v30 = v3;
  if (v14 > v13 && (a3 & 1) != 0)
  {
LABEL_13:
    v15 = v8;
    goto LABEL_14;
  }

  if (a3)
  {
    v29 = v10;
    sub_2532886DC(v13 + 1);
    goto LABEL_8;
  }

  if (v14 <= v13)
  {
    v29 = v10;
    sub_25328B624(v13 + 1);
LABEL_8:
    v16 = *v3;
    v17 = *(*v3 + 40);
    sub_253CD11C8();
    sub_253CCFF58();
    sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
    sub_253CD0908();
    v18 = sub_253CD11E8();
    v19 = -1 << *(v16 + 32);
    a2 = v18 & ~v19;
    if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v15 = v8;
      v21 = *(v8 + 72);
      while (1)
      {
        sub_25328F024(*(v16 + 48) + v21 * a2, v12, type metadata accessor for HomeDeviceEntity);
        v22 = sub_253CCFF28();
        sub_25328F08C(v12, type metadata accessor for HomeDeviceEntity);
        if (v22)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v20;
        if (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v15 = v8;
  sub_25328A8FC(type metadata accessor for HomeDeviceEntity, &qword_27F5A3830, &unk_253D499F0, type metadata accessor for HomeDeviceEntity);
LABEL_14:
  v23 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_25328F0EC(a1, *(v23 + 48) + *(v15 + 72) * a2, type metadata accessor for HomeDeviceEntity);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_253289BAC(uint64_t a1, unint64_t a2, char a3)
{
  v30 = a1;
  v6 = type metadata accessor for HomeGroupEntity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_253288A30(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25328A8FC(type metadata accessor for HomeGroupEntity, &qword_27F5A3E40, &qword_253D4B210, type metadata accessor for HomeGroupEntity);
      goto LABEL_12;
    }

    sub_25328B948(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_253CD11C8();
  v15 = *(v6 + 20);
  sub_253CCFF58();
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  v16 = sub_253CD11E8();
  v17 = -1 << *(v13 + 32);
  a2 = v16 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v7 + 72);
    do
    {
      sub_25328F024(*(v13 + 48) + v19 * a2, v10, type metadata accessor for HomeGroupEntity);
      v20 = &v10[*(v6 + 20)];
      v21 = sub_253CCFF28();
      sub_25328F08C(v10, type metadata accessor for HomeGroupEntity);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v30;
  v23 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_25328F0EC(v22, *(v23 + 48) + *(v28 + 72) * a2, type metadata accessor for HomeGroupEntity);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_253289E68(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_253288D90(v7 + 1, &qword_27F5A3810, &unk_253D499E0, sub_253243DB4);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25328AB04(&qword_27F5A3810, &unk_253D499E0);
      goto LABEL_16;
    }

    sub_25328BC78(v7 + 1, &qword_27F5A3810, &unk_253D499E0, sub_253243DB4);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_253CD11C8();
  sub_253243DB4(v6);
  sub_253CD09A8();

  result = sub_253CD11E8();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_253243DB4(*(*(v9 + 48) + a2));
      v15 = v14;
      if (v13 == sub_253243DB4(v6) && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_253CD1118();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_25328A098(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_253288D90(v7 + 1, &qword_27F5A3E30, &qword_253D4B208, sub_253244E38);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25328AB04(&qword_27F5A3E30, &qword_253D4B208);
      goto LABEL_16;
    }

    sub_25328BC78(v7 + 1, &qword_27F5A3E30, &qword_253D4B208, sub_253244E38);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_253CD11C8();
  sub_253244E38(v6);
  sub_253CD09A8();

  result = sub_253CD11E8();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_253244E38(*(*(v9 + 48) + a2));
      v15 = v14;
      if (v13 == sub_253244E38(v6) && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_253CD1118();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_253CD1148();
  __break(1u);
  return result;
}

id sub_25328A2C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E78, &qword_253D4B250);
  v2 = *v0;
  v3 = sub_253CD0F68();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_25328A418()
{
  v1 = v0;
  v2 = sub_253CCFF58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E88, &qword_253D4B260);
  v7 = *v0;
  v8 = sub_253CD0F68();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_25328A650()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E60, &qword_253D4B230);
  v2 = *v0;
  v3 = sub_253CD0F68();
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

void *sub_25328A7A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CE8, &qword_253D4AD70);
  v2 = *v0;
  v3 = sub_253CD0F68();
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

void *sub_25328A8FC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = *v4;
  v15 = sub_253CD0F68();
  v16 = v15;
  if (*(v14 + 16))
  {
    v31 = v8;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v10 + 72) * (v26 | (v20 << 6));
        sub_25328F024(*(v14 + 48) + v29, v13, a4);
        result = sub_25328F0EC(v13, *(v16 + 48) + v29, a4);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v31;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v16;
  }

  return result;
}

void *sub_25328AB04(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_253CD0F68();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

uint64_t sub_25328AC34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E78, &qword_253D4B250);
  result = sub_253CD0F78();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_253CD0D78();
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

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
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

        v2 = v26;
        goto LABEL_28;
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

uint64_t sub_25328AE48(uint64_t a1)
{
  v2 = v1;
  v37 = sub_253CCFF58();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E88, &qword_253D4B260);
  v10 = sub_253CD0F78();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
      result = sub_253CD08F8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25328B164(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E60, &qword_253D4B230);
  result = sub_253CD0F78();
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
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);

      sub_253CD0908();
      result = sub_253CD11E8();
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
        v11 = (v17 - 1) & v17;
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

uint64_t sub_25328B3EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CE8, &qword_253D4AD70);
  result = sub_253CD0F78();
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
      sub_253CD11C8();

      sub_253CD09A8();
      result = sub_253CD11E8();
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

uint64_t sub_25328B624(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeDeviceEntity();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3830, &unk_253D499F0);
  result = sub_253CD0F78();
  v11 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v35 + 72);
      sub_25328F024(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for HomeDeviceEntity);
      v25 = *(v11 + 40);
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
      sub_253CD0908();
      result = sub_253CD11E8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_25328F0EC(v7, *(v11 + 48) + v19 * v24, type metadata accessor for HomeDeviceEntity);
      ++*(v11 + 16);
      v8 = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_25328B948(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeGroupEntity();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E40, &qword_253D4B210);
  result = sub_253CD0F78();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      sub_25328F024(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for HomeGroupEntity);
      v25 = *(v11 + 40);
      sub_253CD11C8();
      v26 = *(v38 + 20);
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
      sub_253CD0908();
      result = sub_253CD11E8();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_25328F0EC(v7, *(v11 + 48) + v19 * v24, type metadata accessor for HomeGroupEntity);
      ++*(v11 + 16);
      v8 = v36;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_25328BC78(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_253CD0F78();
  v9 = result;
  if (*(v6 + 16))
  {
    v29 = v5;
    v10 = 0;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v6 + 48) + (v17 | (v10 << 6)));
      v21 = *(v9 + 40);
      sub_253CD11C8();
      a4(v20);
      sub_253CD09A8();

      result = sub_253CD11E8();
      v22 = -1 << *(v9 + 32);
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

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + v16) = v20;
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

        v5 = v29;
        goto LABEL_28;
      }

      v19 = *(v6 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v5 = v9;
  }

  return result;
}

char *sub_25328BEB8(char *a1, int64_t a2, char a3)
{
  result = sub_25328BFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25328BED8(size_t a1, int64_t a2, char a3)
{
  result = sub_25328C3CC(a1, a2, a3, *v3, &qword_27F5A3DB8, &qword_253D4B128, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_25328BF1C(size_t a1, int64_t a2, char a3)
{
  result = sub_25328C0CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25328BF3C(char *a1, int64_t a2, char a3)
{
  result = sub_25328C2BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25328BF5C(size_t a1, int64_t a2, char a3)
{
  result = sub_25328C3CC(a1, a2, a3, *v3, &qword_27F5A3DD8, &qword_253D4B148, MEMORY[0x277D0EFB0]);
  *v3 = result;
  return result;
}

void *sub_25328BFA0(void *a1, int64_t a2, char a3)
{
  result = sub_25328C5A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25328BFC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A90, &unk_253D4AAB0);
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

size_t sub_25328C0CC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DE0, &qword_253D4B150);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA8, &qword_253D4B118) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA8, &qword_253D4B118) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25328C2BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E98, &qword_253D4B278);
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

size_t sub_25328C3CC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_25328C5A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BB0, &unk_253D4B1E0);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t *sub_25328C6DC(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    v9 = sub_25328E5DC(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void sub_25328C774(uint64_t a1, char a2, uint64_t *a3)
{
  v71 = a3;
  v6 = sub_253CCFF58();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v72 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA8, &qword_253D4B118);
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = v62 - v12;
  v65 = *(a1 + 16);
  if (!v65)
  {
    goto LABEL_24;
  }

  v62[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v67;
  v14 = (v67 + *(v11 + 48));
  v15 = *(v68 + 80);
  v66 = a1;
  v16 = (v69 + 32);
  v64 = a1 + ((v15 + 32) & ~v15);
  sub_2532168A0(v64, v67, &qword_27F5A3DA8, &qword_253D4B118);
  v17 = v72;
  v63 = *v16;
  v63(v72, v13, v70);
  v18 = *v14;
  v19 = v14[1];
  v20 = v14[2];
  v21 = *v71;
  v23 = sub_253217E4C(v17);
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v22;
  if (*(v21 + 24) >= v26)
  {
    if (a2)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_253285F40();
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v28 = v71;
  sub_2532847E4(v26, a2 & 1);
  v29 = *v28;
  v30 = sub_253217E4C(v72);
  if ((v27 & 1) == (v31 & 1))
  {
    v23 = v30;
    if ((v27 & 1) == 0)
    {
LABEL_14:
      v34 = v72;
      v35 = *v71;
      *(*v71 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v63(v35[6] + *(v69 + 72) * v23, v34, v70);
      v36 = (v35[7] + 24 * v23);
      *v36 = v18;
      v36[1] = v19;
      v36[2] = v20;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v35[2] = v39;
      if (v65 != 1)
      {
        v40 = 1;
        while (v40 < *(v66 + 16))
        {
          v41 = v67;
          sub_2532168A0(v64 + *(v68 + 72) * v40, v67, &qword_27F5A3DA8, &qword_253D4B118);
          v42 = *v16;
          v43 = v72;
          (*v16)(v72, v41, v70);
          v44 = *v14;
          v45 = v14[1];
          v20 = v14[2];
          v46 = *v71;
          v47 = sub_253217E4C(v43);
          v49 = *(v46 + 16);
          v50 = (v48 & 1) == 0;
          v38 = __OFADD__(v49, v50);
          v51 = v49 + v50;
          if (v38)
          {
            goto LABEL_26;
          }

          v52 = v48;
          if (*(v46 + 24) < v51)
          {
            v53 = v71;
            sub_2532847E4(v51, 1);
            v54 = *v53;
            v47 = sub_253217E4C(v72);
            if ((v52 & 1) != (v55 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v52)
          {
            goto LABEL_11;
          }

          v56 = v72;
          v57 = *v71;
          *(*v71 + 8 * (v47 >> 6) + 64) |= 1 << v47;
          v58 = v47;
          v42(v57[6] + *(v69 + 72) * v47, v56, v70);
          v59 = (v57[7] + 24 * v58);
          *v59 = v44;
          v59[1] = v45;
          v59[2] = v20;
          v60 = v57[2];
          v38 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v38)
          {
            goto LABEL_27;
          }

          ++v40;
          v57[2] = v61;
          if (v65 == v40)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v32 = swift_allocError();
    swift_willThrow();
    v75 = v32;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2E90, &qword_253D4A320);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v69 + 8))(v72, v70);
      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_253CD1158();
  __break(1u);
LABEL_29:
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_253CD0FB8();
  MEMORY[0x259C00940](0xD00000000000001BLL, 0x8000000253D51A50);
  sub_253CD1058();
  MEMORY[0x259C00940](39, 0xE100000000000000);
  sub_253CD1078();
  __break(1u);
}

uint64_t sub_25328CD04(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a1;
  v54 = sub_253CCFF58();
  v51 = *(v54 - 8);
  v7 = *(v51 + 64);
  v8 = MEMORY[0x28223BE20](v54);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v39 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DB0, &qword_253D4B120);
  result = sub_253CD10C8();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v44;
  }

  v14 = 0;
  v42 = v51 + 16;
  v43 = result;
  v52 = v51 + 32;
  v15 = result + 64;
  v40 = a2;
  v41 = a4;
  while (v13)
  {
    v48 = a3;
    v16 = __clz(__rbit64(v13));
    v46 = (v13 - 1) & v13;
LABEL_16:
    v19 = v16 | (v14 << 6);
    v20 = a4[6];
    v21 = v51;
    v50 = *(v51 + 72);
    v22 = v45;
    v23 = v54;
    (*(v51 + 16))(v45, v20 + v50 * v19, v54);
    v24 = (a4[7] + 24 * v19);
    v26 = *v24;
    v25 = v24[1];
    v27 = v24[2];
    v47 = *(v21 + 32);
    v47(v53, v22, v23);
    v12 = v43;
    v28 = *(v43 + 40);
    sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0]);
    v49 = v26;

    v29 = v27;
    result = sub_253CD08F8();
    v30 = -1 << *(v12 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v15 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v47)(*(v12 + 48) + v33 * v50, v53, v54);
    v38 = (*(v12 + 56) + 24 * v33);
    *v38 = v49;
    v38[1] = v25;
    v38[2] = v27;
    ++*(v12 + 16);
    a3 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
      goto LABEL_32;
    }

    a2 = v40;
    a4 = v41;
    v13 = v46;
    if (v48 == 1)
    {
      return v12;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v18 = v44[v14];
    ++v17;
    if (v18)
    {
      v48 = a3;
      v16 = __clz(__rbit64(v18));
      v46 = (v18 - 1) & v18;
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

uint64_t sub_25328D0D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C00B80](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_253286FEC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_25328D168(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CD8, &unk_253D4AD60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v52 - v4;
  v58 = sub_253CD02B8();
  v56 = *(v58 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DC8, &qword_253D4B138);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v52 - v10;
  v12 = sub_253CD0178();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = [result wifiInfo];

  if (v17)
  {
    v18 = [objc_opt_self() wifiNetworkInfoFromProto_];
  }

  else
  {
    v18 = 0;
  }

  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_57;
  }

  v19 = result;
  v20 = [result networkInfos];

  v62 = v5;
  if (v20 && (v65 = 0, sub_253200644(0, &qword_27F5A33A0, 0x277CD1718), sub_253CD0A48(), v20, (v21 = v65) != 0))
  {
    v22 = v65 & 0xFFFFFFFFFFFFFF8;
    if (v65 >> 62)
    {
      goto LABEL_27;
    }

    v23 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = a1;
    for (i = v18; v23; i = v18)
    {
      a1 = 0;
      v18 = (v57 + 48);
      v59 = (v57 + 32);
      v60 = v21 & 0xC000000000000001;
      v64 = MEMORY[0x277D84F90];
      v55 = v23;
      while (1)
      {
        if (v60)
        {
          v24 = MEMORY[0x259C00F30](a1, v21);
        }

        else
        {
          if (a1 >= *(v22 + 16))
          {
            goto LABEL_26;
          }

          v24 = *(v21 + 8 * a1 + 32);
        }

        v25 = v24;
        v26 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          break;
        }

        sub_253228E48(v24, v11);

        if ((*v18)(v11, 1, v12) == 1)
        {
          sub_253206054(v11, &qword_27F5A3DC8, &qword_253D4B138);
        }

        else
        {
          v27 = v12;
          v28 = v21;
          v29 = v22;
          v30 = *v59;
          v31 = v27;
          (*v59)(v63, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_253283960(0, v64[2] + 1, 1, v64, &qword_27F5A3DD0, &qword_253D4B140, MEMORY[0x277D0EF88]);
          }

          v33 = v64[2];
          v32 = v64[3];
          if (v33 >= v32 >> 1)
          {
            v64 = sub_253283960(v32 > 1, v33 + 1, 1, v64, &qword_27F5A3DD0, &qword_253D4B140, MEMORY[0x277D0EF88]);
          }

          v34 = v63;
          v35 = v64;
          v64[2] = v33 + 1;
          (v30)(v35 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v33, v34, v31);
          v5 = v62;
          v22 = v29;
          v21 = v28;
          v12 = v31;
          v23 = v55;
        }

        ++a1;
        if (v26 == v23)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v23 = sub_253CD0ED8();
      v53 = a1;
    }

    v64 = MEMORY[0x277D84F90];
LABEL_29:

    a1 = v53;
    v18 = i;
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
  }

  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_58;
  }

  v36 = result;
  v37 = [result networkServiceInfos];

  if (v37)
  {
    v65 = 0;
    sub_253200644(0, &qword_27F5A3398, 0x277CD1720);
    sub_253CD0A48();

    v38 = v65;
    if (v65)
    {
      v39 = (v65 & 0xFFFFFFFFFFFFFF8);
      if (v65 >> 62)
      {
        goto LABEL_55;
      }

      for (j = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_253CD0ED8())
      {
        v41 = v58;
        i = v18;
        if (!j)
        {
          break;
        }

        v42 = 0;
        v63 = (v38 & 0xC000000000000001);
        v18 = (v56 + 48);
        v43 = (v56 + 32);
        v44 = MEMORY[0x277D84F90];
        v60 = v39;
        while (1)
        {
          if (v63)
          {
            v45 = MEMORY[0x259C00F30](v42, v38);
          }

          else
          {
            if (v42 >= v39[2])
            {
              goto LABEL_54;
            }

            v45 = *(v38 + 8 * v42 + 32);
          }

          v39 = v45;
          v46 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          sub_25322953C(v45, v5);

          if ((*v18)(v5, 1, v41) == 1)
          {
            sub_253206054(v5, &qword_27F5A3CD8, &unk_253D4AD60);
          }

          else
          {
            v47 = v41;
            v48 = *v43;
            (*v43)(v61, v5, v47);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_253283960(0, *(v44 + 2) + 1, 1, v44, &qword_27F5A3DD8, &qword_253D4B148, MEMORY[0x277D0EFB0]);
            }

            v50 = *(v44 + 2);
            v49 = *(v44 + 3);
            if (v50 >= v49 >> 1)
            {
              v44 = sub_253283960(v49 > 1, v50 + 1, 1, v44, &qword_27F5A3DD8, &qword_253D4B148, MEMORY[0x277D0EFB0]);
            }

            *(v44 + 2) = v50 + 1;
            v51 = v58;
            v48(&v44[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v50], v61, v58);
            v41 = v51;
            v5 = v62;
          }

          v39 = v60;
          ++v42;
          if (v46 == j)
          {
            goto LABEL_51;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        ;
      }

LABEL_51:
    }
  }

  return v64;
}

uint64_t type metadata accessor for NetworkDetectAccessory()
{
  result = qword_2815311C0;
  if (!qword_2815311C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25328D968(void *a1, uint64_t a2)
{
  v91 = a1;
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v84 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v99 = &v83 - v9;
  MEMORY[0x28223BE20](v8);
  v86 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DC0, &qword_253D4B130);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v96 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v83 - v15;
  v16 = *(a2 + 64);
  v95 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v94 = (v17 + 63) >> 6;
  v88 = v4;
  v89 = (v4 + 16);
  v97 = (v4 + 32);
  v92 = (v4 + 8);
  v87 = a2;

  v20 = 0;
  v85 = MEMORY[0x277D84F98];
  v90 = v3;
  while (2)
  {
    while (2)
    {
      v22 = v94;
      for (i = v95; ; i = v95)
      {
        if (!v19)
        {
          if (v22 <= v20 + 1)
          {
            v24 = v20 + 1;
          }

          else
          {
            v24 = v22;
          }

          v25 = v24 - 1;
          v26 = v96;
          while (1)
          {
            v23 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v23 >= v22)
            {
              v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3D98, &qword_253D4B108);
              (*(*(v55 - 8) + 56))(v26, 1, 1, v55);
              v19 = 0;
              v20 = v25;
              goto LABEL_18;
            }

            v19 = *(i + 8 * v23);
            ++v20;
            if (v19)
            {
              v20 = v23;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_48;
        }

        v23 = v20;
LABEL_17:
        v27 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v28 = v27 | (v23 << 6);
        v29 = v87;
        v30 = v88;
        (*(v88 + 16))(v86, *(v87 + 48) + *(v88 + 72) * v28, v3);
        v31 = (*(v29 + 56) + 24 * v28);
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[2];
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3D98, &qword_253D4B108);
        v36 = &v96[*(v35 + 48)];
        v37 = *(v30 + 32);
        v26 = v96;
        v37();
        *v36 = v32;
        *(v36 + 1) = v33;
        *(v36 + 2) = v34;
        (*(*(v35 - 8) + 56))(v26, 0, 1, v35);
        v38 = v34;

LABEL_18:
        v39 = v93;
        sub_25328ED94(v26, v93, &qword_27F5A3DC0, &qword_253D4B130);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3D98, &qword_253D4B108);
        if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
        {

          return v85;
        }

        v41 = (v39 + *(v40 + 48));
        v42 = v41[1];
        v98 = *v41;
        v43 = v41[2];
        (*v97)(v99, v39, v3);
        if (!v43)
        {
LABEL_33:
          v44 = v43;
          goto LABEL_36;
        }

        v44 = v43;
        v45 = [v44 SSID];
        if (v45)
        {
          v46 = v45;
          v47 = sub_253CD0968();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        v50 = [v91 SSID];
        if (!v50)
        {
          if (v49)
          {
LABEL_34:

            v3 = v90;
            goto LABEL_36;
          }

          goto LABEL_30;
        }

        v51 = v50;
        v52 = sub_253CD0968();
        v54 = v53;

        if (!v49)
        {
          break;
        }

        if (!v54)
        {
          goto LABEL_34;
        }

        if (v47 == v52 && v49 == v54)
        {

LABEL_30:

          v3 = v90;
          goto LABEL_6;
        }

        v56 = sub_253CD1118();

        v3 = v90;
        if ((v56 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_6:

        (*v92)(v99, v3);
        v22 = v94;
      }

      v3 = v90;
      if (!v54)
      {
        goto LABEL_6;
      }

LABEL_36:
      v57 = *v89;
      v58 = v84;
      (*v89)(v84, v99, v3);
      v83 = v44;

      v59 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v59;
      v61 = sub_253217E4C(v58);
      v63 = v59[2];
      v64 = (v62 & 1) == 0;
      v65 = __OFADD__(v63, v64);
      v66 = v63 + v64;
      if (v65)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v67 = v62;
      if (v59[3] >= v66)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = v61;
          sub_253285F40();
          v61 = v81;
        }
      }

      else
      {
        sub_2532847E4(v66, isUniquelyReferenced_nonNull_native);
        v61 = sub_253217E4C(v84);
        if ((v67 & 1) != (v68 & 1))
        {
          goto LABEL_50;
        }
      }

      v85 = v100;
      if (v67)
      {
        v69 = (v100[7] + 24 * v61);
        v70 = *v69;
        v71 = v69[1];
        v72 = v69[2];
        *v69 = v98;
        v69[1] = v42;
        v69[2] = v43;

        v73 = *v92;
        (*v92)(v84, v3);
        v73(v99, v3);
        continue;
      }

      break;
    }

    v100[(v61 >> 6) + 8] |= 1 << v61;
    v74 = v84;
    v75 = v88;
    v76 = v61;
    v57(v85[6] + *(v88 + 72) * v61, v84, v3);
    v77 = (v85[7] + 24 * v76);
    *v77 = v98;
    v77[1] = v42;
    v77[2] = v43;

    v78 = *(v75 + 8);
    v78(v74, v3);
    v78(v99, v3);
    v79 = v85[2];
    v65 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (!v65)
    {
      v85[2] = v80;
      continue;
    }

    break;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_253CD1158();
  __break(1u);
  return result;
}

uint64_t sub_25328E170(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_253CD02B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 networkGatewayIPAddress];
  if (!result)
  {
    return result;
  }

  v51 = v6;
  v12 = result;
  v52 = sub_253CD0968();
  v14 = v13;

  v15 = [a1 networkGatewayMACAddress];
  if (!v15)
  {
LABEL_31:

    return 0;
  }

  v16 = v15;
  v46 = sub_253CD0968();
  v47 = v17;

  if (!a3)
  {
LABEL_15:
    v30 = *(a2 + 16);
    if (v30)
    {
      v49 = *(v7 + 16);
      v50 = v7 + 16;
      v31 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v32 = (v7 + 8);
      v48 = *(v7 + 72);
      v49(v10, v31, v51);
      while (1)
      {
        v34 = sub_253CD0268();
        if (v35)
        {
          v36 = v34;
          v37 = v35;
          v55 = v34;
          v56 = v35;
          v53 = v52;
          v54 = v14;
          sub_25322CFB4();
          if (sub_253CD0DF8())
          {
            v55 = v36;
            v56 = v37;
            v53 = v46;
            v54 = v47;
            v38 = sub_253CD0DF8();

            if (v38)
            {
              (*v32)(v10, v51);

              goto LABEL_35;
            }
          }

          else
          {
          }
        }

        v39 = sub_253CD0278();
        if (v40)
        {
          v41 = v39;
          v42 = v40;
          v55 = v39;
          v56 = v40;
          v53 = v52;
          v54 = v14;
          sub_25322CFB4();
          if (sub_253CD0DF8())
          {
            v55 = v41;
            v56 = v42;
            v53 = v46;
            v54 = v47;
            v43 = sub_253CD0DF8();
            v33 = v51;
            (*v32)(v10, v51);

            if (v43)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v33 = v51;
            (*v32)(v10, v51);
          }
        }

        else
        {
          v33 = v51;
          (*v32)(v10, v51);
        }

        v31 += v48;
        if (!--v30)
        {
          break;
        }

        v49(v10, v31, v33);
      }
    }

    goto LABEL_31;
  }

  v18 = a3;
  v19 = [v18 networkGatewayIPAddress];
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = v19;
  v21 = sub_253CD0968();
  v23 = v22;

  if (v21 == v52 && v23 == v14)
  {

    goto LABEL_10;
  }

  v24 = sub_253CD1118();

  if ((v24 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_10:
  v25 = [v18 networkGatewayMACAddress];
  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = v25;
  v27 = sub_253CD0968();
  v29 = v28;

  if (v27 == v46 && v29 == v47)
  {

    return 1;
  }

  v44 = sub_253CD1118();

  if ((v44 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:

LABEL_35:

  return 1;
}

uint64_t sub_25328E5DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = a2;
  v46 = a4;
  v35 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3D98, &qword_253D4B108);
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v34 - v6;
  v43 = sub_253CCFF58();
  v7 = *(*(v43 - 8) + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v47 = a3;
  v12 = *(a3 + 64);
  v38 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v36 = 0;
  v37 = (v13 + 63) >> 6;
  v49 = v9;
  v40 = v9 + 8;
  v41 = v9 + 16;
  while (v15)
  {
    v16 = __clz(__rbit64(v15));
    v48 = (v15 - 1) & v15;
LABEL_11:
    v19 = v16 | (v11 << 6);
    v20 = v47;
    v21 = *(v49 + 16);
    v22 = v42;
    v23 = v43;
    v21(v42, v47[6] + *(v49 + 72) * v19, v43);
    v24 = v20[7];
    v39 = v19;
    v25 = (v24 + 24 * v19);
    v27 = *v25;
    v26 = v25[1];
    v28 = v25[2];
    v29 = v44;
    v21(v44, v22, v23);
    v30 = (v29 + *(v45 + 48));
    *v30 = v27;
    v30[1] = v26;
    v30[2] = v28;
    v31 = v28;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v32 = v31;
    LOBYTE(v28) = sub_25328E170(v46, v26, v28);
    sub_253206054(v29, &qword_27F5A3D98, &qword_253D4B108);

    result = (*(v49 + 8))(v22, v23);
    v15 = v48;
    if ((v28 & 1) == 0)
    {
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_25328CD04(v35, v34, v36, v47);
      }
    }
  }

  v17 = v11;
  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= v37)
    {
      return sub_25328CD04(v35, v34, v36, v47);
    }

    v18 = *(v38 + 8 * v11);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v48 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25328E904(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v9;
      v11 = sub_25328C6DC(v14, v6, a1, v15);
      MEMORY[0x259C040E0](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  bzero(v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = sub_25328E5DC((v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_25328EAB0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25320C7A8;

  return sub_253281498(a1, a2, v6, v7, v8);
}

uint64_t sub_25328EB74(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetectAccessory() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25320C438;

  return sub_253282188(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_25328EC78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C438;

  return sub_253228334(a1, v5);
}

unint64_t sub_25328ED30()
{
  result = qword_27F5A3E08;
  if (!qword_27F5A3E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5A3E00, &unk_253D4B180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3E08);
  }

  return result;
}

uint64_t sub_25328ED94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25328EDFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25323FBE4();
  result = MEMORY[0x259C00B80](v2, &type metadata for HomeCapability, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_253287664(&v7, v6, sub_253243DB4, sub_253289E68);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25328EE98(uint64_t a1)
{
  v2 = type metadata accessor for HomeGroupEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25328F154(&qword_27F5A3E38, type metadata accessor for HomeGroupEntity);
  result = MEMORY[0x259C00B80](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_25328F024(v13, v7, type metadata accessor for HomeGroupEntity);
      sub_2532873A4(v9, v7);
      sub_25328F08C(v9, type metadata accessor for HomeGroupEntity);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_25328F024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25328F08C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25328F0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25328F154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25328F1C4()
{
  result = sub_253CCFF58();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25328F250(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = 0;
    v24 = *(v3 + 16);
    v22 = v4 - 1;
    v8 = MEMORY[0x277D84F90];
    v25 = result;
    do
    {
      v23 = v8;
      v9 = (v3 + 40 + 16 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v12 = *(v9 - 1);
        v11 = *v9;
        v7 = v10 + 1;
        if ((*v9 & 0x2000000000000000) != 0)
        {
          v13 = HIBYTE(*v9) & 0xF;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (!v13 || (v12 == v6 ? (v14 = v11 == a2) : (v14 = 0), v14 || (v15 = *(v9 - 1), v16 = *v9, (sub_253CD1118() & 1) != 0)))
        {
          v12 = 0;
          v11 = 0xE000000000000000;
          v8 = v23;
          goto LABEL_18;
        }

        MEMORY[0x259C00940](46, 0xE100000000000000);
        if (sub_253CD0A08())
        {
          break;
        }

        v9 += 2;
        ++v10;
        v6 = v25;
        if (v24 == v7)
        {
          v8 = v23;
          goto LABEL_29;
        }
      }

      v20 = sub_253CD09B8();

      v8 = v23;
      if (v20)
      {
        if ((v20 & 0x8000000000000000) == 0)
        {
          result = sub_253CD09C8();
          if ((v21 & 1) == 0)
          {
            sub_253CD0998();

            goto LABEL_18;
          }

LABEL_35:
          __break(1u);
          return result;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_18:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2532836C0(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_2532836C0((v17 > 1), v18 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v12;
      *(v19 + 40) = v11;
      v6 = v25;
    }

    while (v22 != v10);
LABEL_29:
    if (!*(v8 + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v8 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_30:
    type metadata accessor for KeyPaths.KeyPathsSet();
    result = swift_allocObject();
    *(result + 16) = v8;
    return result;
  }

LABEL_32:

  return 0;
}

uint64_t sub_25328F4FC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v15 = *(v3 + 16);
  if (!v15)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  for (i = (v3 + 40); ; i += 2)
  {
    if (v6 >= *(v3 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v8 = *(i - 1);
    if ((*i & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(*i) & 0xF;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      return 1;
    }

    if (v8 == v5 && *i == a2)
    {
      return 1;
    }

    v11 = *(i - 1);
    v12 = *i;
    if (sub_253CD1118())
    {
      return 1;
    }

    MEMORY[0x259C00940](46, 0xE100000000000000);
    if (sub_253CD0A08())
    {
      break;
    }

    ++v6;

    if (v15 == v6)
    {
      return 0;
    }
  }

  v13 = sub_253CD09B8();

  if (!v13)
  {

    goto LABEL_21;
  }

  if (v13 < 0)
  {
    goto LABEL_25;
  }

  result = sub_253CD09C8();
  if ((v14 & 1) == 0)
  {
    sub_253CD0998();

LABEL_21:

    return 1;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25328F6C0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id KeyPaths.__allocating_init(for:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_253D48D90;
  type metadata accessor for KeyPaths.KeyPathsSet();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v4 + 32) = v5;
  *&v3[OBJC_IVAR___HMDKeyPaths_keyPathsStack] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id KeyPaths.init(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_253D48D90;
  type metadata accessor for KeyPaths.KeyPathsSet();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v3 + 32) = v4;
  *&v1[OBJC_IVAR___HMDKeyPaths_keyPathsStack] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for KeyPaths();
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Bool __swiftcall KeyPaths.push(key:)(Swift::String key)
{
  v3 = v1;
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v6 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 < 0)
  {
    v12 = *(v3 + v6);
  }

  v8 = sub_253CD0ED8();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v7 + 8 * v2 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_17:

  MEMORY[0x259C00F30](v2, v7);

LABEL_8:
  countAndFlagsBits = sub_25328F250(countAndFlagsBits, object);

  if (countAndFlagsBits)
  {
    swift_beginAccess();

    MEMORY[0x259C00990](v10);
    if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_10:
      sub_253CD0A88();
      swift_endAccess();

      return countAndFlagsBits != 0;
    }

LABEL_20:
    sub_253CD0A78();
    goto LABEL_10;
  }

  return countAndFlagsBits != 0;
}

Swift::Bool __swiftcall KeyPaths.popKey()()
{
  v1 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v9 = *(v0 + v1);
    }

    v3 = sub_253CD0ED8();
    if (v3 < 2)
    {
      goto LABEL_10;
    }

LABEL_3:
    swift_beginAccess();
    v4 = *(v0 + v1);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v10 = *(v0 + v1);
      }

      if (sub_253CD0ED8())
      {
LABEL_5:
        if (sub_2532900A4())
        {
LABEL_9:

          swift_endAccess();
          goto LABEL_10;
        }

        v5 = *(v0 + v1);
        if (!(v5 >> 62))
        {
          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v7 = __OFSUB__(v6, 1);
          v8 = v6 - 1;
          if (!v7)
          {
LABEL_8:
            sub_253290014(v8);
            goto LABEL_9;
          }

LABEL_21:
          __break(1u);
          return v8;
        }

LABEL_19:
        v11 = sub_253CD0ED8();
        v7 = __OFSUB__(v11, 1);
        v8 = v11 - 1;
        if (!v7)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_19;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 >= 2)
  {
    goto LABEL_3;
  }

LABEL_10:
  LOBYTE(v8) = v3 > 1;
  return v8;
}

Swift::Bool __swiftcall KeyPaths.contains(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v5 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_253CD0ED8();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  v2 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_12:

    MEMORY[0x259C00F30](v2, v6);

    goto LABEL_8;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return v7;
  }

  v8 = *(v6 + 8 * v2 + 32);

LABEL_8:
  v9 = sub_25328F4FC(countAndFlagsBits, object);

  LOBYTE(v7) = v9 & 1;
  return v7;
}

id KeyPaths.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KeyPaths.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyPaths();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25328FFB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_253CD0ED8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_253290014(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_25328FFB0(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2532900A4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_25328FFB0(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void significantTimeDidChangeNotification(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = a3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@System time changed %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [v4 _handleSignificantTimeChange];

  v8 = *MEMORY[0x277D85DE8];
}

void sub_253292AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253296630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25329B30C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_25329D680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2532A2004(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2532A2108(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2532A621C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __HMDShortcutActionInitializeWithSerializedShortcut(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    objc_storeStrong(v3 + 3, a2);
    if (WorkflowKitLibraryCore())
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2050000000;
      v5 = getWFHomeWorkflowClass_softClass;
      v21 = getWFHomeWorkflowClass_softClass;
      if (!getWFHomeWorkflowClass_softClass)
      {
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __getWFHomeWorkflowClass_block_invoke;
        v16 = &unk_279731AD0;
        v17 = &v18;
        __getWFHomeWorkflowClass_block_invoke(&v13);
        v5 = v19[3];
      }

      v6 = v5;
      _Block_object_dispose(&v18, 8);
      v7 = [[v5 alloc] initWithData:v4];
      v8 = v3[4];
      v3[4] = v7;

      v18 = 0;
      v19 = &v18;
      v20 = 0x2050000000;
      v9 = getWFHomeWorkflowControllerClass_softClass;
      v21 = getWFHomeWorkflowControllerClass_softClass;
      if (!getWFHomeWorkflowControllerClass_softClass)
      {
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __getWFHomeWorkflowControllerClass_block_invoke;
        v16 = &unk_279731AD0;
        v17 = &v18;
        __getWFHomeWorkflowControllerClass_block_invoke(&v13);
        v9 = v19[3];
      }

      v10 = v9;
      _Block_object_dispose(&v18, 8);
      v11 = [[v9 alloc] initWithWorkflow:v3[4]];
      v12 = v3[5];
      v3[5] = v11;
    }
  }
}

void sub_2532B1E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WorkflowKitLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    WorkflowKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = WorkflowKitLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getWFHomeWorkflowClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  result = objc_getClass("WFHomeWorkflow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFHomeWorkflowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getWFHomeWorkflowControllerClass_block_invoke(v3);
  }

  return result;
}

void __getWFHomeWorkflowControllerClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFHomeWorkflowController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFHomeWorkflowControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    WorkflowKitLibrary();
  }
}

void WorkflowKitLibrary()
{
  if (!WorkflowKitLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

uint64_t __WorkflowKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WorkflowKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2532B579C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDResetConfigPostCleanupStepsToString(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"Unknown";
    goto LABEL_15;
  }

  v1 = a1;
  if (a1 == -1)
  {
    v2 = @"everything";
    goto LABEL_15;
  }

  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if ((v1 & 2) != 0)
  {
    [v3 addObject:@"working store"];
    if ((v1 & 4) == 0)
    {
LABEL_7:
      if ((v1 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v1 & 4) == 0)
  {
    goto LABEL_7;
  }

  [v4 addObject:@"cloud store"];
  if ((v1 & 8) == 0)
  {
LABEL_8:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 addObject:@"local store"];
  if ((v1 & 0x10) == 0)
  {
LABEL_9:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v4 addObject:@"shared cloud store"];
  if ((v1 & 0x20) == 0)
  {
LABEL_10:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v4 addObject:@"HH1 keyed archive"];
  if ((v1 & 0x40) == 0)
  {
LABEL_11:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    [v4 addObject:@"everything except demo mode"];
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  [v4 addObject:@"HH1 SQL store"];
  if ((v1 & 0x80) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v1 & 0x100) != 0)
  {
LABEL_13:
    [v4 addObject:@"client store"];
  }

LABEL_14:
  v2 = [v4 componentsJoinedByString:{@", "}];

LABEL_15:

  return v2;
}

void sub_2532CC278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2532CC5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2532CE5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2532CE930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2532CEC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2532E11A4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2532E1230(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2532E88D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4666(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id arrayToString(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n %@ [", v4];
  [v5 appendString:v6];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = MEMORY[0x277CCACA8];
        v13 = [*(*(&v19 + 1) + 8 * i) descriptionWithIndent:v4];
        v14 = [v12 stringWithFormat:@" %@", v13];
        [v5 appendString:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n %@ ]", v4];
  [v5 appendString:v15];

  v16 = [v5 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

BOOL checkForParseResult(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = &a10;
  if (!a9)
  {
    return 0;
  }

  v10 = 0;
  while (a1 - 1 != v10)
  {
    v11 = v13++;
    ++v10;
    if (!*v11)
    {
      return v10 >= a1;
    }
  }

  return 1;
}

void sub_2532FF5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __languageChanged()
{
  v0 = +[HMDMainDriver driver];
  [v0 localeChanged];
}

void sub_25330AF7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25330B760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDRemoteLoginAccountTypeAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDRemoteLoginAccountType %tu", a1];
  }

  else
  {
    v2 = @"HMDRemoteLoginAccountTypeITunes";
  }

  return v2;
}

void sub_25331F540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9033(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HMDRemoteEventRouterProtoConnectResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(MEMORY[0x277D174E0]);
        [a1 addCachedEvents:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_25332445C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25332455C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id reportContextFromMessage(void *a1)
{
  v1 = a1;
  v2 = [v1 messagePayload];
  v3 = [v2 hmf_stringForKey:*MEMORY[0x277CD0500]];

  v4 = [v1 messagePayload];
  v5 = [v4 hmf_dataForKey:*MEMORY[0x277CD0510]];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CD1C88] reportContextWithDomain:v3 requestInfo:v5];
    v8 = [v1 messagePayload];
    v9 = [v8 hmf_numberForKey:*MEMORY[0x277CD0508]];
    [v9 floatValue];
    [v7 setReportTimeout:v10];

    v11 = [v7 copy];
  }

  return v11;
}

void sub_253334C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253335818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253335B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253336DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25333790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 56));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v34 - 120));
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

void sub_2533386C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 112));
  _Unwind_Resume(a1);
}

void sub_253339B10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v4 + 56));
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v5 - 112));
  _Unwind_Resume(a1);
}

void sub_25333A700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 200), 8);
  _Block_object_dispose((v40 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10664(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25333BA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25333BDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25333C430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25333C6B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25333CD24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25333D4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25333DD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_25333E788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __transactionHomeSettingsUpdated(void *a1, void *a2, void *a3)
{
  v18 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 transactionResult];
  v8 = [v5 setProperties];
  if ([v8 containsObject:@"automaticSoftwareUpdateEnabled"])
  {
    v9 = [v18 isAutomaticSoftwareUpdateEnabled];
    v10 = [v5 automaticSoftwareUpdateEnabled];
    v11 = [v10 BOOLValue];

    if (v9 != v11)
    {
      v12 = [v5 automaticSoftwareUpdateEnabled];
      [v18 setAutomaticSoftwareUpdateEnabled:{objc_msgSend(v12, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  v13 = [v5 setProperties];
  if ([v13 containsObject:@"automaticThirdPartyAccessorySoftwareUpdateEnabled"])
  {
    v14 = [v18 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    v15 = [v5 automaticThirdPartyAccessorySoftwareUpdateEnabled];
    v16 = [v15 BOOLValue];

    if (v14 != v16)
    {
      v17 = [v5 automaticThirdPartyAccessorySoftwareUpdateEnabled];
      [v18 setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:{objc_msgSend(v17, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  [v6 respondWithPayload:0];
}

void __transactionHomeMediaSettingsUpdated(void *a1, void *a2, void *a3)
{
  v23 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 transactionResult];
  v8 = [v5 setProperties];
  if ([v8 containsObject:@"minimumMediaUserPrivilege"])
  {
    v9 = [v23 minimumMediaUserPrivilege];
    v10 = [v5 minimumMediaUserPrivilege];
    v11 = [v10 unsignedIntegerValue];

    if (v9 != v11)
    {
      v12 = [v5 minimumMediaUserPrivilege];
      [v23 setMinimumMediaUserPrivilege:{objc_msgSend(v12, "unsignedIntegerValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  v13 = [v5 setProperties];
  if ([v13 containsObject:@"mediaPeerToPeerEnabled"])
  {
    v14 = [v23 isMediaPeerToPeerEnabled];
    v15 = [v5 mediaPeerToPeerEnabled];
    v16 = [v15 BOOLValue];

    if (v14 != v16)
    {
      v17 = [v5 mediaPeerToPeerEnabled];
      [v23 setMediaPeerToPeerEnabled:{objc_msgSend(v17, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  v18 = [v5 setProperties];
  if ([v18 containsObject:@"mediaPassword"])
  {
    v19 = [v23 mediaPassword];
    v20 = [v5 mediaPassword];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0)
    {
      v22 = [v5 mediaPassword];
      [v23 setMediaPassword:v22];

      [v7 markChanged];
    }
  }

  else
  {
  }

  [v6 respondWithPayload:0];
}

void __updateAccountHandleForCurrentUser(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 primaryHandle];
  if (v6)
  {
    v7 = [v3 currentUser];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 accountHandle];
      v10 = HMFEqualObjects();

      if (!v10)
      {
        v22 = [v8 newModelWithChangeType:2];
        [v22 setAccountHandle:v6];
        v23 = +[HMDAccountHandleFormatter defaultFormatter];
        v24 = [v23 stringForObjectValue:v6];

        [v22 setUserID:v24];
        v25 = [v3 backingStore];
        v26 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v27 = [v25 transaction:@"HMDAppleAccountManagerAccountUpdatedNotification" options:v26];

        [v27 add:v22 withMessage:0];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = ____updateAccountHandleForCurrentUser_block_invoke;
        v29[3] = &unk_2797359D8;
        v30 = v3;
        [v27 run:v29];

        goto LABEL_14;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v14;
        v15 = "%{public}@Home's current user has an unchanged account handle";
        v16 = v13;
        v17 = OS_LOG_TYPE_DEBUG;
LABEL_11:
        _os_log_impl(&dword_2531F8000, v16, v17, v15, buf, 0xCu);
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v14;
        v15 = "%{public}@Home does not yet have a current user, cannot update account handle";
        v16 = v13;
        v17 = OS_LOG_TYPE_INFO;
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v11);
LABEL_14:

    goto LABEL_15;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v3;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v21;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Cannot update home current user account handle because primary handle cannot be determined", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

void ____updateAccountHandleForCurrentUser_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to change account handle for current user: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_253349490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253349AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25334C98C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_25334FC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253361620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253363A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __decodeAndVerifyCurrentUser(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 uuidForKey:@"kUserUUIDKey"];
  if (v5)
  {
    v6 = [v3 currentUser];
    v7 = [v6 uuid];
    v8 = [v7 hmf_isEqualToUUID:v5];

    if (v8)
    {
      v9 = v6;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Specified user identifier does not match current user: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v15];

      v9 = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [v4 respondWithError:v10];

    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_253365E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253366678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253366D10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_253367758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25336A07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25336A3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDSecureAccessErrorCodeForMessage(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 isEntitledForSPIAccess])
  {
    v4 = 2003;
  }

  else
  {
    v5 = [v3 isInternal];
    if (a2 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      v4 = 2003;
    }

    else
    {
      v4 = 10;
    }
  }

  v7 = MEMORY[0x277CCA9B8];
  if (+[HMDDeviceCapabilities supportsDeviceLock])
  {
    v8 = 82;
  }

  else
  {
    v8 = v4;
  }

  v9 = [v7 hmErrorWithCode:v8];

  return v9;
}

void sub_25336F764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533717AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id location)
{
  objc_destroyWeak(&a51);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253372A4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_253372ED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253373E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533742FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25337493C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_253375E80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_253377294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25337AC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak((v56 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25337B8B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25337BE90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_25337F38C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x250]);
  _Unwind_Resume(a1);
}

void sub_253384650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____authenticateAcceptedOutgoingInvitation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____authenticateAcceptedOutgoingInvitation_block_invoke_2;
    block[3] = &unk_279725170;
    v13 = v6;
    v10 = v8;
    v11 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v19 = *(a1 + 56);
    v16 = v5;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    dispatch_async(v9, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

uint64_t ____authenticateAcceptedOutgoingInvitation_block_invoke_4364(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v7;
    v8 = "%{public}@Failed to authenticate invitation";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v7;
    v8 = "%{public}@Authenticated invitation after resolving";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_2531F8000, v9, v10, v8, &v13, 0xCu);

LABEL_7:
  objc_autoreleasePoolPop(v3);
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, *(*(*(a1 + 48) + 8) + 40));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void ____authenticateAcceptedOutgoingInvitation_block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) shortDescription];
      v7 = *(*(*(a1 + 80) + 8) + 40);
      v25 = 138543874;
      v26 = v5;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to resolve handle, %@, with error: %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v8 = *(*(a1 + 80) + 8);
    v10 = *(v8 + 40);
    v9 = (v8 + 40);
    if (!v10)
    {
      objc_storeStrong(v9, *(a1 + 32));
    }
  }

  else
  {
    v11 = [*(a1 + 56) isEqual:*(a1 + 64)];
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 48) shortDescription];
        v25 = 138543618;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Authenticated handle: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 64) shortDescription];
        v20 = [*(a1 + 56) shortDescription];
        v25 = 138543874;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invitation response received from account, %@, expected: %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      if (!*(*(*(a1 + 80) + 8) + 40))
      {
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:55];
        v22 = *(*(a1 + 80) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;
      }
    }
  }

  dispatch_group_leave(*(a1 + 72));
  v24 = *MEMORY[0x277D85DE8];
}

void sub_253387FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id location)
{
  objc_destroyWeak((v47 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a39);
  _Unwind_Resume(a1);
}

void sub_253388E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25338A3C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25338D290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25338DD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_2533952F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253397008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 168));
  _Unwind_Resume(a1);
}

void sub_253397C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25339EE6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __handleAccessoryReachabilityRegistration(void *a1, void *a2, int a3)
{
  v128 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v5 workQueue];
  dispatch_assert_queue_V2(v7);

  if (![v6 isRemote] || (objc_msgSend(v6, "isSecureRemote") & 1) != 0)
  {
    v91 = *MEMORY[0x277CD0640];
    v8 = [v6 stringForKey:?];
    v9 = [v5 uuid];
    v10 = [v9 UUIDString];
    v94 = v8;
    LOBYTE(v8) = [v8 isEqualToString:v10];

    if (v8)
    {
      v95 = 0;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v5;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        [v12 uuid];
        v16 = v15 = v6;
        v17 = [v16 UUIDString];
        *buf = 138543874;
        v123 = v14;
        v124 = 2112;
        v125 = v94;
        v126 = 2112;
        v127 = v17;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Home does not match, received: %@, current: %@", buf, 0x20u);

        v6 = v15;
      }

      objc_autoreleasePoolPop(v11);
      v95 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    }

    v18 = [v6 responseHandler];

    if (v18)
    {
      v19 = [v6 responseHandler];
      (v19)[2](v19, v95, 0);
    }

    v20 = objc_autoreleasePoolPush();
    v21 = v5;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v123 = v23;
      v124 = 2112;
      v125 = v21;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Registering for remote reachability for home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [v6 remoteSourceID];
    v25 = [HMDDevice deviceWithDestination:v24];
    v26 = v25;
    if (a3)
    {
      v92 = v24;
      v93 = v25;
      v89 = v6;
      v90 = v5;
      v27 = [v6 messagePayload];
      v88 = *MEMORY[0x277CCE7A8];
      v28 = [v27 hmf_arrayForKey:?];

      if (!v28)
      {
        v29 = [MEMORY[0x277CBEB18] array];
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v30 = [v21 accessories];
        v31 = [v30 copy];

        v32 = [v31 countByEnumeratingWithState:&v111 objects:v121 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v112;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v112 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(*(&v111 + 1) + 8 * i) uuid];
              v37 = [v36 UUIDString];
              [v29 addObject:v37];
            }

            v33 = [v31 countByEnumeratingWithState:&v111 objects:v121 count:16];
          }

          while (v33);
        }

        v28 = v29;
        v38 = objc_autoreleasePoolPush();
        v39 = v21;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v123 = v41;
          v124 = 2112;
          v125 = v28;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Registering for reachability notification for all accessories: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
      }

      v96 = [v21 homeManager];
      v99 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v28, "count")}];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      obj = v28;
      v102 = [obj countByEnumeratingWithState:&v107 objects:v120 count:16];
      if (v102)
      {
        v101 = *v108;
        v98 = v21;
        do
        {
          for (j = 0; j != v102; ++j)
          {
            if (*v108 != v101)
            {
              objc_enumerationMutation(obj);
            }

            v43 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v107 + 1) + 8 * j)];
            if (v43)
            {
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v44 = [v21 accessories];
              v45 = [v44 copy];

              v46 = [v45 countByEnumeratingWithState:&v103 objects:v119 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v104;
                while (2)
                {
                  for (k = 0; k != v47; ++k)
                  {
                    if (*v104 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v50 = *(*(&v103 + 1) + 8 * k);
                    v51 = [v50 uuid];
                    v52 = [v51 isEqual:v43];

                    if (v52)
                    {
                      if ([v50 isReachable])
                      {
                        v53 = 1;
                      }

                      else
                      {
                        v54 = [v96 residentMesh];
                        v55 = [v54 deviceForAccessory:v50 residentOrder:1 reachableResidents:0];
                        v53 = v55 != 0;
                      }

                      v56 = objc_autoreleasePoolPush();
                      v57 = v21;
                      v58 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                      {
                        v59 = HMFGetLogIdentifier();
                        [v50 uuid];
                        v61 = v60 = v53;
                        [v61 UUIDString];
                        v62 = v97 = v56;
                        *buf = 138543874;
                        v123 = v59;
                        v124 = 2112;
                        v125 = v62;
                        v126 = 1024;
                        LODWORD(v127) = v60;
                        _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Updating reachability for accessory: %@ to: %d", buf, 0x1Cu);

                        v53 = v60;
                        v56 = v97;
                      }

                      objc_autoreleasePoolPop(v56);
                      v63 = [v50 uuid];
                      v64 = [v63 UUIDString];
                      v117 = v64;
                      v65 = [MEMORY[0x277CCABB0] numberWithBool:v53];
                      v118 = v65;
                      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
                      [v99 addObject:v66];

                      v21 = v98;
                      goto LABEL_45;
                    }
                  }

                  v47 = [v45 countByEnumeratingWithState:&v103 objects:v119 count:16];
                  if (v47)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_45:
            }
          }

          v102 = [obj countByEnumeratingWithState:&v107 objects:v120 count:16];
        }

        while (v102);
      }

      v5 = v90;
      v24 = v92;
      if (v92 && v93)
      {
        [v21 _registerDeviceForReachabilityNotification:v93 accessoryList:obj];
        v67 = objc_autoreleasePoolPush();
        v68 = v21;
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = HMFGetLogIdentifier();
          *buf = 138543618;
          v123 = v70;
          v124 = 2112;
          v125 = v92;
          _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_INFO, "%{public}@Sending current reachability to destination:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v67);
        v115[0] = v88;
        v71 = [v99 copy];
        v115[1] = v91;
        v116[0] = v71;
        v72 = [v68 uuid];
        v73 = [v72 UUIDString];
        v116[1] = v73;
        v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];

        v75 = [HMDRemoteMessage messageWithName:@"kRemoteReachabilityChangedNotificationKey" identifier:0 messagePayload:v74];
        v76 = [v96 messageDispatcher];
        v77 = [v68 uuid];
        v78 = [v93 remoteDestinationString];
        v79 = [v68 workQueue];
        [v76 sendSecureMessage:v75 target:v77 userID:0 destination:v78 responseQueue:v79 responseHandler:0];

        v24 = v92;
      }

      v6 = v89;
      v26 = v93;
    }

    else
    {
      [v21 _deregisterDeviceForReachabilityNotification:v25];
    }

    v80 = v94;
    goto LABEL_56;
  }

  v82 = objc_autoreleasePoolPush();
  v83 = v5;
  v84 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    v85 = HMFGetLogIdentifier();
    *buf = 138543618;
    v123 = v85;
    v124 = 2112;
    v125 = v6;
    _os_log_impl(&dword_2531F8000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@Message not supported: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v82);
  v86 = [v6 responseHandler];

  if (v86)
  {
    v87 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v80 = [v6 responseHandler];
    v95 = v87;
    v80[2](v80, v87, 0);
LABEL_56:
  }

  v81 = *MEMORY[0x277D85DE8];
}

void sub_2533A3AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533A9D8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak(&STACK[0x290]);
  _Unwind_Resume(a1);
}

void sub_2533AA3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533AA714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533AED8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

id __createAccessoryBrowserAddAccessoryCompletionHandler(id val, void *a2, void *a3, void *a4, void *a5)
{
  objc_initWeak(&location, val);
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke;
  v19[3] = &unk_279722EE8;
  v20 = v9;
  v21 = v11;
  v22 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v9;
  objc_copyWeak(&v24, &location);
  v23 = v10;
  v16 = v10;
  v17 = _Block_copy(v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v17;
}

void ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke(id *a1, void *a2, void *a3, uint64_t a4, unsigned int a5, unsigned int a6, void *a7, void *a8)
{
  v91 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v70 = a3;
  v13 = a7;
  v68 = a8;
  v14 = [a1[4] accessoryUUID];

  if (v70 && !v14)
  {
    [a1[4] setAccessoryUUID:v70];
  }

  [a1[5] pairedToServer:v12 certificationStatus:a4 addedViaWAC:a5 legacyWAC:a6];
  [a1[5] setAuthenticationMethod:{objc_msgSend(v12, "authMethod")}];
  v15 = objc_alloc(MEMORY[0x277D0F770]);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s(), %s:%ld", "HMDAccessoryBrowserAddAccessoryCompletionHandler __createAccessoryBrowserAddAccessoryCompletionHandler(HMDHome *__weak, HMSetupAccessoryDescription *__strong, HMDUnpairedHAPAccessoryConfiguration *__strong, HMDAccessoryPairingEvent *__strong, HMFMessage *__strong)_block_invoke", "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Home/HMDHome.m", 11629];
  v17 = [a1[6] activity];
  v80 = [v15 initWithName:v16 parent:v17];

  WeakRetained = objc_loadWeakRetained(a1 + 8);
  [WeakRetained unsetFabricForPairing];
  if (!v13 && WeakRetained)
  {
    v19 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke_4350;
    block[3] = &unk_279722EC0;
    v72 = v80;
    v73 = WeakRetained;
    v74 = a1[4];
    v75 = a1[7];
    v76 = a1[5];
    v77 = v12;
    v79 = a4;
    v78 = a1[6];
    dispatch_async(v19, block);

    v20 = 0;
    v21 = v72;
    goto LABEL_37;
  }

  if (!WeakRetained)
  {
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];

    v13 = v22;
  }

  v21 = [a1[5] vendorDetailsForReporting];
  v23 = v13;
  v20 = v23;
  v24 = v23;
  if (WeakRetained)
  {
    v24 = v23;
    if ([v23 code] == 2010)
    {
      v25 = [WeakRetained threadNetworkID];

      if (v25)
      {
        v26 = 2009;
      }

      else
      {
        v26 = 2010;
      }

      v24 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:v26];
    }
  }

  v27 = objc_autoreleasePoolPush();
  v28 = WeakRetained;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138544386;
    v82 = v30;
    v83 = 2112;
    v84 = v70;
    v85 = 2112;
    v86 = v20;
    v87 = 2112;
    v88 = v24;
    v89 = 2112;
    v90 = v68;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Add accessory completion handler for accessory uuid %@ error %@ mapped error %@ context %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v27);
  if ([a1[5] isMatterAccessory] && objc_msgSend(a1[5], "isAddOperation"))
  {
    if (!v68)
    {
      context = objc_autoreleasePoolPush();
      v31 = v28;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v82 = v33;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Matter pairing end context is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(context);
    }

    if (![v68 isCancelled])
    {
      notifyMatterMetricPairingEnded(v28, v68);
      goto LABEL_29;
    }

    v34 = v28;
    v62 = v68;
    contexta = objc_autoreleasePoolPush();
    v35 = v34;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v82 = v37;
      v83 = 2112;
      v84 = v62;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing cancelled %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(contexta);
    contextb = [MEMORY[0x277CBEB38] dictionary];
    [contextb setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HMDMatterAccessoryPairingSubmitKey"];
    v38 = [v62 error];
    [contextb setObject:v38 forKeyedSubscript:@"HMDMatterAccessoryPairingFailureErrorKey"];

    v39 = [v62 sourceErrorDomain];
    [contextb setObject:v39 forKeyedSubscript:@"HMDMatterAccessoryPairingSourceErrorDomain"];

    v40 = [MEMORY[0x277CCAB98] defaultCenter];
    v41 = [contextb copy];
    [v40 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v41];
  }

  else
  {
    v35 = [v28 logEventSubmitter];
    [v35 submitLogEvent:a1[5] error:v24];
  }

LABEL_29:
  v42 = objc_autoreleasePoolPush();
  v43 = v28;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v45 = HMFGetLogIdentifier();
    v46 = a1[4];
    *buf = 138543874;
    v82 = v45;
    v83 = 2112;
    v84 = v46;
    v85 = 2112;
    v86 = v24;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_DEBUG, "%{public}@Failed to add accessory %@ with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v42);
  v47 = v80;
  [v12 category];

  [v21 model];
  [v21 manufacturer];

  [v21 firmwareVersion];
  [a1[5] linkType];
  v48 = HAPLinkTypeDescription();
  v49 = HMFBooleanToString();
  v50 = HMFBooleanToString();
  v51 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v24 domain];

  [v24 code];
  [a1[5] isThreadAccessory];
  v52 = HMFBooleanToString();
  [a1[5] accessorySupportsWoL];
  v53 = HMFBooleanToString();

  v54 = [a1[6] responseHandler];

  if (v54)
  {
    v55 = [a1[6] responseHandler];
    (v55)[2](v55, v24, 0);
  }

  if (WeakRetained)
  {
    [v43 _removePendingAccessoryAdd:a1[4]];
    v56 = [v43 accessoryBrowser];
    [v56 removePairingInformationForAccessoryServer:v12];

    v57 = [a1[7] networkCredential];
    v58 = [v57 clientIdentifier];

    if (v58)
    {
      v59 = [a1[7] networkCredential];
      v60 = [v59 clientIdentifier];
      [v43 _removeClientConfigurationWithIdentifier:v60];
    }
  }

LABEL_37:
  __HMFActivityScopeLeave();

  v61 = *MEMORY[0x277D85DE8];
}

void ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke_4350(uint64_t a1)
{
  [*(a1 + 32) begin];
  v2 = *(a1 + 32);
  [*(a1 + 40) _accessoryPairingDidComplete:*(a1 + 48) configuration:*(a1 + 56) pairingEvent:*(a1 + 64) accessoryServer:*(a1 + 72) certificationStatus:*(a1 + 88) requestMessage:*(a1 + 80)];
  __HMFActivityScopeLeave();
}

id HMDHomeCreateAddAccessoryProgressHandler(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_initWeak(&location, v5);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __HMDHomeCreateAddAccessoryProgressHandler_block_invoke;
  aBlock[3] = &unk_2797223D8;
  v14 = v5;
  v8 = v5;
  objc_copyWeak(&v17, &location);
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = _Block_copy(aBlock);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

void __HMDHomeCreateAddAccessoryProgressHandler_block_invoke(id *a1, uint64_t a2, void *a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMSetupAccessoryProgressAsString();
    *buf = 138543618;
    v83 = v9;
    v84 = 2112;
    v85 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Progress Handler called with progress: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v79 = [v5 accessoryUUID];
    if (v79 || ([a1[5] addRequestIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v78 = a1;
      v13 = objc_autoreleasePoolPush();
      v76 = WeakRetained;
      v14 = WeakRetained;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = HMSetupAccessoryProgressAsString();
        *buf = 138543618;
        v83 = v16;
        v84 = 2112;
        v85 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Posting accessory pairing state progress notification to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      v80[0] = @"HMDSetupAccessoryProgressStateKey";
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      v81[0] = v19;
      v80[1] = @"HMDAccessoryProgressStateNotificationKey";
      v20 = HMSetupAccessoryProgressAsString();
      v81[1] = v20;
      v80[2] = @"HMDAccessoryProgressStateTimeNotificationKey";
      v21 = [MEMORY[0x277CBEAA8] date];
      v81[2] = v21;
      v80[3] = @"HMDAccessoryProgressStateforAccessoryKey";
      if (v79)
      {
        [v79 UUIDString];
      }

      else
      {
        v75 = [v78[5] addRequestIdentifier];
        [v75 UUIDString];
      }
      v22 = ;
      v81[3] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:4];
      [v18 postNotificationName:@"HMDAccessoryProgressStateUpdateNotification" object:v14 userInfo:v23];

      if (!v79)
      {

        v22 = v75;
      }

      WeakRetained = v76;
      a1 = v78;
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v24 setObject:v25 forKeyedSubscript:*MEMORY[0x277CD2020]];

    v26 = [v5 accessoryName];

    if (v26)
    {
      v27 = [v5 accessoryName];
      [v24 setObject:v27 forKeyedSubscript:*MEMORY[0x277CD1FC8]];
    }

    v28 = [v5 accessoryUUID];

    if (v28)
    {
      v29 = [v5 accessoryUUID];
      v30 = [v29 UUIDString];
      [v24 setObject:v30 forKeyedSubscript:*MEMORY[0x277CCF0B0]];
    }

    v31 = [v5 manufacturerName];

    if (v31)
    {
      v32 = [v5 manufacturerName];
      [v24 setObject:v32 forKeyedSubscript:@"kAccessoryInfoManufacturerKey"];
    }

    v33 = [v5 category];

    if (v33)
    {
      v34 = [v5 category];
      v35 = encodeRootObjectForIncomingXPCMessage(v34, 0);
      [v24 setObject:v35 forKeyedSubscript:@"kAccessoryCategory"];
    }

    if ([v5 certificationStatus])
    {
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "certificationStatus")}];
      [v24 setObject:v36 forKeyedSubscript:@"kAccessoryCertificationStatusKey"];
    }

    v37 = [v5 commissioneeInfo];

    if (v37)
    {
      v38 = [v5 commissioneeInfo];
      v39 = encodeRootObjectForIncomingXPCMessage(v38, 0);
      [v24 setObject:v39 forKeyedSubscript:*MEMORY[0x277CCFDA0]];
    }

    v40 = [v5 systemCommissionerUUID];

    if (v40)
    {
      v41 = [v5 systemCommissionerUUID];
      v42 = [v41 UUIDString];
      [v24 setObject:v42 forKeyedSubscript:*MEMORY[0x277CCFDC0]];
    }

    if (a2 == 9)
    {
      v48 = [WeakRetained wiFiRouterAccessories];
      v44 = [v48 firstObject];

      if (v44)
      {
        v49 = [v44 uuid];
        v50 = [v49 UUIDString];
        [v24 setObject:v50 forKeyedSubscript:*MEMORY[0x277CD04F8]];
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = WeakRetained;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          v55 = HMSetupAccessoryProgressAsString();
          *buf = 138543618;
          v83 = v54;
          v84 = 2112;
          v85 = v55;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Progress is %@ but no accessory being replaced", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v51);
        v44 = 0;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_47;
      }

      v43 = [v5 productData];

      if (!v43)
      {
        goto LABEL_47;
      }

      v44 = +[HMDVendorDataManager sharedVendorDataManager];
      v45 = [v5 productData];
      v46 = [v44 vendorModelEntryForProductData:v45];

      v47 = [a1[5] addRequestIdentifier];
      if (v47)
      {

LABEL_48:
        goto LABEL_49;
      }

      v56 = [a1[5] appIdentifier];
      v57 = [v46 appBundleID];
      v58 = [v56 isEqual:v57];

      if (v58)
      {
        goto LABEL_48;
      }

      v59 = [v46 appStoreID];
      if (v59 && (v60 = v59, [v46 appBundleID], v61 = objc_claimAutoreleasedReturnValue(), v61, v60, v61))
      {
        v62 = [v46 appStoreID];
        [v24 setObject:v62 forKeyedSubscript:@"kAccessoryVendorInfoStoreIDKey"];

        v63 = [v46 appBundleID];
        [v24 setObject:v63 forKeyedSubscript:@"kAccessoryVendorInfoBundleIDKey"];
      }

      else
      {
        v64 = objc_autoreleasePoolPush();
        v77 = WeakRetained;
        v65 = WeakRetained;
        v66 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v67 = HMFGetLogIdentifier();
          v68 = [v5 productData];
          *buf = 138543618;
          v83 = v67;
          v84 = 2112;
          v85 = v68;
          _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_DEBUG, "%{public}@No appID/bundleID found for productData: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v64);
        WeakRetained = v77;
      }
    }

LABEL_47:
    v69 = MEMORY[0x277D0F848];
    v70 = *MEMORY[0x277CD2068];
    v71 = [WeakRetained messageDestination];
    v44 = [v69 messageWithName:v70 destination:v71 payload:v24];

    v72 = [a1[6] identifier];
    [v44 setIdentifier:v72];

    [v44 setRequiresSPIEntitlement];
    v73 = [a1[6] transport];
    [v44 setTransport:v73];

    v46 = [WeakRetained msgDispatcher];
    [v46 sendMessage:v44 completionHandler:0];
    goto LABEL_48;
  }

LABEL_49:

  v74 = *MEMORY[0x277D85DE8];
}

void sub_2533B3A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533B3FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533B75DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _mediaSystemsContainsAccessory(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___mediaSystemsContainsAccessory_block_invoke;
  v7[3] = &unk_279726148;
  v8 = v3;
  v4 = v3;
  v5 = [a1 na_any:v7];

  return v5;
}

uint64_t _mediaSystemContainsAccessory(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 components];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___mediaSystemContainsAccessory_block_invoke;
  v8[3] = &unk_279722E98;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t ___mediaSystemContainsAccessory_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 uuid];
  v5 = [*(a1 + 32) uuid];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

void sub_2533C46E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533CB1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533CC890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533E06EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  objc_destroyWeak((v2 - 176));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

void __notifyRegisteredIdentityRemoved(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v9;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Notifying of removed identity: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v11 = [v5 identity];
    [v10 setObject:v11 forKeyedSubscript:@"HMDIdentityNotificationKey"];

    v12 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (isKindOfClass)
    {
      v16 = [v12 device];
      [v10 setObject:v16 forKeyedSubscript:@"HMDDeviceNotificationKey"];
    }

    v17 = v12;
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v18)
    {
      v21 = [v17 account];
      [v10 setObject:v21 forKeyedSubscript:@"HMDAccountNotificationKey"];
    }

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = [v10 copy];
    [v22 postNotificationName:@"HMDIdentityRegistryRemovedIdentity" object:v7 userInfo:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __removeRegisteredObjectForRegisteredIdentity(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = [v5 lock];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ____removeRegisteredObjectForRegisteredIdentity_block_invoke;
    v10[3] = &unk_279734960;
    v11 = v6;
    v12 = v8;
    v13 = v5;
    [v9 performBlock:v10];
  }
}

void ____removeRegisteredObjectForRegisteredIdentity_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registeredObjects];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) registeredObjects];
  v4 = [v3 hmf_isEmpty];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing registered identity, %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(*(a1 + 48) + 8) removeObject:*(a1 + 32)];
    __notifyRegisteredIdentityRemoved(*(a1 + 48), *(a1 + 32));
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __registeredIdentitiesForIdentity(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v3[1];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 identity];
          v15 = [v14 isEqual:v5];

          if (v15)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v6 = [v7 copy];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

void __notifyRegisteredIdentityAdded(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v9;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Notifying of added identity: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v11 = [v5 identity];
    [v10 setObject:v11 forKeyedSubscript:@"HMDIdentityNotificationKey"];

    v12 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (isKindOfClass)
    {
      v16 = [v12 device];
      [v10 setObject:v16 forKeyedSubscript:@"HMDDeviceNotificationKey"];
    }

    v17 = v12;
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v18)
    {
      v21 = [v17 account];
      [v10 setObject:v21 forKeyedSubscript:@"HMDAccountNotificationKey"];
    }

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = [v10 copy];
    [v22 postNotificationName:@"HMDIdentityRegistryAddedIdentity" object:v7 userInfo:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __registerObjectForRegisteredIdentity(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v6 registeredObjects];
    v11 = [v10 containsObject:v8];

    if ((v11 & 1) == 0)
    {
      objc_initWeak(&location, v5);
      objc_initWeak(&v22, v8);
      objc_initWeak(&from, v6);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = ____registerObjectForRegisteredIdentity_block_invoke;
      v17 = &unk_27972D160;
      objc_copyWeak(&v18, &location);
      objc_copyWeak(&v19, &from);
      objc_copyWeak(&v20, &v22);
      [v8 setDeallocationBlock:&v14];
      v12 = [v8 observedObject];

      if (v12)
      {
        v13 = [v6 registeredObjects];
        [v13 addObject:v8];
      }

      else
      {
        __removeRegisteredObjectForRegisteredIdentity(v5, v6, v8);
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void sub_2533E59F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak(v17 + 6);
  objc_destroyWeak(v17 + 5);
  objc_destroyWeak(v17 + 4);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void ____registerObjectForRegisteredIdentity_block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  v4 = objc_loadWeakRetained(a1 + 6);
  v5 = v4;
  if (WeakRetained && v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Registered object deallocated, removing object from identity: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    __removeRegisteredObjectForRegisteredIdentity(v7, v3, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2533E6120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11258(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2533E6494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533E67BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533E6B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533E707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533E73F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533ED268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533EF2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533F1A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533F56F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13089(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2533F6F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

id actionResultForAction(void *a1)
{
  v1 = MEMORY[0x277D47338];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 aceId];

  [v3 setRequestActionId:v4];

  return v3;
}

uint64_t isActivationCharacteristicType(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:*MEMORY[0x277CCF9F0]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:*MEMORY[0x277CCF748]];
  }

  return v2;
}

uint64_t isOutcomeSuccess(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D47E50]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47DB0]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47DB8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47E40]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D47E38]];
  }

  return v2;
}

void sub_2533FC8DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 208));
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

id getActivationCharacteristicFromServiceIfAny(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 characteristics];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = *v11;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v10 + 1) + 8 * i);
        v6 = [v5 type];
        v7 = isActivationCharacteristicType(v6);

        if (v7)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_2533FFBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak((v49 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25340119C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_253402FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t isTemperatureAttribute(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D480B0]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47F60]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47FA8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47F68]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D47FB8]];
  }

  return v2;
}

uint64_t temperatureConversionIsNeeded(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    if (isMetricLocale_onceToken != -1)
    {
      dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_133089);
    }

    if (isMetricLocale_isMetricLocale != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  if (([v1 isEqualToString:*MEMORY[0x277D48390]] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = 1;
LABEL_8:

  return v3;
}

void sub_253409B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253409D38(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HMDUserSettingsBackingStoreControllerRunStateAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown state %@", v3];
  }

  else
  {
    v1 = off_2797232D8[a1];
  }

  return v1;
}

void sub_253415998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534161EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

HMDHTTPDevice *__httpDeviceForNetService(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v3 name];
  v7 = [v5 initWithUUIDString:v6];

  if (v7)
  {
    v8 = [[HMDHTTPDevice alloc] initWithIdentifier:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v4;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v3 name];
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Unable to parse UUID from net service name %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_253416AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253417A84(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253417B14(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253417BA4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253418390(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253418FC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_25341A30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25341D90C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 120));
  _Block_object_dispose((v3 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25341E99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25341F5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14888(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25341FC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253420CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getRadarDraftClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarDraft");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarDraftClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getRadarComponentClass_block_invoke(v3);
  }

  return result;
}

Class __getRadarComponentClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarComponent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarComponentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __125__HMDTTRManager_initiateRadarWithTitle_componentName_componentVersion_componentID_displayReason_attachments_isUserInitiated___block_invoke(v3);
  }

  return result;
}

void TapToRadarKitLibrary()
{
  if (!TapToRadarKitLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

uint64_t TapToRadarKitLibraryCore()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = TapToRadarKitLibraryCore_frameworkLibrary;
  v6 = TapToRadarKitLibraryCore_frameworkLibrary;
  if (!TapToRadarKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_2797234A8;
    v8 = *off_2797234B8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    TapToRadarKitLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_25342C814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TapToRadarKitLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  TapToRadarKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25342D0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTapToRadarServiceClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("TapToRadarService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTapToRadarServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(HMDTTRManager *)v3];
  }

  return result;
}

void sub_253433288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 184));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16828(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253437A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2534380A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_253438C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2534398D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_25343A01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17408(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HMDIsSiriClientIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.Siri"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"assistant_service"];
  }

  return v2;
}

uint64_t HMDIsFirstPartyClientIdentifier(void *a1)
{
  v1 = a1;
  if (HMDIsFirstPartyClientIdentifier_onceToken != -1)
  {
    dispatch_once(&HMDIsFirstPartyClientIdentifier_onceToken, &__block_literal_global_17822);
  }

  if ([v1 hasPrefix:@"com.apple."] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"apple."))
  {
    v2 = 1;
  }

  else
  {
    v2 = [HMDIsFirstPartyClientIdentifier_knownClientIdentifiers containsObject:v1];
  }

  return v2;
}

uint64_t __HMDIsFirstPartyClientIdentifier_block_invoke()
{
  HMDIsFirstPartyClientIdentifier_knownClientIdentifiers = [MEMORY[0x277CBEB98] setWithObjects:{@"accountsd", @"amsaccountsd", @"announced", @"assistant_service", @"assistantd", @"Carousel", @"CarPlay", @"cloudmediaservicesd", @"companiond", @"coordinated", @"coreautomationd", @"diagnosticextensionsd", @"hdsutil", @"HDSViewService", @"HomeAppIntentsExtension", @"homeenergyd", @"homehubd", @"HomeIntegrationTests-Runner", @"HomeKitDiagnosticExtension", @"HomeKitIntentExtension", @"homepodsensoryreporterd", @"homepodsettingsd", @"homeutil", @"itunescloudd", @"knowledgeconstructiond", @"mediaanalysisd-service", @"mediaanalysisd", @"mediaremoted", @"mediasetupd", @"passd", @"PineBoard", @"proximitycontrold", @"rapportd", @"seserviced", @"sharingd", @"Shortcuts", @"Siri Debug", @"siri", @"siriinferenced", @"siriknowledged", @"sirittsd", @"SiriUI", @"SiriUserFeedbackLearningUnivers", @"SoundBoard", @"SpringBoard", @"taptoradard", @"tvairplayd", @"tvremoted", @"tvsetuputil", @"userprofilesd", @"voiced", @"wifid", 0}];

  return MEMORY[0x2821F96F8]();
}

__CFString *HMDRequestSourceAsString(uint64_t a1)
{
  if (a1 > 1059)
  {
    if (a1 <= 1139)
    {
      if (a1 > 1099)
      {
        if (a1 > 1119)
        {
          if (a1 == 1120)
          {
            v2 = @"HMDHome";

            return v2;
          }

          if (a1 == 1130)
          {
            v2 = @"PeriodicReader";

            return v2;
          }
        }

        else
        {
          if (a1 == 1100)
          {
            v2 = @"HMDService";

            return v2;
          }

          if (a1 == 1110)
          {
            v2 = @"WalletKeyAccessory";

            return v2;
          }
        }
      }

      else if (a1 > 1079)
      {
        if (a1 == 1080)
        {
          v2 = @"Climate";

          return v2;
        }

        if (a1 == 1090)
        {
          v2 = @"DataStream";

          return v2;
        }
      }

      else
      {
        if (a1 == 1060)
        {
          v2 = @"ActionSets";

          return v2;
        }

        if (a1 == 1070)
        {
          v2 = @"Camera";

          return v2;
        }
      }
    }

    else if (a1 <= 1179)
    {
      if (a1 > 1159)
      {
        if (a1 == 1160)
        {
          v2 = @"MediaAccessory";

          return v2;
        }

        if (a1 == 1170)
        {
          v2 = @"NetworkRouterController";

          return v2;
        }
      }

      else
      {
        if (a1 == 1140)
        {
          v2 = @"Light";

          return v2;
        }

        if (a1 == 1150)
        {
          v2 = @"NaturalLight";

          return v2;
        }
      }
    }

    else if (a1 <= 1199)
    {
      if (a1 == 1180)
      {
        v2 = @"WakeOnLan";

        return v2;
      }

      if (a1 == 1190)
      {
        v2 = @"SiriEndpoint";

        return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 1200:
          v2 = @"TargetControl";

          return v2;
        case 1210:
          v2 = @"Widgets";

          return v2;
        case 1220:
          v2 = @"WifiManagement";

          return v2;
      }
    }

LABEL_148:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected source value: %lu", a1];

    return v2;
  }

  if (a1 <= 7)
  {
    if (a1 > 3)
    {
      if (a1 > 5)
      {
        if (a1 == 6)
        {
          v2 = @"ThirdParty";
        }

        else
        {
          v2 = @"SourceInternalLegacy";
        }
      }

      else if (a1 == 4)
      {
        v2 = @"TimerTrigger";
      }

      else
      {
        v2 = @"FirstParty";
      }

      return v2;
    }

    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v2 = @"User";
      }

      else
      {
        v2 = @"EventTrigger";
      }

      return v2;
    }

    if (!a1)
    {
      v2 = @"Unknown";

      return v2;
    }

    if (a1 == 1)
    {
      v2 = @"Siri";

      return v2;
    }

    goto LABEL_148;
  }

  if (a1 <= 1009)
  {
    if (a1 <= 9)
    {
      if (a1 == 8)
      {
        v2 = @"RemoteRequested";
      }

      else
      {
        v2 = @"IntentSuggestion";
      }

      return v2;
    }

    if (a1 == 10)
    {
      v2 = @"Shortcuts";

      return v2;
    }

    if (a1 == 1000)
    {
      v2 = @"AccessoryFirmwareUpdate";

      return v2;
    }

    goto LABEL_148;
  }

  if (a1 <= 1029)
  {
    if (a1 == 1010)
    {
      v2 = @"AccessoryMetrics";

      return v2;
    }

    if (a1 == 1020)
    {
      v2 = @"AccessoryDiagnostics";

      return v2;
    }

    goto LABEL_148;
  }

  switch(a1)
  {
    case 1030:
      v2 = @"ThreadNetworkManagement";

      break;
    case 1040:
      v2 = @"HAPAccessory";

      break;
    case 1050:
      v2 = @"SiriTVRemote";

      return v2;
    default:
      goto LABEL_148;
  }

  return v2;
}

id HMDRequestSourceAsLegacyMetricString(uint64_t a1)
{
  v1 = HMDRequestSourceAsString(a1);
  if (([v1 hasPrefix:@"Unexpected"] & 1) == 0)
  {
    v2 = [@"Source_" stringByAppendingString:v1];

    v1 = v2;
  }

  return v1;
}

void sub_253441E60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_253443554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_253444CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25344559C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253447110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25344756C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253447BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18677(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25345684C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25345DE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  os_unfair_lock_unlock((a25 + v41));
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_25345EDF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253460AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  os_unfair_lock_unlock((v9 + v10));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253460E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  os_unfair_lock_unlock((v9 + v10));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HMDLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!isAppleTV())
  {
    goto LABEL_4;
  }

  v4 = [v1 stringByAppendingString:@"_APPLETV"];
  v5 = [v3 localizedStringForKey:v4 value:@"HMDDefaultLocalizedStringValue" table:@"HomeKitDaemon"];
  if ([v5 isEqualToString:@"HMDDefaultLocalizedStringValue"])
  {

LABEL_4:
    v5 = [v3 localizedStringForKey:v1 value:&stru_286509E58 table:@"HomeKitDaemon"];
    goto LABEL_6;
  }

LABEL_6:
  objc_autoreleasePoolPop(v2);

  return v5;
}

id HMDLocalizedStringForKeyWithCount(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = @"_SINGULAR";
  }

  else
  {
    v2 = @"_PLURAL";
  }

  v3 = [a1 stringByAppendingString:v2];
  v4 = HMDLocalizedStringForKey(v3);

  return v4;
}

uint64_t __Block_byref_object_copy__20854(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253465BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25346D7DC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t __HMDActionSetAddActionWithModel(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    v10 = [v8 backedObjectWithParent:v7 error:a4];
    if (v10)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      if (isKindOfClass)
      {
        [v7 _handleAddNewAction:v10 message:v9];
      }

      else if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a4 = isKindOfClass = 0;
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void sub_2534709EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22030(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25347119C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_253471B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_destroyWeak((v43 + 56));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_25347FD14(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25347FDA8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25347FE3C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2534801D8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253480E88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_253481C88(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253487B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253490A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

id findResidentDevice(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __findResidentDevice_block_invoke;
  v7[3] = &unk_27972AE10;
  v8 = v3;
  v4 = v3;
  v5 = [a1 na_firstObjectPassingTest:v7];

  return v5;
}

uint64_t __findResidentDevice_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void sub_253491CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253493278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253493878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25349427C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534956CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_253496A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24695(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __parseGlobalDestination(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = [v11 rangeOfString:@"/"];
    v13 = v11;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v11 substringToIndex:v12];
    }

    if ([v13 containsString:@"self-token:"])
    {
      v14 = [v13 mutableCopy];
      [v14 replaceOccurrencesOfString:@"self-token:" withString:@"token:" options:1 range:{0, objc_msgSend(v14, "length")}];
      v15 = [v14 copy];

      v13 = v15;
    }

    if (([v13 hasPrefix:@"token:"] & 1) == 0)
    {
      if (a5)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing token prefix." suggestion:0];
        *a5 = v23 = 0;
LABEL_28:

        goto LABEL_29;
      }

LABEL_27:
      v23 = 0;
      goto LABEL_28;
    }

    if (a2)
    {
      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      v17 = +[_HMDDeviceHandle identifierNamespace];
      v18 = [v13 dataUsingEncoding:4];
      *a2 = [v16 initWithNamespace:v17 data:v18];
    }

    v19 = [v13 substringFromIndex:{objc_msgSend(@"token:", "length")}];
    if ([v19 length])
    {
      v20 = objc_alloc(MEMORY[0x277CBEA90]);
      v21 = [v20 hmf_initWithHexadecimalString:v19 options:0];

      if (v21)
      {
        if (a3)
        {
          v22 = v21;
          *a3 = v21;
        }

        if (a4)
        {
          *a4 = [HMDAccountHandle accountHandleForDestination:v11];
        }

        v23 = 1;
        goto LABEL_28;
      }

      if (!a5)
      {
        goto LABEL_26;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = @"Invalid token string.";
      v26 = 3;
    }

    else
    {
      if (!a5)
      {
LABEL_26:

        goto LABEL_27;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = @"Missing token string.";
      v26 = 19;
    }

    *a5 = [v24 hmErrorWithCode:v26 description:@"Invalid destination." reason:v25 suggestion:0];
    goto LABEL_26;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a5 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_29:

  return v23;
}

id __parseLocalDestination(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (a2)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
LABEL_10:
      v7 = 0;
      *a2 = v9;
      goto LABEL_18;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_18;
  }

  if (([v3 hasPrefix:@"device:"] & 1) == 0)
  {
    if (a2)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing local device prefix." suggestion:0];
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = [v4 substringFromIndex:{objc_msgSend(@"device:", "length")}];
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else if (a2)
    {
      *a2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Invalid device identifier" suggestion:0];
    }
  }

  else if (a2)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing device identifier." suggestion:0];
    *a2 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_18:

  return v7;
}

__CFString *HMDCloudShareTrustManagerConfigureStateAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown state %@", v3];
  }

  else
  {
    v1 = off_279724418[a1];
  }

  return v1;
}