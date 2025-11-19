uint64_t sub_21EA63268(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC60);
  v35 = a2;
  result = sub_21EAA94D0();
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
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v36 = *(v21 + 4 * v20);
      if ((v35 & 1) == 0)
      {
        sub_21EA4E7C8(v23, v24, v25);
      }

      sub_21EAA95B0();
      if (v25)
      {
        MEMORY[0x223D67380](1);
        sub_21EAA8E40();
      }

      else
      {
        MEMORY[0x223D67380](0);
        MEMORY[0x223D67380](v23);
      }

      result = sub_21EAA95D0();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 4 * v15) = v36;
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
        goto LABEL_38;
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
      goto LABEL_36;
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

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_21EA63550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCF30);
  v34 = a2;
  result = sub_21EAA94D0();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21EAA95B0();
      sub_21EAA8E40();
      result = sub_21EAA95D0();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_21EA637F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC88);
  v34 = a2;
  result = sub_21EAA94D0();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21EAA95B0();
      sub_21EAA8E40();
      result = sub_21EAA95D0();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_21EA63A90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC90);
  v35 = a2;
  result = sub_21EAA94D0();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_21EAA95B0();
      sub_21EAA8E40();
      result = sub_21EAA95D0();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21EA63D34(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_21EAA94D0();
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

      sub_21EAA95B0();
      sub_21EAA8E40();
      result = sub_21EAA95D0();
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

uint64_t sub_21EA63FD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF20);
  v33 = a2;
  result = sub_21EAA94D0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_21EA51D48(v24, v34);
      }

      else
      {
        sub_21E9FE6EC(v24, v34);
      }

      sub_21EAA95B0();
      sub_21EAA8E40();
      result = sub_21EAA95D0();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_21EA51D48(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21EA6428C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF28);
  v36 = a2;
  result = sub_21EAA94D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_21EAA8E00();
      sub_21EAA95B0();
      sub_21EAA8E40();
      v25 = sub_21EAA95D0();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21EA64550(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21EAA9350() + 1) & ~v5;
    do
    {
      sub_21EAA95B0();

      sub_21EAA8E40();
      v9 = sub_21EAA95D0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21EA64700(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21EAA9350() + 1) & ~v5;
    do
    {
      sub_21EAA95B0();

      sub_21EAA8E40();
      v9 = sub_21EAA95D0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21EA648B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21EAA9350() + 1) & ~v5;
    do
    {
      sub_21EAA95B0();

      sub_21EAA8E40();
      v10 = sub_21EAA95D0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_21EA64A60(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21EAA9350() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_21EAA8E00();
      sub_21EAA95B0();
      v10 = v9;
      sub_21EAA8E40();
      v11 = sub_21EAA95D0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void *sub_21EA64C28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC20);
  v2 = *v0;
  v3 = sub_21EAA94C0();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_21EA64D90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC60);
  v2 = *v0;
  v3 = sub_21EAA94C0();
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
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(*(v4 + 56) + 4 * v17) = v18;
        result = sub_21EA4E7C8(v19, v20, v21);
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

void *sub_21EA64F04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCF30);
  v2 = *v0;
  v3 = sub_21EAA94C0();
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

void *sub_21EA6506C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC88);
  v2 = *v0;
  v3 = sub_21EAA94C0();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

id sub_21EA651D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC90);
  v2 = *v0;
  v3 = sub_21EAA94C0();
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

        result = v20;
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

void *sub_21EA65340(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_21EAA94C0();
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

void *sub_21EA654A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF20);
  v2 = *v0;
  v3 = sub_21EAA94C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_21E9FE6EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21EA51D48(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
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

id sub_21EA65644()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF28);
  v2 = *v0;
  v3 = sub_21EAA94C0();
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

unint64_t sub_21EA657A4(int a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_21EA49FAC(a2, a3, a4 & 1);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21EA63268(v18, a5 & 1);
      result = sub_21EA49FAC(a2, a3, a4 & 1);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_21EAA9560();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_21EA64D90();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 4 * result) = a1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v24 = v23[6] + 24 * result;
  *v24 = a2;
  *(v24 + 8) = a3;
  *(v24 + 16) = a4 & 1;
  *(v23[7] + 4 * result) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v26;

  return sub_21EA4E7C8(a2, a3, a4 & 1);
}

unint64_t sub_21EA65924(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21EA49DF4(a2, a3);
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
      sub_21EA62FC8(v16, a4 & 1);
      result = sub_21EA49DF4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_21EAA9560();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_21EA64C28();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_21EA65A88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21EA49DF4(a2, a3);
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
      sub_21EA63550(v16, a4 & 1);
      result = sub_21EA49DF4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_21EAA9560();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_21EA64F04();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_21EA65BEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_21EA49DF4(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_21EA63D34(v18, a4 & 1, a5);
      v13 = sub_21EA49DF4(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_21EAA9560();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21EA65340(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

void sub_21EA65D8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21EA49DF4(a2, a3);
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
      sub_21EA63A90(v16, a4 & 1);
      v11 = sub_21EA49DF4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_21EAA9560();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_21EA651D4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_21EA65F04(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21EA49DF4(a2, a3);
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
      sub_21EA637F0(v16, a4 & 1);
      result = sub_21EA49DF4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_21EAA9560();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_21EA6506C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

_OWORD *sub_21EA66070(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21EA49DF4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21EA654A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21EA63FD4(v16, a4 & 1);
    v11 = sub_21EA49DF4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21EAA9560();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_21EA51D48(a1, v22);
  }

  else
  {
    sub_21EA66328(v11, a2, a3, a1, v21);
  }
}

void sub_21EA661C0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21EA4A554(a2);
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
      sub_21EA6428C(v13, a3 & 1);
      v8 = sub_21EA4A554(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for SBHIconGridSizeClass(0);
        sub_21EAA9560();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_21EA65644();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

_OWORD *sub_21EA66328(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21EA51D48(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_21EA66394(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_21EA6702C(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_21EA68A58(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x223D68580](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_21EA66534(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21EA57E98(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21EA66660(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_21EAA95B0();

    sub_21EAA8E40();
    v23 = sub_21EAA95D0();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_21EAA9530() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_21EA66E08(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_21EAA95B0();

            sub_21EAA8E40();
            v41 = sub_21EAA95D0();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_21EAA9530() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_21EA66BD0(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x223D68580](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_21E9FBFD4();
    return v5;
  }

  result = MEMORY[0x223D68580](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21EA66BD0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_21EA66E08(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_21EAA95B0();

        sub_21EAA8E40();
        v19 = sub_21EAA95D0();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_21EAA9530() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_21EA66E08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCD40);
  result = sub_21EAA9420();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21EAA95B0();

    sub_21EAA8E40();
    result = sub_21EAA95D0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21EA6702C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v36 = a4 + 56;

  v31 = 0;
  v32 = v5;
  v12 = 0;
  v34 = v10;
  v35 = v6;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    sub_21EAA95B0();

    sub_21EAA8E40();
    v19 = sub_21EAA95D0();
    v20 = -1 << *(v4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) != 0)
    {
      v24 = v4;
      v25 = (*(v4 + 48) + 16 * v21);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v20;
        while ((sub_21EAA9530() & 1) == 0)
        {
          v21 = (v21 + 1) & v27;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
          {
            v4 = v24;
            v5 = v32;
            goto LABEL_23;
          }

          v28 = (*(v24 + 48) + 16 * v21);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v13 = a1[v22];
      a1[v22] = v13 | v23;
      v4 = v24;
      v5 = v32;
      v10 = v34;
      v6 = v35;
      if ((v13 & v23) == 0 && __OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_27:

        return sub_21EA66E08(a1, a2, v31, v4);
      }
    }

    else
    {
LABEL_23:

      v10 = v34;
      v6 = v35;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21EA6726C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21EAA9380();
  }

  return sub_21EAA9460();
}

uint64_t sub_21EA672E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D66D40](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21EA558A8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_21EA6737C(uint64_t a1, unint64_t a2)
{
  v13[0] = a1;
  v13[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF48);
  swift_dynamicCast();
  v4 = [objc_opt_self() storeForApplicationIdentifier_];
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    if (qword_28125B8A0 != -1)
    {
      swift_once();
    }

    v7 = sub_21EAA8790();
    __swift_project_value_buffer(v7, qword_28125B8A8);

    v8 = sub_21EAA8760();
    v9 = sub_21EAA8FE0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_21E9FE748(a1, a2, v13);
      _os_log_impl(&dword_21E9F5000, v8, v9, "Failed to load data store for bundle identifier:%s.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x223D68580](v11, -1, -1);
      MEMORY[0x223D68580](v10, -1, -1);
    }

    swift_unknownObjectRelease();
    return 0;
  }
}

void sub_21EA67554(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v10 = sub_21EA6737C(a2, a3);
  if (v10)
  {
    v11 = v10;
    aBlock[0] = 0;
    v12 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:aBlock];
    v13 = aBlock[0];
    if (!v12)
    {
      v30 = v13;
      v31 = sub_21EAA83C0();

      swift_willThrow();
      if (qword_28125B8A0 != -1)
      {
        swift_once();
      }

      v32 = sub_21EAA8790();
      __swift_project_value_buffer(v32, qword_28125B8A8);

      v33 = sub_21EAA8760();
      v34 = sub_21EAA8FE0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136315394;
        *(v35 + 4) = sub_21E9FE748(a2, a3, aBlock);
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_21E9FE748(a4, a5, aBlock);
        _os_log_impl(&dword_21E9F5000, v33, v34, "Save intent to data store failed because cannot archive intent for bundle identifier:%s data source identifier:%s.", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D68580](v36, -1, -1);
        MEMORY[0x223D68580](v35, -1, -1);
      }

      goto LABEL_31;
    }

    v14 = sub_21EAA8480();
    v16 = v15;

    v17 = sub_21EAA8470();
    v18 = sub_21EAA8DC0();
    [v11 setObject:v17 forKey:v18];

    if (qword_28125B8A0 != -1)
    {
      swift_once();
    }

    v19 = sub_21EAA8790();
    __swift_project_value_buffer(v19, qword_28125B8A8);

    sub_21EA68A8C(v14, v16);
    v20 = sub_21EAA8760();
    v21 = sub_21EAA9000();

    if (!os_log_type_enabled(v20, v21))
    {
      sub_21EA68A04(v14, v16);
      sub_21EA68A04(v14, v16);

LABEL_30:
      v40 = objc_opt_self();
      aBlock[4] = sub_21EA62770;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA87FF0;
      aBlock[3] = &block_descriptor_24;
      v41 = _Block_copy(aBlock);
      [v40 synchronizeWithCompletion_];
      _Block_release(v41);
LABEL_31:

      return;
    }

    v42 = a4;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 134218498;
    v24 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v24 != 2)
      {
        v25 = 0;
        goto LABEL_29;
      }

      v38 = *(v14 + 16);
      v37 = *(v14 + 24);
      v39 = __OFSUB__(v37, v38);
      v25 = v37 - v38;
      if (!v39)
      {
        goto LABEL_29;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v25 = BYTE6(v16);
LABEL_29:
      *(v22 + 4) = v25;
      sub_21EA68A04(v14, v16);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_21E9FE748(a2, a3, aBlock);
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_21E9FE748(v42, a5, aBlock);
      _os_log_impl(&dword_21E9F5000, v20, v21, "Save intent to data store succeeded with intent %ldbytes for bundle identifier:%s data source identifier:%s.", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D68580](v23, -1, -1);
      MEMORY[0x223D68580](v22, -1, -1);
      sub_21EA68A04(v14, v16);

      goto LABEL_30;
    }

    LODWORD(v25) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
      __break(1u);
    }

    v25 = v25;
    goto LABEL_29;
  }

  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v26 = sub_21EAA8790();
  __swift_project_value_buffer(v26, qword_28125B8A8);

  oslog = sub_21EAA8760();
  v27 = sub_21EAA8FE0();

  if (os_log_type_enabled(oslog, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_21E9FE748(a2, a3, aBlock);
    _os_log_impl(&dword_21E9F5000, oslog, v27, "Save intent to data store failed because no data store found for bundle identifier:%s.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223D68580](v29, -1, -1);
    MEMORY[0x223D68580](v28, -1, -1);
  }

  else
  {
  }
}

void sub_21EA67BCC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_21EA6737C(a1, a2);
  if (v8)
  {
    v9 = v8;
    if (a4)
    {
      v10 = sub_21EAA8DC0();
      [v9 removeObjectForKey_];

      if (qword_28125B8A0 != -1)
      {
        swift_once();
      }

      v11 = sub_21EAA8790();
      __swift_project_value_buffer(v11, qword_28125B8A8);

      v12 = sub_21EAA8760();
      v13 = sub_21EAA9000();

      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_16;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_21E9FE748(a1, a2, aBlock);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_21E9FE748(a3, a4, aBlock);
      _os_log_impl(&dword_21E9F5000, v12, v13, "Remove intent from data store succeeded with bundle identifier:%s data source identifier:%s.", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D68580](v15, -1, -1);
      v16 = v14;
    }

    else
    {
      [v8 removeAllObjects];
      if (qword_28125B8A0 != -1)
      {
        swift_once();
      }

      v21 = sub_21EAA8790();
      __swift_project_value_buffer(v21, qword_28125B8A8);

      v12 = sub_21EAA8760();
      v22 = sub_21EAA9000();

      if (!os_log_type_enabled(v12, v22))
      {
        goto LABEL_16;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_21E9FE748(a1, a2, aBlock);
      _os_log_impl(&dword_21E9F5000, v12, v22, "Remove all intents from data store succeeded with bundle identifier:%s.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x223D68580](v24, -1, -1);
      v16 = v23;
    }

    MEMORY[0x223D68580](v16, -1, -1);
LABEL_16:

    v25 = objc_opt_self();
    aBlock[4] = sub_21EA62770;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21EA87FF0;
    aBlock[3] = &block_descriptor_7;
    v26 = _Block_copy(aBlock);
    [v25 synchronizeWithCompletion_];
    _Block_release(v26);
    return;
  }

  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v17 = sub_21EAA8790();
  __swift_project_value_buffer(v17, qword_28125B8A8);

  oslog = sub_21EAA8760();
  v18 = sub_21EAA8FE0();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_21E9FE748(a1, a2, aBlock);
    _os_log_impl(&dword_21E9F5000, oslog, v18, "Remove intent from data store failed because no data store found for bundle identifier:%s.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x223D68580](v20, -1, -1);
    MEMORY[0x223D68580](v19, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21EA6808C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_21EA6737C(a1, a2);
  if (!v8)
  {
    if (qword_28125B8A0 != -1)
    {
      swift_once();
    }

    v12 = sub_21EAA8790();
    __swift_project_value_buffer(v12, qword_28125B8A8);

    v9 = sub_21EAA8760();
    v13 = sub_21EAA8FE0();

    if (os_log_type_enabled(v9, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v55[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_21E9FE748(a1, a2, v55);
      _os_log_impl(&dword_21E9F5000, v9, v13, "Fetch intent from data store failed because no data store found with bundle identifier:%s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x223D68580](v15, -1, -1);
      MEMORY[0x223D68580](v14, -1, -1);
    }

    goto LABEL_27;
  }

  v9 = v8;
  v10 = sub_21EAA8DC0();
  sub_21E9F8880(0, &unk_28125B738);
  v11 = [v9 safeObjectForKey:v10 ofType:swift_getObjCClassFromMetadata()];

  if (v11)
  {
    sub_21EAA9320();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55[0] = v53;
  v55[1] = v54;
  if (!*(&v54 + 1))
  {
    sub_21EA488A0(v55, &qword_27CEDCF40);
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    if (qword_28125B8A0 != -1)
    {
      swift_once();
    }

    v30 = sub_21EAA8790();
    __swift_project_value_buffer(v30, qword_28125B8A8);

    v31 = sub_21EAA8760();
    v32 = sub_21EAA9000();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v55[0] = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_21E9FE748(a1, a2, v55);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_21E9FE748(a3, a4, v55);
      _os_log_impl(&dword_21E9F5000, v31, v32, "Fetch intent from data store failed because no intent data found with bundle identifier:%s data source identifier:%s.", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D68580](v34, -1, -1);
      MEMORY[0x223D68580](v33, -1, -1);
    }

LABEL_27:
    return 0;
  }

  v51 = a3;
  v16 = v52;
  sub_21E9F8880(0, &unk_28125B7F8);
  sub_21E9F8880(0, &qword_28125B700);
  v17 = MEMORY[0x223D66220]();
  v19 = v18;
  log = sub_21EAA9080();
  sub_21EA68A04(v17, v19);
  if (log)
  {
    if (qword_28125B8A0 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v20 = sub_21EAA8790();
  __swift_project_value_buffer(v20, qword_28125B8A8);
  v21 = v52;

  v22 = sub_21EAA8760();
  v23 = sub_21EAA8FE0();

  if (!os_log_type_enabled(v22, v23))
  {

    return 0;
  }

  v48 = v23;
  log = v22;
  v24 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *&v55[0] = v47;
  *v24 = 134218498;
  v25 = sub_21EAA91B0();
  v16 = sub_21EAA91C0();
  v26 = sub_21EAA91B0();
  v27 = sub_21EAA91C0();
  if (v25 < v26 || v27 < v25)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v28 = sub_21EAA91B0();
  v29 = sub_21EAA91C0();
  if (v16 < v28 || v29 < v16)
  {
    goto LABEL_41;
  }

  if (!__OFSUB__(v16, v25))
  {
    *(v24 + 4) = &v16[-v25];

    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_21E9FE748(a1, a2, v55);
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_21E9FE748(v51, a4, v55);
    _os_log_impl(&dword_21E9F5000, v22, v48, "Fetch intent %ld bytes from data store failed because cannot unarchive data with bundle identifier:%s data source identifier:%s.", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D68580](v47, -1, -1);
    MEMORY[0x223D68580](v24, -1, -1);

    return 0;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  swift_once();
LABEL_32:
  v36 = sub_21EAA8790();
  __swift_project_value_buffer(v36, qword_28125B8A8);
  v37 = v16;

  v38 = sub_21EAA8760();
  v39 = sub_21EAA9000();

  if (!os_log_type_enabled(v38, v39))
  {

    return log;
  }

  v49 = v38;
  v40 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  *&v55[0] = v46;
  *v40 = 134218498;
  v41 = v37;
  v42 = sub_21EAA91B0();
  v43 = sub_21EAA91C0();
  v44 = sub_21EAA91B0();
  result = sub_21EAA91C0();
  if (v42 < v44 || result < v42)
  {
    __break(1u);
  }

  else
  {
    v45 = sub_21EAA91B0();
    result = sub_21EAA91C0();
    if (v43 >= v45 && result >= v43)
    {
      if (!__OFSUB__(v43, v42))
      {
        *(v40 + 4) = v43 - v42;

        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_21E9FE748(a1, a2, v55);
        *(v40 + 22) = 2080;
        *(v40 + 24) = sub_21E9FE748(v51, a4, v55);
        _os_log_impl(&dword_21E9F5000, v49, v39, "Fetch intent %ld bytes from data store succeeded with bundle identifier:%s data source identifier:%s.", v40, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D68580](v46, -1, -1);
        MEMORY[0x223D68580](v40, -1, -1);

        return log;
      }

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

id sub_21EA689CC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_21EA68A04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21EA68A58@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_21EA6702C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_21EA68A8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21EA68AE8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_21EA68BE0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *PagingViewController.__allocating_init(moduleInstanceManager:moduleSettingsManager:controlIntentStore:controlDescriptorProvider:controlExtensionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_21EA830FC(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

char *PagingViewController.init(moduleInstanceManager:moduleSettingsManager:controlIntentStore:controlDescriptorProvider:controlExtensionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_21EA830FC(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_21EA68CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21EAA8F20();
  *(v4 + 24) = sub_21EAA8F10();
  v6 = sub_21EAA8F00();

  return MEMORY[0x2822009F8](sub_21EA68D8C, v6, v5);
}

uint64_t sub_21EA68D8C()
{

  sub_21EA787B4(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21EA68DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21EA48990(a3, v25 - v10, &qword_27CEDD710);
  v12 = sub_21EAA8F40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21EA488A0(v11, &qword_27CEDD710);
  }

  else
  {
    sub_21EAA8F30();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21EAA8F00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21EAA8E20() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21EA488A0(a3, &qword_27CEDD710);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21EA488A0(a3, &qword_27CEDD710);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id PagingViewController.__deallocating_deinit()
{
  v1 = v0;
  sub_21EA71B0C();
  v3 = v2;
  [v2 removeKeyObserver_];

  v4 = OBJC_IVAR___CCUIPagingViewController_controlHost;
  v5 = *&v1[OBJC_IVAR___CCUIPagingViewController_controlHost];
  if (v5)
  {
    v6 = v5;
    sub_21EA764B0();
    [v6 invalidate];
    v7 = *&v1[v4];
    *&v1[v4] = 0;

    if (qword_28125B8E8 != -1)
    {
      swift_once();
    }

    v8 = sub_21EAA8790();
    __swift_project_value_buffer(v8, qword_28125B8F0);
    v9 = sub_21EAA8760();
    v10 = sub_21EAA9000();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21E9F5000, v9, v10, "invalidating control host", v11, 2u);
      MEMORY[0x223D68580](v11, -1, -1);
    }
  }

  v12 = OBJC_IVAR___CCUIPagingViewController_appIntentMetadataChangedObserverToken;
  v13 = *&v1[OBJC_IVAR___CCUIPagingViewController_appIntentMetadataChangedObserverToken];
  if (v13)
  {
    sub_21E9F8880(0, &qword_27CEDCFA0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    swift_unknownObjectRetain();
    v15 = [ObjCClassFromMetadata defaultCenter];
    [v15 removeObserver_];

    swift_unknownObjectRelease();
    *&v1[v12] = 0;
    swift_unknownObjectRelease();
  }

  result = *&v1[OBJC_IVAR___CCUIPagingViewController_apSubjectMonitorSubscription];
  if (result)
  {
    [result invalidate];
    v17.receiver = v1;
    v17.super_class = type metadata accessor for PagingViewController();
    return objc_msgSendSuper2(&v17, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21EA6974C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_21EA69810();
  return swift_unknownObjectRelease();
}

void sub_21EA697B0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_21EA69810();
}

void sub_21EA69810()
{
  sub_21EA77DD4();
  sub_21EA78070();
  v1 = MKBGetDeviceLockState();
  if (v1 == 3 || !v1)
  {
    sub_21EA7A4B0();
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;
    [v2 setUserInteractionEnabled_];
  }

  v4 = sub_21EAA8DC0();
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v0 selector:sel_buddyCompleted name:v4 object:0];
}

void (*sub_21EA69908(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___CCUIPagingViewController_pagingDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21EA699A0;
}

void sub_21EA699A0(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_21EA69810();
  }

  free(v3);
}

id sub_21EA69C38()
{
  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    v2 = [result folderView];
    v3 = *&v2[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA69D24()
{
  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    v2 = [result currentIconListView];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA69D94()
{
  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR___CCUIPagingViewController_addButton];
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA69E38()
{
  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {

    return [result iconListViewCount];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21EA69E88()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v1)
  {
    v2 = [v1 folderView];
    sub_21E9FCCE8();
  }

  else
  {
    __break(1u);
  }
}

void sub_21EA69FB0()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v1)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_21EA6A038(id *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  [*a1 loadViewIfNeeded];
  v4 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v4)
  {
    v5 = [v4 folderView];
    v6 = *&v5[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 16];
    v7 = *&v5[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets];

    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }
}

void (*sub_21EA6A0C0(uint64_t *a1))(float64_t **a1)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  [v2 loadViewIfNeeded];
  result = *&v2[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    v7 = [result folderView];
    v8 = *&v7[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 16];
    v9 = *&v7[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets];

    *v5 = v9;
    v5[1] = v8;
    return sub_21EA6A198;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21EA6A198(float64_t **a1)
{
  v1 = *a1;
  sub_21E9FD210(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

void sub_21EA6A278()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v1)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_21EA6A2EC(id *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  [*a1 loadViewIfNeeded];
  v4 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v4)
  {
    v5 = [v4 folderView];
    v6 = *&v5[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset];

    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_21EA6A370(double *a1, id *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  [*a2 loadViewIfNeeded];
  v5 = *&v4[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v5)
  {
    v6 = [v5 folderView];
    sub_21EA8A91C(v2, v3);
  }

  else
  {
    __break(1u);
  }
}

void (*sub_21EA6A404(uint64_t a1))(double *a1, char a2)
{
  *(a1 + 16) = v1;
  [v1 loadViewIfNeeded];
  v3 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  *(a1 + 24) = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  result = *&v1[v3];
  if (result)
  {
    v5 = [result folderView];
    v6 = *&v5[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset];

    *a1 = v6;
    return sub_21EA6A4A8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21EA6A4A8(double *a1, char a2)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *a1;
  v6 = a1[1];
  [v3 loadViewIfNeeded];
  v7 = *&v3[v4];
  if (a2)
  {
    if (v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!v7)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v8 = [v7 folderView];
  sub_21EA8A91C(v5, v6);
}

id sub_21EA6A558()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void sub_21EA6A65C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_21EA71B0C();
    v5 = v4;
    [v4 longPressToEditDuration];
    v7 = v6;

    [v3 setMinimumPressDuration_];
  }
}

void (*sub_21EA6A704(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR___CCUIPagingViewController_longPressToEditGestureRecognizer;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21EA6A79C;
}

void sub_21EA6A79C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_21EA71B0C();
      v8 = v7;
      [v7 longPressToEditDuration];
      v10 = v9;

      [v6 setMinimumPressDuration_];
    }
  }

  free(v3);
}

uint64_t sub_21EA6A8A0()
{
  v1 = [*&v0[OBJC_IVAR___CCUIPagingViewController_expandedViewControllers] allObjects];
  sub_21E9F8880(0, &qword_28125B748);
  v2 = sub_21EAA8EC0();

  if (v2 >> 62)
  {
    v3 = sub_21EAA9380();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 > 0 || ([v0 isEditing] & 1) != 0)
  {
    return 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    return 1;
  }

  result = [v0 presentedViewController];
  if (result)
  {
    v6 = result;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();

    if (v7)
    {
      result = [v0 presentedViewController];
      if (result)
      {
        v8 = result;
        v9 = [result isBeingDismissed];

        return v9 ^ 1;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_21EA6AA7C()
{
  result = [v0 loadViewIfNeeded];
  v2 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21EA5A364();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA6AAD4(void *a1, double a2, double a3)
{
  result = [v3 loadViewIfNeeded];
  v8 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21EA5ABCC(a1, a2, a3);

    return (v10 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA6ABE0()
{
  result = [v0 loadViewIfNeeded];
  v2 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    v3 = swift_allocObject();
    *(v3 + 16) = &v9;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_21EA5BBFC;
    *(v4 + 24) = v3;
    aBlock[4] = sub_21E9FEC00;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E9FEC38;
    aBlock[3] = &block_descriptor_8;
    v5 = _Block_copy(aBlock);
    v6 = v2;

    [v6 enumerateDisplayedIconViewsUsingBlock_];
    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if ((v5 & 1) == 0)
    {
      v7 = v9;

      return v7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21EA6AE28(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  result = [v4 loadViewIfNeeded];
  v6 = *&v4[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v6)
  {
    v7 = v6;
    v8 = [v7 *a3];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA6AEBC(SEL *a1)
{
  [v1 loadViewIfNeeded];
  result = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    v4 = [result *a1];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21EA6AF1C(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  [v3 loadViewIfNeeded];
  v8 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  v9 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  [v4 loadViewIfNeeded];
  v11 = *&v4[v8];
  if (!v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v12 = [v11 defaultPageIndex];
  if (a2)
  {
    v13[4] = a2;
    v13[5] = a3;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_21EA87FF0;
    v13[3] = &block_descriptor_6;
    a2 = _Block_copy(v13);
  }

  [v10 setCurrentPageIndex:v12 animated:a1 & 1 completion:a2];
  _Block_release(a2);
}

void *sub_21EA6B140()
{
  [v0 loadViewIfNeeded];
  v1 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    v3 = [result currentPageIndex];
    [v0 loadViewIfNeeded];
    result = *&v0[v1];
    if (result)
    {
      return (v3 == [result defaultPageIndex]);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21EA6B1C4()
{
  v13 = 0;
  [v0 loadViewIfNeeded];
  v1 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = swift_allocObject();
  v2[2] = sub_21EA6B400;
  v2[3] = 0;
  v2[4] = v0;
  v2[5] = &v13;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21E9FEBEC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_21EA87FE8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E9FEC38;
  aBlock[3] = &block_descriptor_16;
  v4 = _Block_copy(aBlock);
  v5 = v1;
  v6 = v0;

  [v5 enumerateDisplayedIconViewsUsingBlock_];

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (v13 == 1 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {

    return;
  }

  v8 = Strong;
  v9 = [Strong customIconImageViewController];
  if (!v9)
  {

    goto LABEL_10;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    [v11 willBecomeActive];

LABEL_10:
    return;
  }
}

void sub_21EA6B454()
{
  v13 = 0;
  [v0 loadViewIfNeeded];
  v1 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = swift_allocObject();
  v2[2] = sub_21EA6B690;
  v2[3] = 0;
  v2[4] = v0;
  v2[5] = &v13;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21EA87FE0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_21EA87FE8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E9FEC38;
  aBlock[3] = &block_descriptor_27;
  v4 = _Block_copy(aBlock);
  v5 = v1;
  v6 = v0;

  [v5 enumerateDisplayedIconViewsUsingBlock_];

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (v13 == 1 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {

    return;
  }

  v8 = Strong;
  v9 = [Strong customIconImageViewController];
  if (!v9)
  {

    goto LABEL_10;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    [v11 willResignActive];

LABEL_10:
    return;
  }
}

void sub_21EA6B6E4()
{
  if ([v0 _appearState] != 2)
  {
    return;
  }

  v13 = 0;
  [v0 loadViewIfNeeded];
  v1 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v1)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v2 = swift_allocObject();
  v2[2] = sub_21EA6B93C;
  v2[3] = 0;
  v2[4] = v0;
  v2[5] = &v13;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21EA87FE0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_21EA87FE8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E9FEC38;
  aBlock[3] = &block_descriptor_38;
  v4 = _Block_copy(aBlock);
  v5 = v1;
  v6 = v0;

  [v5 enumerateDisplayedIconViewsUsingBlock_];

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v13 == 1 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
  }

  else
  {
    v8 = Strong;
    v9 = [Strong customIconImageViewController];
    if (v9)
    {
      v10 = v9;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        [v11 displayWillTurnOff];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

id sub_21EA6BA1C()
{
  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    result = [result currentIconListModel];
    if (result)
    {
      v2 = result;
      v3 = [result numberOfUsedRows];

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21EA6BA90(uint64_t a1, uint64_t a2)
{
  v6 = 0;

  sub_21EA83B68(v2, a1, a2, &v6);

  return v6;
}

void sub_21EA6BAF0(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v10 = [a1 moduleIdentifier];
  v11 = sub_21EAA8E00();
  v13 = v12;

  if (v11 == a3 && v13 == a4)
  {

    goto LABEL_8;
  }

  v15 = sub_21EAA9530();

  if (v15)
  {
LABEL_8:
    v16 = [a1 view];
    v17 = *a5;
    *a5 = v16;

    *a2 = 1;
  }
}

uint64_t sub_21EA6BD00()
{
  v1 = [*(v0 + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers) allObjects];
  sub_21E9F8880(0, &qword_28125B748);
  v2 = sub_21EAA8EC0();

  if (v2 >> 62)
  {
    v3 = sub_21EAA9380();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

BOOL sub_21EA6BDA0(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers) allObjects];
  sub_21E9F8880(0, &qword_28125B748);
  v6 = sub_21EAA8EC0();

  if (v6 >> 62)
  {
LABEL_21:
    v18 = sub_21EAA9380();
  }

  else
  {
    v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v18 == v7)
    {
      break;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223D67210](v7, v6);
    }

    else
    {
      if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v9 = *(v6 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v11 = [v9 moduleIdentifier];
    v12 = sub_21EAA8E00();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {

      break;
    }

    v16 = sub_21EAA9530();

    v7 = v8 + 1;
  }

  while ((v16 & 1) == 0);

  return v18 != v8;
}

uint64_t sub_21EA6BFB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  v7 = sub_21EAA8530();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v10 = a1;
  v11 = a2;
  v12 = v6;
  sub_21EA753A0(sub_21EA83E04, v9);
  return sub_21EA488A0(v6, &unk_27CEDCFF0);
}

void sub_21EA6C1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_21EA753A0(sub_21EA88004, v3);
}

id sub_21EA6C224(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_21EAA8530();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  v32 = a1;
  v19 = [a1 moduleIdentifier];
  v20 = sub_21EAA8E00();
  v22 = v21;

  if (v20 == a3 && v22 == a4)
  {
  }

  else
  {
    v24 = sub_21EAA9530();

    if ((v24 & 1) == 0)
    {
      return result;
    }
  }

  sub_21EA48990(v31, v10, &unk_27CEDCFF0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21EA488A0(v10, &unk_27CEDCFF0);
    result = [v32 expandModule];
    *v30 = 1;
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    v26 = v32;
    v27 = [v32 uniqueIdentifier];
    sub_21EAA8510();

    LOBYTE(v27) = sub_21EAA8500();
    v28 = *(v12 + 8);
    v28(v14, v11);
    if (v27)
    {
      [v26 expandModule];
      *v30 = 1;
    }

    return (v28)(v18, v11);
  }

  return result;
}

void sub_21EA6C684(void (*a1)(id, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v46 = a2;
  isEscapingClosureAtFileLocation = sub_21EAA83E0();
  v5 = *(isEscapingClosureAtFileLocation - 8);
  v6 = MEMORY[0x28223BE20](isEscapingClosureAtFileLocation);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 loadViewIfNeeded];
  v9 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v9)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v10 = [v9 visibleIconListViews];
  sub_21E9F8880(0, &unk_28125B830);
  v11 = sub_21EAA8EC0();

  if (v11 >> 62)
  {
    goto LABEL_18;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = v5;
  v43 = isEscapingClosureAtFileLocation;
  if (v12)
  {
    while (v12 >= 1)
    {
      v40 = v3;
      v41 = v8;
      v44 = v11 & 0xC000000000000001;
      if ((v11 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D67210](0, v11);
      }

      else
      {
        v13 = *(v11 + 32);
      }

      v14 = v13;
      v15 = [v13 orientation];
      v5 = swift_allocObject();
      v5[2] = v14;
      v5[3] = v15;
      v16 = v46;
      v5[4] = v45;
      v5[5] = v16;
      v17 = v14;
      sub_21E9FFAF0(0);
      v18 = swift_allocObject();
      *(v18 + 16) = sub_21EA83E10;
      *(v18 + 24) = v5;
      v52 = sub_21EA87FE8;
      v53 = v18;
      v8 = MEMORY[0x277D85DD0];
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v50 = sub_21E9FEC38;
      v51 = &block_descriptor_60;
      v19 = _Block_copy(&aBlock);

      [v17 enumerateDisplayedIconViewsUsingBlock_];

      _Block_release(v19);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v20 = v12 - 1;
        if (v12 == 1)
        {
LABEL_16:

          v27 = sub_21EA83E10;
          v3 = v40;
          v8 = v41;
          goto LABEL_20;
        }

        isEscapingClosureAtFileLocation = 5;
        while (1)
        {
          v21 = v44 ? MEMORY[0x223D67210](isEscapingClosureAtFileLocation - 4, v11) : *(v11 + 8 * isEscapingClosureAtFileLocation);
          v22 = v21;
          v23 = [v21 orientation];
          v5 = swift_allocObject();
          v5[2] = v22;
          v5[3] = v23;
          v24 = v46;
          v5[4] = v45;
          v5[5] = v24;
          v25 = v22;
          sub_21E9FFAF0(sub_21EA83E10);
          v26 = swift_allocObject();
          *(v26 + 16) = sub_21EA83E10;
          *(v26 + 24) = v5;
          v52 = sub_21EA87FE8;
          v53 = v26;
          *&aBlock = v8;
          *(&aBlock + 1) = 1107296256;
          v50 = sub_21E9FEC38;
          v51 = &block_descriptor_60;
          v3 = _Block_copy(&aBlock);

          [v25 enumerateDisplayedIconViewsUsingBlock_];

          _Block_release(v3);
          LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

          if (v25)
          {
            break;
          }

          ++isEscapingClosureAtFileLocation;
          if (!--v20)
          {
            goto LABEL_16;
          }
        }
      }

      __break(1u);
LABEL_18:
      v12 = sub_21EAA9380();
      v42 = v5;
      v43 = isEscapingClosureAtFileLocation;
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_19:

  v27 = 0;
LABEL_20:
  v28 = *&v3[OBJC_IVAR___CCUIPagingViewController_controlDragWindow];
  if (v28)
  {
    v44 = v27;
    v29 = *&v28[OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews];
    v41 = v28;
    v30 = [v29 objectEnumerator];
    sub_21EAA8FB0();

    sub_21EAA83D0();
    while (v51)
    {
      sub_21EA51D48(&aBlock, &v48);
      type metadata accessor for ControlIconDragPreview();
      if (swift_dynamicCast())
      {
        v31 = v47;
        v32 = *&v47[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView];
        if (v32)
        {
          v33 = v32;
          v34 = [v33 icon];
          if (v34)
          {
            v35 = v34;
            v36 = [v34 gridSizeClass];
            CCUIGridSizeClassForSBHIconGridSizeClass();

            v37 = sub_21EAA9010();
            v45(v33, 1, 1, v37);
          }
        }

        else
        {
        }
      }

      sub_21EAA83D0();
    }

    (v42[1])(v8, v43);
    v38 = v44;
  }

  else
  {
    v38 = v27;
  }

  sub_21E9FFAF0(v38);
}

void sub_21EA6CC78(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void *, id, uint64_t, uint64_t))
{
  v8 = [a1 icon];
  if (v8)
  {
    v14 = v8;
    v9 = [a3 coordinateForIcon_];
    v11 = v10;
    if ((sub_21EAA9030() & 1) == 0)
    {
      v12 = [v14 gridSizeClass];
      CCUIGridSizeClassForSBHIconGridSizeClass();

      v13 = sub_21EAA9010();
      a5(a1, v9, v11, v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21EA6CDD8(uint64_t a1, void *a2, void (*a3)(id, uint64_t, uint64_t), uint64_t a4)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  swift_unknownObjectRetain();
  [v4 loadViewIfNeeded];
  v10 = *&v4[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v10)
  {
    __break(1u);
    goto LABEL_36;
  }

  v11 = v10;
  v12 = [v11 folderView];
  v42 = [v9 icon];
  if (!v42)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v37 = a2;
  v38 = v9;
  v41 = v12;
  v13 = [v12 visibleIconListViews];
  sub_21E9F8880(0, &unk_28125B830);
  v14 = sub_21EAA8EC0();

  if (v14 >> 62)
  {
LABEL_30:
    v15 = sub_21EAA9380();
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_6:
      v35 = a4;
      v36 = a3;
      v39 = v11;
      v11 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x223D67210](v11, v14);
        }

        else
        {
          if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v16 = *(v14 + 8 * v11 + 32);
        }

        v17 = v16;
        v18 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        type metadata accessor for IconListFolderView.IconListView();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          v20 = v19;
          a3 = [v19 coordinateForIcon_];
          a4 = v21;
          if ((sub_21EAA9030() & 1) == 0)
          {
            break;
          }
        }

        ++v11;
        if (v18 == v15)
        {

          swift_unknownObjectRelease();
          goto LABEL_32;
        }
      }

      if (v37)
      {
        v22 = v37;
        v23 = sub_21EA900C4(v22);
        v25 = v36;
        if (v26)
        {
          v27 = sub_21EAA9040();
        }

        else
        {
          v27 = [v20 coordinateAtPoint_];
        }

        v30 = v27;
        v31 = v28;
        v29 = v39;
        v32 = sub_21EAA9030();

        if ((v32 & 1) == 0)
        {
          a3 = v30;
          a4 = v31;
        }
      }

      else
      {
        v29 = v39;
        v25 = v36;
      }

      v40 = [v38 icon];
      if (v40)
      {
        [v29 orientation];
        v33 = [v40 gridSizeClass];
        CCUIGridSizeClassForSBHIconGridSizeClass();

        v34 = sub_21EAA9010();
        v25(a3, a4, v34);

        swift_unknownObjectRelease();

        return;
      }

LABEL_37:
      __break(1u);
      return;
    }
  }

  swift_unknownObjectRelease();
LABEL_32:
}

void sub_21EA6D240(char a1, void (*a2)(void), __objc2_class **a3)
{
  v7 = sub_21EAA8CD0();
  v8 = [*(v3 + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers) allObjects];
  sub_21E9F8880(0, &qword_28125B748);
  v9 = sub_21EAA8EC0();

  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21EAA9380())
  {
    v19 = i;
    if (a2)
    {
      sub_21E9F8880(0, &qword_28125B7F0);

      v18 = sub_21EAA90C0();
      v24 = a2;
      v25 = a3;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_21EA87FF0;
      v23 = &block_descriptor_63;
      _Block_copy(&aBlock);
      sub_21EA87D30(&qword_28125B890, MEMORY[0x277D85198]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40);
      sub_21EA87D78(&qword_28125B860, &unk_27CEDCC40);
      sub_21EAA9340();
      sub_21EAA8D50();
      swift_allocObject();
      sub_21EAA8D40();

      sub_21EAA9090();

      sub_21E9FFAF0(a2);
    }

    v3 = 0;
    a2 = (v9 & 0xC000000000000001);
    a3 = &off_278383000;
    while (1)
    {
      if (a2)
      {
        v11 = MEMORY[0x223D67210](v3, v9);
      }

      else
      {
        if (v3 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(v9 + 8 * v3 + 32);
      }

      v12 = v11;
      v13 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v11 ccui:0 safelyBeginAppearanceTransition:a1 & 1 animated:?];
      [v12 dismissExpandedModuleAnimated_];
      [v12 ccui_safelyEndAppearanceTransition];

      ++v3;
      if (v13 == v19)
      {

        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v14 = [v3 presentedViewController];
  if (v14)
  {
    v15 = v14;
    if (a2)
    {
      v24 = a2;
      v25 = a3;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_21EA87FF0;
      v23 = &block_descriptor_66_0;
      v16 = _Block_copy(&aBlock);
    }

    else
    {
      v16 = 0;
    }

    [v15 dismissViewControllerAnimated:a1 & 1 completion:v16];
    _Block_release(v16);
  }

  else if (a2)
  {

    a2(v17);

    sub_21E9FFAF0(a2);
  }
}

void sub_21EA6D6A4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21EAA9370();
    sub_21E9F8880(0, &qword_28125B730);
    sub_21E9FBE14(&qword_27CEDD6E0, &qword_28125B730);
    sub_21EAA8F90();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_21EAA93A0() || (sub_21E9F8880(0, &qword_28125B730), swift_dynamicCast(), v13 = v22, v11 = v4, v12 = v5, !v22))
    {
LABEL_19:
      sub_21E9FBFD4();
      return;
    }

LABEL_17:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      sub_21EA55DE8(&v22, v15);
      v13 = v22;
    }

    v4 = v11;
    v5 = v12;
  }

  v9 = v4;
  v10 = v5;
  v11 = v4;
  if (v5)
  {
LABEL_13:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_21EA6D99C(char a1, void *a2, uint64_t a3)
{
  v7 = sub_21EAA8CD0();
  MEMORY[0x28223BE20](v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v9 = swift_unknownObjectWeakLoadStrong();
    v10 = v9;
    v11 = &selRef_dismissConfigurationCard;
    if ((a1 & 1) == 0)
    {
      v11 = &selRef_dismissConfigurationCardImmediately;
    }

    [v9 *v11];

    if (a2)
    {
      goto LABEL_5;
    }

    return;
  }

  v12 = [v3 presentedViewController];
  if (v12)
  {
    v13 = v12;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();

    if (v14)
    {
      v15 = [v3 presentedViewController];
      if (!v15)
      {
        goto LABEL_30;
      }

      v16 = v15;
      v17 = [v15 isBeingDismissed];

      if ((v17 & 1) == 0)
      {

        sub_21EA75DA4(a1 & 1, a2, a3);
        return;
      }
    }
  }

  if (![v3 isEditing])
  {
    if (a2)
    {
      v26 = *&v3[OBJC_IVAR___CCUIPagingViewController_expandedViewControllersDispatchGroup];
      sub_21E9F8880(0, &qword_28125B7F0);

      v18 = sub_21EAA90C0();
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA87FF0;
      aBlock[3] = &block_descriptor_69;
      v25 = _Block_copy(aBlock);
      sub_21EA87D30(&qword_28125B890, MEMORY[0x277D85198]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40);
      sub_21EA87D78(&qword_28125B860, &unk_27CEDCC40);
      sub_21EAA9340();
      sub_21EAA8D50();
      swift_allocObject();
      sub_21EAA8D40();

      sub_21EAA9090();

      sub_21E9FFAF0(a2);
    }

    v19 = [*&v3[OBJC_IVAR___CCUIPagingViewController_expandedViewControllers] allObjects];
    sub_21E9F8880(0, &qword_28125B748);
    v20 = sub_21EAA8EC0();

    if (v20 >> 62)
    {
      v21 = sub_21EAA9380();
      if (v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
LABEL_17:
        if (v21 >= 1)
        {
          for (i = 0; i != v21; ++i)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x223D67210](i, v20);
            }

            else
            {
              v23 = *(v20 + 8 * i + 32);
            }

            v24 = v23;
            [v23 dismissPresentedContentAnimated_];
          }

          goto LABEL_27;
        }

        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }
    }

LABEL_27:

    return;
  }

  [v3 setEditing_];
  if (a2)
  {
LABEL_5:
    (a2)();
  }
}

id sub_21EA6DEFC()
{
  v1 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21EA6DFB0(uint64_t a1)
{
  v3 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21EA6E008(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_21EA6E0C8(void *a1, int a2)
{
  v3 = v2;
  v146 = a2;
  aBlock[9] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD078);
  MEMORY[0x28223BE20](v5 - 8);
  v147 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v151 = &v140 - v8;
  v152 = sub_21EAA85F0();
  v9 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v148 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CEDBBF0 != -1)
  {
    swift_once();
  }

  v11 = sub_21EAA8790();
  v12 = __swift_project_value_buffer(v11, qword_27CEDC768);
  v13 = a1;
  v14 = sub_21EAA8760();
  v15 = sub_21EAA9000();

  v16 = os_log_type_enabled(v14, v15);
  v149 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    LODWORD(v145) = v15;
    v18 = v17;
    v19 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    aBlock[0] = v150;
    *v18 = 138543618;
    v20 = [v13 extensionIdentity];
    *(v18 + 4) = v20;
    *v19 = v20;
    *(v18 + 12) = 2082;
    v21 = [v13 kind];
    v22 = v12;
    v23 = v21;
    v24 = sub_21EAA8E00();
    v25 = v9;
    v27 = v26;

    v28 = sub_21E9FE748(v24, v27, aBlock);
    v9 = v25;

    *(v18 + 14) = v28;
    v12 = v22;
    v13 = v149;
    _os_log_impl(&dword_21E9F5000, v14, v145, "Requested add/scroll to control in CC: %{public}@ with kind: %{public}s", v18, 0x16u);
    sub_21EA488A0(v19, &unk_27CEDCC30);
    MEMORY[0x223D68580](v19, -1, -1);
    v29 = v150;
    __swift_destroy_boxed_opaque_existential_1(v150);
    MEMORY[0x223D68580](v29, -1, -1);
    MEMORY[0x223D68580](v18, -1, -1);
  }

  v30 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v150 = *&v3[v30];
  sub_21EA6F240(v150, v13);
  v32 = v31;
  v33 = &selRef_filterWithType_;
  p_prots = (&OBJC_PROTOCOL___APSubjectMonitorSubscription + 16);
  v35 = &off_278383000;
  if (v31)
  {
    goto LABEL_32;
  }

  v144 = v12;
  v145 = v3;
  v36 = sub_21EAA8760();
  v37 = sub_21EAA9000();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_21E9F5000, v36, v37, "Didn't find existing control; trying to add it...", v38, 2u);
    MEMORY[0x223D68580](v38, -1, -1);
  }

  v39 = [v13 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD080);
  sub_21EAA86D0();
  swift_endAccess();

  v40 = v13;
  v41 = [v13 extensionIdentity];
  v42 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC638);
  v44 = 0;
  v45 = 0;
  if (!(*(*(v43 - 8) + 48))(&v41[v42], 1, v43))
  {
    v44 = sub_21EAA86D0();
    v45 = v46;
  }

  swift_endAccess();

  v47 = [v40 kind];
  if (!v47)
  {
    sub_21EAA8E00();
    v47 = sub_21EAA8DC0();
  }

  v48 = [v40 controlType];

  v49 = sub_21EAA8DC0();

  if (v45)
  {
    v50 = sub_21EAA8DC0();
  }

  else
  {
    v50 = 0;
  }

  v12 = v144;
  v51 = [objc_allocWithZone(MEMORY[0x277CFC9D8]) initWithKind:v47 controlType:v48 extensionBundleIdentifier:v49 containerBundleIdentifier:v50];

  sub_21E9F8880(0, &unk_27CEDCDA0);
  v52 = sub_21EAA8FA0();
  [v52 addIconDataSource_];
  v32 = v52;
  v53 = v149;
  [v149 preferredControlSize];
  v54 = sub_21EAA9120();
  [v32 setGridSizeClass_];

  v55 = [v53 defaultIntentReference];
  if (!v55 || (v56 = v55, v57 = [v55 intent], v56, !v57))
  {

    goto LABEL_21;
  }

  if (!v45)
  {

LABEL_21:
    v77 = sub_21EAA8760();
    v78 = sub_21EAA9000();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_21E9F5000, v77, v78, "No default intent found", v79, 2u);
      MEMORY[0x223D68580](v79, -1, -1);
    }

    goto LABEL_28;
  }

  v58 = v51;
  v59 = sub_21EAA8760();
  v60 = sub_21EAA9000();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v140 = v61;
    v142 = swift_slowAlloc();
    aBlock[0] = v142;
    *v61 = 136315138;
    v62 = [v58 uniqueIdentifier];
    v63 = sub_21EAA8E00();
    v141 = v58;
    v64 = v60;
    v65 = v51;
    v66 = v9;
    v67 = v63;
    v143 = v44;
    v69 = v68;

    v70 = v67;
    v9 = v66;
    v51 = v65;
    v71 = sub_21E9FE748(v70, v69, aBlock);

    v72 = v140;
    *(v140 + 1) = v71;
    v12 = v144;
    v73 = v64;
    v74 = v72;
    _os_log_impl(&dword_21E9F5000, v59, v73, "Associating control configuration intent to id=%s", v72, 0xCu);
    v75 = v142;
    __swift_destroy_boxed_opaque_existential_1(v142);
    MEMORY[0x223D68580](v75, -1, -1);
    MEMORY[0x223D68580](v74, -1, -1);

    v76 = v141;
  }

  else
  {

    v76 = v58;
  }

  v80 = *&v145[OBJC_IVAR___CCUIPagingViewController_controlIntentStore];
  v81 = sub_21EAA8DC0();

  v77 = [v76 uniqueIdentifier];
  if (!v77)
  {
    sub_21EAA8E00();
    v77 = sub_21EAA8DC0();
  }

  [v80 storeIntent:v57 bundleIdentifier:v81 dataSourceIdentifier:v77];

LABEL_28:
  v3 = v145;

  [v3 loadViewIfNeeded];
  v82 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v82)
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v83 = [v82 folder];

  v84 = sub_21EAA8760();
  v85 = sub_21EAA9000();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_21E9F5000, v84, v85, "Added icon.", v86, 2u);
    v87 = v86;
    v3 = v145;
    MEMORY[0x223D68580](v87, -1, -1);
  }

  v33 = &selRef_filterWithType_;
  v35 = &off_278383000;
  p_prots = &OBJC_PROTOCOL___APSubjectMonitorSubscription.prots;
LABEL_32:
  v88 = v32;
  [v3 v33[225]];
  v89 = p_prots[503];
  v90 = *(&v89->count + v3);
  if (!v90)
  {
    __break(1u);
  }

  v91 = [v90 v35[429]];
  if (!v91)
  {

    v96 = v151;
    (*(v9 + 56))(v151, 1, 1, v152);
LABEL_39:
    sub_21EA488A0(v96, &qword_27CEDD078);
    v99 = sub_21EAA8760();
    v100 = sub_21EAA8FE0();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_21E9F5000, v99, v100, "Error: unable to scroll to control because we couldn't find the icon index path.", v101, 2u);
      MEMORY[0x223D68580](v101, -1, -1);
    }

    v102 = v88;
    goto LABEL_68;
  }

  v92 = v91;
  v93 = [v91 indexPathForIcon_];

  if (v93)
  {
    v94 = v147;
    sub_21EAA85E0();

    v95 = 0;
  }

  else
  {
    v95 = 1;
    v94 = v147;
  }

  v97 = v152;
  (*(v9 + 56))(v94, v95, 1, v152);
  v98 = v94;
  v96 = v151;
  sub_21EA83E1C(v98, v151);
  LODWORD(v97) = (*(v9 + 48))(v96, 1, v97);

  if (v97 == 1)
  {
    goto LABEL_39;
  }

  (*(v9 + 32))(v148, v96, v152);
  [v3 v33[225]];
  v103 = *(&v89->count + v3);
  if (!v103)
  {
    goto LABEL_71;
  }

  v151 = v9;
  v104 = [v103 v35[429]];
  if (!v104)
  {
    v102 = 0;
    goto LABEL_55;
  }

  v105 = v104;
  v106 = sub_21EAA85D0();
  aBlock[0] = 0;
  v107 = [v105 folderContainingIndexPath:v106 relativeIndexPath:aBlock];

  v102 = aBlock[0];
  if (!v107 || (v107, !v102))
  {

LABEL_55:
    v125 = sub_21EAA8760();
    v126 = sub_21EAA8FE0();
    v127 = os_log_type_enabled(v125, v126);
    v128 = v150;
    if (v127)
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_21E9F5000, v125, v126, "Error: unable to scroll to control because we couldn't find the list index the icon belongs to.", v129, 2u);
      MEMORY[0x223D68580](v129, -1, -1);

LABEL_67:
      (*(v151 + 8))(v148, v152);
LABEL_68:

      return;
    }

    goto LABEL_66;
  }

  v102 = v102;
  v108 = SBFolderRelativeListIndex();
  [v3 v33[225]];
  v109 = *(&v89->count + v3);
  if (!v109)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v110 = [v109 pageIndexForIconListViewIndex_];
  [v3 v33[225]];
  v111 = *(&v89->count + v3);
  if (v111)
  {
    [v111 setCurrentPageIndex:v110 animated:v146 & 1 completion:0];
    v112 = sub_21EAA8760();
    v113 = sub_21EAA9000();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_21E9F5000, v112, v113, "Success! Scrolling to page.", v114, 2u);
      MEMORY[0x223D68580](v114, -1, -1);
    }

    v115 = v149;
    v116 = [v149 extensionIdentity];
    v117 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC638);
    if ((*(*(v118 - 8) + 48))(&v116[v117], 1, v118))
    {
      swift_endAccess();

      v119 = v115;
      v120 = sub_21EAA8760();
      v121 = sub_21EAA8FE0();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        *v122 = 138412290;
        *(v122 + 4) = v119;
        *v123 = v119;
        v124 = v119;
        _os_log_impl(&dword_21E9F5000, v120, v121, "Unable to reload control; unknown container bundle identifier for descriptor: %@", v122, 0xCu);
        sub_21EA488A0(v123, &unk_27CEDCC30);
        MEMORY[0x223D68580](v123, -1, -1);
        MEMORY[0x223D68580](v122, -1, -1);

LABEL_62:
        goto LABEL_67;
      }
    }

    else
    {
      v144 = v12;
      sub_21EAA86D0();
      swift_endAccess();

      v130 = [objc_allocWithZone(MEMORY[0x277CFA340]) init];
      v131 = [v115 kind];
      if (!v131)
      {
        sub_21EAA8E00();
        v131 = sub_21EAA8DC0();
      }

      v132 = sub_21EAA8DC0();

      v133 = sub_21EAA8DC0();
      v134 = swift_allocObject();
      v134[2] = v115;
      aBlock[4] = sub_21EA83E8C;
      aBlock[5] = v134;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA6F894;
      aBlock[3] = &block_descriptor_75;
      v135 = _Block_copy(aBlock);
      v136 = v115;

      [v130 reloadControlsOfKind:v131 containedIn:v132 reason:v133 completion:v135];
      _Block_release(v135);

      v137 = sub_21EAA8760();
      v138 = sub_21EAA9000();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&dword_21E9F5000, v137, v138, "Reloading control...", v139, 2u);
        MEMORY[0x223D68580](v139, -1, -1);

        goto LABEL_62;
      }
    }

LABEL_66:
    goto LABEL_67;
  }

LABEL_73:
  __break(1u);
}

void sub_21EA6F240(void *a1, void *a2)
{
  v3 = [a1 leafIcons];
  sub_21E9F8880(0, &qword_28125B848);
  sub_21E9FBE14(&qword_28125B840, &qword_28125B848);
  v4 = sub_21EAA8F60();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21EAA9370();
    sub_21EAA8F90();
    v4 = v45;
    v5 = v46;
    v6 = v47;
    v7 = v48;
    v8 = v49;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v39 = v6;
  v12 = (v6 + 64) >> 6;
  v41 = v5;
  v42 = a2;
  v40 = v4;
  while (v4 < 0)
  {
    if (!sub_21EAA93A0())
    {
      goto LABEL_33;
    }

    swift_dynamicCast();
    v17 = v44;
    v15 = v7;
    v16 = v8;
    if (!v44)
    {
      goto LABEL_33;
    }

LABEL_19:
    if (![v17 activeDataSource])
    {

      goto LABEL_9;
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v43 = v16;
      v20 = [v18 extensionBundleIdentifier];
      v21 = sub_21EAA8E00();
      v23 = v22;

      v24 = [a2 extensionIdentity];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD080);
      v25 = sub_21EAA86D0();
      v27 = v26;
      swift_endAccess();

      if (v21 == v25 && v23 == v27)
      {

        goto LABEL_29;
      }

      v29 = sub_21EAA9530();

      if (v29)
      {
LABEL_29:
        v30 = [v19 kind];
        v31 = sub_21EAA8E00();
        v33 = v32;

        a2 = v42;
        v34 = [v42 kind];
        v35 = sub_21EAA8E00();
        v37 = v36;

        if (v31 == v35 && v33 == v37)
        {

          swift_unknownObjectRelease();
LABEL_33:
          sub_21E9FBFD4();

          return;
        }

        v38 = sub_21EAA9530();

        swift_unknownObjectRelease();
        v4 = v40;
        if (v38)
        {
          goto LABEL_33;
        }

        v7 = v15;
        v8 = v43;
        v5 = v41;
      }

      else
      {
        swift_unknownObjectRelease();

        v7 = v15;
        v8 = v43;
        v5 = v41;
        a2 = v42;
        v4 = v40;
      }
    }

    else
    {

      swift_unknownObjectRelease();
LABEL_9:
      v7 = v15;
      v8 = v16;
    }
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_33;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_21EA6F6A4(NSObject *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27CEDBBF0 != -1)
    {
      swift_once();
    }

    v5 = sub_21EAA8790();
    __swift_project_value_buffer(v5, qword_27CEDC768);
    v6 = a1;
    v7 = a2;
    oslog = sub_21EAA8760();
    v8 = sub_21EAA8FE0();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412546;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v7;
      *v10 = v12;
      v10[1] = v7;
      v13 = v7;
      _os_log_impl(&dword_21E9F5000, oslog, v8, "Error reloading control: %@, descriptor: %@", v9, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC30);
      swift_arrayDestroy();
      MEMORY[0x223D68580](v10, -1, -1);
      MEMORY[0x223D68580](v9, -1, -1);

      v14 = oslog;
    }

    else
    {

      v14 = a1;
    }
  }
}

void sub_21EA6F894(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_21EA6F970()
{
  v1 = v0;
  v2 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v3 = [*&v0[v2] rootFolder];
  if (!v3)
  {
    if (qword_28125B8C0 != -1)
    {
      swift_once();
    }

    v12 = sub_21EAA8790();
    __swift_project_value_buffer(v12, qword_28125B8C8);
    v4 = sub_21EAA8760();
    v13 = sub_21EAA8FE0();
    if (os_log_type_enabled(v4, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21E9F5000, v4, v13, "Root folder is missing.", v14, 2u);
      MEMORY[0x223D68580](v14, -1, -1);
    }

    goto LABEL_9;
  }

  v4 = v3;
  [v3 setDelegate:0];
  [v4 removeFolderObserver:v0];
  v5 = sub_21EA9F1AC();
  v6 = *&v0[v2];
  *&v1[v2] = v5;
  v7 = v5;

  v8 = [v7 rootFolder];
  if (!v8)
  {
LABEL_9:

    return;
  }

  v9 = v8;
  [v9 addFolderObserver_];
  [v9 setDelegate_];
  [v1 loadViewIfNeeded];
  v10 = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v10)
  {
    v11 = v10;
    [v11 setFolder_];

    goto LABEL_9;
  }

  __break(1u);
}

id sub_21EA6FBBC(double a1, double a2, double a3)
{
  result = [v3 loadViewIfNeeded];
  v8 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v8)
  {
    result = *(v8 + OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier);
    if (result)
    {
      return [result addStretchSourceWithParameters:0 primaryAxis:{a1, a2, a3}];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA6FCB0(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v6 = v5;
  result = [v6 loadViewIfNeeded];
  v13 = *&v6[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v13)
  {
    v14 = *&v13[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier];
    if (!v14)
    {
      return 0;
    }

    if (a1)
    {
      v20[4] = a1;
      v20[5] = a2;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 1107296256;
      v20[2] = sub_21EA82224;
      v20[3] = &block_descriptor_78;
      v15 = _Block_copy(v20);
      v16 = v14;
      v17 = v13;
      sub_21EA58AE0(a1);
    }

    else
    {
      v16 = v14;
      v19 = v13;
      v15 = 0;
    }

    v18 = [v16 addStretchSourceWithParameters:0 primaryAxis:v15 stretchTransformer:{a3, a4, a5}];

    _Block_release(v15);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21EA6FEF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = aBlock - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD0A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = aBlock - v6;
  v8 = sub_21EAA92D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PagingViewController();
  v42.receiver = v0;
  v42.super_class = v12;
  objc_msgSendSuper2(&v42, sel_viewDidLoad);
  v13 = [v0 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = v13;
  [v13 setUserInteractionEnabled_];

  sub_21EA7A880();
  sub_21E9F8880(0, &qword_27CEDCFA0);
  v15 = [swift_getObjCClassFromMetadata() defaultCenter];
  v16 = *MEMORY[0x277D23A70];
  v17 = [objc_opt_self() mainQueue];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_21EA83E94;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21EA707A0;
  aBlock[3] = &block_descriptor_84;
  v19 = _Block_copy(aBlock);

  v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
  _Block_release(v19);

  *&v1[OBJC_IVAR___CCUIPagingViewController_appIntentMetadataChangedObserverToken] = v20;
  swift_unknownObjectRelease();
  sub_21EA70894();
  [v1 loadViewIfNeeded];
  v21 = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v21 setContentVisibility_];
  *(*&v1[OBJC_IVAR___CCUIPagingViewController_controlCenterOperationsServiceController] + 24) = &off_283019648;
  swift_unknownObjectWeakAssign();
  type metadata accessor for AccessoryButton();
  sub_21E9F8880(0, &qword_28125B630);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21EAA9230();
  v22 = sub_21EAA9300();
  sub_21EAA92A0();
  v23 = sub_21EAA8DC0();
  v24 = [objc_opt_self() systemImageNamed_];

  sub_21EAA9290();
  if (qword_28125B658 != -1)
  {
    swift_once();
  }

  v25 = qword_28125C5F8;
  v26 = sub_21EAA8DC0();
  v27 = sub_21EAA8DC0();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  sub_21EAA8E00();
  sub_21EAA92B0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21EAA87F0();
  v29 = sub_21EAA87E0();
  (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
  sub_21EAA9280();
  v30 = [objc_opt_self() configurationWithScale_];
  sub_21EAA9240();
  v31 = [objc_opt_self() whiteColor];
  sub_21EAA9270();
  sub_21EAA9250();
  (*(v9 + 16))(v4, v11, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v32 = v22;
  sub_21EAA92F0();
  [v32 setAutomaticallyUpdatesConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD0C0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_21EAB6F50;
  v34 = sub_21EAA87D0();
  v35 = MEMORY[0x277D74DB8];
  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21E9F8880(0, &qword_28125B628);
  v36 = v32;
  sub_21EAA91E0();
  swift_unknownObjectRelease();

  [v36 setMaximumContentSizeCategory_];

  [v36 setTintAdjustmentMode_];
  v37 = [v36 layer];

  [v37 setZPosition_];
  v38 = [v1 view];
  if (v38)
  {
    v39 = v38;
    [v38 addSubview_];

    [v36 setAlpha_];
    (*(v9 + 8))(v11, v8);
    v40 = *&v1[OBJC_IVAR___CCUIPagingViewController_addButton];
    *&v1[OBJC_IVAR___CCUIPagingViewController_addButton] = v36;

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_21EA70744()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21EA7AF0C();
  }
}

uint64_t sub_21EA707A0(uint64_t a1)
{
  v2 = sub_21EAA8380();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_21EAA8360();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_21EA70894()
{
  v1 = type metadata accessor for IconListRootFolderController();
  v2 = [v1 iconLocation];
  v3 = [objc_allocWithZone(type metadata accessor for IconListLayoutProvider()) init];
  if ([v3 layoutForIconLocation_])
  {
    v23 = v1;
    *&v0[OBJC_IVAR___CCUIPagingViewController_maximumNumberOfIconViewsInHierarchy] = SBHIconListLayoutMaximumIconCount();
    v4 = OBJC_IVAR___CCUIPagingViewController_iconModel;
    swift_beginAccess();
    v5 = [*&v0[v4] rootFolder];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      [v7 addFolderObserver_];
      [v7 setDelegate_];
      [v7 setListsAllowIndependentRotatedLayout_];
    }

    v8 = [v0 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 26;
    }

    v11 = [objc_allocWithZone(MEMORY[0x277D660E0]) init];
    v12 = [objc_allocWithZone(MEMORY[0x277D66288]) initWithDelegate_];
    type metadata accessor for IconViewProvider();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v13 + 24) = v12;
    swift_unknownObjectWeakAssign();
    v14 = *&v0[OBJC_IVAR___CCUIPagingViewController_iconViewMap];
    *&v0[OBJC_IVAR___CCUIPagingViewController_iconViewMap] = v12;
    v22 = v12;

    *&v0[OBJC_IVAR___CCUIPagingViewController_iconViewProvider] = v13;

    swift_unknownObjectRelease();
    [v11 setVertical_];
    [v11 setIconViewProvider_];
    [v11 setListLayoutProvider_];
    [v11 setAllowedOrientations_];
    [v11 setOriginatingIconLocation_];
    [v11 setOrientation_];
    [v11 setFolder_];
    [v11 setRequiresGlassGroupingForCustomIconImageViewControllers_];
    v15 = [objc_allocWithZone(MEMORY[0x277D66380]) init];
    [v15 setDelegate_];
    [v15 setPrioritizesDirectIconPlacement_];
    [v15 setPlaceholderRepositioningDelay_];
    v16 = *&v0[OBJC_IVAR___CCUIPagingViewController_iconDragManager];
    *&v0[OBJC_IVAR___CCUIPagingViewController_iconDragManager] = v15;
    v17 = v15;

    v18 = [objc_allocWithZone(v23) initWithConfiguration_];
    v19 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
    *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController] = v18;
    v20 = v18;

    [v0 bs:v20 addChildViewController:?];
    *&v20[OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_iconListFolderDelegate + 8] = &off_283019628;
    swift_unknownObjectWeakAssign();
    v21 = v20;
    [v21 setFolderDelegate_];
    [v21 setOpen_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_21EA70CA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___CCUIPagingViewController_controlsGalleryViewController;
    v3 = *(Strong + OBJC_IVAR___CCUIPagingViewController_controlsGalleryViewController);
    if (v3 || (sub_21EA75C68(), (v3 = *&v1[v2]) != 0))
    {
      [v1 presentViewController:v3 animated:1 completion:0];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_21EA70D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21EAA8390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 16);
  if (!Strong)
  {
    return v9(a2, a1, v4);
  }

  v10 = Strong;
  v9(v7, a1, v4);
  v11 = [v10 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  result = [objc_opt_self() _preferredFontDescriptorWithTextStyle_design_weight_compatibleWithTraitCollection_];
  if (result)
  {
    v15 = result;
    v16 = [objc_opt_self() fontWithDescriptor:result size:0.0];
    sub_21EA87DF0();
    sub_21EAA83A0();

    return (*(v5 + 32))(a2, v7, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA70F70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6];
  v8 = sub_21EAA92D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21EAA92E0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21EA488A0(v7, &qword_27CEDD0A0);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_21EAA92C0();
  (*(v9 + 56))(v4, 0, 1, v8);
  sub_21EAA92F0();
  [a1 updateTraitsIfNeeded];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      result = [v14 loadViewIfNeeded];
      if (!*&v14[OBJC_IVAR___CCUIPagingViewController_addButton])
      {
        __break(1u);
        return result;
      }

      [v16 pagingViewController:v14 editingAccessoryViewIntrinsicSizeDidChange:?];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return (*(v9 + 8))(v11, v8);
}

id sub_21EA71258(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PagingViewController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = objc_opt_self();
    v6 = [v4 window];

    [v5 setAnimationsPermitted:1 inWindow:v6];
    sub_21EA7649C();
    [v1 loadViewIfNeeded];
    result = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
    if (result)
    {
      return [result setContentVisibility_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21EA714A0(char a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for PagingViewController();
  objc_msgSendSuper2(&v13, sel_viewWillDisappear_, a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong dismissConfigurationCardImmediately];

  v12 = 0;
  v10[2] = &v12;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21EA83EB4;
  *(v4 + 24) = v10;
  result = [v1 loadViewIfNeeded];
  v6 = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = sub_21EA87FEC;
    *(v7 + 24) = v4;
    aBlock[4] = sub_21EA87FE8;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E9FEC38;
    aBlock[3] = &block_descriptor_99_0;
    v8 = _Block_copy(aBlock);
    v9 = v6;

    [v9 enumerateDisplayedIconViewsUsingBlock_];

    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      *&v1[OBJC_IVAR___CCUIPagingViewController_hiddenDroppingIconViews] = v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21EA716A8(void *a1, void *a2)
{
  result = [a1 isDropping];
  if (result)
  {
    [a1 setHidden_];
    if (!*a2)
    {
      *a2 = MEMORY[0x277D84F90];
    }

    v5 = a1;
    MEMORY[0x223D66C60]();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21EAA8EE0();
    }

    return sub_21EAA8EF0();
  }

  return result;
}

id sub_21EA717AC(char a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for PagingViewController();
  objc_msgSendSuper2(&v13, sel_viewDidDisappear_, a1 & 1);
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = result;
  v5 = objc_opt_self();
  v6 = [v4 window];

  [v5 setAnimationsPermitted:0 inWindow:v6];
  sub_21EA764B0();
  [v1 loadViewIfNeeded];
  result = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    result = [result setContentVisibility_];
    v7 = OBJC_IVAR___CCUIPagingViewController_hiddenDroppingIconViews;
    v8 = *&v1[OBJC_IVAR___CCUIPagingViewController_hiddenDroppingIconViews];
    if (v8)
    {
      if (v8 >> 62)
      {
        result = sub_21EAA9380();
        v9 = result;
        if (result)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
LABEL_6:
          if (v9 >= 1)
          {

            for (i = 0; i != v9; ++i)
            {
              if ((v8 & 0xC000000000000001) != 0)
              {
                v11 = MEMORY[0x223D67210](i, v8);
              }

              else
              {
                v11 = *(v8 + 8 * i + 32);
              }

              v12 = v11;
              [v11 setHidden_];
            }

            goto LABEL_13;
          }

          __break(1u);
          goto LABEL_17;
        }
      }
    }

LABEL_13:
    *&v1[v7] = 0;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_21EA719B8()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PagingViewController();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v0 loadViewIfNeeded];
  v11 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = [v11 view];
  if (v12)
  {
    v13 = v12;
    [v12 setFrame_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_21EA71B0C()
{
  v1 = OBJC_IVAR___CCUIPagingViewController____lazy_storage___iconEditingSettings;
  v2 = *(v0 + OBJC_IVAR___CCUIPagingViewController____lazy_storage___iconEditingSettings);
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = [objc_opt_self() rootSettings];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 iconEditingSettings];

    if (v5)
    {
      [v5 addKeyObserver_];
      v6 = *(v0 + v1);
      *(v0 + v1) = v5;
      v5;

      v2 = 0;
LABEL_5:
      v7 = v2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_21EA71BF4(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_opt_self() rootSettings];
    v8 = [v7 editingSettings];

    v9 = [v8 resizingSettings];
    v10 = [v9 *a2];

    v11 = *(v2 + v3);
    *(v2 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

id sub_21EA71CFC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
LABEL_5:
    v9 = v3;
    return v4;
  }

  result = [v1 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() feedbackGeneratorForView_];

    v8 = *&v1[v2];
    *&v1[v2] = v7;
    v4 = v7;

    v3 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_21EA71DAC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    [v0 loadViewIfNeeded];
    result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    if (UIInterfaceOrientationIsLandscape([result orientation]))
    {
      return 0xD000000000000018;
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = [result reasonToDisallowEditing_];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = sub_21EAA8E00();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_21EA71EDC()
{
  v1 = v0;
  v2 = sub_21EAA83E0();
  v47 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[OBJC_IVAR___CCUIPagingViewController__isEditing];
  if (v5 == 1)
  {
    v6 = sub_21EA71CD4();
    [v6 impactOccurredWithIntensity_];

    _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
    [objc_opt_self() resetEditingBorderPulseAnimationStartTime];
    [v1 loadViewIfNeeded];
    v7 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
    v8 = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
    if (!v8)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v9 = [v8 folderView];
    *&v9[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_iconViewConfigurationOptions] &= ~4uLL;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v53 = sub_21EA87FFC;
    v54 = v10;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v51 = sub_21EA89FE0;
    v52 = &block_descriptor_417;
    v11 = _Block_copy(&aBlock);
    v12 = v9;

    [v12 enumerateIconListViewsUsingBlock_];
    _Block_release(v11);

    v1[OBJC_IVAR___CCUIPagingViewController_wantsSubduedIconBackgrounds] = 1;
    [v1 loadViewIfNeeded];
    v13 = *&v1[v7];
    if (!v13)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *(v13 + OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_wantsSubduedIconBackgrounds) = 1;
    v14 = sub_21E9F8880(0, &unk_28125B720);
    MEMORY[0x28223BE20](v14);
    *(&v46 - 2) = v1;
    *(&v46 - 8) = 1;
    sub_21EAA91F0();
  }

  if (qword_27CEDBBE0 != -1)
  {
    swift_once();
  }

  v15 = sub_21EAA8790();
  __swift_project_value_buffer(v15, qword_27CEDC738);
  v16 = sub_21EAA8760();
  v17 = sub_21EAA9000();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v5;
    _os_log_impl(&dword_21E9F5000, v16, v17, "Editing state changed: %{BOOL}d", v18, 8u);
    MEMORY[0x223D68580](v18, -1, -1);
  }

  [v1 loadViewIfNeeded];
  v19 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  v20 = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v20)
  {
    goto LABEL_32;
  }

  [v20 setEditing:v5 animated:1];
  if ((v5 & 1) == 0)
  {
    [v1 loadViewIfNeeded];
    v21 = *&v1[v19];
    if (!v21)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v22 = [v21 folder];
    [v22 compactAllLists];
  }

  v23 = *&v1[OBJC_IVAR___CCUIPagingViewController_iconDragManager];
  if (!v23)
  {
    goto LABEL_33;
  }

  [v23 noteIconManagerEditingDidChange];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong pagingViewController:v1 editingDidChange:v5];
    swift_unknownObjectRelease();
  }

  if ((v5 & 1) == 0)
  {
    v25 = OBJC_IVAR___CCUIPagingViewController_endEditingTimer;
    [*&v1[OBJC_IVAR___CCUIPagingViewController_endEditingTimer] invalidate];
    v26 = *&v1[v25];
    *&v1[v25] = 0;

    v1[OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments] = 1;
    sub_21EA74790();
    v1[OBJC_IVAR___CCUIPagingViewController_wantsSubduedIconBackgrounds] = 0;
    [v1 loadViewIfNeeded];
    v27 = *&v1[v19];
    if (!v27)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *(v27 + OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_wantsSubduedIconBackgrounds) = 0;
    v28 = sub_21E9F8880(0, &unk_28125B720);
    MEMORY[0x28223BE20](v28);
    *(&v46 - 2) = v1;
    *(&v46 - 8) = 0;
    sub_21EAA91F0();
    v29 = *&v1[OBJC_IVAR___CCUIPagingViewController_controlDragWindow];
    if (v29)
    {
      v30 = *&v29[OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews];
      v31 = v29;
      v32 = [v30 objectEnumerator];
      sub_21EAA8FB0();

      sub_21EAA83D0();
      while (v52)
      {
        sub_21EA51D48(&aBlock, &v49);
        type metadata accessor for ControlIconDragPreview();
        if (swift_dynamicCast())
        {
          v33 = v48;
          [*&v48[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView] setEditing:0 animated:1];
        }

        sub_21EAA83D0();
      }

      (*(v47 + 8))(v4, v2);
    }

    v34 = OBJC_IVAR___CCUIPagingViewController_iconModel;
    swift_beginAccess();
    [*&v1[v34] saveIconStateIfNeeded];
    sub_21EA75F18();
    [v1 loadViewIfNeeded];
    v35 = *&v1[v19];
    if (!v35)
    {
      goto LABEL_38;
    }

    v36 = [v35 folder];
    if (!v36)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v37 = v36;
    objc_opt_self();
    v38 = swift_dynamicCastObjCClassUnconditional();
    v53 = sub_21EA727A0;
    v54 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v51 = sub_21EA9E8D0;
    v52 = &block_descriptor_404;
    v39 = _Block_copy(&aBlock);

    [v38 enumerateAllIconsWithOptions:1 usingBlock:v39];
    _Block_release(v39);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      [v1 loadViewIfNeeded];
      v40 = *&v1[v19];
      if (v40)
      {
        v41 = [v40 folderView];
        *&v41[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_iconViewConfigurationOptions] |= 4uLL;
        v42 = swift_allocObject();
        *(v42 + 16) = v41;
        v53 = sub_21EA87DD8;
        v54 = v42;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v51 = sub_21EA89FE0;
        v52 = &block_descriptor_410;
        v43 = _Block_copy(&aBlock);
        v44 = v41;

        [v44 enumerateIconListViewsUsingBlock_];

        _Block_release(v43);
        v45 = *&v1[OBJC_IVAR___CCUIPagingViewController_controlsGalleryViewController];
        *&v1[OBJC_IVAR___CCUIPagingViewController_controlsGalleryViewController] = 0;

        return;
      }

LABEL_40:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }
}

id sub_21EA727A0()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setFolderCancelable_];
  }

  return result;
}

uint64_t sub_21EA72858(char a1)
{
  v2 = v1;
  v4 = sub_21EAA8CD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21EAA8D10();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = sub_21EA71DAC();
  v14 = v13;
  if (a1)
  {
    if (v13)
    {
      v15 = v12;
      if (qword_27CEDBBE0 != -1)
      {
        swift_once();
      }

      v16 = sub_21EAA8790();
      __swift_project_value_buffer(v16, qword_27CEDC738);

      v17 = sub_21EAA8760();
      v18 = sub_21EAA9000();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock[0] = v20;
        *v19 = 136446210;
        v21 = sub_21E9FE748(v15, v14, aBlock);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_21E9F5000, v17, v18, "Disallowing editing: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x223D68580](v20, -1, -1);
        MEMORY[0x223D68580](v19, -1, -1);
      }

      else
      {
      }

      v30 = sub_21EA71CE8();
      [v30 notificationOccurred_];

      *(v11 + 16) = 0;
      v23 = &v2[OBJC_IVAR___CCUIPagingViewController__isEditing];
      if ((v2[OBJC_IVAR___CCUIPagingViewController__isEditing] & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if ((v1[OBJC_IVAR___CCUIPagingViewController__isEditing] & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
  }

  v22 = *(v11 + 16);
  v23 = &v1[OBJC_IVAR___CCUIPagingViewController__isEditing];
  if (v22 == v1[OBJC_IVAR___CCUIPagingViewController__isEditing])
  {
    goto LABEL_17;
  }

  if ((v22 & 1) == 0)
  {
LABEL_16:
    *v23 = 0;
    sub_21EA71EDC();
    goto LABEL_17;
  }

LABEL_11:
  v32 = v5;
  if (qword_27CEDBC18 != -1)
  {
    swift_once();
  }

  v24 = qword_27CEDCF80;
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = v11;
  aBlock[4] = sub_21EA83EBC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21EA87FF0;
  aBlock[3] = &block_descriptor_108_0;
  v26 = _Block_copy(aBlock);
  v31 = v24;
  v27 = v2;

  sub_21EAA8CF0();
  v34 = MEMORY[0x277D84F90];
  sub_21EA87D30(&qword_28125B890, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40);
  sub_21EA87D78(&qword_28125B860, &unk_27CEDCC40);
  sub_21EAA9340();
  v28 = v31;
  MEMORY[0x223D66E90](0, v10, v7, v26);
  _Block_release(v26);

  (*(v32 + 8))(v7, v4);
  (*(v33 + 8))(v10, v8);
}

void sub_21EA72D78(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  v6[4] = sub_21EA87D28;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_21EA96770;
  v6[3] = &block_descriptor_401;
  v5 = _Block_copy(v6);

  SBSRequestPasscodeUnlockAlertUI();
  _Block_release(v5);
}

void sub_21EA72E70(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = *(a3 + 16) & a1;
    swift_beginAccess();
    *(a3 + 16) = v7 & 1;
    if ((v7 & 1) != v6[OBJC_IVAR___CCUIPagingViewController__isEditing])
    {
      v6[OBJC_IVAR___CCUIPagingViewController__isEditing] = v7 & 1;
      sub_21EA71EDC();
    }
  }
}

uint64_t sub_21EA72F24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC630);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v69 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD080);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = MEMORY[0x277D84F90];
  v4 = sub_21EAA9110();
  v76 = "checkInvalidModules()";
  sub_21EAA86C0();
  v75 = "enterControlsExtension";
  sub_21EAA86C0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v8 = (v6 + 56);
  (v7)(v2, 0, 1, v5);
  sub_21EAA86E0();
  v9 = sub_21EAA9100();
  v10 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v11 = v9;
  v12 = sub_21EAA8DC0();
  v13 = [v10 initWithExtensionIdentity:v11 kind:v12 intent:0];
  v80 = v11;

  v14 = v13;
  MEMORY[0x223D66C60]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21EAA8EE0();
  }

  v79 = v14;
  sub_21EAA8EF0();
  sub_21EAA86C0();
  sub_21EAA86C0();
  v81 = v5;
  v15 = v5;
  v16 = v7;
  (v7)(v2, 0, 1, v15);
  sub_21EAA86E0();
  v17 = sub_21EAA9100();
  v18 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v19 = v17;
  v20 = sub_21EAA8DC0();
  v21 = [v18 initWithExtensionIdentity:v19 kind:v20 intent:0];
  v78 = v19;

  v22 = v21;
  MEMORY[0x223D66C60]();
  v23 = v4;
  v24 = v8;
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21EAA8EE0();
  }

  v77 = v22;
  sub_21EAA8EF0();
  v25 = [v74 traitCollection];
  v26 = [v25 userInterfaceIdiom];

  if (v26 == 1)
  {
    sub_21EAA86C0();
    sub_21EAA86C0();
    (v16)(v2, 0, 1, v81);
    sub_21EAA86E0();
    v27 = sub_21EAA9100();
    v28 = objc_allocWithZone(MEMORY[0x277CFA228]);
    v29 = v27;
    v30 = sub_21EAA8DC0();
    v31 = [v28 initWithExtensionIdentity:v29 kind:v30 intent:0];

    v32 = v31;
    MEMORY[0x223D66C60]();
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21EAA8EE0();
    }

    sub_21EAA8EF0();
  }

  sub_21EAA86C0();
  sub_21EAA86C0();
  v33 = v81;
  (v16)(v2, 0, 1, v81);
  sub_21EAA86E0();
  v34 = sub_21EAA9100();
  v35 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v36 = v23;
  v37 = v34;
  v38 = sub_21EAA8DC0();
  v39 = [v35 initWithExtensionIdentity:v37 kind:v38 intent:0];
  v74 = v37;

  v40 = v39;
  MEMORY[0x223D66C60]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21EAA8EE0();
  }

  v73 = v40;
  sub_21EAA8EF0();
  sub_21EAA86C0();
  sub_21EAA86C0();
  v75 = v16;
  v76 = v24;
  (v16)(v2, 0, 1, v33);
  sub_21EAA86E0();
  v41 = sub_21EAA9100();
  v42 = v36;
  v43 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v44 = v41;
  v45 = sub_21EAA8DC0();
  v46 = [v43 initWithExtensionIdentity:v44 kind:v45 intent:0];

  v47 = v46;
  MEMORY[0x223D66C60]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21EAA8EE0();
  }

  v72 = v47;
  sub_21EAA8EF0();
  v48 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v49 = v44;
  v50 = sub_21EAA8DC0();
  v51 = [v48 initWithExtensionIdentity:v49 kind:v50 intent:0];
  v71 = v49;

  v52 = v51;
  MEMORY[0x223D66C60]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21EAA8EE0();
  }

  v70 = v52;
  sub_21EAA8EF0();
  sub_21EAA86C0();
  sub_21EAA86C0();
  v53 = v81;
  v54 = v75;
  (v75)(v2, 0, 1, v81);
  sub_21EAA86E0();
  v55 = sub_21EAA9100();
  v56 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v69 = v42;
  v57 = v56;
  v58 = v55;
  v59 = sub_21EAA8DC0();
  v60 = [v57 initWithExtensionIdentity:v58 kind:v59 intent:0];

  v61 = v60;
  MEMORY[0x223D66C60]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21EAA8EE0();
  }

  sub_21EAA8EF0();
  sub_21EAA86C0();
  sub_21EAA86C0();
  (v54)(v2, 0, 1, v53);
  sub_21EAA86E0();
  v62 = sub_21EAA9100();
  v63 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v64 = v62;
  v65 = sub_21EAA8DC0();
  v66 = [v63 initWithExtensionIdentity:v64 kind:v65 intent:0];

  v67 = v66;
  MEMORY[0x223D66C60]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21EAA8EE0();
  }

  sub_21EAA8EF0();

  return v82;
}

void _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0()
{
  v1 = OBJC_IVAR___CCUIPagingViewController_endEditingTimerSuppressionReasons;
  swift_beginAccess();
  if (!*(*&v0[v1] + 16))
  {
    v2 = OBJC_IVAR___CCUIPagingViewController_endEditingTimer;
    v3 = *&v0[OBJC_IVAR___CCUIPagingViewController_endEditingTimer];
    if (v3)
    {
      [v3 invalidate];
      v4 = *&v0[v2];
      *&v0[v2] = 0;
    }

    if ([v0 isEditing])
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_21EA879D4;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA4FFB0;
      aBlock[3] = &block_descriptor_354;
      v7 = _Block_copy(aBlock);

      v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:30.0];
      _Block_release(v7);
      [v8 setTolerance_];
      v9 = *&v0[v2];
      *&v0[v2] = v8;
    }
  }
}

void sub_21EA73C50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setEditing_];
  }
}

void sub_21EA73CF8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CCUIPagingViewController_endEditingTimerSuppressionReasons;
  swift_beginAccess();
  v6 = *(v2 + v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_21EA48368(0, *(v6 + 2) + 1, 1, v6);
    *(v2 + v5) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_21EA48368((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = a1;
  *(v10 + 5) = a2;
  *(v2 + v5) = v6;
  swift_endAccess();
  v11 = OBJC_IVAR___CCUIPagingViewController_endEditingTimer;
  [*(v2 + OBJC_IVAR___CCUIPagingViewController_endEditingTimer) invalidate];
  v12 = *(v2 + v11);
  *(v2 + v11) = 0;
}

void sub_21EA73E04(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CCUIPagingViewController_endEditingTimerSuppressionReasons;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 40);
    while (1)
    {
      v10 = *(v9 - 1) == a1 && *v9 == a2;
      if (v10 || (sub_21EAA9530() & 1) != 0)
      {
        break;
      }

      ++v8;
      v9 += 2;
      if (v7 == v8)
      {
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    sub_21EA625FC(v8);
    swift_endAccess();
  }

LABEL_11:
  _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
}

id sub_21EA73EF0(uint64_t a1)
{
  v3 = sub_21EAA85F0();
  v4 = *(v3 - 8);
  (MEMORY[0x28223BE20])();
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD078);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  [v1 loadViewIfNeeded];
  v14 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  result = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  result = [result folder];
  if (!result)
  {
    return result;
  }

  v16 = result;
  v17 = [result indexPathForIcon_];
  if (v17)
  {
    v18 = v17;
    sub_21EAA85E0();

    (*(v4 + 56))(v11, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3);
  }

  sub_21EA83E1C(v11, v13);
  sub_21EA48990(v13, v8, &qword_27CEDD078);
  if ((*(v4 + 48))(v8, 1, v3) != 1)
  {
    (*(v4 + 32))(v44, v8, v3);
    v24 = sub_21EA75998();
    v25 = v23;
    if (v23)
    {
      v26 = [v23 displayedIconViewForIcon_];
      if (v26)
      {
        v27 = v26;
        [v26 setAllowsEditingAnimation_];
        [v25 markIcon:a1 asNeedingAnimation:0];
      }
    }

    v43 = v16;
    v41 = v25;
    if (v24)
    {
      v28 = [v24 startCoalescingContentChangesForReason_];
    }

    else
    {
      v28 = 0;
    }

    v42 = v24;
    result = [v1 loadViewIfNeeded];
    v29 = *&v1[v14];
    if (v29)
    {
      v30 = [objc_opt_self() gridCellInfoOptionsWithInterfaceOrientation:objc_msgSend(v29 reversedLayout:{sel_orientation), 0}];
      [v1 loadViewIfNeeded];
      result = *&v1[v14];
      if (result)
      {
        v31 = [result folder];
        [v31 removeIcon:a1 options:26214400 listGridCellInfoOptions:v30];

        v32 = OBJC_IVAR___CCUIPagingViewController_iconModel;
        swift_beginAccess();
        [*&v1[v32] saveIconStateIfNeeded];
        v33 = v41;
        if (v28)
        {
          [v28 invalidate];
        }

        objc_opt_self();
        v34 = swift_dynamicCastObjCClass();
        v36 = v42;
        v35 = v43;
        if (v34 && [v34 activeDataSource])
        {
          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (v37)
          {
            v38 = *&v1[OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager];
            v39 = [v37 uniqueIdentifier];
            if (!v39)
            {
              sub_21EAA8E00();
              v39 = sub_21EAA8DC0();
              v36 = v42;
            }

            [v38 removeModuleWithUniqueIdentifier_];
            swift_unknownObjectRelease();

            v35 = v43;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        [v1 layoutIconListsWithAnimationType:1 forceRelayout:0];

        swift_unknownObjectRelease();
        (*(v4 + 8))(v44, v3);
        return sub_21EA488A0(v13, &qword_27CEDD078);
      }

LABEL_34:
      __break(1u);
      return result;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_21EA488A0(v8, &qword_27CEDD078);
  if (qword_27CEDBBE0 != -1)
  {
    swift_once();
  }

  v19 = sub_21EAA8790();
  __swift_project_value_buffer(v19, qword_27CEDC738);
  v20 = sub_21EAA8760();
  v21 = sub_21EAA8FE0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21E9F5000, v20, v21, "Icon given to removeIcon(for:) not found in root folder", v22, 2u);
    MEMORY[0x223D68580](v22, -1, -1);
  }

  return sub_21EA488A0(v13, &qword_27CEDD078);
}

void *sub_21EA744E4(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  v6 = *&v2[OBJC_IVAR___CCUIPagingViewController_iconViewMap];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = result;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21EA87814;
  *(v8 + 24) = v7;
  v19 = sub_21EA87FE8;
  v20 = v8;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_21E9FEC38;
  v18 = &block_descriptor_272;
  v9 = _Block_copy(&v15);

  v10 = v6;

  [v10 enumerateRecycledViewsUsingBlock_];

  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = [v2 loadViewIfNeeded];
  v11 = *&v2[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = sub_21EA87814;
  *(v12 + 24) = v7;
  v19 = sub_21EA87FE8;
  v20 = v12;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_21E9FEC38;
  v18 = &block_descriptor_279;
  v13 = _Block_copy(&v15);
  v14 = v11;

  [v14 enumerateDisplayedIconViewsUsingBlock_];

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_21EA74790()
{
  result = [v0 loadViewIfNeeded];
  v2 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  v3 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v3)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  *(v3 + OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_allowsIconAdornments) = v0[OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments];
  MEMORY[0x28223BE20](result);
  v9[2] = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21EA879B4;
  *(v4 + 24) = v9;
  result = [v0 loadViewIfNeeded];
  v5 = *&v0[v2];
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_21EA87FEC;
    *(v6 + 24) = v4;
    aBlock[4] = sub_21EA87FE8;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E9FEC38;
    aBlock[3] = &block_descriptor_350;
    v7 = _Block_copy(aBlock);
    v8 = v5;

    [v8 enumerateDisplayedIconViewsUsingBlock_];

    _Block_release(v7);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  __break(1u);
  return result;
}

void sub_21EA7497C(char *a1, char a2)
{
  v15[16] = a2;
  v17 = 0;
  [a1 loadViewIfNeeded];
  v4 = *&a1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = swift_allocObject();
  v5[2] = sub_21EA87DE0;
  v5[3] = v15;
  v5[4] = a1;
  v5[5] = &v17;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21EA87FE0;
  *(v6 + 24) = v5;
  aBlock[4] = sub_21EA87FE8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E9FEC38;
  aBlock[3] = &block_descriptor_429;
  v7 = _Block_copy(aBlock);
  v8 = v4;
  v9 = a1;

  [v8 enumerateDisplayedIconViewsUsingBlock_];

  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (v17 == 1 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {

    return;
  }

  v11 = Strong;
  v12 = [Strong customIconImageViewController];
  if (!v12)
  {

    goto LABEL_10;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    [v14 setWantsSubduedBackground_];

LABEL_10:
    return;
  }
}

void sub_21EA74BD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [a3 removeObjectForKey_];
    if (![a3 count])
    {
      v8 = *&v7[OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource];
      *&v7[OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource] = 0;

      v7 = v8;
    }
  }
}

id sub_21EA74D14(SEL *a1)
{
  [v1 loadViewIfNeeded];
  result = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    v4 = [result folderView];
    v5 = [v4 *a1];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21EA74D8C()
{
  v7 = sub_21EAA90B0();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21EAA90A0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_21EAA8D10();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_21E9F8880(0, &qword_28125B7F0);
  sub_21EAA8D00();
  v8 = MEMORY[0x277D84F90];
  sub_21EA87D30(&qword_27CEDD718, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD720);
  sub_21EA87D78(&qword_27CEDD728, &qword_27CEDD720);
  sub_21EAA9340();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_21EAA90E0();
  qword_27CEDCF80 = result;
  return result;
}

id sub_21EA74FEC()
{
  v1 = OBJC_IVAR___CCUIPagingViewController____lazy_storage___moduleContentMetrics;
  v2 = *&v0[OBJC_IVAR___CCUIPagingViewController____lazy_storage___moduleContentMetrics];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___CCUIPagingViewController____lazy_storage___moduleContentMetrics];
  }

  else
  {
    sub_21EA75050(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_21EA75050(char *a1)
{
  [a1 loadViewIfNeeded];
  v2 = *&a1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = [v2 listLayoutProvider];
  v4 = [type metadata accessor for IconListRootFolderController() iconLocation];
  v5 = [v3 layoutForIconLocation_];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v5 iconImageInfo];
  v7 = v6;
  v8 = 0.0;
  if ([v5 respondsToSelector_])
  {
    [v5 iconSpacingForOrientation_];
    v8 = v9;
  }

  [objc_opt_self() defaultMetricsForGridGeometryInfo_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id _s15ControlCenterUI20PagingViewControllerC017compactModeSourceE03forSo6UIViewCSgSo026CCUIContentModuleContainereF0C_tF_0(void *a1)
{
  v2 = v1;
  v14 = 0;
  result = [v2 loadViewIfNeeded];
  v5 = *&v2[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = &v14;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_21EA87D10;
    *(v7 + 24) = v6;
    aBlock[4] = sub_21EA87FE8;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E9FEC38;
    aBlock[3] = &block_descriptor_394;
    v8 = _Block_copy(aBlock);
    v9 = v5;
    v10 = a1;

    [v9 enumerateDisplayedIconViewsUsingBlock_];

    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v12 = v14;

      return v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21EA75324(void *a1, _BYTE *a2, id a3, void **a4)
{
  v8 = [a1 customIconImageViewController];
  if (v8)
  {
    v9 = v8;

    if (v9 == a3)
    {
      v10 = *a4;
      *a4 = a1;
      v11 = a1;

      *a2 = 1;
    }
  }
}

void sub_21EA753A0(void (*a1)(uint64_t, void *), uint64_t a2)
{
  v3 = v2;
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  [v3 loadViewIfNeeded];
  v6 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v6)
  {
LABEL_13:
    __break(1u);
  }

  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v7[5] = &v18;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21EA87FE0;
  *(v8 + 24) = v7;
  v17[4] = sub_21EA87FE8;
  v17[5] = v8;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21E9FEC38;
  v17[3] = &block_descriptor_458;
  v9 = _Block_copy(v17);
  v10 = v6;
  v11 = v3;

  [v10 enumerateDisplayedIconViewsUsingBlock_];

  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v18 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
  }

  else
  {
    v13 = Strong;
    v14 = [Strong customIconImageViewController];
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        LOBYTE(v17[0]) = 0;
        a1(v16, v17);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_21EA75610(char a1, void *a2)
{
  v5 = [v2 bs_isAppearingOrAppeared];
  if (a1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v2 loadViewIfNeeded];
  v7 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  v8 = *&v2[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = v5;
  *(v9 + 25) = a1 & 1;
  *(v9 + 32) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21EA87CFC;
  *(v10 + 24) = v9;
  v19[4] = sub_21EA87FE8;
  v19[5] = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_21E9FEC38;
  v19[3] = &block_descriptor_384;
  v11 = _Block_copy(v19);
  v12 = a2;

  v13 = v8;

  [v13 enumerateDisplayedIconViewsUsingBlock_];

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v2 loadViewIfNeeded];
  v14 = *&v2[v7];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = [v14 folderView];
  v16 = [v15 scalingView];

  [v16 setAlpha_];
  [v2 loadViewIfNeeded];
  v17 = *&v2[v7];
  if (v17)
  {
    v18 = [v17 pageControl];
    [v18 setAlpha_];

    return;
  }

LABEL_12:
  __break(1u);
}

void sub_21EA75888(void *a1, double a2, uint64_t a3, id a4, char a5, char a6)
{
  v11 = [a1 customIconImageViewController];
  if (!v11)
  {
    return;
  }

  if (v11 != a4)
  {
    v12 = v11;
    if (a5)
    {
      [v11 ccui:(a6 & 1) == 0 safelyBeginAppearanceTransition:0 animated:?];
      [v12 ccui_safelyEndAppearanceTransition];
    }

    [a1 setAlpha_];
    goto LABEL_10;
  }

  if (a5 & 1) != 0 && (a6)
  {
    v12 = v11;
    [v11 ccui:1 safelyBeginAppearanceTransition:0 animated:?];
    [v12 ccui_safelyEndAppearanceTransition];
LABEL_10:
    v11 = v12;
  }
}

id sub_21EA75998()
{
  v1 = v0;
  v12[1] = *MEMORY[0x277D85DE8];
  [v0 loadViewIfNeeded];
  v2 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  v3 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v3)
  {
    __break(1u);
  }

  v4 = [v3 folder];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_21EAA85D0();
  v12[0] = 0;
  v7 = [v5 folderContainingIndexPath:v6 relativeIndexPath:v12];

  if (!v7)
  {
LABEL_13:

    return v7;
  }

  if (!v12[0])
  {

    return 0;
  }

  v8 = v12[0];
  [v1 loadViewIfNeeded];
  result = *&v1[v2];
  if (result)
  {
    v10 = [result folderControllerForFolder_];
    if (v10)
    {
      v11 = v10;
      if ([v10 isOpen])
      {
        [v11 iconListViewForIconListModelIndex_];

        return v7;
      }
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_21EA75B44()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = [v1 folderView];
  v3 = [v2 window];

  if (v3)
  {
    v9 = [v3 windowScene];

    v4 = v9;
    if (v9)
    {
      v5 = OBJC_IVAR___CCUIPagingViewController_controlDragWindow;
      v6 = *&v0[OBJC_IVAR___CCUIPagingViewController_controlDragWindow];
      if (v6)
      {
        v7 = [v6 windowScene];
        if (v7)
        {
          v8 = v7;

          if (v9 == v8)
          {
            return;
          }

          v4 = *&v0[v5];
          *&v0[v5] = 0;
        }

        else
        {
          v4 = v9;
        }
      }
    }
  }
}

void sub_21EA75C68()
{
  v1 = v0;
  v8 = [objc_allocWithZone(MEMORY[0x277CFC9F0]) init];
  sub_21EAA91A0();
  sub_21EA72F24();
  sub_21E9F8880(0, &qword_28125B7D0);
  v2 = sub_21EAA8EB0();

  [v8 setDisallowedControlIdentities_];

  v3 = [objc_allocWithZone(MEMORY[0x277CFC9F8]) initWithConfiguration_];
  v4 = OBJC_IVAR___CCUIPagingViewController_controlsGalleryViewController;
  v5 = *(v0 + OBJC_IVAR___CCUIPagingViewController_controlsGalleryViewController);
  *(v0 + OBJC_IVAR___CCUIPagingViewController_controlsGalleryViewController) = v3;
  v6 = v3;

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v6 setDelegate_];

  v7 = *(v1 + v4);
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v7 setCustomItemsDelegate_];
}

void sub_21EA75DA4(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 presentedViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();

    if (v10)
    {
      v11 = [v4 presentedViewController];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 isBeingDismissed];

        if ((v13 & 1) == 0)
        {
          v14 = [v4 presentedViewController];
          if (v14)
          {
            v15 = v14;
            if (a2)
            {
              v16[4] = a2;
              v16[5] = a3;
              v16[0] = MEMORY[0x277D85DD0];
              v16[1] = 1107296256;
              v16[2] = sub_21EA87FF0;
              v16[3] = &block_descriptor_436;
              a2 = _Block_copy(v16);
            }

            [v15 dismissViewControllerAnimated:a1 & 1 completion:a2];
            _Block_release(a2);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_21EA75F18()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = [v1 folder];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 leafIcons];

    sub_21E9F8880(0, &qword_28125B848);
    sub_21E9FBE14(&qword_28125B840, &qword_28125B848);
    v5 = sub_21EAA8F60();

    v6 = v0;
    sub_21EA82CB8(v5);
    v8 = v7;

    v9 = v8 >> 62;
    if (v8 >> 62)
    {
      if (sub_21EAA9380())
      {
LABEL_5:
        v10 = objc_allocWithZone(MEMORY[0x277CFA1F0]);
        sub_21EAA9190();
        v11 = sub_21EAA8EB0();
        v36 = [v10 initWithControlItems_];

        v12 = OBJC_IVAR___CCUIPagingViewController_controlHost;
        v13 = *&v6[OBJC_IVAR___CCUIPagingViewController_controlHost];
        if (v13)
        {
          v14 = qword_28125B8E8;
          v15 = v13;
          if (v14 != -1)
          {
            swift_once();
          }

          v16 = sub_21EAA8790();
          __swift_project_value_buffer(v16, qword_28125B8F0);

          v17 = sub_21EAA8760();
          v18 = sub_21EAA9000();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 134217984;
            if (v9)
            {
              v20 = sub_21EAA9380();
            }

            else
            {
              v20 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v19 + 4) = v20;

            _os_log_impl(&dword_21E9F5000, v17, v18, "updating control host: %ld items", v19, 0xCu);
            MEMORY[0x223D68580](v19, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          [v15 setConfiguration:v36, v36];
        }

        else
        {
          if (qword_28125B8E8 != -1)
          {
            swift_once();
          }

          v21 = sub_21EAA8790();
          __swift_project_value_buffer(v21, qword_28125B8F0);

          v22 = sub_21EAA8760();
          v23 = sub_21EAA9000();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 134217984;
            if (v9)
            {
              v25 = sub_21EAA9380();
            }

            else
            {
              v25 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v24 + 4) = v25;

            _os_log_impl(&dword_21E9F5000, v22, v23, "creating control host: %ld items", v24, 0xCu);
            MEMORY[0x223D68580](v24, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          sub_21EAA8E30();
          v26 = objc_allocWithZone(MEMORY[0x277CFA220]);
          v37 = v36;
          v27 = sub_21EAA8DC0();

          v28 = [v26 initWithIdentifier:v27 configuration:v37];

          v29 = *&v6[v12];
          *&v6[v12] = v28;
          v15 = v28;

          if ([v6 bs_isAppearingOrAppeared])
          {
            sub_21EA7649C();
          }
        }

LABEL_31:

        return;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v30 = OBJC_IVAR___CCUIPagingViewController_controlHost;
    v31 = *&v6[OBJC_IVAR___CCUIPagingViewController_controlHost];
    if (!v31)
    {
      return;
    }

    v37 = v31;
    sub_21EA764B0();
    [v37 invalidate];
    v32 = *&v6[v30];
    *&v6[v30] = 0;

    if (qword_28125B8E8 != -1)
    {
      swift_once();
    }

    v33 = sub_21EAA8790();
    __swift_project_value_buffer(v33, qword_28125B8F0);
    v15 = sub_21EAA8760();
    v34 = sub_21EAA9000();
    if (os_log_type_enabled(v15, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21E9F5000, v15, v34, "invalidating control host", v35, 2u);
      MEMORY[0x223D68580](v35, -1, -1);
    }

    goto LABEL_31;
  }
}

void sub_21EA764C4(SEL *a1, const char *a2)
{
  v3 = *(v2 + OBJC_IVAR___CCUIPagingViewController_controlHost);
  if (v3)
  {
    v10 = v3;
    [v10 *a1];
    if (qword_28125B8E8 != -1)
    {
      swift_once();
    }

    v6 = sub_21EAA8790();
    __swift_project_value_buffer(v6, qword_28125B8F0);
    v7 = sub_21EAA8760();
    v8 = sub_21EAA9000();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21E9F5000, v7, v8, a2, v9, 2u);
      MEMORY[0x223D68580](v9, -1, -1);
    }
  }
}

uint64_t sub_21EA765F0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_21EAA93B0();
  }

  else if (*(a2 + 16) && (sub_21E9F8880(0, &qword_28125B848), v5 = sub_21EAA9200(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_21EAA9210();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_21EA76708()
{
  v1 = v0;
  v2 = sub_21EAA8790();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR___CCUIPagingViewController_isFinishedRunningFirstUnlockTasks))
  {
    v6 = OBJC_IVAR___CCUIPagingViewController_pagingDelegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      if (qword_28125B8C0 == -1)
      {
LABEL_13:
        __swift_project_value_buffer(v2, qword_28125B8C8);
        v15 = sub_21EAA8760();
        v16 = sub_21EAA9000();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_21E9F5000, v15, v16, "Skip invalid control checking because of nil pagingDelegate.", v17, 2u);
          MEMORY[0x223D68580](v17, -1, -1);
        }

        return;
      }

LABEL_76:
      swift_once();
      goto LABEL_13;
    }

    if ([Strong isSystemRestoringForPagingViewController_])
    {
      if (qword_28125B8C0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_28125B8C8);
      v8 = sub_21EAA8760();
      v9 = sub_21EAA9000();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_21E9F5000, v8, v9, "Skip invalid control checking because system is restoring.", v10, 2u);
        MEMORY[0x223D68580](v10, -1, -1);
      }

      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
    if (qword_28125B8C0 != -1)
    {
      swift_once();
    }

    v87 = __swift_project_value_buffer(v2, qword_28125B8C8);
    v18 = sub_21EAA8760();
    v19 = sub_21EAA9000();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21E9F5000, v18, v19, "Check for invalid controls.", v20, 2u);
      MEMORY[0x223D68580](v20, -1, -1);
    }

    v21 = OBJC_IVAR___CCUIPagingViewController_iconModel;
    swift_beginAccess();
    v2 = [*(v1 + v21) leafIcons];
    v22 = sub_21E9F8880(0, &qword_28125B848);
    sub_21E9FBE14(&qword_28125B840, &qword_28125B848);
    v23 = sub_21EAA8F60();

    v98 = MEMORY[0x277D84F90];
    if ((v23 & 0xC000000000000001) != 0)
    {
      sub_21EAA9370();
      sub_21EAA8F90();
      v23 = v99[0];
      v25 = v99[1];
      v26 = v99[2];
      v27 = v99[3];
      v28 = v99[4];
    }

    else
    {
      v27 = 0;
      v29 = -1 << *(v23 + 32);
      v25 = v23 + 56;
      v26 = ~v29;
      v30 = -v29;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v28 = v31 & *(v23 + 56);
    }

    v88 = v26;
    v32 = (v26 + 64) >> 6;
    v89 = MEMORY[0x277D84F90];
    *&v24 = 136315138;
    v85 = v24;
    v93 = v23;
    v94 = v25;
LABEL_27:
    v33 = v27;
    if (v23 < 0)
    {
      goto LABEL_34;
    }

LABEL_28:
    v34 = v33;
    v35 = v28;
    v27 = v33;
    if (!v28)
    {
      while (1)
      {
        v27 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v27 >= v32)
        {
          goto LABEL_67;
        }

        v35 = *(v25 + 8 * v27);
        ++v34;
        if (v35)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_76;
    }

LABEL_32:
    v95 = (v35 - 1) & v35;
    v2 = *(*(v23 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v35)))));
    if (v2)
    {
      while (1)
      {
        v37 = [v2 iconDataSources];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD6F8);
        v38 = sub_21EAA8EC0();

        if (v38 >> 62)
        {
          v39 = sub_21EAA9380();
          if (v39)
          {
LABEL_41:
            v79 = v22;
            if (v39 < 1)
            {
              goto LABEL_80;
            }

            v40 = 0;
            v92 = v38 & 0xC000000000000001;
            v83 = OBJC_IVAR___CCUIPagingViewController_controlDescriptorProvider;
            v86 = v6;
            v91 = v39;
            while (2)
            {
              if (v92)
              {
                MEMORY[0x223D67210](v40, v38);
              }

              else
              {
                swift_unknownObjectRetain();
              }

              objc_opt_self();
              v41 = swift_dynamicCastObjCClass();
              if (v41)
              {
                v42 = v41;
                v43 = [v41 containerBundleIdentifier];
                if (v43)
                {
                  v44 = v43;
                  v45 = swift_unknownObjectWeakLoadStrong();
                  if (v45)
                  {
                    v90 = v45;
                    v46 = [v45 pagingViewController:v1 shouldPauseCheckingInvalidControlsForApplicationIdentifier:v44];

                    if (v46)
                    {
                      swift_unknownObjectRetain();
                      v47 = sub_21EAA8760();
                      v48 = sub_21EAA9000();
                      swift_unknownObjectRelease();
                      v84 = v47;
                      if (os_log_type_enabled(v47, v48))
                      {
                        v49 = swift_slowAlloc();
                        v81 = v49;
                        v82 = swift_slowAlloc();
                        v97 = v82;
                        *v49 = v85;
                        v50 = [v42 extensionBundleIdentifier];
                        v51 = sub_21EAA8E00();
                        v80 = v48;
                        v52 = v51;
                        v54 = v53;

                        v55 = sub_21E9FE748(v52, v54, &v97);

                        v56 = v81;
                        *(v81 + 1) = v55;
                        v57 = v80;
                        v58 = v84;
                        v59 = v84;
                        v60 = "Skip invalid control checking for %s because container app is installing.";
                        goto LABEL_63;
                      }

LABEL_64:
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v61 = [*(v1 + v83) descriptorFor_];
                      if (v61)
                      {
                        v62 = v61;
                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v63 = v2;
                        MEMORY[0x223D66C60]();
                        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                        {
                          v89 = v63;
                          sub_21EAA8EE0();
                        }

                        sub_21EAA8EF0();
                        v89 = v98;
                        swift_unknownObjectRetain();
                        v64 = sub_21EAA8760();
                        v65 = sub_21EAA9000();
                        swift_unknownObjectRelease();
                        v84 = v64;
                        if (!os_log_type_enabled(v64, v65))
                        {
                          goto LABEL_64;
                        }

                        v66 = swift_slowAlloc();
                        v81 = v66;
                        v82 = swift_slowAlloc();
                        v97 = v82;
                        *v66 = v85;
                        v67 = [v42 extensionBundleIdentifier];
                        v68 = sub_21EAA8E00();
                        v80 = v65;
                        v69 = v68;
                        v71 = v70;

                        v72 = sub_21E9FE748(v69, v71, &v97);

                        v56 = v81;
                        *(v81 + 1) = v72;
                        v57 = v80;
                        v58 = v84;
                        v59 = v84;
                        v60 = "Remove control %s for no control descriptor.";
LABEL_63:
                        _os_log_impl(&dword_21E9F5000, v59, v57, v60, v56, 0xCu);
                        v73 = v82;
                        __swift_destroy_boxed_opaque_existential_1(v82);
                        MEMORY[0x223D68580](v73, -1, -1);
                        MEMORY[0x223D68580](v56, -1, -1);
                        swift_unknownObjectRelease();

                        swift_unknownObjectRelease();
                      }
                    }

                    v6 = v86;
                  }

                  else
                  {
                    swift_unknownObjectRelease();
                  }
                }

                else
                {
                  swift_unknownObjectRelease();
                }

                v39 = v91;
              }

              else
              {
                swift_unknownObjectRelease();
              }

              if (v39 == ++v40)
              {

                v22 = v79;
                v23 = v93;
                v25 = v94;
                v28 = v95;
                goto LABEL_27;
              }

              continue;
            }
          }
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v39)
          {
            goto LABEL_41;
          }
        }

        v33 = v27;
        v25 = v94;
        v28 = v95;
        v23 = v93;
        if ((v93 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_34:
        v36 = sub_21EAA93A0();
        if (v36)
        {
          v96 = v36;
          swift_dynamicCast();
          v2 = v97;
          v27 = v33;
          v95 = v28;
          if (v97)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_67:
    sub_21E9FBFD4();
    v74 = v89;
    if (v89 >> 62)
    {
      v75 = sub_21EAA9380();
      if (v75)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v75 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
LABEL_69:
        if (v75 >= 1)
        {
          for (i = 0; i != v75; ++i)
          {
            if ((v74 & 0xC000000000000001) != 0)
            {
              v77 = MEMORY[0x223D67210](i, v74);
            }

            else
            {
              v77 = *(v74 + 8 * i + 32);
            }

            v78 = v77;
            sub_21EA73EF0(v77);
          }

          goto LABEL_78;
        }

        __break(1u);
LABEL_80:
        __break(1u);
        return;
      }
    }

LABEL_78:

    return;
  }

  sub_21EAA8750();
  v11 = sub_21EAA8760();
  v12 = sub_21EAA9000();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v99[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_21E9FE748(0xD000000000000016, 0x800000021EABE160, v99);
    _os_log_impl(&dword_21E9F5000, v11, v12, "Awaiting first unlock, skipping %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223D68580](v14, -1, -1);
    MEMORY[0x223D68580](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}