uint64_t sub_1D117D838(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for BrowseCategory();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D10A0578();
  v43 = a2;
  result = sub_1D139142C();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v43)
      {
        sub_1D10F36E4(v25, v7);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_1D11864BC(v25, v7, type metadata accessor for BrowseCategory);
        v29 = *(v10 + 56);
        v27 = v7;
        v28 = *(v29 + 8 * v23);
      }

      sub_1D139177C();
      v30 = v27;
      BrowseCategory.rawValue.getter();
      sub_1D139027C();

      result = sub_1D13917CC();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D10F36E4(v30, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D117DBA4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for BrowseCategory();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D1186840(0, &qword_1EE06B0B0, MEMORY[0x1E69E6EC8]);
  v40 = a2;
  result = sub_1D139142C();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v41 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v39 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v40)
      {
        sub_1D10F36E4(v25, v7);
      }

      else
      {
        sub_1D11864BC(v25, v7, type metadata accessor for BrowseCategory);
      }

      v26 = v7;
      v27 = *(*(v41 + 56) + 8 * v23);
      sub_1D139177C();
      v28 = v26;
      BrowseCategory.rawValue.getter();
      sub_1D139027C();

      result = sub_1D13917CC();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D10F36E4(v28, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v27;
      v7 = v28;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D117DF78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1185FAC(0, &qword_1EE069510, sub_1D11866BC);
  v34 = a2;
  result = sub_1D139142C();
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

      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
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

uint64_t sub_1D117E25C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D11865E4();
  v30 = a2;
  result = sub_1D139142C();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D139177C();
      MEMORY[0x1D38870E0](v20);
      result = sub_1D13917CC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117E520(uint64_t a1, int a2, uint64_t (*a3)(void), void (*a4)(void, __n128), void (*a5)(id))
{
  v46 = a5;
  v7 = v5;
  v9 = a3(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = &v42 - v12;
  v13 = *v5;
  a4(0, v11);
  v47 = a2;
  result = sub_1D139142C();
  v15 = v13;
  v16 = result;
  if (*(v13 + 16))
  {
    v42 = v7;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v43 = (v10 + 16);
    v44 = v13;
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v51 = v9;
    v24 = v48;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v15 + 48);
      v50 = *(v45 + 72);
      v31 = v30 + v50 * v29;
      if (v47)
      {
        v32 = (*v49)(v24, v31, v51);
        v33 = *(*(v15 + 56) + 8 * v29);
      }

      else
      {
        (*v43)(v24, v31, v51);
        v32 = *(*(v15 + 56) + 8 * v29);
        v33 = v32;
      }

      v46(v32);
      result = sub_1D139006C();
      v34 = -1 << *(v16 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v24 = v48;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v23 + 8 * v36);
          if (v40 != -1)
          {
            v25 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v24 = v48;
LABEL_7:
      *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = (*v49)((*(v16 + 48) + v50 * v25), v24, v51);
      *(*(v16 + 56) + 8 * v25) = v33;
      ++*(v16 + 16);
      v15 = v44;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v42;
    if (v41 >= 64)
    {
      bzero(v18, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v7 = v16;
  return result;
}

uint64_t sub_1D117E8D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1186750();
  v30 = a2;
  result = sub_1D139142C();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D139177C();
      MEMORY[0x1D38870E0](v20);
      result = sub_1D13917CC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117EB5C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for BrowseCategory();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D118642C(0, &qword_1EC609F98, type metadata accessor for BrowseCategory, sub_1D10A01A4, sub_1D10A0298);
  v43 = a2;
  result = sub_1D139142C();
  v10 = result;
  if (*(v8 + 16))
  {
    v41 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v26 = v23 | (v11 << 6);
      v27 = *(v42 + 72);
      v28 = *(v8 + 48) + v27 * v26;
      if (v43)
      {
        sub_1D10F36E4(v28, v7);
        v29 = *(v8 + 56) + 72 * v26;
        v31 = *(v29 + 16);
        v30 = *(v29 + 32);
        v32 = *(v29 + 64);
        v47 = *(v29 + 48);
        v48 = v32;
        v44 = *v29;
        v45 = v31;
        v46 = v30;
      }

      else
      {
        sub_1D11864BC(v28, v7, type metadata accessor for BrowseCategory);
        sub_1D11864BC(*(v8 + 56) + 72 * v26, &v44, sub_1D10A01A4);
      }

      sub_1D139177C();
      BrowseCategory.rawValue.getter();
      sub_1D139027C();

      result = sub_1D13917CC();
      v33 = -1 << *(v10 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
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
          v39 = *(v17 + 8 * v35);
          if (v39 != -1)
          {
            v18 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D10F36E4(v7, *(v10 + 48) + v27 * v18);
      v19 = *(v10 + 56) + 72 * v18;
      v20 = v45;
      v21 = v46;
      v22 = v47;
      *(v19 + 64) = v48;
      *(v19 + 32) = v21;
      *(v19 + 48) = v22;
      *(v19 + 16) = v20;
      *v19 = v44;
      ++*(v10 + 16);
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v15 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v8 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v8 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v40;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1D117EF58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D10A0088();
  v47 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v45 = v2;
    v46 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 32 * v21;
      v24 = *v23;
      v54 = *(v23 + 8);
      v25 = *(v23 + 16);
      v53 = *(v23 + 24);
      v26 = v22 + 48 * v21;
      v27 = *v26;
      v28 = *(v26 + 8);
      v51 = *(v26 + 24);
      v52 = *(v26 + 16);
      v49 = *(v26 + 40);
      v50 = *(v26 + 32);
      if ((v47 & 1) == 0)
      {
        sub_1D10A00EC(v27, v28, v52, v51, v50, v49);
      }

      sub_1D139177C();
      v48 = v28;
      if (v53)
      {
        v29 = v25 | v54;
        if (v25 | v54 | v24)
        {
          v30 = v27;
          if (v24 == 1 && v29 == 0)
          {
            v33 = 1;
          }

          else if (v24 == 2 && v29 == 0)
          {
            v33 = 2;
          }

          else
          {
            v33 = 3;
          }
        }

        else
        {
          v30 = v27;
          v33 = 0;
        }

        MEMORY[0x1D38870E0](v33);
      }

      else
      {
        v30 = v27;
        MEMORY[0x1D38870E0](4);
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v34 = v24;
        }

        else
        {
          v34 = 0;
        }

        MEMORY[0x1D3887110](v34);
        if ((v54 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v35 = v54;
        }

        else
        {
          v35 = 0;
        }

        MEMORY[0x1D3887110](v35);
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v25;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x1D3887110](v36);
      }

      result = sub_1D13917CC();
      v37 = -1 << *(v7 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_60:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v24;
      *(v16 + 8) = v54;
      *(v16 + 16) = v25;
      *(v16 + 24) = v53;
      v17 = (*(v7 + 56) + 48 * v15);
      *v17 = v30;
      v17[1] = v48;
      v17[2] = v52;
      v17[3] = v51;
      v17[4] = v50;
      v17[5] = v49;
      ++*(v7 + 16);
      v5 = v46;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_58;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v9, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_58:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117F304(uint64_t a1, char a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  sub_1D1184E00(0, a3, a4, a5, sub_1D106F934);
  v38 = a2;
  result = sub_1D139142C();
  v10 = result;
  if (*(v8 + 16))
  {
    v37 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v38 & 1) == 0)
      {

        v28 = v27;
      }

      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v5;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t sub_1D117F5D8(uint64_t a1, char a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  sub_1D1184E00(0, a3, a4, a5, sub_1D1154880);
  v37 = a2;
  result = sub_1D139142C();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v37 & 1) == 0)
      {
      }

      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v36;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t sub_1D117F8B8(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v7 = v6;
  v9 = *v6;
  sub_1D1184E6C(0, a3, a4, a5, a6);
  result = sub_1D139142C();
  v11 = result;
  if (*(v9 + 16))
  {
    v35 = v6;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(*(v9 + 56) + 8 * v23);
      if ((a2 & 1) == 0)
      {
        v26 = v24;
      }

      result = sub_1D1390D7C();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v9 + 32);
      if (v34 >= 64)
      {
        bzero((v9 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v13 = -1 << v34;
      }

      *(v9 + 16) = 0;
    }

    v7 = v35;
  }

  else
  {
  }

  *v7 = v11;
  return result;
}

uint64_t sub_1D117FB20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1186018(0, &qword_1EE06B6A8, type metadata accessor for CategoryCountProvider, MEMORY[0x1E69E6EC8]);
  v60 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v58 = v3;
    v59 = v5;
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
    v61 = result;
    while (1)
    {
      if (!v12)
      {
        v22 = v8;
        while (1)
        {
          v8 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v8 >= v13)
          {
            break;
          }

          v23 = v9[v8];
          ++v22;
          if (v23)
          {
            v20 = __clz(__rbit64(v23));
            v21 = (v23 - 1) & v23;
            goto LABEL_15;
          }
        }

        if ((v60 & 1) == 0)
        {

          v3 = v58;
          goto LABEL_58;
        }

        v57 = 1 << *(v5 + 32);
        v3 = v58;
        if (v57 >= 64)
        {
          bzero(v9, ((v57 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v57;
        }

        *(v5 + 16) = 0;
        break;
      }

      v20 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v62 = v21;
      if (v60)
      {
        v25 = *(v5 + 56);
        v26 = (*(v5 + 48) + 72 * v24);
        v27 = *v26;
        v28 = *(v26 + 1);
        v29 = *(v26 + 2);
        v31 = *(v26 + 3);
        v30 = *(v26 + 4);
        v67 = *(v26 + 56);
        v68 = *(v26 + 40);
        v65 = *(v25 + 8 * v24);
      }

      else
      {
        v32 = *(v5 + 48) + 72 * v24;
        v33 = *(v32 + 16);
        v34 = *(v32 + 32);
        v35 = *(v32 + 48);
        *&v71[32] = *(v32 + 64);
        *&v71[16] = v35;
        v36 = *v32;
        v70[1] = v33;
        *v71 = v34;
        v70[0] = v36;
        v37 = *(*(v5 + 56) + 8 * v24);
        v67 = *&v71[24];
        v68 = *&v71[8];
        v31 = *(&v33 + 1);
        v30 = v34;
        v28 = *(&v36 + 1);
        v29 = v33;
        v27 = v36;
        sub_1D1082914(v70, v69);
        v65 = v37;
      }

      sub_1D139177C();
      MEMORY[0x1D38870E0](v27);
      sub_1D1390D9C();
      v63 = v31;
      sub_1D139179C();
      if (v31)
      {
        sub_1D139027C();
      }

      v66 = v29;
      v64 = v30;
      sub_1D139027C();
      if (*(&v68 + 1) >> 62)
      {
        v55 = sub_1D13910DC();
        MEMORY[0x1D38870E0](v55);
        result = sub_1D13910DC();
        v38 = result;
        if (!result)
        {
          goto LABEL_29;
        }
      }

      else
      {
        result = MEMORY[0x1D38870E0](*((*(&v68 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10));
        v38 = *((*(&v68 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v38)
        {
          goto LABEL_29;
        }
      }

      if (v38 < 1)
      {
        goto LABEL_61;
      }

      if ((*(&v68 + 1) & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v38; ++i)
        {
          MEMORY[0x1D3886B70](i, *(&v68 + 1));
          sub_1D1390D9C();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v40 = (*(&v68 + 1) + 32);
        do
        {
          v41 = *v40++;
          v42 = v41;
          sub_1D1390D9C();

          --v38;
        }

        while (v38);
      }

LABEL_29:
      if (v67 >> 62)
      {
        v56 = sub_1D13910DC();
        MEMORY[0x1D38870E0](v56);
        result = sub_1D13910DC();
        v43 = result;
        if (!result)
        {
          goto LABEL_38;
        }
      }

      else
      {
        result = MEMORY[0x1D38870E0](*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v43 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v43)
        {
          goto LABEL_38;
        }
      }

      if (v43 < 1)
      {
        goto LABEL_62;
      }

      if ((v67 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v43; ++j)
        {
          MEMORY[0x1D3886B70](j, v67);
          sub_1D1390D9C();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v45 = (v67 + 32);
        do
        {
          v46 = *v45++;
          v47 = v46;
          sub_1D1390D9C();

          --v43;
        }

        while (v43);
      }

LABEL_38:
      sub_1D1390D9C();
      result = sub_1D13917CC();
      v7 = v61;
      v48 = -1 << *(v61 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v14 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        v5 = v59;
        v17 = v28;
        v16 = v66;
        v18 = v27;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v14 + 8 * v50);
          if (v54 != -1)
          {
            v15 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_7;
          }
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v49) & ~*(v14 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
      v5 = v59;
      v17 = v28;
      v16 = v66;
      v18 = v27;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = *(v61 + 48) + 72 * v15;
      *v19 = v18;
      *(v19 + 8) = v17;
      *(v19 + 16) = v16;
      *(v19 + 24) = v63;
      *(v19 + 32) = v64;
      *(v19 + 40) = v68;
      *(v19 + 56) = v67;
      *(*(v61 + 56) + 8 * v15) = v65;
      ++*(v61 + 16);
      v12 = v62;
    }
  }

LABEL_58:
  *v3 = v7;
  return result;
}

uint64_t sub_1D1180094(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D109FB58();
  v61 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v58 = v3;
    v59 = v5;
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
    v60 = result;
    while (1)
    {
      if (!v12)
      {
        v23 = v8;
        while (1)
        {
          v8 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v8 >= v13)
          {
            break;
          }

          v24 = v9[v8];
          ++v23;
          if (v24)
          {
            v21 = __clz(__rbit64(v24));
            v22 = (v24 - 1) & v24;
            goto LABEL_15;
          }
        }

        if ((v61 & 1) == 0)
        {

          v3 = v58;
          goto LABEL_58;
        }

        v57 = 1 << *(v5 + 32);
        v3 = v58;
        if (v57 >= 64)
        {
          bzero(v9, ((v57 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v57;
        }

        *(v5 + 16) = 0;
        break;
      }

      v21 = __clz(__rbit64(v12));
      v22 = (v12 - 1) & v12;
LABEL_15:
      v25 = v21 | (v8 << 6);
      v62 = v22;
      if (v61)
      {
        v26 = *(v5 + 56);
        v27 = (*(v5 + 48) + 72 * v25);
        v28 = *v27;
        v29 = *(v27 + 1);
        v30 = *(v27 + 2);
        v32 = *(v27 + 3);
        v31 = *(v27 + 4);
        v67 = *(v27 + 56);
        v68 = *(v27 + 40);
        v64 = *(v26 + 8 * v25);
      }

      else
      {
        v33 = *(v5 + 48) + 72 * v25;
        v34 = *(v33 + 16);
        v35 = *(v33 + 32);
        v36 = *(v33 + 48);
        *&v71[32] = *(v33 + 64);
        *&v71[16] = v36;
        v37 = *v33;
        v70[1] = v34;
        *v71 = v35;
        v70[0] = v37;
        v64 = *(*(v5 + 56) + 8 * v25);
        v67 = *&v71[24];
        v68 = *&v71[8];
        v32 = *(&v34 + 1);
        v31 = v35;
        v29 = *(&v37 + 1);
        v30 = v34;
        v28 = v37;
        sub_1D1082914(v70, v69);
      }

      sub_1D139177C();
      MEMORY[0x1D38870E0](v28);
      sub_1D1390D9C();
      sub_1D139179C();
      if (v32)
      {
        sub_1D139027C();
      }

      v65 = v30;
      v66 = v32;
      v63 = v31;
      sub_1D139027C();
      if (*(&v68 + 1) >> 62)
      {
        v55 = sub_1D13910DC();
        MEMORY[0x1D38870E0](v55);
        result = sub_1D13910DC();
        v38 = result;
        if (!result)
        {
          goto LABEL_29;
        }
      }

      else
      {
        result = MEMORY[0x1D38870E0](*((*(&v68 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10));
        v38 = *((*(&v68 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v38)
        {
          goto LABEL_29;
        }
      }

      if (v38 < 1)
      {
        goto LABEL_61;
      }

      if ((*(&v68 + 1) & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v38; ++i)
        {
          MEMORY[0x1D3886B70](i, *(&v68 + 1));
          sub_1D1390D9C();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v40 = (*(&v68 + 1) + 32);
        do
        {
          v41 = *v40++;
          v42 = v41;
          sub_1D1390D9C();

          --v38;
        }

        while (v38);
      }

LABEL_29:
      if (v67 >> 62)
      {
        v56 = sub_1D13910DC();
        MEMORY[0x1D38870E0](v56);
        result = sub_1D13910DC();
        v43 = result;
        if (!result)
        {
          goto LABEL_38;
        }
      }

      else
      {
        result = MEMORY[0x1D38870E0](*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v43 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v43)
        {
          goto LABEL_38;
        }
      }

      if (v43 < 1)
      {
        goto LABEL_62;
      }

      if ((v67 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v43; ++j)
        {
          MEMORY[0x1D3886B70](j, v67);
          sub_1D1390D9C();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v45 = (v67 + 32);
        do
        {
          v46 = *v45++;
          v47 = v46;
          sub_1D1390D9C();

          --v43;
        }

        while (v43);
      }

LABEL_38:
      sub_1D1390D9C();
      result = sub_1D13917CC();
      v7 = v60;
      v48 = -1 << *(v60 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v14 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        v5 = v59;
        v17 = v65;
        v16 = v66;
        v19 = v28;
        v18 = v29;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v14 + 8 * v50);
          if (v54 != -1)
          {
            v15 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_7;
          }
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v49) & ~*(v14 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
      v5 = v59;
      v17 = v65;
      v16 = v66;
      v19 = v28;
      v18 = v29;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = *(v60 + 48) + 72 * v15;
      *v20 = v19;
      *(v20 + 8) = v18;
      *(v20 + 16) = v17;
      *(v20 + 24) = v16;
      *(v20 + 32) = v63;
      *(v20 + 40) = v68;
      *(v20 + 56) = v67;
      *(*(v60 + 56) + 8 * v15) = v64;
      ++*(v60 + 16);
      v12 = v62;
    }
  }

LABEL_58:
  *v3 = v7;
  return result;
}

uint64_t sub_1D11805D8(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v31 = a2;
  result = sub_1D139142C();
  v8 = result;
  if (*(v6 + 16))
  {
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
      }

      sub_1D139177C();
      MEMORY[0x1D38870E0](v21);
      result = sub_1D13917CC();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
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
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1D1180860(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1186090();
  v39 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v22 = *(v5 + 56) + 48 * v20;
      v41 = *v22;
      v42 = *(v22 + 8);
      v23 = *(v22 + 16);
      v40 = *(v22 + 24);
      v24 = *(v22 + 32);
      v25 = *(v22 + 40);
      if ((v39 & 1) == 0)
      {
        v26 = v21;
        v27 = v41;

        v28 = v40;
      }

      result = sub_1D1390D7C();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 48 * v15);
      *v16 = v41;
      v16[1] = v42;
      v16[2] = v23;
      v16[3] = v40;
      v16[4] = v24;
      v16[5] = v25;
      ++*(v7 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1D1180B68()
{
  v1 = v0;
  sub_1D10A0888();
  v2 = *v0;
  v3 = sub_1D139141C();
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
        v18 = *(*(v2 + 48) + v17);
        v19 = *(v2 + 56) + 72 * v17;
        v21 = *(v19 + 16);
        v20 = *(v19 + 32);
        v22 = *(v19 + 48);
        v32 = *(v19 + 64);
        v31 = v22;
        v28 = *v19;
        v29 = v21;
        v30 = v20;
        *(*(v4 + 48) + v17) = v18;
        v23 = *(v4 + 56) + 72 * v17;
        *v23 = v28;
        v24 = v29;
        v25 = v30;
        v26 = v31;
        *(v23 + 64) = v32;
        *(v23 + 32) = v25;
        *(v23 + 48) = v26;
        *(v23 + 16) = v24;
        result = sub_1D1082914(&v28, v27);
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

void *sub_1D1180D10()
{
  v1 = v0;
  sub_1D1186284(0, &qword_1EC609C90);
  v2 = *v0;
  v3 = sub_1D139141C();
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

void *sub_1D1180E98()
{
  v1 = v0;
  sub_1D1186018(0, &qword_1EC609F00, sub_1D10E3C10, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1D139141C();
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
        v18 = 8 * v17;
        v17 *= 72;
        v19 = (*(v2 + 48) + v17);
        v21 = v19[1];
        v20 = v19[2];
        v22 = v19[3];
        v26 = *(v19 + 8);
        v25[3] = v22;
        v25[0] = *v19;
        v25[1] = v21;
        v25[2] = v20;
        v23 = *(*(v2 + 56) + v18);
        memmove((*(v4 + 48) + v17), v19, 0x48uLL);
        *(*(v4 + 56) + v18) = v23;
        sub_1D1082914(v25, v24);
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

void *sub_1D1181070()
{
  v1 = v0;
  sub_1D109D0FC();
  v2 = *v0;
  v3 = sub_1D139141C();
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

void *sub_1D11811C8()
{
  v1 = v0;
  sub_1D1185FAC(0, &qword_1EC609E38, type metadata accessor for TimelineViewDataDayCollection);
  v2 = *v0;
  v3 = sub_1D139141C();
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

void *sub_1D1181374()
{
  v1 = v0;
  v38 = sub_1D138E52C();
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1185FAC(0, &qword_1EC609E00, MEMORY[0x1E69A3690]);
  v3 = *v0;
  v4 = sub_1D139141C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v39 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    v36 = v3;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v3 + 56);
        v22 = (*(v3 + 48) + 16 * v19);
        v23 = *v22;
        v24 = v22[1];
        v25 = v40;
        v26 = *(v40 + 72) * v19;
        v27 = v37;
        v28 = v38;
        (*(v40 + 16))(v37, v21 + v26, v38);
        v29 = v39;
        v30 = (*(v39 + 48) + v20);
        *v30 = v23;
        v30[1] = v24;
        v31 = *(v29 + 56) + v26;
        v3 = v36;
        (*(v25 + 32))(v31, v27, v28);

        v14 = v41;
      }

      while (v41);
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

        v1 = v33;
        v5 = v39;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_1D118164C()
{
  v1 = v0;
  sub_1D10A09BC();
  v2 = *v0;
  v3 = sub_1D139141C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v22 = 72 * v17;
        sub_1D1186B58(*(v2 + 56) + 72 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        *v24 = v29[0];
        v25 = v29[1];
        v26 = v29[2];
        v27 = v29[3];
        *(v24 + 64) = v30;
        *(v24 + 32) = v26;
        *(v24 + 48) = v27;
        *(v24 + 16) = v25;
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

        v1 = v28;
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

id sub_1D1181820(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  sub_1D1186ADC(0, a1, a2, a3, MEMORY[0x1E69E6EC8]);
  v5 = *v3;
  v6 = sub_1D139141C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 56) + 8 * v20);
        *(*(v7 + 48) + 8 * v20) = *(*(v5 + 48) + 8 * v20);
        *(*(v7 + 56) + 8 * v20) = v21;
        result = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

id sub_1D1181990()
{
  v1 = v0;
  sub_1D109F0B0();
  v2 = *v0;
  v3 = sub_1D139141C();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = (*(v4 + 48) + 32 * v17);
        v21 = v18[1];
        *v20 = *v18;
        v20[1] = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
        v22 = v21;
        v23 = *(&v21 + 1);

        result = v22;
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

id sub_1D1181B50(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  sub_1D109F4D8(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1D139141C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(*(v6 + 56) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        *(*(v8 + 56) + 8 * v21) = v23;
        v24 = v22;
        result = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_1D1181CB4()
{
  v1 = v0;
  v33 = sub_1D138D5EC();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D118642C(0, &qword_1EC609F88, MEMORY[0x1E69695A8], sub_1D109FF3C, sub_1D109F9A8);
  v3 = *v0;
  v4 = sub_1D139141C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v21 = v32;
        v22 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v18 *= 72;
        sub_1D11864BC(*(v3 + 56) + v18, v37, sub_1D109FF3C);
        v23 = v34;
        result = (*(v19 + 32))(*(v34 + 48) + v20, v21, v22);
        v24 = *(v23 + 56) + v18;
        v25 = v37[1];
        v26 = v37[2];
        v27 = v37[3];
        *(v24 + 64) = v38;
        *(v24 + 32) = v26;
        *(v24 + 48) = v27;
        *(v24 + 16) = v25;
        *v24 = v37[0];
        v13 = v36;
      }

      while (v36);
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

        v1 = v29;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_1D1181FA4()
{
  v1 = v0;
  sub_1D109FE84();
  v2 = *v0;
  v3 = sub_1D139141C();
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
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 24);
        v25 = *(v22 + 32);
        v26 = *(v22 + 40);
        v27 = *(v4 + 48) + v18;
        v28 = *(v22 + 8);
        *v27 = *v19;
        *(v27 + 16) = v20;
        *(v27 + 24) = v21;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v28;
        *(v29 + 24) = v24;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        result = v26;
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

id sub_1D1182140()
{
  v1 = v0;
  v32 = sub_1D138D5EC();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1185A78(0, &qword_1EC609F40, MEMORY[0x1E69695A8], sub_1D109F9A8);
  v3 = *v0;
  v4 = sub_1D139141C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v28, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    v15 = v32;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v39 = (v13 - 1) & v13;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v22 = v31;
        (*(v34 + 16))(v31, *(v3 + 48) + v21, v15);
        v19 *= 48;
        v23 = (*(v3 + 56) + v19);
        v38 = *v23;
        v37 = *(v23 + 8);
        v36 = *(v23 + 3);
        v35 = v23[32];
        v24 = *(v23 + 5);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v22, v15);
        v26 = *(v25 + 56) + v19;
        *v26 = v38;
        *(v26 + 8) = v37;
        *(v26 + 24) = v36;
        *(v26 + 32) = v35;
        *(v26 + 40) = v24;
        result = v24;
        v13 = v39;
      }

      while (v39);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v27;
        v5 = v33;
        goto LABEL_21;
      }

      v18 = *(v28 + v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_1D1182430()
{
  v1 = v0;
  sub_1D1186284(0, &qword_1EC60C2B0);
  v2 = *v0;
  v3 = sub_1D139141C();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
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

void *sub_1D11825B8()
{
  v1 = v0;
  sub_1D1186284(0, &qword_1EC609F28);
  v2 = *v0;
  v3 = sub_1D139141C();
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
        sub_1D109F94C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D109E39C(v25, (*(v4 + 56) + v22));
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

void *sub_1D118278C(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1D139141C();
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

void *sub_1D1182914()
{
  v1 = v0;
  sub_1D1185FAC(0, &qword_1EC60C3B8, type metadata accessor for MedicalRecordChartableSeriesCollector);
  v2 = *v0;
  v3 = sub_1D139141C();
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
        sub_1D1186A80(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_1D1182AE0(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1D139141C();
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
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
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

id sub_1D1182C60()
{
  v1 = v0;
  sub_1D1185A78(0, &qword_1EC609F50, type metadata accessor for Key, sub_1D106F8DC);
  v2 = *v0;
  v3 = sub_1D139141C();
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
        sub_1D109F94C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1D109E39C(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_1D1182E2C()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseCategory();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10A0578();
  v5 = *v0;
  v6 = sub_1D139141C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D11864BC(*(v5 + 48) + v21, v4, type metadata accessor for BrowseCategory);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1D10F36E4(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

void *sub_1D1183048()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseCategory();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1186840(0, &qword_1EE06B0B0, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1D139141C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D11864BC(*(v5 + 48) + v21, v4, type metadata accessor for BrowseCategory);
        v22 = *(*(v5 + 56) + 8 * v20);
        result = sub_1D10F36E4(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D118327C()
{
  v1 = v0;
  sub_1D109F1A0();
  v2 = *v0;
  v3 = sub_1D139141C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1D11833F8()
{
  v1 = v0;
  sub_1D1185FAC(0, &qword_1EE069510, sub_1D11866BC);
  v2 = *v0;
  v3 = sub_1D139141C();
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

void *sub_1D11835A4()
{
  v1 = v0;
  sub_1D11865E4();
  v2 = *v0;
  v3 = sub_1D139141C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_1D1183720(uint64_t (*a1)(void), void (*a2)(void, __n128))
{
  v4 = v2;
  v35 = a1(0);
  v37 = *(v35 - 8);
  v5 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - v6;
  a2(0, v5);
  v7 = *v2;
  v8 = sub_1D139141C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v4;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        result = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v4 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v9;
  }

  return result;
}

void *sub_1D1183994()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseCategory();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D118642C(0, &qword_1EC609F98, type metadata accessor for BrowseCategory, sub_1D10A01A4, sub_1D10A0298);
  v6 = *v0;
  v7 = sub_1D139141C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v27 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_1D11864BC(*(v6 + 48) + v22, v5, type metadata accessor for BrowseCategory);
        v21 *= 72;
        sub_1D11864BC(*(v6 + 56) + v21, v28, sub_1D10A01A4);
        result = sub_1D10F36E4(v5, *(v8 + 48) + v22);
        v23 = *(v8 + 56) + v21;
        v24 = v28[1];
        v25 = v28[2];
        v26 = v28[3];
        *(v23 + 64) = v29;
        *(v23 + 32) = v25;
        *(v23 + 48) = v26;
        *(v23 + 16) = v24;
        *v23 = v28[0];
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_1D1183C34()
{
  v1 = v0;
  sub_1D10A0088();
  v2 = *v0;
  v3 = sub_1D139141C();
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
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        v29 = *(v4 + 48) + v18;
        *v29 = *v19;
        *(v29 + 16) = v20;
        *(v29 + 24) = v21;
        v30 = (*(v4 + 56) + v17);
        *v30 = v23;
        v30[1] = v24;
        v30[2] = v25;
        v30[3] = v26;
        v30[4] = v27;
        v30[5] = v28;
        result = sub_1D10A00EC(v23, v24, v25, v26, v27, v28);
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

id sub_1D1183DDC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D1184E00(0, a1, a2, a3, sub_1D106F934);
  v5 = *v3;
  v6 = sub_1D139141C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = v23;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1D1183F78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D1184E00(0, a1, a2, a3, sub_1D1154880);
  v5 = *v3;
  v6 = sub_1D139141C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

id sub_1D1184120(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  sub_1D1184E6C(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1D139141C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(*(v6 + 56) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        *(*(v8 + 56) + 8 * v21) = v23;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_1D1184280()
{
  v1 = v0;
  sub_1D1186018(0, &qword_1EE06B6A8, type metadata accessor for CategoryCountProvider, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1D139141C();
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
        v18 = 8 * v17;
        v17 *= 72;
        v19 = (*(v2 + 48) + v17);
        v21 = v19[1];
        v20 = v19[2];
        v22 = v19[3];
        v26 = *(v19 + 8);
        v25[3] = v22;
        v25[0] = *v19;
        v25[1] = v21;
        v25[2] = v20;
        v23 = *(*(v2 + 56) + v18);
        memmove((*(v4 + 48) + v17), v19, 0x48uLL);
        *(*(v4 + 56) + v18) = v23;
        sub_1D1082914(v25, v24);
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

void *sub_1D1184458()
{
  v1 = v0;
  sub_1D109FB58();
  v2 = *v0;
  v3 = sub_1D139141C();
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
        v18 = 8 * v17;
        v17 *= 72;
        v19 = (*(v2 + 48) + v17);
        v21 = v19[1];
        v20 = v19[2];
        v22 = v19[3];
        v26 = *(v19 + 8);
        v25[3] = v22;
        v25[0] = *v19;
        v25[1] = v21;
        v25[2] = v20;
        v23 = *(*(v2 + 56) + v18);
        memmove((*(v4 + 48) + v17), v19, 0x48uLL);
        *(*(v4 + 56) + v18) = v23;
        result = sub_1D1082914(v25, v24);
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

void *sub_1D11845F8()
{
  sub_1D1186090();
  v28 = v0;
  v1 = *v0;
  v29 = sub_1D139141C();
  v30 = v1;
  if (*(v1 + 16))
  {
    result = (v29 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v29 + 32)) + 63) >> 6;
    if (v29 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v29 + 16) = *(v1 + 16);
    v7 = 1 << *(v1 + 32);
    v8 = *(v1 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = *(*(v30 + 48) + 8 * v15);
        v17 = *(v30 + 56) + 48 * v15;
        v18 = *v17;
        v19 = *(v17 + 8);
        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v17 + 40);
        *(*(v29 + 48) + 8 * v15) = v16;
        v24 = (*(v29 + 56) + 48 * v15);
        *v24 = v18;
        v24[1] = v19;
        v24[2] = v21;
        v24[3] = v20;
        v24[4] = v22;
        v24[5] = v23;
        v25 = v16;
        v26 = v18;

        v27 = v20;
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v28 = v29;
  }

  return result;
}

unint64_t sub_1D11847CC()
{
  result = qword_1EC60C2A8;
  if (!qword_1EC60C2A8)
  {
    sub_1D11868D4(255, &qword_1EE069680, sub_1D1178070, MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C2A8);
  }

  return result;
}

void sub_1D1184854()
{
  if (!qword_1EE06A228)
  {
    type metadata accessor for BrowseCategory();
    sub_1D11848F4(255, &qword_1EE0695D0, &qword_1EE06A630, 0x1E696C388, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06A228);
    }
  }
}

void sub_1D11848F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D118495C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = *(a1 + 16);
  v34 = a2;
  if (!v33)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = 0;
  v6 = *(type metadata accessor for BrowseCategory() - 8);
  v32 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v31 = *(v6 + 72);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v32 + v31 * v5;
    v10 = BrowseCategory.queryDescriptors.getter();
    MEMORY[0x1EEE9AC00](v10);
    v30[2] = v9;
    v30[3] = v34;
    v11 = sub_1D10F3748(sub_1D11868B4, v30, v10);

    v12 = v11 >> 62;
    if (v11 >> 62)
    {
      v13 = sub_1D13910DC();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v7 >> 62;
    if (v7 >> 62)
    {
      v29 = sub_1D13910DC();
      v16 = v29 + v13;
      if (__OFADD__(v29, v13))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v39 = v13;
    if (result)
    {
      if (!v14)
      {
        v17 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D13910DC();
      goto LABEL_15;
    }

    if (v14)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D139122C();
    v7 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v19 >> 1) - v18) < v39)
    {
      goto LABEL_36;
    }

    v35 = v5;
    v36 = v7;
    v37 = v3;
    v21 = v17 + 8 * v18 + 32;
    if (v12)
    {
      if (v20 < 1)
      {
        goto LABEL_38;
      }

      sub_1D11868D4(0, &qword_1EC60C3A8, type metadata accessor for CategoryRecordQueryDescription, MEMORY[0x1E69E62F8]);
      sub_1D1186938();
      for (i = 0; i != v20; ++i)
      {
        v23 = sub_1D1113038(v38, i, v11);
        v25 = *v24;

        (v23)(v38, 0);
        *(v21 + 8 * i) = v25;
      }
    }

    else
    {
      type metadata accessor for CategoryRecordQueryDescription();
      swift_arrayInitWithCopy();
    }

    v7 = v36;
    v3 = v37;
    v5 = v35;
    if (v39 >= 1)
    {
      v26 = *(v17 + 16);
      v27 = __OFADD__(v26, v39);
      v28 = v26 + v39;
      if (v27)
      {
        goto LABEL_37;
      }

      *(v17 + 16) = v28;
    }

LABEL_4:
    if (++v5 == v33)
    {
      return v7;
    }
  }

  result = sub_1D13910DC();
  v20 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v39 <= 0)
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

uint64_t sub_1D1184CE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D1184E00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D139145C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D1184E6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D106F934(255, a3);
    sub_1D109D274(a5, a3);
    v8 = sub_1D139145C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D1184F00(uint64_t a1, void *a2, uint64_t a3, void (*a4)(unint64_t, void), uint64_t a5)
{
  sub_1D1184854();
  v101 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v100 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v93 - v13;
  v94 = type metadata accessor for BrowseCategory();
  v14 = *(v94 - 8);
  v15 = MEMORY[0x1EEE9AC00](v94);
  v104 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v93 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v23 = *(a1 + 16);
  if (!v23)
  {

    v40 = sub_1D109E3AC(MEMORY[0x1E69E7CC0]);
    a4(v40, 0);

    return;
  }

  v95 = v22;
  v96 = a3;
  v24 = a5;
  v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v26 = a1 + v25;
  v27 = *(v14 + 72);
  v93 = v24;

  v28 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D11864BC(v26, v21, type metadata accessor for BrowseCategory);
    sub_1D10F36E4(v21, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D10FDF04(0, *(v28 + 16) + 1, 1);
      v28 = aBlock[0];
    }

    v31 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1D10FDF04(v30 > 1, v31 + 1, 1);
      v28 = aBlock[0];
    }

    *(v28 + 16) = v31 + 1;
    sub_1D10F36E4(v19, v28 + v25 + v31 * v27);
    v26 += v27;
    --v23;
  }

  while (v23);
  v32 = a2;
  v33 = sub_1D118495C(v28, a2);

  v34 = sub_1D12DF048(v33);

  v35 = sub_1D109E5FC(MEMORY[0x1E69E7CC0]);
  v98 = v34;
  if ((v34 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D139108C();
    type metadata accessor for CategoryRecordQueryDescription();
    sub_1D11780F8(qword_1EE06B1E8, type metadata accessor for CategoryRecordQueryDescription);
    sub_1D139070C();
    v34 = aBlock[7];
    v36 = aBlock[8];
    v37 = aBlock[9];
    v38 = aBlock[10];
    v39 = aBlock[11];
  }

  else
  {
    v41 = -1 << *(v34 + 32);
    v36 = v34 + 56;
    v37 = ~v41;
    v42 = -v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v39 = v43 & *(v34 + 56);

    v38 = 0;
  }

  v97 = v37;
  v44 = (v37 + 64) >> 6;
  v102 = v34;
  while (v34 < 0)
  {
    v50 = sub_1D139110C();
    if (!v50 || (v105 = v50, type metadata accessor for CategoryRecordQueryDescription(), swift_dynamicCast(), v49 = aBlock[0], v47 = v38, v48 = v39, !aBlock[0]))
    {
LABEL_45:
      sub_1D102CC30();

      aBlock[0] = MEMORY[0x1E69E7CD0];
      v71 = 1 << *(v35 + 32);
      v72 = -1;
      if (v71 < 64)
      {
        v72 = ~(-1 << v71);
      }

      v73 = v72 & *(v35 + 64);
      v74 = (v71 + 63) >> 6;

      v75 = 0;
      v76 = v99;
      v77 = v100;
      while (v73)
      {
        v78 = v75;
LABEL_53:
        v79 = __clz(__rbit64(v73));
        v73 &= v73 - 1;
        v80 = v79 | (v78 << 6);
        sub_1D11864BC(*(v35 + 48) + v27 * v80, v76, type metadata accessor for BrowseCategory);
        v81 = v101;
        *(v76 + *(v101 + 48)) = *(*(v35 + 56) + 8 * v80);
        sub_1D11864BC(v76, v77, sub_1D1184854);
        v82 = *(v77 + *(v81 + 48));

        v83 = sub_1D12DF1B4(v82);

        sub_1D1184CE4(v77, type metadata accessor for BrowseCategory);
        sub_1D1178DEC(v83);
        sub_1D1184CE4(v76, sub_1D1184854);
      }

      while (1)
      {
        v78 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        if (v78 >= v74)
        {

          v84 = swift_allocObject();
          v85 = v95;
          v84[2] = sub_1D1186A14;
          v84[3] = v85;
          v84[4] = v35;
          v86 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
          sub_1D106F934(0, &qword_1EE06A630);
          sub_1D109D274(&qword_1EE06A628, &qword_1EE06A630);

          v87 = sub_1D13906AC();

          aBlock[4] = sub_1D1186BEC;
          aBlock[5] = v84;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D1179344;
          aBlock[3] = &block_descriptor_21_1;
          v88 = _Block_copy(aBlock);
          v89 = [v86 initWithQueryDescriptors:v87 resultsHandler:v88];

          _Block_release(v88);

          v90 = v96;
          aBlock[0] = v96;
          type metadata accessor for CategoryCountDataProvider();
          v91 = v89;

          sub_1D13901EC();
          v92 = sub_1D139012C();

          [v91 setDebugIdentifier_];

          [*(v90 + 16) executeQuery_];

          return;
        }

        v73 = *(v35 + 64 + 8 * v78);
        ++v75;
        if (v73)
        {
          v75 = v78;
          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_57;
    }

LABEL_29:
    v103 = v48;
    v51 = OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_category;
    if (*(v35 + 16) && (v52 = sub_1D129E5D8(v49 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_category), (v53 & 1) != 0))
    {
      aBlock[0] = *(*(v35 + 56) + 8 * v52);
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
    }

    v54 = *(v49 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_queryDescriptor);
    MEMORY[0x1D3885D90]();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
    v55 = aBlock[0];
    v56 = v104;
    sub_1D11864BC(v49 + v51, v104, type metadata accessor for BrowseCategory);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v35;
    v58 = sub_1D129E5D8(v56);
    v60 = *(v35 + 16);
    v61 = (v59 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
      goto LABEL_58;
    }

    v64 = v59;
    if (*(v35 + 24) < v63)
    {
      sub_1D117D838(v63, v57);
      v58 = sub_1D129E5D8(v104);
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_60;
      }

LABEL_40:
      v35 = v105;
      if (v64)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

    if (v57)
    {
      goto LABEL_40;
    }

    v70 = v58;
    sub_1D1182E2C();
    v58 = v70;
    v35 = v105;
    if (v64)
    {
LABEL_18:
      *(*(v35 + 56) + 8 * v58) = v55;

      sub_1D1184CE4(v104, type metadata accessor for BrowseCategory);
      goto LABEL_19;
    }

LABEL_41:
    *(v35 + 8 * (v58 >> 6) + 64) |= 1 << v58;
    v66 = v58;
    v67 = v104;
    sub_1D11864BC(v104, *(v35 + 48) + v27 * v58, type metadata accessor for BrowseCategory);
    *(*(v35 + 56) + 8 * v66) = v55;

    sub_1D1184CE4(v67, type metadata accessor for BrowseCategory);
    v68 = *(v35 + 16);
    v62 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (v62)
    {
      goto LABEL_59;
    }

    *(v35 + 16) = v69;
LABEL_19:
    v38 = v47;
    v34 = v102;
    v39 = v103;
  }

  v45 = v38;
  v46 = v39;
  v47 = v38;
  if (v39)
  {
LABEL_25:
    v48 = (v46 - 1) & v46;
    v49 = *(*(v34 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v46)))));

    if (!v49)
    {
      goto LABEL_45;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v47 >= v44)
    {
      goto LABEL_45;
    }

    v46 = *(v36 + 8 * v47);
    ++v45;
    if (v46)
    {
      goto LABEL_25;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:

  sub_1D13916CC();
  __break(1u);
}

void sub_1D1185998(unint64_t a1, void (*a2)(id *, id))
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3886B70](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a2(&v8, v6);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1D1185A78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1D139145C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D1185AF8()
{
  if (!qword_1EC60C2B8)
  {
    sub_1D1185B7C(255, &qword_1EC60C2C0, &qword_1EC609CA0);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C2B8);
    }
  }
}

void sub_1D1185B7C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D10951AC(255, a3);
    v4 = sub_1D139052C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1185BD8()
{
  if (!qword_1EC60C2C8)
  {
    sub_1D1185B7C(255, &qword_1EC60C2D0, &qword_1EC609CC0);
    sub_1D1094000();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C2C8);
    }
  }
}

void sub_1D1185C6C()
{
  if (!qword_1EC60C2D8)
  {
    sub_1D1185B7C(255, &qword_1EC60C2E0, &qword_1EC609CE0);
    sub_1D1094000();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C2D8);
    }
  }
}

void sub_1D1185D00()
{
  if (!qword_1EC60C2E8)
  {
    sub_1D1185B7C(255, &qword_1EC60C2F0, &qword_1EC609D00);
    sub_1D1094000();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C2E8);
    }
  }
}

void sub_1D1185D94()
{
  if (!qword_1EC60C2F8)
  {
    sub_1D1185B7C(255, &qword_1EC60C300, &qword_1EC609D28);
    sub_1D1094000();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C2F8);
    }
  }
}

void sub_1D1185E28()
{
  if (!qword_1EC60C308)
  {
    sub_1D1185B7C(255, &qword_1EC60C310, &qword_1EC609D58);
    sub_1D1094000();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C308);
    }
  }
}

void sub_1D1185EBC()
{
  if (!qword_1EC60C318)
  {
    sub_1D11868D4(255, &qword_1EC60A7C8, type metadata accessor for UDCRecentItem, MEMORY[0x1E69E62F8]);
    sub_1D1185F58();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C318);
    }
  }
}

unint64_t sub_1D1185F58()
{
  result = qword_1EC60C320;
  if (!qword_1EC60C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C320);
  }

  return result;
}

void sub_1D1185FAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D139145C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1186018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1D109D220();
    v9 = a4(a1, &type metadata for DisplayCategory, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1186090()
{
  if (!qword_1EE06A4E8)
  {
    sub_1D106F934(255, &unk_1EE06B748);
    sub_1D109D274(&qword_1EE06B740, &unk_1EE06B748);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A4E8);
    }
  }
}

void sub_1D118612C()
{
  if (!qword_1EE06B6A0)
  {
    sub_1D106F934(255, &unk_1EE06B748);
    sub_1D106F934(255, &qword_1EE06B6B0);
    sub_1D109D274(&qword_1EE06B740, &unk_1EE06B748);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B6A0);
    }
  }
}

void sub_1D11861E8()
{
  if (!qword_1EC60C328)
  {
    sub_1D11868D4(255, &qword_1EE06B0F8, type metadata accessor for CategoryRecordKind, MEMORY[0x1E69E62F8]);
    sub_1D109F238();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C328);
    }
  }
}

void sub_1D1186284(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D139145C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D1186308()
{
  if (!qword_1EC60C348)
  {
    sub_1D1080EA4(255, &qword_1EC60ACE8);
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C348);
    }
  }
}

void sub_1D1186370()
{
  if (!qword_1EC60C360)
  {
    sub_1D106F934(255, &unk_1EC6096D0);
    sub_1D106F934(255, &qword_1EC60C368);
    sub_1D109D274(&qword_1EC60C358, &unk_1EC6096D0);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C360);
    }
  }
}

void sub_1D118642C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    v8 = sub_1D139145C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D11864BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D1186524()
{
  if (!qword_1EC60C380)
  {
    sub_1D138D57C();
    sub_1D106F934(255, &qword_1EC60D440);
    sub_1D11865B0();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C380);
    }
  }
}

void sub_1D11865E4()
{
  if (!qword_1EC60C388)
  {
    type metadata accessor for HKTimeScope(255);
    sub_1D11848F4(255, &qword_1EC60B138, &qword_1EC60D440, 0x1E696BFB0, MEMORY[0x1E69E62F8]);
    sub_1D11780F8(&qword_1EC60C390, type metadata accessor for HKTimeScope);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C388);
    }
  }
}

void sub_1D11866BC()
{
  if (!qword_1EE069698)
  {
    sub_1D11848F4(255, &qword_1EE0695A0, &qword_1EE0695A8, 0x1E696C380, MEMORY[0x1E69E6720]);
    v0 = sub_1D138F62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE069698);
    }
  }
}

void sub_1D1186750()
{
  if (!qword_1EC60C398)
  {
    sub_1D11868D4(255, &qword_1EC60B3B0, type metadata accessor for UserDomainConceptViewData, MEMORY[0x1E69E62F8]);
    sub_1D11867EC();
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C398);
    }
  }
}

unint64_t sub_1D11867EC()
{
  result = qword_1EC60C3A0;
  if (!qword_1EC60C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C3A0);
  }

  return result;
}

void sub_1D1186840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for BrowseCategory();
    v7 = sub_1D10A0298();
    v8 = a3(a1, v6, MEMORY[0x1E69E6530], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D11868D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D1186938()
{
  result = qword_1EC60C3B0;
  if (!qword_1EC60C3B0)
  {
    sub_1D11868D4(255, &qword_1EC60C3A8, type metadata accessor for CategoryRecordQueryDescription, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C3B0);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D1186ADC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = sub_1D10A0968();
    v10 = a5(a1, MEMORY[0x1E69E7DE0], v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D1186B58(uint64_t a1, uint64_t a2)
{
  sub_1D1186ADC(0, qword_1EE06AEE8, &qword_1EE06A540, 0x1E69DCAB8, type metadata accessor for UnboundedCache);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D1186BF4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() _preferredFontForTextStyle_variant_];
    [v4 setFont_];

    v6 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D1186D04(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_titleView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemTitleView()) initWithFrame_];
  v10 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for ExpandedRangeValueView()) initWithFrame_];
  v11 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for MultiValueView()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewConstraints] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewConstraints] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_subtitleToBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewToBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewToBottomConstraint] = 0;
  v12 = &v4[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_item];
  v13 = type metadata accessor for RecordCell();
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v16.receiver = v4;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D1187080();

  return v14;
}

id sub_1D1186EA4(void *a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_titleView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemTitleView()) initWithFrame_];
  v4 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for ExpandedRangeValueView()) initWithFrame_];
  v5 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for MultiValueView()) initWithFrame_];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_subtitleToBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewToBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewToBottomConstraint] = 0;
  v6 = &v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_item];
  v7 = type metadata accessor for RecordCell();
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = v1;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

void sub_1D1187080()
{
  v1 = v0;
  v2 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setBackgroundView_];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setSelectedBackgroundView_];

  v5 = [v1 selectedBackgroundView];
  if (v5)
  {
    v6 = v5;
    sub_1D106F934(0, &qword_1EE06B6E0);
    v7 = sub_1D1390CEC();
    [v6 setBackgroundColor_];
  }

  v8 = [v1 contentView];
  v9 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_titleView];
  [v8 addSubview_];

  v10 = [v1 &selRef_batches];
  v88 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueView];
  [v10 addSubview_];

  v11 = [v1 &selRef_batches];
  v87 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueView];
  [v11 addSubview_];

  v12 = [v1 &selRef_batches];
  v13 = sub_1D1186BF4();
  [v12 addSubview_];

  v14 = objc_opt_self();
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D139F5A0;
  v16 = v9;
  v17 = [v9 leadingAnchor];
  v18 = [v1 &selRef_batches];
  v19 = [v18 &selRef_hrui_insurance + 1];

  v20 = [v17 constraintEqualToAnchor_];
  *(v15 + 32) = v20;
  v21 = [v16 trailingAnchor];
  v22 = [v1 &selRef_batches];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v15 + 40) = v24;
  v25 = [v16 topAnchor];
  v26 = [v1 &selRef_batches];
  v27 = [v26 &selRef_setTitle_forState_];

  v28 = [v25 constraintEqualToAnchor_];
  *(v15 + 48) = v28;
  v29 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell____lazy_storage___subtitleLabel;
  v86 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell____lazy_storage___subtitleLabel;
  v30 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell____lazy_storage___subtitleLabel] &selRef_hrui_insurance + 1];
  v31 = [v1 &selRef_batches];
  v32 = [v31 &selRef_hrui_insurance + 1];

  v33 = [v30 constraintEqualToAnchor:v32 constant:14.0];
  *(v15 + 56) = v33;
  v34 = [*&v1[v29] trailingAnchor];
  v35 = [v1 &selRef_batches];
  v36 = [v35 trailingAnchor];

  v37 = [v34 &selRef:v36 deactivateConstraints:-16.0 + 6];
  *(v15 + 64) = v37;
  sub_1D106F934(0, &qword_1EC609690);
  v38 = sub_1D139044C();

  [v14 activateConstraints_];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D139F5B0;
  v40 = [v88 &selRef_hrui_insurance + 1];
  v41 = [v1 &selRef_batches];
  v42 = [v41 &selRef_hrui_insurance + 1];

  v43 = [v40 &selRef:v42 deactivateConstraints:14.0 + 6];
  *(v39 + 32) = v43;
  v44 = [v88 trailingAnchor];
  v45 = [v1 &selRef_batches];
  v46 = [v45 trailingAnchor];

  v47 = [v44 &selRef:v46 deactivateConstraints:-16.0 + 6];
  *(v39 + 40) = v47;
  v48 = [v88 topAnchor];
  v49 = [v16 bottomAnchor];
  v50 = [v48 &selRef:v49 deactivateConstraints:15.0 + 6];

  *(v39 + 48) = v50;
  v51 = [v88 bottomAnchor];
  v52 = [*&v1[v86] topAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v39 + 56) = v53;
  v85 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewConstraints;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewConstraints] = v39;

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1D139F5B0;
  v55 = [v87 leadingAnchor];
  v56 = [v1 contentView];
  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57 constant:14.0];
  *(v54 + 32) = v58;
  v59 = [v87 trailingAnchor];
  v60 = [v1 contentView];
  v61 = [v60 trailingAnchor];

  v62 = [v59 constraintEqualToAnchor:v61 constant:-16.0];
  *(v54 + 40) = v62;
  v63 = [v87 topAnchor];
  v64 = [v16 bottomAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v54 + 48) = v65;
  v66 = [v87 bottomAnchor];
  v67 = [*&v1[v86] topAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v54 + 56) = v68;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewConstraints] = v54;

  if (*&v1[v85])
  {

    v69 = sub_1D139044C();

    [v14 activateConstraints_];

    v70 = [*&v1[v86] bottomAnchor];
    v71 = [v1 contentView];
    v72 = [v71 bottomAnchor];

    v73 = [v70 constraintEqualToAnchor:v72 constant:-8.0];
    v74 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_subtitleToBottomConstraint];
    *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_subtitleToBottomConstraint] = v73;

    v75 = [v88 bottomAnchor];
    v76 = [v1 contentView];
    v77 = [v76 bottomAnchor];

    v78 = [v75 constraintEqualToAnchor:v77 constant:-8.0];
    v79 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewToBottomConstraint];
    *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewToBottomConstraint] = v78;

    v80 = [v87 bottomAnchor];
    v81 = [v1 contentView];
    v82 = [v81 bottomAnchor];

    v83 = [v80 constraintEqualToAnchor:v82 constant:-8.0];
    v84 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewToBottomConstraint];
    *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewToBottomConstraint] = v83;

    sub_1D1189B58();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D1187BA4()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v17);
  if (v18)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    type metadata accessor for RecordItem();
    if (swift_dynamicCast())
    {

      sub_1D11880CC();
      return;
    }
  }

  else
  {
    sub_1D118A1B0(v17, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  }

  sub_1D138F06C();
  v7 = v1;
  v8 = sub_1D138F0AC();
  v9 = sub_1D13907FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    sub_1D10A71C0(v1 + v6, v17);
    sub_1D10DC698(0, &qword_1EC60B620, &qword_1EC60A3D0);
    v12 = sub_1D139020C();
    v14 = sub_1D11DF718(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1D101F000, v8, v9, "Incorrect view model for RecordItem: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D1187E3C()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v18);
  if (v19)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    type metadata accessor for RecordItem();
    if (swift_dynamicCast())
    {
      return v17;
    }
  }

  else
  {
    sub_1D118A1B0(v18, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  }

  sub_1D138F06C();
  v8 = v1;
  v9 = sub_1D138F0AC();
  v10 = sub_1D13907FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    sub_1D10A71C0(v1 + v6, v18);
    sub_1D10DC698(0, &qword_1EC60B620, &qword_1EC60A3D0);
    v13 = sub_1D139020C();
    v15 = sub_1D11DF718(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D101F000, v9, v10, "Incorrect view model for RecordItem: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1D38882F0](v12, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_1D11880CC()
{
  v1 = v0;
  sub_1D1188E8C(&v117);
  v123[4] = v121;
  v124[0] = *v122;
  v123[0] = v117;
  v123[1] = v118;
  *(v124 + 13) = *&v122[13];
  v123[2] = v119;
  v123[3] = v120;
  if (*(&v117 + 1))
  {
    v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_titleView];
    *(&v100 + 1) = &type metadata for UserDomainConceptFeedItemViewData;
    *&v101 = &protocol witness table for UserDomainConceptFeedItemViewData;
    v3 = swift_allocObject();
    *&v99 = v3;
    v4 = *v122;
    *(v3 + 80) = v121;
    *(v3 + 96) = v4;
    *(v3 + 109) = *&v122[13];
    v5 = v118;
    *(v3 + 16) = v117;
    *(v3 + 32) = v5;
    v6 = v120;
    *(v3 + 48) = v119;
    *(v3 + 64) = v6;
    v7 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData;
    swift_beginAccess();
    sub_1D1128A74(v123, &v109);
    sub_1D10DC970(&v99, v2 + v7, &qword_1EC60A4D0, &qword_1EC60A4D8);
    swift_endAccess();
    sub_1D10B9714();
    sub_1D118A1B0(&v99, &qword_1EC60A4D0, &qword_1EC60A4D8, &protocol descriptor for ConceptTitleViewContentProviding, sub_1D10DC698);
    v8 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueView];
    v9 = &v8[OBJC_IVAR___HRExpandedRangeValueView_viewData];
    swift_beginAccess();
    v10 = *v9;
    v11 = *(v9 + 2);
    v115[1] = *(v9 + 1);
    v115[2] = v11;
    v115[0] = v10;
    v12 = *(v9 + 3);
    v13 = *(v9 + 4);
    v14 = *(v9 + 5);
    *&v116[13] = *(v9 + 93);
    v115[4] = v13;
    *v116 = v14;
    v115[3] = v12;
    v16 = v121;
    v15 = *v122;
    v17 = v120;
    *(v9 + 93) = *&v122[13];
    *(v9 + 4) = v16;
    *(v9 + 5) = v15;
    *(v9 + 3) = v17;
    v18 = v117;
    v19 = v119;
    *(v9 + 1) = v118;
    *(v9 + 2) = v19;
    *v9 = v18;
    sub_1D1128A74(v123, &v109);
    sub_1D118A1B0(v115, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData, MEMORY[0x1E69E6720], sub_1D1082CC4);
    sub_1D113B838();
    v20 = &selRef_removeObserver_name_object_;
    [v8 setHidden_];
    v21 = sub_1D1187E3C();
    if (!v21)
    {
      v35 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesChevron;
      swift_beginAccess();
      *(v2 + v35) = 1;
      sub_1D10B8C14();
      [v1 setUserInteractionEnabled_];
      sub_1D118A1B0(&v117, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData, MEMORY[0x1E69E6720], sub_1D1082CC4);
LABEL_47:
      sub_1D1189B58();
      return;
    }

    sub_1D1072E70(v21 + 16, &v109);

    sub_1D102CC18(&v109, v106);
    v22 = v107;
    v23 = v108;
    __swift_project_boxed_opaque_existential_1Tm(v106, v107);
    if ((*(v23 + 96))(v22, v23))
    {
      v24 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueView];
      v25 = v107;
      v26 = v108;
      __swift_project_boxed_opaque_existential_1Tm(v106, v107);
      v27 = (*(v26 + 80))(v25, v26);
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = MEMORY[0x1E69E7CC0];
        v30 = v27 + 32;
        do
        {
          sub_1D1072E70(v30, v105);
          sub_1D1189468(v105, &v109);
          __swift_destroy_boxed_opaque_existential_1Tm(v105);
          if (*(&v109 + 1))
          {
            v103 = v113;
            v104[0] = *v114;
            *(v104 + 13) = *&v114[13];
            v99 = v109;
            v100 = v110;
            v101 = v111;
            v102 = v112;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_1D10F8BA0(0, *(v29 + 2) + 1, 1, v29);
            }

            v32 = *(v29 + 2);
            v31 = *(v29 + 3);
            if (v32 >= v31 >> 1)
            {
              v29 = sub_1D10F8BA0((v31 > 1), v32 + 1, 1, v29);
            }

            v97 = v103;
            *v98 = v104[0];
            *&v98[13] = *(v104 + 13);
            v95 = v101;
            v96 = v102;
            v33 = v99;
            v94 = v100;
            *(v29 + 2) = v32 + 1;
            v34 = &v29[104 * v32];
            *(v34 + 3) = v94;
            *(v34 + 4) = v95;
            *(v34 + 125) = *&v98[13];
            *(v34 + 6) = v97;
            *(v34 + 7) = *v98;
            *(v34 + 5) = v96;
            *(v34 + 2) = v33;
          }

          else
          {
            v103 = v113;
            v104[0] = *v114;
            *(v104 + 13) = *&v114[13];
            v99 = v109;
            v100 = v110;
            v101 = v111;
            v102 = v112;
            sub_1D118A1B0(&v99, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData, MEMORY[0x1E69E6720], sub_1D1082CC4);
          }

          v30 += 40;
          --v28;
        }

        while (v28);

        v20 = &selRef_removeObserver_name_object_;
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
      }

      v36 = *(v24 + OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView_viewData);
      *(v24 + OBJC_IVAR____TtC15HealthRecordsUI14MultiValueView_viewData) = v29;
      if (!v36 || (, v37 = sub_1D13355D4(v36, v29), , (v37 & 1) == 0))
      {
        sub_1D1128614();
      }

      [v8 v20[165]];
      if (*&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewConstraints])
      {
        v38 = objc_opt_self();
        sub_1D106F934(0, &qword_1EC609690);

        v39 = sub_1D139044C();

        [v38 deactivateConstraints_];

        if (*&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewConstraints])
        {

          v40 = sub_1D139044C();

          [v38 activateConstraints_];

          goto LABEL_26;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

LABEL_26:
    v41 = v107;
    v42 = v108;
    __swift_project_boxed_opaque_existential_1Tm(v106, v107);
    v43 = (*(v42 + 64))(v41, v42);
    v44 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesChevron;
    if (v43)
    {
      swift_beginAccess();
      *(v2 + v44) = 0;
      sub_1D10B8C14();
      [v1 setUserInteractionEnabled_];
      v45 = sub_1D1186BF4();
      v46 = v107;
      v47 = v108;
      __swift_project_boxed_opaque_existential_1Tm(v106, v107);
      (*(v47 + 40))(v46, v47);
      if (v48)
      {
        v49 = sub_1D139012C();
      }

      else
      {
        v49 = 0;
      }

      [v45 setText_];

      v50 = v107;
      v51 = v108;
      __swift_project_boxed_opaque_existential_1Tm(v106, v107);
      if ((*(v51 + 72))(v50, v51))
      {
        v52 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI10RecordCell____lazy_storage___subtitleLabel];
        v53 = v107;
        v54 = v108;
        __swift_project_boxed_opaque_existential_1Tm(v106, v107);
        v55 = *(v54 + 40);
        v56 = v52;
        v57 = v55(v53, v54);
        if (v58)
        {
          v59 = v57;
        }

        else
        {
          v59 = 0;
        }

        v93 = v59;
        if (v58)
        {
          v60 = v58;
        }

        else
        {
          v60 = 0xE000000000000000;
        }

        v61 = objc_opt_self();
        v62 = [v61 secondaryLabelColor];
        v63 = [objc_opt_self() configurationWithScale_];
        v64 = sub_1D139012C();
        v65 = [objc_opt_self() systemImageNamed:v64 withConfiguration:v63];

        if (v65)
        {
          v66 = [v61 secondaryLabelColor];
          v91 = v65;
          v67 = [v91 imageWithRenderingMode_];
          v68 = [objc_opt_self() textAttachmentWithImage_];

          sub_1D106F934(0, &qword_1EC60C410);
          v90 = v68;
          v69 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
          v70 = MEMORY[0x1E69DB650];
          v92 = v62;
          if (v62)
          {
            v71 = v62;
            sub_1D118A14C(0, &qword_1EC60C418, sub_1D118A210, MEMORY[0x1E69E6F90]);
            v72 = swift_allocObject();
            *(v72 + 16) = xmmword_1D139E700;
            v73 = *v70;
            *(v72 + 32) = *v70;
            *(v72 + 40) = v71;
            v74 = v71;
            v75 = v73;
            v76 = sub_1D109D974(v72);
            swift_setDeallocating();
            sub_1D118A290(v72 + 32, sub_1D118A210);
            swift_deallocClassInstance();
            *&v99 = 9011426;
            *(&v99 + 1) = 0xA300000000000000;
            MEMORY[0x1D3885C10](v93, v60);

            sub_1D10988B8(v76);

            v77 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v78 = sub_1D139012C();

            type metadata accessor for Key(0);
            sub_1D106F8DC();
            v79 = sub_1D138FFEC();

            v80 = [v77 initWithString:v78 attributes:v79];

            if (v66)
            {
LABEL_41:
              sub_1D118A14C(0, &qword_1EC60F520, sub_1D106F814, MEMORY[0x1E69E6F90]);
              v81 = swift_allocObject();
              *(v81 + 16) = xmmword_1D139E700;
              v82 = *MEMORY[0x1E69DB650];
              *(v81 + 32) = *MEMORY[0x1E69DB650];
              *(v81 + 64) = sub_1D106F934(0, &qword_1EE06B6E0);
              *(v81 + 40) = v66;
              v83 = v66;
              v84 = v80;
              v85 = v82;
              sub_1D109B2B4(v81);
              swift_setDeallocating();
              sub_1D118A290(v81 + 32, sub_1D106F814);
              swift_deallocClassInstance();
              type metadata accessor for Key(0);
              sub_1D106F8DC();
              v86 = sub_1D138FFEC();

              [v69 addAttributes:v86 range:{0, objc_msgSend(v69, sel_length)}];

LABEL_45:
              [v69 appendAttributedString_];

              [v56 setAttributedText_];
              sub_1D118A1B0(&v117, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData, MEMORY[0x1E69E6720], sub_1D1082CC4);

              goto LABEL_46;
            }
          }

          else
          {
            *&v99 = 9011426;
            *(&v99 + 1) = 0xA300000000000000;
            MEMORY[0x1D3885C10](v93, v60);

            v87 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v88 = sub_1D139012C();

            v80 = [v87 initWithString_];

            if (v66)
            {
              goto LABEL_41;
            }
          }

          v89 = v80;
          goto LABEL_45;
        }

        goto LABEL_50;
      }
    }

    else
    {
      swift_beginAccess();
      *(v2 + v44) = 1;
      sub_1D10B8C14();
      [v1 setUserInteractionEnabled_];
    }

    sub_1D118A1B0(&v117, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData, MEMORY[0x1E69E6720], sub_1D1082CC4);
LABEL_46:
    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    goto LABEL_47;
  }

  sub_1D1189B58();
}

uint64_t sub_1D1188E8C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D118A14C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - v5;
  v7 = sub_1D138D57C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D1187E3C();
  if (!result)
  {
    *(a1 + 93) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v12 = result;
  v54 = v2;
  sub_1D1072E70(result + 16, v59);
  if (qword_1EE06AD08 != -1)
  {
    swift_once();
  }

  v56 = sub_1D138D1CC();
  v14 = v13;
  v15 = v60;
  v16 = v61;
  __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  (*(v16 + 32))(v15, v16);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v55 = v14;
    sub_1D118A1B0(v6, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D118A14C);
  }

  else
  {

    (*(v8 + 32))(v10, v6, v7);
    v17 = [*(v12 + 56) utcDateFormatter];
    v18 = sub_1D138D4EC();
    v19 = [v17 relativeStringFromDate_];

    v20 = sub_1D139016C();
    v55 = v21;
    v56 = v20;

    (*(v8 + 8))(v10, v7);
  }

  v22 = *(v12 + 40);
  v23 = *(v12 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v12 + 16), v22);
  (*(v23 + 16))(&v58, v22, v23);
  *v57 = v58;
  swift_storeEnumTagMultiPayload();
  v24 = v60;
  v25 = v61;
  __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  v26 = (*(v25 + 24))(v24, v25);
  v53 = v27;
  v54 = v26;
  v52 = BrowseCategory.systemImage.getter();
  v51 = BrowseCategory.tintColorForTemplateImage.getter();
  v29 = v60;
  v28 = v61;
  __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  v30 = (*(*(v28 + 8) + 16))(v29);
  if (!v30)
  {
    goto LABEL_12;
  }

  v31 = v30;
  if (![v30 hasRenderableContent])
  {

LABEL_12:
    v50 = 0;
    goto LABEL_13;
  }

  v50 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_];

LABEL_13:
  v33 = v60;
  v32 = v61;
  __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  v34 = (*(*(v32 + 8) + 24))(v33);
  v36 = v35;
  v38 = v60;
  v37 = v61;
  __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  v39 = (*(*(v37 + 8) + 32))(v38);
  v41 = v40;
  v43 = v60;
  v42 = v61;
  __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  v44 = (*(v42 + 88))(v43, v42);
  if (v41)
  {
    v39 = sub_1D139023C();
    v46 = v45;
  }

  else
  {

    v46 = 0;
  }

  v47 = v55;
  sub_1D118A290(v57, type metadata accessor for BrowseCategory);
  LOBYTE(v58) = 1;
  v48 = v53;
  *a1 = v54;
  *(a1 + 8) = v48;
  *(a1 + 16) = v56;
  *(a1 + 24) = v47;
  v49 = v51;
  *(a1 + 32) = v52;
  *(a1 + 40) = v49;
  *(a1 + 48) = v50;
  *(a1 + 56) = v34;
  *(a1 + 64) = v36;
  *(a1 + 72) = v39;
  *(a1 + 80) = v46;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 97) = 0;
  *(a1 + 99) = v44 & 1;
  *(a1 + 100) = 1;
  return __swift_destroy_boxed_opaque_existential_1Tm(v59);
}

uint64_t sub_1D1189468@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D118A14C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v63 - v8;
  v10 = sub_1D138D57C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D1187E3C();
  if (!result)
  {
    *(a2 + 93) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v66 = v4;
  v69 = result;
  v70 = v6;
  sub_1D1072E70(result + 16, v72);
  if (qword_1EE06AD08 != -1)
  {
    swift_once();
  }

  v63 = qword_1EE06BB38;
  v64 = unk_1EE06BB30;
  v65 = qword_1EE06BB28;
  v68 = sub_1D138D1CC();
  v16 = v15;
  v17 = v73;
  v18 = v74;
  __swift_project_boxed_opaque_existential_1Tm(v72, v73);
  (*(v18 + 32))(v17, v18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v67 = v16;
    sub_1D118A1B0(v9, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D118A14C);
    v19 = v69;
    v20 = v70;
  }

  else
  {

    (*(v11 + 32))(v13, v9, v10);
    v19 = v69;
    v21 = [*(v69 + 56) utcDateFormatter];
    v22 = sub_1D138D4EC();
    v23 = [v21 relativeStringFromDate_];

    v24 = sub_1D139016C();
    v67 = v25;
    v68 = v24;

    (*(v11 + 8))(v13, v10);
    v20 = v70;
  }

  v26 = v19[5];
  v27 = v19[6];
  __swift_project_boxed_opaque_existential_1Tm(v19 + 2, v26);
  (*(v27 + 16))(&v71, v26, v27);
  *v20 = v71;
  swift_storeEnumTagMultiPayload();
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v28);
  v30 = *(v29 + 32);
  v31 = v30(v28, v29);
  v33 = v32;
  v30(v28, v29);
  if (v34)
  {

    v35 = [objc_opt_self() sharedConverter];
    v36 = sub_1D139012C();

    v37 = [v35 synonymForUCUMUnitString_];

    v38 = sub_1D139016C();
    v33 = v39;
  }

  else
  {
    v38 = v31;
  }

  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v40);
  v42 = (*(v41 + 8))(v40, v41);
  if (v43)
  {
    v44 = v43;
    v66 = v42;
  }

  else
  {
    v66 = sub_1D138D1CC();
    v44 = v45;
  }

  v65 = BrowseCategory.systemImage.getter();
  v64 = BrowseCategory.tintColorForTemplateImage.getter();
  v46 = a1[3];
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v46);
  v48 = (*(v47 + 16))(v46, v47);
  if (!v48)
  {
    v50 = v38;
LABEL_19:
    v63 = 0;
    goto LABEL_20;
  }

  v49 = v48;
  v50 = v38;
  if (![v48 hasRenderableContent])
  {

    goto LABEL_19;
  }

  v63 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_];

LABEL_20:
  v51 = a1[3];
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v51);
  v53 = (*(v52 + 24))(v51, v52);
  v55 = v54;
  v56 = v73;
  v57 = v74;
  __swift_project_boxed_opaque_existential_1Tm(v72, v73);
  v58 = (*(v57 + 88))(v56, v57);
  if (v33)
  {
    v50 = sub_1D139023C();
    v60 = v59;
  }

  else
  {

    v60 = 0;
  }

  v61 = v67;
  sub_1D118A290(v70, type metadata accessor for BrowseCategory);
  LOBYTE(v71) = 1;
  *a2 = v66;
  *(a2 + 8) = v44;
  *(a2 + 16) = v68;
  *(a2 + 24) = v61;
  v62 = v64;
  *(a2 + 32) = v65;
  *(a2 + 40) = v62;
  *(a2 + 48) = v63;
  *(a2 + 56) = v53;
  *(a2 + 64) = v55;
  *(a2 + 72) = v50;
  *(a2 + 80) = v60;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 97) = 0;
  *(a2 + 99) = v58 & 1;
  *(a2 + 100) = 1;
  return __swift_destroy_boxed_opaque_existential_1Tm(v72);
}

void sub_1D1189B58()
{
  v0 = sub_1D1187E3C();
  if (v0)
  {
    v1 = v0;
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
    (*(v3 + 40))(v2, v3);
    if (v4)
    {

      v5 = 0;
    }

    else
    {
      v6 = v1[5];
      v7 = v1[6];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v6);
      if ((*(v7 + 96))(v6, v7))
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }

    sub_1D1189C58(v5);
  }

  else
  {

    sub_1D1189C58(1);
  }
}

void sub_1D1189C58(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_subtitleToBottomConstraint);
  if (a1)
  {
    if (a1 != 1)
    {
      if (v3)
      {
        [v3 setActive_];
        v11 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewToBottomConstraint);
        if (v11)
        {
          [v11 setActive_];
          v12 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewToBottomConstraint);
          if (v12)
          {
            [v12 setActive_];
            v13 = sub_1D1186BF4();
            [v13 setHidden_];

            v7 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueView);
            v8 = 1;
            goto LABEL_17;
          }

LABEL_28:
          __break(1u);
          return;
        }

        goto LABEL_25;
      }

      goto LABEL_22;
    }

    if (v3)
    {
      [v3 setActive_];
      v4 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewToBottomConstraint);
      if (v4)
      {
        [v4 setActive_];
        v5 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewToBottomConstraint);
        if (v5)
        {
          [v5 setActive_];
          v6 = sub_1D1186BF4();
          [v6 setHidden_];

          v7 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueView);
          v8 = 0;
LABEL_17:

          [v7 setHidden_];
          return;
        }

        goto LABEL_26;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v3)
  {
    goto LABEL_21;
  }

  [v3 setActive_];
  v9 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_rangeValueViewToBottomConstraint);
  if (!v9)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v9 setActive_];
  v10 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_multiValueViewToBottomConstraint);
  if (!v10)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v10 setActive_];
  v14 = sub_1D1186BF4();
  [v14 setHidden_];
}

id sub_1D1189E60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1189FA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D1189FFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI10RecordCell_item;
  swift_beginAccess();
  v4 = MEMORY[0x1E69A3348];
  sub_1D10DC970(a1, v1 + v3, &qword_1EC60B620, &qword_1EC60A3D0);
  swift_endAccess();
  sub_1D1187BA4();
  return sub_1D118A1B0(a1, &qword_1EC60B620, &qword_1EC60A3D0, v4, sub_1D10DC698);
}

void (*sub_1D118A0B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D118A118;
}

void sub_1D118A118(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D1187BA4();
  }
}

void sub_1D118A14C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D118A1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D118A210()
{
  if (!qword_1EC60C420)
  {
    type metadata accessor for Key(255);
    sub_1D106F934(255, &qword_1EE06B6E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60C420);
    }
  }
}

uint64_t sub_1D118A290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D118A2F0(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + OBJC_IVAR____TtC15HealthRecordsUI46MedicalRecordTimelineTitleWithSubtitleItemCell_item) = *a3;
  swift_retain_n();

  sub_1D118AFDC();
}

unint64_t sub_1D118A358()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1D13911EC();

  v13 = 0xD000000000000016;
  v14 = 0x80000001D13C02C0;
  v5 = v0 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData;
  v12[1] = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData);
  v6 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v6);

  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  v7 = [*(v5 + 16) UUID];
  sub_1D138D5CC();

  v8 = sub_1D138D59C();
  v10 = v9;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x1D3885C10](v8, v10);

  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  MEMORY[0x1D3885C10](*(v5 + 24), *(v5 + 32));
  return v13;
}

uint64_t sub_1D118A514()
{
  sub_1D116DEF0(v0 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_cellResolution);
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 16);
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 56);
  v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1D118A628()
{
  result = sub_1D138DC8C();
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

uint64_t sub_1D118A6CC()
{
  v1 = *v0;
  sub_1D139177C();
  sub_1D139027C();
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData);
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 8);
  MEMORY[0x1D38870E0](v2);
  MEMORY[0x1D38870E0](v3);
  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D118A760()
{
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 8);
  MEMORY[0x1D38870E0](*(v1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData));
  MEMORY[0x1D38870E0](v2);
  return sub_1D1390D9C();
}

uint64_t sub_1D118A7D4()
{
  sub_1D139177C();
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 8);
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 16);
  v4 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 56);
  v5 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 96);
  MEMORY[0x1D38870E0](*(v1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData));
  MEMORY[0x1D38870E0](v2);
  v6 = v5;

  v7 = v3;

  v8 = v4;

  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D118A93C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData;
  v4 = *(v3 + 48);
  v6 = *v3;
  v5 = *(v3 + 16);
  v40[2] = *(v3 + 32);
  v40[3] = v4;
  v40[0] = v6;
  v40[1] = v5;
  v8 = *(v3 + 80);
  v7 = *(v3 + 96);
  v9 = *(v3 + 64);
  v41 = *(v3 + 112);
  v40[5] = v8;
  v40[6] = v7;
  v40[4] = v9;
  v10 = *(v3 + 80);
  v36 = *(v3 + 64);
  v37 = v10;
  v38 = *(v3 + 96);
  v39 = *(v3 + 112);
  v11 = *(v3 + 16);
  v32 = *v3;
  v33 = v11;
  v12 = *(v3 + 48);
  v34 = *(v3 + 32);
  v35 = v12;
  v13 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 48);
  v15 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData);
  v14 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 16);
  v42[2] = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 32);
  v42[3] = v13;
  v42[0] = v15;
  v42[1] = v14;
  v17 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 80);
  v16 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 96);
  v18 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 64);
  v43 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 112);
  v42[5] = v17;
  v42[6] = v16;
  v42[4] = v18;
  v19 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 80);
  v28 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 64);
  v29 = v19;
  v30 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 96);
  v31 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 112);
  v20 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 16);
  v24 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData);
  v25 = v20;
  v21 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 48);
  v26 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 32);
  v27 = v21;
  sub_1D1116114(v40, v46);
  sub_1D1116114(v42, v46);
  v22 = sub_1D1276DF4(&v32, &v24);
  v44[4] = v28;
  v44[5] = v29;
  v44[6] = v30;
  v45 = v31;
  v44[0] = v24;
  v44[1] = v25;
  v44[2] = v26;
  v44[3] = v27;
  sub_1D1145A6C(v44);
  v46[4] = v36;
  v46[5] = v37;
  v46[6] = v38;
  v47 = v39;
  v46[0] = v32;
  v46[1] = v33;
  v46[2] = v34;
  v46[3] = v35;
  sub_1D1145A6C(v46);
  return v22 & 1;
}

id sub_1D118AAA4(double a1, double a2, double a3, double a4)
{
  sub_1D118C4F4(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_1D138F20C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI46MedicalRecordTimelineTitleWithSubtitleItemCell_item] = 0;
  v16 = OBJC_IVAR____TtC15HealthRecordsUI46MedicalRecordTimelineTitleWithSubtitleItemCell_sectionContext;
  v17 = sub_1D138DF1C();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = type metadata accessor for MedicalRecordTimelineTitleWithSubtitleItemCell(0);
  v23.receiver = v4;
  v23.super_class = v18;
  v19 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D138D84C();
  sub_1D1390C8C();
  v20 = [objc_opt_self() currentTraitCollection];
  sub_1D138F1DC();
  sub_1D133DBE4();
  v21 = sub_1D138F27C();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  MEMORY[0x1D38864A0](v11);

  (*(v13 + 8))(v15, v12);
  return v19;
}

id sub_1D118AD44(void *a1)
{
  sub_1D118C4F4(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1D138F20C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI46MedicalRecordTimelineTitleWithSubtitleItemCell_item] = 0;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI46MedicalRecordTimelineTitleWithSubtitleItemCell_sectionContext;
  v11 = sub_1D138DF1C();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = type metadata accessor for MedicalRecordTimelineTitleWithSubtitleItemCell(0);
  v19.receiver = v1;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    sub_1D138D84C();
    sub_1D1390C8C();
    v16 = [objc_opt_self() currentTraitCollection];
    sub_1D138F1DC();
    sub_1D133DBE4();
    v17 = sub_1D138F27C();
    (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
    MEMORY[0x1D38864A0](v5);

    (*(v7 + 8))(v9, v6);
    return v14;
  }

  else
  {

    return 0;
  }
}

id sub_1D118AFDC()
{
  sub_1D118C4F4(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v39 - v2;
  v4 = sub_1D138F15C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138F0FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138F3FC();
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI46MedicalRecordTimelineTitleWithSubtitleItemCell_item);
  if (v17)
  {
    v39[0] = v11;
    v40 = v14;
    v41 = v9;
    v48 = result;
    v42 = v7;
    v43 = v8;
    v44 = v3;
    v45 = v5;
    v46 = v4;

    v47 = v0;
    MEMORY[0x1D38864F0](v18);
    v39[1] = v17;
    v19 = v17 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData;

    sub_1D138F3BC();
    v20 = objc_opt_self();
    v21 = *MEMORY[0x1E69DDD80];
    result = [v20 _preferredFontForTextStyle_weight_];
    if (!result)
    {
      __break(1u);
      goto LABEL_13;
    }

    v22 = sub_1D138F2FC();
    sub_1D138F2CC();
    v22(v49, 0);
    v23 = objc_opt_self();
    v24 = [v23 labelColor];
    v25 = sub_1D138F2FC();
    sub_1D138F2DC();
    v25(v49, 0);
    v26 = *(v19 + 56);
    if (*(v19 + 48))
    {
      v27 = v48;
      if (!v26)
      {

        sub_1D138F29C();
        goto LABEL_8;
      }
    }

    else
    {
      v27 = v48;
      if (!v26)
      {
LABEL_10:
        v49[3] = v27;
        v49[4] = MEMORY[0x1E69DC110];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
        v33 = v40;
        (*(v40 + 16))(boxed_opaque_existential_1, v16, v27);
        MEMORY[0x1D3886480](v49);
        sub_1D118C4F4(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
        sub_1D138F17C();
        *(swift_allocObject() + 16) = xmmword_1D139E700;
        v34 = v41;
        v35 = v39[0];
        v36 = v43;
        (*(v41 + 104))(v39[0], *MEMORY[0x1E69DBF28], v43);
        v37 = sub_1D138F10C();
        (*(*(v37 - 8) + 56))(v44, 1, 1, v37);
        v38 = v42;
        sub_1D138F14C();
        sub_1D138F11C();
        (*(v45 + 8))(v38, v46);
        (*(v34 + 8))(v35, v36);
        sub_1D1390B8C();

        return (*(v33 + 8))(v16, v48);
      }
    }

    v28 = v26;
    sub_1D138F33C();
LABEL_8:
    result = [v20 &selRef_object + 2];
    if (result)
    {
      v29 = sub_1D138F34C();
      sub_1D138F2CC();
      v29(v49, 0);
      v30 = [v23 secondaryLabelColor];
      v31 = sub_1D138F34C();
      sub_1D138F2DC();
      v31(v49, 0);
      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D118B704()
{
  v1 = v0;
  v2 = sub_1D138D82C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D118C4F4(0, &qword_1EC60A840, MEMORY[0x1E69A3588], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D138DF1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15HealthRecordsUI46MedicalRecordTimelineTitleWithSubtitleItemCell_sectionContext;
  swift_beginAccess();
  sub_1D118C460(v1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D10DCA4C(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1D138DF0C();
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1D13911EC();
  v15 = sub_1D139016C();
  v22 = v2;
  v17 = v16;

  v24 = v15;
  v25 = v17;
  MEMORY[0x1D3885C10](0xD000000000000011, 0x80000001D13C02A0);
  v23 = sub_1D138D81C();
  v18 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v18);

  MEMORY[0x1D3885C10](0x2E6D6574492ELL, 0xE600000000000000);
  v23 = sub_1D138D80C();
  v19 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v19);

  v20 = sub_1D139012C();

  [v1 setAccessibilityIdentifier_];

  (*(v3 + 8))(v5, v22);
  return (*(v10 + 8))(v12, v9);
}

id sub_1D118BA78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineTitleWithSubtitleItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D118BB24()
{
  sub_1D118C4F4(319, &qword_1EC60A840, MEMORY[0x1E69A3588], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D118BC18@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI46MedicalRecordTimelineTitleWithSubtitleItemCell_sectionContext;
  swift_beginAccess();
  return sub_1D118C460(v1 + v3, a1);
}

uint64_t sub_1D118BC70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI46MedicalRecordTimelineTitleWithSubtitleItemCell_sectionContext;
  swift_beginAccess();
  sub_1D10DCAC4(a1, v1 + v3);
  swift_endAccess();
  sub_1D118B704();
  return sub_1D10DCA4C(a1);
}

uint64_t (*sub_1D118BCDC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D118BD40;
}

uint64_t sub_1D118BD40(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D118B704();
  }

  return result;
}

uint64_t sub_1D118BDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138DC8C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D118BE20(uint64_t (*a1)(uint64_t a1))
{
  v3 = sub_1D138FF3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI46MedicalRecordTimelineTitleWithSubtitleItemCell_item);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineTitleWithSubtitleItem_viewData + 16);
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v40 = a1;
      v36 = v4;
      v37 = v3;
      v11 = qword_1EE06AF70;
      v38 = v8;

      if (v11 != -1)
      {
        v12 = swift_once();
      }

      v39 = &v35;
      v47 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
      MEMORY[0x1EEE9AC00](v12);
      *(&v35 - 2) = v13;
      sub_1D138D96C();
      sub_1D118C3B4();
      sub_1D118C400(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

      sub_1D138ED0C();

      v14 = aBlock;
      if (qword_1EE069ED0 != -1)
      {
        swift_once();
      }

      sub_1D1299750(v10, v40, v14);
      sub_1D138F6CC();
      v16 = v42;
      v15 = v43;
      v17 = v44;
      if (qword_1EE06A170 != -1)
      {
        swift_once();
      }

      v18 = qword_1EE06AEB8;
      if (v17)
      {
        sub_1D123E1C4(v17, &aBlock);
        sub_1D1080D98(&aBlock);
        v19 = aBlock;
        if (v16)
        {
LABEL_11:
          v20 = *&v18[OBJC_IVAR___CHRAnalyticsManager_conceptStore];
          v21 = swift_allocObject();
          *(v21 + 16) = v18;
          *(v21 + 24) = xmmword_1D13A5FF0;
          *(v21 + 40) = 0;
          *(v21 + 48) = v19;
          v45 = sub_1D1080D88;
          v46 = v21;
          aBlock = MEMORY[0x1E69E9820];
          v42 = 1107296256;
          v43 = sub_1D1226920;
          v44 = &block_descriptor_22;
          v22 = _Block_copy(&aBlock);
          v23 = v16;
          v24 = v18;

          [v20 fetchConceptForIdentifier:v23 loadRelationships:0 completionHandler:v22];

          _Block_release(v22);
          return;
        }
      }

      else
      {
        v19 = 11;
        if (v16)
        {
          goto LABEL_11;
        }
      }

      v40 = v15;
      v25 = OBJC_IVAR___CHRAnalyticsManager_managerQueue;
      v26 = *&v18[OBJC_IVAR___CHRAnalyticsManager_managerQueue];
      *v6 = v26;
      v27 = v36;
      v28 = v37;
      (*(v36 + 104))(v6, *MEMORY[0x1E69E8018], v37);
      v29 = v26;
      LOBYTE(v26) = sub_1D138FF5C();
      (*(v27 + 8))(v6, v28);
      if (v26)
      {
        v30 = *&v18[v25];
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1D13A5FF0;
        *(v31 + 32) = 0;
        *(v31 + 40) = v19;
        *(v31 + 48) = 0;
        v32 = swift_allocObject();
        *(v32 + 16) = sub_1D1080D6C;
        *(v32 + 24) = v31;
        v45 = sub_1D1080D80;
        v46 = v32;
        aBlock = MEMORY[0x1E69E9820];
        v42 = 1107296256;
        v43 = sub_1D10DD3BC;
        v44 = &block_descriptor_24;
        v33 = _Block_copy(&aBlock);

        dispatch_sync(v30, v33);

        _Block_release(v33);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

unint64_t sub_1D118C3B4()
{
  result = qword_1EE06B6B0;
  if (!qword_1EE06B6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06B6B0);
  }

  return result;
}

uint64_t sub_1D118C400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D118C460(uint64_t a1, uint64_t a2)
{
  sub_1D118C4F4(0, &qword_1EC60A840, MEMORY[0x1E69A3588], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D118C4F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D118C560()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1D13910DC();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_9:

    v7 = MEMORY[0x1D3886B70](0, v5);

    goto LABEL_6;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_6:
    v8 = [v7 identifier];

    sub_1D138D5CC();
    v9 = sub_1D138D59C();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    v12[0] = 0xD000000000000013;
    v12[1] = 0x80000001D13C0410;
    MEMORY[0x1D3885C10](v9, v11);

    return v12[0];
  }

  __break(1u);
  return result;
}

void sub_1D118C71C()
{
  sub_1D139027C();
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_1D139179C();
    return;
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = MEMORY[0x1D3886B70](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  sub_1D139179C();
  v3 = v2;
  sub_1D1390D9C();
}

uint64_t sub_1D118C824()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D118C890()
{
  sub_1D139177C();
  sub_1D118C71C();
  return sub_1D13917CC();
}

uint64_t sub_1D118C8F8()
{
  sub_1D139177C();
  sub_1D118C71C();
  return sub_1D13917CC();
}

uint64_t sub_1D118C968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D118CB14()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(&v0[v1], v6);
  if (!v7)
  {
    return sub_1D10A72B8(v6);
  }

  sub_1D10A7254();
  type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
  result = swift_dynamicCast();
  if (result)
  {

    v3 = OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_hasRegisteredForNotifications;
    if ((v0[OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_hasRegisteredForNotifications] & 1) == 0)
    {
      v4 = [objc_opt_self() defaultCenter];
      if (qword_1EC608D78 != -1)
      {
        v5 = sel_reloadDataSource;
        swift_once();
      }

      [v4 addObserver:v0 selector:v5 name:? object:?];

      v0[v3] = 1;
    }

    return [v0 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_1D118CD58()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItemCell();
  v1 = objc_msgSendSuper2(&v12, sel__bridgedConfigurationState);
  sub_1D138F1FC();

  v2 = OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v2, &v9);
  if (*(&v10 + 1))
  {
    sub_1D10A7254();
    type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
    if (swift_dynamicCast())
    {
      v3 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D10A72B8(&v9);
  }

  v3 = 0;
LABEL_6:
  if (qword_1EC608CF8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC60C458;
  if (v3)
  {
    type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
    sub_1D118E964(&qword_1EC60C490);
    v5 = v4;

    sub_1D139116C();
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v6 = qword_1EC60C458;
  }

  sub_1D138F22C();
}

uint64_t sub_1D118CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v5 = sub_1D138F20C();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = sub_1D13905AC();
  v4[14] = sub_1D139059C();

  return MEMORY[0x1EEE6DFA0](sub_1D118D0A4, 0, 0);
}

uint64_t sub_1D118D0A4()
{
  *(v0 + 120) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D118D130, v2, v1);
}

uint64_t sub_1D118D130()
{
  v1 = *(v0 + 72);

  v2 = [v1 _bridgedConfigurationState];
  sub_1D138F1FC();

  if (qword_1EC608CF8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  sub_1D138F21C();
  (*(v4 + 8))(v3, v5);
  if (*(v0 + 40))
  {
    type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
    if (swift_dynamicCast())
    {

      sub_1D10ECD40();

      v6 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D118E794(v0 + 16);
  }

  v6 = 1;
LABEL_8:
  **(v0 + 64) = v6;
  v8 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D118D2B8, v8, v7);
}

uint64_t sub_1D118D2B8()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1D118D464()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v1, v6);
  if (!v7)
  {
    sub_1D10A72B8(v6);
    return 0;
  }

  sub_1D10A7254();
  type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v5 + 16);

  if (v2 >> 62)
  {
    v3 = sub_1D13910DC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 > 1;
}

uint64_t sub_1D118D544@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v3, v12);
  if (!v13)
  {
    sub_1D10A72B8(v12);
    goto LABEL_13;
  }

  sub_1D10A7254();
  type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v4 = *(v11 + 16);

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (sub_1D13910DC() != 1 || (result = sub_1D13910DC()) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1D3886B70](0, v4);
    goto LABEL_8;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_8:
    v7 = v6;

    v8 = [v7 identifier];

    sub_1D138D5CC();
    v9 = 0;
LABEL_14:
    v10 = sub_1D138D5EC();
    return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
  }

  __break(1u);
  return result;
}

void sub_1D118D6F4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_tileView;
  if (*&v0[OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_tileView])
  {
    return;
  }

  v2 = objc_allocWithZone(type metadata accessor for AccountUpgradeTileView());
  v3 = v0;
  v4 = sub_1D1372914(v3, v2);
  v5 = *&v0[v1];
  *&v0[v1] = v4;

  v6 = [v3 contentView];
  if (!*&v0[v1])
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  [v6 addSubview_];

  v8 = [v3 contentView];
  v9 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = [v3 contentView];
  v11 = [v10 layer];

  [v11 setCornerRadius_];
  v12 = [v3 contentView];
  v13 = [v12 layer];

  [v13 setCornerCurve_];
  v14 = [v3 contentView];
  [v14 setClipsToBounds_];

  v15 = *&v0[v1];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v15 setMaximumContentSizeCategory_];
  v16 = *&v0[v1];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v3 contentView];
  [v17 hk:v18 alignConstraintsWithView:?];

  v19 = *&v0[v1];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v20 = v19;
  sub_1D1147B64();
}

uint64_t sub_1D118D97C()
{
  v1 = v0;
  sub_1D10EF534(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v30 - v3;
  v5 = sub_1D138F20C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 _bridgedConfigurationState];
  sub_1D138F1FC();

  if (qword_1EC608CF8 != -1)
  {
    swift_once();
  }

  sub_1D138F21C();
  (*(v6 + 8))(v8, v5);
  if (!v33)
  {
    return sub_1D118E794(v32);
  }

  type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v31;
    v12 = *(v31 + 24);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = *(v12 + 40);
      type metadata accessor for ClinicalAccountManager();
      v16 = swift_allocObject();
      v17 = MEMORY[0x1E69E7CD0];
      v16[5] = 0;
      v16[6] = 0;
      v16[4] = v17;
      v16[2] = v15;
      v16[3] = [v15 clinicalAccountStore];
      v18 = OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_item;
      swift_beginAccess();
      sub_1D10A71C0(v1 + v18, v32);
      if (!v33)
      {
        sub_1D10A72B8(v32);
        goto LABEL_14;
      }

      sub_1D10A7254();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v19 = *(v30[1] + 16);

      if (v19 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
      {

        if (i > 1)
        {
          break;
        }

LABEL_14:
        v23 = *(v11 + 16);
        if (v23 >> 62)
        {
          if (!sub_1D13910DC())
          {
            goto LABEL_22;
          }
        }

        else if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        if ((v23 & 0xC000000000000001) != 0)
        {

          v24 = MEMORY[0x1D3886B70](0, v23);

          goto LABEL_19;
        }

        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v24 = *(v23 + 32);
LABEL_19:
          type metadata accessor for ClinicalAccountUpgradeManager();
          swift_allocObject();
          v25 = v24;

          v26 = v14;
          v27 = sub_1D1292444(v25, v16, v26);

          v28 = sub_1D13905DC();
          (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
          v29 = swift_allocObject();
          v29[2] = 0;
          v29[3] = 0;
          v29[4] = v27;

          sub_1D107877C(0, 0, v4, &unk_1D13A0E78, v29);
        }

        __break(1u);
LABEL_27:
        ;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      v22 = v1;
      ClinicalAccountManager.presentAccounts(presentingViewController:completion:)(v14, sub_1D118E92C, v21);

LABEL_22:
    }
  }

  return result;
}

uint64_t sub_1D118DE84()
{
  v1 = v0;
  v2 = sub_1D138F20C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [v1 _bridgedConfigurationState];
  sub_1D138F1FC();

  if (qword_1EC608CF8 != -1)
  {
    swift_once();
  }

  sub_1D138F21C();
  (*(v3 + 8))(v5, v2);
  if (!v18)
  {
    return sub_1D118E794(v17);
  }

  type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
  result = swift_dynamicCast();
  if (result)
  {
    v8 = v16;
    v9 = [*(*(v16 + 24) + 40) healthStore];
    type metadata accessor for AccountStatusSummaryTileSettingsManager();
    inited = swift_initStackObject();
    v11 = MEMORY[0x1E69E7CC8];
    *(inited + 16) = v9;
    *(inited + 24) = v11;
    sub_1D1336F8C();
    v12 = *(v8 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = v1;

    v14 = v1;
    sub_1D133742C(v12, sub_1D118E840, v13);

    swift_setDeallocating();
  }

  return result;
}

uint64_t sub_1D118E0B8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D10EF534(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_1D13905DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D13905AC();
  v9 = a1;
  v10 = sub_1D139059C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_1D1078B58(0, 0, v7, a3, v11);
}

id sub_1D118E234()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D118E2D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D118E330(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D118CB14();
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D118E39C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D118E400;
}

uint64_t sub_1D118E400(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D118CB14();
  }

  return result;
}

uint64_t sub_1D118E5A4()
{
  result = sub_1D139012C();
  qword_1EC60C458 = result;
  return result;
}

uint64_t sub_1D118E5DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  result = sub_1D13910DC();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x1D3886B70](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v5 = *(v3 + 32);
  }

LABEL_8:
  v6 = *(a2 + 16);
  if (v6 >> 62)
  {
    result = sub_1D13910DC();
    if (result)
    {
      goto LABEL_10;
    }

LABEL_16:
    if (v5)
    {
      goto LABEL_17;
    }

LABEL_24:
    v8 = 1;
    return v8 & 1;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x1D3886B70](0, v6);

    if (v5)
    {
LABEL_13:
      if (v7)
      {
        sub_1D118E748();
        v8 = sub_1D1390D8C();

LABEL_18:
        v7 = v5;
LABEL_19:

        return v8 & 1;
      }

LABEL_17:
      v8 = 0;
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_22:
    if (v7)
    {
      v8 = 0;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1D118E748()
{
  result = qword_1EC609A00;
  if (!qword_1EC609A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC609A00);
  }

  return result;
}

uint64_t sub_1D118E794(uint64_t a1)
{
  sub_1D118E7F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D118E7F0()
{
  if (!qword_1EC60C488)
  {
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C488);
    }
  }
}

uint64_t sub_1D118E878(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D118CFCC(a1, v4, v5, v6);
}

uint64_t sub_1D118E964(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1D118E9A4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter____lazy_storage___reactionFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter____lazy_storage___reactionFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter____lazy_storage___reactionFormatter);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter_store);
    v5 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter_context);
    v6 = type metadata accessor for AllergyReactionFormatter();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI24AllergyReactionFormatter_store] = v4;
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI24AllergyReactionFormatter_context] = v5;
    v13.receiver = v7;
    v13.super_class = v6;
    v8 = v4;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_1D118EA74(void *a1)
{
  v16 = MEMORY[0x1E69E7CC0];
  v2 = [a1 reactions];
  if (v2 && ((v3 = v2, sub_1D106F934(0, &qword_1EC60C4B8), v4 = sub_1D139045C(), v3, , v5 = sub_1D118E9A4(), [a1 country], v6 = v5, v7 = sub_1D118F5D4(v4, v6), swift_bridgeObjectRelease_n(), v6, v6, v8 = , sub_1D11220E0(v8), v7 >> 62) ? (v9 = sub_1D13910DC()) : (v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v9))
  {
    v10 = sub_1D118EDD8(a1);
    if (v10)
    {
LABEL_13:
      v14 = v10;
      MEMORY[0x1D3885D90]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();

      return v16;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_1D1270740(a1);
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  MEMORY[0x1D3885D90]();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();

  if (v11)
  {
LABEL_20:
    v10 = sub_1D128719C(a1);
    if (v10)
    {
      goto LABEL_13;
    }
  }

  return v16;
}

id sub_1D118ECB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllergyRecordFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D118ED5C(uint64_t a1)
{
  result = sub_1D118ED84();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D118ED84()
{
  result = qword_1EC60C4B0;
  if (!qword_1EC60C4B0)
  {
    type metadata accessor for AllergyRecordFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60C4B0);
  }

  return result;
}

id sub_1D118EDD8(void *a1)
{
  v1 = [a1 criticality];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 localizedPreferredName];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_7:
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v9 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v10 = sub_1D139012C();

    [v9 setTitle_];

    v11 = sub_1D139012C();

    [v9 setSubtitle_];

    [v9 setSeparatorStyle_];
    [v9 setSeparatorHidden_];
    [v9 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v9;
}

id sub_1D118EFE8(void *a1)
{
  v1 = [a1 allergyType];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 localizedPreferredName];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_7:
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v9 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v10 = sub_1D139012C();

    [v9 setTitle_];

    v11 = sub_1D139012C();

    [v9 setSubtitle_];

    [v9 setSeparatorStyle_];
    [v9 setSeparatorHidden_];
    [v9 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v9;
}