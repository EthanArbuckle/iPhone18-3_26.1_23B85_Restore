uint64_t sub_1AB247754()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437628);
  result = sub_1AB461594();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1AB4620A4();
      sub_1AB460684();
      result = sub_1AB462104();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AB2479B4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439020);
  result = sub_1AB461594();
  v4 = result;
  if (*(v2 + 16))
  {
    v34 = v1;
    v35 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v36 = result;
    while (v9)
    {
      v15 = __clz(__rbit64(v9));
      v38 = (v9 - 1) & v9;
LABEL_15:
      v18 = (*(v2 + 48) + 56 * (v15 | (v5 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      v37 = v18[4];
      v40 = v18[5];
      v41 = v18[6];
      sub_1AB4620A4();
      v39 = v20;
      if (v19)
      {
        sub_1AB4620C4();
        v23 = v19;
        sub_1AB460684();
      }

      else
      {
        v23 = 0;
        sub_1AB4620C4();
      }

      v24 = v22;
      v25 = v21;
      sub_1AB460684();
      sub_1AB4620C4();
      if (v41)
      {
        sub_1AB460684();
      }

      result = sub_1AB462104();
      v4 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v13 = v39;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v13 = v39;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v14 = (*(v36 + 48) + 56 * v12);
      *v14 = v13;
      v14[1] = v23;
      v14[2] = v24;
      v14[3] = v25;
      v9 = v38;
      v14[4] = v37;
      v14[5] = v40;
      v14[6] = v41;
      ++*(v36 + 16);
      v2 = v35;
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v5 >= v10)
      {
        break;
      }

      v17 = v6[v5];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v2 + 32);
    if (v33 >= 64)
    {
      bzero(v6, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v33;
    }

    v1 = v34;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AB247CDC()
{
  v1 = v0;
  v35 = sub_1AB45F764();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439000);
  result = sub_1AB461594();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1AB24B468(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
      result = sub_1AB460444();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_1AB248038()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438FF0);
  result = sub_1AB461594();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    for (i = (v6 + 63) >> 6; v8; ++*(v3 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = *(v1 + 48) + 72 * (v10 | (v4 << 6));
      v18 = *(v13 + 32);
      v19 = *(v13 + 48);
      v16 = *v13;
      v17 = *(v13 + 16);
      v20 = *(v13 + 64);
      sub_1AB4620A4();
      sub_1AB3ADEDC();
      sub_1AB462104();
      result = sub_1AB461514();
      *(v3 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v3 + 48) + 72 * result;
      *(v14 + 32) = v18;
      *(v14 + 48) = v19;
      *(v14 + 64) = v20;
      *v14 = v16;
      *(v14 + 16) = v17;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return result;
      }

      if (v4 >= i)
      {
        break;
      }

      v12 = v5[v4];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    v15 = 1 << *(v1 + 32);
    if (v15 >= 64)
    {
      bzero((v1 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v15;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1AB248270()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE8);
  result = sub_1AB461594();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1AB4620A4();
      MEMORY[0x1AC59D3F0](v16);
      result = sub_1AB462104();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AB2484C0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439010);
  result = sub_1AB461594();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1AB4620A4();
      if (v16)
      {
        MEMORY[0x1AC59D3F0](0);
        v17 = v16;
      }

      else
      {
        v17 = 1;
      }

      MEMORY[0x1AC59D3F0](v17);
      result = sub_1AB462104();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AB248728()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439008);
  result = sub_1AB461594();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = sub_1AB461524();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AB248988(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](a2);
  v6 = sub_1AB462104();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;

    sub_1AB249A10(v11, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1AB248AF4(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AB4620A4();
  sub_1AB163324(v16, a2);
  v6 = sub_1AB462104();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      sub_1AB172D0C(v10, a2);
      v12 = v11;

      if (v12)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *v2;

    sub_1AB249B68(v14, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v16[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1AB248C34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1AB4620A4();
  sub_1AB460684();
  v8 = sub_1AB462104();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1AB461DA4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1AB249CD8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1AB248D84(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v6 = *a2;
  v5 = a2[1];
  sub_1AB4620A4();
  v42 = v5;
  sub_1AB4620C4();
  if (v5)
  {
    sub_1AB460684();
  }

  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[5];
  v10 = a2[6];
  sub_1AB460684();
  sub_1AB4620C4();
  if (v10)
  {
    sub_1AB460684();
  }

  v37 = a2;
  v11 = sub_1AB462104();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = v11 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v40 = v6;
    v41 = v10;
    v39 = v9;
    v15 = ~v13;
    v35 = v4;
    v16 = *(v4 + 48);
    v17 = v42;
    do
    {
      v18 = (v16 + 56 * v14);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[5];
      v22 = v18[6];
      if (v18[2] != v7 || v18[3] != v8)
      {
        v24 = sub_1AB461DA4();
        v17 = v42;
        if ((v24 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      if (v20)
      {
        if (!v17)
        {
          goto LABEL_8;
        }

        if (v19 != v40 || v20 != v17)
        {
          v26 = sub_1AB461DA4();
          v17 = v42;
          if ((v26 & 1) == 0)
          {
            goto LABEL_8;
          }
        }
      }

      else if (v17)
      {
        goto LABEL_8;
      }

      if (v22)
      {
        if (v41)
        {
          v27 = v21 == v39 && v22 == v41;
          if (v27 || (v28 = sub_1AB461DA4(), v17 = v42, (v28 & 1) != 0))
          {
LABEL_30:
            sub_1AB1B0358(v37);
            v29 = *(v35 + 48) + 56 * v14;
            v30 = *(v29 + 24);
            v31 = *(v29 + 48);
            *a1 = *v29;
            *(a1 + 8) = *(v29 + 8);
            *(a1 + 24) = v30;
            *(a1 + 32) = *(v29 + 32);
            *(a1 + 48) = v31;

            return 0;
          }
        }
      }

      else if (!v41)
      {
        goto LABEL_30;
      }

LABEL_8:
      v14 = (v14 + 1) & v15;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v36;
  sub_1AB077970(v37, v44);
  sub_1AB249E58(v37, v14, isUniquelyReferenced_nonNull_native);
  *v36 = v43;
  v34 = *(v37 + 16);
  *a1 = *v37;
  *(a1 + 16) = v34;
  *(a1 + 32) = *(v37 + 32);
  *(a1 + 48) = *(v37 + 48);
  return 1;
}

uint64_t sub_1AB249050(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1AB24B468(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  v33 = a2;
  v11 = sub_1AB460444();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1AB24B468(&qword_1ED4D1AE8, MEMORY[0x1E6968FB0]);
      v21 = sub_1AB460504();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1AB24A100(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1AB249330(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 48);
  v58 = *(a2 + 32);
  *v59 = v5;
  *&v59[16] = *(a2 + 64);
  v6 = *(a2 + 16);
  v56 = *a2;
  v57 = v6;
  sub_1AB4620A4();
  sub_1AB3ADEDC();
  v7 = sub_1AB462104();
  v8 = v4 + 56;
  v52 = v4;
  v9 = -1 << *(v4 + 32);
  v10 = v7 & ~v9;
  v46 = a2;
  if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_63:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v54[0] = *v45;
    sub_1AB09DF1C(v46, &v56);
    sub_1AB24A3A4(v46, v10, isUniquelyReferenced_nonNull_native);
    *v45 = *&v54[0];
    v35 = *(v46 + 48);
    *(a1 + 32) = *(v46 + 32);
    *(a1 + 48) = v35;
    *(a1 + 64) = *(v46 + 64);
    v36 = *(v46 + 16);
    result = 1;
    *a1 = *v46;
    *(a1 + 16) = v36;
    return result;
  }

  v51 = ~v9;
  v11 = *(a2 + 32);
  v49 = *(a2 + 40);
  v12 = *a2;
  v13 = *(a2 + 8);
  if (*(a2 + 16))
  {
    v14 = 0x6469746E65696C63;
  }

  else
  {
    v14 = 0x646972657375;
  }

  v44 = *(a2 + 56);
  if (*(a2 + 16))
  {
    v15 = 0xE800000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  v50 = *(a2 + 24);
  v48 = *(a2 + 48);
  while (1)
  {
    v16 = *(v52 + 48) + 72 * v10;
    v56 = *v16;
    v18 = *(v16 + 32);
    v17 = *(v16 + 48);
    v19 = *(v16 + 64);
    v57 = *(v16 + 16);
    v58 = v18;
    *&v59[16] = v19;
    *v59 = v17;
    if (v56 != __PAIR128__(v13, v12) && (sub_1AB461DA4() & 1) == 0)
    {
      goto LABEL_11;
    }

    if (v57)
    {
      v20 = 0x6469746E65696C63;
    }

    else
    {
      v20 = 0x646972657375;
    }

    if (v57)
    {
      v21 = 0xE800000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    if (v20 == v14 && v21 == v15)
    {
      sub_1AB09DF1C(&v56, v54);
    }

    else
    {
      v23 = sub_1AB461DA4();
      sub_1AB09DF1C(&v56, v54);

      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v24 = *(*(&v57 + 1) + 16);
    if (v24 != *(v50 + 16))
    {
      goto LABEL_10;
    }

    if (v24 && *(&v57 + 1) != v50)
    {
      v25 = (*(&v57 + 1) + 40);
      v26 = (v50 + 40);
      do
      {
        v27 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
        if (!v27 && (sub_1AB461DA4() & 1) == 0)
        {
          goto LABEL_10;
        }

        v25 += 2;
        v26 += 2;
      }

      while (--v24);
    }

    if (BYTE8(v58))
    {
      if (!v49)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v28 = v49;
      if (*&v58 != v11)
      {
        v28 = 1;
      }

      if (v28)
      {
        goto LABEL_10;
      }
    }

    if (*v59)
    {
      if (!v48)
      {
        goto LABEL_10;
      }

      v29 = *(*v59 + 16);
      if (v29 != *(v48 + 16))
      {
        goto LABEL_10;
      }

      if (v29 && *v59 != v48)
      {
        v30 = (*v59 + 40);
        v31 = (v48 + 40);
        while (1)
        {
          v32 = *(v30 - 1) == *(v31 - 1) && *v30 == *v31;
          if (!v32 && (sub_1AB461DA4() & 1) == 0)
          {
            break;
          }

          v30 += 2;
          v31 += 2;
          if (!--v29)
          {
            goto LABEL_58;
          }
        }

LABEL_10:
        sub_1AB09DEB0(&v56);
        goto LABEL_11;
      }
    }

    else if (v48)
    {
      goto LABEL_10;
    }

LABEL_58:
    if (!*&v59[16])
    {
      if (!*(&v44 + 1))
      {
        break;
      }

      goto LABEL_10;
    }

    if (!*(&v44 + 1))
    {
      goto LABEL_10;
    }

    if (*&v59[8] == v44)
    {
      break;
    }

    v33 = sub_1AB461DA4();
    sub_1AB09DEB0(&v56);
    if (v33)
    {
      goto LABEL_65;
    }

LABEL_11:
    v10 = (v10 + 1) & v51;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  sub_1AB09DEB0(&v56);
LABEL_65:
  sub_1AB09DEB0(v46);
  v38 = *(v52 + 48) + 72 * v10;
  v54[0] = *v38;
  v40 = *(v38 + 32);
  v39 = *(v38 + 48);
  v41 = *(v38 + 64);
  v54[1] = *(v38 + 16);
  v54[2] = v40;
  v55 = v41;
  v54[3] = v39;
  v42 = *(v38 + 48);
  *(a1 + 32) = *(v38 + 32);
  *(a1 + 48) = v42;
  *(a1 + 64) = *(v38 + 64);
  v43 = *(v38 + 16);
  *a1 = *v38;
  *(a1 + 16) = v43;
  sub_1AB09DF1C(v54, v53);
  return 0;
}

uint64_t sub_1AB2497C8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](a2);
  v6 = sub_1AB462104();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1AB24A818(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1AB2498C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1AB461524();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1AB02B4BC(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1AC59C870](v16, a2);
      sub_1AB02B2E4(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1AB02B2E4(a2);
    sub_1AB02B4BC(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB02B4BC(a2, v16);
    v15 = *v3;
    sub_1AB24A964(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1AB249A10(uint64_t result, unint64_t a2, char a3)
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
    sub_1AB2471B8();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1AB244BEC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1AB245958();
  }

  v8 = *v3;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v4);
  result = sub_1AB462104();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E00);
  result = sub_1AB461FB4();
  __break(1u);
  return result;
}

uint64_t sub_1AB249B68(uint64_t result, unint64_t a2, char a3)
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
    sub_1AB247408();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1AB244D50();
      goto LABEL_12;
    }

    sub_1AB245B80();
  }

  v8 = *v3;
  sub_1AB4620A4();
  sub_1AB163324(v18, v5);
  result = sub_1AB462104();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {

      sub_1AB172D0C(v11, v5);
      v13 = v12;

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v5;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AB461FB4();
  __break(1u);
  return result;
}

uint64_t sub_1AB249CD8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1AB247754();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1AB244EA0();
      goto LABEL_16;
    }

    sub_1AB245EA4();
  }

  v10 = *v4;
  sub_1AB4620A4();
  sub_1AB460684();
  result = sub_1AB462104();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1AB461DA4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1AB461FB4();
  __break(1u);
  return result;
}

uint64_t sub_1AB249E58(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v35 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_38;
  }

  if (a3)
  {
    sub_1AB2479B4();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1AB244FFC();
      goto LABEL_38;
    }

    sub_1AB2460DC();
  }

  v8 = *v3;
  v9 = *v5;
  v10 = v5[1];
  sub_1AB4620A4();
  v39 = v10;
  sub_1AB4620C4();
  if (v10)
  {
    sub_1AB460684();
  }

  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[5];
  v14 = v5[6];
  sub_1AB460684();
  sub_1AB4620C4();
  if (v14)
  {
    sub_1AB460684();
  }

  result = sub_1AB462104();
  v15 = v8 + 56;
  v16 = -1 << *(v8 + 32);
  a2 = result & ~v16;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v37 = v9;
    v38 = v14;
    v36 = v13;
    v17 = ~v16;
    v18 = *(v8 + 48);
    v19 = v39;
    do
    {
      v20 = (v18 + 56 * a2);
      v22 = *v20;
      v21 = v20[1];
      result = v20[2];
      v24 = v20[5];
      v23 = v20[6];
      if (result != v11 || v20[3] != v12)
      {
        result = sub_1AB461DA4();
        v19 = v39;
        if ((result & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (v21)
      {
        if (!v19)
        {
          goto LABEL_15;
        }

        if (v22 != v37 || v21 != v19)
        {
          result = sub_1AB461DA4();
          v19 = v39;
          if ((result & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      else if (v19)
      {
        goto LABEL_15;
      }

      if (v23)
      {
        if (v38)
        {
          v27 = v24 == v36 && v23 == v38;
          if (v27 || (result = sub_1AB461DA4(), v19 = v39, (result & 1) != 0))
          {
LABEL_37:
            result = sub_1AB461FB4();
            __break(1u);
            break;
          }
        }
      }

      else if (!v38)
      {
        goto LABEL_37;
      }

LABEL_15:
      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_38:
  v28 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = *(v28 + 48) + 56 * a2;
  v30 = *(v35 + 16);
  *v29 = *v35;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(v35 + 32);
  *(v29 + 48) = *(v35 + 48);
  v31 = *(v28 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v33;
  }

  return result;
}

uint64_t sub_1AB24A100(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AB247CDC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1AB245198();
      goto LABEL_12;
    }

    sub_1AB246614();
  }

  v12 = *v3;
  sub_1AB24B468(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  v13 = sub_1AB460444();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1AB24B468(&qword_1ED4D1AE8, MEMORY[0x1E6968FB0]);
      v21 = sub_1AB460504();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
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
  result = sub_1AB461FB4();
  __break(1u);
  return result;
}

uint64_t sub_1AB24A3A4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v45 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1AB248038();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1AB2453D0();
        goto LABEL_71;
      }

      sub_1AB246930();
    }

    v8 = *v3;
    v9 = *(v5 + 48);
    v52 = *(v5 + 32);
    v53[0] = v9;
    *&v53[1] = *(v5 + 64);
    v10 = *(v5 + 16);
    v50 = *v5;
    v51 = v10;
    sub_1AB4620A4();
    sub_1AB3ADEDC();
    result = sub_1AB462104();
    v11 = -1 << *(v8 + 32);
    a2 = result & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v48 = ~v11;
      v12 = *(v5 + 32);
      v46 = *(v5 + 40);
      v13 = *v5;
      v14 = *(v5 + 8);
      if (*(v5 + 16))
      {
        v15 = 0x6469746E65696C63;
      }

      else
      {
        v15 = 0x646972657375;
      }

      v42 = *(v5 + 56);
      if (*(v5 + 16))
      {
        v16 = 0xE800000000000000;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      v47 = *(v5 + 24);
      v43 = *(v5 + 48);
      while (1)
      {
        v17 = *(v8 + 48) + 72 * a2;
        v50 = *v17;
        v19 = *(v17 + 32);
        v18 = *(v17 + 48);
        v20 = *(v17 + 64);
        v51 = *(v17 + 16);
        v52 = v19;
        *&v53[1] = v20;
        v53[0] = v18;
        if (v50 != __PAIR128__(v14, v13))
        {
          result = sub_1AB461DA4();
          if ((result & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        if (v51)
        {
          v21 = 0x6469746E65696C63;
        }

        else
        {
          v21 = 0x646972657375;
        }

        if (v51)
        {
          v22 = 0xE800000000000000;
        }

        else
        {
          v22 = 0xE600000000000000;
        }

        if (v21 == v15 && v22 == v16)
        {
          sub_1AB09DF1C(&v50, v49);
        }

        else
        {
          v24 = sub_1AB461DA4();
          sub_1AB09DF1C(&v50, v49);

          if ((v24 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v25 = *(*(&v51 + 1) + 16);
        if (v25 != *(v47 + 16))
        {
          goto LABEL_17;
        }

        if (v25 && *(&v51 + 1) != v47)
        {
          break;
        }

LABEL_45:
        if (BYTE8(v52))
        {
          if (!v46)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v29 = v46;
          if (*&v52 != v12)
          {
            v29 = 1;
          }

          if (v29)
          {
            goto LABEL_17;
          }
        }

        if (*&v53[0])
        {
          if (!v43)
          {
            goto LABEL_17;
          }

          v30 = *(*&v53[0] + 16);
          if (v30 != *(v43 + 16))
          {
            goto LABEL_17;
          }

          if (v30 && *&v53[0] != v43)
          {
            v32 = (*&v53[0] + 40);
            v33 = (v43 + 40);
            while (1)
            {
              v34 = *(v32 - 1) == *(v33 - 1) && *v32 == *v33;
              if (!v34 && (sub_1AB461DA4() & 1) == 0)
              {
                break;
              }

              v32 += 2;
              v33 += 2;
              if (!--v30)
              {
                goto LABEL_56;
              }
            }

LABEL_17:
            result = sub_1AB09DEB0(&v50);
            goto LABEL_18;
          }
        }

        else if (v43)
        {
          goto LABEL_17;
        }

LABEL_56:
        if (*&v53[1])
        {
          if (!*(&v42 + 1))
          {
            goto LABEL_17;
          }

          if (*(v53 + 8) == v42)
          {
            goto LABEL_74;
          }

          v31 = sub_1AB461DA4();
          result = sub_1AB09DEB0(&v50);
          if (v31)
          {
            goto LABEL_75;
          }
        }

        else
        {
          result = sub_1AB09DEB0(&v50);
          if (!*(&v42 + 1))
          {
            goto LABEL_75;
          }
        }

LABEL_18:
        a2 = (a2 + 1) & v48;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      v26 = (*(&v51 + 1) + 40);
      v27 = (v47 + 40);
      while (1)
      {
        v28 = *(v26 - 1) == *(v27 - 1) && *v26 == *v27;
        if (!v28 && (sub_1AB461DA4() & 1) == 0)
        {
          goto LABEL_17;
        }

        v26 += 2;
        v27 += 2;
        if (!--v25)
        {
          goto LABEL_45;
        }
      }
    }
  }

LABEL_71:
  v35 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v36 = *(v35 + 48) + 72 * a2;
  *(v36 + 64) = *(v45 + 64);
  v37 = *(v45 + 48);
  *(v36 + 32) = *(v45 + 32);
  *(v36 + 48) = v37;
  v38 = *(v45 + 16);
  *v36 = *v45;
  *(v36 + 16) = v38;
  v39 = *(v35 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_74:
    sub_1AB09DEB0(&v50);
LABEL_75:
    result = sub_1AB461FB4();
    __break(1u);
  }

  else
  {
    *(v35 + 16) = v41;
  }

  return result;
}

uint64_t sub_1AB24A818(uint64_t result, unint64_t a2, char a3)
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
    sub_1AB248270();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1AB245560();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1AB246B34();
  }

  v8 = *v3;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v4);
  result = sub_1AB462104();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_1AB461FB4();
  __break(1u);
  return result;
}

uint64_t sub_1AB24A964(uint64_t result, unint64_t a2, char a3)
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
    sub_1AB248728();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1AB2457E0();
      goto LABEL_12;
    }

    sub_1AB246F8C();
  }

  v9 = *v3;
  result = sub_1AB461524();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1AB02B4BC(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x1AC59C870](v19, v6);
      result = sub_1AB02B2E4(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AB461FB4();
  __break(1u);
  return result;
}

uint64_t sub_1AB24AADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v6;
  v17 = sub_1AB014DB4(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v18;
  if (v16[3] < v22)
  {
    sub_1AB1D2180(v22, isUniquelyReferenced_nonNull_native);
    v17 = sub_1AB014DB4(a5, a6);
    if ((v7 & 1) == (v23 & 1))
    {
      goto LABEL_6;
    }

    v17 = sub_1AB461FC4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v26 = v17;
    sub_1AB1D7B80();
    v17 = v26;
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1AB1D6DD4(v17, a5, a6, a1, a2, a3, a4, v16);

    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v24 = (v16[7] + 32 * v17);
  result = *v24;
  *v24 = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
LABEL_11:
  *v8 = v16;
  return result;
}

uint64_t sub_1AB24AC40(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_1AB014DB4(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_1AB1D27C4(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AB014DB4(a3, a4);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_1AB461FC4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    sub_1AB1D7F2C();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1AB1D6E24(v13, a3, a4, a1, a2 & 1, v12);

    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = v12[7] + 16 * v13;
  result = *v20;
  *v20 = a1;
  *(v20 + 8) = a2 & 1;
LABEL_11:
  *v6 = v12;
  return result;
}

_OWORD *sub_1AB24AD88@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = sub_1AB461864();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v28 = v14;
  v15 = sub_1AB0BB4FC(a2);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v16;
  if (v14[3] < v20)
  {
    sub_1AB1D1804(v20, isUniquelyReferenced_nonNull_native);
    v15 = sub_1AB0BB4FC(a2);
    if ((v4 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = sub_1AB461FC4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v25 = v15;
    sub_1AB1D72A4();
    v15 = v25;
    v22 = v28;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v26 = v15;
    (*(v10 + 16))(v12, a2, v9);
    result = sub_1AB1D6C98(v26, v12, a1, v22);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  v22 = v28;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v23 = 32 * v15;
  sub_1AB014B78((v22[7] + 32 * v15), a3);
  result = sub_1AB014B78(a1, (v22[7] + v23));
LABEL_11:
  *v5 = v22;
  return result;
}

uint64_t sub_1AB24AF5C(uint64_t a1, uint64_t (*a2)(void *))
{
  v3 = a1 + 64;
  result = sub_1AB4614F4();
  v5 = result;
  v6 = *(a1 + 36);
  v7 = 1 << *(a1 + 32);
  if (result == v7)
  {
    return v5;
  }

  else
  {
    while ((v5 & 0x8000000000000000) == 0 && v5 < v7)
    {
      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v10 = (*(a1 + 48) + 16 * v5);
      v11 = v10[1];
      v12 = *(a1 + 56) + 16 * v5;
      v13 = *v12;
      LOBYTE(v12) = *(v12 + 8);
      v24[0] = *v10;
      v24[1] = v11;
      v24[2] = v13;
      v25 = v12;

      v14 = v13;
      v15 = a2(v24);

      if (v15)
      {
        return v5;
      }

      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_22;
      }

      v16 = *(v3 + 8 * v9);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (a1 + 72 + 8 * v9);
        while (v19 < (v8 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1AB031480(v5, v6, 0);
            v8 = __clz(__rbit64(v21)) + v18;
            goto LABEL_6;
          }
        }

        result = sub_1AB031480(v5, v6, 0);
      }

LABEL_6:
      v6 = *(a1 + 36);
      v7 = 1 << *(a1 + 32);
      v5 = v8;
      if (v8 == v7)
      {
        return v8;
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
  }

  return result;
}

unint64_t sub_1AB24B1A4()
{
  result = qword_1EB438F88;
  if (!qword_1EB438F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438F80);
    sub_1AB01561C(&qword_1EB438F90, &qword_1EB438F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438F88);
  }

  return result;
}

unint64_t sub_1AB24B258()
{
  result = qword_1EB438FA0;
  if (!qword_1EB438FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438FA0);
  }

  return result;
}

unint64_t sub_1AB24B2B0()
{
  result = qword_1EB438FA8;
  if (!qword_1EB438FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438FA8);
  }

  return result;
}

unint64_t sub_1AB24B308()
{
  result = qword_1EB438FB0;
  if (!qword_1EB438FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438FB0);
  }

  return result;
}

uint64_t sub_1AB24B468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB24B4B8@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X2>, unsigned int *a4@<X8>)
{
  swift_beginAccess();
  v8 = sqlite3_prepare_v2(*(a2 + 16), a1, -1, a3, 0);
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  result = sub_1AB15AA44(v8, qword_1ED4D3ED8);
  if (result)
  {
    *a4 = v8;
  }

  else
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AB24B5B4()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;

  result = sub_1AB3620A8(0xD000000000000014, 0x80000001AB5057F0, v0, v18, v15);
  if (!v1)
  {
    v3 = v18[0];
    if (v18[0])
    {
      v4 = sqlite3_step(v18[0]);
      if (qword_1ED4D0C30 != -1)
      {
        swift_once();
      }

      if (sub_1AB15AA44(v4, qword_1ED4D3ED8) && (v5 = sub_1AB064540(&unk_1F1FF3B60), v6 = sub_1AB15AA44(v4, v5), , v6))
      {
        if (sqlite3_column_type(v3, 0) != 5)
        {
          v13 = sqlite3_column_int(v3, 0);
          sqlite3_finalize(v3);
          return v13;
        }

        if (qword_1EB435780 != -1)
        {
          swift_once();
        }

        sub_1AB4622E4();
        v7 = v16;
        v8 = v17;
        __swift_project_boxed_opaque_existential_1Tm(v15, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1AB4D4720;
        v14[3] = MEMORY[0x1E69E6158];
        v14[0] = 0xD00000000000002ALL;
        v14[1] = 0x80000001AB505810;
        *(v10 + 48) = 0u;
        *(v10 + 32) = 0u;
        sub_1AB0169C4(v14, v10 + 32);
        *(v10 + 64) = 0;
        *(v9 + 32) = v10;
        Logger.error(_:)(v9, v7, v8);

        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        sub_1AB1F60B4();
        swift_allocError();
        *v11 = 0xD00000000000002ALL;
        *(v11 + 8) = 0x80000001AB505810;
        *(v11 + 16) = 1;
      }

      else
      {
        sub_1AB1F60B4();
        swift_allocError();
        *v12 = v4;
        *(v12 + 8) = 0;
        *(v12 + 16) = 0;
      }

      swift_willThrow();
      return sqlite3_finalize(v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AB24B8BC(unsigned int a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  sub_1AB4615D4();

  v12[1] = 0x80000001AB5057D0;
  v11 = a1;
  v4 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v4);

  MEMORY[0x1AC59BA20](59, 0xE100000000000000);
  v12[0] = 0;

  result = sub_1AB3620A8(0xD000000000000016, 0x80000001AB5057D0, v1, v12, &v11);
  if (v2)
  {
  }

  v6 = v12[0];
  if (v12[0])
  {

    v7 = sqlite3_step(v6);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (!sub_1AB15AA44(v7, qword_1ED4D3ED8) || (v8 = sub_1AB064540(&unk_1F1FF3B88), v9 = sub_1AB15AA44(v7, v8), , !v9))
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v10 = v7;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      swift_willThrow();
    }

    return sqlite3_finalize(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB24BAB0(sqlite3_stmt *a1, sqlite3_stmt *a2)
{
  v21[5] = *MEMORY[0x1E69E9840];
  MEMORY[0x1AC59B990](59);
  MEMORY[0x1AC59BA20](0xD00000000000003BLL, 0x80000001AB505790);
  v21[3] = MEMORY[0x1E69E6158];
  v21[4] = &off_1F2000A10;
  v21[0] = a1;
  v21[1] = a2;
  sub_1AB05A4E4(v21, v19);

  v6 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AB05A334((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = &v6[5 * v8];
  v10 = v19[0];
  v11 = v19[1];
  v9[8] = v20;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB05A47C(v21);
  v21[0] = 0;

  sub_1AB3620A8(0, 0xE000000000000000, v2, v21, v19);

  if (v3)
  {
    goto LABEL_10;
  }

  v13 = v21[0];
  if (v21[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v13;
    *(inited + 24) = 0;
    sub_1AB02E720(v6);

    v15 = *(inited + 16);
    v16 = sqlite3_step(v15);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (sub_1AB15AA44(v16, qword_1ED4D3ED8))
    {
      swift_setDeallocating();
      sqlite3_finalize(v15);

      return v16 == 100;
    }

    sub_1AB1F60B4();
    swift_allocError();
    *v18 = v16;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v15);
LABEL_10:

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB24BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  sub_1AB4615D4();

  v22[0] = 0xD000000000000012;
  v22[1] = 0x80000001AB505770;
  MEMORY[0x1AC59BA20](a1, a2);
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  v23[0] = 0;

  result = sub_1AB3620A8(0xD000000000000012, 0x80000001AB505770, v4, v23, v22);
  if (v5)
  {

    return v6 & 1;
  }

  v12 = v23[0];
  if (v23[0])
  {

    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    while (1)
    {
      do
      {
        v14 = sqlite3_step(v12);
        if (qword_1ED4D0C30 != -1)
        {
          swift_once();
        }

        v6 = qword_1ED4D3ED8;
        if (!*(qword_1ED4D3ED8 + 16) || (sub_1AB4620A4(), sub_1AB4620D4(), v15 = sub_1AB462104(), v16 = -1 << *(v6 + 32), v17 = v15 & ~v16, ((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0))
        {
LABEL_19:
          sub_1AB1F60B4();
          swift_allocError();
          *v21 = v14;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v12);
          return v6 & 1;
        }

        v18 = ~v16;
        while (*(*(v6 + 48) + 4 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        LOBYTE(v6) = v14 == 100;
        if (v14 != 100)
        {
LABEL_21:

          return v6 & 1;
        }
      }

      while (!sqlite3_column_text(v12, 1));
      if (sub_1AB460714() == a3 && v19 == a4)
      {
        break;
      }

      v20 = sub_1AB461DA4();

      if (v20)
      {
        goto LABEL_21;
      }
    }

    return v6 & 1;
  }

  __break(1u);
  return result;
}

uint64_t Models.ExternalURLAction.init(actionMetrics:url:isSensitive:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for Models.ExternalURLAction();
  v8 = *(v7 + 20);
  v9 = sub_1AB45F764();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t type metadata accessor for Models.ExternalURLAction()
{
  result = qword_1EB432448;
  if (!qword_1EB432448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Models.ExternalURLAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v35 - v7;
  v9 = sub_1AB45F764();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - v13;
  v15 = *a2;
  JSONObject.subscript.getter(7107189, 0xE300000000000000, v42);
  sub_1AB01EC0C(v42, v39);
  v16 = v40;
  if (!v40)
  {

    sub_1AB066D84(v42);
    sub_1AB014AC0(v39, &qword_1EB436BA0);
LABEL_7:
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_8;
  }

  v35[2] = v3;
  v17 = a1;
  v18 = v41;
  __swift_project_boxed_opaque_existential_1Tm(v39, v40);
  (*(v18 + 24))(v16, v18);
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  if (!v20)
  {

    sub_1AB066D84(v42);
    a1 = v17;
    goto LABEL_7;
  }

  sub_1AB45F714();

  sub_1AB066D84(v42);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    a1 = v17;
LABEL_8:
    sub_1AB014AC0(v8, &unk_1EB4395B0);
    v21 = type metadata accessor for Models.ExternalURLAction() | 0x2000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v22 = xmmword_1AB4E1B30;
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v35[0] = *(v10 + 32);
  v35[1] = v10 + 32;
  (v35[0])(v14, v8, v9);
  v24 = v17;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v42);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v39);

  v25 = sub_1AB37F7F4(v39, v15);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v39);
  v38 = v15;
  ScalarDictionary.init(tryDeserializing:using:)(v39, &v38, &v43);
  sub_1AB066D84(v42);
  v26 = v43;
  (*(v10 + 16))(v37, v14, v9);
  JSONObject.subscript.getter(0x7469736E65537369, 0xEB00000000657669, v42);
  sub_1AB01EC0C(v42, v39);
  v27 = v40;
  if (v40)
  {
    v28 = v25;
    v29 = v24;
    v30 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v31 = (*(v30 + 88))(v27, v30);
    v32 = v29;
    v25 = v28;
    sub_1AB066D84(v32);
    sub_1AB066D84(v42);
    (*(v10 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  else
  {
    sub_1AB066D84(v17);
    sub_1AB066D84(v42);
    (*(v10 + 8))(v14, v9);
    sub_1AB014AC0(v39, &qword_1EB436BA0);
    v31 = 0;
  }

  v33 = v36;
  *v36 = v25;
  v33[1] = v26;
  v34 = type metadata accessor for Models.ExternalURLAction();
  result = (v35[0])(v33 + *(v34 + 20), v37, v9);
  *(v33 + *(v34 + 24)) = v31 & 1;
  return result;
}

uint64_t Models.ExternalURLAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.ExternalURLAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Models.ExternalURLAction() + 20);
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1AB24C704()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x7469736E65537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654D6E6F69746361;
  }
}

uint64_t sub_1AB24C76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB24D194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB24C794(uint64_t a1)
{
  v2 = sub_1AB24CA1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB24C7D0(uint64_t a1)
{
  v2 = sub_1AB24CA1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.ExternalURLAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439028);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB24CA1C();
  sub_1AB462274();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1AB24CA70();

  sub_1AB461BF4();

  if (!v2)
  {
    type metadata accessor for Models.ExternalURLAction();
    LOBYTE(v12) = 1;
    sub_1AB45F764();
    sub_1AB15ACA4(&unk_1EB4343E8);
    sub_1AB461BF4();
    LOBYTE(v12) = 2;
    sub_1AB461BC4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1AB24CA1C()
{
  result = qword_1EB439030;
  if (!qword_1EB439030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439030);
  }

  return result;
}

unint64_t sub_1AB24CA70()
{
  result = qword_1EB439038;
  if (!qword_1EB439038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439038);
  }

  return result;
}

uint64_t Models.ExternalURLAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1AB45F764();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439040);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Models.ExternalURLAction();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  sub_1AB24CA1C();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  v23 = 0;
  sub_1AB24CE74();
  sub_1AB461AC4();
  *v12 = v22;
  LOBYTE(v22) = 1;
  sub_1AB15ACA4(&qword_1EB436C10);
  sub_1AB461AC4();
  (*(v18 + 32))(&v12[*(v10 + 20)], v6, v4);
  LOBYTE(v22) = 2;
  v14 = sub_1AB461A94();
  (*(v19 + 8))(v9, v20);
  v12[*(v10 + 24)] = v14 & 1;
  sub_1AB24CEC8(v12, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return sub_1AB24CF2C(v12);
}

unint64_t sub_1AB24CE74()
{
  result = qword_1EB439048;
  if (!qword_1EB439048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439048);
  }

  return result;
}

uint64_t sub_1AB24CEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Models.ExternalURLAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB24CF2C(uint64_t a1)
{
  v2 = type metadata accessor for Models.ExternalURLAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB24CFF8()
{
  result = sub_1AB45F764();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1AB24D090()
{
  result = qword_1EB439050;
  if (!qword_1EB439050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439050);
  }

  return result;
}

unint64_t sub_1AB24D0E8()
{
  result = qword_1EB439058;
  if (!qword_1EB439058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439058);
  }

  return result;
}

unint64_t sub_1AB24D140()
{
  result = qword_1EB439060[0];
  if (!qword_1EB439060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB439060);
  }

  return result;
}

uint64_t sub_1AB24D194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469736E65537369 && a2 == 0xEB00000000657669)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

uint64_t _AsyncJust.AsyncIterator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v9 = *(v6 + 56);
  v9(a3, 1, 1, a2);
  v7 = sub_1AB461354();
  (*(*(v7 - 8) + 8))(a3, v7);
  (*(v6 + 32))(a3, a1, a2);

  return (v9)(a3, 0, 1, a2);
}

uint64_t _AsyncJust.AsyncIterator.element.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB461354();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _AsyncJust.AsyncIterator.element.setter(uint64_t a1)
{
  v3 = sub_1AB461354();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t _AsyncJust.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB24DD80, 0, 0);
}

uint64_t _AsyncJust.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1AB460AE4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1AB24D5C8, v6, v8);
}

uint64_t sub_1AB24D5C8()
{
  (*(*(*(v0[3] + 16) - 8) + 56))(v0[2], 1, 1, *(v0[3] + 16));
  sub_1AB461354();
  sub_1AB461FA4();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1AB24D688(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB044F60;

  return _AsyncJust.AsyncIterator.next()(a1, a2);
}

uint64_t sub_1AB24D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1AB24DD7C;

  return _AsyncJust.AsyncIterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t _AsyncJust.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return _AsyncJust.AsyncIterator.init(_:)(v6, v3, a2);
}

uint64_t sub_1AB24D930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _AsyncJust.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t _AsyncJust<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[6] = a3;
  v17 = a4;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _AsyncJust();
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v4)
  {
    v14 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
    sub_1AB461DF4();
    (*(v16 + 32))(v11, v8, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    (*(v15 + 32))(v17, v11, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _AsyncJust<A>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E74();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_1AB24DCF4()
{
  result = sub_1AB461354();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t IntentMetricsEventLinter.init(objectGraph:)@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  result = sub_1AB24EC70(a1[2]);
  if ((result & 1) == 0)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4190;
    v35 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    v8 = MEMORY[0x1E69E6158];
    v43 = MEMORY[0x1E69E6158];
    v41 = 0xD000000000000012;
    v42 = 0x80000001AB505840;
    sub_1AB01522C(&v41, v37);
    v38 = 0u;
    v39 = 0u;
    sub_1AB0169C4(v37, &v38);
    v40 = 0;
    v9 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v38;
    v14 = v39;
    v12[64] = v40;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    sub_1AB014AC0(&v41, &unk_1EB437E60);
    v15._countAndFlagsBits = 0xD00000000000002CLL;
    v15._object = 0x80000001AB505860;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v6 + 32) = v9;
    v36 = sub_1AB0168A8(0, 20, 0, MEMORY[0x1E69E7CC0]);
    v16._countAndFlagsBits = 1612738153;
    v16._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    swift_beginAccess();
    v17 = a1[3];
    v18 = a1[4];
    v43 = v8;
    v41 = v17;
    v42 = v18;
    sub_1AB01522C(&v41, v37);
    v38 = 0u;
    v39 = 0u;

    sub_1AB0169C4(v37, &v38);
    v40 = 2;
    v19 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[40 * v21];
    v23 = v38;
    v24 = v39;
    v22[64] = v40;
    *(v22 + 2) = v23;
    *(v22 + 3) = v24;
    sub_1AB014AC0(&v41, &unk_1EB437E60);
    v25._countAndFlagsBits = 0x7463656A626F2060;
    v25._object = 0xEF2E687061726720;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v6 + 40) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1AB4D4720;
    *(&v39 + 1) = v8;
    *&v38 = 0xD00000000000002BLL;
    *(&v38 + 1) = 0x80000001AB505890;
    *(v26 + 48) = 0u;
    *(v26 + 32) = 0u;
    sub_1AB0169C4(&v38, v26 + 32);
    *(v26 + 64) = 0;
    *(v6 + 48) = v26;
    v27 = sub_1AB461094();
    if (os_log_type_enabled(v5, v27))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v28 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v28 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v38 = v6;
      *(&v38 + 1) = sub_1AB01A8D8;
      *&v39 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v31 = sub_1AB460484();
      v33 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1AB4D4720;
      *(v34 + 56) = v8;
      *(v34 + 64) = sub_1AB016854();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_1AB45FF14();
    }
  }

  *a2 = a1;
  return result;
}

uint64_t IntentMetricsEventLinter.processEvent(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = *v1;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B58);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v11 = sub_1AB460BE4();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1AB4E1EE0;
  v12[5] = v7;
  v12[6] = v8;

  sub_1AB39BBA8(0, 0, v5, &unk_1AB4D4EC8, v12);

  return v8;
}

uint64_t sub_1AB24E494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB24E4B8, 0, 0);
}

uint64_t sub_1AB24E4B8()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[12] = v0[15];
  v1 = swift_task_alloc();
  v0[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439168);
  *v1 = v0;
  v1[1] = sub_1AB24E5F8;
  v2 = v0[15];

  return MEMORY[0x1EEE6DE98](v0 + 7, v0 + 12, &unk_1AB4E1F58, v2, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB24E5F8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1AB24E8F4;
  }

  else
  {
    v2 = sub_1AB24E70C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB24E70C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 128);
    sub_1AB1580C0((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v2);
    *(v0 + 104) = v1;
    v10 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_1AB24E90C;
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);

    return v10(v5, v0 + 104, v6, &type metadata for LintMetricsEventIntent, &protocol witness table for LintMetricsEventIntent, v2, v3);
  }

  else
  {
    sub_1AB014AC0(v0 + 56, &qword_1EB439168);
    sub_1AB24F240();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1AB24E90C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1AB24EA20;
  }

  else
  {
    v2 = sub_1AB070BFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB24EA20()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB24EA84(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = *v1;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B58);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v11 = sub_1AB460BE4();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1AB4E1F40;
  v12[5] = v7;
  v12[6] = v8;

  sub_1AB39BBA8(0, 0, v5, &unk_1AB4E1F48, v12);

  return v8;
}

uint64_t sub_1AB24EC70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660);
  if (*(a1 + 16))
  {
    v3 = sub_1AB016558(v2);
    if (v4)
    {
      sub_1AB0165C4(*(a1 + 56) + 32 * v3, v12);
      sub_1AB014AC0(v12, &unk_1EB437E60);
      v5 = 1;
      return v5 & 1;
    }
  }

  memset(v12, 0, sizeof(v12));
  sub_1AB014AC0(v12, &unk_1EB437E60);
  if (qword_1ED4D19F0 != -1)
  {
    swift_once();
  }

  v6 = off_1ED4D19F8;
  v7 = *(off_1ED4D19F8 + 2);

  if (v7)
  {
    v9 = 0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436668);
      result = swift_dynamicCast();
      if (result)
      {
        if (*&v12[0])
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        goto LABEL_12;
      }
    }

    v7 = v9;
  }

LABEL_12:
  v10 = v6[2];
  if (v7 == v10)
  {

    v5 = 0;
    return v5 & 1;
  }

  if (v7 >= v10)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436668);
    result = swift_dynamicCast();
    if (result)
    {
      v11 = *&v12[0];
      if (*&v12[0])
      {

        v5 = sub_1AB01D470(v11, a1);
        return v5 & 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB24EECC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    v5 = sub_1AB016558(a2);
    if (v6)
    {
      sub_1AB0165C4(*(a1 + 56) + 32 * v5, v14);
      sub_1AB014AC0(v14, &unk_1EB437E60);
      v7 = 1;
      return v7 & 1;
    }
  }

  memset(v14, 0, sizeof(v14));
  sub_1AB014AC0(v14, &unk_1EB437E60);
  if (qword_1ED4D19F0 != -1)
  {
    swift_once();
  }

  v8 = off_1ED4D19F8;
  v9 = *(off_1ED4D19F8 + 2);

  if (v9)
  {
    v11 = 0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      result = swift_dynamicCast();
      if (result)
      {
        if (*&v14[0])
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        goto LABEL_12;
      }
    }

    v9 = v11;
  }

LABEL_12:
  v12 = v8[2];
  if (v9 == v12)
  {

    v7 = 0;
    return v7 & 1;
  }

  if (v9 >= v12)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    result = swift_dynamicCast();
    if (result)
    {
      v13 = *&v14[0];
      if (*&v14[0])
      {

        v7 = sub_1AB01D470(v13, a1);
        return v7 & 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB24F0E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027554;

  return sub_1AB24E494(a1, v5, v4);
}

uint64_t sub_1AB24F1A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027460;

  return sub_1AB340D1C(a1, v1);
}

unint64_t sub_1AB24F240()
{
  result = qword_1EB439170;
  if (!qword_1EB439170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439170);
  }

  return result;
}

__n128 MetricsEventLinterBagConfiguration.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

Swift::OpaquePointer_optional __swiftcall MetricsEventLinterBagConfiguration.baseFields(forTopic:)(Swift::String forTopic)
{
  JSONObject.subscript.getter(forTopic._countAndFlagsBits, forTopic._object, v11);
  JSONObject.subscript.getter(0x427363697274656DLL, 0xEB00000000657361, &v16);
  sub_1AB066D84(v11);
  sub_1AB01EC0C(&v16, v11);
  v1 = v12;
  if (!v12)
  {
    sub_1AB066D84(&v16);
    sub_1AB014AC0(v11, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v2 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  v3 = (*(v2 + 128))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (v3)
  {
    sub_1AB066D84(&v16);
LABEL_5:
    JSONObject.subscript.getter(0x427363697274656DLL, 0xEB00000000657361, v14);
    goto LABEL_7;
  }

  v14[0] = v16;
  v14[1] = v17;
  v15 = v18;
LABEL_7:
  sub_1AB01EC0C(v14, v11);
  v4 = v12;
  if (!v12)
  {
    sub_1AB066D84(v14);
    sub_1AB014AC0(v11, &qword_1EB436BA0);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_11;
  }

  v5 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  (*(v5 + 160))(&v16, v4, v5);
  sub_1AB066D84(v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v6 = *(&v17 + 1);
  if (!*(&v17 + 1))
  {
LABEL_11:
    sub_1AB014AC0(&v16, &qword_1EB436BC0);
    v10 = 0;
    goto LABEL_12;
  }

  v7 = v18;
  __swift_project_boxed_opaque_existential_1Tm(&v16, *(&v17 + 1));
  v8 = (*(v7 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v6, v7);
  sub_1AB07CDB0(&v16);
  v10 = v8;
LABEL_12:
  result.value._rawValue = v10;
  result.is_nil = v9;
  return result;
}

Swift::String_optional __swiftcall MetricsEventLinterBagConfiguration.compoundSeparator(forTopic:)(Swift::String forTopic)
{
  JSONObject.subscript.getter(forTopic._countAndFlagsBits, forTopic._object, &v14);
  JSONObject.subscript.getter(0xD000000000000011, 0x80000001AB501230, &v11);
  sub_1AB066D84(&v14);
  sub_1AB01EC0C(&v11, &v14);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    sub_1AB066D84(&v11);
    sub_1AB014AC0(&v14, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v2 = v16;
  __swift_project_boxed_opaque_existential_1Tm(&v14, *(&v15 + 1));
  v3 = (*(v2 + 128))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  if (v3)
  {
    sub_1AB066D84(&v11);
LABEL_5:
    JSONObject.subscript.getter(0xD000000000000011, 0x80000001AB501230, &v14);
    goto LABEL_7;
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
LABEL_7:
  sub_1AB01EC0C(&v14, &v11);
  v4 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, *(&v12 + 1));
    v4 = (*(v5 + 24))(v4, v5);
    v7 = v6;
    sub_1AB066D84(&v14);
    __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }

  else
  {
    sub_1AB066D84(&v14);
    sub_1AB014AC0(&v11, &qword_1EB436BA0);
    v7 = 0;
  }

  v8 = v4;
  v9 = v7;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t MetricsEventLinterBagConfiguration.deResolutionRules(forTopic:)(uint64_t a1, uint64_t a2)
{
  JSONObject.subscript.getter(a1, a2, &v11);
  JSONObject.subscript.getter(0x6569467365526564, 0xEB0000000073646CLL, v9);
  sub_1AB066D84(&v11);
  sub_1AB01EC0C(v9, &v11);
  v2 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    v3 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, *(&v12 + 1));
    v4 = (*(v3 + 128))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(&v11);
    if ((v4 & 1) == 0)
    {
      v11 = v9[0];
      v12 = v9[1];
      v13 = v10;
      goto LABEL_7;
    }

    sub_1AB066D84(v9);
  }

  else
  {
    sub_1AB066D84(v9);
    sub_1AB014AC0(&v11, &qword_1EB436BA0);
  }

  JSONObject.subscript.getter(0x6569467365526564, 0xEB0000000073646CLL, &v11);
LABEL_7:
  v5 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v6 = sub_1AB37F944(&v11, v5);
  v7 = sub_1AB24F7CC(v6);

  return v7;
}

uint64_t sub_1AB24F7CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AB177A40(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v16 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1AB177A40((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for MetricsEventLinterDeResolutionRule;
      v15 = &off_1F1FFFF68;
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v7;
      v11[5] = v8;
      *(v2 + 16) = v9 + 1;
      sub_1AB0149B0(&v13, v2 + 40 * v9 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1AB24F8F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1AB4618F4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1AB17783C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1AC59C990](i, a1);
        sub_1AB016760(0, &qword_1ED4D1B98);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1AB17783C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1AB014B78(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1AB016760(0, &qword_1ED4D1B98);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1AB17783C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1AB014B78(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB24FAF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1AB17783C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AB17783C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1AB014B78(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double MetricsEventLinterBagConfiguration.additionalRules(forTopic:)(uint64_t a1, uint64_t a2)
{
  JSONObject.subscript.getter(a1, a2, v10);
  JSONObject.subscript.getter(0xD00000000000001DLL, 0x80000001AB5058C0, &v13);
  sub_1AB066D84(v10);
  sub_1AB01EC0C(&v13, v10);
  v2 = v11;
  if (!v11)
  {
    sub_1AB066D84(&v13);
    sub_1AB014AC0(v10, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v3 = v12;
  __swift_project_boxed_opaque_existential_1Tm(v10, v11);
  v4 = (*(v3 + 128))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (v4)
  {
    sub_1AB066D84(&v13);
LABEL_5:
    JSONObject.subscript.getter(0xD00000000000001DLL, 0x80000001AB5058C0, v16);
    goto LABEL_7;
  }

  v16[0] = v13;
  v16[1] = v14;
  v17 = v15;
LABEL_7:
  sub_1AB01EC0C(v16, &v13);
  v5 = *(&v14 + 1);
  if (!*(&v14 + 1))
  {
    sub_1AB066D84(v16);
    sub_1AB014AC0(&v13, &qword_1EB436BA0);
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E60);
    v9 = swift_allocObject();
    *&result = 1;
    *(v9 + 16) = xmmword_1AB4D4720;
    *(v9 + 56) = &type metadata for MetricsEventLinterEmptyImpressionsRule;
    *(v9 + 64) = &off_1F2004278;
    return result;
  }

  v6 = v15;
  __swift_project_boxed_opaque_existential_1Tm(&v13, *(&v14 + 1));
  v7 = (*(v6 + 88))(v5, v6);
  sub_1AB066D84(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v13);
  if (v7 == 2 || (v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1AB24FDF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void JSCallable.callAsFunction(this:_:)(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  v5.super.isa = JSReference.unwrap()().super.isa;
  if (!v6)
  {
    isa = v5.super.isa;
    v8 = [(objc_class *)v5.super.isa context];
    if (v8)
    {
      v9 = v8;
      sub_1AB24FFD8(v8, a1, a2, isa, &v15);
      v10 = [v9 exception];
      if (v10)
      {
        v11 = v10;
        [v9 setException_];
        sub_1AB0C3EF0();
        swift_allocError();
        v13 = v12;
        v14 = v11;
        JSError.init(_:)(v14, v13);
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AB24FFD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, JSValue *a5@<X8>)
{
  sub_1AB250600(a2, &v29);
  if (v30)
  {
    sub_1AB1580C0(&v29, v31);
    *&v29 = MEMORY[0x1E69E7CC0];
    v10 = v32;
    v11 = v33;
    __swift_project_boxed_opaque_existential_1Tm(v31, v32);
    (*(v11 + 16))(a1, v10, v11);
    if (!v5)
    {
      v34 = a5;
      MEMORY[0x1AC59BC60]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AB460994();
      }

      sub_1AB4609E4();
      v12 = *(a3 + 16);
      v13 = v29;
      if (v12)
      {
        v14 = (a3 + 32);
        do
        {
          v15 = v14[3];
          v16 = v14[4];
          __swift_project_boxed_opaque_existential_1Tm(v14, v15);
          (*(v16 + 16))(a1, v15, v16);
          MEMORY[0x1AC59BC60]();
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1AB460994();
          }

          sub_1AB4609E4();
          v13 = v29;
          v14 += 5;
          --v12;
        }

        while (v12);
      }

      v24 = sub_1AB24F8F8(v13);

      v25._countAndFlagsBits = 1819042147;
      v25._object = 0xE400000000000000;
      v26.super.isa = JSValue.call(method:withArguments:)(v25, v24).super.isa;

      if (!v27)
      {
        v34->super.isa = v26.super.isa;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    sub_1AB250670(&v29);
    v17 = *(a3 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      *&v29 = MEMORY[0x1E69E7CC0];
      sub_1AB461754();
      v19 = a3 + 32;
      while (1)
      {
        sub_1AB01494C(v19, v31);
        v20 = v32;
        v21 = v33;
        __swift_project_boxed_opaque_existential_1Tm(v31, v32);
        (*(v21 + 16))(a1, v20, v21);
        if (v5)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        sub_1AB461724();
        sub_1AB461764();
        sub_1AB461774();
        sub_1AB461734();
        v19 += 40;
        if (!--v17)
        {
          v18 = v29;
          goto LABEL_16;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v31);
    }

    else
    {
LABEL_16:
      sub_1AB24F8F8(v18);

      v22 = sub_1AB460934();

      v23 = [a4 callWithArguments_];

      if (v23)
      {
        a5->super.isa = v23;
      }

      else
      {
        sub_1AB0C3EF0();
        swift_allocError();
        LOBYTE(v31[0]) = 1;
        LOBYTE(v29) = 1;
        *v28 = 0xD000000000000017;
        *(v28 + 8) = 0x80000001AB5058E0;
        *(v28 + 16) = 0;
        *(v28 + 24) = 1;
        *(v28 + 32) = 0;
        *(v28 + 40) = 1;
        *(v28 + 48) = 0u;
        *(v28 + 64) = 0u;
        *(v28 + 80) = 0u;
        *(v28 + 96) = 0;
        swift_willThrow();
      }
    }
  }
}

uint64_t JSCallable.description.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (!v3)
  {
    return 0x296C6C756E28;
  }

  v4 = v3;
  v5 = [v3 description];
  v6 = sub_1AB460544();

  return v6;
}

uint64_t sub_1AB250478()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (!v3)
  {
    return 0x296C6C756E28;
  }

  v4 = v3;
  v5 = [v3 description];
  v6 = sub_1AB460544();

  return v6;
}

uint64_t _s9JetEngine10JSCallableV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = v8;
  if (v5)
  {
    if (v8)
    {
      sub_1AB054C38();
      v10 = sub_1AB4612C4();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (!v8)
    {
      v10 = 1;
      return v10 & 1;
    }

    v10 = 0;
    v5 = v8;
  }

  return v10 & 1;
}

uint64_t sub_1AB250600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB250670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AB25070C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8))() != &type metadata for _AttestFromJetEngine)
  {

    sub_1AB40F400("JetEngine/TraceablePointOfInterest.swift", 0x28uLL, 2, 0x32uLL);
  }
}

JetEngine::PageIntentInstrumentationType_optional __swiftcall PageIntentInstrumentationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1AB4619B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PageIntentInstrumentationType.rawValue.getter()
{
  if (*v0)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x447972616D697270;
  }
}

uint64_t sub_1AB250834(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7261646E6F636573;
  }

  else
  {
    v3 = 0x447972616D697270;
  }

  if (v2)
  {
    v4 = 0xEB00000000617461;
  }

  else
  {
    v4 = 0xED00006174614479;
  }

  if (*a2)
  {
    v5 = 0x7261646E6F636573;
  }

  else
  {
    v5 = 0x447972616D697270;
  }

  if (*a2)
  {
    v6 = 0xED00006174614479;
  }

  else
  {
    v6 = 0xEB00000000617461;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB2508F0()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB250988()
{
  sub_1AB460684();
}

uint64_t sub_1AB250A0C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB250AA0@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1AB250B00(uint64_t *a1@<X8>)
{
  v2 = 0x447972616D697270;
  if (*v1)
  {
    v2 = 0x7261646E6F636573;
  }

  v3 = 0xEB00000000617461;
  if (*v1)
  {
    v3 = 0xED00006174614479;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AB250B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0xEB0000000044496ELL;
  v5 = 0x6F6974617265706FLL;

  JSONObject.subscript.getter(0x6F6974617265706FLL, 0xEB0000000044496ELL, v24);
  sub_1AB01EC0C(v24, v21);
  v6 = v22;
  if (!v22)
  {
    sub_1AB066D84(v24);
    sub_1AB18977C(v21);
    goto LABEL_12;
  }

  v7 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  v8 = (*(v7 + 24))(v6, v7);
  v10 = v9;
  sub_1AB066D84(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!v10)
  {
LABEL_12:
    v17 = 0x2000000000000000;
LABEL_13:
    v18 = v17 | &type metadata for PageIntentInstrumentationModel;
    sub_1AB163664();
    swift_allocError();
    *v19 = v5;
    v19[1] = v4;
    v19[2] = v18;
    v19[3] = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v5 = 1701869940;
  JSONObject.subscript.getter(1701869940, 0xE400000000000000, v24);
  sub_1AB01EC0C(v24, v21);
  v11 = v22;
  if (!v22)
  {

    sub_1AB066D84(v24);
    sub_1AB18977C(v21);
LABEL_11:
    v4 = 0xE400000000000000;
    goto LABEL_12;
  }

  v12 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  (*(v12 + 24))(v11, v12);
  v14 = v13;
  sub_1AB066D84(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!v14)
  {

    goto LABEL_11;
  }

  v15 = sub_1AB4619B4();

  if (!v15)
  {
    v16 = 0;
    goto LABEL_15;
  }

  if (v15 != 1)
  {

    v4 = 0xE400000000000000;
    v17 = 0x8000000000000000;
    goto LABEL_13;
  }

  v16 = 1;
LABEL_15:
  result = sub_1AB066D84(a1);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v16;
  return result;
}

id sub_1AB250DBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = objc_opt_self();
  result = [v8 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;

  v11 = [v8 valueWithObject:sub_1AB461F94() inContext:{a1, v5, v6}];
  result = swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_1AB460514();
  [v10 setValue:v12 forProperty:v13];

  v14 = 0x447972616D697270;
  if (v7)
  {
    v14 = 0x7261646E6F636573;
  }

  v15 = 0xEB00000000617461;
  if (v7)
  {
    v15 = 0xED00006174614479;
  }

  v16 = [v8 valueWithObject:sub_1AB461F94() inContext:{a1, v14, v15}];
  result = swift_unknownObjectRelease();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1AB460514();
    [v10 setValue:v17 forProperty:v18];

    result = sub_1AB054C38();
    a2[3] = result;
    a2[4] = &protocol witness table for JSValue;
    *a2 = v10;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

Swift::Void __swiftcall PageIntentInstrumentation._forBooksOnly_process(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v2 = CFBundleGetMainBundle();
  v3 = CFBundleGetIdentifier(v2);

  if (v3)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1AB460534();
    }
  }

  if (sub_1AB460784() & 1) != 0 || (sub_1AB460784())
  {
  }

  else
  {
    v4 = sub_1AB460784();

    if ((v4 & 1) == 0)
    {
      sub_1AB40F9E8("JetEngine/PageIntentInstrumentation.swift", 0x29uLL, 2, 0x88uLL);
    }
  }

  sub_1AB0C741C(contentsOf._rawValue);
}

unint64_t sub_1AB251154()
{
  result = qword_1EB439180;
  if (!qword_1EB439180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439180);
  }

  return result;
}

uint64_t sub_1AB2511B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB251208(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void JSConstructable.callAsFunction(_:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v3.super.isa = JSReference.unwrap()().super.isa;
  if (!v4)
  {
    isa = v3.super.isa;
    v6 = [(objc_class *)v3.super.isa context];
    if (v6)
    {
      v7 = v6;
      sub_1AB2513E4(v6, a1, isa, &v13);
      v8 = [v7 exception];
      if (v8)
      {
        v9 = v8;
        [v7 setException_];
        sub_1AB0C3EF0();
        swift_allocError();
        v11 = v10;
        v12 = v9;
        JSError.init(_:)(v12, v11);
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AB2513E4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AB461754();
    v11 = a2 + 32;
    while (1)
    {
      sub_1AB01494C(v11, v17);
      v12 = v18;
      v13 = v19;
      __swift_project_boxed_opaque_existential_1Tm(v17, v18);
      (*(v13 + 16))(a1, v12, v13);
      if (v4)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      sub_1AB461724();
      sub_1AB461764();
      sub_1AB461774();
      sub_1AB461734();
      v11 += 40;
      if (!--v7)
      {
        v8 = v20;
        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
LABEL_6:
    sub_1AB24F8F8(v8);

    v14 = sub_1AB460934();

    v15 = [a3 constructWithArguments_];

    if (v15)
    {
      *a4 = v15;
    }

    else
    {
      sub_1AB0C3EF0();
      swift_allocError();
      LOBYTE(v17[0]) = 1;
      LOBYTE(v20) = 1;
      *v16 = 0xD00000000000001ALL;
      *(v16 + 8) = 0x80000001AB5059C0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 1;
      *(v16 + 32) = 0;
      *(v16 + 40) = 1;
      *(v16 + 48) = 0u;
      *(v16 + 64) = 0u;
      *(v16 + 80) = 0u;
      *(v16 + 96) = 0;
      swift_willThrow();
    }
  }
}

uint64_t JSConstructable.description.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (!v3)
  {
    return 0x296C6C756E28;
  }

  v4 = v3;
  v5 = [v3 description];
  v6 = sub_1AB460544();

  return v6;
}

void *sub_1AB2516A4(uint64_t a1)
{
  v2 = v1;
  v39[1] = *MEMORY[0x1E69E9840];
  v33 = *v1;
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v5;
  v38 = v8;
  v9 = *(v5 + 16);
  v32 = OBJC_IVAR____TtC9JetEngine16FileOutputStream_url;
  v35 = v9;
  (v9)(v1 + OBJC_IVAR____TtC9JetEngine16FileOutputStream_url, a1, v6);
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  sub_1AB45F6F4();
  v12 = sub_1AB460514();

  v13 = [v11 fileExistsAtPath_];

  if (v13)
  {
    v14 = [v10 defaultManager];
    v15 = sub_1AB45F654();
    v39[0] = 0;
    v16 = [v14 removeItemAtURL:v15 error:v39];

    if (!v16)
    {
      v28 = v39[0];
      sub_1AB45F594();

      swift_willThrow();
      v24 = v38;
LABEL_9:
      v29 = *(v37 + 8);
      v29(a1, v24);
      v29(v2 + v32, v24);
      swift_deallocPartialClassInstance();
      return v2;
    }

    v17 = v39[0];
  }

  v18 = [v10 defaultManager];
  sub_1AB45F6F4();
  v19 = sub_1AB460514();

  v20 = [v18 fileExistsAtPath_];

  if ((v20 & 1) == 0)
  {
    v21 = [v10 defaultManager];
    sub_1AB45F6F4();
    v22 = sub_1AB460514();

    [v21 createFileAtPath:v22 contents:0 attributes:0];
  }

  sub_1AB2522EC();
  v23 = v34;
  v24 = v38;
  v35(v34, a1, v38);
  v25 = v36;
  v26 = sub_1AB251A64(v23);
  if (v25)
  {
    goto LABEL_9;
  }

  v27 = v26;
  (*(v37 + 8))(a1, v24);
  *(v2 + OBJC_IVAR____TtC9JetEngine16FileOutputStream_fileHandle) = v27;
  return v2;
}

id sub_1AB251A64(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AB45F654();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1AB45F764();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1AB45F594();

    swift_willThrow();
    v9 = sub_1AB45F764();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_1AB251BBC()
{
  v1 = OBJC_IVAR____TtC9JetEngine16FileOutputStream_url;
  v2 = sub_1AB45F764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FileOutputStream()
{
  result = qword_1EB435890;
  if (!qword_1EB435890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB251CBC()
{
  result = sub_1AB45F764();
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

uint64_t sub_1AB251DB0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1AB05AF50(a1, a2);
  v5 = v2;
  sub_1AB252298();
  sub_1AB461054();
  return sub_1AB017254(v4, v5);
}

uint64_t sub_1AB251E1C()
{
  v1 = sub_1AB460614();
  v2 = fopen((v1 + 32), "rb");

  if (v2 && (*(v0 + 16) = v2, v3 = MEMORY[0x1AC59E270](v2), !fseek(v2, 0, 2)))
  {
    v5 = MEMORY[0x1AC59E270](v2);
    *(v0 + 24) = v5;
    if (v5 < 0 || fseek(v2, v3, 0))
    {
      sub_1AB252338();
    }

    else
    {

      clearerr(v2);
    }
  }

  else
  {
    sub_1AB252338();

    swift_deallocPartialClassInstance();
  }

  return v0;
}

uint64_t sub_1AB251F4C()
{
  fclose(*(v0 + 16));

  return swift_deallocClassInstance();
}

int64_t sub_1AB251FA8(void *a1, int64_t a2)
{
  v5 = sub_1AB45EFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  v10 = fread(a1, 1uLL, a2, v9);
  if (v10 < a2 && ferror(v9))
  {
    v11 = sub_1AB4600C4();
    if ((v11 & 0x100000000) != 0)
    {
      sub_1AB19B9F4();
      swift_allocError();
      *v12 = 1;
    }

    else
    {
      v15 = v11;
      sub_1AB01B220(MEMORY[0x1E69E7CC0]);
      sub_1AB252240();
      sub_1AB45F574();
      sub_1AB45EFD4();
      (*(v6 + 8))(v8, v5);
    }

    swift_willThrow();
  }

  return v10;
}

BOOL sub_1AB252134()
{
  v1 = *(*v0 + 16);
  clearerr(v1);
  v2 = fgetc(v1);
  ungetc(v2, v1);
  v3 = ferror(v1);
  return v2 != -1 && v3 == 0;
}

uint64_t sub_1AB252198(int64_t a1)
{
  v2 = v1;
  v4 = swift_slowAlloc();
  v5 = sub_1AB251FA8(v4, a1);
  if (!v1)
  {
    v2 = sub_1AB05AF50(v4, v5);
  }

  MEMORY[0x1AC59F020](v4, -1, -1);
  return v2;
}

unint64_t sub_1AB252240()
{
  result = qword_1EB432CE0;
  if (!qword_1EB432CE0)
  {
    sub_1AB45EFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432CE0);
  }

  return result;
}

unint64_t sub_1AB252298()
{
  result = qword_1EB434E28;
  if (!qword_1EB434E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434E28);
  }

  return result;
}

unint64_t sub_1AB2522EC()
{
  result = qword_1EB435740;
  if (!qword_1EB435740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB435740);
  }

  return result;
}

uint64_t sub_1AB252338()
{
  v0 = sub_1AB45EFE4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1AC59B420](v2);
  v5 = sub_1AB4600C4();
  if ((v5 & 0x100000000) != 0)
  {
    sub_1AB19B9F4();
    swift_allocError();
    *v6 = 1;
  }

  else
  {
    v8[3] = v5;
    sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    sub_1AB252240();
    sub_1AB45F574();
    sub_1AB45EFD4();
    (*(v1 + 8))(v4, v0);
  }

  return swift_willThrow();
}

void ProcessAssertion.init(explanation:domain:name:)(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4DE160;
  v4 = sub_1AB460514();

  v5 = sub_1AB460514();

  v6 = [objc_opt_self() attributeWithDomain:v4 name:v5];

  *(v3 + 32) = v6;
  v7 = objc_allocWithZone(type metadata accessor for ProcessAssertion.JetRBSAssertion());
  v8 = sub_1AB460514();

  sub_1AB02BEC4();
  v9 = sub_1AB460934();

  v10 = [v7 initWithExplanation:v8 target:v2 attributes:v9];

  *a1 = v10;
  v11 = objc_allocWithZone(_JEAtomicCounter);
  v12 = v10;
  a1[1] = [v11 initWithInitialValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439188);
  v13 = swift_allocObject();
  v14 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v15 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  a1[2] = v13;
  v17[4] = sub_1AB2527B8;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1AB2527C0;
  v17[3] = &block_descriptor_14;
  v16 = _Block_copy(v17);

  [v12 setInvalidationHandler_];
  _Block_release(v16);
}

id sub_1AB252724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  [v5 lock];
  sub_1AB42CB64(a3, a2);

  return [v5 unlock];
}

void sub_1AB2527C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void ProcessAssertion.init(interruptableTask:)(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4DE160;
  v4 = sub_1AB460514();
  v5 = sub_1AB460514();
  v6 = [objc_opt_self() attributeWithDomain:v4 name:v5];

  *(v3 + 32) = v6;
  v7 = objc_allocWithZone(type metadata accessor for ProcessAssertion.JetRBSAssertion());
  v8 = sub_1AB460514();

  sub_1AB02BEC4();
  v9 = sub_1AB460934();

  v10 = [v7 initWithExplanation:v8 target:v2 attributes:v9];

  *a1 = v10;
  v11 = objc_allocWithZone(_JEAtomicCounter);
  v12 = v10;
  a1[1] = [v11 initWithInitialValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439188);
  v13 = swift_allocObject();
  v14 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v15 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  a1[2] = v13;
  v17[4] = sub_1AB2530E4;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1AB2527C0;
  v17[3] = &block_descriptor_4;
  v16 = _Block_copy(v17);

  [v12 setInvalidationHandler_];
  _Block_release(v16);
}

id ProcessAssertion.isAcquired.getter()
{
  v1 = *v0;
  if ([(_JEAtomicCounter *)*(v0 + 8) currentValue]< 1)
  {
    return 0;
  }

  else
  {
    return [v1 isValid];
  }
}

uint64_t sub_1AB252B3C()
{
  sub_1AB252FD0(*(v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB252BA0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EB435660 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB435668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D47F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v5 = MEMORY[0x1E69E6158];
  *(&v27 + 1) = MEMORY[0x1E69E6158];
  *&v26 = 0xD00000000000002DLL;
  *(&v26 + 1) = 0x80000001AB505C60;
  *(v4 + 48) = 0u;
  *(v4 + 32) = 0u;
  sub_1AB0169C4(&v26, v4 + 32);
  *(v4 + 64) = 0;
  *(v3 + 32) = v4;
  v31 = sub_1AB0168A8(0, 20, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001AB505C90;
  v6._countAndFlagsBits = 0xD000000000000013;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  if (v1)
  {
    swift_getErrorValue();
    *(&v30 + 1) = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_0);
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  sub_1AB014A58(&v29, v25, &unk_1EB437E60);
  v26 = 0u;
  v27 = 0u;
  sub_1AB0169C4(v25, &v26);
  v28 = 0;
  v8 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v26;
  v13 = v27;
  v11[64] = v28;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v31 = v8;
  sub_1AB014AC0(&v29, &unk_1EB437E60);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v3 + 40) = v31;
  v15 = sub_1AB461094();
  if (os_log_type_enabled(v2, v15))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v16 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v16[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v16 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v26 = v3;
    *(&v26 + 1) = sub_1AB01A8D8;
    *&v27 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v19 = sub_1AB460484();
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AB4D4720;
    *(v22 + 56) = v5;
    *(v22 + 64) = sub_1AB016854();
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    sub_1AB45FF14();
  }
}

void sub_1AB252FD0(uint64_t a1)
{
  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if ((byte_1EB435998 & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 40));
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(a1 + 24);
      v4 = v2;
      v5 = v3;

      LOBYTE(v3) = ProcessAssertion.invalidate()();

      if (v3)
      {
        v6 = *(a1 + 16);
        v7 = *(a1 + 24);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        sub_1AB05D770(v6, v7);
      }
    }

    os_unfair_lock_unlock((a1 + 40));
  }
}

uint64_t JSONObject.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1AB01EC0C(v1, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    (*(v4 + 144))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_1AB18977C(v7);
    v6 = sub_1AB45F9B4();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

Swift::Double_optional __swiftcall JSONObject.timeInterval(convertedFrom:)(JetEngine::JSONTimeUnit convertedFrom)
{
  v2 = *convertedFrom;
  sub_1AB01EC0C(v1, v9);
  v3 = v10;
  if (v10 == 0.0)
  {
    sub_1AB18977C(v9);
  }

  else
  {
    v4 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, *&v10);
    v3 = COERCE_DOUBLE((*(v4 + 80))(COERCE_DOUBLE(*&v3), v4));
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    if ((v6 & 1) == 0 && ((v2 ^ 1) & 1) == 0)
    {
      v7 = v3 / 1000.0;
      v3 = v3 / 1000.0;
    }
  }

  v8 = LOBYTE(v3);
  result.value = v7;
  result.is_nil = v8;
  return result;
}

uint64_t _Lazy_Many.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;
  v3 = sub_1AB460A64();
  result = sub_1AB039A9C(&v5, v3, &v6);
  *a2 = v6;
  return result;
}

uint64_t _Lazy_Many.wrappedValue.getter()
{
  sub_1AB460A64();
  v0 = type metadata accessor for LazyValueWrapper();

  sub_1AB06BB5C(v0);

  return v2;
}

uint64_t sub_1AB253364()
{
  type metadata accessor for _Lazy_Many();

  sub_1AB253B74(v0);
}

uint64_t _Lazy_Many.wrappedValue.setter(uint64_t a1)
{
  sub_1AB253B74(a1);
}

uint64_t (*_Lazy_Many.wrappedValue.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = _Lazy_Many.wrappedValue.getter();
  return sub_1AB25344C;
}

uint64_t sub_1AB25344C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_1AB253B74(v3);
  }

  else
  {
    sub_1AB253B74(v2);
  }
}

uint64_t _Lazy_Many.description.getter()
{
  sub_1AB460A64();
  type metadata accessor for LazyValueWrapper();

  swift_getWitnessTable();
  sub_1AB461D74();

  return 0;
}

uint64_t _Lazy_Many<>.encode(to:)()
{
  _Lazy_Many.wrappedValue.getter();
  sub_1AB460A74();
}

uint64_t _Lazy_Many<>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = _Lazy_Many.wrappedValue.getter();
  Array<A>._partiallyEncode(to:)(a1, v6, *(a2 + 16), a3);
}

uint64_t _Lazy_Many<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_1AB0B9254(a1, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = v13[1];
  *(v10 + 32) = v13[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v14;
  *(v10 + 72) = v9;
  sub_1AB460A64();
  sub_1AB1AA5C4(sub_1AB253BE4, v10, v13);
  result = sub_1AB066D84(a1);
  *a5 = *&v13[0];
  return result;
}

uint64_t sub_1AB25371C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AB0B9254(a1, v17);
  v14[0] = a2;

  result = Array<A>.init(deserializing:using:)(v17, v14, a3, a4);
  if (v5)
  {
    sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, a2, v17);
    sub_1AB1FC1DC(v17, v14);
    v11 = v15;
    if (v15)
    {
      v12 = v16;
      __swift_project_boxed_opaque_existential_1Tm(v14, v15);
      v13 = sub_1AB460A64();
      (*(v12 + 8))(v13, v5, v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    else
    {
      sub_1AB1FC24C(v14);
    }

    swift_willThrow();
    return sub_1AB1FC24C(v17);
  }

  else
  {
    *a5 = result;
  }

  return result;
}

uint64_t _Lazy_Many<>.init(_partiallyDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_1AB0B9254(a1, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = v13[1];
  *(v10 + 32) = v13[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v14;
  *(v10 + 72) = v9;
  sub_1AB460A64();
  sub_1AB1AA5C4(sub_1AB253C08, v10, v13);
  result = sub_1AB066D84(a1);
  *a5 = *&v13[0];
  return result;
}

uint64_t sub_1AB253928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AB0B9254(a1, v10);
  v11 = a2;

  result = Array<A>.init(_partiallyDeserializing:using:)(v10, &v11, a3, a4);
  *a5 = result;
  return result;
}

uint64_t static _Lazy_Many<>.== infix(_:_:)()
{
  type metadata accessor for _Lazy_Many();
  _Lazy_Many.wrappedValue.getter();
  _Lazy_Many.wrappedValue.getter();
  v0 = sub_1AB460A94();

  return v0 & 1;
}

uint64_t _Lazy_Many<>.hash(into:)()
{
  _Lazy_Many.wrappedValue.getter();
  sub_1AB460A84();
}

uint64_t _Lazy_Many<>.hashValue.getter()
{
  sub_1AB4620A4();
  _Lazy_Many<>.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB253B20()
{
  sub_1AB4620A4();
  _Lazy_Many<>.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB253B74(uint64_t a1)
{
  v2 = *v1;
  v5[0] = a1;
  v5[1] = v2;
  sub_1AB460A64();
  v3 = type metadata accessor for LazyValueWrapper();

  sub_1AB039D58(v5, v3);
}

uint64_t sub_1AB253C8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AB253CEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB253D34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB253D98()
{
  v19 = v0;

  swift_getErrorValue();
  if (sub_1AB044DF8(*(v0 + 232)))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    if (qword_1ED4D0488 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AB4D4720;
    v17 = sub_1AB0168A8(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v3._object = 0x80000001AB4FFA50;
    v3._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    swift_getErrorValue();
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    *(v0 + 184) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 160));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
    sub_1AB014A58(v0 + 160, v0 + 192, &unk_1EB437E60);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1AB0169C4(v0 + 192, v0 + 80);
    *(v0 + 112) = 0;
    v7 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    v10 = *(v0 + 304);
    *(v7 + 2) = v9 + 1;
    v11 = &v7[40 * v9];
    v12 = *(v0 + 80);
    v13 = *(v0 + 96);
    v11[64] = *(v0 + 112);
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    sub_1AB014AC0(v0 + 160, &unk_1EB437E60);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v2 + 32) = v7;
    v18 = 0;
    OSLogger.log(contentsOf:withLevel:)(v2, &v18);

    v1 = v10;
  }

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_1AB254048()
{
  v19 = v0;

  swift_getErrorValue();
  if (sub_1AB044DF8(*(v0 + 232)))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    if (qword_1ED4D0488 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AB4D4720;
    v17 = sub_1AB0168A8(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v3._object = 0x80000001AB4FFA50;
    v3._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    swift_getErrorValue();
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    *(v0 + 184) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 160));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
    sub_1AB014A58(v0 + 160, v0 + 192, &unk_1EB437E60);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1AB0169C4(v0 + 192, v0 + 80);
    *(v0 + 112) = 0;
    v7 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    v10 = *(v0 + 304);
    *(v7 + 2) = v9 + 1;
    v11 = &v7[40 * v9];
    v12 = *(v0 + 80);
    v13 = *(v0 + 96);
    v11[64] = *(v0 + 112);
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    sub_1AB014AC0(v0 + 160, &unk_1EB437E60);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v2 + 32) = v7;
    v18 = 0;
    OSLogger.log(contentsOf:withLevel:)(v2, &v18);

    v1 = v10;
  }

  v15 = *(v0 + 8);

  return v15(0, 1);
}

uint64_t sub_1AB2542FC()
{
  v19 = v0;

  swift_getErrorValue();
  if (sub_1AB044DF8(*(v0 + 232)))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    if (qword_1ED4D0488 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AB4D4720;
    v17 = sub_1AB0168A8(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v3._object = 0x80000001AB4FFA50;
    v3._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    swift_getErrorValue();
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    *(v0 + 184) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 160));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
    sub_1AB014A58(v0 + 160, v0 + 192, &unk_1EB437E60);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1AB0169C4(v0 + 192, v0 + 80);
    *(v0 + 112) = 0;
    v7 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    v10 = *(v0 + 304);
    *(v7 + 2) = v9 + 1;
    v11 = &v7[40 * v9];
    v12 = *(v0 + 80);
    v13 = *(v0 + 96);
    v11[64] = *(v0 + 112);
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    sub_1AB014AC0(v0 + 160, &unk_1EB437E60);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v2 + 32) = v7;
    v18 = 0;
    OSLogger.log(contentsOf:withLevel:)(v2, &v18);

    v1 = v10;
  }

  v15 = *(v0 + 8);

  return v15(2);
}

void sub_1AB2545AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AB4D7EA0;
  v1 = sub_1AB460514();
  v2 = objc_opt_self();
  v3 = [v2 keyWithName:v1 crossDeviceSync:1];

  *(v0 + 32) = v3;
  v4 = sub_1AB460514();
  v5 = [v2 keyWithName:v4 crossDeviceSync:0];

  *(v0 + 40) = v5;
  qword_1EB439230 = v0;
}

uint64_t sub_1AB2546A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB2546C8, 0, 0);
}

uint64_t sub_1AB2546C8()
{
  v0[11] = *(v0[15] + 48);
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1AB25476C;

  return sub_1AB099FE0();
}

uint64_t sub_1AB25476C(uint64_t a1)
{
  *(*v1 + 136) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AB25488C, 0, 0);
}

uint64_t sub_1AB25488C()
{
  v19 = v0;
  if (*(v0 + 136))
  {
    sub_1AB3ACAB8(*(v0 + 96), *(v0 + 104), *(v0 + 136), &v14);

    v1 = v16;
    v2 = v17;
    *(v0 + 48) = v16;
    *(v0 + 64) = v2;
    v3 = v18;
    *(v0 + 80) = v18;
    v4 = v15;
    *(v0 + 16) = v14;
    *(v0 + 32) = v4;
    v5 = *(v0 + 24);
    if (v5)
    {
      *&v14 = *(v0 + 16);
      *(&v14 + 1) = v5;
      v15 = v4;
      v16 = v1;
      v17 = v2;
      v18 = v3;
      v6 = sub_1AB254A68(&v14);
      sub_1AB014AC0(v0 + 16, &qword_1EB439238);
      if (qword_1EB435D00 != -1)
      {
        swift_once();
      }

      v7 = sub_1AB19BCE8(qword_1EB439230, *(v0 + 112), 1, 0);

      v8 = sub_1AB0AEF40(v7);

      v9 = v8;
    }

    else
    {
      v9 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    }

    v13 = *(v0 + 8);

    return v13(v9);
  }

  else
  {
    sub_1AB255CA8();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

id sub_1AB254A68(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [objc_allocWithZone(MEMORY[0x1E698CA20]) init];
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1Tm(v1, v6);
  (*(v7 + 8))(&v11, v6, v7);
  v8 = v11;
  [v5 setAccount_];

  [v5 setClientInfo_];
  v9 = sub_1AB460514();
  [v5 setDomain_];

  if (v4 == 1)
  {
    v3 = v2[7];
  }

  [v5 setResetInterval_];
  [v5 setIsActiveITunesAccountRequired_];
  return v5;
}

uint64_t sub_1AB254B9C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB254BBC, 0, 0);
}

uint64_t sub_1AB254BBC()
{
  v0[2] = *(v0[4] + 48);
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1AB254C60;

  return sub_1AB099FE0();
}

uint64_t sub_1AB254C60(uint64_t a1)
{
  *(*v1 + 48) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AB254D80, 0, 0);
}

uint64_t sub_1AB254D80()
{
  v28 = v0;
  v1 = v0[6];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v0[3];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1AB1AFEFC(*(v2 + 16), 0);
    v26 = sub_1AB1AF80C(&v27, v4 + 4, v3, v2);

    sub_1AB2241F0();
    if (v26 != v3)
    {
      __break(1u);
LABEL_5:
      sub_1AB255CA8();
      swift_allocError();
      *v5 = 1;
      swift_willThrow();
      v6 = v0[1];
      goto LABEL_13;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1AB3AE34C(v4, v1);

  v8 = sub_1AB3AE5D0(v7, v1);

  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = v0[4];
    v22 = *(v10 + 64);
    v11 = v8 + 56;
    v23 = v0;
    v24 = v10;
    v21 = *(v10 + 40);
    do
    {
      v12 = v0[4];
      v13 = *(v11 + 1);
      v25 = v11[16];
      v14 = objc_allocWithZone(MEMORY[0x1E698CA20]);

      v15 = [v14 init];
      v16 = *(v24 + 3);
      v17 = *(v24 + 4);
      __swift_project_boxed_opaque_existential_1Tm(v12, v16);
      (*(v17 + 8))(&v27, v16, v17);
      v18 = v27;
      [v15 setAccount_];

      [v15 setClientInfo_];
      v19 = sub_1AB460514();
      [v15 setDomain_];

      if (v25 == 1)
      {
        v13 = v24[7];
      }

      v11 += 72;
      [v15 setResetInterval_];
      [v15 setIsActiveITunesAccountRequired_];

      [v15 reset];

      --v9;
      v0 = v23;
    }

    while (v9);
  }

  v6 = v0[1];
LABEL_13:

  return v6();
}

uint64_t sub_1AB2550D0()
{
  v0[2] = *(v0[3] + 48);
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1AB255174;

  return sub_1AB099FE0();
}

uint64_t sub_1AB255174(uint64_t a1)
{
  *(*v1 + 40) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AB255294, 0, 0);
}

uint64_t sub_1AB255294()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[6] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1AB2553EC;
    v5 = MEMORY[0x1E69E7CA8] + 8;
    v6 = MEMORY[0x1E69E7CA8] + 8;
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v4, v5, v6, 0, 0, &unk_1AB4E2618, v3, v7);
  }

  else
  {
    sub_1AB255CA8();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

void sub_1AB2553EC()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1AB034560, 0, 0);
  }
}

uint64_t sub_1AB255530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a3;
  v4[47] = a4;
  v4[45] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2555DC, 0, 0);
}

uint64_t sub_1AB2555DC()
{
  v25 = sub_1AB3AE5D0(*(v0 + 368), *(v0 + 368));
  v1 = *(v25 + 2);
  if (v1)
  {
    v30 = **(v0 + 360);
    v2 = v25 + 32;
    v27 = sub_1AB460BE4();
    v3 = *(v27 - 8);
    v29 = *(v3 + 56);
    v28 = (v3 + 48);
    v26 = (v3 + 8);
    do
    {
      v31 = v1;
      v6 = *(v0 + 384);
      v7 = *(v0 + 392);
      v8 = *(v0 + 376);
      *(v0 + 16) = *v2;
      v10 = *(v2 + 2);
      v9 = *(v2 + 3);
      v11 = *(v2 + 1);
      *(v0 + 80) = *(v2 + 8);
      *(v0 + 48) = v10;
      *(v0 + 64) = v9;
      *(v0 + 32) = v11;
      v29(v7, 1, 1, v27);
      sub_1AB255DB0(v8, v0 + 232);
      v12 = swift_allocObject();
      v13 = *(v0 + 280);
      *(v12 + 64) = *(v0 + 264);
      *(v12 + 80) = v13;
      v14 = *(v0 + 248);
      *(v12 + 32) = *(v0 + 232);
      *(v12 + 48) = v14;
      v15 = *(v0 + 48);
      *(v12 + 152) = *(v0 + 64);
      *(v12 + 136) = v15;
      v16 = *(v0 + 16);
      *(v12 + 120) = *(v0 + 32);
      *(v12 + 16) = 0;
      v17 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 96) = *(v0 + 296);
      *(v12 + 168) = *(v0 + 80);
      *(v12 + 104) = v16;
      sub_1AB014A58(v7, v6, &qword_1EB4384A0);
      v18 = (*v28)(v6, 1, v27);
      v19 = *(v0 + 384);
      if (v18 == 1)
      {
        sub_1AB09DF1C(v0 + 16, v0 + 88);
        sub_1AB014AC0(v19, &qword_1EB4384A0);
        if (*v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1AB09DF1C(v0 + 16, v0 + 160);
        sub_1AB460BD4();
        (*v26)(v19, v27);
        if (*v17)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v20 = sub_1AB460AE4();
          v21 = v22;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v20 = 0;
      v21 = 0;
LABEL_10:

      if (v21 | v20)
      {
        v4 = v0 + 304;
        *(v0 + 304) = 0;
        *(v0 + 312) = 0;
        *(v0 + 320) = v20;
        *(v0 + 328) = v21;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v0 + 392);
      *(v0 + 336) = 1;
      *(v0 + 344) = v4;
      *(v0 + 352) = v30;
      swift_task_create();

      sub_1AB014AC0(v5, &qword_1EB4384A0);
      v2 += 72;
      v1 = v31 - 1;
    }

    while (v31 != 1);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1AB255934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AB255954, 0, 0);
}

uint64_t sub_1AB255954()
{
  v13 = v0;
  v1 = v0[9];
  v2 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v2;
  v12 = *(v1 + 64);
  v3 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v3;
  v4 = sub_1AB254A68(v11);
  v5 = sub_1AB460514();
  v6 = [objc_opt_self() keyWithName:v5 crossDeviceSync:1];

  v7 = [v4 identifierIfExistsForKey_];
  v0[6] = nullsub_1;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1AB09C234;
  v0[5] = &block_descriptor_15;
  v8 = _Block_copy(v0 + 2);
  [v7 addFinishBlock_];
  _Block_release(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1AB255ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB200878;

  return sub_1AB2546A4(a1, a2, a3);
}

uint64_t sub_1AB255B88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027554;

  return sub_1AB254B9C(a1);
}

uint64_t sub_1AB255C1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB027460;

  return sub_1AB2550B0();
}

unint64_t sub_1AB255CA8()
{
  result = qword_1EB432658;
  if (!qword_1EB432658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432658);
  }

  return result;
}

uint64_t sub_1AB255CFC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1AB027460;

  return sub_1AB255530(a1, a2, v7, v6);
}

uint64_t sub_1AB255DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027554;

  return sub_1AB255934(a1, v4, v5, v1 + 32, v1 + 104);
}

uint64_t LazyPromise.__allocating_init(on:perform:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  LazyPromise.init(on:perform:)(a1, a2, a3);
  return v6;
}

uint64_t LazyPromise.init(on:perform:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 16) = v7;
  sub_1AB0149B0(a1, v3 + 24);
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  *(v3 + 80) = 0;
  return v3;
}

uint64_t LazyPromise.hasStarted.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1AB07CD94(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1AB255FD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = a1 + 24;
  swift_beginAccess();
  v4 = type metadata accessor for LazyPromise.State();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, v3, v4);
  if (v8[56])
  {
    result = (*(v5 + 8))(v8, v4);
    v7 = 1;
  }

  else
  {

    result = __swift_destroy_boxed_opaque_existential_1Tm(v8);
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

char *LazyPromise.start()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  v3 = type metadata accessor for LazyPromise.State();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v19, v0 + 24, v3);
  if (v22)
  {
    v5 = *&v19[0];
    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    v7 = v20;
    v6 = v21;
    sub_1AB0149B0(v19, v16);
    type metadata accessor for Promise();
    v5 = Promise.__allocating_init()();
    v14 = v5;
    v15 = 1;
    swift_beginAccess();
    v8 = *(v4 + 40);

    v8(v1 + 24, &v14, v3);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v11 = swift_allocObject();
    v11[2] = v7;
    v11[3] = v6;
    v11[4] = v5;
    v12 = *(v10 + 8);

    v12(sub_1AB2586EC, v11, v9, v10);

    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return v5;
}

uint64_t sub_1AB2562F8(void (*a1)(void (*)(uint64_t), uint64_t, void (*)(void *), uint64_t), uint64_t a2, uint64_t a3)
{
  swift_retain_n();
  a1(j___s9JetEngine7PromiseC7resolveyyxF, a3, j___s9JetEngine7PromiseC6rejectyys5Error_pF, a3);
}

uint64_t LazyPromise.then(perform:orCatchError:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(a1, a2, a3, a4, a5);
}

uint64_t LazyPromise.then()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB25640C, 0, 0);
}

uint64_t sub_1AB25640C()
{
  v0[4] = LazyPromise.start()();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1AB2564B4;
  v2 = v0[2];

  return Promise.then()(v2);
}

uint64_t sub_1AB2564B4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1AB25662C;
  }

  else
  {
    v2 = sub_1AB2565C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB2565C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB25662C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LazyPromise.map<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for LazyPromise();
  sub_1AB01494C(a1, v14);
  sub_1AB01494C(a1, v13);
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a3;
  sub_1AB0149B0(v13, (v10 + 6));
  v11 = swift_allocObject();
  LazyPromise.init(on:perform:)(v14, sub_1AB258710, v10);

  return v11;
}

uint64_t sub_1AB256774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *a5;
  v16 = swift_allocObject();
  v16[2] = *(v15 + 80);
  v16[3] = a9;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a6;
  v16[7] = a7;
  v16[8] = a3;
  v16[9] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_retain_n();

  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(sub_1AB258BF0, v16, sub_1AB258C24, v17, a8);
}

uint64_t sub_1AB2568B8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  a2(v13);
  return (*(v10 + 8))(v13, a9);
}

uint64_t LazyPromise.flatMap<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getAssociatedTypeWitness();
  type metadata accessor for LazyPromise();
  sub_1AB01494C(a1, v16);
  sub_1AB01494C(a1, v15);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = v6;
  v12[5] = a2;
  v12[6] = a3;
  sub_1AB0149B0(v15, (v12 + 7));
  v13 = swift_allocObject();
  LazyPromise.init(on:perform:)(v16, sub_1AB258740, v12);

  return v13;
}

uint64_t sub_1AB256AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *a5;
  sub_1AB01494C(a8, v21);
  v16 = swift_allocObject();
  v16[2] = *(v15 + 80);
  v16[3] = a9;
  v16[4] = a10;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = a1;
  v16[8] = a2;
  v16[9] = a3;
  v16[10] = a4;
  sub_1AB0149B0(v21, (v16 + 11));
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_retain_n();

  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(sub_1AB258B58, v16, sub_1AB258C50, v17, a8);
}

uint64_t LazyPromise.join<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v19[1] = *v3;
  v4 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1AB461114();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB015664();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8098], v6);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  *&v23 = MEMORY[0x1E69E7CC0];
  sub_1AB01CA90(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01CB68(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  v11 = sub_1AB461154();
  v12 = v19[0];
  v14 = v20;
  v13 = v21;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for LazyPromise();
  v24 = v10;
  v25 = &protocol witness table for OS_dispatch_queue;
  *&v23 = v11;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v13;
  v15[4] = v12;
  v15[5] = v11;
  v15[6] = v22;
  v16 = swift_allocObject();
  LazyPromise.init(on:perform:)(&v23, sub_1AB258774, v15);
  v17 = v11;

  swift_unknownObjectRetain();
  return v16;
}

uint64_t sub_1AB256F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, NSObject *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v60 = a7;
  v58 = a6;
  v62 = a3;
  v63 = a4;
  v54 = a1;
  v11 = *a5;
  v53 = a5;
  v65 = sub_1AB4601B4();
  v68 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB4601F4();
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v55 = type metadata accessor for Result();
  v15 = sub_1AB461354();
  v16 = *(v15 - 8);
  v56 = v15;
  v57 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = *(v11 + 80);
  v20 = type metadata accessor for Result();
  v21 = sub_1AB461354();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v51 - v23;
  v25 = swift_allocObject();
  v59 = v25;
  v25[2] = v19;
  v25[3] = a8;
  v26 = v54;
  v25[4] = a9;
  v25[5] = v26;
  v25[6] = a2;

  v27 = dispatch_group_create();
  (*(*(v20 - 8) + 56))(v24, 1, 1, v20);
  v28 = sub_1AB02FFC0();
  (*(v22 + 8))(v24, v21);
  dispatch_group_enter(v27);
  v29 = swift_allocObject();
  v29[2] = v19;
  v29[3] = a8;
  v29[4] = a9;
  v29[5] = v28;
  v30 = v28;
  v29[6] = v27;
  v31 = swift_allocObject();
  v31[2] = v19;
  v31[3] = a8;
  v31[4] = a9;
  v31[5] = v30;
  v54 = v30;
  v31[6] = v27;
  v52 = sub_1AB015664();
  v71 = v52;
  v72 = &protocol witness table for OS_dispatch_queue;
  v32 = v58;
  aBlock[0] = v58;
  swift_retain_n();
  v33 = v27;
  v34 = v32;
  LazyPromise.start()();
  Promise.then(perform:orCatchError:on:)(sub_1AB258930, v29, sub_1AB258948, v31, aBlock);

  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  (*(*(v55 - 8) + 56))(v18, 1, 1);
  v35 = v56;
  v36 = sub_1AB02FFC0();
  (v57[1].isa)(v18, v35);
  dispatch_group_enter(v33);
  v37 = swift_allocObject();
  v51 = v19;
  v37[2] = v19;
  v37[3] = a8;
  v37[4] = a9;
  v37[5] = v36;
  v37[6] = v33;
  v38 = swift_allocObject();
  v38[2] = v19;
  v38[3] = a8;
  v38[4] = a9;
  v38[5] = v36;
  v38[6] = v33;
  v71 = v52;
  v72 = &protocol witness table for OS_dispatch_queue;
  aBlock[0] = v34;
  v39 = *(a9 + 16);
  v40 = v33;
  swift_retain_n();
  v58 = v40;
  v57 = v34;
  v39(sub_1AB258960, v37, sub_1AB2589D0, v38, aBlock, a8, a9);

  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v41 = swift_allocObject();
  v41[2] = v51;
  v41[3] = a8;
  v42 = v54;
  v41[4] = a9;
  v41[5] = v42;
  v41[6] = v36;
  v41[7] = sub_1AB258920;
  v43 = v62;
  v44 = v63;
  v41[8] = v59;
  v41[9] = v43;
  v41[10] = v44;
  v72 = sub_1AB258A00;
  v73 = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  v71 = &block_descriptor_16;
  v45 = _Block_copy(aBlock);

  v46 = v61;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v69 = MEMORY[0x1E69E7CC0];
  sub_1AB01CA90(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540);
  v48 = v64;
  v47 = v65;
  sub_1AB4614E4();
  v49 = v58;
  sub_1AB4610C4();
  _Block_release(v45);

  (*(v68 + 8))(v48, v47);
  (*(v66 + 8))(v46, v67);
}

uint64_t sub_1AB257724(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v16 - v13;
  (*(*(a5 - 8) + 16))(&v16 - v13, a1, a5, v12);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v14[*(TupleTypeMetadata2 + 48)], a2, AssociatedTypeWitness);
  a3(v14);
  return (*(v11 + 8))(v14, TupleTypeMetadata2);
}

void sub_1AB2578B0(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  type metadata accessor for Result();
  sub_1AB461354();
  sub_1AB01A1F0(sub_1AB258B38, v8, a2);
  dispatch_group_leave(a3);
}

uint64_t sub_1AB257940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Result();
  v7 = sub_1AB461354();
  (*(*(v7 - 8) + 8))(a1, v7);
  (*(*(a3 - 8) + 16))(a1, a2, a3);
  swift_storeEnumTagMultiPayload();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

void sub_1AB257A48(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  type metadata accessor for Result();
  sub_1AB461354();
  sub_1AB1AA5AC(sub_1AB258B18, v8, a2);
  dispatch_group_leave(a3);
}

id sub_1AB257AD8(void *a1, void *a2)
{
  v4 = type metadata accessor for Result();
  v5 = sub_1AB461354();
  (*(*(v5 - 8) + 8))(a1, v5);
  *a1 = a2;
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  return a2;
}

void sub_1AB257BAC(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Result();
  sub_1AB461354();
  sub_1AB01A1F0(sub_1AB258AF8, v8, a2);
  dispatch_group_leave(a3);
}

uint64_t sub_1AB257C60(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Result();
  v6 = sub_1AB461354();
  (*(*(v6 - 8) + 8))(a1, v6);
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

void sub_1AB257D8C(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Result();
  sub_1AB461354();
  sub_1AB1AA5AC(sub_1AB258AD8, v8, a2);
  dispatch_group_leave(a3);
}

id sub_1AB257E40(void *a1, void *a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Result();
  v5 = sub_1AB461354();
  (*(*(v5 - 8) + 8))(a1, v5);
  *a1 = a2;
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  return a2;
}

void sub_1AB257F38(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, char *a8, char *a9)
{
  v53 = a6;
  v54 = a5;
  v50 = a4;
  v51 = a3;
  v58 = a2;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v46 - v12;
  v52 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Result();
  v49 = AssociatedTypeWitness;
  v16 = type metadata accessor for Result();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = (&v46 - v17);
  v19 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  v61 = a7;
  v62 = a8;
  v56 = a9;
  v57 = a8;
  v63 = a9;
  sub_1AB01A1F0(sub_1AB258A38, v60, v59);
  v25 = *(v15 - 8);
  v26 = (*(v25 + 48))(v24, 1, v15);
  if (v26 == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v26);
  v59 = a7;
  v27 = v56;
  v28 = v57;
  *(&v46 - 4) = a7;
  *(&v46 - 3) = v28;
  *(&v46 - 2) = v27;
  sub_1AB01A1F0(sub_1AB258AB8, (&v46 - 6), v58);
  v29 = *(v16 - 8);
  if ((*(v29 + 48))(v21, 1, v16) == 1)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v30 = *(TupleTypeMetadata2 + 48);
  (*(v25 + 32))(v18, v24, v15);
  (*(v29 + 32))(v18 + v30, v21, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *(v18 + v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1AB4D47F0;
      *(v33 + 32) = v31;
      *(v33 + 40) = v32;
      sub_1AB1BA4A4();
      v34 = swift_allocError();
      v36 = v35;
      v37 = v31;
      v38 = v32;
      *v36 = v33;
      v54(v34);

LABEL_10:
      return;
    }

    (*(v29 + 8))(v18 + v30, v16);
LABEL_9:
    v54(v31);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(v18 + v30);
    (*(v52 + 8))(v18, v59);
    goto LABEL_9;
  }

  v39 = v52;
  v40 = v46;
  v41 = v59;
  (*(v52 + 32))(v46, v18, v59);
  v43 = v47;
  v42 = v48;
  v44 = v18 + v30;
  v45 = v49;
  (*(v48 + 32))(v47, v44, v49);
  v51(v40, v43);
  (*(v42 + 8))(v43, v45);
  (*(v39 + 8))(v40, v41);
}

uint64_t sub_1AB2584F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Result();
  v4 = sub_1AB461354();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t LazyPromise.deinit()
{

  v1 = type metadata accessor for LazyPromise.State();
  (*(*(v1 - 8) + 8))(v0 + 24, v1);
  return v0;
}

uint64_t LazyPromise.__deallocating_deinit()
{
  LazyPromise.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB25863C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return LazyPromise.then()(a1);
}

uint64_t sub_1AB258820()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB258868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB2588A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB2588F4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB258A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Result();
  v4 = sub_1AB461354();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_1AB258B58()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  (*(v0 + 40))();
  (*(v2 + 16))(v3, v4, v5, v6, v0 + 88, v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1AB258C6C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1AB460EC4();
  if (!v19)
  {
    return sub_1AB4609A4();
  }

  v41 = v19;
  v45 = sub_1AB4617A4();
  v32 = sub_1AB4617B4();
  sub_1AB461744();
  result = sub_1AB460EB4();
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
      v22 = sub_1AB460F94();
      v23 = v13;
      v24 = v13;
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
      sub_1AB461784();
      result = sub_1AB460ED4();
      ++v21;
      v13 = v24;
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

uint64_t sub_1AB2590B8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_1AB054C38();
    v5 = &protocol witness table for JSValue;
    v6 = a2;
  }

  else
  {
    v6 = [objc_opt_self() valueWithUndefinedInContext_];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
    v5 = sub_1AB0547A8();
  }

  v11[3] = v4;
  v11[4] = v5;
  v11[0] = v6;
  __swift_project_boxed_opaque_existential_1Tm(v11, v4);
  v7 = v5[2];
  v8 = a2;
  v9 = v7(a1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v9;
}

id sub_1AB2591C4(void *a1, uint64_t a2)
{
  v4 = a1;
  sub_1AB26369C(a2, v4);

  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EE0);
    v5 = sub_1AB461F94();
    v6 = [objc_opt_self() valueWithObject:v5 inContext:v4];
    swift_unknownObjectRelease();
    v4 = sub_1AB2590B8(v4, v6);
  }

  return v4;
}

uint64_t sub_1AB2592A4(uint64_t a1)
{
  v2 = v1;
  sub_1AB01494C(v2, v11);
  v4 = type metadata accessor for JSNetObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(v11, v5 + OBJC_IVAR____TtC9JetEngine11JSNetObject_guts);
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a1];
  v8 = sub_1AB2590B8(a1, v7);

  return v8;
}

uint64_t sub_1AB259384(uint64_t a1)
{
  v2 = v1;
  v11[3] = *v2;
  v11[4] = &protocol witness table for AppleServicesLocalizerFactory;
  v11[0] = v2;
  v4 = type metadata accessor for JSLocalizerFactoryObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(v11, v5 + OBJC_IVAR____TtC9JetEngine24JSLocalizerFactoryObject_localizerFactory);
  v10.receiver = v5;
  v10.super_class = v4;

  v6 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a1];
  v8 = sub_1AB2590B8(a1, v7);

  return v8;
}

uint64_t sub_1AB2594A0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v12[4] = &off_1F1FFD7A8;
  v12[5] = &protocol witness table for AppleServicesLocalizer;
  v12[3] = v4;
  v12[0] = v2;
  v5 = type metadata accessor for JSLocalizerObject();
  v6 = objc_allocWithZone(v5);
  sub_1AB0CDB28(v12, v6 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
  v11.receiver = v6;
  v11.super_class = v5;

  v7 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  v8 = [objc_opt_self() valueWithObject:v7 inContext:{a1, v11.receiver, v11.super_class, v12[0]}];
  v9 = sub_1AB2590B8(a1, v8);

  return v9;
}

uint64_t sub_1AB2595C8(uint64_t a1)
{
  v2 = v1;
  sub_1AB01494C(v2, v11);
  v4 = type metadata accessor for JSCookieProviderObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(v11, v5 + OBJC_IVAR____TtC9JetEngine22JSCookieProviderObject_accountProvider);
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a1];
  v8 = sub_1AB2590B8(a1, v7);

  return v8;
}

uint64_t sub_1AB2596D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v13 = *v4;
  a4(v10);
  if (!v5)
  {
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    a1 = (*(v8 + 16))(a1, v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return a1;
}

unint64_t JSExport<>.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1AB461D84();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v5;
  return result;
}

uint64_t sub_1AB25A768(void *a1)
{
  v3 = a1;
  v4 = v1[5];
  v17 = v1[4];
  v18 = v4;
  v19 = *(v1 + 12);
  v5 = v1[1];
  v13 = *v1;
  v14 = v5;
  v6 = v1[3];
  v15 = v1[2];
  v16 = v6;
  JSError.jsRepresentation(in:)(a1, v10);
  if (!v2)
  {
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v3 = (*(v8 + 16))(v3, v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return v3;
}

uint64_t JSCalculatedValue.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1AB25A938(uint64_t a1)
{
  v3 = a1;
  sub_1AB225AAC(a1, *v1, v1[1], v1[2], v7);
  if (!v2)
  {
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    v3 = (*(v5 + 16))(v3, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return v3;
}

uint64_t sub_1AB25A9E8(uint64_t a1)
{
  v3 = a1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v12 = *v1;
  v13 = v4;
  v14 = v5;
  sub_1AB250DBC(a1, v9);
  if (!v2)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v3 = (*(v7 + 16))(v3, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return v3;
}

char **sub_1AB25AAA4(uint64_t a1)
{
  sub_1AB2EB7BC(a1, &v27);
  if (v1)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v7._countAndFlagsBits = 0x69747265766E6F43;
    v7._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    v8 = type metadata accessor for JSCookie();
    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439380);
    v26[0] = v8;
    sub_1AB01522C(v26, v25);
    v27 = 0u;
    v28 = 0u;
    sub_1AB0169C4(v25, &v27);
    LOBYTE(v29) = 0;
    v9 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v27;
    v14 = v28;
    v12[64] = v29;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v30 = v9;
    sub_1AB014AC0(v26, &unk_1EB437E60);
    v15._object = 0x80000001AB4FFFA0;
    v24 = &v30;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v6 + 32) = v30;
    v16 = sub_1AB461094();
    if (os_log_type_enabled(v5, v16))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v17 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v27 = v6;
      *(&v27 + 1) = sub_1AB0223E4;
      *&v28 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v24 = sub_1AB460484();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1AB016854();
      *(v22 + 32) = v24;
      *(v22 + 40) = v21;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v3 = *(&v28 + 1);
    v4 = v29;
    __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
    v24 = (*(v4 + 16))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  }

  return v24;
}

char **sub_1AB25AEA8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  off_1F1FFF3A0(a1, &v28);
  if (v2)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v27 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v8._countAndFlagsBits = 0x69747265766E6F43;
    v8._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439438);
    v26[0] = &type metadata for JSStack.Options;
    sub_1AB01522C(v26, v25);
    v28 = 0u;
    v29 = 0u;
    sub_1AB0169C4(v25, &v28);
    LOBYTE(v30) = 0;
    v9 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v28;
    v14 = v29;
    v12[64] = v30;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v27 = v9;
    sub_1AB014AC0(v26, &unk_1EB437E60);
    v15._object = 0x80000001AB4FFFA0;
    v24 = &v27;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v27;
    v16 = sub_1AB461094();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v17 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v28 = v7;
      *(&v28 + 1) = sub_1AB0223E4;
      *&v29 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v24 = sub_1AB460484();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1AB016854();
      *(v22 + 32) = v24;
      *(v22 + 40) = v21;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v4 = *(&v29 + 1);
    v5 = v30;
    __swift_project_boxed_opaque_existential_1Tm(&v28, *(&v29 + 1));
    v24 = (*(v5 + 16))(a1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  }

  return v24;
}

char **sub_1AB25B2C8(uint64_t a1)
{
  sub_1AB0C3300(a1, &v27);
  if (v1)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v7._countAndFlagsBits = 0x69747265766E6F43;
    v7._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    v8 = type metadata accessor for JSStack.DecoratedIntent();
    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439430);
    v26[0] = v8;
    sub_1AB01522C(v26, v25);
    v27 = 0u;
    v28 = 0u;
    sub_1AB0169C4(v25, &v27);
    LOBYTE(v29) = 0;
    v9 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v27;
    v14 = v28;
    v12[64] = v29;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v30 = v9;
    sub_1AB014AC0(v26, &unk_1EB437E60);
    v15._object = 0x80000001AB4FFFA0;
    v24 = &v30;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v6 + 32) = v30;
    v16 = sub_1AB461094();
    if (os_log_type_enabled(v5, v16))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v17 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v27 = v6;
      *(&v27 + 1) = sub_1AB0223E4;
      *&v28 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v24 = sub_1AB460484();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1AB016854();
      *(v22 + 32) = v24;
      *(v22 + 40) = v21;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v3 = *(&v28 + 1);
    v4 = v29;
    __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
    v24 = (*(v4 + 16))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  }

  return v24;
}

NSObject *sub_1AB25B6CC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_1AB45F614();
  *(inited + 56) = v4;
  v5 = sub_1AB0B22E0(inited);
  swift_setDeallocating();
  sub_1AB014AC0(inited + 32, &qword_1EB438890);
  v6 = a1;
  v7 = sub_1AB26369C(v5, v6);

  if (v1)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v29 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    v35 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v11._countAndFlagsBits = 0x69747265766E6F43;
    v11._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v12 = type metadata accessor for Models.DeepLinkIntent();
    v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393E0);
    v34[0] = v12;
    sub_1AB01522C(v34, v30);
    v31 = 0u;
    v32 = 0u;
    sub_1AB0169C4(v30, &v31);
    v33 = 0;
    v13 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v31;
    v18 = v32;
    v16[64] = v33;
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    v35 = v13;
    sub_1AB014AC0(v34, &unk_1EB437E60);
    v19._object = 0x80000001AB4FFFA0;
    v19._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v10 + 32) = v35;
    v20 = sub_1AB461094();
    if (os_log_type_enabled(v29, v20))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v21 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v21 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v23 = swift_allocObject();
      *(v23 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v31 = v10;
      *(&v31 + 1) = sub_1AB0223E4;
      *&v32 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v24 = sub_1AB460484();
      v26 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1AB4D4720;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1AB016854();
      *(v27 + 32) = v24;
      *(v27 + 40) = v26;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    *&v31 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EE0);
    v8 = sub_1AB461F94();
    v9 = [objc_opt_self() valueWithObject:v8 inContext:v6];
    swift_unknownObjectRelease();
    v29 = sub_1AB2590B8(v6, v9);
  }

  return v29;
}

uint64_t sub_1AB25BBA8(uint64_t a1, uint64_t a2)
{
  sub_1AB01494C(a2, &v32);
  v4 = type metadata accessor for JSNetObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(&v32, v5 + OBJC_IVAR____TtC9JetEngine11JSNetObject_guts);
  v31.receiver = v5;
  v31.super_class = v4;
  v6 = objc_msgSendSuper2(&v31, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v32);
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a1];
  v8 = sub_1AB2590B8(a1, v7);
  if (v2)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v9 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v11._countAndFlagsBits = 0x69747265766E6F43;
    v11._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393C0);
    v29[0] = &type metadata for Net;
    sub_1AB01522C(v29, v28);
    v32 = 0u;
    v33 = 0u;
    sub_1AB0169C4(v28, &v32);
    v34 = 0;
    v12 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[40 * v14];
    v16 = v32;
    v17 = v33;
    v15[64] = v34;
    *(v15 + 2) = v16;
    *(v15 + 3) = v17;
    v30 = v12;
    sub_1AB014AC0(v29, &unk_1EB437E60);
    v18._object = 0x80000001AB4FFFA0;
    v18._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(v10 + 32) = v30;
    v19 = sub_1AB461094();
    if (os_log_type_enabled(v9, v19))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v20 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v20[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v20 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v22 = swift_allocObject();
      *(v22 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v32 = v10;
      *(&v32 + 1) = sub_1AB0223E4;
      *&v33 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v23 = sub_1AB460484();
      v25 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1AB016854();
      *(v26 + 32) = v23;
      *(v26 + 40) = v25;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v8;
}

uint64_t sub_1AB25BFF4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for JSBagObject();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9JetEngine11JSBagObject_bag] = a2;
  v35.receiver = v6;
  v35.super_class = v5;
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v35, sel_init);
  v8 = [objc_opt_self() valueWithObject:v7 inContext:a1];
  v9 = sub_1AB2590B8(a1, v8);
  if (v2)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    v34 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v12._countAndFlagsBits = 0x69747265766E6F43;
    v12._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393B8);
    v33[0] = &type metadata for Bag;
    sub_1AB01522C(v33, v29);
    v30 = 0u;
    v31 = 0u;
    sub_1AB0169C4(v29, &v30);
    v32 = 0;
    v13 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v30;
    v18 = v31;
    v16[64] = v32;
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    v34 = v13;
    sub_1AB014AC0(v33, &unk_1EB437E60);
    v19._object = 0x80000001AB4FFFA0;
    v19._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v11 + 32) = v34;
    v20 = sub_1AB461094();
    if (os_log_type_enabled(v10, v20))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v21 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v21 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v23 = swift_allocObject();
      *(v23 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v11;
      *(&v30 + 1) = sub_1AB0223E4;
      *&v31 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v24 = sub_1AB460484();
      v26 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1AB4D4720;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1AB016854();
      *(v27 + 32) = v24;
      *(v27 + 40) = v26;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v9;
}

char **sub_1AB25C42C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v32 = a2;
  v33 = a3;
  v34 = a4 & 1;
  sub_1AB250DBC(a1, &v29);
  if (v4)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AB4D4720;
    v35 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v10._countAndFlagsBits = 0x69747265766E6F43;
    v10._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439378);
    v28[0] = &type metadata for PageIntentInstrumentationModel;
    sub_1AB01522C(v28, v27);
    v29 = 0u;
    v30 = 0u;
    sub_1AB0169C4(v27, &v29);
    LOBYTE(v31) = 0;
    v11 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1AB0168A8(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1AB0168A8((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[40 * v13];
    v15 = v29;
    v16 = v30;
    v14[64] = v31;
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    v35 = v11;
    sub_1AB014AC0(v28, &unk_1EB437E60);
    v17._object = 0x80000001AB4FFFA0;
    v26 = &v35;
    v17._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(v9 + 32) = v35;
    v18 = sub_1AB461094();
    if (os_log_type_enabled(v8, v18))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v19 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v19[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v19 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v29 = v9;
      *(&v29 + 1) = sub_1AB0223E4;
      *&v30 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v26 = sub_1AB460484();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1AB016854();
      *(v24 + 32) = v26;
      *(v24 + 40) = v23;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v6 = *(&v30 + 1);
    v7 = v31;
    __swift_project_boxed_opaque_existential_1Tm(&v29, *(&v30 + 1));
    v26 = (*(v7 + 16))(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v29);
  }

  return v26;
}

uint64_t sub_1AB25C838(uint64_t a1, void *a2)
{
  *(&v35 + 1) = *a2;
  v36 = &protocol witness table for AppleServicesLocalizerFactory;
  *&v34 = a2;
  v5 = type metadata accessor for JSLocalizerFactoryObject();
  v6 = objc_allocWithZone(v5);
  sub_1AB01494C(&v34, v6 + OBJC_IVAR____TtC9JetEngine24JSLocalizerFactoryObject_localizerFactory);
  v33.receiver = v6;
  v33.super_class = v5;

  v7 = objc_msgSendSuper2(&v33, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v34);
  v8 = [objc_opt_self() valueWithObject:v7 inContext:a1];
  v9 = sub_1AB2590B8(a1, v8);
  if (v2)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    v32 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v12._countAndFlagsBits = 0x69747265766E6F43;
    v12._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    v13 = *a2;
    v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393C8);
    v31[0] = v13;
    sub_1AB01522C(v31, v30);
    v34 = 0u;
    v35 = 0u;
    sub_1AB0169C4(v30, &v34);
    LOBYTE(v36) = 0;
    v14 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v34;
    v19 = v35;
    v17[64] = v36;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v32 = v14;
    sub_1AB014AC0(v31, &unk_1EB437E60);
    v20._object = 0x80000001AB4FFFA0;
    v20._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v11 + 32) = v32;
    v21 = sub_1AB461094();
    if (os_log_type_enabled(v10, v21))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v22 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v22 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v24 = swift_allocObject();
      *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v34 = v11;
      *(&v34 + 1) = sub_1AB0223E4;
      *&v35 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v25 = sub_1AB460484();
      v27 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1AB4D4720;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1AB016854();
      *(v28 + 32) = v25;
      *(v28 + 40) = v27;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v9;
}

uint64_t sub_1AB25CCD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = [objc_opt_self() valueWithObject:a2 inContext:a1];
  v11 = sub_1AB2590B8(a1, v10);
  if (v6)
  {
    v32 = a6;

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v12 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D4720;
    v38 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v14._countAndFlagsBits = 0x69747265766E6F43;
    v14._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    ObjectType = swift_getObjectType();
    v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v37[0] = ObjectType;
    sub_1AB01522C(v37, v33);
    v34 = 0u;
    v35 = 0u;
    sub_1AB0169C4(v33, &v34);
    v36 = 0;
    v16 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v34;
    v21 = v35;
    v19[64] = v36;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v38 = v16;
    sub_1AB014AC0(v37, &unk_1EB437E60);
    v22._object = 0x80000001AB4FFFA0;
    v22._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v13 + 32) = v38;
    v23 = sub_1AB461094();
    if (os_log_type_enabled(v12, v23))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v24 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v24[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v24 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v26 = swift_allocObject();
      *(v26 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v34 = v13;
      *(&v34 + 1) = v32;
      *&v35 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v27 = sub_1AB460484();
      v29 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1AB4D4720;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 64) = sub_1AB016854();
      *(v30 + 32) = v27;
      *(v30 + 40) = v29;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v11;
}

uint64_t sub_1AB25D0D0(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    v4 = result;
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    v28 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v7._countAndFlagsBits = 0x69747265766E6F43;
    v7._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439440);
    v27[0] = &type metadata for JSLegacyCalculatedValue;
    sub_1AB01522C(v27, v23);
    v24 = 0u;
    v25 = 0u;
    sub_1AB0169C4(v23, &v24);
    v26 = 0;
    v8 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AB0168A8(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[40 * v10];
    v12 = v24;
    v13 = v25;
    v11[64] = v26;
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    v28 = v8;
    sub_1AB014AC0(v27, &unk_1EB437E60);
    v14._object = 0x80000001AB4FFFA0;
    v14._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v6 + 32) = v28;
    v15 = sub_1AB461094();
    if (os_log_type_enabled(v5, v15))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v16 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v16[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v16 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v18 = swift_allocObject();
      *(v18 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v24 = v6;
      *(&v24 + 1) = sub_1AB0223E4;
      *&v25 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v19 = sub_1AB460484();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1AB016854();
      *(v22 + 32) = v19;
      *(v22 + 40) = v21;
      sub_1AB45FF14();
    }

    swift_willThrow();
    return v4;
  }

  return result;
}

uint64_t sub_1AB25D474(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v37 = &off_1F1FFD7A8;
  v38 = &protocol witness table for AppleServicesLocalizer;
  *(&v36 + 1) = v5;
  *&v35 = a2;
  v6 = type metadata accessor for JSLocalizerObject();
  v7 = objc_allocWithZone(v6);
  sub_1AB0CDB28(&v35, v7 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
  v34.receiver = v7;
  v34.super_class = v6;

  v8 = objc_msgSendSuper2(&v34, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
  v9 = [objc_opt_self() valueWithObject:v8 inContext:a1];
  v10 = sub_1AB2590B8(a1, v9);
  if (v2)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D4720;
    v33 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x69747265766E6F43;
    v13._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v14 = *a2;
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439428);
    v32[0] = v14;
    sub_1AB01522C(v32, v31);
    v35 = 0u;
    v36 = 0u;
    sub_1AB0169C4(v31, &v35);
    LOBYTE(v37) = 0;
    v15 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB0168A8(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v35;
    v20 = v36;
    v18[64] = v37;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    v33 = v15;
    sub_1AB014AC0(v32, &unk_1EB437E60);
    v21._object = 0x80000001AB4FFFA0;
    v21._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v12 + 32) = v33;
    v22 = sub_1AB461094();
    if (os_log_type_enabled(v11, v22))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v23 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v23 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v25 = swift_allocObject();
      *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v12;
      *(&v35 + 1) = sub_1AB0223E4;
      *&v36 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v26 = sub_1AB460484();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1AB4D4720;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1AB016854();
      *(v29 + 32) = v26;
      *(v29 + 40) = v28;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v10;
}

uint64_t sub_1AB25D920(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    v4 = result;
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    v28 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v7._countAndFlagsBits = 0x69747265766E6F43;
    v7._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439420);
    v27[0] = &type metadata for JSCalculatedValue;
    sub_1AB01522C(v27, v23);
    v24 = 0u;
    v25 = 0u;
    sub_1AB0169C4(v23, &v24);
    v26 = 0;
    v8 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AB0168A8(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[40 * v10];
    v12 = v24;
    v13 = v25;
    v11[64] = v26;
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    v28 = v8;
    sub_1AB014AC0(v27, &unk_1EB437E60);
    v14._object = 0x80000001AB4FFFA0;
    v14._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v6 + 32) = v28;
    v15 = sub_1AB461094();
    if (os_log_type_enabled(v5, v15))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v16 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v16[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v16 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v18 = swift_allocObject();
      *(v18 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v24 = v6;
      *(&v24 + 1) = sub_1AB0223E4;
      *&v25 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v19 = sub_1AB460484();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1AB016854();
      *(v22 + 32) = v19;
      *(v22 + 40) = v21;
      sub_1AB45FF14();
    }

    swift_willThrow();
    return v4;
  }

  return result;
}

char **sub_1AB25DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AB225AAC(a1, a2, a3, a4, &v29);
  if (v4)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AB4D4720;
    v32 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v10._countAndFlagsBits = 0x69747265766E6F43;
    v10._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439448);
    v28[0] = &type metadata for LookupResponse;
    sub_1AB01522C(v28, v27);
    v29 = 0u;
    v30 = 0u;
    sub_1AB0169C4(v27, &v29);
    LOBYTE(v31) = 0;
    v11 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1AB0168A8(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1AB0168A8((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[40 * v13];
    v15 = v29;
    v16 = v30;
    v14[64] = v31;
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    v32 = v11;
    sub_1AB014AC0(v28, &unk_1EB437E60);
    v17._object = 0x80000001AB4FFFA0;
    v26 = &v32;
    v17._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(v9 + 32) = v32;
    v18 = sub_1AB461094();
    if (os_log_type_enabled(v8, v18))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v19 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v19[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v19 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v29 = v9;
      *(&v29 + 1) = sub_1AB0223E4;
      *&v30 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v26 = sub_1AB460484();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1AB016854();
      *(v24 + 32) = v26;
      *(v24 + 40) = v23;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v6 = *(&v30 + 1);
    v7 = v31;
    __swift_project_boxed_opaque_existential_1Tm(&v29, *(&v30 + 1));
    v26 = (*(v7 + 16))(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v29);
  }

  return v26;
}

uint64_t sub_1AB25E0C4(uint64_t a1, uint64_t a2)
{
  sub_1AB01494C(a2, &v32);
  v4 = type metadata accessor for JSCookieProviderObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(&v32, v5 + OBJC_IVAR____TtC9JetEngine22JSCookieProviderObject_accountProvider);
  v31.receiver = v5;
  v31.super_class = v4;
  v6 = objc_msgSendSuper2(&v31, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v32);
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a1];
  v8 = sub_1AB2590B8(a1, v7);
  if (v2)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v9 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v11._countAndFlagsBits = 0x69747265766E6F43;
    v11._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393D0);
    v29[0] = &type metadata for CookieProvider;
    sub_1AB01522C(v29, v28);
    v32 = 0u;
    v33 = 0u;
    sub_1AB0169C4(v28, &v32);
    v34 = 0;
    v12 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[40 * v14];
    v16 = v32;
    v17 = v33;
    v15[64] = v34;
    *(v15 + 2) = v16;
    *(v15 + 3) = v17;
    v30 = v12;
    sub_1AB014AC0(v29, &unk_1EB437E60);
    v18._object = 0x80000001AB4FFFA0;
    v18._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(v10 + 32) = v30;
    v19 = sub_1AB461094();
    if (os_log_type_enabled(v9, v19))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v20 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v20[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v20 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v22 = swift_allocObject();
      *(v22 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v32 = v10;
      *(&v32 + 1) = sub_1AB0223E4;
      *&v33 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v23 = sub_1AB460484();
      v25 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1AB016854();
      *(v26 + 32) = v23;
      *(v26 + 40) = v25;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v8;
}

char **sub_1AB25E510(uint64_t a1)
{
  v3 = sub_1AB45F9B4();
  sub_1AB261DC4(a1, &v27);
  if (v1)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v8._countAndFlagsBits = 0x69747265766E6F43;
    v8._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FF8);
    v26[0] = v3;
    sub_1AB01522C(v26, v25);
    v27 = 0u;
    v28 = 0u;
    sub_1AB0169C4(v25, &v27);
    LOBYTE(v29) = 0;
    v9 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v27;
    v14 = v28;
    v12[64] = v29;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v30 = v9;
    sub_1AB014AC0(v26, &unk_1EB437E60);
    v15._object = 0x80000001AB4FFFA0;
    v24 = &v30;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v30;
    v16 = sub_1AB461094();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v17 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v27 = v7;
      *(&v27 + 1) = sub_1AB0223E4;
      *&v28 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v24 = sub_1AB460484();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1AB016854();
      *(v22 + 32) = v24;
      *(v22 + 40) = v21;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v4 = *(&v28 + 1);
    v5 = v29;
    __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
    v24 = (*(v5 + 16))(a1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  }

  return v24;
}

uint64_t sub_1AB25E930(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithUInt32:a2 inContext:a1];
  v5 = sub_1AB2590B8(a1, v4);
  if (v2)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v8._countAndFlagsBits = 0x69747265766E6F43;
    v8._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393E8);
    v29[0] = MEMORY[0x1E69E7668];
    sub_1AB01522C(v29, v25);
    v26 = 0u;
    v27 = 0u;
    sub_1AB0169C4(v25, &v26);
    v28 = 0;
    v9 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v26;
    v14 = v27;
    v12[64] = v28;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v30 = v9;
    sub_1AB014AC0(v29, &unk_1EB437E60);
    v15._object = 0x80000001AB4FFFA0;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v30;
    v16 = sub_1AB461094();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v17 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v26 = v7;
      *(&v26 + 1) = sub_1AB0223E4;
      *&v27 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v20 = sub_1AB460484();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1AB016854();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v5;
}