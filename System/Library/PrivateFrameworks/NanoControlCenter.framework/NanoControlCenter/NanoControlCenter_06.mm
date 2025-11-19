uint64_t sub_25AF97180(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_25B006024();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_25B006294();
      sub_25B005994();
      result = sub_25B0062D4();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_25AF97420(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25128);
  v35 = a2;
  result = sub_25B006024();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 32 * v20;
      v22 = *v21;
      v37 = *(v21 + 8);
      v23 = *(v21 + 24);
      v36 = *(v21 + 16);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v22;
      }

      sub_25B006294();
      sub_25B005DF4();
      MEMORY[0x25F85E0A0](v37);
      sub_25B0062B4();
      if (v23)
      {
        sub_25B005994();
      }

      result = sub_25B0062D4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v22;
      v16[1] = v37;
      v16[2] = v36;
      v16[3] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_25AF97710(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25120);
  v34 = a2;
  result = sub_25B006024();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_25B006294();
      MEMORY[0x25F85E0A0](v21);
      result = sub_25B0062D4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25AF979AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25600);
  v37 = a2;
  result = sub_25B006024();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25B006294();
      sub_25B005994();
      result = sub_25B0062D4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_25AF97C80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25110);
  v29 = v0;
  v1 = *v0;
  v30 = sub_25B006014();
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v30 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = 40 * (v11 | (v5 << 6));
        v15 = *(v1 + 48) + v14;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v1 + 56) + v14;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = *(v21 + 24);
        v26 = *(v30 + 48) + v14;
        v27 = *(v21 + 32);
        *v26 = v16;
        *(v26 + 8) = v17;
        *(v26 + 16) = v18;
        *(v26 + 24) = v19;
        *(v26 + 32) = v20;
        v28 = *(v30 + 56) + v14;
        *v28 = v22;
        *(v28 + 8) = v23;
        *(v28 + 16) = v24;
        *(v28 + 24) = v25;
        *(v28 + 32) = v27;
        sub_25AF18244(v16, v17, v18, v19, v20);
        result = sub_25AF1988C(v22, v23, v24, v25, v27);
      }

      while (v9);
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
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

void *sub_25AF97E50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25700);
  v2 = *v0;
  v3 = sub_25B006014();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;
        *(*(v4 + 56) + v17) = v18;
        v23 = v19;
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

void *sub_25AF97FCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA250F8);
  v2 = *v0;
  v3 = sub_25B006014();
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

void *sub_25AF9813C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25650);
  v2 = *v0;
  v3 = sub_25B006014();
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
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v17 *= 2;
        v24 = (*(v2 + 56) + v17);
        v25 = *v24;
        LOBYTE(v24) = v24[1];
        v26 = *(v4 + 48) + v18;
        v27 = *(v19 + 32);
        *v26 = *v19;
        *(v26 + 8) = v21;
        *(v26 + 16) = v22;
        *(v26 + 24) = v23;
        *(v26 + 32) = v27;
        v28 = (*(v4 + 56) + v17);
        *v28 = v25;
        v28[1] = v24;
        result = sub_25AF181DC(v20, v21, v22, v23, v27);
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

void *sub_25AF982CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255C0);
  v2 = *v0;
  v3 = sub_25B006014();
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
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v18 + 16);
        v23 = *(v18 + 24);
        v24 = *(v4 + 48) + 40 * v17;
        v25 = *(v18 + 32);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v22;
        *(v24 + 24) = v23;
        *(v24 + 32) = v25;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_25AF181DC(v19, v20, v22, v23, v25);
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

void *sub_25AF98464(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_25B006014();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_25AF985C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25128);
  v2 = *v0;
  v3 = sub_25B006014();
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
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 24);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 32 * v17;
        v23 = *(v18 + 8);
        *v22 = *v18;
        *(v22 + 8) = v23;
        *(v22 + 24) = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

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

void *sub_25AF98750()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25120);
  v2 = *v0;
  v3 = sub_25B006014();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_25AF988B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25600);
  v2 = *v0;
  v3 = sub_25B006014();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

char *sub_25AF98A30(char *a1, int64_t a2, char a3)
{
  result = sub_25AF98AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AF98A50(char *a1, int64_t a2, char a3)
{
  result = sub_25AF98BDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25AF98A70(void *a1, int64_t a2, char a3)
{
  result = sub_25AF98E04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AF98A90(char *a1, int64_t a2, char a3)
{
  result = sub_25AF98CF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AF98AB0(char *a1, int64_t a2, char a3)
{
  result = sub_25AF98F38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25AF98AD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B00);
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

char *sub_25AF98BDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AF98CF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA256A8);
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

void *sub_25AF98E04(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA256F0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AF98F38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA256D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25AF9905C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25AF8F064(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25AF982CC();
    v7 = v11;
  }

  v8 = *(v7 + 48) + 40 * v5;
  sub_25AF18128(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_25AF99100(v5, v7);
  *v2 = v7;
  return v9;
}

void *sub_25AF99100(void *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v31 = a2 + 64;
    v29 = (sub_25B005E74() + 1) & ~v5;
    while (1)
    {
      v8 = 40 * v6;
      v9 = *(v2 + 48) + 40 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      sub_25B006294();
      if (!(v14 >> 6))
      {
        MEMORY[0x25F85E0A0](0);
        MEMORY[0x25F85E0A0](v10);
        goto LABEL_15;
      }

      if (v14 >> 6 != 1)
      {
        break;
      }

      MEMORY[0x25F85E0A0](1);

      v15 = v10;
      sub_25B005DF4();
      MEMORY[0x25F85E0A0](v11);
      if (v13)
      {
        sub_25B0062B4();
LABEL_14:
        sub_25B005994();
        goto LABEL_15;
      }

      sub_25B0062B4();
LABEL_15:
      v16 = sub_25B0062D4();
      result = sub_25AF18128(v10, v11, v12, v13, v14);
      v17 = v16 & v7;
      if (v3 >= v29)
      {
        v2 = a2;
        v4 = v31;
        if (v17 < v29)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = a2;
        v4 = v31;
        if (v17 >= v29)
        {
          goto LABEL_20;
        }
      }

      if (v3 >= v17)
      {
LABEL_20:
        v18 = *(v2 + 48);
        v19 = v18 + 40 * v3;
        v20 = (v18 + v8);
        if (40 * v3 < v8 || v19 >= v20 + 40 || v3 != v6)
        {
          v21 = *v20;
          v22 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v21;
          *(v19 + 16) = v22;
        }

        v23 = *(v2 + 56);
        v24 = (v23 + 8 * v3);
        v25 = (v23 + 8 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    MEMORY[0x25F85E0A0](2);
    if (v14)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25AF181DC(v10, v11, v12, v13, v14);
      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      sub_25AF181DC(v10, v11, v12, v13, v14);
      sub_25B005DF4();
    }

    goto LABEL_14;
  }

LABEL_28:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }

  return result;
}

void sub_25AF993EC(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25B005E74() + 1) & ~v5;
    v28 = v4;
    do
    {
      v9 = v8;
      v10 = v2;
      v11 = *(v2 + 48) + 32 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 24);
      sub_25B006294();

      v15 = v12;
      sub_25B005DF4();
      MEMORY[0x25F85E0A0](v13);
      sub_25B0062B4();
      if (v14)
      {
        sub_25B005994();
      }

      v16 = sub_25B0062D4();

      v17 = v16 & v7;
      v8 = v9;
      if (v3 >= v9)
      {
        v4 = v28;
        v2 = v10;
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v28;
        v2 = v10;
        if (v17 >= v8)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v17)
      {
LABEL_12:
        v18 = *(v2 + 48);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v21 = v20[1];
          *v19 = *v20;
          v19[1] = v21;
        }

        v22 = *(v2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }
}

uint64_t sub_25AF99604(uint64_t a1)
{
  v3 = *v1;
  sub_25B006294();
  MEMORY[0x25F85E0A0](a1);
  v4 = sub_25B0062D4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25AF94718();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_25AF9A09C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_25AF99710(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_25B006284();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25AF94858();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_25AF9A244(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_25AF99800(unsigned __int8 a1)
{
  v3 = *v1;
  sub_25B006294();
  MEMORY[0x25F85E0A0](a1);
  v4 = sub_25B0062D4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 3;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 3;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25AF94B08();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_25AF9A3C8(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_25AF99908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *v2;
  sub_25B006294();
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v34 = *(a1 + 16);
  v35 = *a1;
  v36 = *(a1 + 32);
  v33 = v6;
  v30 = v36 >> 6;
  v28 = v2;
  v29 = a2;
  if (v36 >> 6)
  {
    if (v36 >> 6 == 1)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005DF4();
      MEMORY[0x25F85E0A0](v5);
      if (!v6)
      {
        sub_25B0062B4();
        goto LABEL_10;
      }

      sub_25B0062B4();
    }

    else
    {
      MEMORY[0x25F85E0A0](2);
      if (v36)
      {
        MEMORY[0x25F85E0A0](1);
        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        sub_25B005DF4();
      }
    }

    sub_25B005994();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    MEMORY[0x25F85E0A0](v35);
  }

LABEL_10:
  result = sub_25B0062D4();
  v8 = -1 << *(v32 + 32);
  v9 = result & ~v8;
  if (((*(v32 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_56:
    *v29 = 0u;
    *(v29 + 16) = 0u;
    *(v29 + 32) = -2;
    return result;
  }

  v31 = ~v8;
  while (1)
  {
    v10 = *(v32 + 48) + 40 * v9;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    v38[0] = *v10;
    v38[1] = v11;
    v38[2] = v13;
    v38[3] = v14;
    v39 = v15;
    v40 = v35;
    v41 = v5;
    v42 = v34;
    v43 = v33;
    v44 = v36;
    if (!(v15 >> 6))
    {
      if (v36 < 0x40)
      {
        sub_25AF196CC(a1, v37);
        result = sub_25AF2602C(v38, &unk_27FA25590);
        if (v12 == v35)
        {
          goto LABEL_62;
        }

        goto LABEL_14;
      }

      sub_25AF196CC(a1, v37);
LABEL_13:
      result = sub_25AF2602C(v38, &unk_27FA25590);
      goto LABEL_14;
    }

    if (v15 >> 6 == 1)
    {
      break;
    }

    if (v30 != 2)
    {
      goto LABEL_12;
    }

    if (v15)
    {
      if ((v36 & 1) == 0 || (v12 == v35 ? (v17 = v11 == v5) : (v17 = 0), !v17 && (sub_25B006174() & 1) == 0))
      {
LABEL_12:
        sub_25AF196CC(a1, v37);
        sub_25AF181DC(v12, v11, v13, v14, v15);
        goto LABEL_13;
      }

      if (v13 == v34 && v14 == v33)
      {
        sub_25AF196CC(a1, v37);
        sub_25AF181DC(v12, v11, v34, v33, v15);
LABEL_60:
        sub_25AF2602C(v38, &unk_27FA25590);
        goto LABEL_62;
      }

      v19 = sub_25B006174();
      sub_25AF196CC(a1, v37);
      sub_25AF181DC(v12, v11, v13, v14, v15);
      result = sub_25AF2602C(v38, &unk_27FA25590);
      if (v19)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v36)
      {
        goto LABEL_12;
      }

      sub_25AF18BD4(0, &qword_27FA27200);
      sub_25AF181DC(v12, v11, v13, v14, v15);
      sub_25AF196CC(a1, v37);
      sub_25AF181DC(v12, v11, v13, v14, v15);
      if ((sub_25B005DE4() & 1) == 0)
      {
        sub_25AF18128(v12, v11, v13, v14, v15);
        goto LABEL_13;
      }

      if (v11 == v5 && v13 == v34)
      {
        sub_25AF18128(v12, v5, v34, v14, v15);
        goto LABEL_60;
      }

      v22 = sub_25B006174();
      sub_25AF18128(v12, v11, v13, v14, v15);
      result = sub_25AF2602C(v38, &unk_27FA25590);
      if (v22)
      {
        goto LABEL_62;
      }
    }

LABEL_14:
    v9 = (v9 + 1) & v31;
    if (((*(v32 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  if (v30 != 1)
  {
    goto LABEL_12;
  }

  sub_25AF18BD4(0, &qword_27FA27200);
  sub_25AF181DC(v12, v11, v13, v14, v15);
  sub_25AF196CC(a1, v37);
  sub_25AF181DC(v12, v11, v13, v14, v15);
  sub_25AF196CC(a1, v37);
  sub_25AF181DC(v12, v11, v13, v14, v15);
  if ((sub_25B005DE4() & 1) == 0 || v11 != v5)
  {
    sub_25AF2602C(v38, &unk_27FA25590);
    sub_25AF18128(v12, v11, v13, v14, v15);
    sub_25AF1C414(a1);
    v20 = v12;
    v21 = v11;
LABEL_45:
    result = sub_25AF18128(v20, v21, v13, v14, v15);
    goto LABEL_14;
  }

  if (!v14)
  {
    sub_25AF2602C(v38, &unk_27FA25590);
    sub_25AF18128(v12, v5, v13, 0, v15);
    sub_25AF1C414(a1);
    result = sub_25AF18128(v12, v5, v13, 0, v15);
    if (!v33)
    {
      goto LABEL_62;
    }

    goto LABEL_14;
  }

  if (!v33)
  {
    sub_25AF2602C(v38, &unk_27FA25590);
    sub_25AF18128(v12, v5, v13, v14, v15);
    sub_25AF1C414(a1);
    v20 = v12;
    v21 = v5;
    goto LABEL_45;
  }

  if (v13 != v34 || v14 != v33)
  {
    v16 = sub_25B006174();
    sub_25AF2602C(v38, &unk_27FA25590);
    sub_25AF18128(v12, v5, v13, v14, v15);
    sub_25AF1C414(a1);
    result = sub_25AF18128(v12, v5, v13, v14, v15);
    if (v16)
    {
      goto LABEL_62;
    }

    goto LABEL_14;
  }

  sub_25AF2602C(v38, &unk_27FA25590);
  sub_25AF18128(v12, v5, v34, v33, v15);
  sub_25AF1C414(a1);
  sub_25AF18128(v12, v5, v34, v33, v15);
LABEL_62:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v28;
  v37[0] = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25AF94C48(&unk_27FA27220);
    v24 = v37[0];
  }

  v25 = *(v24 + 48) + 40 * v9;
  v26 = *(v25 + 32);
  v27 = *(v25 + 16);
  *v29 = *v25;
  *(v29 + 16) = v27;
  *(v29 + 32) = v26;
  result = sub_25AF9A570(v9);
  *v28 = v37[0];
  return result;
}

unint64_t sub_25AF9A09C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25B005E74();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_25B006294();
        MEMORY[0x25F85E0A0](v10);
        v11 = sub_25B0062D4() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_25AF9A244(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25B005E74();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_25B006284() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_25AF9A3C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25B005E74();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_25B006294();
        MEMORY[0x25F85E0A0](v10);
        v11 = sub_25B0062D4() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_25AF9A570(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25B005E74();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v28 = v3;
      v29 = v4;
      v27 = (v8 + 1) & v7;
      while (1)
      {
        v11 = 40 * v6;
        v12 = *(v3 + 48) + 40 * v6;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = *(v12 + 24);
        v17 = *(v12 + 32);
        sub_25B006294();
        if (!(v17 >> 6))
        {
          MEMORY[0x25F85E0A0](0);
          MEMORY[0x25F85E0A0](v13);
          goto LABEL_16;
        }

        if (v17 >> 6 != 1)
        {
          break;
        }

        MEMORY[0x25F85E0A0](1);

        v18 = v13;
        sub_25B005DF4();
        MEMORY[0x25F85E0A0](v14);
        if (v16)
        {
          sub_25B0062B4();
LABEL_15:
          sub_25B005994();
          goto LABEL_16;
        }

        sub_25B0062B4();
LABEL_16:
        v19 = sub_25B0062D4();
        sub_25AF18128(v13, v14, v15, v16, v17);
        v20 = v19 & v7;
        if (v2 >= v27)
        {
          v3 = v28;
          v4 = v29;
          if (v20 < v27)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v3 = v28;
          v4 = v29;
          if (v20 >= v27)
          {
            goto LABEL_21;
          }
        }

        if (v2 >= v20)
        {
LABEL_21:
          v21 = *(v3 + 48);
          v22 = v21 + 40 * v2;
          v23 = (v21 + v11);
          if (40 * v2 < v11 || v22 >= v23 + 40 || v2 != v6)
          {
            v9 = *v23;
            v10 = v23[1];
            *(v22 + 32) = *(v23 + 4);
            *v22 = v9;
            *(v22 + 16) = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      MEMORY[0x25F85E0A0](2);
      if (v17)
      {
        MEMORY[0x25F85E0A0](1);
        sub_25AF181DC(v13, v14, v15, v16, v17);
        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        sub_25AF181DC(v13, v14, v15, v16, v17);
        sub_25B005DF4();
      }

      goto LABEL_15;
    }

LABEL_26:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_25AF9A874(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_25AF9C9AC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void (*sub_25AF9A910(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[8] = sub_25AF9AC7C(v11);
  v11[9] = sub_25AF9AA34(v11 + 4, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
  return sub_25AF9A9D4;
}

void sub_25AF9A9D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_25AF9AA34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6))(uint64_t **a1)
{
  v7 = v6;
  if (MEMORY[0x277D84FD8])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x40uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[4] = a5;
  v14[5] = v6;
  v14[2] = a3;
  v14[3] = a4;
  v14[1] = a2;
  v16 = *v6;
  v18 = sub_25AF8F1B4(a2, a3, a4, a5);
  *(v15 + 56) = v17 & 1;
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_25AF985C4();
      goto LABEL_12;
    }

    sub_25AF97420(v21, a6 & 1);
    v24 = sub_25AF8F1B4(a2, a3, a4, a5);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_12;
    }

LABEL_17:
    result = sub_25B006204();
    __break(1u);
    return result;
  }

LABEL_12:
  v15[6] = v18;
  if (v22)
  {
    v26 = *(*(*v7 + 56) + 8 * v18);
  }

  else
  {
    v26 = 0;
  }

  *v15 = v26;
  return sub_25AF9ABBC;
}

void sub_25AF9ABBC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = v1[6];
    v5 = *v1[5];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      sub_25AF16430(v4, v8, v1[2], v1[3], v1[4], v2, v5);

      v9 = v8;
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[5];
    sub_25AFA0058(*(v7 + 48) + 32 * v6);
    sub_25AF993EC(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_25AF9AC7C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25AF9ACA4;
}

uint64_t sub_25AF9ACB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255C0);
  result = sub_25B006034();
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
    v18 = *(v4 + 48) + 40 * v16;
    v19 = *v18;
    v34 = *(v18 + 8);
    v35 = *(v18 + 16);
    v33 = *(v18 + 24);
    v20 = *(v18 + 32);
    v36 = *(v17 + 8 * v16);
    sub_25B006294();
    if (v20 >> 6)
    {
      if (v20 >> 6 == 1)
      {
        MEMORY[0x25F85E0A0](1);

        sub_25AF181DC(v19, v34, v35, v33, v20);
        sub_25B005DF4();
        MEMORY[0x25F85E0A0](v34);
        sub_25B0062B4();
        if (!v33)
        {
          goto LABEL_24;
        }
      }

      else
      {
        MEMORY[0x25F85E0A0](2);
        if (v20)
        {
          MEMORY[0x25F85E0A0](1);

          sub_25AF181DC(v19, v34, v35, v33, v20);
          sub_25B005994();
        }

        else
        {
          MEMORY[0x25F85E0A0](0);

          sub_25AF181DC(v19, v34, v35, v33, v20);
          sub_25B005DF4();
        }
      }

      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      MEMORY[0x25F85E0A0](v19);
    }

LABEL_24:
    result = sub_25B0062D4();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v21) >> 6;
      v25 = v35;
      while (++v23 != v27 || (v26 & 1) == 0)
      {
        v28 = v23 == v27;
        if (v23 == v27)
        {
          v23 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v23);
        if (v29 != -1)
        {
          v24 = __clz(__rbit64(~v29)) + (v23 << 6);
          goto LABEL_34;
        }
      }

      goto LABEL_39;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v25 = v35;
LABEL_34:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v30 = *(v9 + 48) + 40 * v24;
    *v30 = v19;
    *(v30 + 8) = v34;
    *(v30 + 16) = v25;
    *(v30 + 24) = v33;
    *(v30 + 32) = v20;
    *(*(v9 + 56) + 8 * v24) = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_40;
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
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25AF9B0A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25AF9F778();
  result = MEMORY[0x25F85DA50](v2, &type metadata for GlanceButtonID, v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v11 = *(v5 + 32);
      sub_25AF196CC(v10, v7);
      sub_25AF90344(v7, v10);
      sub_25AF18128(v7[0], v7[1], v7[2], v7[3], v8);
      v5 += 40;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_25AF9B144(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (v7 <= 0xFD)
  {
    if (v12 <= 0xFD)
    {
      v23 = *a1;
      v24 = v3;
      v25 = v6;
      v26 = v5;
      v27 = v7;
      v18 = v8;
      v19 = v9;
      v20 = v11;
      v21 = v10;
      v22 = v12;
      sub_25AF25FC4(a1, v17, &qword_27FA23D78);
      sub_25AF25FC4(a2, v17, &qword_27FA23D78);
      sub_25AF1D7EC(v4, v3, v6, v5, v7);
      sub_25AF181DC(v4, v3, v6, v5, v7);
      v14 = sub_25AFD33F0(&v23, &v18);
      sub_25AF18128(v18, v19, v20, v21, v22);
      sub_25AF18128(v23, v24, v25, v26, v27);
      sub_25AF18128(v4, v3, v6, v5, v7);
      sub_25AF231D0(v4, v3, v6, v5, v7);
      v13 = v14 ^ 1;
      return v13 & 1;
    }

    v16 = *(a2 + 24);
    sub_25AF25FC4(a1, &v23, &qword_27FA23D78);
    sub_25AF25FC4(a2, &v23, &qword_27FA23D78);
    sub_25AF1D7EC(v4, v3, v6, v5, v7);
    sub_25AF18128(v4, v3, v6, v5, v7);
    goto LABEL_7;
  }

  if (v12 <= 0xFD)
  {
    v16 = *(a2 + 24);
    sub_25AF25FC4(a1, &v23, &qword_27FA23D78);
    sub_25AF25FC4(a2, &v23, &qword_27FA23D78);
LABEL_7:
    sub_25AF231D0(v4, v3, v6, v5, v7);
    sub_25AF231D0(v8, v9, v11, v16, v12);
    v13 = 1;
    return v13 & 1;
  }

  sub_25AF25FC4(a1, &v23, &qword_27FA23D78);
  sub_25AF25FC4(a2, &v23, &qword_27FA23D78);
  sub_25AF231D0(v4, v3, v6, v5, v7);
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_25AF9B3D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25AF9F564();
  result = MEMORY[0x25F85DA50](v2, &type metadata for GlanceControlID, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);

      sub_25AF90BF4(v10, v8, v9, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_25AF9B484(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25AF9F7CC();
  result = MEMORY[0x25F85DA50](v2, &type metadata for GlanceButtonID.Kind, v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v11 = *(v5 + 32);
      sub_25AF9F820(v10, v7);
      sub_25AF90F70(v7, v10);
      sub_25AF18128(v7[0], v7[1], v7[2], v7[3], v8);
      v5 += 40;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_25AF9B528()
{
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v0 = sub_25B0044C4();
  __swift_project_value_buffer(v0, qword_27FA30C28);
  v1 = sub_25B0044B4();
  v2 = sub_25B005C94();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_25AF8E7DC(0xD00000000000002FLL, 0x800000025B019490, &v6);
    _os_log_impl(&dword_25AF0B000, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x25F85EC30](v4, -1, -1);
    MEMORY[0x25F85EC30](v3, -1, -1);
  }

  return sub_25B0046F4();
}

uint64_t sub_25AF9B710()
{
  v0 = sub_25B005834();
  v17 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25B005854();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v6 = sub_25B0044C4();
  __swift_project_value_buffer(v6, qword_27FA30C28);
  v7 = sub_25B0044B4();
  v8 = sub_25B005CD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_25AF8E7DC(0x6F4D65636E616C47, 0xEB000000006C6564, aBlock);
    _os_log_impl(&dword_25AF0B000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F85EC30](v10, -1, -1);
    MEMORY[0x25F85EC30](v9, -1, -1);
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_27FA23730 != -1)
  {
    swift_once();
  }

  [v11 postNotificationName:qword_27FA30B08 object:0];

  sub_25AF18BD4(0, &qword_27FA271F0);
  v12 = sub_25B005D34();
  aBlock[4] = sub_25AF74394;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AF43684;
  aBlock[3] = &block_descriptor_2;
  v13 = _Block_copy(aBlock);
  sub_25B005844();
  v18 = MEMORY[0x277D84F90];
  sub_25AFA048C(&qword_27FA246C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25690);
  sub_25AF9FA04(&qword_27FA246C8, &unk_27FA25690);
  sub_25B005E54();
  MEMORY[0x25F85DB40](0, v5, v2, v13);
  _Block_release(v13);

  (*(v17 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v16);
}

id sub_25AF9BB48(void *a1, void *a2)
{
  v3 = v2;
  v87 = a1;
  v88 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v4 - 8);
  v89 = &v80 - v5;
  v6 = sub_25B005D24();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_25B005D04();
  MEMORY[0x28223BE20](v83);
  v82 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B005854();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonAnimator;
  *&v2[v10] = [objc_allocWithZone(type metadata accessor for ButtonAnimator()) init];
  v11 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_configureModelMainView;
  type metadata accessor for ConfigureControlModel();
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  sub_25B004264();
  *&v3[v11] = v12;
  v13 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_configureModelSelectionView;
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  sub_25B004264();
  *&v3[v13] = v14;
  v15 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_draggingModel;
  type metadata accessor for GlanceDraggingModel(0);
  swift_allocObject();
  *&v3[v15] = sub_25AF665F4();
  v16 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_batteryModel;
  type metadata accessor for LegacyBatteryModel();
  v17 = swift_allocObject();
  *(v17 + 40) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  sub_25B004264();
  *&v3[v16] = v17;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_updatingBatteryTask] = 0;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_updatingFocusTask] = 0;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_readButtonLayoutTask] = 0;
  v18 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel;
  type metadata accessor for EditingModel();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 254;
  sub_25B004264();
  *&v3[v18] = v19;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_updatingDisplayedControlsTask] = 0;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_updatingKnownControlsTask] = 0;
  v20 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel;
  type metadata accessor for _ControlsAvailableModel(0);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D84F90];
  v21[2] = MEMORY[0x277D84F90];
  v21[3] = v22;
  v21[4] = sub_25AF6B7EC(v22);
  v23 = sub_25AF6BC94(v22);
  v21[6] = 0;
  v21[7] = 0;
  v21[5] = v23;
  sub_25B004264();
  *&v3[v20] = v21;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_updatingAvailableControlsTask] = 0;
  v24 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedVisible;
  *&v3[v24] = sub_25AF6C270(v22);
  v25 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedNotSettledVisible;
  *&v3[v25] = sub_25AF6C270(v22);
  v26 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v26[32] = -2;
  v27 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_dropTargetID];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v27[32] = -2;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_lastDebounceTime] = 0;
  v28 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_lastDebounceDropTargetID];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = -2;
  v29 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__phoneSymbolName];
  *v29 = 0x672E656E6F687069;
  v29[1] = 0xEB00000000336E65;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet] = 0;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_updatingAvailableModelTask] = 0;
  v30 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_profileConnectionObserver;
  *&v3[v30] = [objc_allocWithZone(type metadata accessor for ProfileConnectionObserver()) &selRef_setFamily_];
  v31 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_batteryFormatter;
  v32 = [objc_allocWithZone(MEMORY[0x277CCABB8]) &selRef_setFamily_];
  [v32 setNumberStyle_];
  *&v3[v31] = v32;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__cellularThermalTrap] = 0;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__pingEnabled] = 0;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__hasBaseband] = 0;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_isCompanionReachable] = 2;
  v33 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonModels;
  *&v3[v33] = sub_25AF6C390(v22);
  v34 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectionViewButtonModels;
  *&v3[v34] = sub_25AF6C390(v22);
  v35 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel;
  memset(v91, 0, sizeof(v91));
  v92 = -2;
  type metadata accessor for GlanceButtonModel(0);
  swift_allocObject();
  *&v3[v35] = sub_25AFBCC94(v91);
  v36 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_accessibilityModel;
  type metadata accessor for LegacyAccessibilityModel();
  v37 = swift_allocObject();
  *(v37 + 16) = v22;
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 40) = 2;
  *(v37 + 48) = 0;
  sub_25B004264();
  *&v3[v36] = v37;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_updatingAccessibilityModelTask] = 0;
  v38 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingChangedBlock];
  *v38 = 0;
  v38[1] = 0;
  v39 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectAvailableControlBlock];
  *v39 = 0;
  v39[1] = 0;
  v40 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlDoneBlock];
  *v40 = 0;
  v40[1] = 0;
  v41 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBlock];
  *v41 = 0;
  v41[1] = 0;
  v42 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBackBlock];
  *v42 = 0;
  v42[1] = 0;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suggestedButtonIDs] = v22;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_throttledButtonIDs] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_hearingDevicesUpdateToken] = 0;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_lockUpdateToken] = 0;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__scrollToTopTrigger] = 0;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__scrollToBottomTrigger] = 0;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__currentTransition] = 1;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__currentTransitionTrailingEdge] = 1;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousTransitionAnimationTask] = 0;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__hasStartedAnyTransitions] = 0;
  v43 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_firstTransitionBlock];
  *v43 = 0;
  v43[1] = 0;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suppressLightEffects] = 1;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode] = 0;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editModeToggledStayAtBottom] = 1;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousAirplaneButtonState] = 0;
  v44 = sub_25B005924();
  v45 = SFLocalizableWAPIStringKeyForKey();

  sub_25B005934();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = [objc_opt_self() bundleForClass_];
  v48 = sub_25B004014();
  v50 = v49;

  v51 = &v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__wifiButtonName];
  *v51 = v48;
  v51[1] = v50;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__batteryPercentage] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__batteryState] = 0;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isLowPowerMode] = 0;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__locationStatus] = 0;
  v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isTinkerWatch] = 0;
  v52 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_packageViewStateUpdateQueue;
  sub_25AF18BD4(0, &qword_27FA271F0);
  sub_25B005D34();
  sub_25B005844();
  *&v91[0] = v22;
  sub_25AFA048C(&qword_27FA24080, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25660);
  sub_25AF9FA04(&qword_27FA24088, &unk_27FA25660);
  sub_25B005E54();
  (*(v85 + 104))(v84, *MEMORY[0x277D85260], v86);
  *&v3[v52] = sub_25B005D54();
  v53 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_demoModeNumber;
  *&v3[v53] = sub_25B003FF4();
  swift_unknownObjectWeakInit();
  sub_25B004264();
  v54 = *MEMORY[0x277D768C8];
  v55 = *(MEMORY[0x277D768C8] + 8);
  v56 = *(MEMORY[0x277D768C8] + 16);
  v57 = *(MEMORY[0x277D768C8] + 24);
  type metadata accessor for ButtonLayout();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonLayout] = ButtonLayout.init(viewSize:sideMargins:topOffset:)(0.0, 0.0, v54, v55, v56, v57, 0.0);
  v59 = v87;
  v58 = v88;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_focusModel] = v87;
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_workQueue] = v58;
  v60 = objc_allocWithZone(type metadata accessor for ControlsModel());
  v61 = v59;
  v62 = v58;
  v63 = [v60 init];
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel] = v63;
  v64 = objc_allocWithZone(type metadata accessor for ButtonsAvailableModel());
  v65 = v63;
  v66 = [v64 init];
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableModel] = v66;
  type metadata accessor for ButtonOrderModel(0);
  swift_allocObject();
  v67 = v66;
  v68 = v65;
  v69 = v67;
  sub_25AFF16B0(v69, v68);
  *&v3[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel] = v70;
  v90.receiver = v3;
  v90.super_class = ObjectType;
  v71 = objc_msgSendSuper2(&v90, &selRef_setFamily_);
  v72 = qword_27FA30B10;
  qword_27FA30B10 = v71;
  v73 = v71;

  v74 = sub_25B005B64();
  v75 = v89;
  (*(*(v74 - 8) + 56))(v89, 1, 1, v74);
  sub_25B005B34();
  v76 = sub_25B005B24();
  v77 = swift_allocObject();
  v78 = MEMORY[0x277D85700];
  v77[2] = v76;
  v77[3] = v78;
  v77[4] = v73;
  sub_25AF6C7F8(0, 0, v75, &unk_25B00EFB0, v77);

  return v73;
}

uint64_t sub_25AF9C694(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AF19A24;

  return sub_25AF895FC(a1, v4, v5, v6, v7);
}

void sub_25AF9C758()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  if (qword_27FA30B10)
  {
    v3 = qword_27FA23800;
    v4 = qword_27FA30B10;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_25B0044C4();
    __swift_project_value_buffer(v5, qword_27FA30C28);
    v6 = sub_25B0044B4();
    v7 = sub_25B005C94();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_25AF8E7DC(0x6F4D65636E616C47, 0xEB000000006C6564, &v16);
      _os_log_impl(&dword_25AF0B000, v6, v7, "%s must read button layout due to Darwin notification", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x25F85EC30](v9, -1, -1);
      MEMORY[0x25F85EC30](v8, -1, -1);
    }

    v10 = sub_25B005B64();
    (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
    sub_25B005B34();
    v11 = v4;
    v12 = sub_25B005B24();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    sub_25AF6C7F8(0, 0, v2, &unk_25B00EFF8, v13);
  }
}

uint64_t sub_25AF9C9AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v20 = result;
  v4 = 0;
  v26 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v14 = v11 | (v4 << 6);
    v15 = *(v26 + 48) + 40 * v14;
    v16 = *(v15 + 32);
    v17 = *(v15 + 16);
    v24[0] = *v15;
    v24[1] = v17;
    v25 = v16;
    sub_25B005B34();
    sub_25AF196CC(v24, v23);

    sub_25B005B24();
    sub_25B005AE4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v10 = sub_25AF70EDC(v24, a4);

    result = sub_25AF1C414(v24);
    if (v10)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_25AF9ACB0(v20, a2, v21, v26);
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_25AF9ACB0(v20, a2, v21, v26);
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF9CB90(uint64_t a1, uint64_t a2)
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

      v10 = sub_25AF9A874(v12, v7, a1, a2);
      MEMORY[0x25F85EC30](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_25AF9C9AC(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_25AF9CD50(void *a1, char a2)
{
  v3 = v2;
  v18 = a1;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v6 = sub_25AF730A0(&v18, 0);
  sub_25AF18128(a1, 0, 0, 0, 0);
  swift_getKeyPath();
  v18 = v6;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v7 = *(v6 + 74);
  if (*(v6 + 74))
  {
    v8 = 20047;
  }

  else
  {
    v8 = 4605519;
  }

  if (a1 == 1)
  {

    if (a2)
    {

      return 0x206C616D72656854;
    }

    else if (v7)
    {
      swift_getKeyPath();
      v18 = v6;
      sub_25B004234();

      v14 = *(v6 + 73);

      if (v14)
      {
        return 20047;
      }

      else
      {
        return 0x73556E6920544F4ELL;
      }
    }

    else
    {
      v15 = sub_25AFB777C(*(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_isCompanionReachable), 2);

      if (v15)
      {
        return 4605519;
      }

      else
      {
        return 0x64656C6261736944;
      }
    }
  }

  else
  {
    v9 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel);
    swift_getKeyPath();
    v18 = v9;
    sub_25AFA048C(&qword_27FA25608, type metadata accessor for ButtonOrderModel);
    sub_25B004234();

    v10 = *&v9[OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse];
    if (v10)
    {
      v11 = *&v9[OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel____displayedButtonIDsDoNotUse];
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v18 = a1;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    MEMORY[0x28223BE20](v10);
    v17[2] = &v18;

    v12 = sub_25AF35518(sub_25AF9F758, v17, v11);

    if (v12)
    {
      v13 = sub_25AFB777C(*(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_isCompanionReachable), 2);

      if ((v13 & 1) == 0)
      {
        v8 = 0x64656C6261736944;
      }
    }

    else
    {

      return 0x7073694420746F4ELL;
    }
  }

  return v8;
}

uint64_t sub_25AF9D170(char a1)
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  if (a1)
  {
    swift_getKeyPath();
    sub_25B004234();

    swift_getKeyPath();
    sub_25B004254();

    *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__scrollToTopTrigger) = (*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__scrollToTopTrigger) & 1) == 0;
    swift_getKeyPath();
    sub_25B004244();
  }

  return result;
}

void *sub_25AF9D37C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_25AF78E68();
}

void _s17NanoControlCenter11GlanceModelC34updateHearingDevicesButtonPresenceyyF_0()
{
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v0 = sub_25B0044C4();
  __swift_project_value_buffer(v0, qword_27FA30C28);
  oslog = sub_25B0044B4();
  v1 = sub_25B005C94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_25AF8E7DC(0xD000000000000024, 0x800000025B0191B0, &v5);
    _os_log_impl(&dword_25AF0B000, oslog, v1, "%s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    MEMORY[0x25F85EC30](v3, -1, -1);
    MEMORY[0x25F85EC30](v2, -1, -1);
  }
}

uint64_t _s17NanoControlCenter11GlanceModelC16displayLinkFired_11scrollDelta14updateDebounceySo09CADisplayG0C_So7CGPointVSbtF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA255D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v113[-v3];
  v134 = type metadata accessor for GlanceDraggingModel.DraggingButtonTick(0);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v6 = &v113[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D08);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v113[-v8];
  v135 = sub_25B004594();
  v10 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v12 = &v113[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  *&v141 = v0;
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v14 = &v0[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID];
  v15 = v0[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 32];
  if (v15 <= 0xFD)
  {
    v127 = v6;
    v130 = v12;
    v128 = v4;
    v16 = *v14;
    v17 = *(v14 + 1);
    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    v131 = v1;
    v20 = *&v1[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_draggingModel];
    swift_getKeyPath();
    v132 = v10;
    v21 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel___observationRegistrar;
    *&v141 = v20;
    sub_25AF181DC(v16, v17, v19, v18, v15);
    v22 = sub_25AFA048C(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
    v23 = v15;
    v123 = v21;
    v122 = v22;
    sub_25B004234();
    v24 = v132;

    v25 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__dragValue;
    swift_beginAccess();
    v129 = v20;
    sub_25AF25FC4(v20 + v25, v9, &qword_27FA23D08);
    v26 = v135;
    if ((*(v24 + 48))(v9, 1, v135) == 1)
    {
      sub_25AF231D0(v16, v17, v19, v18, v23);
      return sub_25AF2602C(v9, &qword_27FA23D08);
    }

    v124 = v19;
    v125 = v23;
    v126 = v18;
    v27 = v130;
    (*(v24 + 32))(v130, v9, v26);
    v28 = v134;
    v29 = v127;
    sub_25B004184();
    *v29 = 0u;
    *(v29 + 16) = 0u;
    *(v29 + 32) = -2;
    v30 = CACurrentMediaTime() - *&v131[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_lastDebounceTime];
    if (v30 <= 0.25)
    {
      v51 = v26;
      v52 = v128;
      sub_25AF9F5E8(v29, v128);
      (*(v133 + 56))(v52, 0, 1, v28);
      sub_25AF6604C(v52);
      sub_25AF231D0(v16, v17, v124, v126, v125);
      (*(v24 + 8))(v27, v51);
    }

    else
    {
      v121 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_lastDebounceTime;
      swift_beginAccess();
      v31 = v16;
      v136 = v16;
      v137 = v17;
      v138 = v124;
      v139 = v126;
      v140 = v125;

      sub_25B004584();
      v33 = v32;
      v35 = v34;
      swift_getKeyPath();
      v36 = v129;
      *&v141 = v129;
      sub_25B004234();

      v37 = *(v36 + 48);
      swift_getKeyPath();
      *&v141 = v36;

      sub_25B004234();
      v38 = v131;

      sub_25AF345A8(&v136, v37, &v141, v33, v35, *(v36 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollOffset));

      v39 = v143;
      v40 = &v38[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_dropTargetID];
      v41 = *&v38[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_dropTargetID];
      v42 = *&v38[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_dropTargetID + 8];
      v43 = *&v38[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_dropTargetID + 16];
      v44 = *&v38[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_dropTargetID + 24];
      v45 = v142;
      *v40 = v141;
      *(v40 + 1) = v45;
      v46 = v40[32];
      v40[32] = v39;
      sub_25AF231D0(v41, v42, v43, v44, v46);
      LODWORD(v47) = v40[32];
      if (v47 <= 0xFD)
      {
        v120 = v17;
        v53 = *v40;
        v54 = *(v40 + 1);
        v56 = *(v40 + 2);
        v55 = *(v40 + 3);
        v57 = &v38[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_lastDebounceDropTargetID];
        v58 = v38[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_lastDebounceDropTargetID + 32];
        v119 = v31;
        v122 = v56;
        v117 = &v38[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_lastDebounceDropTargetID];
        v118 = v53;
        LODWORD(v123) = v47;
        if (v58 < 0xFE)
        {
          v47 = *v57;
          v59 = *(v57 + 1);
          v60 = *(v57 + 2);
          v61 = *(v57 + 3);
          *&v141 = v53;
          *(&v141 + 1) = v54;
          *&v142 = v56;
          *(&v142 + 1) = v55;
          v143 = v123;
          v136 = v47;
          v137 = v59;
          v138 = v60;
          v139 = v61;
          v140 = v58;
          v62 = v53;
          sub_25AF1D7EC(v53, v54, v56, v55, v123);
          sub_25AF1D7EC(v47, v59, v60, v61, v58);
          v115 = v54;
          v116 = v55;
          v63 = v55;
          v64 = v47;
          LOBYTE(v47) = v123;
          sub_25AF1D7EC(v62, v54, v56, v63, v123);
          sub_25AF1D7EC(v64, v59, v60, v61, v58);
          LOBYTE(v62) = sub_25AFD33F0(&v141, &v136);
          sub_25AF18128(v136, v137, v138, v139, v140);
          sub_25AF18128(v141, *(&v141 + 1), v142, *(&v142 + 1), v143);
          if (v62)
          {
            v65 = v59;
            v114 = v58;
            if (v30 <= 1.0)
            {
              v92 = v64;
              v93 = v61;
              v94 = v60;
              v95 = v65;
              v96 = v116;
              if (qword_27FA23800 != -1)
              {
                swift_once();
              }

              v97 = sub_25B0044C4();
              __swift_project_value_buffer(v97, qword_27FA30C28);
              v98 = sub_25B0044B4();
              v99 = sub_25B005C94();
              v100 = os_log_type_enabled(v98, v99);
              v101 = v120;
              if (v100)
              {
                v102 = swift_slowAlloc();
                v103 = swift_slowAlloc();
                *&v141 = v103;
                *v102 = 136315138;
                *(v102 + 4) = sub_25AF8E7DC(0xD00000000000002FLL, 0x800000025B019180, &v141);
                _os_log_impl(&dword_25AF0B000, v98, v99, "%s drop target ID unchanged for less than same-ID debounce time. Not reordering.", v102, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v103);
                MEMORY[0x25F85EC30](v103, -1, -1);
                MEMORY[0x25F85EC30](v102, -1, -1);
                sub_25AF231D0(v92, v95, v94, v93, v114);
                v104 = v118;
                v105 = v115;
                v106 = v122;
                v107 = v116;
                v108 = v123;
              }

              else
              {
                sub_25AF231D0(v92, v95, v94, v93, v114);
                v104 = v118;
                v105 = v115;
                v106 = v122;
                v107 = v96;
                v108 = v47;
              }

              sub_25AF231D0(v104, v105, v106, v107, v108);

              v109 = v135;
              v110 = v132;
              v111 = v128;
              v112 = v126;
              sub_25AF9F5E8(v29, v128);
              (*(v133 + 56))(v111, 0, 1, v134);
              sub_25AF6604C(v111);
              sub_25AF231D0(v119, v101, v124, v112, v125);
              (*(v110 + 8))(v130, v109);
              return sub_25AF51738(v29);
            }

            v66 = v64;
            v67 = v60;
            v68 = v61;
            v69 = v114;
          }

          else
          {
            v66 = v64;
            v65 = v59;
            v67 = v60;
            v68 = v61;
            v69 = v58;
          }

          sub_25AF231D0(v66, v65, v67, v68, v69);
          v55 = v116;
          v38 = v131;
          v54 = v115;
          v56 = v122;
        }

        else
        {
          sub_25AF181DC(v53, v54, v56, v55, v47);
        }

        if (qword_27FA23800 != -1)
        {
          swift_once();
        }

        v70 = sub_25B0044C4();
        __swift_project_value_buffer(v70, qword_27FA30C28);
        v71 = v118;
        sub_25AF181DC(v118, v54, v56, v55, v47);
        v72 = v54;
        v73 = sub_25B0044B4();
        v74 = sub_25B005C94();
        sub_25AF231D0(v71, v72, v56, v55, v47);
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v136 = v115;
          *v75 = 136315394;
          *(v75 + 4) = sub_25AF8E7DC(0xD00000000000002FLL, 0x800000025B019180, &v136);
          *(v75 + 12) = 2080;
          *&v141 = v71;
          *(&v141 + 1) = v72;
          *&v142 = v56;
          *(&v142 + 1) = v55;
          v143 = v47;
          sub_25AF181DC(v71, v72, v56, v55, v47);
          v76 = v72;
          v77 = sub_25AFD3228();
          v79 = v78;
          sub_25AF18128(v141, *(&v141 + 1), v142, *(&v142 + 1), v143);
          v80 = sub_25AF8E7DC(v77, v79, &v136);
          v38 = v131;

          *(v75 + 14) = v80;
          _os_log_impl(&dword_25AF0B000, v73, v74, "%s got drop target ID: %s after debounce time. Reordering.", v75, 0x16u);
          v81 = v115;
          swift_arrayDestroy();
          MEMORY[0x25F85EC30](v81, -1, -1);
          MEMORY[0x25F85EC30](v75, -1, -1);
        }

        else
        {

          v76 = v72;
        }

        *&v38[v121] = CACurrentMediaTime();
        v82 = v117;
        v83 = *(v117 + 1);
        v131 = *v117;
        v84 = *(v117 + 2);
        v85 = *(v117 + 3);
        *v117 = v71;
        *(v82 + 1) = v76;
        v86 = v76;
        v87 = v122;
        *(v82 + 2) = v122;
        *(v82 + 3) = v55;
        v88 = v82[32];
        v89 = v71;
        v90 = v123;
        v82[32] = v123;
        sub_25AF181DC(v89, v86, v87, v55, v90);
        sub_25AF231D0(v131, v83, v84, v85, v88);
        sub_25AF231D0(*v29, *(v29 + 8), *(v29 + 16), *(v29 + 24), *(v29 + 32));
        *v29 = v89;
        *(v29 + 8) = v86;
        *(v29 + 16) = v87;
        *(v29 + 24) = v55;
        *(v29 + 32) = v90;
        v91 = v128;
        sub_25AF9F5E8(v29, v128);
        (*(v133 + 56))(v91, 0, 1, v134);
        sub_25AF6604C(v91);
        v49 = v119;
        v50 = v120;
      }

      else
      {
        v48 = v128;
        sub_25AF9F5E8(v29, v128);
        (*(v133 + 56))(v48, 0, 1, v134);
        sub_25AF6604C(v48);
        v49 = v31;
        v50 = v17;
      }

      sub_25AF231D0(v49, v50, v124, v126, v125);
      (*(v132 + 8))(v130, v135);
    }

    return sub_25AF51738(v29);
  }

  return result;
}

uint64_t sub_25AF9E524@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_25AF9E5DC@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.airplaneButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9E634@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.cellularButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9E6A0@<X0>(uint64_t *a1@<X8>)
{
  result = GlanceModel.cellularDataIndicator.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t keypath_set_50Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_25AF9E72C@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.flashlightButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9E798@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.muteButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9E804@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.pingButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9E870@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.schoolModeButtonState.getter();
  *a1 = result & 1;
  return result;
}

BOOL sub_25AF9E8DC@<W0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.schoolModeButtonNotInUse.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25AF9E910@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.screenRecordingButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9E97C@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.sensitiveUIButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9E9E8@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.theaterModeButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9EA54@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.walkieTalkieButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9EAC0@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.waterLockButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9EB2C@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.wiFiButtonState.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9EB98@<X0>(void *a1@<X8>)
{
  result = GlanceModel.volume.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_25AF9EBC8@<X0>(unint64_t *a1@<X8>)
{
  result = GlanceModel.volumeRouteButtonSymbolName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25AF9EC00()
{
  result = sub_25B004274();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SelectAvailableControlView.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SelectAvailableControlView.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25AF9EF10()
{
  result = qword_27FA25570;
  if (!qword_27FA25570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25570);
  }

  return result;
}

uint64_t sub_25AF9EF64()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AF9EFA4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25AF19A24;

  return sub_25AF89344(v2, v3, v5, v4);
}

uint64_t sub_25AF9F06C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25AF19A24;

  return sub_25AF8E310(v2, v3, v4);
}

uint64_t sub_25AF9F12C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AF8E3F8(a1, v4, v5, v6);
}

uint64_t sub_25AF9F1F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AF9F230(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF19A24;

  return sub_25AF7024C(a1, v4);
}

uint64_t sub_25AF9F360(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_25AF9F3C4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_25AF9F460@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AF9F494(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_25AF9F4F8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_25AF9F508(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_25AF9F564()
{
  result = qword_27FA255A8;
  if (!qword_27FA255A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA255A8);
  }

  return result;
}

uint64_t sub_25AF9F5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlanceDraggingModel.DraggingButtonTick(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF9F704()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__wifiButtonName);
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_25AF9F778()
{
  result = qword_27FA25620;
  if (!qword_27FA25620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25620);
  }

  return result;
}

unint64_t sub_25AF9F7CC()
{
  result = qword_27FA25640;
  if (!qword_27FA25640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25640);
  }

  return result;
}

uint64_t sub_25AF9F8D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25AF18ADC;

  return sub_25AF7A94C();
}

uint64_t sub_25AF9F990(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_25AF25FC4(v5, &v4, &qword_27FA249F0);
  return sub_25AFBF5B0(v5);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AF9FA04(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25AF9FA58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AF7BFBC(a1, v4, v5, v6);
}

uint64_t (*sub_25AF9FB14())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_25AF9FC5C;
}

uint64_t sub_25AF9FB70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AF82E4C(a1, v4, v5, v6);
}

uint64_t sub_25AF9FC24()
{
  MEMORY[0x25F85ED10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AF9FC64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF9FCA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AF829E0(a1, v4, v5, v6);
}

uint64_t sub_25AF9FD58()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AF9FD90()
{
  if (*(v0 + 16))
  {
    return sub_25AF7C81C();
  }

  return result;
}

uint64_t objectdestroy_144Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AF9FDF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AF19A24;

  return sub_25AF8266C(a1, v4, v5, v7, v6);
}

uint64_t sub_25AFA0018()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_3(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_25AFA0100(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25AF19A24;

  return sub_25AF80BA4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_25AFA01D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25AF18ADC;

  return sub_25AF811C0(a1, v4, v5, v6, v7, v8);
}

id sub_25AFA02A4()
{
  v1 = *(v0 + 16);
  [v1 lock];
  *(v0 + 24) = 1;

  return [v1 unlock];
}

double sub_25AFA0400(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x1FFFFFFFELL;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  return result;
}

uint64_t keypath_set_28Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_25AFA048C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25AFA0504(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25AFEB338(v1);
}

double sub_25AFA05E8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__batteryPercentage) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17NanoControlCenter11GlanceModelC11ControlsSetO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25AFA0618(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AFA066C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_25AFA06C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_25AFA0714()
{
  sub_25AF18128(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_25AFA0778()
{
  result = qword_27FA25740;
  if (!qword_27FA25740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25738);
    sub_25AF3135C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25740);
  }

  return result;
}

uint64_t objectdestroy_356Tm()
{
  sub_25AF18128(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

unint64_t sub_25AFA0878()
{
  result = qword_27FA25778;
  if (!qword_27FA25778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25778);
  }

  return result;
}

uint64_t sub_25AFA08CC()
{
  swift_unknownObjectRelease();

  sub_25AF18128(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_25AFA091C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AFF61D4(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_25AFA09E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25AFA0AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet);
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet) = *(v0 + 24);
  return sub_25AF7679C(v2);
}

uint64_t sub_25AFA0CB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA4004(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__currentTransitionTrailingEdge);
  return result;
}

uint64_t sub_25AFA0D8C()
{
  sub_25B004954();
  sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  return sub_25B004684();
}

uint64_t sub_25AFA0E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA259D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v19[0] = *v2;
  v8 = *(v2 + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA259D8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA259E0);
  v12 = sub_25AF0F274(&qword_27FA259E8, &qword_27FA259D8);
  v13 = sub_25B004954();
  v14 = sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  v19[2] = v13;
  v19[3] = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85CF70](sub_25AFA5A6C, v9, v10, v11, v12, OpaqueTypeConformance2);

  v16 = 0;
  if (v8 == 1)
  {
    sub_25AFB6D8C();
    v16 = sub_25AFB8AA0();
  }

  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA259F0);
  v18 = (a2 + *(result + 36));
  *v18 = v16;
  v18[1] = 0;
  return result;
}

void sub_25AFA1088(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_25B004B14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 1.0;
  v14 = 1.0;
  if (a2)
  {
    if (!qword_27FA30B10)
    {
      __break(1u);
      return;
    }

    v15 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_isCompanionReachable);
    if ((a5 & 1) == 0)
    {
      v28 = v10;

      sub_25B005CC4();
      v16 = sub_25B004F24();
      sub_25B0044A4();

      sub_25B004B04();
      swift_getAtKeyPath();
      sub_25AF241CC(a4, 0);
      (*(v9 + 8))(v12, v28);
      LOBYTE(a4) = v29;
    }

    sub_25AFA9270(BYTE2(a2) & 1, v15, a4);
    v14 = v17;
  }

  if ((~a2 & 0x10100) == 0)
  {
    v13 = 0.97;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v18 + 24) = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA259B8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA259C0);
  v21 = sub_25AF0F274(&qword_27FA259C8, &qword_27FA259B8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23FD8);
  v23 = sub_25B004954();
  v24 = sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  v29 = v23;
  v30 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v22;
  v30 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85CF70](sub_25AFA5A64, v18, v19, v20, v21, v26);
}

uint64_t sub_25AFA13AC(double a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23FD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = sub_25B004954();
  v8 = sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  sub_25B0046B4();
  sub_25B0057D4();
  v10 = v9;
  v12 = v11;
  v15[0] = v7;
  v15[1] = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85C430](v3, OpaqueTypeConformance2, a2, a2, v10, v12);
  return (*(v4 + 8))(v6, v3);
}

void sub_25AFA154C(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *v1;
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  sub_25AFA1088(a1, v3 | v4, *(v1 + 1), *(v1 + 2), v1[24]);
}

void sub_25AFA158C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA259F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v9 = v2[1];
  v51 = *v2;
  v52[0] = v9;
  *(v52 + 9) = *(v2 + 25);
  v10 = *(v51 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);
  swift_getKeyPath();
  v47 = v10;
  sub_25AFA4004(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);

  sub_25B004234();

  v11 = v10[202];

  v46 = a2;
  if (v11)
  {
    v12 = 0;
    v13 = 0.0;
  }

  else
  {
    if ((BYTE10(v51) & 1) == 0)
    {
      goto LABEL_6;
    }

    if (!qword_27FA30B10)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v14 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
    swift_getKeyPath();
    v47 = v14;
    sub_25AFA4004(&qword_27FA23D60, type metadata accessor for EditingModel);

    sub_25B004234();

    v15 = v14[16];

    if (v15 != 1)
    {
      v12 = 0;
      v13 = 1.0;
    }

    else
    {
LABEL_6:
      sub_25AFA1BAC(&v51);
      v17 = v16;
      v18 = 1.0;
      if (BYTE9(v51))
      {
        sub_25AFA1E90(&v51);
      }

      v13 = v17 * v18;
      v12 = 1;
    }
  }

  v44 = a1;
  v45 = v8;
  v19 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    __break(1u);
    goto LABEL_16;
  }

  swift_getKeyPath();
  v47 = v19;
  sub_25AFA4004(&qword_27FA25250, type metadata accessor for GlanceModel);
  v20 = v19;
  sub_25B004234();

  v21 = *&v20[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__currentTransition];

  v22 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v42 = v6;
  v43 = v5;
  swift_getKeyPath();
  v47 = v22;
  v23 = v22;
  sub_25B004234();

  v24 = *&v23[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__currentTransitionTrailingEdge];

  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v25 + 24) = v24;
  if (v12)
  {
    sub_25AFA1BAC(&v51);
  }

  v41 = &v41;
  MEMORY[0x28223BE20](v25);
  *(&v41 - 2) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25A00);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25A08);
  v29 = sub_25AF0F274(&qword_27FA25A10, &qword_27FA25A00);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25A18);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23FD8);
  v32 = sub_25AF0F274(&qword_27FA25A20, &qword_27FA25A18);
  v33 = sub_25B004954();
  v34 = sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  v47 = v33;
  v48 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v50 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v45;
  sub_25B005124();

  v38 = swift_allocObject();
  *(v38 + 16) = v13;
  v47 = v27;
  v48 = v28;
  v49 = v29;
  v50 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v43;
  MEMORY[0x25F85CF70](sub_25AFA5B08, v38, v43, v31, v39, OpaqueTypeConformance2);

  (*(v42 + 8))(v37, v40);
}

void sub_25AFA1BAC(uint64_t a1)
{
  v2 = sub_25B004B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  v6 = *(a1 + 16);
  v14 = v6;
  if (v15 == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_25B005CC4();
    v8 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF2602C(&v14, &qword_27FA25A28);
    (*(v3 + 8))(v5, v2);
    v7 = v13;
  }

  if (v7 == 2)
  {
    if (qword_27FA30B10)
    {
      v9 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
      swift_getKeyPath();
      v13 = v9;
      sub_25AFA4004(&qword_27FA23D60, type metadata accessor for EditingModel);

      sub_25B004234();

      v10 = *(v9 + 16);

      if ((v10 & 1) == 0)
      {
        v11 = sub_25AFB7268();
        swift_getKeyPath();
        v13 = v11;
        sub_25AFA4004(&qword_27FA25948, type metadata accessor for GlanceButtonModel.EllipticModel);
        sub_25B004234();

        sub_25AFB6D8C();
        sub_25AFBD440();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_25AFA1E90(uint64_t a1)
{
  v2 = sub_25B004B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA30B10)
  {
    v13 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_isCompanionReachable);
    v19 = *(a1 + 24);
    v6 = *(a1 + 16);
    v18 = v6;
    v7 = v19;

    if (v7 != 1)
    {
      sub_25AF25FC4(&v18, &v16, &qword_27FA25A28);
      sub_25B005CC4();
      v8 = sub_25B004F24();
      sub_25B0044A4();

      sub_25B004B04();
      swift_getAtKeyPath();
      sub_25AF2602C(&v18, &qword_27FA25A28);
      (*(v3 + 8))(v5, v2);
      LOBYTE(v6) = v16;
    }

    v17 = *(a1 + 40);
    v9 = *(a1 + 32);
    v16 = v9;
    if (v17 == 1)
    {
      v15[0] = v9;
    }

    else
    {
      sub_25AF25FC4(&v16, v15, &qword_27FA25A30);
      sub_25B005CC4();
      v10 = sub_25B004F24();
      sub_25B0044A4();

      sub_25B004B04();
      swift_getAtKeyPath();
      sub_25AF2602C(&v16, &qword_27FA25A30);
      (*(v3 + 8))(v5, v2);
      LOBYTE(v9) = v15[0];
    }

    v11 = *(a1 + 11);
    v14 = v9;
    sub_25AFA8BE8(v11, v13, v6, &v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AFA2164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2 == a3)
  {
    sub_25B0056E4();
    sub_25B0045E4();
  }
}

uint64_t sub_25AFA2224(double a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25A18);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23FD8);
  v5 = sub_25AF0F274(&qword_27FA25A20, &qword_27FA25A18);
  sub_25B004954();
  sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85CF70](sub_25AFA63B0, v2, v3, v4, v5, OpaqueTypeConformance2);
}

uint64_t sub_25AFA23FC@<X0>(uint64_t a1@<X0>, _BOOL4 a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v43 = a2;
  v44 = a1;
  v46 = a5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258B8);
  MEMORY[0x28223BE20](v45);
  v8 = &v42[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258C0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42[-v10];
  v12 = sub_25B004B14();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a4)
  {
    if (a3 != 2)
    {
LABEL_3:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258C8);
      (*(*(v16 - 8) + 16))(v8, v44, v16);
      swift_storeEnumTagMultiPayload();
      sub_25AFA46F4();
      sub_25AF0F274(&qword_27FA258D8, &qword_27FA258C8);
      return sub_25B004C74();
    }
  }

  else
  {

    sub_25B005CC4();
    v18 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(a3, 0);
    (*(v13 + 8))(v15, v12);
    if (v49 != 2)
    {
      goto LABEL_3;
    }
  }

  v19 = v43;
  v20 = 0.0;
  v21 = 0;
  if (v43 == 2)
  {
    sub_25AFB6D8C();
    v20 = sub_25AFB8D08();
    v21 = v22;
  }

  v43 = v19 != 2;
  sub_25AFB6D8C();
  v23 = sub_25AFB8F90();
  v25 = v24;

  v26 = swift_allocObject();
  v26[2] = v20;
  *(v26 + 3) = v21;
  v26[4] = v23;
  *(v26 + 5) = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258C8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258D0);
  v29 = sub_25AF0F274(&qword_27FA258D8, &qword_27FA258C8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA258E0);
  v31 = sub_25B004954();
  v32 = sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  *&v49 = v31;
  *(&v49 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v49 = v30;
  *(&v49 + 1) = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85CF70](sub_25AFA4678, v26, v27, v28, v29, v34);

  v35 = sub_25AFB8AA0();

  v36 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258E8) + 36)];
  *v36 = v35;
  *(v36 + 1) = v20;
  v36[2] = v21;

  v37 = sub_25AFB8AA0();

  v38 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258F0) + 36)];
  *v38 = v37;
  *(v38 + 1) = v23;
  v38[2] = v25;
  type metadata accessor for CGSize(0);
  v47 = 0;
  v48 = 0;
  sub_25B005484();
  v39 = v50;
  v40 = v49;
  v41 = &v11[*(v9 + 36)];
  *v41 = v23;
  *(v41 + 1) = v25;
  v41[16] = v43;
  *(v41 + 24) = v40;
  *(v41 + 5) = v39;
  sub_25AFA4684(v11, v8);
  swift_storeEnumTagMultiPayload();
  sub_25AFA46F4();
  sub_25B004C74();
  return sub_25AFA4A7C(v11);
}

uint64_t sub_25AFA29C0(double a1, double a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v12 = sub_25B004954();
  v13 = sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  MEMORY[0x25F85C4A0](v12, v13, a1, a2);
  sub_25B0057D4();
  v15 = v14;
  v17 = v16;
  v20[0] = v12;
  v20[1] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85C450](v8, OpaqueTypeConformance2, a3, a4, v15, v17);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_25AFA2B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = 0.0;
  v8 = 0.0;
  if (v6 == 1)
  {
    v9 = *(v2 + 8);
    v10 = (*v2 + -1.0) * 0.5;
    v19 = *(v2 + 24);
    v20 = *(v2 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25988);
    sub_25B005494();
    v7 = v10 * v18[0];
    v19 = *(v2 + 24);
    v20 = *(v2 + 40);
    sub_25B005494();
    v8 = (v9 + -1.0) * 0.5 * v18[1];
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25968);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25970) + 36));
  *v12 = v7;
  v12[1] = v8;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = swift_allocObject();
  v15 = *(v3 + 16);
  *(v14 + 1) = *v3;
  *(v14 + 2) = v15;
  *(v14 + 3) = *(v3 + 32);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25978) + 36));
  *v16 = sub_25AFA5508;
  v16[1] = v13;
  v16[2] = sub_25AFA5590;
  v16[3] = v14;
  *&v19 = *(v3 + 40);
  return sub_25AF25FC4(&v19, v18, &qword_27FA25980);
}

uint64_t sub_25AFA2D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v1)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25988);
    sub_25B0054A4();
  }
}

uint64_t sub_25AFA2ECC@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  *(&v25 + 1) = &type metadata for ControlCenterFlags;
  v26 = sub_25AF1935C();
  LOBYTE(v24) = 2;
  v8 = sub_25B004284();
  __swift_destroy_boxed_opaque_existential_0Tm(&v24);
  v23 = xmmword_25B00F450;
  v22 = xmmword_25B00F460;
  v9 = 0;
  if (v8)
  {
    sub_25AFA4B78(a2, a3 & 1);
    v10 = 0;
    if ((v11 & 1) == 0)
    {
      sub_25AFA4DE8(a1, &v24);
      v22 = v24;
      v23 = v25;
      v9 = v26;
      v10 = v27;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v22;
  *(v12 + 32) = v23;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25928);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25930);
  v15 = sub_25AF0F274(&qword_27FA25938, &qword_27FA25928);
  sub_25B004954();
  sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85CF70](sub_25AFA4AF4, v12, v13, v14, v15, OpaqueTypeConformance2);

  if (qword_27FA237A0 != -1)
  {
    swift_once();
  }

  v17 = qword_27FA30BE8;
  sub_25AFA4B78(a2, a3 & 1);
  v19 = v18;
  v20 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25940) + 36);
  *v20 = v17;
  *(v20 + 8) = v19 & 1;
}

double sub_25AFA3168()
{
  swift_getKeyPath();
  sub_25AFA4004(&qword_27FA25A48, type metadata accessor for SizeContainer);
  sub_25B004234();

  return *(v0 + 16);
}

uint64_t sub_25AFA3208(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((v5 & 1) == 0)
  {
    if (*(a2 + 16) != v4 || *(a2 + 24) != v3)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_25AFA4004(&qword_27FA25A48, type metadata accessor for SizeContainer);
      sub_25B004224();
    }

    *(a2 + 16) = v4;
    *(a2 + 24) = v3;
  }
}

void sub_25AFA33C0(double a1, double a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA4004(&qword_27FA25A48, type metadata accessor for SizeContainer);
    sub_25B004224();
  }
}

uint64_t sub_25AFA34E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 9);
  swift_getKeyPath();
  sub_25AFA4004(&qword_27FA25A48, type metadata accessor for SizeContainer);
  sub_25B004234();

  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 17) = v6;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 25) = v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25A50);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25A58) + 36));
  *v13 = sub_25AFA5C14;
  v13[1] = v10;
  v13[2] = sub_25AFA5CB8;
  v13[3] = v11;
}

__n128 sub_25AFA36C8@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA4004(&qword_27FA25A48, type metadata accessor for SizeContainer);
  sub_25B004234();

  result = v3[1];
  *a2 = result;
  return result;
}

uint64_t sub_25AFA377C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_25B004274();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_25AFA3848()
{
  result = sub_25B004274();
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

uint64_t sub_25AFA38EC(uint64_t a1)
{
  result = sub_25AFA4004(&qword_27FA25890, type metadata accessor for SizeContainer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25AFA3960(uint64_t a1)
{
  v1[2] = a1;
  sub_25B005B34();
  v1[3] = sub_25B005B24();
  v3 = sub_25B005AE4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_25AFA39F8, v3, v2);
}

void sub_25AFA39F8()
{
  v1 = v0[2];
  if (v1)
  {
    if (qword_27FA30B10)
    {
      v2 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel);
      v0[6] = v2;
      v2;
      v3 = swift_task_alloc();
      v0[7] = v3;
      *v3 = v0;
      v3[1] = sub_25AFA3B50;

      sub_25AF10FA0(v1);
      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (!qword_27FA30B10)
  {
    goto LABEL_11;
  }

  v4 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel);
  v5 = *&v4[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_extensionProviderVisible];
  v6 = v4;
  sub_25AF10CE4(v5, 1);

  v7 = v0[1];

  v7();
}

uint64_t sub_25AFA3B50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25AF27F90, v4, v3);
}

uint64_t sub_25AFA3C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25898) + 36));
  sub_25B004754();

  sub_25B005B44();
  *v7 = &unk_25B00F5F0;
  v7[1] = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258A0);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_25AFA3D84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AFA3DBC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25AF18ADC;

  return sub_25AFA3960(v2);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25AFA3E7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25AFA3EC4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_25AFA3F1C()
{
  result = qword_27FA258A8;
  if (!qword_27FA258A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25898);
    sub_25AF0F274(&qword_27FA258B0, &qword_27FA258A0);
    sub_25AFA4004(&qword_27FA23818, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA258A8);
  }

  return result;
}

uint64_t sub_25AFA4004(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25AFA4084(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  if (qword_27FA30B10)
  {
    v7 = *(v2 + 34);
    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    v11 = *v2;
    v10 = *(v2 + 8);
    v12 = *(v2 + 32);
    v22 = v11;
    v23 = v10;
    v24 = v9;
    v25 = v8;
    v26 = v12;
    v13 = qword_27FA30B10;
    sub_25AF181DC(v11, v10, v9, v8, v12);
    v14 = sub_25AF730A0(&v22, 0);

    sub_25AF18128(v22, v23, v24, v25, v26);
    swift_getKeyPath();
    v22 = v14;
    sub_25AFA4004(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004234();

    v15 = v14[OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted];

    if (v15)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 1.0;
    }

    if (!v15 || !v7)
    {
      goto LABEL_11;
    }

    if (qword_27FA30B10)
    {
      v17 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_draggingModel);
      swift_getKeyPath();
      v22 = v17;
      sub_25AFA4004(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);

      sub_25B004234();

      v18 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__dragValue;
      swift_beginAccess();
      sub_25AF25FC4(v17 + v18, v6, &qword_27FA23D08);

      v19 = sub_25B004594();
      LODWORD(v17) = (*(*(v19 - 8) + 48))(v6, 1, v19);
      sub_25AF2602C(v6, &qword_27FA23D08);
      if (v17 == 1)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }

LABEL_11:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25A38);
      (*(*(v20 - 8) + 16))(a2, v21, v20);
      *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25A40) + 36)) = v16;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25AFA43D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA4004(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  *a2 = *(v3 + 202);
  return result;
}

double sub_25AFA44A4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA4004(&qword_27FA25948, type metadata accessor for GlanceButtonModel.EllipticModel);
  sub_25B004234();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

__n128 sub_25AFA4574@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA4004(&qword_27FA25948, type metadata accessor for GlanceButtonModel.EllipticModel);
  sub_25B004234();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 24);
  *(a2 + 16) = v4;
  result = *(v3 + 56);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_25AFA4628(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_25AFBECB4(v3);
}

uint64_t sub_25AFA4684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AFA46F4()
{
  result = qword_27FA258F8;
  if (!qword_27FA258F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA258C0);
    sub_25AFA4780();
    sub_25AFA4A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA258F8);
  }

  return result;
}

unint64_t sub_25AFA4780()
{
  result = qword_27FA25900;
  if (!qword_27FA25900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA258F0);
    sub_25AFA4838();
    sub_25AF0F274(&qword_27FA25910, &qword_27FA25918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25900);
  }

  return result;
}

unint64_t sub_25AFA4838()
{
  result = qword_27FA25908;
  if (!qword_27FA25908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA258E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA258C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA258D0);
    sub_25AF0F274(&qword_27FA258D8, &qword_27FA258C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA258E0);
    sub_25B004954();
    sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25AF0F274(&qword_27FA25910, &qword_27FA25918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25908);
  }

  return result;
}

unint64_t sub_25AFA4A28()
{
  result = qword_27FA25920;
  if (!qword_27FA25920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25920);
  }

  return result;
}

uint64_t sub_25AFA4A7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA258C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AFA4AF4()
{
  v1 = sub_25B004954();
  v2 = sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  return MEMORY[0x25F85C470](v0 + 16, v1, v2);
}

void sub_25AFA4B78(uint64_t a1, char a2)
{
  v4 = sub_25B004B14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1 != 2)
    {
      return;
    }
  }

  else
  {

    sub_25B005CC4();
    v8 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(a1, 0);
    (*(v5 + 8))(v7, v4);
    if (v13 != 2)
    {
      return;
    }
  }

  if (!qword_27FA30B10)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v9 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
  swift_getKeyPath();
  v13 = v9;
  sub_25AFA4004(&qword_27FA23D60, type metadata accessor for EditingModel);

  sub_25B004234();

  v10 = *(v9 + 16);

  if ((v10 & 1) == 0)
  {
    if (qword_27FA30B10)
    {
      v11 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
      swift_getKeyPath();
      v13 = v11;

      sub_25B004234();

      return;
    }

    goto LABEL_11;
  }
}

CGFloat sub_25AFA4DE8@<D0>(unsigned __int8 a1@<W1>, _OWORD *a2@<X8>)
{
  v4 = a1;
  v5 = sub_25AFB7268();
  swift_getKeyPath();
  *&transform.a = v5;
  sub_25AFA4004(&qword_27FA25948, type metadata accessor for GlanceButtonModel.EllipticModel);
  sub_25B004234();

  v6 = *(v5 + 56);
  v7 = *(v5 + 64);
  v24 = *(v5 + 40);
  v26 = *(v5 + 24);

  *&transform.a = v26;
  *&transform.c = v24;
  transform.tx = v6;
  transform.ty = v7;
  CGAffineTransformDecompose(&v29, &transform);
  if (v29.scale.width == 0.0)
  {
    width = 1.0;
  }

  else
  {
    width = v29.scale.width;
  }

  if (v29.scale.height == 0.0)
  {
    height = 1.0;
  }

  else
  {
    height = v29.scale.height;
  }

  v10 = v29.translation.dx / width;
  v11 = v29.translation.dy / height;
  if (v4 != 2)
  {
    v12 = -1.0;
    if (a1)
    {
      v12 = 0.0;
    }

    v10 = v12 * v10;
    v11 = -v11;
  }

  CGAffineTransformMakeTranslation(&transform, v10, v11);
  v13 = *&transform.a;
  v14 = *&transform.c;
  v15 = *&transform.tx;
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  v29.scale = v13;
  *&v29.horizontalShear = v14;
  v29.translation = v15;
  CGAffineTransformConcat(&v28, &transform, &v29);
  tx = v28.tx;
  ty = v28.ty;
  v25 = *&v28.c;
  v27 = *&v28.a;
  CGAffineTransformMakeScale(&transform, width, height);
  v18 = *&transform.a;
  v19 = *&transform.c;
  v20 = *&transform.tx;
  *&transform.a = v27;
  *&transform.c = v25;
  transform.tx = tx;
  transform.ty = ty;
  v29.scale = v18;
  *&v29.horizontalShear = v19;
  v29.translation = v20;
  CGAffineTransformConcat(&v28, &transform, &v29);
  result = v28.a;
  v22 = *&v28.c;
  v23 = *&v28.tx;
  *a2 = *&v28.a;
  a2[1] = v22;
  a2[2] = v23;
  return result;
}

uint64_t sub_25AFA4FC0(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_25AFBECB4(v3);
}

uint64_t sub_25AFA5010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_25AFA506C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlCenterStyleModifierKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ControlCenterStyleModifierKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_25AFA5240(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_25AFA526C()
{
  result = qword_27FA25950;
  if (!qword_27FA25950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25958);
    sub_25AFA46F4();
    sub_25AF0F274(&qword_27FA258D8, &qword_27FA258C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25950);
  }

  return result;
}

unint64_t sub_25AFA5328()
{
  result = qword_27FA25960;
  if (!qword_27FA25960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25930);
    sub_25AF0F274(&qword_27FA25938, &qword_27FA25928);
    sub_25B004954();
    sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25AF0F274(&qword_27FA24010, &qword_27FA24018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25960);
  }

  return result;
}

uint64_t sub_25AFA5508@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = 0uLL;
  if (v3 == 1)
  {
    result = sub_25B004724();
    *(&v4 + 1) = v6;
  }

  *a1 = v4;
  *(a1 + 16) = v3 ^ 1;
  return result;
}

uint64_t sub_25AFA5558()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25AFA55C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_25AFA5610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AFA566C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_25AFA56B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AFA5704(uint64_t a1, int a2)
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

uint64_t sub_25AFA574C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25AFA57B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 35))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25AFA5808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25AFA5868()
{
  result = qword_27FA25990;
  if (!qword_27FA25990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25978);
    sub_25AFA5920();
    sub_25AF0F274(&qword_27FA259A8, &qword_27FA259B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25990);
  }

  return result;
}

unint64_t sub_25AFA5920()
{
  result = qword_27FA25998;
  if (!qword_27FA25998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25970);
    sub_25AF0F274(&qword_27FA259A0, &qword_27FA25968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25998);
  }

  return result;
}

uint64_t sub_25AFA5B0C()
{
  sub_25B004954();
  sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  return sub_25B0046B4();
}

uint64_t sub_25AFA5C14@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 16) == 1 && (!*(v1 + 17) || *(v1 + 24) == 0.0 && *(v1 + 32) == 0.0))
  {
    result = sub_25B004724();
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t sub_25AFA5C80()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

__n128 sub_25AFA5CD8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_25AFA5CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA259B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA259C0);
  sub_25AF0F274(&qword_27FA259C8, &qword_27FA259B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23FD8);
  sub_25B004954();
  sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AFA5E4C()
{
  result = qword_27FA25A60;
  if (!qword_27FA25A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA259F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA259D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA259E0);
    sub_25AF0F274(&qword_27FA259E8, &qword_27FA259D8);
    sub_25B004954();
    sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25AF0F274(&qword_27FA25A68, &qword_27FA25A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25A60);
  }

  return result;
}

uint64_t sub_25AFA6000()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA259F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23FD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25A00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25A08);
  sub_25AF0F274(&qword_27FA25A10, &qword_27FA25A00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25A18);
  sub_25AF0F274(&qword_27FA25A20, &qword_27FA25A18);
  sub_25B004954();
  sub_25AFA4004(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AFA61F4()
{
  result = qword_27FA25A78;
  if (!qword_27FA25A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25A40);
    sub_25AF0F274(&qword_27FA25A80, &qword_27FA25A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25A78);
  }

  return result;
}

unint64_t sub_25AFA62B0()
{
  result = qword_27FA25A88;
  if (!qword_27FA25A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25A58);
    sub_25AF0F274(&qword_27FA25A90, &qword_27FA25A50);
    sub_25AF0F274(&qword_27FA259A8, &qword_27FA259B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25A88);
  }

  return result;
}

uint64_t sub_25AFA63E8()
{

  v1 = OBJC_IVAR____TtC17NanoControlCenter18LegacyBatteryModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LegacyBatteryModel()
{
  result = qword_27FA25AA0;
  if (!qword_27FA25AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AFA64E0()
{
  result = sub_25B004274();
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

uint64_t getEnumTagSinglePayload for RequiredEnvironmentToConfigureControlEffect(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_25AFA6660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25AB0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25AB8);
  v9 = a2 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v5;
  return result;
}

unint64_t sub_25AFA6718()
{
  result = qword_27FA25AC0;
  if (!qword_27FA25AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25AB8);
    sub_25AF0F274(&qword_27FA25AC8, &qword_27FA25AB0);
    sub_25AF0F274(&qword_27FA25AD0, &qword_27FA25AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25AC0);
  }

  return result;
}

uint64_t sub_25AFA67FC(uint64_t a1)
{
  v1 = 1701736260;
  v2 = 6710863;
  if ((a1 & 2) == 0)
  {
    v2 = (a1 << 61 >> 63) & 0x6574616D696E41;
  }

  if ((a1 & 8) == 0)
  {
    v1 = v2;
  }

  if ((a1 & 0x20) != 0)
  {
    return 1684955468;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25AFA6868(unint64_t a1)
{
  if (qword_27FA23728 == -1 || (swift_once(), a1 <= 0x64))
  {
    v2 = 0;
    v3 = 0x65636172547241;
    switch(a1)
    {
      case 0uLL:
      case 5uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xCuLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x15uLL:
      case 0x16uLL:
      case 0x18uLL:
      case 0x19uLL:
      case 0x32uLL:
      case 0x33uLL:
        return v2;
      case 1uLL:
      case 3uLL:
      case 4uLL:
      case 8uLL:
      case 0x10uLL:
      case 0x64uLL:
        v3 = sub_25B004014();
        sub_25B004014();
        return v3;
      case 2uLL:
        v7 = sub_25B005924();
        v8 = SFLocalizableWAPIStringKeyForKey();

        sub_25B005934();
        v3 = sub_25B004014();

        v9 = sub_25B005924();
        v10 = SFLocalizableWAPIStringKeyForKey();

        sub_25B005934();
        sub_25B004014();

        return v3;
      case 6uLL:
      case 7uLL:
      case 0xBuLL:
        return sub_25B004014();
      case 0xDuLL:
        return v3;
      case 0xEuLL:
        return 0xD000000000000010;
      case 0xFuLL:
        v4 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
        v5 = sub_25B005924();
        v6 = [v4 initWithPath_];

        if (!v6)
        {
          v6 = [objc_opt_self() mainBundle];
        }

        v3 = sub_25B004014();
        sub_25B004014();

        return v3;
      case 0x17uLL:
        return 0xD000000000000010;
      default:
        break;
    }
  }

  type metadata accessor for LegacyButtonIdentifier(0);
  sub_25B0061E4();
  __break(1u);
  JUMPOUT(0x25AFA70A0);
}

uint64_t sub_25AFA7234(uint64_t a1)
{
  result = 0x4E54425F4B434F4CLL;
  switch(a1)
  {
    case 0:
      v3 = 0x524554544142;
      goto LABEL_15;
    case 1:
      return 0x52414C554C4C4543;
    case 2:
      v4 = sub_25B005924();
      v5 = SFLocalizableWAPIStringKeyForKey();

      v6 = sub_25B005934();
      return v6;
    case 3:
      return 0xD000000000000011;
    case 4:
      return 0x5F45434E454C4953;
    case 5:
    case 17:
    case 50:
      return 0x6465766F6D65723CLL;
    case 6:
      return 0x4E54425F474E4950;
    case 7:
      return 0x47494C4853414C46;
    case 8:
    case 25:
      return 0xD000000000000010;
    case 9:
      return 0x4F4C5F5245544157;
    case 10:
      return result;
    case 11:
      v3 = 0x414C50524941;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5F59000000000000;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x6563617254205241;
      break;
    case 14:
      result = 0x52206E6565726353;
      break;
    case 15:
      result = 0x76697469736E6553;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 19:
      result = 0x72616461525454;
      break;
    case 20:
      result = 0x54425F5355434F46;
      break;
    case 21:
      result = 0x5A49535F54584554;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0x4D206E6565726353;
      break;
    case 24:
      result = 0x45544F4D45525654;
      break;
    case 51:
      result = 0x69676E615220494ELL;
      break;
    case 100:
      result = 0x4D5F4C4F4F484353;
      break;
    default:
      type metadata accessor for LegacyButtonIdentifier(0);
      sub_25B0061E4();
      __break(1u);
      JUMPOUT(0x25AFA75CCLL);
  }

  return result;
}

unint64_t NCCLegacyButtonIdentifier.description.getter()
{
  sub_25B005F24();

  v0 = sub_25B006124();
  MEMORY[0x25F85D7B0](v0);

  MEMORY[0x25F85D7B0](15913, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_25AFA7878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_25AFA78C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_25AFA7990(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

uint64_t sub_25AFA79F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_25AFA7E78(v13, v14) & 1;
}

uint64_t sub_25AFA7A84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25AFA8374(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_25AFA7AC8()
{
  result = qword_27FA25AE0;
  if (!qword_27FA25AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25AE0);
  }

  return result;
}

unint64_t sub_25AFA7B20()
{
  result = qword_27FA25AE8;
  if (!qword_27FA25AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25AE8);
  }

  return result;
}

unint64_t sub_25AFA7B78()
{
  result = qword_27FA25AF0;
  if (!qword_27FA25AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25AF0);
  }

  return result;
}

unint64_t sub_25AFA7BD0()
{
  result = qword_27FA25AF8;
  if (!qword_27FA25AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25AF8);
  }

  return result;
}

uint64_t sub_25AFA7C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_25AFA7C80(v5, v7) & 1;
}

uint64_t sub_25AFA7C80(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 48);
  v7 = v6 >> 6;
  if (v6 >> 6 <= 1)
  {
    v8 = *(a1 + 16);
    if (!v7)
    {
      v9 = *(a2 + 48);
      if (v9 <= 0x3F)
      {
        v10 = *(a1 + 24);
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v13 = *(a2 + 16);
        v14 = *(a2 + 24);
        v16 = *(a2 + 32);
        v15 = *(a2 + 40);
        if (*&v4 == *a2 && v5 == *(a2 + 8))
        {
          v17 = 0;
LABEL_27:
          if (v8 != v13 || ((v10 ^ v14) & 1) != 0)
          {
            return v17 & 1;
          }

          if (v12)
          {
            if (v15 && (v11 == v16 && v12 == v15 || (sub_25B006174() & 1) != 0))
            {
              goto LABEL_40;
            }
          }

          else if (!v15)
          {
LABEL_40:
            v17 = v6 ^ v9 ^ 1;
            return v17 & 1;
          }

          goto LABEL_38;
        }

        v22 = sub_25B006174();
        v17 = 0;
        if (v22)
        {
          goto LABEL_27;
        }

        return v17 & 1;
      }

      goto LABEL_38;
    }

    if ((*(a2 + 48) & 0xC0) != 0x40)
    {
      goto LABEL_38;
    }

    v20 = *(a2 + 16);
    if ((*&v4 != *a2 || v5 != *(a2 + 8)) && (sub_25B006174() & 1) == 0)
    {
      goto LABEL_38;
    }

    if (v8)
    {
      if (!v20)
      {
        goto LABEL_38;
      }

      v21 = sub_25AF37B70(v8, v20);

      if ((v21 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (v20)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (v7 != 2)
  {
    if (*(a2 + 48) >= 0xC0u)
    {
      v17 = *a2 == v4;
      return v17 & 1;
    }

LABEL_38:
    v17 = 0;
    return v17 & 1;
  }

  if ((*(a2 + 48) & 0xC0) != 0x80)
  {
    goto LABEL_38;
  }

  if (*&v4 == *a2 && v5 == *(a2 + 8))
  {
LABEL_36:
    v17 = 1;
    return v17 & 1;
  }

  return sub_25B006174();
}

uint64_t sub_25AFA7E78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v63[0] = *a1;
  v63[1] = v4;
  v63[2] = *(a1 + 32);
  v64 = *(a1 + 48);
  v5 = *(a2 + 16);
  v61[0] = *a2;
  v61[1] = v5;
  v61[2] = *(a2 + 32);
  v62 = *(a2 + 48);
  if ((sub_25AFA7C80(v63, v61) & 1) == 0)
  {
    return 0;
  }

  sub_25AF18BD4(0, &qword_27FA27200);
  if ((sub_25B005DE4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 64);
  v7 = *(a2 + 64);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_25AF18BD4(0, &qword_27FA24218);
    v8 = v7;
    v9 = v6;
    v10 = sub_25B005DE4();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = *(a1 + 72);
  v12 = *(a2 + 72);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    sub_25AF18BD4(0, &qword_27FA24218);
    v13 = v12;
    v14 = v11;
    v15 = sub_25B005DE4();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = *(a1 + 80);
  v17 = *(a2 + 80);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    sub_25AF18BD4(0, &qword_27FA24218);
    v18 = v17;
    v19 = v16;
    v20 = sub_25B005DE4();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = *(a1 + 88);
  v22 = *(a2 + 88);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    sub_25AF18BD4(0, &qword_27FA24218);
    v23 = v22;
    v24 = v21;
    v25 = sub_25B005DE4();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v26 = *(a1 + 104);
  v27 = *(a2 + 104);
  if (v26)
  {
    if (!v27 || (*(a1 + 96) != *(a2 + 96) || v26 != v27) && (sub_25B006174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v28 = *(a1 + 112);
  v29 = *(a2 + 112);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    sub_25AF18BD4(0, &qword_27FA24218);
    v30 = v29;
    v31 = v28;
    v32 = sub_25B005DE4();

    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v33 = *(a1 + 120);
  v34 = *(a2 + 120);
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    sub_25AF18BD4(0, &qword_27FA240A8);
    v35 = v34;
    v36 = v33;
    v37 = sub_25B005DE4();

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v38 = *(a1 + 136);
  v39 = *(a2 + 136);
  if (v38)
  {
    if (!v39 || (*(a1 + 128) != *(a2 + 128) || v38 != v39) && (sub_25B006174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = *(a1 + 144);
  v41 = *(a2 + 144);
  if (v40)
  {
    if (!v41)
    {
      return 0;
    }

    sub_25AF18BD4(0, &qword_27FA24218);
    v42 = v41;
    v43 = v40;
    v44 = sub_25B005DE4();

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v45 = *(a1 + 152);
  v46 = *(a2 + 152);
  if (v45)
  {
    if (!v46)
    {
      return 0;
    }

    sub_25AF18BD4(0, &qword_27FA24218);
    v47 = v46;
    v48 = v45;
    v49 = sub_25B005DE4();

    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  v50 = *(a1 + 160);
  v51 = *(a2 + 160);
  if (v50)
  {
    if (!v51)
    {
      return 0;
    }

    sub_25AF18BD4(0, &qword_27FA24218);
    v52 = v51;
    v53 = v50;
    v54 = sub_25B005DE4();

    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  v55 = *(a1 + 168);
  v56 = *(a2 + 168);
  if (v55)
  {
    if (v56)
    {
      sub_25AF18BD4(0, &qword_27FA24218);
      v57 = v56;
      v58 = v55;
      v59 = sub_25B005DE4();

      if (v59)
      {
        return 1;
      }
    }
  }

  else if (!v56)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_25AFA8338(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_25AFA8374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_25AFA83AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_25AFA83FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AFA846C(uint64_t result, char a2)
{
  v2 = *(result + 48) & 1 | (a2 << 6);
  *(result + 24) &= 1uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_25AFA849C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25AFA84F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_25AFA8574(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_25B0045C4() & 1;
  v9 = sub_25B0045C4();
  if (v8 == (v9 & 1))
  {
  }

  else if (qword_27FA30B10)
  {
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v11 = qword_27FA30B10;
    sub_25AF72400(v10, a3, a4, a5 & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AFA86CC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_25AF9F4F8(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B00);
  sub_25AFA87E4();
  sub_25B0052B4();
}

uint64_t sub_25AFA8794()
{
  if (*(v0 + 24) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

unint64_t sub_25AFA87E4()
{
  result = qword_27FA25B08;
  if (!qword_27FA25B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25B08);
  }

  return result;
}

uint64_t sub_25AFA8848()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25B00);
  sub_25AFA87E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AFA88E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B004C64();
  v5 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_25B004C74();
}

uint64_t sub_25AFA89E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25B004C64();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_25B004C74();
}

uint64_t sub_25AFA8AD8(uint64_t result)
{
  if (*(v1 + 202) == (result & 1))
  {
    *(v1 + 202) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AFA8BE8(char a1, char a2, char a3, unsigned __int8 *a4)
{
  v8 = *a4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_25B005414();
  }

  v10 = Strong;
  if (a3 == 2)
  {
    swift_getKeyPath();
    *&v39 = v10;
    sub_25AFB1B30(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004234();

    v11 = *(v10 + 74);
    swift_getKeyPath();
    *&v39 = v10;
    sub_25B004234();

    v26 = *(v10 + 73);
    v12 = sub_25AFB777C(a2, 2);
    swift_getKeyPath();
    *&v39 = v10;
    sub_25B004234();
  }

  else
  {
    v12 = sub_25AFB777C(a2, a3);
    v11 = 0;
    v26 = 0;
  }

  swift_getKeyPath();
  *&v39 = v4;
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  v14 = *(v4 + 136);
  v15 = *(v4 + 168);
  v47 = *(v4 + 152);
  v48 = v15;
  v49 = *(v4 + 184);
  v16 = *(v4 + 72);
  v17 = *(v4 + 104);
  v43 = *(v4 + 88);
  v44 = v17;
  v45 = *(v4 + 120);
  v46 = v14;
  v18 = *(v4 + 40);
  v39 = *(v4 + 24);
  v40 = v18;
  v41 = *(v4 + 56);
  v42 = v16;
  swift_getKeyPath();
  v38 = v4;
  sub_25AF25FC4(&v39, &v27, &qword_27FA25B78);
  sub_25B004234();

  if (v12)
  {
    if (a3 != 2)
    {
      sub_25AF2602C(&v39, &qword_27FA25B78);
      v21 = 0;
      goto LABEL_31;
    }

    if (a1)
    {
      v35 = v47;
      v36 = v48;
      v37 = v49;
      v31 = v43;
      v32 = v44;
      v33 = v45;
      v34 = v46;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      if (sub_25AFB2C70(&v27) != 1)
      {
        v19 = *(&v36 + 1);
        if (*(&v36 + 1))
        {
          goto LABEL_25;
        }
      }
    }

    if (!v11)
    {
LABEL_29:
      sub_25AF2602C(&v39, &qword_27FA25B78);
      goto LABEL_30;
    }

    if (v26)
    {
      v35 = v47;
      v36 = v48;
      v37 = v49;
      v31 = v43;
      v32 = v44;
      v33 = v45;
      v34 = v46;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      if (sub_25AFB2C70(&v27) != 1)
      {
        v19 = *(&v31 + 1);
LABEL_24:
        if (v19)
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v35 = v47;
      v36 = v48;
      v37 = v49;
      v31 = v43;
      v32 = v44;
      v33 = v45;
      v34 = v46;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      if (sub_25AFB2C70(&v27) != 1)
      {
        v19 = *(&v32 + 1);
        if (*(&v32 + 1))
        {
LABEL_25:
          v20 = v19;
          goto LABEL_26;
        }

        v19 = *(&v43 + 1);
        goto LABEL_24;
      }
    }

LABEL_30:
    v21 = 0;
    goto LABEL_31;
  }

  v35 = v47;
  v36 = v48;
  v37 = v49;
  v31 = v43;
  v32 = v44;
  v33 = v45;
  v34 = v46;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  if (sub_25AFB2C70(&v27) == 1)
  {
LABEL_20:
    v21 = 0;
    goto LABEL_31;
  }

  if (!*(&v37 + 1))
  {
    sub_25AF2602C(&v39, &qword_27FA25B78);
    goto LABEL_20;
  }

  v20 = *(&v37 + 1);
LABEL_26:
  sub_25B005B34();
  v22 = v20;
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_25B005434();

  sub_25AF2602C(&v39, &qword_27FA25B78);
LABEL_31:
  v13 = 0;
  if (v8 <= 1)
  {
    if (v8)
    {
      goto LABEL_33;
    }

LABEL_38:
    if (qword_27FA237D8 != -1)
    {
      swift_once();
    }

    v24 = qword_27FA30C08;
    v13 = sub_25B005434();

    if (v11)
    {
LABEL_34:
      swift_getKeyPath();
      *&v27 = v10;
      sub_25AFB1B30(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
      sub_25B004234();

      v23 = *(v10 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlProps + 40);

      if (!v21)
      {
        v21 = v23;
        if (!v23)
        {
          return v13;
        }

        goto LABEL_43;
      }

LABEL_42:

LABEL_43:

      return v21;
    }

    goto LABEL_41;
  }

  if (v8 == 2)
  {
    goto LABEL_38;
  }

LABEL_33:
  if (v11)
  {
    goto LABEL_34;
  }

LABEL_41:

  if (v21)
  {
    goto LABEL_42;
  }

  return v13;
}

void sub_25AFA9270(char a1, char a2, char a3)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (a3 == 2)
  {
    swift_getKeyPath();
    *&v57 = v8;
    sub_25AFB1B30(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004234();

    v9 = *(v8 + 74);
    swift_getKeyPath();
    *&v57 = v8;
    sub_25B004234();

    v10 = *(v8 + 73);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = sub_25AFB777C(a2, a3);
  swift_getKeyPath();
  *&v57 = v3;
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  v12 = *(v3 + 136);
  v13 = *(v3 + 168);
  v65 = *(v3 + 152);
  v66 = v13;
  v67 = *(v3 + 184);
  v14 = *(v3 + 72);
  v15 = *(v3 + 104);
  v61 = *(v3 + 88);
  v62 = v15;
  v63 = *(v3 + 120);
  v64 = v12;
  v16 = *(v3 + 40);
  v57 = *(v3 + 24);
  v58 = v16;
  v59 = *(v3 + 56);
  v60 = v14;
  swift_getKeyPath();
  v56 = v3;
  sub_25AF25FC4(&v57, &v45, &qword_27FA25B78);
  sub_25B004234();

  v17 = *(v3 + 200);
  if (qword_27FA237D0 != -1)
  {
    swift_once();
  }

  v18 = qword_27FA30C00;
  if (qword_27FA23780 != -1)
  {
    swift_once();
  }

  v19 = qword_27FA30B58;
  if (v11)
  {
    if (a1)
    {
      v53 = v65;
      v54 = v66;
      v55 = v67;
      v49 = v61;
      v50 = v62;
      v51 = v63;
      v52 = v64;
      v45 = v57;
      v46 = v58;
      v47 = v59;
      v48 = v60;
      if (sub_25AFB2C70(&v45) == 1 || (v20 = v54) == 0)
      {
        v20 = v18;
      }

      goto LABEL_22;
    }

    if ((v9 & 1) == 0)
    {
      v26 = qword_27FA30B58;
      v20 = v19;
      goto LABEL_33;
    }

    if (v10)
    {
      v53 = v65;
      v54 = v66;
      v55 = v67;
      v49 = v61;
      v50 = v62;
      v51 = v63;
      v52 = v64;
      v45 = v57;
      v46 = v58;
      v47 = v59;
      v48 = v60;
      if (sub_25AFB2C70(&v45) != 1)
      {
        v24 = *(&v48 + 1);
        v25 = v19;
LABEL_32:
        v20 = v24;

        goto LABEL_33;
      }

LABEL_29:
      v27 = qword_27FA23788;
      v28 = v19;
      if (v27 != -1)
      {
        swift_once();
      }

      v24 = qword_27FA30B60;
      goto LABEL_32;
    }

    v53 = v65;
    v54 = v66;
    v55 = v67;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v48 = v60;
    if (sub_25AFB2C70(&v45) == 1)
    {
      goto LABEL_29;
    }

    v20 = v50;
    if (!v50)
    {
      v24 = *(&v60 + 1);
      v44 = v19;
      goto LABEL_32;
    }
  }

  else
  {
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v48 = v60;
    v21 = sub_25AFB2C70(&v45);
    if (v55)
    {
      v22 = v21 == 1;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v20 = v19;
    }

    else
    {
      v20 = v55;
    }
  }

LABEL_22:
  v23 = v20;
LABEL_33:
  v53 = v65;
  v54 = v66;
  v55 = v67;
  v49 = v61;
  v50 = v62;
  v51 = v63;
  v52 = v64;
  v45 = v57;
  v46 = v58;
  v47 = v59;
  v48 = v60;
  if (sub_25AFB2C70(&v45) != 1)
  {
    v29 = v48 >> 6;
    if (v29 == 3 || v29 == 2 && ((*(&v45 + 1) & 0x2000000000000000) != 0 ? (v30 = HIBYTE(*(&v45 + 1)) & 0xFLL) : (v30 = v45 & 0xFFFFFFFFFFFFLL), v30))
    {
      v31 = 112;
      if (v9)
      {
        v31 = 64;
      }

      v32 = *(&v57 + v31);
      if (v32)
      {
        v33 = *(&v57 + v31);
        if ((a1 & 1) == 0)
        {
LABEL_52:
          v37 = v32;
          v34 = v33;
          goto LABEL_53;
        }
      }

      else
      {
        if (qword_27FA237C8 != -1)
        {
          swift_once();
        }

        v33 = qword_27FA30BF8;
        if ((a1 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      v35 = v32;

      v32 = v66;
      if (v66)
      {
        v33 = v66;
      }

      else
      {
        v36 = v18;
        v33 = v18;
      }

      goto LABEL_52;
    }
  }

  v34 = 0;
  v33 = v20;
LABEL_53:
  v38 = v33;
  if (qword_27FA237C8 != -1)
  {
    swift_once();
  }

  v39 = qword_27FA30BF8;
  sub_25AFB4CD8();
  v40 = v39;
  v41 = v33;
  v42 = sub_25B005DE4();

  if (v42)
  {
    if (v17)
    {
      v43 = [objc_opt_self() systemWhiteColor];

      v41 = v43;
    }

    else
    {

      v41 = 0;
    }
  }

  else
  {
  }

  sub_25AF2602C(&v57, &qword_27FA25B78);
}

uint64_t sub_25AFA98F8()
{
  swift_getKeyPath();
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  return *(v0 + 202);
}

double sub_25AFA9998()
{
  xmmword_27FA30B70 = xmmword_25B0106A0;
  xmmword_27FA30B80 = xmmword_25B0106B0;
  xmmword_27FA30B90 = xmmword_25B0106C0;
  xmmword_27FA30BA0 = xmmword_25B0106D0;
  result = 0.0;
  xmmword_27FA30BB0 = xmmword_25B0106E0;
  return result;
}

uint64_t sub_25AFA99D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B28);
  MEMORY[0x28223BE20](v110);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v111 = &v101 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B30);
  MEMORY[0x28223BE20](v109);
  v112 = &v101 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B38);
  MEMORY[0x28223BE20](v107);
  v108 = &v101 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B40);
  MEMORY[0x28223BE20](v106);
  v117 = &v101 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B48);
  MEMORY[0x28223BE20](v105);
  v115 = &v101 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B50);
  MEMORY[0x28223BE20](v102);
  v103 = &v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B58);
  MEMORY[0x28223BE20](v13);
  v15 = &v101 - v14;
  v16 = sub_25B005564();
  MEMORY[0x28223BE20](v16 - 8);
  v123 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v2;
  v119 = *(v2 + 8);
  v120 = v18;
  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  v21 = *(v2 + 32);
  v124 = *(v2 + 33);
  LODWORD(v118) = *(v2 + 34);
  v114 = *(v2 + 40);
  v113 = *(v2 + 48);
  v121 = a1;
  if ((sub_25B004DD4() & 1) != 0 && (LOBYTE(v125) = v114, v126 = v113, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B68), sub_25B005494(), v130 != 1))
  {
    v122 = 1;
    v22 = 0.97;
  }

  else
  {
    v122 = 0;
    v22 = 1.0;
  }

  v23 = *MEMORY[0x277CE0118];
  v24 = sub_25B004BF4();
  v25 = v123;
  (*(*(v24 - 8) + 104))(v123, v23, v24);
  sub_25B0057D4();
  v27 = v26;
  v29 = v28;
  result = sub_25AFB1C3C(v25, v15, MEMORY[0x277CE1260]);
  v31 = &v15[*(v13 + 36)];
  *v31 = v22;
  v31[1] = v22;
  v32 = &v15[*(v13 + 40)];
  *v32 = v27;
  *(v32 + 1) = v29;
  v33 = qword_27FA30B10;
  v116 = v15;
  if (v21 > 0xFD)
  {
    if (qword_27FA30B10)
    {
      v34 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

      v35 = v119;
      v36 = v120;
      v37 = v124;
      goto LABEL_10;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!qword_27FA30B10)
  {
    goto LABEL_32;
  }

  v35 = v119;
  v36 = v120;
  v125 = v120;
  v126 = v119;
  v127 = v19;
  v128 = v20;
  v129 = v21;
  sub_25AF1D7EC(v120, v119, v19, v20, v21);
  sub_25AF1D7EC(v36, v35, v19, v20, v21);
  v38 = v33;
  v37 = v124;
  v34 = sub_25AF730A0(&v125, v124);

  sub_25AF231D0(v36, v35, v19, v20, v21);
LABEL_10:
  v39 = v19;
  v40 = v110;
  sub_25AFB1C3C(v123, &v5[*(v110 + 44)], MEMORY[0x277CE1260]);
  sub_25B004DC4();
  *v5 = v36;
  *(v5 + 1) = v35;
  *(v5 + 2) = v39;
  *(v5 + 3) = v20;
  v5[32] = v21;
  v5[33] = v37;
  *(v5 + 5) = v34;
  v5[*(v40 + 48)] = v122;
  v41 = v111;
  result = sub_25AF25B0C(v5, v111, &qword_27FA25B28);
  v42 = qword_27FA30B10;
  if (v21 > 0xFD)
  {
    v43 = v112;
    if (qword_27FA30B10)
    {
      v44 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

      v45 = v39;
      v46 = v119;
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v43 = v112;
  if (!qword_27FA30B10)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v125 = v36;
  v126 = v119;
  v45 = v39;
  v46 = v119;
  v127 = v39;
  v128 = v20;
  v129 = v21;
  sub_25AF1D7EC(v36, v119, v39, v20, v21);
  v47 = v42;
  v44 = sub_25AF730A0(&v125, v124);

  sub_25AF231D0(v36, v46, v45, v20, v21);
LABEL_15:
  KeyPath = swift_getKeyPath();
  result = sub_25AF25B0C(v41, v43, &qword_27FA25B28);
  v49 = v43 + *(v109 + 36);
  *v49 = v44;
  *(v49 + 8) = v118;
  *(v49 + 16) = KeyPath;
  *(v49 + 24) = 0;
  v50 = qword_27FA30B10;
  if (v21 > 0xFD)
  {
    if (qword_27FA30B10)
    {
      v51 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

      v52 = v124;
      goto LABEL_20;
    }

    goto LABEL_35;
  }

  if (!qword_27FA30B10)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v125 = v36;
  v126 = v46;
  v127 = v45;
  v128 = v20;
  v129 = v21;
  sub_25AF1D7EC(v36, v46, v45, v20, v21);
  v53 = v50;
  v52 = v124;
  v51 = sub_25AF730A0(&v125, v124);

  sub_25AF231D0(v36, v46, v45, v20, v21);
LABEL_20:
  v54 = swift_getKeyPath();
  v55 = v108;
  sub_25AF25B0C(v43, v108, &qword_27FA25B30);
  v56 = v55 + *(v107 + 36);
  *v56 = v51;
  *(v56 + 8) = v118;
  *(v56 + 16) = v54;
  *(v56 + 24) = 0;
  v57 = v117;
  v58 = v117 + *(v106 + 36);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B60);
  sub_25AF25FC4(v116, v58 + v59[10], &qword_27FA25B58);
  *v58 = v36;
  *(v58 + 8) = v46;
  *(v58 + 16) = v45;
  *(v58 + 24) = v20;
  v119 = v20;
  *(v58 + 32) = v21;
  *(v58 + 33) = v52;
  *(v58 + v59[11]) = v122;
  v60 = v58 + v59[12];
  *v60 = swift_getKeyPath();
  *(v60 + 8) = 0;
  v61 = v58 + v59[13];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  result = sub_25AF25B0C(v55, v57, &qword_27FA25B38);
  v62 = qword_27FA30B10;
  if (v21 > 0xFD)
  {
    if (qword_27FA30B10)
    {
      v63 = v21;
      v64 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

      v66 = v119;
      v65 = v120;
      v67 = v45;
      v68 = v63;
      goto LABEL_25;
    }

    goto LABEL_37;
  }

  if (!qword_27FA30B10)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v69 = v21;
  v66 = v119;
  v65 = v120;
  v125 = v120;
  v126 = v46;
  v70 = v45;
  v127 = v45;
  v128 = v119;
  v68 = v69;
  v129 = v69;
  sub_25AF1D7EC(v120, v46, v70, v119, v69);
  sub_25AF1D7EC(v65, v46, v70, v66, v68);
  v71 = v62;
  v64 = sub_25AF730A0(&v125, v124);

  v67 = v70;
  sub_25AF231D0(v65, v46, v70, v66, v68);
LABEL_25:
  v72 = *(v64 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);

  v73 = v115;
  v74 = v115 + *(v105 + 36);
  v75 = type metadata accessor for VisualsModelPropertiesEffect(0);
  v76 = v75[5];
  v77 = sub_25B004DE4();
  v78 = *(v77 - 8);
  v79 = *(v78 + 16);
  v111 = v77;
  v118 = v79;
  v112 = (v78 + 16);
  (v79)(v74 + v76, v121);
  *v74 = v65;
  *(v74 + 8) = v46;
  *(v74 + 16) = v67;
  *(v74 + 24) = v66;
  *(v74 + 32) = v68;
  *(v74 + v75[6]) = v72;
  v80 = v75[7];
  *(v74 + v80) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242D0);
  swift_storeEnumTagMultiPayload();
  result = sub_25AF25B0C(v117, v73, &qword_27FA25B40);
  v81 = qword_27FA30B10;
  if (v68 > 0xFD)
  {
    if (qword_27FA30B10)
    {
      v82 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

LABEL_30:
      v87 = v104;
      v88 = v103;
      v89 = v102;
      v90 = v118;
      v91 = v111;
      v92 = *(v82 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);

      v130 = v114;
      v131 = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B68);
      sub_25B0054B4();
      v93 = v125;
      v94 = v126;
      v95 = v127;
      v96 = v88 + *(v89 + 36);
      v90(v96, v121, v91);
      v97 = type metadata accessor for PressedStateTrackingEffect(0);
      *(v96 + *(v97 + 20)) = v92;
      v98 = v96 + *(v97 + 24);
      *v98 = v93;
      *(v98 + 8) = v94;
      *(v98 + 16) = v95;
      sub_25AF25B0C(v115, v88, &qword_27FA25B48);
      v99 = sub_25B005714();
      sub_25AF2602C(v116, &qword_27FA25B58);
      sub_25AFB2F80(v123, MEMORY[0x277CE1260]);
      sub_25AF25B0C(v88, v87, &qword_27FA25B50);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25B70);
      v100 = v87 + *(result + 36);
      *v100 = v99;
      *(v100 + 8) = v122;
      return result;
    }

    goto LABEL_39;
  }

  if (qword_27FA30B10)
  {
    v83 = v68;
    v85 = v119;
    v84 = v120;
    v125 = v120;
    v126 = v46;
    v127 = v67;
    v128 = v119;
    v129 = v83;
    sub_25AF1D7EC(v120, v46, v67, v119, v83);
    sub_25AF1D7EC(v84, v46, v67, v85, v83);
    v86 = v81;
    v82 = sub_25AF730A0(&v125, v124);

    sub_25AF231D0(v84, v46, v67, v85, v83);
    goto LABEL_30;
  }

LABEL_40:
  __break(1u);
  return result;
}

__n128 sub_25AFAA660@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v14 = v1;
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v22 = *(v1 + 152);
  v23 = v4;
  v24 = *(v1 + 184);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v18 = *(v1 + 88);
  v19 = v6;
  v20 = *(v1 + 120);
  v21 = v3;
  v7 = *(v1 + 40);
  v14 = *(v1 + 24);
  v15 = v7;
  v16 = *(v1 + 56);
  v17 = v5;
  sub_25AF25FC4(&v14, &v13, &qword_27FA25B78);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25AFAA798@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v20[0] = v3;
  sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
  sub_25B004234();

  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 56);
  v7 = *(v3 + 72);
  v8 = *(v3 + 104);
  v9 = *(v3 + 120);
  v20[4] = *(v3 + 88);
  v20[5] = v8;
  v20[2] = v6;
  v20[3] = v7;
  v10 = *(v3 + 136);
  v11 = *(v3 + 152);
  v12 = *(v3 + 184);
  v20[9] = *(v3 + 168);
  v20[10] = v12;
  v20[7] = v10;
  v20[8] = v11;
  v20[6] = v9;
  v20[0] = v4;
  v20[1] = v5;
  v13 = *(v3 + 136);
  v14 = *(v3 + 168);
  a2[8] = *(v3 + 152);
  a2[9] = v14;
  a2[10] = *(v3 + 184);
  v15 = *(v3 + 72);
  v16 = *(v3 + 104);
  a2[4] = *(v3 + 88);
  a2[5] = v16;
  a2[6] = *(v3 + 120);
  a2[7] = v13;
  v17 = *(v3 + 40);
  *a2 = *(v3 + 24);
  a2[1] = v17;
  a2[2] = *(v3 + 56);
  a2[3] = v15;
  return sub_25AF25FC4(v20, &v19, &qword_27FA25B78);
}

uint64_t sub_25AFAA8E4(__int128 *a1)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v22[8] = *(v1 + 152);
  v22[9] = v4;
  v22[10] = *(v1 + 184);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v22[4] = *(v1 + 88);
  v22[5] = v6;
  v22[6] = *(v1 + 120);
  v22[7] = v3;
  v7 = *(v1 + 40);
  v22[0] = *(v1 + 24);
  v22[1] = v7;
  v22[2] = *(v1 + 56);
  v22[3] = v5;
  sub_25AF25FC4(v22, v21, &qword_27FA25B78);
  v8 = sub_25AFB274C(v22, a1);
  sub_25AF2602C(v22, &qword_27FA25B78);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v21[0] = v1;
    sub_25AFB1B30(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
    sub_25B004224();
    sub_25AF2602C(a1, &qword_27FA25B78);
  }

  else
  {
    v11 = *(v1 + 136);
    v12 = *(v1 + 168);
    v21[8] = *(v1 + 152);
    v21[9] = v12;
    v21[10] = *(v1 + 184);
    v13 = *(v1 + 72);
    v14 = *(v1 + 104);
    v21[4] = *(v1 + 88);
    v21[5] = v14;
    v21[6] = *(v1 + 120);
    v21[7] = v11;
    v15 = *(v1 + 40);
    v21[0] = *(v1 + 24);
    v21[1] = v15;
    v21[2] = *(v1 + 56);
    v21[3] = v13;
    v16 = a1[6];
    *(v1 + 136) = a1[7];
    v17 = a1[9];
    *(v1 + 152) = a1[8];
    *(v1 + 168) = v17;
    *(v1 + 184) = a1[10];
    v18 = a1[2];
    *(v1 + 72) = a1[3];
    v19 = a1[5];
    *(v1 + 88) = a1[4];
    *(v1 + 104) = v19;
    *(v1 + 120) = v16;
    v20 = a1[1];
    *(v1 + 24) = *a1;
    *(v1 + 40) = v20;
    *(v1 + 56) = v18;
    return sub_25AF2602C(v21, &qword_27FA25B78);
  }
}