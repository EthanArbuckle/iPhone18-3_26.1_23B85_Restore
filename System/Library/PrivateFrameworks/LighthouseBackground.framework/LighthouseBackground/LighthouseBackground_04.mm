uint64_t sub_1DF1A6670(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1DF22AA80();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD58, &qword_1DF22FF90);
  v46 = a2;
  result = sub_1DF22B3E0();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DF1A69F0(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD40, &unk_1DF22D740);
  v46 = a2;
  result = sub_1DF22B3E0();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DF1A6D78(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = a2;
  result = sub_1DF22B3E0();
  v10 = result;
  if (*(v7 + 16))
  {
    v37 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = 16 * (v21 | (v11 << 6));
      v25 = (*(v7 + 48) + v24);
      v26 = *v25;
      v27 = v25[1];
      v39 = *(*(v7 + 56) + v24);
      if ((v38 & 1) == 0)
      {
      }

      v28 = *(v10 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = 16 * v18;
      v20 = (*(v10 + 48) + v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v10 + 56) + v19) = v39;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero((v7 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1DF1A7028(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for MLHostAnalytics();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF0, &unk_1DF22D6F0);
  v44 = a2;
  result = sub_1DF22B3E0();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DF1A89B4(v31, v45, type metadata accessor for MLHostAnalytics);
      }

      else
      {
        sub_1DF1A88EC(v31, v45, type metadata accessor for MLHostAnalytics);
      }

      v32 = *(v12 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DF1A89B4(v45, *(v12 + 56) + v30 * v20, type metadata accessor for MLHostAnalytics);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DF1A73B4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1DF22B3E0();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1DF1A7654(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
      return sub_1DF1936EC(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_1ECE0CBB0, &qword_1DF22CF88);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DF175DC8();
    goto LABEL_7;
  }

  sub_1DF1A5AA4(v15, a4 & 1, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
  v22 = *v5;
  v23 = sub_1DF175254(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DF22B660();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DF1A84F0(v12, a2, a3, a1, v18, &qword_1ECE0CBB0, &qword_1DF22CF88);
}

uint64_t sub_1DF1A77F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      return sub_1DF1936EC(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_1ECE0CBA8, &qword_1DF22CF80);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DF175DEC();
    goto LABEL_7;
  }

  sub_1DF1A5AA4(v15, a4 & 1, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
  v22 = *v5;
  v23 = sub_1DF175254(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DF22B660();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DF1A84F0(v12, a2, a3, a1, v18, &qword_1ECE0CBA8, &qword_1DF22CF80);
}

uint64_t sub_1DF1A799C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
      return sub_1DF1936EC(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_1ECE0CD60, &qword_1DF22FFC0);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DF17605C();
    goto LABEL_7;
  }

  sub_1DF1A5AA4(v15, a4 & 1, &qword_1ECE0CD60, &qword_1DF22FFC0, &qword_1ECE0CD68, &unk_1DF22D760);
  v22 = *v5;
  v23 = sub_1DF175254(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DF22B660();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DF1A84F0(v12, a2, a3, a1, v18, &qword_1ECE0CD60, &qword_1DF22FFC0);
}

uint64_t sub_1DF1A7B40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF175254(a2, a3);
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
      sub_1DF1A5E14(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DF175254(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1DF22B660();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1DF176080();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_1DF1A7CB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DF1764F8();
      goto LABEL_7;
    }

    sub_1DF1A6670(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1DF175254(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DF22B660();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1DF22AA80();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1DF1A865C(v12, a2, a3, a1, v18);
}

uint64_t sub_1DF1A7E38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DF176778();
      goto LABEL_7;
    }

    sub_1DF1A69F0(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1DF175254(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DF22B660();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1DF1A870C(v12, a2, a3, a1, v18);
}

uint64_t sub_1DF1A8014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v11 = v8;
  v17 = *v8;
  v18 = sub_1DF175254(a3, a4);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a5 & 1) == 0)
  {
    if (v25 < v23 || (a5 & 1) != 0)
    {
      sub_1DF1A6D78(v23, a5 & 1, a7, a8);
      v27 = *v11;
      v18 = sub_1DF175254(a3, a4);
      if ((v24 & 1) != (v28 & 1))
      {
LABEL_18:
        result = sub_1DF22B660();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      a6();
      v18 = v26;
    }
  }

  v29 = *v11;
  if (v24)
  {
    v30 = (v29[7] + 16 * v18);
    v31 = v30[1];
    *v30 = a1;
    v30[1] = a2;
  }

  v29[(v18 >> 6) + 8] |= 1 << v18;
  v33 = (v29[6] + 16 * v18);
  *v33 = a3;
  v33[1] = a4;
  v34 = (v29[7] + 16 * v18);
  *v34 = a1;
  v34[1] = a2;
  v35 = v29[2];
  v22 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29[2] = v36;
}

uint64_t sub_1DF1A81CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for MLHostAnalytics();
      return sub_1DF1A8A1C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for MLHostAnalytics);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DF176B98();
    goto LABEL_7;
  }

  sub_1DF1A7028(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1DF175254(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DF22B660();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DF1A87C8(v12, a2, a3, a1, v18);
}

uint64_t sub_1DF1A8338(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF175254(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
      return sub_1DF1936EC(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_1ECE0CCF8, &qword_1DF22FF80);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DF176DF8();
    goto LABEL_7;
  }

  sub_1DF1A5AA4(v15, a4 & 1, &qword_1ECE0CCF8, &qword_1DF22FF80, &qword_1ECE0CD00, &qword_1DF22D700);
  v22 = *v5;
  v23 = sub_1DF175254(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DF22B660();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DF1A84F0(v12, a2, a3, a1, v18, &qword_1ECE0CCF8, &qword_1DF22FF80);
}

uint64_t sub_1DF1A84F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  v13 = a5[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = sub_1DF17A710(a4, v13 + *(*(v14 - 8) + 72) * a1, a6, a7);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

unint64_t sub_1DF1A85B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8, double a9, double a10)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v10 = (a7[6] + 32 * result);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = a7[7] + 32 * result;
  *v11 = a8;
  *(v11 + 8) = a9;
  *(v11 + 16) = a10;
  *(v11 + 24) = a6;
  v12 = a7[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v14;
  }

  return result;
}

unint64_t sub_1DF1A8614(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DF1A865C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DF22AA80();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DF1A870C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DF1A87C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for MLHostAnalytics();
  result = sub_1DF1A89B4(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for MLHostAnalytics);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1DF1A8874()
{
  result = qword_1ECE0C720;
  if (!qword_1ECE0C720)
  {
    sub_1DF22A800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C720);
  }

  return result;
}

uint64_t sub_1DF1A88EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF1A8954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF1A89B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF1A8A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getTaskGraph()()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v55 = *(v62 - 8);
  v0 = *(v55 + 64);
  v1 = MEMORY[0x1EEE9AC00](v62);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v61 = &v54 - v4;
  v60 = type metadata accessor for LedgerState();
  v5 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D350, &qword_1DF2300E8);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[4] = sub_1DF18FE5C(MEMORY[0x1E69E7CC0]);
  v10 = v8 + 4;
  v8[2] = 0x724774736F484C4DLL;
  v8[3] = 0xEB00000000687061;
  v54 = v8;
  v11 = sub_1DF18FE5C(v9);
  swift_beginAccess();
  *v10 = v11;

  v65 = v9;
  sub_1DF160D74(0, 11, 0);
  v12 = 0;
  v13 = v65;
  v58 = 0x80000001DF23D020;
  v59 = 0x80000001DF23D040;
  v56 = 0x80000001DF23CFE0;
  v57 = 0x80000001DF23D000;
  while (1)
  {
    v63 = v13;
    v14 = &unk_1F5A46A70 + v12++;
    v15 = v14[32];
    v16 = 0x64656C696146;
    if (v15 == 9)
    {
      v16 = 0x6574656C706D6F43;
    }

    v17 = 0xE900000000000064;
    if (v15 != 9)
    {
      v17 = 0xE600000000000000;
    }

    if (v15 == 8)
    {
      v16 = 0x6465727265666544;
      v17 = 0xE800000000000000;
    }

    v18 = 0xD00000000000001BLL;
    v19 = 0x7261745320746F4ELL;
    if (v15 != 6)
    {
      v19 = 0x676E696E6E7552;
    }

    v20 = 0xEB00000000646574;
    v21 = 0xE700000000000000;
    if (v15 == 6)
    {
      v21 = 0xEB00000000646574;
    }

    if (v15 != 5)
    {
      v18 = v19;
    }

    v22 = v59;
    if (v15 != 5)
    {
      v22 = v21;
    }

    if (v15 <= 7)
    {
      v16 = v18;
      v17 = v22;
    }

    v23 = 0xD00000000000001ALL;
    v24 = v58;
    if (v15 == 3)
    {
      v24 = v57;
    }

    if (v15 == 2)
    {
      v24 = v56;
    }

    else
    {
      v23 = 0xD000000000000014;
    }

    v25 = 0x616572436B736154;
    if (v15)
    {
      v25 = 0x656365526B736154;
      v20 = 0xEC00000064657669;
    }

    if (v15 <= 1)
    {
      v23 = v25;
      v24 = v20;
    }

    v26 = v15 <= 4 ? v23 : v16;
    v27 = v15 <= 4 ? v24 : v17;
    v28 = v7 + *(v60 + 20);
    sub_1DF22A740();
    *v7 = v26;
    v7[1] = v27;
    v29 = v7;
    v30 = v61;
    sub_1DF17B4F4(v7, v61);
    *(v30 + *(v62 + 52)) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v31 = v3;
    sub_1DF196EF8(v30, v3);
    v32 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v10;
    v64 = *v10;
    v35 = v64;
    v37 = sub_1DF175254(v26, v27);
    v38 = v35[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      break;
    }

    v41 = v36;
    if (v35[3] >= v40)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DF17605C();
      }
    }

    else
    {
      sub_1DF1A5DF0(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_1DF175254(v26, v27);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_49;
      }

      v37 = v42;
    }

    v3 = v31;
    v44 = v64;
    if (v41)
    {
      sub_1DF1A95F0(v31, v64[7] + *(v55 + 72) * v37);
    }

    else
    {
      v64[(v37 >> 6) + 8] |= 1 << v37;
      v45 = (v44[6] + 16 * v37);
      *v45 = v26;
      v45[1] = v27;
      sub_1DF196EF8(v31, v44[7] + *(v55 + 72) * v37);
      v46 = v44[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_48;
      }

      v44[2] = v48;
    }

    v10 = v34;
    *v34 = v44;
    swift_endAccess();
    v7 = v29;
    sub_1DF17B558(v29);
    v13 = v63;
    v65 = v63;
    v50 = *(v63 + 16);
    v49 = *(v63 + 24);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      sub_1DF160D74((v49 > 1), v50 + 1, 1);
      v13 = v65;
    }

    *(v13 + 16) = v51;
    if (v12 == 11)
    {

      v52 = v54;
      sub_1DF192E08(0x7261745320746F4ELL, 0xEB00000000646574, 0x676E696E6E7552, 0xE700000000000000);
      sub_1DF192E08(0x7261745320746F4ELL, 0xEB00000000646574, 0x6465727265666544, 0xE800000000000000);
      sub_1DF192E08(0x676E696E6E7552, 0xE700000000000000, 0x6574656C706D6F43, 0xE900000000000064);
      sub_1DF192E08(0x676E696E6E7552, 0xE700000000000000, 0x6465727265666544, 0xE800000000000000);
      sub_1DF192E08(0x676E696E6E7552, 0xE700000000000000, 0x64656C696146, 0xE600000000000000);
      sub_1DF192E08(0x6465727265666544, 0xE800000000000000, 0x676E696E6E7552, 0xE700000000000000);
      sub_1DF192E08(0x6465727265666544, 0xE800000000000000, 0x64656C696146, 0xE600000000000000);
      sub_1DF192E08(0x6465727265666544, 0xE800000000000000, 0x6574656C706D6F43, 0xE900000000000064);
      sub_1DF192E08(0x6574656C706D6F43, 0xE900000000000064, 0x7261745320746F4ELL, 0xEB00000000646574);
      sub_1DF192E08(0x64656C696146, 0xE600000000000000, 0x7261745320746F4ELL, 0xEB00000000646574);
      sub_1DF192E08(0x64656C696146, 0xE600000000000000, 0x64656C696146, 0xE600000000000000);
      return v52;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

char *getTaskStateMachine()()
{
  Task = getTaskGraph()();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D4B8, &qword_1DF230900);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_1DF196C80(Task);

  return v4;
}

LighthouseBackground::TaskGraphWalks_optional __swiftcall TaskGraphWalks.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TaskGraphWalks.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6D6F43656C637963;
  v3 = 0x6974656C706D6F63;
  v4 = 0x6572756C696166;
  if (v1 != 4)
  {
    v4 = 0x6C61727265666564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696146656C637963;
  if (v1 != 1)
  {
    v5 = 0x666544656C637963;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF1A9324()
{
  *v0;
  *v0;
  *v0;
  sub_1DF22AD20();
}

void sub_1DF1A944C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6E6F6974656C70;
  v4 = 0x6D6F43656C637963;
  v5 = 0xEA00000000006E6FLL;
  v6 = 0x6974656C706D6F63;
  v7 = 0xE700000000000000;
  v8 = 0x6572756C696166;
  if (v2 != 4)
  {
    v8 = 0x6C61727265666564;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000006572756CLL;
  v10 = 0x696146656C637963;
  if (v2 != 1)
  {
    v10 = 0x666544656C637963;
    v9 = 0xED00006C61727265;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DF1A95F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF1A9664()
{
  result = qword_1ECE0D4C0;
  if (!qword_1ECE0D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D4C0);
  }

  return result;
}

unint64_t sub_1DF1A96BC()
{
  result = qword_1ECE0D4C8;
  if (!qword_1ECE0D4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0D4D0, &qword_1DF2309A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D4C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskRequestProtectionClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskRequestProtectionClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF1A9870()
{
  result = qword_1ECE0D4D8;
  if (!qword_1ECE0D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D4D8);
  }

  return result;
}

LighthouseBackground::DeviceOSType_optional __swiftcall DeviceOSType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceOSType.rawValue.getter()
{
  v1 = *v0;
  v2 = 5459817;
  v3 = 0x534F6E6F69736976;
  v4 = 0x534F63616DLL;
  if (v1 != 4)
  {
    v4 = 0x726F707075736E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x534F6863746177;
  if (v1 != 1)
  {
    v5 = 1397716596;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF1A99F8()
{
  *v0;
  *v0;
  *v0;
  sub_1DF22AD20();
}

void sub_1DF1A9AF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE800000000000000;
  v6 = 0x534F6E6F69736976;
  v7 = 0xE500000000000000;
  v8 = 0x534F63616DLL;
  if (v2 != 4)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x534F6863746177;
  if (v2 != 1)
  {
    v10 = 1397716596;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

LighthouseBackground::MLHostEnvironment_optional __swiftcall MLHostEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

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

uint64_t MLHostEnvironment.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6D706F6C65766564;
  }

  else
  {
    result = 0x69746375646F7270;
  }

  *v0;
  return result;
}

uint64_t sub_1DF1A9D10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D706F6C65766564;
  }

  else
  {
    v4 = 0x69746375646F7270;
  }

  if (v3)
  {
    v5 = 0xEA00000000006E6FLL;
  }

  else
  {
    v5 = 0xEB00000000746E65;
  }

  if (*a2)
  {
    v6 = 0x6D706F6C65766564;
  }

  else
  {
    v6 = 0x69746375646F7270;
  }

  if (*a2)
  {
    v7 = 0xEB00000000746E65;
  }

  else
  {
    v7 = 0xEA00000000006E6FLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();
  }

  return v9 & 1;
}

uint64_t sub_1DF1A9DC4()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF1A9E54()
{
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF1A9ED0()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF1A9F5C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF22B420();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DF1A9FBC(uint64_t *a1@<X8>)
{
  v2 = 0x69746375646F7270;
  if (*v1)
  {
    v2 = 0x6D706F6C65766564;
  }

  v3 = 0xEA00000000006E6FLL;
  if (*v1)
  {
    v3 = 0xEB00000000746E65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MLHostConfig.cloudContainer.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MLHostConfig.cloudContainer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MLHostConfig.apsChannel.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MLHostConfig.apsChannel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t sub_1DF1AA254()
{
  v1 = 0x7269766E45737061;
  v2 = 0x6E6F4364756F6C63;
  if (*v0 != 2)
  {
    v2 = 0x6E6E616843737061;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF1AA2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1ABD64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1AA318(uint64_t a1)
{
  v2 = sub_1DF1AA5AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AA354(uint64_t a1)
{
  v2 = sub_1DF1AA5AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MLHostConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D500, &qword_1DF230A80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v15 = v1[1];
  v10 = *(v1 + 1);
  v14[3] = *(v1 + 2);
  v14[4] = v10;
  v11 = *(v1 + 3);
  v14[1] = *(v1 + 4);
  v14[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AA5AC();
  sub_1DF22B740();
  v21 = v9;
  v20 = 0;
  sub_1DF1AA600();
  sub_1DF22B5C0();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v19 = v15;
  v18 = 1;
  sub_1DF22B5C0();
  v17 = 2;
  sub_1DF22B510();
  v16 = 3;
  sub_1DF22B510();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DF1AA5AC()
{
  result = qword_1ED8E6EA0;
  if (!qword_1ED8E6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6EA0);
  }

  return result;
}

unint64_t sub_1DF1AA600()
{
  result = qword_1ECE0C3E8;
  if (!qword_1ECE0C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C3E8);
  }

  return result;
}

uint64_t MLHostConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D508, &unk_1DF230A88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AA5AC();
  sub_1DF22B730();
  if (!v2)
  {
    v28 = 0;
    sub_1DF1AA8EC();
    sub_1DF22B4E0();
    v11 = v29;
    v26 = 1;
    sub_1DF22B4E0();
    v23 = v11;
    v12 = v27;
    v25 = 2;
    v13 = sub_1DF22B430();
    v16 = v15;
    v21 = v12;
    v22 = v13;
    v24 = 3;
    v17 = sub_1DF22B430();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    *a2 = v23;
    *(a2 + 1) = v21;
    *(a2 + 8) = v22;
    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
    *(a2 + 32) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF1AA8EC()
{
  result = qword_1ECE0C3E0;
  if (!qword_1ECE0C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C3E0);
  }

  return result;
}

uint64_t MLHostConfig.description.getter()
{
  v1 = sub_1DF22B720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v9 = *(v0 + 1);
  v8 = *(v0 + 2);
  v11 = *(v0 + 3);
  v10 = *(v0 + 4);
  *(&v29 + 1) = &type metadata for MLHostConfig;
  v12 = swift_allocObject();
  *&v28 = v12;
  *(v12 + 16) = v6;
  *(v12 + 17) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v8;
  *(v12 + 40) = v11;
  *(v12 + 48) = v10;

  sub_1DF22B700();
  v13 = sub_1DF22B710();
  (*(v2 + 8))(v5, v1);
  v24[1] = v13;
  sub_1DF22B3A0();
  sub_1DF22B410();
  if (*(&v30 + 1))
  {
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v27[0] = v28;
      v27[1] = v29;
      v27[2] = v30;
      if (*(&v28 + 1))
      {
        v25 = 0;
        v26 = 0xE000000000000000;
        MEMORY[0x1E12CF820](*&v27[0]);
        MEMORY[0x1E12CF820](8250, 0xE200000000000000);
        sub_1DF22B3B0();
        v16 = v25;
        v15 = v26;
        sub_1DF1AACB4(v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1DF174610(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = sub_1DF174610((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        v19 = &v14[16 * v18];
        *(v19 + 4) = v16;
        *(v19 + 5) = v15;
      }

      else
      {
        sub_1DF1AACB4(v27);
      }

      sub_1DF22B410();
    }

    while (*(&v30 + 1));
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  strcpy(&v28, "MLHostConfig(");
  HIWORD(v28) = -4864;
  *&v27[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  sub_1DF164BEC(&qword_1ECE0C060, &unk_1ECE0C7A0, &qword_1DF22CB50);
  v20 = sub_1DF22AC40();
  v22 = v21;

  MEMORY[0x1E12CF820](v20, v22);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return v28;
}

uint64_t sub_1DF1AACB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F1C0, &qword_1DF230A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExtensionRecord.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ExtensionRecord.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ExtensionRecord.url.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ExtensionRecord.extensionPointIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void __swiftcall ExtensionRecord.init(name:bundleIdentifier:url:extensionPointIdentifier:)(LighthouseBackground::ExtensionRecord *__return_ptr retstr, Swift::String name, Swift::String bundleIdentifier, Swift::String url, Swift::String extensionPointIdentifier)
{
  retstr->name = name;
  retstr->bundleIdentifier = bundleIdentifier;
  retstr->url = url;
  retstr->extensionPointIdentifier = extensionPointIdentifier;
}

unint64_t sub_1DF1AADF4()
{
  v1 = 1701667182;
  v2 = 7107189;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF1AAE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1ABEEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1AAE94(uint64_t a1)
{
  v2 = sub_1DF1AB7D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AAED0(uint64_t a1)
{
  v2 = sub_1DF1AB7D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtensionRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D510, &qword_1DF230AA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16[5] = v1[3];
  v16[6] = v10;
  v11 = v1[4];
  v16[3] = v1[5];
  v16[4] = v11;
  v12 = v1[6];
  v16[1] = v1[7];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AB7D0();
  sub_1DF22B740();
  v20 = 0;
  v14 = v16[7];
  sub_1DF22B580();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_1DF22B580();
  v18 = 2;
  sub_1DF22B580();
  v17 = 3;
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ExtensionRecord.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D518, &qword_1DF230AA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AB7D0();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1DF22B4A0();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_1DF22B4A0();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_1DF22B4A0();
  v27 = v15;
  v35 = 3;
  v16 = sub_1DF22B4A0();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  sub_1DF1AB824(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return sub_1DF1AB85C(v34);
}

char *sub_1DF1AB424()
{
  result = sub_1DF1AB448();
  qword_1ECE0D4E0 = result;
  *algn_1ECE0D4E8 = v1;
  return result;
}

char *sub_1DF1AB448()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = 37;
  v0 = sub_1DF22AEE0();
  *(v0 + 16) = 37;
  *(v0 + 48) = 0u;
  *(v0 + 61) = 0;
  *(v0 + 32) = 0u;
  v1 = sysctlbyname("kern.bootsessionuuid", (v0 + 32), &v19, 0, 0);
  if (!v1)
  {
    v17 = sub_1DF1AC104(v0, v2);

    result = v17;
LABEL_16:
    v18 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = v1;
  v4 = MEMORY[0x1E12CF490]();
  result = strerror(v4);
  if (result)
  {
    v6 = sub_1DF22AC90();
    v8 = v7;

    if (v8)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0x6E776F6E6B6E55;
    }

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF22A8C0();
    __swift_project_value_buffer(v11, qword_1ED8E92C0);

    v12 = sub_1DF22A8A0();
    v13 = sub_1DF22B110();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 67109378;
      *(v14 + 4) = v3;
      *(v14 + 8) = 2080;
      v16 = sub_1DF160728(v9, v10, v20);

      *(v14 + 10) = v16;
      _os_log_impl(&dword_1DF15A000, v12, v13, "Failed to fetch current boot session UUID with error: %d -> %s", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12D0B40](v15, -1, -1);
      MEMORY[0x1E12D0B40](v14, -1, -1);
    }

    else
    {
    }

    result = 0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DF1AB6CC()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v2)
    {
      v3 = sub_1DF22ACC0();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    qword_1ECE0D4F0 = v3;
    *algn_1ECE0D4F8 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DF1AB774(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

unint64_t sub_1DF1AB7D0()
{
  result = qword_1ED8E6CD0[0];
  if (!qword_1ED8E6CD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8E6CD0);
  }

  return result;
}

unint64_t sub_1DF1AB890()
{
  result = qword_1ECE0D520;
  if (!qword_1ECE0D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D520);
  }

  return result;
}

unint64_t sub_1DF1AB92C()
{
  result = qword_1ECE0D530;
  if (!qword_1ECE0D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D530);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF1AB9B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1DF1ABA10(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1DF1ABA7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DF1ABAC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF1ABB58()
{
  result = qword_1ECE0D538;
  if (!qword_1ECE0D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D538);
  }

  return result;
}

unint64_t sub_1DF1ABBB0()
{
  result = qword_1ECE0D540;
  if (!qword_1ECE0D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D540);
  }

  return result;
}

unint64_t sub_1DF1ABC08()
{
  result = qword_1ED8E6CC0;
  if (!qword_1ED8E6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6CC0);
  }

  return result;
}

unint64_t sub_1DF1ABC60()
{
  result = qword_1ED8E6CC8;
  if (!qword_1ED8E6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6CC8);
  }

  return result;
}

unint64_t sub_1DF1ABCB8()
{
  result = qword_1ED8E6E90;
  if (!qword_1ED8E6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6E90);
  }

  return result;
}

unint64_t sub_1DF1ABD10()
{
  result = qword_1ED8E6E98;
  if (!qword_1ED8E6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6E98);
  }

  return result;
}

uint64_t sub_1DF1ABD64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DF23DEC0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7269766E45737061 && a2 == 0xEE00746E656D6E6FLL || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F4364756F6C63 && a2 == 0xEE0072656E696174 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6E616843737061 && a2 == 0xEA00000000006C65)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DF22B620();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DF1ABEEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23D900 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DF23DEE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1DF1AC05C()
{
  result = qword_1ED8E6CB8;
  if (!qword_1ED8E6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6CB8);
  }

  return result;
}

unint64_t sub_1DF1AC0B0()
{
  result = qword_1ECE0D548;
  if (!qword_1ECE0D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D548);
  }

  return result;
}

uint64_t sub_1DF1AC104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x1EEE68E80](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x1EEE68E80](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x1EEE68E80](a1, a2);
}

uint64_t ListTasksRequest.limit.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ListTasksRequest.limit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

LighthouseBackground::ListTasksRequest __swiftcall ListTasksRequest.init(limit:)(LighthouseBackground::ListTasksRequest limit)
{
  *v1 = limit.limit.value;
  *(v1 + 8) = limit.limit.is_nil;
  return limit;
}

uint64_t sub_1DF1AC1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1AC240(uint64_t a1)
{
  v2 = sub_1DF1AC3F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AC27C(uint64_t a1)
{
  v2 = sub_1DF1AC3F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ListTasksRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D550, &qword_1DF2310D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AC3F8();
  sub_1DF22B740();
  sub_1DF22B540();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1AC3F8()
{
  result = qword_1ECE0C4F8;
  if (!qword_1ECE0C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C4F8);
  }

  return result;
}

uint64_t ListTasksRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D558, &qword_1DF2310D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AC3F8();
  sub_1DF22B730();
  if (!v2)
  {
    v11 = sub_1DF22B460();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1AC5E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D550, &qword_1DF2310D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AC3F8();
  sub_1DF22B740();
  sub_1DF22B540();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ListTasksResponse.tasks.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

LighthouseBackground::ListTasksResponse __swiftcall ListTasksResponse.init(tasks:)(Swift::OpaquePointer tasks)
{
  v3 = v1;

  v3->_rawValue = tasks._rawValue;
  return result;
}

uint64_t sub_1DF1AC7BC(uint64_t a1)
{
  v2 = sub_1DF1AC9E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AC7F8(uint64_t a1)
{
  v2 = sub_1DF1AC9E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ListTasksResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D560, &qword_1DF2310E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AC9E0();

  sub_1DF22B740();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D568, &qword_1DF2310E8);
  sub_1DF1ACBEC(&qword_1ECE0C0C8, &qword_1ECE0C6F8);
  sub_1DF22B5C0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1AC9E0()
{
  result = qword_1ECE0C418;
  if (!qword_1ECE0C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C418);
  }

  return result;
}

uint64_t ListTasksResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D570, &qword_1DF2310F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AC9E0();
  sub_1DF22B730();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D568, &qword_1DF2310E8);
    sub_1DF1ACBEC(&qword_1ECE0D578, &qword_1ECE0D580);
    sub_1DF22B4E0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1ACBEC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0D568, &qword_1DF2310E8);
    sub_1DF1ACC88(a2, type metadata accessor for MLHostTask);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF1ACC88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GetTaskRequest.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GetTaskRequest.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1DF1ACDA0(uint64_t a1)
{
  v2 = sub_1DF1ACF54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1ACDDC(uint64_t a1)
{
  v2 = sub_1DF1ACF54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetTaskRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D588, &qword_1DF2310F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1ACF54();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1ACF54()
{
  result = qword_1ECE0D590;
  if (!qword_1ECE0D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D590);
  }

  return result;
}

uint64_t sub_1DF1AD004(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D588, &qword_1DF2310F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1ACF54();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

uint64_t GetTaskResponse.init(task:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MLHostTask(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  return sub_1DF1936EC(a1, a2, &qword_1ECE0D5A0, &unk_1DF238290);
}

uint64_t sub_1DF1AD24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1802723700 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1AD2D4(uint64_t a1)
{
  v2 = sub_1DF1AD4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AD310(uint64_t a1)
{
  v2 = sub_1DF1AD4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetTaskResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5A8, &qword_1DF231110);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AD4C4();
  sub_1DF22B740();
  type metadata accessor for MLHostTask(0);
  sub_1DF1ACC88(&qword_1ECE0C6F8, type metadata accessor for MLHostTask);
  sub_1DF22B560();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DF1AD4C4()
{
  result = qword_1ECE0C548;
  if (!qword_1ECE0C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C548);
  }

  return result;
}

uint64_t GetTaskResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5A0, &unk_1DF238290);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5B0, &qword_1DF231118);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  TaskResponse = type metadata accessor for GetTaskResponse(0);
  v12 = *(*(TaskResponse - 8) + 64);
  MEMORY[0x1EEE9AC00](TaskResponse - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MLHostTask(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AD4C4();
  v17 = v22;
  sub_1DF22B730();
  if (!v17)
  {
    v18 = v20;
    sub_1DF1ACC88(&qword_1ECE0D580, type metadata accessor for MLHostTask);
    sub_1DF22B480();
    (*(v21 + 8))(v10, v7);
    sub_1DF1936EC(v6, v14, &qword_1ECE0D5A0, &unk_1DF238290);
    sub_1DF1ADD90(v14, v18, type metadata accessor for GetTaskResponse);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DF1B6380(v14, type metadata accessor for GetTaskResponse);
}

uint64_t sub_1DF1AD818(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5A8, &qword_1DF231110);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AD4C4();
  sub_1DF22B740();
  type metadata accessor for MLHostTask(0);
  sub_1DF1ACC88(&qword_1ECE0C6F8, type metadata accessor for MLHostTask);
  sub_1DF22B560();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DF1AD9C4(uint64_t a1)
{
  v2 = sub_1DF1ADA80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1ADA00(uint64_t a1)
{
  v2 = sub_1DF1ADA80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1ADA80()
{
  result = qword_1ECE0D5C0;
  if (!qword_1ECE0D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D5C0);
  }

  return result;
}

uint64_t sub_1DF1ADBAC(uint64_t a1)
{
  v2 = sub_1DF1ADC68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1ADBE8(uint64_t a1)
{
  v2 = sub_1DF1ADC68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1ADC68()
{
  result = qword_1ECE0D5D8;
  if (!qword_1ECE0D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D5D8);
  }

  return result;
}

uint64_t sub_1DF1ADD90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF1ADE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskDefinition(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF1ADED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696665446B736174 && a2 == 0xEE006E6F6974696ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1ADF68(uint64_t a1)
{
  v2 = sub_1DF1AE158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1ADFA4(uint64_t a1)
{
  v2 = sub_1DF1AE158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AddTaskRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5E8, &qword_1DF231140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AE158();
  sub_1DF22B740();
  type metadata accessor for TaskDefinition(0);
  sub_1DF1ACC88(&qword_1ECE0C5C0, type metadata accessor for TaskDefinition);
  sub_1DF22B5C0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DF1AE158()
{
  result = qword_1ECE0C608;
  if (!qword_1ECE0C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C608);
  }

  return result;
}

uint64_t AddTaskRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for TaskDefinition(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5F0, &qword_1DF231148);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for AddTaskRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AE158();
  sub_1DF22B730();
  if (!v2)
  {
    v16 = v19;
    sub_1DF1ACC88(&qword_1ED8E6BC0, type metadata accessor for TaskDefinition);
    v17 = v21;
    sub_1DF22B4E0();
    (*(v20 + 8))(v10, v7);
    sub_1DF1AE440(v17, v14, type metadata accessor for TaskDefinition);
    sub_1DF1AE440(v14, v16, type metadata accessor for AddTaskRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1AE440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF1AE4C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5E8, &qword_1DF231140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AE158();
  sub_1DF22B740();
  type metadata accessor for TaskDefinition(0);
  sub_1DF1ACC88(&qword_1ECE0C5C0, type metadata accessor for TaskDefinition);
  sub_1DF22B5C0();
  return (*(v3 + 8))(v6, v2);
}

LighthouseBackground::AddTaskResponse __swiftcall AddTaskResponse.init(result:)(Swift::Bool result)
{
  *v1 = result;
  v1[1] = 8;
  v2.result = result;
  return v2;
}

uint64_t sub_1DF1AE6C0(uint64_t a1)
{
  v2 = sub_1DF1AE77C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AE6FC(uint64_t a1)
{
  v2 = sub_1DF1AE77C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1AE77C()
{
  result = qword_1ECE0C5B8;
  if (!qword_1ECE0C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C5B8);
  }

  return result;
}

unint64_t sub_1DF1AE7D0()
{
  result = qword_1ECE0C360;
  if (!qword_1ECE0C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C360);
  }

  return result;
}

unint64_t sub_1DF1AE868()
{
  result = qword_1ECE0D608;
  if (!qword_1ECE0D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D608);
  }

  return result;
}

uint64_t sub_1DF1AE90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1AE994(uint64_t a1)
{
  v2 = sub_1DF1AEB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AE9D0(uint64_t a1)
{
  v2 = sub_1DF1AEB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoveTaskRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D610, &qword_1DF231160);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AEB48();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1AEB48()
{
  result = qword_1ECE0D618;
  if (!qword_1ECE0D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D618);
  }

  return result;
}

uint64_t sub_1DF1AEBF8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D610, &qword_1DF231160);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AEB48();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DF1AED74(uint64_t a1)
{
  v2 = sub_1DF1AEFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AEDB0(uint64_t a1)
{
  v2 = sub_1DF1AEFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF1AEE30(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v15[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = *v4;
  v16 = v4[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v15[0])();
  sub_1DF22B740();
  v19 = 0;
  v13 = v15[1];
  sub_1DF22B590();
  if (!v13)
  {
    v18 = v16;
    v17 = 1;
    sub_1DF1AE7D0();
    sub_1DF22B560();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DF1AEFBC()
{
  result = qword_1ECE0D630;
  if (!qword_1ECE0D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D630);
  }

  return result;
}

uint64_t sub_1DF1AF054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v19 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B730();
  if (!v5)
  {
    v14 = v18;
    v13 = v19;
    v22 = 0;
    v15 = sub_1DF22B4B0();
    v20 = 1;
    sub_1DF1AE868();
    sub_1DF22B480();
    (*(v14 + 8))(v11, v8);
    v17 = v21;
    *v13 = v15 & 1;
    v13[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1AF294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1885693284 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1AF31C(uint64_t a1)
{
  v2 = sub_1DF1AF3D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AF358(uint64_t a1)
{
  v2 = sub_1DF1AF3D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1AF3D8()
{
  result = qword_1ECE0D648;
  if (!qword_1ECE0D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D648);
  }

  return result;
}

uint64_t sub_1DF1AF4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B736174 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1AF570(uint64_t a1)
{
  v2 = sub_1DF1AF780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AF5AC(uint64_t a1)
{
  v2 = sub_1DF1AF780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CleanTasksResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D658, &unk_1DF231190);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AF780();

  sub_1DF22B740();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  sub_1DF15FAB4(&qword_1ECE0C068);
  sub_1DF22B5C0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1AF780()
{
  result = qword_1ECE0D660;
  if (!qword_1ECE0D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D660);
  }

  return result;
}

uint64_t CleanTasksResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D668, &qword_1DF2311A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AF780();
  sub_1DF22B730();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    sub_1DF15FAB4(&qword_1ECE0C058);
    sub_1DF22B4E0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t GetOnDemandTaskRequest.taskName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GetOnDemandTaskRequest.taskName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 GetOnDemandTaskRequest.onDemandRequest.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 GetOnDemandTaskRequest.onDemandRequest.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

__n128 GetOnDemandTaskRequest.init(taskName:onDemandRequest:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1DF1AFA90()
{
  if (*v0)
  {
    result = 0x646E616D65446E6FLL;
  }

  else
  {
    result = 0x656D614E6B736174;
  }

  *v0;
  return result;
}

uint64_t sub_1DF1AFAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E616D65446E6FLL && a2 == 0xEF74736575716552)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1AFBBC(uint64_t a1)
{
  v2 = sub_1DF1AFDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1AFBF8(uint64_t a1)
{
  v2 = sub_1DF1AFDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetOnDemandTaskRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D670, &qword_1DF2311A8);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v13 = v1[3];
  v14 = v10;
  v19 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AFDD8();
  sub_1DF22B740();
  LOBYTE(v16) = 0;
  sub_1DF22B580();
  if (!v2)
  {
    v16 = v14;
    v17 = v13;
    v18 = v19;
    v20 = 1;
    sub_1DF1AFE2C();
    sub_1DF22B560();
  }

  return (*(v15 + 8))(v7, v4);
}

unint64_t sub_1DF1AFDD8()
{
  result = qword_1ECE0D678;
  if (!qword_1ECE0D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D678);
  }

  return result;
}

unint64_t sub_1DF1AFE2C()
{
  result = qword_1ECE0D680;
  if (!qword_1ECE0D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D680);
  }

  return result;
}

uint64_t GetOnDemandTaskRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D688, &qword_1DF2311B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1AFDD8();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v18) = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  v14 = v11;
  v20 = 1;
  sub_1DF1B0080();
  sub_1DF22B480();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  v16 = v18;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 32) = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF1B0080()
{
  result = qword_1ECE0D690;
  if (!qword_1ECE0D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D690);
  }

  return result;
}

char *GetOnDemandTaskRequestResponse.init(error:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  *a2 = 1;
  a2[1] = v2;
  return result;
}

uint64_t sub_1DF1B017C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1B0250(uint64_t a1)
{
  v2 = sub_1DF1B0464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B028C(uint64_t a1)
{
  v2 = sub_1DF1B0464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetOnDemandTaskRequestResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D698, &qword_1DF2311B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B0464();
  sub_1DF22B740();
  v17 = v9;
  v16 = 0;
  sub_1DF1B04B8();
  sub_1DF22B560();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1DF1B050C();
    sub_1DF22B560();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DF1B0464()
{
  result = qword_1ECE0D6A0;
  if (!qword_1ECE0D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D6A0);
  }

  return result;
}

unint64_t sub_1DF1B04B8()
{
  result = qword_1ECE0D6A8;
  if (!qword_1ECE0D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D6A8);
  }

  return result;
}

unint64_t sub_1DF1B050C()
{
  result = qword_1ECE0D6B0;
  if (!qword_1ECE0D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D6B0);
  }

  return result;
}

uint64_t GetOnDemandTaskRequestResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D6B8, &qword_1DF2311C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B0464();
  sub_1DF22B730();
  if (!v2)
  {
    v17 = 0;
    sub_1DF1B0734();
    sub_1DF22B480();
    v11 = v18;
    v15 = 1;
    sub_1DF1B0788();
    sub_1DF22B480();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF1B0734()
{
  result = qword_1ECE0D6C0;
  if (!qword_1ECE0D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D6C0);
  }

  return result;
}

unint64_t sub_1DF1B0788()
{
  result = qword_1ECE0D6C8;
  if (!qword_1ECE0D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D6C8);
  }

  return result;
}

uint64_t ListExtensionsRequest.extensionPrefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ListExtensionsRequest.extensionPrefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

LighthouseBackground::ListExtensionsRequest __swiftcall ListExtensionsRequest.init(extensionPrefix:)(Swift::String_optional extensionPrefix)
{
  object = extensionPrefix.value._object;
  countAndFlagsBits = extensionPrefix.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.extensionPrefix.value._object = v6;
  result.extensionPrefix.value._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_1DF1B08F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69736E65747865 && a2 == 0xEF7869666572506ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B0984(uint64_t a1)
{
  v2 = sub_1DF1B0B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B09C0(uint64_t a1)
{
  v2 = sub_1DF1B0B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ListExtensionsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D6D0, &qword_1DF2311C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B0B38();
  sub_1DF22B740();
  sub_1DF22B510();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B0B38()
{
  result = qword_1ED8E6CA8;
  if (!qword_1ED8E6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6CA8);
  }

  return result;
}

uint64_t ListExtensionsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D6D8, &qword_1DF2311D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B0B38();
  sub_1DF22B730();
  if (!v2)
  {
    v11 = sub_1DF22B430();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1B0D18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D6D0, &qword_1DF2311C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B0B38();
  sub_1DF22B740();
  sub_1DF22B510();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DF1B0E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69736E65747865 && a2 == 0xEA0000000000736ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B0F20(uint64_t a1)
{
  v2 = sub_1DF1B113C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B0F5C(uint64_t a1)
{
  v2 = sub_1DF1B113C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ListExtensionsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D6E0, &qword_1DF2311D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B113C();

  sub_1DF22B740();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D6E8, &qword_1DF2311E0);
  sub_1DF1B1394(&unk_1ECE0C0A0, sub_1DF1B1190);
  sub_1DF22B5C0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B113C()
{
  result = qword_1ED8E6C80;
  if (!qword_1ED8E6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6C80);
  }

  return result;
}

unint64_t sub_1DF1B1190()
{
  result = qword_1ECE0C558;
  if (!qword_1ECE0C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C558);
  }

  return result;
}

uint64_t ListExtensionsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D6F0, &qword_1DF2311E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B113C();
  sub_1DF22B730();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D6E8, &qword_1DF2311E0);
    sub_1DF1B1394(&qword_1ECE0C098, sub_1DF1B140C);
    sub_1DF22B4E0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1B1394(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0D6E8, &qword_1DF2311E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF1B140C()
{
  result = qword_1ECE0C550;
  if (!qword_1ECE0C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C550);
  }

  return result;
}

uint64_t sub_1DF1B14CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DF23D900 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DF22B620();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DF1B1560(uint64_t a1)
{
  v2 = sub_1DF1B1714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B159C(uint64_t a1)
{
  v2 = sub_1DF1B1714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetExtensionRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D6F8, &qword_1DF2311F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B1714();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B1714()
{
  result = qword_1ECE0D700;
  if (!qword_1ECE0D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D700);
  }

  return result;
}

uint64_t sub_1DF1B17C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D6F8, &qword_1DF2311F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B1714();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

uint64_t GetExtensionResponse.extensionRecord.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1DF17A6A8(v7, &v6, &qword_1ECE0D710, &qword_1DF231200);
}

__n128 GetExtensionResponse.extensionRecord.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_1DF1B19A0(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

void __swiftcall GetExtensionResponse.init(extensionRecord:)(LighthouseBackground::GetExtensionResponse *__return_ptr retstr, LighthouseBackground::ExtensionRecord_optional *extensionRecord)
{
  memset(v6, 0, sizeof(v6));
  sub_1DF1B19A0(v6);
  bundleIdentifier = extensionRecord->value.bundleIdentifier;
  retstr->extensionRecord.value.name = extensionRecord->value.name;
  retstr->extensionRecord.value.bundleIdentifier = bundleIdentifier;
  extensionPointIdentifier = extensionRecord->value.extensionPointIdentifier;
  retstr->extensionRecord.value.url = extensionRecord->value.url;
  retstr->extensionRecord.value.extensionPointIdentifier = extensionPointIdentifier;
}

uint64_t sub_1DF1B1A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69736E65747865 && a2 == 0xEF64726F6365526ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B1AF4(uint64_t a1)
{
  v2 = sub_1DF1B1D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B1B30(uint64_t a1)
{
  v2 = sub_1DF1B1D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetExtensionResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D718, &qword_1DF231208);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = v1[1];
  v17 = *v1;
  v18 = v8;
  v9 = v1[3];
  v19 = v1[2];
  v20 = v9;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF17A6A8(&v17, &v13, &qword_1ECE0D710, &qword_1DF231200);
  sub_1DF1B1D24();
  sub_1DF22B740();
  v13 = v17;
  v14 = v18;
  v15 = v19;
  v16 = v20;
  sub_1DF1B1190();
  sub_1DF22B560();
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  sub_1DF16184C(v12, &qword_1ECE0D710, &qword_1DF231200);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B1D24()
{
  result = qword_1ECE0D720;
  if (!qword_1ECE0D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D720);
  }

  return result;
}

uint64_t GetExtensionResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D728, &qword_1DF231210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B1D24();
  sub_1DF22B730();
  if (!v2)
  {
    sub_1DF1B140C();
    sub_1DF22B480();
    (*(v6 + 8))(v9, v5);
    v11 = v14[1];
    *a2 = v14[0];
    a2[1] = v11;
    v12 = v14[3];
    a2[2] = v14[2];
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1B1F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465646E65747865 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B1FE0(uint64_t a1)
{
  v2 = sub_1DF1B209C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B201C(uint64_t a1)
{
  v2 = sub_1DF1B209C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1B209C()
{
  result = qword_1ED8E6C58;
  if (!qword_1ED8E6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6C58);
  }

  return result;
}

uint64_t sub_1DF1B21A4(uint64_t a1)
{
  v2 = sub_1DF1B2260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B21E0(uint64_t a1)
{
  v2 = sub_1DF1B2260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1B2260()
{
  result = qword_1ED8E6C30;
  if (!qword_1ED8E6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6C30);
  }

  return result;
}

unint64_t sub_1DF1B22B4()
{
  result = qword_1ECE0C678;
  if (!qword_1ECE0C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C678);
  }

  return result;
}

unint64_t sub_1DF1B234C()
{
  result = qword_1ECE0C670;
  if (!qword_1ECE0C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C670);
  }

  return result;
}

uint64_t sub_1DF1B23D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 1) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;
}

__n128 sub_1DF1B2438@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 1) = v2;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_1DF1B245C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B24E0(uint64_t a1)
{
  v2 = sub_1DF1B2744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B251C(uint64_t a1)
{
  v2 = sub_1DF1B2744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF1B259C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v21 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v17 - v8;
  v10 = *v4;
  v19 = v4[1];
  v20 = v10;
  v11 = *(v4 + 1);
  v12 = *(v4 + 2);
  v13 = *(v4 + 4);
  v17 = *(v4 + 3);
  v18 = v11;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21();

  sub_1DF22B740();
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v12;
  v27 = v17;
  v28 = v13;
  sub_1DF1B22B4();
  v15 = v22;
  sub_1DF22B5C0();

  return (*(v6 + 8))(v9, v15);
}

unint64_t sub_1DF1B2744()
{
  result = qword_1ECE0D758;
  if (!qword_1ECE0D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D758);
  }

  return result;
}

uint64_t sub_1DF1B27DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B730();
  if (!v5)
  {
    v13 = v18;
    sub_1DF1B234C();
    sub_1DF22B4E0();
    (*(v23 + 8))(v11, v8);
    v14 = v20;
    v15 = v21;
    v16 = v22;
    *v13 = v19;
    *(v13 + 1) = v14;
    *(v13 + 8) = v15;
    *(v13 + 24) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

LighthouseBackground::SetHostConfigurationResponse __swiftcall SetHostConfigurationResponse.init(success:error:)(Swift::Bool success, Swift::String_optional error)
{
  *v2 = success;
  *(v2 + 8) = error;
  result.error = error;
  result.success = success;
  return result;
}

uint64_t sub_1DF1B29F4()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x73736563637573;
  }

  *v0;
  return result;
}

uint64_t sub_1DF1B2A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1B2B04(uint64_t a1)
{
  v2 = sub_1DF1B2D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B2B40(uint64_t a1)
{
  v2 = sub_1DF1B2D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetHostConfigurationResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D768, &qword_1DF231248);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B2D0C();
  sub_1DF22B740();
  v15 = 0;
  sub_1DF22B590();
  if (!v2)
  {
    v14 = 1;
    sub_1DF22B510();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DF1B2D0C()
{
  result = qword_1ECE0D770;
  if (!qword_1ECE0D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D770);
  }

  return result;
}

uint64_t SetHostConfigurationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D778, &qword_1DF231250);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B2D0C();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  v11 = sub_1DF22B4B0();
  v17 = 1;
  v12 = sub_1DF22B430();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11 & 1;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1B2F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265747369676572 && a2 == 0xEE00796C6E4F6465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B3028(uint64_t a1)
{
  v2 = sub_1DF1B30E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B3064(uint64_t a1)
{
  v2 = sub_1DF1B30E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1B30E4()
{
  result = qword_1ECE0D788;
  if (!qword_1ECE0D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D788);
  }

  return result;
}

uint64_t sub_1DF1B3224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C656E6E616863 && a2 == 0xEF6369706F547942)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B32B4(uint64_t a1)
{
  v2 = sub_1DF1B34A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B32F0(uint64_t a1)
{
  v2 = sub_1DF1B34A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetNotificationsConfigResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D798, &qword_1DF231268);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B34A0();

  sub_1DF22B740();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB28, &qword_1DF231270);
  sub_1DF1663F4();
  sub_1DF22B5C0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B34A0()
{
  result = qword_1ECE0D7A0;
  if (!qword_1ECE0D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D7A0);
  }

  return result;
}

uint64_t GetNotificationsConfigResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D7A8, &qword_1DF231278);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B34A0();
  sub_1DF22B730();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB28, &qword_1DF231270);
    sub_1DF1666C0();
    sub_1DF22B4E0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1B36C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64616F6C6572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B3748(uint64_t a1)
{
  v2 = sub_1DF1B3804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B3784(uint64_t a1)
{
  v2 = sub_1DF1B3804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1B3804()
{
  result = qword_1ECE0D7B8;
  if (!qword_1ECE0D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D7B8);
  }

  return result;
}

uint64_t sub_1DF1B3918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646564616F6C6572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B39A0(uint64_t a1)
{
  v2 = sub_1DF1B3A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B39DC(uint64_t a1)
{
  v2 = sub_1DF1B3A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1B3A5C()
{
  result = qword_1ECE0D7D0;
  if (!qword_1ECE0D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D7D0);
  }

  return result;
}

uint64_t sub_1DF1B3B84(uint64_t a1)
{
  v2 = sub_1DF1B3D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B3BC0(uint64_t a1)
{
  v2 = sub_1DF1B3D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DictionaryErrorMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D7E0, &qword_1DF2312A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B3D48();
  sub_1DF22B740();
  v12 = v8;
  sub_1DF1B3D9C();
  sub_1DF22B560();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B3D48()
{
  result = qword_1ECE0D7E8;
  if (!qword_1ECE0D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D7E8);
  }

  return result;
}

unint64_t sub_1DF1B3D9C()
{
  result = qword_1ECE0C500;
  if (!qword_1ECE0C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C500);
  }

  return result;
}

uint64_t DictionaryErrorMessage.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D7F0, &qword_1DF2312A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B3D48();
  sub_1DF22B730();
  if (!v2)
  {
    sub_1DF1B3F5C();
    sub_1DF22B480();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF1B3F5C()
{
  result = qword_1ECE0D7F8;
  if (!qword_1ECE0D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D7F8);
  }

  return result;
}

uint64_t sub_1DF1B4014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B4098(uint64_t a1)
{
  v2 = sub_1DF1B424C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B40D4(uint64_t a1)
{
  v2 = sub_1DF1B424C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ListKeysDictionaryRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D800, &qword_1DF2312B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B424C();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B424C()
{
  result = qword_1ECE0D808;
  if (!qword_1ECE0D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D808);
  }

  return result;
}

uint64_t sub_1DF1B42FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D800, &qword_1DF2312B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B424C();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ListKeysDictionaryResponse.keys.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1DF1B44E4()
{
  if (*v0)
  {
    result = 1937335659;
  }

  else
  {
    result = 0x726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_1DF1B4514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1B45EC(uint64_t a1)
{
  v2 = sub_1DF1B483C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B4628(uint64_t a1)
{
  v2 = sub_1DF1B483C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ListKeysDictionaryResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D818, &qword_1DF2312C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B483C();
  sub_1DF22B740();
  v15 = v9;
  v14 = 0;
  sub_1DF1B3D9C();
  sub_1DF22B560();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    sub_1DF15FAB4(&qword_1ECE0C068);
    sub_1DF22B560();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DF1B483C()
{
  result = qword_1ECE0D820;
  if (!qword_1ECE0D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D820);
  }

  return result;
}

uint64_t ListKeysDictionaryResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D828, &qword_1DF2312C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B483C();
  sub_1DF22B730();
  if (!v2)
  {
    v16 = 0;
    sub_1DF1B3F5C();
    sub_1DF22B480();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    v15 = 1;
    sub_1DF15FAB4(&qword_1ECE0C058);
    sub_1DF22B480();
    (*(v6 + 8))(v9, v5);
    v13 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

_BYTE *sub_1DF1B4AC0@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t GetKeyTypeRequest.group.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GetKeyTypeRequest.group.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GetKeyTypeRequest.key.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GetKeyTypeRequest.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

LighthouseBackground::GetKeyTypeRequest __swiftcall GetKeyTypeRequest.init(group:key:)(Swift::String group, Swift::String key)
{
  *v2 = group;
  v2[1] = key;
  result.key = key;
  result.group = group;
  return result;
}

uint64_t sub_1DF1B4C1C(uint64_t a1)
{
  v2 = sub_1DF1B4E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B4C58(uint64_t a1)
{
  v2 = sub_1DF1B4E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetKeyTypeRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D830, &qword_1DF2312D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B4E28();
  sub_1DF22B740();
  v16 = 0;
  v12 = v14[3];
  sub_1DF22B580();
  if (!v12)
  {
    v15 = 1;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B4E28()
{
  result = qword_1ECE0D838;
  if (!qword_1ECE0D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D838);
  }

  return result;
}

uint64_t sub_1DF1B4F70()
{
  if (*v0)
  {
    result = 0x6570795479656BLL;
  }

  else
  {
    result = 0x726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_1DF1B4FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570795479656BLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1B5080(uint64_t a1)
{
  v2 = sub_1DF1B5294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B50BC(uint64_t a1)
{
  v2 = sub_1DF1B5294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetKeyTypeResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D848, &qword_1DF2312E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B5294();
  sub_1DF22B740();
  v17 = v9;
  v16 = 0;
  sub_1DF1B3D9C();
  sub_1DF22B560();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1DF1B52E8();
    sub_1DF22B560();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DF1B5294()
{
  result = qword_1ECE0D850;
  if (!qword_1ECE0D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D850);
  }

  return result;
}

unint64_t sub_1DF1B52E8()
{
  result = qword_1ECE0D858;
  if (!qword_1ECE0D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D858);
  }

  return result;
}

uint64_t GetKeyTypeResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D860, &qword_1DF2312E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B5294();
  sub_1DF22B730();
  if (!v2)
  {
    v17 = 0;
    sub_1DF1B3F5C();
    sub_1DF22B480();
    v11 = v18;
    v15 = 1;
    sub_1DF1B5510();
    sub_1DF22B480();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF1B5510()
{
  result = qword_1ECE0D868;
  if (!qword_1ECE0D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D868);
  }

  return result;
}

uint64_t sub_1DF1B55D4(uint64_t a1)
{
  v2 = sub_1DF1B57E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B5610(uint64_t a1)
{
  v2 = sub_1DF1B57E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetKeyExpirationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D870, &qword_1DF2312F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B57E0();
  sub_1DF22B740();
  v16 = 0;
  v12 = v14[3];
  sub_1DF22B580();
  if (!v12)
  {
    v15 = 1;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B57E0()
{
  result = qword_1ECE0D878;
  if (!qword_1ECE0D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D878);
  }

  return result;
}

uint64_t GetKeyExpirationResponse.timeToLive.getter()
{
  v1 = (v0 + *(type metadata accessor for GetKeyExpirationResponse(0) + 24));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t GetKeyExpirationResponse.timeToLive.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for GetKeyExpirationResponse(0);
  v8 = v3 + *(result + 24);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t GetKeyExpirationResponse.init(error:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  *a2 = 5;
  KeyExpirationResponse = type metadata accessor for GetKeyExpirationResponse(0);
  v5 = *(KeyExpirationResponse + 20);
  v6 = sub_1DF22A800();
  v7 = *(*(v6 - 8) + 56);
  v7(&a2[v5], 1, 1, v6);
  v8 = &a2[*(KeyExpirationResponse + 24)];
  *a2 = v3;
  sub_1DF16184C(&a2[v5], &qword_1ECE0CDC0, &unk_1DF22D7C0);
  result = (v7)(&a2[v5], 1, 1, v6);
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  return result;
}

uint64_t GetKeyExpirationResponse.init(expirationDate:timeToLive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  *a5 = 5;
  KeyExpirationResponse = type metadata accessor for GetKeyExpirationResponse(0);
  v11 = *(KeyExpirationResponse + 20);
  v12 = sub_1DF22A800();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(KeyExpirationResponse + 24)];
  *a5 = 5;
  result = sub_1DF1936EC(a1, &a5[v11], &qword_1ECE0CDC0, &unk_1DF22D7C0);
  *v13 = a2;
  *(v13 + 1) = a3;
  v13[16] = a4 & 1;
  return result;
}

uint64_t sub_1DF1B5C50()
{
  v1 = 0x6974617269707865;
  if (*v0 != 1)
  {
    v1 = 0x694C6F54656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1DF1B5CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1C9CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1B5CE0(uint64_t a1)
{
  v2 = sub_1DF1B5F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B5D1C(uint64_t a1)
{
  v2 = sub_1DF1B5F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetKeyExpirationResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D888, &qword_1DF231308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B5F7C();
  sub_1DF22B740();
  LOBYTE(v16) = *v3;
  v18 = 0;
  sub_1DF1B3D9C();
  sub_1DF22B560();
  if (!v2)
  {
    KeyExpirationResponse = type metadata accessor for GetKeyExpirationResponse(0);
    v12 = *(KeyExpirationResponse + 20);
    LOBYTE(v16) = 1;
    sub_1DF22A800();
    sub_1DF1ACC88(&qword_1ECE0C728, MEMORY[0x1E6969530]);
    sub_1DF22B560();
    v13 = &v3[*(KeyExpirationResponse + 24)];
    v14 = v13[16];
    v16 = *v13;
    v17 = v14;
    v18 = 2;
    sub_1DF22B560();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DF1B5F7C()
{
  result = qword_1ECE0D890;
  if (!qword_1ECE0D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D890);
  }

  return result;
}

uint64_t GetKeyExpirationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v26 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D898, &qword_1DF231310);
  v29 = *(v32 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v26 - v7;
  KeyExpirationResponse = type metadata accessor for GetKeyExpirationResponse(0);
  v10 = KeyExpirationResponse - 8;
  v11 = *(*(KeyExpirationResponse - 8) + 64);
  MEMORY[0x1EEE9AC00](KeyExpirationResponse);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 5;
  v14 = *(v10 + 28);
  v15 = sub_1DF22A800();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[*(v10 + 32)];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B5F7C();
  v31 = v8;
  v18 = v33;
  sub_1DF22B730();
  if (v18)
  {
    v25 = a1;
  }

  else
  {
    v27 = v14;
    v33 = a1;
    v20 = v29;
    v19 = v30;
    v36 = 0;
    sub_1DF1B3F5C();
    v21 = v31;
    v22 = v32;
    sub_1DF22B480();
    *v13 = v34;
    LOBYTE(v34) = 1;
    sub_1DF1ACC88(&qword_1ED8E6BE0, MEMORY[0x1E6969530]);
    sub_1DF22B480();
    sub_1DF1936EC(v19, &v13[v27], &qword_1ECE0CDC0, &unk_1DF22D7C0);
    v36 = 2;
    sub_1DF22B480();
    (*(v20 + 8))(v21, v22);
    v24 = v35;
    *v16 = v34;
    v16[16] = v24;
    sub_1DF1ADD90(v13, v28, type metadata accessor for GetKeyExpirationResponse);
    v25 = v33;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return sub_1DF1B6380(v13, type metadata accessor for GetKeyExpirationResponse);
}

uint64_t sub_1DF1B6380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF1B63E0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  *a3 = 5;
  v6 = *(a2 + 20);
  v7 = sub_1DF22A800();
  v8 = *(*(v7 - 8) + 56);
  v8(&a3[v6], 1, 1, v7);
  v9 = &a3[*(a2 + 24)];
  *a3 = v5;
  sub_1DF16184C(&a3[v6], &qword_1ECE0CDC0, &unk_1DF22D7C0);
  result = (v8)(&a3[v6], 1, 1, v7);
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  return result;
}

uint64_t ClearDictionaryRequest.key.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ClearDictionaryRequest.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

LighthouseBackground::ClearDictionaryRequest __swiftcall ClearDictionaryRequest.init(group:key:)(Swift::String group, Swift::String_optional key)
{
  v2->value = group;
  v2[1] = key;
  result.key = key;
  result.group = group;
  return result;
}

uint64_t sub_1DF1B65A0(uint64_t a1)
{
  v2 = sub_1DF1B67AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B65DC(uint64_t a1)
{
  v2 = sub_1DF1B67AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClearDictionaryRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D8A0, &qword_1DF231318);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B67AC();
  sub_1DF22B740();
  v16 = 0;
  v12 = v14[3];
  sub_1DF22B580();
  if (!v12)
  {
    v15 = 1;
    sub_1DF22B510();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B67AC()
{
  result = qword_1ECE0D8A8;
  if (!qword_1ECE0D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D8A8);
  }

  return result;
}

uint64_t ClearDictionaryRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D8B0, &qword_1DF231320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B67AC();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1DF22B430();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

LighthouseBackground::ClearDictionaryResponse __swiftcall ClearDictionaryResponse.init(result:)(Swift::Bool result)
{
  *v1 = 5;
  v1[1] = result;
  v2.error.value = result;
  return v2;
}

uint64_t sub_1DF1B6A90(uint64_t a1)
{
  v2 = sub_1DF1B6B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B6ACC(uint64_t a1)
{
  v2 = sub_1DF1B6B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1B6B4C()
{
  result = qword_1ECE0D8C0;
  if (!qword_1ECE0D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D8C0);
  }

  return result;
}

uint64_t sub_1DF1B6C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574616D69747365 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1B6CE0(uint64_t a1)
{
  v2 = sub_1DF1B6EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B6D1C(uint64_t a1)
{
  v2 = sub_1DF1B6EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF1B6D9C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  v11 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_1DF22B740();
  sub_1DF22B590();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DF1B6EDC()
{
  result = qword_1ECE0D8D8;
  if (!qword_1ECE0D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D8D8);
  }

  return result;
}

uint64_t sub_1DF1B6F74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v17 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B730();
  if (!v5)
  {
    v13 = v17;
    v14 = sub_1DF22B4B0();
    (*(v18 + 8))(v11, v8);
    *v13 = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1B7134(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_1DF22B740();
  sub_1DF22B590();
  return (*(v9 + 8))(v12, v8);
}

__n128 GetInfoDictionaryResponse.info.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 72);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

__n128 GetInfoDictionaryResponse.info.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 24) = a1[1];
  result = a1[2];
  v4 = a1[3];
  *(v1 + 40) = result;
  *(v1 + 56) = v4;
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 8) = v2;
  return result;
}

double GetInfoDictionaryResponse.init(error:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  return result;
}

__n128 GetInfoDictionaryResponse.init(info:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 5;
  v2 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 40) = result;
  *(a2 + 56) = v4;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_1DF1B737C(uint64_t a1)
{
  v2 = sub_1DF1B75A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B73B8(uint64_t a1)
{
  v2 = sub_1DF1B75A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetInfoDictionaryResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D8E8, &qword_1DF231348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = *v3;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B75A8();
  sub_1DF22B740();
  LOBYTE(v15[0]) = v10;
  v17 = 0;
  sub_1DF1B3D9C();
  sub_1DF22B560();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v13 = *(v3 + 56);
    v15[2] = *(v3 + 40);
    v15[3] = v13;
    v16 = v3[72];
    v15[0] = *(v3 + 8);
    v15[1] = v12;
    v17 = 1;
    sub_1DF1B75FC();
    sub_1DF22B560();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DF1B75A8()
{
  result = qword_1ECE0D8F0;
  if (!qword_1ECE0D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D8F0);
  }

  return result;
}

unint64_t sub_1DF1B75FC()
{
  result = qword_1ECE0D8F8;
  if (!qword_1ECE0D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D8F8);
  }

  return result;
}

uint64_t GetInfoDictionaryResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D900, &qword_1DF231350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B75A8();
  sub_1DF22B730();
  if (!v2)
  {
    v18 = 0;
    sub_1DF1B3F5C();
    sub_1DF22B480();
    v11 = v16[0];
    v18 = 1;
    sub_1DF1B7840();
    sub_1DF22B480();
    (*(v6 + 8))(v9, v5);
    v12 = v17;
    *a2 = v11;
    v13 = v16[1];
    *(a2 + 8) = v16[0];
    *(a2 + 24) = v13;
    v14 = v16[3];
    *(a2 + 40) = v16[2];
    *(a2 + 56) = v14;
    *(a2 + 72) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF1B7840()
{
  result = qword_1ECE0D908;
  if (!qword_1ECE0D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D908);
  }

  return result;
}

double sub_1DF1B7894@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  return result;
}

uint64_t GetKeyDictionaryRequest.key.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GetKeyDictionaryRequest.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall GetKeyDictionaryRequest.init(group:key:deleteOnAccess:)(LighthouseBackground::GetKeyDictionaryRequest *__return_ptr retstr, Swift::String group, Swift::String key, Swift::Bool deleteOnAccess)
{
  retstr->group = group;
  retstr->key = key;
  retstr->deleteOnAccess = deleteOnAccess;
}

uint64_t sub_1DF1B79E0()
{
  v1 = 7955819;
  if (*v0 != 1)
  {
    v1 = 0x6E4F6574656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x70756F7267;
  }
}

uint64_t sub_1DF1B7A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1C9E14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1B7A64(uint64_t a1)
{
  v2 = sub_1DF1B7C9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B7AA0(uint64_t a1)
{
  v2 = sub_1DF1B7C9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GetKeyDictionaryRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D910, &qword_1DF231358);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v15 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B7C9C();
  sub_1DF22B740();
  v18 = 0;
  v12 = v14[3];
  sub_1DF22B580();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1DF22B580();
  v16 = 2;
  sub_1DF22B590();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B7C9C()
{
  result = qword_1ECE0C298;
  if (!qword_1ECE0C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C298);
  }

  return result;
}

uint64_t GetKeyDictionaryRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D918, &qword_1DF231360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B7C9C();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  v22 = v11;
  v24 = 1;
  v20 = sub_1DF22B4A0();
  v21 = v14;
  v23 = 2;
  v15 = sub_1DF22B4B0();
  (*(v6 + 8))(v9, v5);
  v16 = v15 & 1;
  v17 = v21;
  *a2 = v22;
  *(a2 + 8) = v13;
  *(a2 + 16) = v20;
  *(a2 + 24) = v17;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t GetKeyDictionaryResponse.value.getter()
{
  v1 = *(v0 + 8);
  sub_1DF1B7FDC(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_1DF1B7FDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF16573C(a1, a2);
  }

  return a1;
}

uint64_t GetKeyDictionaryResponse.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DF18A0A4(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

double GetKeyDictionaryResponse.init(error:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  sub_1DF18A0A4(0, 0xF000000000000000);
  result = 0.0;
  *(a2 + 8) = xmmword_1DF2310C0;
  return result;
}

uint64_t GetKeyDictionaryResponse.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 5;
  result = sub_1DF18A0A4(0, 0xF000000000000000);
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1DF1B80D0(uint64_t a1)
{
  v2 = sub_1DF1B818C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B810C(uint64_t a1)
{
  v2 = sub_1DF1B818C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1B818C()
{
  result = qword_1ECE0C208;
  if (!qword_1ECE0C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C208);
  }

  return result;
}

uint64_t SetKeyDictionaryRequest.group.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SetKeyDictionaryRequest.group.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SetKeyDictionaryRequest.key.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SetKeyDictionaryRequest.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SetKeyDictionaryRequest.value.getter()
{
  v1 = *(v0 + 32);
  sub_1DF16573C(v1, *(v0 + 40));
  return v1;
}

uint64_t SetKeyDictionaryRequest.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DF1657C8(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SetKeyDictionaryRequest.timeToLive.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  return result;
}

uint64_t SetKeyDictionaryRequest.timeToLive.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3 & 1;
  return result;
}

uint64_t sub_1DF1B8438(uint64_t a1)
{
  v2 = sub_1DF1B84F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B8474(uint64_t a1)
{
  v2 = sub_1DF1B84F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1B84F4()
{
  result = qword_1ECE0C248;
  if (!qword_1ECE0C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C248);
  }

  return result;
}

uint64_t SetKeyDictionaryRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D938, &qword_1DF231380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B84F4();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v37) = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  v30 = v11;
  LOBYTE(v37) = 1;
  v14 = sub_1DF22B4A0();
  v31 = v15;
  v29 = v14;
  LOBYTE(v32) = 2;
  sub_1DF165F04();
  sub_1DF22B4E0();
  v28 = v37;
  v27 = v38;
  v49 = 3;
  sub_1DF22B480();
  (*(v6 + 8))(v9, v5);
  v25 = *(&v46 + 1);
  v26 = v46;
  v16 = v47;
  v48 = v47;
  v17 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v13;
  v18 = v29;
  v19 = v31;
  *&v33 = v29;
  *(&v33 + 1) = v31;
  v20 = v27;
  *&v34 = v28;
  *(&v34 + 1) = v27;
  v35 = v46;
  v36 = v47;
  v21 = v33;
  *a2 = v32;
  *(a2 + 16) = v21;
  v22 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v22;
  *(a2 + 64) = v16;
  sub_1DF1B88E4(&v32, &v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v37 = v17;
  v38 = v13;
  v39 = v18;
  v40 = v19;
  v41 = v28;
  v42 = v20;
  v43 = v26;
  v44 = v25;
  v45 = v16;
  return sub_1DF1B891C(&v37);
}

uint64_t sub_1DF1B89BC(uint64_t a1)
{
  v2 = sub_1DF1B8A78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B89F8(uint64_t a1)
{
  v2 = sub_1DF1B8A78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1B8A78()
{
  result = qword_1ECE0C1B8;
  if (!qword_1ECE0C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C1B8);
  }

  return result;
}

uint64_t sub_1DF1B8B80(uint64_t a1)
{
  v2 = sub_1DF1B8D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B8BBC(uint64_t a1)
{
  v2 = sub_1DF1B8D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ListLengthDictionaryRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D950, &qword_1DF231398);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B8D8C();
  sub_1DF22B740();
  v16 = 0;
  v12 = v14[3];
  sub_1DF22B580();
  if (!v12)
  {
    v15 = 1;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1B8D8C()
{
  result = qword_1ECE0D958;
  if (!qword_1ECE0D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D958);
  }

  return result;
}

uint64_t sub_1DF1B8E94()
{
  if (*v0)
  {
    result = 0x6874676E656CLL;
  }

  else
  {
    result = 0x726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_1DF1B8EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1B8F9C(uint64_t a1)
{
  v2 = sub_1DF1B9058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B8FD8(uint64_t a1)
{
  v2 = sub_1DF1B9058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1B9058()
{
  result = qword_1ECE0D970;
  if (!qword_1ECE0D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D970);
  }

  return result;
}

uint64_t ListIndexDictionaryRequest.group.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ListIndexDictionaryRequest.group.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ListIndexDictionaryRequest.key.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ListIndexDictionaryRequest.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ListIndexDictionaryRequest.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListIndexDictionaryRequest(0) + 24);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListIndexDictionaryRequest.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListIndexDictionaryRequest(0) + 24);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListIndexDictionaryRequest.init(group:key:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for ListIndexDictionaryRequest(0) + 24);
  v9 = sub_1DF22A800();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t sub_1DF1B9418()
{
  v1 = 7955819;
  if (*v0 != 1)
  {
    v1 = 1702125924;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x70756F7267;
  }
}

uint64_t sub_1DF1B9460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1C9F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1B9488(uint64_t a1)
{
  v2 = sub_1DF1B971C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B94C4(uint64_t a1)
{
  v2 = sub_1DF1B971C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ListIndexDictionaryRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D980, &qword_1DF2313B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B971C();
  sub_1DF22B740();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_1DF22B580();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_1DF22B580();
    v16 = *(type metadata accessor for ListIndexDictionaryRequest(0) + 24);
    v17[13] = 2;
    sub_1DF22A800();
    sub_1DF1ACC88(&qword_1ECE0C728, MEMORY[0x1E6969530]);
    sub_1DF22B5C0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DF1B971C()
{
  result = qword_1ECE0D988;
  if (!qword_1ECE0D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D988);
  }

  return result;
}

uint64_t ListIndexDictionaryRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1DF22A800();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D990, &qword_1DF2313C0);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for ListIndexDictionaryRequest(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1B971C();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = a1;
  v16 = v24;
  v15 = v25;
  v29 = 0;
  *v13 = sub_1DF22B4A0();
  v13[1] = v17;
  v20[1] = v17;
  v28 = 1;
  v13[2] = sub_1DF22B4A0();
  v13[3] = v18;
  v27 = 2;
  sub_1DF1ACC88(&qword_1ED8E6BE0, MEMORY[0x1E6969530]);
  sub_1DF22B4E0();
  (*(v16 + 8))(v9, v26);
  (*(v22 + 32))(v13 + *(v10 + 24), v6, v15);
  sub_1DF1ADD90(v13, v23, type metadata accessor for ListIndexDictionaryRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return sub_1DF1B6380(v13, type metadata accessor for ListIndexDictionaryRequest);
}

uint64_t ListIndexDictionaryResponse.index.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t ListIndexDictionaryResponse.index.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

LighthouseBackground::ListIndexDictionaryResponse __swiftcall ListIndexDictionaryResponse.init(index:)(Swift::Int_optional index)
{
  *v1 = 5;
  *(v1 + 8) = index.value;
  *(v1 + 16) = index.is_nil;
  result.error = index.value;
  *result.gap1 = *(&index.value + 1);
  *&result.gap1[4] = *(&index.value + 5);
  result.gap1[6] = HIBYTE(index.value);
  LOBYTE(result.index.value) = index.is_nil;
  return result;
}

uint64_t sub_1DF1B9BF4()
{
  if (*v0)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1DF1B9C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1B9CF4(uint64_t a1)
{
  v2 = sub_1DF1B9F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1B9D30(uint64_t a1)
{
  v2 = sub_1DF1B9F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF1B9DB0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v16 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = *v4;
  v15[1] = *(v4 + 1);
  v18 = v4[16];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16();
  sub_1DF22B740();
  v21 = v11;
  v20 = 0;
  sub_1DF1B3D9C();
  v13 = v17;
  sub_1DF22B560();
  if (!v13)
  {
    v19 = 1;
    sub_1DF22B540();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DF1B9F60()
{
  result = qword_1ECE0D9A0;
  if (!qword_1ECE0D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D9A0);
  }

  return result;
}

uint64_t sub_1DF1B9FF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B730();
  if (!v5)
  {
    v14 = v20;
    v13 = v21;
    v23 = 0;
    sub_1DF1B3F5C();
    sub_1DF22B480();
    v15 = v24;
    v22 = 1;
    v17 = sub_1DF22B460();
    v19 = v18;
    (*(v14 + 8))(v11, v8);
    *v13 = v15;
    *(v13 + 8) = v17;
    *(v13 + 16) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ListGetDictionaryRequest.group.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ListGetDictionaryRequest.group.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ListGetDictionaryRequest.key.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ListGetDictionaryRequest.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall ListGetDictionaryRequest.init(group:key:index:)(LighthouseBackground::ListGetDictionaryRequest *__return_ptr retstr, Swift::String group, Swift::String key, Swift::Int index)
{
  retstr->group = group;
  retstr->key = key;
  retstr->index = index;
}

uint64_t sub_1DF1BA348()
{
  v1 = 7955819;
  if (*v0 != 1)
  {
    v1 = 0x7865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x70756F7267;
  }
}

uint64_t sub_1DF1BA394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1CA044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1BA3BC(uint64_t a1)
{
  v2 = sub_1DF1BA5F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BA3F8(uint64_t a1)
{
  v2 = sub_1DF1BA5F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ListGetDictionaryRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D9B0, &qword_1DF2313D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BA5F4();
  sub_1DF22B740();
  v17 = 0;
  v12 = v14[3];
  sub_1DF22B580();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_1DF22B580();
  v15 = 2;
  sub_1DF22B5B0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1BA5F4()
{
  result = qword_1ECE0D9B8;
  if (!qword_1ECE0D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D9B8);
  }

  return result;
}

uint64_t ListGetDictionaryRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D9C0, &qword_1DF2313E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BA5F4();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  v21 = v11;
  v23 = 1;
  v19 = sub_1DF22B4A0();
  v20 = v14;
  v22 = 2;
  v15 = sub_1DF22B4D0();
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  *a2 = v21;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1BA91C(uint64_t a1)
{
  v2 = sub_1DF1BA9D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BA958(uint64_t a1)
{
  v2 = sub_1DF1BA9D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1BA9D8()
{
  result = qword_1ECE0D9D0;
  if (!qword_1ECE0D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D9D0);
  }

  return result;
}

uint64_t sub_1DF1BAB20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  return result;
}

uint64_t sub_1DF1BAB40(uint64_t a1)
{
  v2 = sub_1DF1BAE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BAB7C(uint64_t a1)
{
  v2 = sub_1DF1BAE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF1BABFC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v31 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = v4[3];
  v29 = v4[2];
  v30 = v11;
  v14 = v4[5];
  v27 = v4[4];
  v28 = v13;
  v15 = v4[7];
  v25 = v4[6];
  v26 = v14;
  v24 = v15;
  v36 = *(v4 + 64);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31();
  v17 = v6;
  sub_1DF22B740();
  LOBYTE(v33) = 0;
  v18 = v32;
  sub_1DF22B580();
  if (!v18)
  {
    v19 = v26;
    v20 = v27;
    v22 = v24;
    v21 = v25;
    LOBYTE(v33) = 1;
    sub_1DF22B580();
    v33 = v20;
    v34 = v19;
    v37 = 2;
    sub_1DF16573C(v20, v19);
    sub_1DF165BF4();
    sub_1DF22B5C0();
    sub_1DF1657C8(v33, v34);
    v33 = v21;
    v34 = v22;
    v35 = v36;
    v37 = 3;
    sub_1DF22B560();
  }

  return (*(v7 + 8))(v10, v17);
}

unint64_t sub_1DF1BAE30()
{
  result = qword_1ECE0D9E8;
  if (!qword_1ECE0D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D9E8);
  }

  return result;
}

uint64_t ListPushDictionaryRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D9F0, &qword_1DF231400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BAE30();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v37) = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  v30 = v11;
  LOBYTE(v37) = 1;
  v14 = sub_1DF22B4A0();
  v31 = v15;
  v29 = v14;
  LOBYTE(v32) = 2;
  sub_1DF165F04();
  sub_1DF22B4E0();
  v28 = v37;
  v27 = v38;
  v49 = 3;
  sub_1DF22B480();
  (*(v6 + 8))(v9, v5);
  v25 = *(&v46 + 1);
  v26 = v46;
  v16 = v47;
  v48 = v47;
  v17 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v13;
  v18 = v29;
  v19 = v31;
  *&v33 = v29;
  *(&v33 + 1) = v31;
  v20 = v27;
  *&v34 = v28;
  *(&v34 + 1) = v27;
  v35 = v46;
  v36 = v47;
  v21 = v33;
  *a2 = v32;
  *(a2 + 16) = v21;
  v22 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v22;
  *(a2 + 64) = v16;
  sub_1DF1BB220(&v32, &v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v37 = v17;
  v38 = v13;
  v39 = v18;
  v40 = v19;
  v41 = v28;
  v42 = v20;
  v43 = v26;
  v44 = v25;
  v45 = v16;
  return sub_1DF1BB258(&v37);
}

uint64_t sub_1DF1BB2F8(uint64_t a1)
{
  v2 = sub_1DF1BB558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BB334(uint64_t a1)
{
  v2 = sub_1DF1BB558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF1BB3B4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v15[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = *v4;
  v16 = v4[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v15[0])();
  sub_1DF22B740();
  v19 = v11;
  v18 = 0;
  sub_1DF1B3D9C();
  v13 = v15[1];
  sub_1DF22B560();
  if (!v13)
  {
    v17 = 1;
    sub_1DF22B520();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DF1BB558()
{
  result = qword_1ECE0DA00;
  if (!qword_1ECE0DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DA00);
  }

  return result;
}

uint64_t sub_1DF1BB5F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v19 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B730();
  if (!v5)
  {
    v14 = v18;
    v13 = v19;
    v21 = 0;
    sub_1DF1B3F5C();
    sub_1DF22B480();
    v15 = v22;
    v20 = 1;
    v16 = sub_1DF22B440();
    (*(v14 + 8))(v11, v8);
    *v13 = v15;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1BB824(uint64_t a1)
{
  v2 = sub_1DF1BBA30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BB860(uint64_t a1)
{
  v2 = sub_1DF1BBA30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ListPopDictionaryRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DA10, &qword_1DF231418);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BBA30();
  sub_1DF22B740();
  v16 = 0;
  v12 = v14[3];
  sub_1DF22B580();
  if (!v12)
  {
    v15 = 1;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1BBA30()
{
  result = qword_1ECE0DA18;
  if (!qword_1ECE0DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DA18);
  }

  return result;
}

uint64_t sub_1DF1BBB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1BBC0C(uint64_t a1)
{
  v2 = sub_1DF1BBE78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BBC48(uint64_t a1)
{
  v2 = sub_1DF1BBE78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF1BBCC8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  v11 = *v4;
  v12 = *(v4 + 1);
  v16 = *(v4 + 2);
  v17 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B740();
  LOBYTE(v20) = v11;
  v22 = 0;
  sub_1DF1B3D9C();
  v14 = v18;
  sub_1DF22B560();
  if (!v14)
  {
    v20 = v17;
    v21 = v16;
    v22 = 1;
    sub_1DF1B7FDC(v17, v16);
    sub_1DF165BF4();
    sub_1DF22B560();
    sub_1DF18A0A4(v20, v21);
  }

  return (*(v19 + 8))(v10, v7);
}

unint64_t sub_1DF1BBE78()
{
  result = qword_1ECE0DA30;
  if (!qword_1ECE0DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DA30);
  }

  return result;
}

uint64_t sub_1DF1BBF10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B730();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v19 = 0;
    v20 = 0xF000000000000000;
  }

  else
  {
    v13 = v21;
    v14 = v22;
    v25 = 0;
    sub_1DF1B3F5C();
    sub_1DF22B480();
    v15 = v23;
    v25 = 1;
    sub_1DF165F04();
    sub_1DF22B480();
    (*(v13 + 8))(v11, v8);
    v17 = v23;
    v18 = v24;
    sub_1DF18A0A4(0, 0xF000000000000000);
    *v14 = v15;
    *(v14 + 8) = v17;
    *(v14 + 16) = v18;
    sub_1DF1B7FDC(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v19 = v17;
    v20 = v18;
  }

  return sub_1DF18A0A4(v19, v20);
}

LighthouseBackground::StreamError_optional __swiftcall StreamError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StreamError.rawValue.getter()
{
  v1 = 0x4464696C61766E69;
  if (*v0 != 1)
  {
    v1 = 0x4564696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5464696C61766E69;
  }
}

uint64_t sub_1DF1BC234(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4464696C61766E69;
  v4 = 0xEB00000000617461;
  if (v2 != 1)
  {
    v3 = 0x4564696C61766E69;
    v4 = 0xEF746E696F70646ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x5464696C61766E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000006369706FLL;
  }

  v7 = 0x4464696C61766E69;
  v8 = 0xEB00000000617461;
  if (*a2 != 1)
  {
    v7 = 0x4564696C61766E69;
    v8 = 0xEF746E696F70646ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x5464696C61766E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000006369706FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF1BC364()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF1BC424()
{
  *v0;
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF1BC4D0()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF1BC598(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006369706FLL;
  v4 = 0xEB00000000617461;
  v5 = 0x4464696C61766E69;
  if (v2 != 1)
  {
    v5 = 0x4564696C61766E69;
    v4 = 0xEF746E696F70646ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x5464696C61766E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DF1BC718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1BC79C(uint64_t a1)
{
  v2 = sub_1DF1BC960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BC7D8(uint64_t a1)
{
  v2 = sub_1DF1BC960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamErrorMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DA40, &qword_1DF231438);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BC960();
  sub_1DF22B740();
  v12 = v8;
  sub_1DF1BC9B4();
  sub_1DF22B560();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1BC960()
{
  result = qword_1ECE0DA48;
  if (!qword_1ECE0DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DA48);
  }

  return result;
}

unint64_t sub_1DF1BC9B4()
{
  result = qword_1ECE0DA50;
  if (!qword_1ECE0DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DA50);
  }

  return result;
}

uint64_t StreamErrorMessage.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DA58, &qword_1DF231440);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BC960();
  sub_1DF22B730();
  if (!v2)
  {
    sub_1DF1BCB74();
    sub_1DF22B480();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF1BCB74()
{
  result = qword_1ECE0DA60;
  if (!qword_1ECE0DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DA60);
  }

  return result;
}

uint64_t StreamListRequest.topics.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

LighthouseBackground::StreamListRequest __swiftcall StreamListRequest.init(topics:)(Swift::OpaquePointer_optional topics)
{
  rawValue = topics.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.topics.value._rawValue = v4;
  result.topics.is_nil = v5;
  return result;
}

uint64_t sub_1DF1BCC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736369706F74 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1BCD14(uint64_t a1)
{
  v2 = sub_1DF1BCF24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BCD50(uint64_t a1)
{
  v2 = sub_1DF1BCF24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamListRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DA68, &qword_1DF231448);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BCF24();

  sub_1DF22B740();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  sub_1DF15FAB4(&qword_1ECE0C068);
  sub_1DF22B560();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1BCF24()
{
  result = qword_1ECE0DA70;
  if (!qword_1ECE0DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DA70);
  }

  return result;
}

uint64_t StreamListRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DA78, &qword_1DF231450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BCF24();
  sub_1DF22B730();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    sub_1DF15FAB4(&qword_1ECE0C058);
    sub_1DF22B480();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t StreamListResponse.info.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1DF1BD190(v2);
}

uint64_t sub_1DF1BD190(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t StreamListResponse.info.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);
  result = sub_1DF1BD204(*(v1 + 8));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_1DF1BD204(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void __swiftcall StreamListResponse.init(info:)(LighthouseBackground::StreamListResponse *__return_ptr retstr, LighthouseBackground::StreamServiceInfo info)
{
  v3 = *info.publishers._rawValue;
  v4 = *(info.publishers._rawValue + 1);
  retstr->error.value = LighthouseBackground_StreamError_unknownDefault;
  sub_1DF1BD204(0);
  *(&retstr->info.value.publishers._rawValue + 7) = v3;
  *(&retstr->info.value.subscribers._rawValue + 7) = v4;
}

uint64_t sub_1DF1BD2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1868983913 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1BD3B8(uint64_t a1)
{
  v2 = sub_1DF1BD5E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BD3F4(uint64_t a1)
{
  v2 = sub_1DF1BD5E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamListResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DA80, &qword_1DF231458);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v13[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BD5E0();
  sub_1DF22B740();
  LOBYTE(v14) = v8;
  v16 = 0;
  sub_1DF1BC9B4();
  v11 = v13[1];
  sub_1DF22B560();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v9;
    v16 = 1;
    sub_1DF1BD190(v13[0]);
    sub_1DF1BD634();
    sub_1DF22B560();
    sub_1DF1BD204(v14);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1BD5E0()
{
  result = qword_1ECE0DA88;
  if (!qword_1ECE0DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DA88);
  }

  return result;
}

unint64_t sub_1DF1BD634()
{
  result = qword_1ECE0DA90;
  if (!qword_1ECE0DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DA90);
  }

  return result;
}

uint64_t StreamListResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DA98, &qword_1DF231460);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BD5E0();
  sub_1DF22B730();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v15 = 0;
  }

  else
  {
    v17 = 0;
    sub_1DF1BCB74();
    sub_1DF22B480();
    v11 = v16[0];
    v17 = 1;
    sub_1DF1BD898();
    sub_1DF22B480();
    (*(v6 + 8))(v9, v5);
    v13 = v16[0];
    v14 = v16[1];
    sub_1DF1BD204(0);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    sub_1DF1BD190(v13);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v15 = v13;
  }

  return sub_1DF1BD204(v15);
}

unint64_t sub_1DF1BD898()
{
  result = qword_1ECE0DAA0;
  if (!qword_1ECE0DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DAA0);
  }

  return result;
}

uint64_t sub_1DF1BD950(uint64_t a1)
{
  v2 = sub_1DF1BDB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BD98C(uint64_t a1)
{
  v2 = sub_1DF1BDB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamPublisherRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DAA8, &qword_1DF231468);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BDB04();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1BDB04()
{
  result = qword_1ECE0DAB0;
  if (!qword_1ECE0DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DAB0);
  }

  return result;
}

uint64_t sub_1DF1BDBB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DAA8, &qword_1DF231468);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BDB04();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

uint64_t StreamPublisherResponse.publisherId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StreamPublisherResponse.publisherId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

LighthouseBackground::StreamPublisherResponse __swiftcall StreamPublisherResponse.init(result:publisherId:)(Swift::Bool result, Swift::String publisherId)
{
  *v2 = 3;
  *(v2 + 1) = result;
  *(v2 + 8) = publisherId;
  v3.publisherId.value = publisherId;
  v3.error.value = result;
  return v3;
}

uint64_t sub_1DF1BDDF4()
{
  v1 = 0x746C75736572;
  if (*v0 != 1)
  {
    v1 = 0x656873696C627570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1DF1BDE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1CA2B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1BDE78(uint64_t a1)
{
  v2 = sub_1DF1BDF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BDEB4(uint64_t a1)
{
  v2 = sub_1DF1BDF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF1BDF34()
{
  result = qword_1ECE0DAC8;
  if (!qword_1ECE0DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DAC8);
  }

  return result;
}

char *sub_1DF1BDFCC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v2;
  *(a2 + 1) = 2;
  return result;
}

uint64_t sub_1DF1BE034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369706F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF1BE0B8(uint64_t a1)
{
  v2 = sub_1DF1BE26C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BE0F4(uint64_t a1)
{
  v2 = sub_1DF1BE26C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamSubscribeRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DAD8, &qword_1DF231488);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BE26C();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1BE26C()
{
  result = qword_1ECE0DAE0;
  if (!qword_1ECE0DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DAE0);
  }

  return result;
}

uint64_t sub_1DF1BE304@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B730();
  if (!v5)
  {
    v13 = v20;
    v14 = v21;
    v15 = sub_1DF22B4A0();
    v17 = v16;
    (*(v13 + 8))(v11, v8);
    *v14 = v15;
    v14[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF1BE49C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DAD8, &qword_1DF231488);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BE26C();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DF1BE650()
{
  v1 = 0x746C75736572;
  if (*v0 != 1)
  {
    v1 = 0x6269726373627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1DF1BE6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1CA3CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1BE6D4(uint64_t a1)
{
  v2 = sub_1DF1BE964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BE710(uint64_t a1)
{
  v2 = sub_1DF1BE964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF1BE790(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  v11 = *v4;
  v19 = v4[1];
  v12 = *(v4 + 1);
  v16[0] = *(v4 + 2);
  v16[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_1DF22B740();
  v23 = v11;
  v22 = 0;
  sub_1DF1BC9B4();
  v14 = v18;
  sub_1DF22B560();
  if (v14)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v21 = 1;
  sub_1DF22B520();
  v20 = 2;
  sub_1DF22B510();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DF1BE964()
{
  result = qword_1ECE0DAF8;
  if (!qword_1ECE0DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DAF8);
  }

  return result;
}

uint64_t sub_1DF1BE9FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B730();
  if (!v5)
  {
    v13 = v22;
    v14 = v8;
    v27 = 0;
    sub_1DF1BCB74();
    v15 = v23;
    sub_1DF22B480();
    v16 = v28;
    v26 = 1;
    v17 = v14;
    v24 = sub_1DF22B440();
    v25 = 2;
    v19 = sub_1DF22B430();
    v21 = v20;
    (*(v17 + 8))(v11, v15);
    *v13 = v16;
    *(v13 + 1) = v24;
    *(v13 + 8) = v19;
    *(v13 + 16) = v21;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

char *sub_1DF1BEC38@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *(a2 + 1) = 2;
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1DF1BECC0()
{
  if (*v0)
  {
    result = 0x6269726373627573;
  }

  else
  {
    result = 0x6369706F74;
  }

  *v0;
  return result;
}

uint64_t sub_1DF1BED00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEC00000064497265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1BEDDC(uint64_t a1)
{
  v2 = sub_1DF1BEFE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BEE18(uint64_t a1)
{
  v2 = sub_1DF1BEFE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamUnsubscribeRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DB08, &qword_1DF2314A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BEFE8();
  sub_1DF22B740();
  v16 = 0;
  v12 = v14[3];
  sub_1DF22B580();
  if (!v12)
  {
    v15 = 1;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1BEFE8()
{
  result = qword_1ECE0DB10;
  if (!qword_1ECE0DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DB10);
  }

  return result;
}

uint64_t sub_1DF1BF080@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v25 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DF22B730();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13 = v24;
  v14 = v25;
  v27 = 0;
  v15 = sub_1DF22B4A0();
  v17 = v16;
  v23 = v15;
  v26 = 1;
  v18 = sub_1DF22B4A0();
  v20 = v19;
  (*(v13 + 8))(v11, v8);
  *v14 = v23;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v20;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

LighthouseBackground::StreamUnsubscribeResponse __swiftcall StreamUnsubscribeResponse.init(result:)(Swift::Bool result)
{
  *v1 = 3;
  v1[1] = result;
  v2.error.value = result;
  return v2;
}

uint64_t sub_1DF1BF304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF1BF3D8(uint64_t a1)
{
  v2 = sub_1DF1BF5F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1BF414(uint64_t a1)
{
  v2 = sub_1DF1BF5F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamUnsubscribeResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DB20, &qword_1DF2314B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BF5F0();
  sub_1DF22B740();
  v16 = v9;
  v15 = 0;
  sub_1DF1BC9B4();
  sub_1DF22B560();
  if (!v2)
  {
    v14 = 1;
    sub_1DF22B520();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DF1BF5F0()
{
  result = qword_1ECE0DB28;
  if (!qword_1ECE0DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DB28);
  }

  return result;
}

uint64_t StreamUnsubscribeResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0DB30, &qword_1DF2314C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1BF5F0();
  sub_1DF22B730();
  if (!v2)
  {
    v16 = 0;
    sub_1DF1BCB74();
    sub_1DF22B480();
    v11 = v17;
    v15 = 1;
    v12 = sub_1DF22B440();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF1BF804()
{
  result = qword_1ECE0C3F0;
  if (!qword_1ECE0C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C3F0);
  }

  return result;
}

unint64_t sub_1DF1BF884()
{
  result = qword_1ECE0C4D8;
  if (!qword_1ECE0C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C4D8);
  }

  return result;
}

unint64_t sub_1DF1BF8D8()
{
  result = qword_1ECE0C4E0;
  if (!qword_1ECE0C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C4E0);
  }

  return result;
}

unint64_t sub_1DF1BF92C()
{
  result = qword_1ECE0DB38;
  if (!qword_1ECE0DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0DB38);
  }

  return result;
}

unint64_t sub_1DF1BF9AC()
{
  result = qword_1ECE0C3F8;
  if (!qword_1ECE0C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C3F8);
  }

  return result;
}

unint64_t sub_1DF1BFA00()
{
  result = qword_1ECE0C400;
  if (!qword_1ECE0C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C400);
  }

  return result;
}