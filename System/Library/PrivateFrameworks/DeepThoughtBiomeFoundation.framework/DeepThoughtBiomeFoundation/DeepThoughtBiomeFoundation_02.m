uint64_t sub_2486E5048(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F58, &qword_248734050);
  v37 = a2;
  result = sub_2487317C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_248731910();
      sub_2487310D0();
      result = sub_248731930();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2486E52EC(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = sub_248730970();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v50, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F48, &unk_248734038);
  v47 = a2;
  result = sub_2487317C0();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v6 + 16);
    v45 = v10;
    v46 = v6;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v46 + 72);
      v32 = v27 + v31 * v26;
      if (v47)
      {
        (*v48)(v49, v32, v50);
      }

      else
      {
        (*v44)(v49, v32, v50);
      }

      v33 = *(v13 + 40);
      sub_248731910();
      sub_2487310D0();
      result = sub_248731930();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v48)(*(v13 + 56) + v31 * v21, v49, v50);
      ++*(v13 + 16);
      v10 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_2486E5680(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_2487317C0();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = sub_248731900();
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
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2486E5910(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_2487317C0();
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
      sub_248731910();
      sub_2487310D0();
      result = sub_248731930();
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

uint64_t sub_2486E5BB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F10, &unk_248734000);
  v39 = a2;
  result = sub_2487317C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_248731910();
      sub_2487310D0();
      result = sub_248731930();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2486E5E7C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = sub_2487317C0();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_248731910();
      MEMORY[0x24C1D78A0](v23);
      result = sub_248731930();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

_OWORD *sub_2486E6104(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2486C79A0(a4, (a5[7] + 32 * a1));
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

unint64_t sub_2486E6170(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_2486E61B8(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2486E6200(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_248730970();
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

unint64_t sub_2486E62B0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_2486E62F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FD8, qword_2487340C0);
  v2 = *v0;
  v3 = sub_2487317B0();
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
        sub_2486C5B68(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2486C79A0(v25, (*(v4 + 56) + v22));
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

void *sub_2486E6498()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6310, &qword_248734740);
  v2 = *v0;
  v3 = sub_2487317B0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2486E65E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F18, &unk_248734720);
  v2 = *v0;
  v3 = sub_2487317B0();
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

void *sub_2486E674C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FB8, &qword_2487340A8);
  v2 = *v0;
  v3 = sub_2487317B0();
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
        v22 = 40 * v17;
        sub_2486E8718(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2486CD01C(v25, *(v4 + 56) + v22);
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

void *sub_2486E68F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F58, &qword_248734050);
  v2 = *v0;
  v3 = sub_2487317B0();
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

char *sub_2486E6A5C()
{
  v1 = v0;
  v37 = sub_248730970();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v37, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F48, &unk_248734038);
  v5 = *v0;
  v6 = sub_2487317B0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
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

        v1 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
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

void *sub_2486E6CF0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2487317B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_2486E6E64(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2487317B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

id sub_2486E6FC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F10, &unk_248734000);
  v2 = *v0;
  v3 = sub_2487317B0();
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

uint64_t sub_2486E7158(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248731840();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for FeaturizedConversationTurn();
        v6 = sub_248731290();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2486E7B10(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2486E725C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2486E725C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 32) >= *(*v9 + 32))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2486E72C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v107 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_124:
    v4 = *v107;
    if (*v107)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v10 = *(*a3 + 8 * v9);
      v11 = 8 * v6;
      v12 = (*a3 + 8 * v6);
      v13 = *v12;
      v4 = (v12 + 2);
      swift_beginAccess();
      v14 = *(v10 + 32);
      result = swift_beginAccess();
      v15 = *(v13 + 32);
      v16 = v8 + 2;
      while (v5 != v16)
      {
        v18 = *(v4 - 1);
        v17 = *v4;
        swift_beginAccess();
        v19 = *(v17 + 32);
        result = swift_beginAccess();
        ++v16;
        v4 += 8;
        if (v14 < v15 == v19 >= *(v18 + 32))
        {
          v5 = (v16 - 1);
          break;
        }
      }

      if (v14 < v15)
      {
        if (v5 < v8)
        {
          goto LABEL_153;
        }

        if (v8 < v5)
        {
          v20 = 8 * v5 - 8;
          v21 = v5;
          v22 = v8;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_159;
              }

              v24 = *(v23 + v11);
              *(v23 + v11) = *(v23 + v20);
              *(v23 + v20) = v24;
            }

            ++v22;
            v20 -= 8;
            v11 += 8;
          }

          while (v22 < v21);
        }
      }

      v9 = v5;
    }

    v25 = a3[1];
    if (v9 < v25)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_152;
      }

      if (v9 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_154;
        }

        if (&v8[a4] >= v25)
        {
          v26 = a3[1];
        }

        else
        {
          v26 = &v8[a4];
        }

        if (v26 < v8)
        {
          goto LABEL_155;
        }

        if (v9 != v26)
        {
          v115 = v7;
          __dst = v8;
          v27 = *a3;
          v4 = (*a3 + 8 * v9 - 8);
          v28 = &v8[-v9];
          do
          {
            v29 = v9;
            v30 = *(v27 + 8 * v9);
            v7 = v28;
            v31 = v4;
            do
            {
              v32 = *v31;
              swift_beginAccess();
              v33 = *(v30 + 32);
              swift_beginAccess();
              if (v33 >= *(v32 + 32))
              {
                break;
              }

              if (!v27)
              {
                goto LABEL_156;
              }

              v34 = *v31;
              v30 = *(v31 + 1);
              *v31 = v30;
              *(v31 + 1) = v34;
              v31 -= 8;
            }

            while (!__CFADD__(v7++, 1));
            v9 = v29 + 1;
            v4 += 8;
            --v28;
          }

          while ((v29 + 1) != v26);
          v9 = v26;
          v7 = v115;
          v8 = __dst;
        }
      }
    }

    if (v9 < v8)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v109 = v9;
    if ((result & 1) == 0)
    {
      result = sub_2486C45C0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 2);
    v36 = *(v7 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_2486C45C0((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v38;
    v39 = &v7[16 * v37];
    *(v39 + 4) = v8;
    *(v39 + 5) = v9;
    __dsta = *v107;
    if (!*v107)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v37)
    {
      break;
    }

LABEL_3:
    v6 = v109;
    v5 = a3[1];
    if (v109 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v40 = v38 - 1;
    if (v38 >= 4)
    {
      v46 = &v7[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      v41 = __dsta;
      if (v52)
      {
        goto LABEL_138;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_139;
      }

      v53 = &v7[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_141;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_144;
      }

      if (v57 >= v49)
      {
        v75 = &v7[16 * v40 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_148;
        }

        if (v44 < v78)
        {
          v40 = v38 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v41 = __dsta;
    if (v38 == 3)
    {
      v42 = *(v7 + 4);
      v43 = *(v7 + 5);
      v52 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      v45 = v52;
LABEL_56:
      if (v45)
      {
        goto LABEL_140;
      }

      v58 = &v7[16 * v38];
      v60 = *v58;
      v59 = *(v58 + 1);
      v61 = __OFSUB__(v59, v60);
      v62 = v59 - v60;
      v63 = v61;
      if (v61)
      {
        goto LABEL_143;
      }

      v64 = &v7[16 * v40 + 32];
      v66 = *v64;
      v65 = *(v64 + 1);
      v52 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v52)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v62, v67))
      {
        goto LABEL_147;
      }

      if (v62 + v67 >= v44)
      {
        if (v44 < v67)
        {
          v40 = v38 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v68 = &v7[16 * v38];
    v70 = *v68;
    v69 = *(v68 + 1);
    v52 = __OFSUB__(v69, v70);
    v62 = v69 - v70;
    v63 = v52;
LABEL_70:
    if (v63)
    {
      goto LABEL_142;
    }

    v71 = &v7[16 * v40];
    v73 = *(v71 + 4);
    v72 = *(v71 + 5);
    v52 = __OFSUB__(v72, v73);
    v74 = v72 - v73;
    if (v52)
    {
      goto LABEL_145;
    }

    if (v74 < v62)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v40 - 1 >= v38)
    {
      break;
    }

    v79 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v111 = v40 - 1;
    v112 = v40;
    v80 = *&v7[16 * v40 + 32];
    v81 = *&v7[16 * v40 + 40];
    v114 = *&v7[16 * v40 + 16];
    v116 = v7;
    v82 = (v79 + 8 * v114);
    v83 = 8 * v80;
    v84 = (v79 + 8 * v80);
    v113 = v81;
    v85 = 8 * v81;
    v86 = (v79 + 8 * v81);
    v87 = 8 * v80 - 8 * v114;
    v88 = 8 * v81 - 8 * v80;
    if (v87 >= v88)
    {
      if (v84 != v41 || v86 <= v41)
      {
        memmove(v41, (v79 + 8 * v80), 8 * v81 - 8 * v80);
      }

      v89 = &v41[v88];
      if (v88 < 1 || v83 <= 8 * v114)
      {
LABEL_113:
        v7 = __dsta;
        v4 = v84;
      }

      else
      {
        do
        {
          v4 = v84 - 8;
          v86 -= 8;
          v95 = v89;
          while (1)
          {
            v96 = v86 + 8;
            v97 = *(v95 - 1);
            v95 -= 8;
            v98 = *v4;
            swift_beginAccess();
            v99 = *(v97 + 32);
            swift_beginAccess();
            if (v99 < *(v98 + 32))
            {
              break;
            }

            if (v96 != v89)
            {
              *v86 = *v95;
            }

            v86 -= 8;
            v89 = v95;
            if (v95 <= __dsta)
            {
              v89 = v95;
              goto LABEL_113;
            }
          }

          if (v96 != v84)
          {
            *v86 = *v4;
          }

          v7 = __dsta;
          if (v89 <= __dsta)
          {
            break;
          }

          v84 -= 8;
        }

        while (v82 < v4);
      }
    }

    else
    {
      if (v82 != v41 || v84 <= v41)
      {
        memmove(v41, (v79 + 8 * v114), 8 * v80 - 8 * v114);
      }

      v89 = &v41[v87];
      if (v87 >= 1 && v85 > v83)
      {
        v7 = __dsta;
        while (1)
        {
          v90 = *v84;
          v91 = *v7;
          swift_beginAccess();
          v92 = *(v90 + 32);
          swift_beginAccess();
          if (v92 >= *(v91 + 32))
          {
            break;
          }

          v93 = v84;
          v94 = v82 == v84;
          v84 += 8;
          if (!v94)
          {
            goto LABEL_91;
          }

LABEL_92:
          v82 += 8;
          if (v7 >= v89 || v84 >= v86)
          {
            goto LABEL_111;
          }
        }

        v93 = v7;
        v94 = v82 == v7;
        v7 += 8;
        if (v94)
        {
          goto LABEL_92;
        }

LABEL_91:
        *v82 = *v93;
        goto LABEL_92;
      }

      v7 = __dsta;
LABEL_111:
      v4 = v82;
    }

    if (v4 != v7 || v4 >= &v7[(v89 - v7 + (v89 - v7 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v4, v7, 8 * ((v89 - v7) / 8));
    }

    if (v113 < v114)
    {
      goto LABEL_136;
    }

    v100 = v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = sub_2486FD038(v116);
    }

    if (v112 > *(v100 + 2))
    {
      goto LABEL_137;
    }

    v101 = &v100[16 * v111];
    *(v101 + 4) = v114;
    *(v101 + 5) = v113;
    result = sub_2486FCFAC(v112);
    v7 = v100;
    v38 = *(v100 + 2);
    if (v38 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  result = sub_2486FD038(v7);
  v7 = result;
LABEL_126:
  v102 = *(v7 + 2);
  if (v102 < 2)
  {
  }

  while (*a3)
  {
    v103 = *&v7[16 * v102];
    v104 = *&v7[16 * v102 + 24];
    sub_2486E8080((*a3 + 8 * v103), (*a3 + 8 * *&v7[16 * v102 + 16]), (*a3 + 8 * v104), v4);
    if (v108)
    {
    }

    if (v104 < v103)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2486FD038(v7);
    }

    if (v102 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v105 = &v7[16 * v102];
    *v105 = v103;
    *(v105 + 1) = v104;
    result = sub_2486FCFAC(v102 - 1);
    v102 = *(v7 + 2);
    if (v102 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_2486E7B10(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_2486FD038(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_2486E8314((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2486FD038(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_2486FCFAC(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 32);
      v13 = *(*(*a3 + 8 * v11) + 32);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 32);
        v17 = v16 >= v15;
        ++v14;
        v15 = v16;
        if ((((v12 < v13) ^ v17) & 1) == 0)
        {
          v9 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2486C45C0(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_2486C45C0((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
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
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_2486E8314((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2486FD038(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_2486FCFAC(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(v27 + 32) >= *(*v29 + 32))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_2486E8080(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6;
      v18 = *v4;
      swift_beginAccess();
      v19 = *(v17 + 32);
      swift_beginAccess();
      if (v19 < *(v18 + 32))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v27 = v6;
      v20 = v6 - 8;
      v5 -= 8;
      v21 = v14;
      while (1)
      {
        v22 = v5 + 8;
        v23 = *(v21 - 1);
        v21 -= 8;
        v6 = v20;
        v24 = *v20;
        swift_beginAccess();
        v25 = *(v23 + 32);
        swift_beginAccess();
        if (v25 < *(v24 + 32))
        {
          break;
        }

        if (v22 != v14)
        {
          *v5 = *v21;
        }

        v5 -= 8;
        v14 = v21;
        v20 = v6;
        if (v21 <= v4)
        {
          v14 = v21;
          v6 = v27;
          goto LABEL_35;
        }
      }

      if (v22 != v27)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_35:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_2486E8314(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 32) < *(*v4 + 32))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 32) < *(*v17 + 32))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_2486E8718(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t FeaturizedEvent.__allocating_init(event:intraEventFeatures:)(char *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_timestamp;
  swift_beginAccess();
  v6 = *&a1[v5];
  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType;
  swift_beginAccess();
  v8 = (*(v2 + 312))(*&a1[v7], a2, v6);

  return v8;
}

uint64_t sub_2486E88D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_2486E8934()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_2486E896C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_2486E89CC()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_2486E8A04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

uint64_t sub_2486E8A64()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_2486E8A9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

uint64_t sub_2486E8AFC()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t FeaturizedEvent.__allocating_init(timestamp:eventType:intraEventFeatures:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  *(result + 56) = MEMORY[0x277D84F90];
  *(result + 64) = v7;
  *(result + 72) = v7;
  *(result + 32) = a3;
  *(result + 40) = a1;
  *(result + 48) = v7;
  *(result + 24) = a2;
  return result;
}

uint64_t FeaturizedEvent.init(timestamp:eventType:intraEventFeatures:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 56) = MEMORY[0x277D84F90];
  *(v3 + 64) = v4;
  *(v3 + 72) = v4;
  *(v3 + 32) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = v4;
  *(v3 + 24) = a2;
  return v3;
}

void sub_2486E8BC4(unint64_t a1, _BYTE *a2, double a3)
{
  v4 = v3;
  v36 = a1 >> 62;
  v35 = *a2;
  if (!*a2 || *a2 != 1)
  {
    v7 = sub_248731880();

    if (v7)
    {
      goto LABEL_6;
    }

    if (v35 < 2)
    {
      v20 = sub_248731880();

      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  if (v36)
  {
    v8 = sub_248731790();
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_8:
      if (v8 < 1)
      {
LABEL_58:
        __break(1u);
        return;
      }

      swift_beginAccess();
      swift_beginAccess();
      for (i = 0; i != v8; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1D7600](i, a1);
        }

        else
        {
          v10 = *(a1 + 8 * i + 32);
        }

        swift_beginAccess();
        v11 = *(v10 + 32);
        v12 = *(v4 + 32);
        if (v11 - v12 < 0.0 || v11 - v12 > a3 || v12 == v11 && (v13 = *(v4 + 40), swift_beginAccess(), v13 == *(v10 + 40)))
        {
        }

        else
        {
          swift_beginAccess();

          MEMORY[0x24C1D71A0](v14);
          if (*((*(v4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v19 = *((*(v4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_248731260();
          }

          sub_2487312A0();
          swift_endAccess();
          if (qword_28150EE60 != -1)
          {
            swift_once();
          }

          v15 = sub_248730DF0();
          __swift_project_value_buffer(v15, qword_28150F088);

          v16 = sub_248730DD0();
          v17 = sub_2487313C0();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 134218240;
            *(v18 + 4) = *(v10 + 32);
            *(v18 + 12) = 2048;
            *(v18 + 14) = *(v4 + 32);
            _os_log_impl(&dword_2486BF000, v16, v17, "Found a matching event happening at %f for an event happening at %f", v18, 0x16u);
            MEMORY[0x24C1D8100](v18, -1, -1);
          }
        }
      }
    }
  }

LABEL_27:
  if (!v35)
  {
    goto LABEL_32;
  }

  v21 = sub_248731880();

  if (v21)
  {
    goto LABEL_33;
  }

  if (v35 == 2)
  {
LABEL_32:
  }

  else
  {
    v22 = sub_248731880();

    if ((v22 & 1) == 0)
    {
      return;
    }
  }

LABEL_33:
  if (v36)
  {
    v23 = sub_248731790();
    if (!v23)
    {
      return;
    }
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      return;
    }
  }

  if (v23 < 1)
  {
    __break(1u);
    goto LABEL_58;
  }

  swift_beginAccess();
  swift_beginAccess();
  for (j = 0; j != v23; ++j)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x24C1D7600](j, a1);
    }

    else
    {
      v25 = *(a1 + 8 * j + 32);
    }

    v26 = *(v4 + 32);
    swift_beginAccess();
    v27 = *(v25 + 32);
    if (v26 - v27 < 0.0 || v26 - v27 > a3 || v26 == v27 && (v28 = *(v4 + 40), swift_beginAccess(), v28 == *(v25 + 40)))
    {
    }

    else
    {
      swift_beginAccess();

      MEMORY[0x24C1D71A0](v29);
      if (*((*(v4 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((*(v4 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      swift_endAccess();
      if (qword_28150EE60 != -1)
      {
        swift_once();
      }

      v30 = sub_248730DF0();
      __swift_project_value_buffer(v30, qword_28150F088);

      v31 = sub_248730DD0();
      v32 = sub_2487313C0();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134218240;
        *(v33 + 4) = *(v25 + 32);
        *(v33 + 12) = 2048;
        *(v33 + 14) = *(v4 + 32);
        _os_log_impl(&dword_2486BF000, v31, v32, "Found a matching event happening at %f for an event happening at %f", v33, 0x16u);
        MEMORY[0x24C1D8100](v33, -1, -1);
      }
    }
  }
}

void sub_2486E92E4(unint64_t a1, _BYTE *a2, double a3)
{
  v4 = v3;
  v32 = a1 >> 62;
  v31 = *a2;
  if (!*a2 || *a2 != 1)
  {
    v7 = sub_248731880();

    if (v7)
    {
      goto LABEL_6;
    }

    if (v31 < 2)
    {
      v18 = sub_248731880();

      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  if (v32)
  {
    v8 = sub_248731790();
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_8:
      if (v8 < 1)
      {
LABEL_54:
        __break(1u);
        return;
      }

      swift_beginAccess();
      for (i = 0; i != v8; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1D7600](i, a1);
        }

        else
        {
          v10 = *(a1 + 8 * i + 32);
        }

        v11 = *(v10 + 32) - *(v4 + 32);
        if (v11 < 0.0 || v11 > a3)
        {
        }

        else
        {
          swift_beginAccess();

          MEMORY[0x24C1D71A0](v12);
          if (*((*(v4 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v17 = *((*(v4 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_248731260();
          }

          sub_2487312A0();
          swift_endAccess();
          if (qword_28150EE60 != -1)
          {
            swift_once();
          }

          v13 = sub_248730DF0();
          __swift_project_value_buffer(v13, qword_28150F088);

          v14 = sub_248730DD0();
          v15 = sub_2487313C0();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 134218240;
            *(v16 + 4) = *(v10 + 32);
            *(v16 + 12) = 2048;
            *(v16 + 14) = *(v4 + 32);
            _os_log_impl(&dword_2486BF000, v14, v15, "Found a matching turn happening at %f for an event happening at %f", v16, 0x16u);
            MEMORY[0x24C1D8100](v16, -1, -1);
          }
        }
      }
    }
  }

LABEL_25:
  if (!v31)
  {
    goto LABEL_30;
  }

  v19 = sub_248731880();

  if (v19)
  {
    goto LABEL_31;
  }

  if (v31 == 2)
  {
LABEL_30:
  }

  else
  {
    v20 = sub_248731880();

    if ((v20 & 1) == 0)
    {
      return;
    }
  }

LABEL_31:
  if (v32)
  {
    v21 = sub_248731790();
    if (!v21)
    {
      return;
    }
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      return;
    }
  }

  if (v21 < 1)
  {
    __break(1u);
    goto LABEL_54;
  }

  swift_beginAccess();
  for (j = 0; j != v21; ++j)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x24C1D7600](j, a1);
    }

    else
    {
      v23 = *(a1 + 8 * j + 32);
    }

    v24 = *(v4 + 32) - *(v23 + 32);
    if (v24 < 0.0 || v24 > a3)
    {
    }

    else
    {
      swift_beginAccess();

      MEMORY[0x24C1D71A0](v25);
      if (*((*(v4 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((*(v4 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      swift_endAccess();
      if (qword_28150EE60 != -1)
      {
        swift_once();
      }

      v26 = sub_248730DF0();
      __swift_project_value_buffer(v26, qword_28150F088);

      v27 = sub_248730DD0();
      v28 = sub_2487313C0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134218240;
        *(v29 + 4) = *(v23 + 32);
        *(v29 + 12) = 2048;
        *(v29 + 14) = *(v4 + 32);
        _os_log_impl(&dword_2486BF000, v27, v28, "Found a matching turn happening at %f for an event happening at %f", v29, 0x16u);
        MEMORY[0x24C1D8100](v29, -1, -1);
      }
    }
  }
}

BOOL sub_2486E995C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  swift_beginAccess();
  if (v3 != *(a1 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v4 = *(v1 + 40);
  swift_beginAccess();
  return v4 == *(a1 + 40);
}

BOOL sub_2486E9A04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (*(v3 + 40) != a1)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  swift_beginAccess();
  if (v6)
  {
    v7 = (a2 + 40);
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = *(v3 + 24);
      if (!*(v9 + 16))
      {
        goto LABEL_8;
      }

      v11 = *(v7 - 1);
      v10 = *v7;

      v12 = sub_2486C94CC(v11, v10);
      if ((v13 & 1) == 0)
      {
        break;
      }

      sub_2486C5B68(*(v9 + 56) + 32 * v12, v22);

      v14 = 1;
LABEL_9:
      sub_2486EA0BC(v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2486C4700(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v8 = sub_2486C4700((v15 > 1), v16 + 1, 1, v8);
      }

      *(v8 + 2) = v17;
      v8[v16 + 32] = v14;
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_17;
      }
    }

LABEL_8:
    v14 = 0;
    memset(v22, 0, sizeof(v22));
    goto LABEL_9;
  }

  v8 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
LABEL_17:
  v19 = v8 + 32;
  do
  {
    v18 = v17 == 0;
    if (!v17)
    {
      break;
    }

    v20 = *v19++;
    --v17;
  }

  while ((v20 & 1) != 0);

  return v18;
}

uint64_t sub_2486E9BC4(_BYTE *a1)
{
  v2 = *a1;
  if (*a1 && v2 == 1)
  {
LABEL_5:

    goto LABEL_6;
  }

  v3 = sub_248731880();

  if ((v3 & 1) == 0)
  {
    if (v2 < 2)
    {
      v7 = sub_248731880();

      if ((v7 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
  swift_beginAccess();
  sub_2486E8784((v1 + 48));
  swift_endAccess();
LABEL_7:
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = sub_248731880();

  if (v4)
  {
LABEL_13:
    swift_beginAccess();
    sub_2486E8784((v1 + 56));
    return swift_endAccess();
  }

  if (v2 == 2)
  {
LABEL_12:

    goto LABEL_13;
  }

  v5 = sub_248731880();

  if (v5)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2486E9DA4(_BYTE *a1)
{
  v2 = *a1;
  if (*a1 && v2 == 1)
  {
LABEL_5:

    goto LABEL_6;
  }

  v3 = sub_248731880();

  if ((v3 & 1) == 0)
  {
    if (v2 < 2)
    {
      v7 = sub_248731880();

      if ((v7 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
  swift_beginAccess();
  sub_2486E879C((v1 + 64));
  swift_endAccess();
LABEL_7:
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = sub_248731880();

  if (v4)
  {
LABEL_13:
    swift_beginAccess();
    sub_2486E879C((v1 + 72));
    return swift_endAccess();
  }

  if (v2 == 2)
  {
LABEL_12:

    goto LABEL_13;
  }

  v5 = sub_248731880();

  if (v5)
  {
    goto LABEL_13;
  }

  return result;
}

void *FeaturizedEvent.deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return v0;
}

uint64_t FeaturizedEvent.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2486EA01C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for FeaturizedEvent();
  result = sub_248731660();
  *a1 = result;
  return result;
}

void sub_2486EA084(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_2486EA0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA64E0, &qword_248733800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2486EA124(uint64_t a1)
{
  result = sub_2486EA14C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2486EA14C()
{
  result = qword_27EEA6318;
  if (!qword_27EEA6318)
  {
    type metadata accessor for FeaturizedEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6318);
  }

  return result;
}

id SequenceInterTurnFeatureExtractor.__allocating_init(maxSeconds:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation33SequenceInterTurnFeatureExtractor_maxSeconds] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SequenceInterTurnFeatureExtractor.init(maxSeconds:)(double a1)
{
  *&v1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation33SequenceInterTurnFeatureExtractor_maxSeconds] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SequenceInterTurnFeatureExtractor();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_2486EA53C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v93 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_134;
  }

  for (result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_248731790())
  {
    v7 = 0;
    v96 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation33SequenceInterTurnFeatureExtractor_maxSeconds;
    v103 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25InterTurnFeatureExtractor_features;
    v101 = v4 & 0xC000000000000001;
    v94 = v4 + 32;
    v95 = v4 & 0xFFFFFFFFFFFFFF8;
    v92 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    v99 = v4;
    v100 = result;
    v97 = a1;
    v98 = v3;
    while (!v101)
    {
      if (v7 >= *(v95 + 16))
      {
        goto LABEL_133;
      }

      v104 = *(v94 + 8 * v7);

      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_132;
      }

LABEL_12:
      v102 = v9;
      if (!*(a1 + 16))
      {
        goto LABEL_55;
      }

      v10 = *(v3 + v96);
      v11 = sub_2486C94CC(*(v104 + 5), *(v104 + 6));
      if ((v12 & 1) == 0)
      {
        goto LABEL_55;
      }

      a1 = *(*(a1 + 56) + 8 * v11);
      if (v101)
      {
        v13 = MEMORY[0x24C1D7600](a1, v4);
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          result = sub_2487318B0();
          __break(1u);
          return result;
        }

        if (a1 >= *(v95 + 16))
        {
          goto LABEL_137;
        }

        v13 = *(v94 + 8 * a1);
      }

      swift_beginAccess();
      v14 = *(v13 + 24);

      v15 = sub_2486C86E8(0x74736F702E525341, 0xEB000000006E7449, v14);

      if (!v15)
      {
        goto LABEL_54;
      }

      if (!v15[2])
      {

LABEL_55:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v111 = 0u;
        v112[0] = 0u;
        v36 = 0.0;
        v37 = 1;
        v38 = 1;
        goto LABEL_56;
      }

      v16 = v15[4];
      v17 = v15[5];

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (!v18)
      {
LABEL_54:

        goto LABEL_55;
      }

      v19 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_138;
      }

      if (v100 < v19)
      {
        goto LABEL_139;
      }

      if (v93)
      {
        v20 = sub_248731790();
      }

      else
      {
        v20 = *(v95 + 16);
      }

      if (v20 < v19)
      {
        goto LABEL_140;
      }

      if (v19 < 0)
      {
        goto LABEL_141;
      }

      if (v93)
      {
        v21 = sub_248731790();
      }

      else
      {
        v21 = *(v95 + 16);
      }

      if (v21 < v100)
      {
        goto LABEL_142;
      }

      if (!v101 || v19 == v100)
      {

        if (!v93)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v19 >= v100)
        {
          goto LABEL_144;
        }

        a1 = type metadata accessor for FeaturizedConversationTurn();

        v22 = v19;
        do
        {
          v23 = v22 + 1;
          sub_248731670();
          v22 = v23;
        }

        while (v100 != v23);
        if (!v93)
        {
LABEL_42:
          v4 = v100;
          v24 = v92;
          goto LABEL_45;
        }
      }

      sub_2487317A0();
      v24 = v25;
      v19 = v26;
      v4 = v27 >> 1;
LABEL_45:
      *&v111 = MEMORY[0x277D84F90];
      swift_unknownObjectRetain();
      for (; v4 != v19; ++v19)
      {
        if (v19 >= v4)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v79 = *(v24 + 8 * v19);
        swift_beginAccess();
        a1 = *(v79 + 24);

        v80 = sub_2486C86E8(0x74736F702E525341, 0xEB000000006E7449, a1);

        if (v80)
        {
          if (v80[2])
          {
            a1 = v80[4];
            v81 = v80[5];

            v82 = HIBYTE(v81) & 0xF;
            if ((v81 & 0x2000000000000000) == 0)
            {
              v82 = a1 & 0xFFFFFFFFFFFFLL;
            }

            if (v82)
            {
              a1 = &v111;
              sub_2487316B0();
              v83 = *(v111 + 16);
              sub_2487316E0();
              sub_2487316F0();
              sub_2487316C0();
              continue;
            }
          }

          else
          {
          }
        }
      }

      swift_unknownObjectRelease_n();
      v28 = v111;
      if ((v111 & 0x8000000000000000) != 0 || (v111 & 0x4000000000000000) != 0)
      {
        if (!sub_248731790())
        {
          goto LABEL_53;
        }
      }

      else if (!*(v111 + 16))
      {
LABEL_53:

        goto LABEL_54;
      }

      if ((v28 & 0xC000000000000001) == 0)
      {
        if (*(v28 + 16))
        {
          v29 = *(v28 + 32);

          goto LABEL_52;
        }

        goto LABEL_143;
      }

      v30 = MEMORY[0x24C1D7600](0, v28);
LABEL_52:
      v31 = *(v30 + 32);
      v32 = *(v13 + 32);

      if (vabdd_f64(v32, v31) > v10)
      {
        goto LABEL_53;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v84 = MEMORY[0x24C1D7600](0, v28);
      }

      else
      {
        v84 = *(v28 + 32);
      }

      v85 = v84[4];
      v86 = v104[4];
      swift_retain_n();
      if (sub_2486C8184() & 1) != 0 && (sub_2486C8184())
      {

        v88 = sub_2486ECCD8(v104, v84, 0x74736F702E525341, 0xEB000000006E7449);
        v37 = v89;

        if (v37)
        {
          v35 = 0;
        }

        else
        {
          v35 = v88;
        }
      }

      else
      {

        v35 = 0;
        v37 = 1;
      }

      if (sub_2486C824C() & 1) != 0 && (sub_2486C824C())
      {

        *&v87 = COERCE_DOUBLE(sub_2486ECCD8(v104, v84, 0x6E6F68702E525341, 0xEC00000073656D65));
        v38 = v90;
        v91 = *&v87;

        if (v38)
        {
          v36 = 0.0;
        }

        else
        {
          v36 = v91;
        }
      }

      else
      {

        v38 = 1;
        v36 = 0.0;
      }

      v34 = *(v84 + 5);
      v33 = *(v84 + 6);

      *(&v112[0] + 1) = MEMORY[0x277D839F8];
      *&v111 = vabdd_f64(v86, v85);
LABEL_56:
      swift_beginAccess();
      if (*(&v112[0] + 1))
      {
        sub_2486C79A0(&v111, &v108);
        v39 = *(v3 + v103);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v114 = *(v3 + v103);
        *(v3 + v103) = 0x8000000000000000;
        sub_2486EC320(&v108, 0xD000000000000024, 0x80000002487396D0, isUniquelyReferenced_nonNull_native);
        *(v3 + v103) = v114;
        if (v37)
        {
          goto LABEL_58;
        }
      }

      else
      {
        sub_2486C7940(&v111, &qword_27EEA64E0, &qword_248733800);
        sub_2486EBB14(0xD000000000000024, 0x80000002487396D0, &v108);
        sub_2486C7940(&v108, &qword_27EEA64E0, &qword_248733800);
        if (v37)
        {
LABEL_58:
          v111 = 0u;
          v112[0] = 0u;
          sub_2486C7940(&v111, &qword_27EEA64E0, &qword_248733800);
          v41 = v103;
          sub_2486EBB14(0xD00000000000002DLL, 0x8000000248739740, &v108);
          sub_2486C7940(&v108, &qword_27EEA64E0, &qword_248733800);
          if ((v38 & 1) == 0)
          {
            goto LABEL_59;
          }

LABEL_63:
          v111 = 0u;
          v112[0] = 0u;
          sub_2486C7940(&v111, &qword_27EEA64E0, &qword_248733800);
          sub_2486EBB14(0xD000000000000031, 0x8000000248739700, &v108);
          sub_2486C7940(&v108, &qword_27EEA64E0, &qword_248733800);
          if (v33)
          {
            goto LABEL_60;
          }

LABEL_64:
          v111 = 0u;
          v112[0] = 0u;
          sub_2486C7940(&v111, &qword_27EEA64E0, &qword_248733800);
          sub_2486EBB14(0xD00000000000001ALL, 0x8000000248739770, &v108);
          sub_2486C7940(&v108, &qword_27EEA64E0, &qword_248733800);
          goto LABEL_65;
        }
      }

      *(&v112[0] + 1) = MEMORY[0x277D839F8];
      *&v111 = v35;
      sub_2486C79A0(&v111, &v108);
      v41 = v103;
      v46 = *(v3 + v103);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v114 = *(v3 + v103);
      *(v3 + v103) = 0x8000000000000000;
      sub_2486EC320(&v108, 0xD00000000000002DLL, 0x8000000248739740, v47);
      *(v3 + v103) = v114;
      if (v38)
      {
        goto LABEL_63;
      }

LABEL_59:
      *(&v112[0] + 1) = MEMORY[0x277D839F8];
      *&v111 = v36;
      sub_2486C79A0(&v111, &v108);
      v42 = *(v3 + v41);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v114 = *(v3 + v41);
      *(v3 + v41) = 0x8000000000000000;
      sub_2486EC320(&v108, 0xD000000000000031, 0x8000000248739700, v43);
      *(v3 + v41) = v114;
      if (!v33)
      {
        goto LABEL_64;
      }

LABEL_60:
      *(&v112[0] + 1) = MEMORY[0x277D837D0];
      *&v111 = v34;
      *(&v111 + 1) = v33;
      sub_2486C79A0(&v111, &v108);
      v44 = *(v3 + v41);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v114 = *(v3 + v41);
      *(v3 + v41) = 0x8000000000000000;
      sub_2486EC320(&v108, 0xD00000000000001ALL, 0x8000000248739770, v45);
      *(v3 + v41) = v114;
LABEL_65:
      swift_endAccess();
      v48 = *(v3 + v41);
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      v49 = *(v104 + 3);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      a1 = *(v104 + 3);
      v113 = a1;
      v104[3] = -0.0;
      v51 = v48 + 64;
      v52 = 1 << *(v48 + 32);
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      else
      {
        v53 = -1;
      }

      v3 = v53 & *(v48 + 64);
      v4 = (v52 + 63) >> 6;
      v105 = v48;

      v54 = 0;
      while (1)
      {
        if (!v3)
        {
          if (v4 <= v54 + 1)
          {
            v57 = v54 + 1;
          }

          else
          {
            v57 = v4;
          }

          v58 = v57 - 1;
          while (1)
          {
            v56 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              break;
            }

            if (v56 >= v4)
            {
              v3 = 0;
              v110 = 0u;
              v54 = v58;
              v108 = 0u;
              v109 = 0u;
              goto LABEL_82;
            }

            v3 = *(v51 + 8 * v56);
            ++v54;
            if (v3)
            {
              v54 = v56;
              goto LABEL_81;
            }
          }

          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v56 = v54;
LABEL_81:
        v59 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v60 = v59 | (v56 << 6);
        v61 = (*(v105 + 48) + 16 * v60);
        v63 = *v61;
        v62 = v61[1];
        sub_2486C5B68(*(v105 + 56) + 32 * v60, &v106);
        *&v108 = v63;
        *(&v108 + 1) = v62;
        sub_2486C79A0(&v106, &v109);

LABEL_82:
        v106 = v108;
        v107[0] = v109;
        v107[1] = v110;
        v64 = *(&v108 + 1);
        if (!*(&v108 + 1))
        {
          break;
        }

        v65 = v106;
        sub_2486C5B68(v107, v112);
        *&v111 = v65;
        *(&v111 + 1) = v64;

        sub_2486C7940(&v106, &qword_27EEA6328, &qword_248734838);
        v66 = *(&v111 + 1);
        if (!*(&v111 + 1))
        {
          goto LABEL_5;
        }

        v67 = v111;
        sub_2486C79A0(v112, &v108);
        v69 = sub_2486C94CC(v67, v66);
        v70 = *(a1 + 16);
        v71 = (v68 & 1) == 0;
        v72 = v70 + v71;
        if (__OFADD__(v70, v71))
        {
          goto LABEL_129;
        }

        v73 = v68;
        if (*(a1 + 24) >= v72)
        {
          if (v50)
          {
            a1 = v113;
            if (v68)
            {
              goto LABEL_69;
            }
          }

          else
          {
            sub_2486E62F4();
            a1 = v113;
            if (v73)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          sub_2486E45C8(v72, v50 & 1);
          v74 = sub_2486C94CC(v67, v66);
          if ((v73 & 1) != (v75 & 1))
          {
            goto LABEL_145;
          }

          v69 = v74;
          a1 = v113;
          if (v73)
          {
LABEL_69:

            v55 = (*(a1 + 56) + 32 * v69);
            __swift_destroy_boxed_opaque_existential_0(v55);
            sub_2486C79A0(&v108, v55);
            goto LABEL_70;
          }
        }

        *(a1 + 8 * (v69 >> 6) + 64) |= 1 << v69;
        v76 = (*(a1 + 48) + 16 * v69);
        *v76 = v67;
        v76[1] = v66;
        sub_2486C79A0(&v108, (*(a1 + 56) + 32 * v69));
        v77 = *(a1 + 16);
        v8 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v8)
        {
          goto LABEL_130;
        }

        *(a1 + 16) = v78;
LABEL_70:
        v50 = 1;
      }

      memset(v112, 0, sizeof(v112));
      v111 = 0u;
LABEL_5:

      *(v104 + 3) = a1;
      swift_endAccess();

      v4 = v99;
      v7 = v102;
      a1 = v97;
      v3 = v98;
      if (v102 == v100)
      {
        return result;
      }
    }

    v104 = MEMORY[0x24C1D7600](v7, v4);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    ;
  }

  return result;
}

uint64_t sub_2486EB39C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), unint64_t a6, uint64_t a7, char a8)
{
  v11 = a4;
  v13 = a4 >> 62;
  if (a4 >> 62)
  {
    goto LABEL_58;
  }

  v14 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    return 0;
  }

  while (1)
  {
    if (!*(a3 + 16))
    {
      return 0;
    }

    v43 = a8;
    v42 = *&a7;
    v15 = sub_2486C94CC(a1, a2);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    v17 = *(a3 + 56);
    v18 = *(v17 + 8 * v15);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1D7600](*(v17 + 8 * v15), v11);
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v18 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v8 = *(v11 + 8 * v18 + 32);
    }

    a3 = a6;
    if ((a5(v8) & 1) == 0)
    {
      goto LABEL_50;
    }

    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_63;
    }

    if (v14 < v20)
    {
      goto LABEL_64;
    }

    if (v13)
    {
      v21 = sub_248731790();
    }

    else
    {
      v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < v20)
    {
      goto LABEL_65;
    }

    if (v20 < 0)
    {
      goto LABEL_66;
    }

    if (v13)
    {
      v22 = sub_248731790();
    }

    else
    {
      v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22 < v14)
    {
      goto LABEL_67;
    }

    if ((v11 & 0xC000000000000001) == 0 || v20 == v14)
    {

      if (!v13)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v20 >= v14)
      {
        __break(1u);
        goto LABEL_71;
      }

      type metadata accessor for FeaturizedConversationTurn();

      v23 = v20;
      do
      {
        v24 = v23 + 1;
        sub_248731670();
        v23 = v24;
      }

      while (v14 != v24);
      if (!v13)
      {
LABEL_27:
        v11 &= 0xFFFFFFFFFFFFFF8uLL;
        v13 = v11 + 32;
        goto LABEL_30;
      }
    }

    v11 = sub_2487317A0();
    v13 = v25;
    v20 = v26;
    v14 = v27 >> 1;
LABEL_30:
    a3 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
    a1 = swift_unknownObjectRetain();
    if (v20 != v14)
    {
      while (v20 < v14)
      {
        v28 = *(v13 + 8 * v20);

        a3 = a6;
        if (a5(v29))
        {
          sub_2487316B0();
          v30 = v44[2];
          sub_2487316E0();
          sub_2487316F0();
          a3 = &v44;
          a1 = sub_2487316C0();
        }

        else
        {
        }

        if (v14 == ++v20)
        {
          a3 = v44;
          goto LABEL_38;
        }
      }

      goto LABEL_57;
    }

LABEL_38:
    result = swift_unknownObjectRelease_n();
    if ((a3 & 0x8000000000000000) == 0 && (a3 & 0x4000000000000000) == 0)
    {
      v32 = v43;
      if (!*(a3 + 16))
      {
        goto LABEL_49;
      }

      goto LABEL_41;
    }

LABEL_68:
    result = sub_248731790();
    v32 = v43;
    if (!result)
    {
LABEL_49:

LABEL_50:

      return 0;
    }

LABEL_41:
    if (v32)
    {
      break;
    }

    a6 = a3 & 0xC000000000000001;
    if ((a3 & 0xC000000000000001) == 0)
    {
      if (!*(a3 + 16))
      {
        goto LABEL_73;
      }

      v34 = *(a3 + 32);

      goto LABEL_48;
    }

LABEL_71:
    v35 = MEMORY[0x24C1D7600](0, a3);
LABEL_48:
    v36 = *(v35 + 32);
    v37 = *(v8 + 32);

    if (vabdd_f64(v37, v36) > v42)
    {
      goto LABEL_49;
    }

    if (a6)
    {
      goto LABEL_53;
    }

    if (*(a3 + 16))
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v8 = a1;
    v38 = a7;
    v39 = a8;
    v40 = a2;
    v41 = sub_248731790();
    a2 = v40;
    a8 = v39;
    a7 = v38;
    v14 = v41;
    a1 = v8;
    if (!v14)
    {
      return 0;
    }
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_53:
    v33 = MEMORY[0x24C1D7600](0, a3);
    goto LABEL_54;
  }

  if (*(a3 + 16))
  {
LABEL_44:
    v33 = *(a3 + 32);

LABEL_54:

    return v33;
  }

  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_2486EB75C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return fabs(*(a1 + 32) - *(a2 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t static SequenceInterTurnFeatureExtractor.textSimilarityScoreBetweenTurns(_:_:)(uint64_t a1, uint64_t a2)
{
  result = sub_2486ECCD8(a1, a2, 0x74736F702E525341, 0xEB000000006E7449);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2486EB858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  if (((a3)(v11) & 1) == 0 || (a3() & 1) == 0)
  {

    return 0;
  }

  v12 = sub_2486ECCD8(a1, a2, a4, a5);
  v14 = v13;

  if (!v5)
  {
    if ((v14 & 1) == 0)
    {
      return v12;
    }

    return 0;
  }

  return result;
}

uint64_t static SequenceInterTurnFeatureExtractor.phoneticRestatementScoreBetweenTurns(_:_:)(uint64_t a1, uint64_t a2)
{
  result = sub_2486ECCD8(a1, a2, 0x6E6F68702E525341, 0xEC00000073656D65);
  if (v2)
  {
    return v4;
  }

  return result;
}

id SequenceInterTurnFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SequenceInterTurnFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SequenceInterTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2486EBA40(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2486EBAA0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

double sub_2486EBB14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2486C94CC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2486E62F4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2486C79A0((*(v12 + 56) + 32 * v9), a3);
    sub_2486EBDD4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2486EBBB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_2486C94CC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2486E68F4();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_2486EBF84(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_2486EBC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2486C94CC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2486E6A5C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_248730970();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_2486EC134(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_248730970();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2486EBDD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2487315D0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_248731910();

      sub_2487310D0();
      v14 = sub_248731930();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2486EBF84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2487315D0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_248731910();

      sub_2487310D0();
      v13 = sub_248731930();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
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

LABEL_4:
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

  return result;
}

unint64_t sub_2486EC134(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2487315D0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_248731910();

      sub_2487310D0();
      v13 = sub_248731930();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_248730970() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2486EC320(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2486C94CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2486E62F4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2486E45C8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2486C94CC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2487318B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_2486C79A0(a1, v23);
  }

  else
  {
    sub_2486E6104(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2486EC470(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2486C94CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_2486E65E4();
      result = v19;
      goto LABEL_8;
    }

    sub_2486E4AE4(v16, a4 & 1);
    v20 = *v5;
    result = sub_2486C94CC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_2487318B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_2486E6170(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_2486EC5A0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2486C94CC(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_2486E68F4();
      result = v19;
      goto LABEL_8;
    }

    sub_2486E5048(v16, a3 & 1);
    v20 = *v5;
    result = sub_2486C94CC(a1, a2);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_2487318B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
  }

  else
  {
    sub_2486E61B8(result, a1, a2, v22, a4);
  }

  return result;
}

uint64_t sub_2486EC6C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2486C94CC(a2, a3);
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
      sub_2486E6A5C();
      goto LABEL_7;
    }

    sub_2486E52EC(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_2486C94CC(a2, a3);
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
    result = sub_2487318B0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_248730970();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2486E6200(v12, a2, a3, a1, v18);
}

uint64_t sub_2486EC8C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2486C94CC(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_2486C94CC(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_2487318B0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_2486ECA34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2486C94CC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2486E6FC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2486E5BB0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2486C94CC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_2487318B0();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_2486E6170(v11, a2, a3, a1, v22);
}

uint64_t sub_2486ECB78@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2486C5B68(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_2486C79A0(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_2486C7940(v22, &qword_27EEA6328, &qword_248734838);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id DeviceLockedEventFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceLockedEventFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceLockedEventFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486ED0B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 starting];
    v9 = MEMORY[0x277D839B0];
    v8[0] = v7;
    swift_beginAccess();
    sub_2486C6800(v8, 0xD00000000000001BLL, 0x8000000248739790);
    swift_endAccess();
  }
}

id DeviceLockedEventFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceLockedEventFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UserFocusStatusChangeFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserFocusStatusChangeFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserFocusStatusChangeFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486ED2A0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 statusChangeType];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v15[2] = 0;
    }

    v15[0] = v9;
    v15[1] = v11;
    v16 = v12;
    swift_beginAccess();
    sub_2486C6800(v15, 0xD000000000000026, 0x800000024873A5E0);
    swift_endAccess();
    v13 = [v5 idsHandles];
    v14 = sub_248731240();

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
    v15[0] = v14;
    swift_beginAccess();
    sub_2486C6800(v15, 0xD000000000000020, 0x800000024873A610);
    swift_endAccess();
  }
}

id UserFocusStatusChangeFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserFocusStatusChangeFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AppIntentFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486ED55C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v50 = v3;
    v6 = [v5 bundleID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_248730FF0();
      v10 = v9;

      v11 = MEMORY[0x277D837D0];
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v11 = 0;
      v53 = 0;
    }

    v51 = v8;
    v52 = v10;
    v54 = v11;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000012, 0x80000002487398A0);
    swift_endAccess();
    v12 = [v5 donatedBySiri];
    v54 = MEMORY[0x277D839B0];
    LOBYTE(v51) = v12;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000017, 0x80000002487398C0);
    swift_endAccess();
    v13 = [v5 itemID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_248730FF0();
      v17 = v16;

      v18 = MEMORY[0x277D837D0];
    }

    else
    {
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v53 = 0;
    }

    v19 = MEMORY[0x277D837D0];
    v51 = v15;
    v52 = v17;
    v54 = v18;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD00000000000001ALL, 0x80000002487398E0);
    swift_endAccess();
    v20 = [v5 intentClass];
    if (v20)
    {
      v21 = v20;
      v22 = sub_248730FF0();
      v24 = v23;

      v25 = MEMORY[0x277D837D0];
    }

    else
    {
      v22 = 0;
      v24 = 0;
      v25 = 0;
      v53 = 0;
    }

    v51 = v22;
    v52 = v24;
    v54 = v25;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000015, 0x8000000248739900);
    swift_endAccess();
    v26 = [v5 handlingStatus];
    type metadata accessor for BMAppIntentHandlingStatus(0);
    v54 = v27;
    LODWORD(v51) = v26;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000018, 0x8000000248739920);
    swift_endAccess();
    v28 = [v5 intentType];
    type metadata accessor for BMAppIntentType(0);
    v54 = v29;
    LODWORD(v51) = v28;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000014, 0x8000000248739940);
    swift_endAccess();
    [v5 handlingStatus];
    v30 = BMAppIntentHandlingStatusAsString();
    v31 = sub_248730FF0();
    v33 = v32;

    v54 = v19;
    v51 = v31;
    v52 = v33;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000020, 0x8000000248739960);
    swift_endAccess();
    [v5 intentType];
    v34 = BMAppIntentTypeAsString();
    v35 = sub_248730FF0();
    v37 = v36;

    v54 = v19;
    v51 = v35;
    v52 = v37;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD00000000000001CLL, 0x8000000248739990);
    swift_endAccess();
    v38 = [v5 intentVerb];
    if (v38)
    {
      v39 = v38;
      v40 = sub_248730FF0();
      v42 = v41;

      v43 = MEMORY[0x277D837D0];
    }

    else
    {
      v40 = 0;
      v42 = 0;
      v43 = 0;
      v53 = 0;
    }

    v51 = v40;
    v52 = v42;
    v54 = v43;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000014, 0x80000002487399B0);
    swift_endAccess();
    v44 = [v5 interactionDirection];
    type metadata accessor for BMAppIntentInteractionDirection(0);
    v54 = v45;
    LODWORD(v51) = v44;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD00000000000001ELL, 0x80000002487399D0);
    swift_endAccess();
    [v5 interactionDirection];
    v46 = BMAppIntentInteractionDirectionAsString();
    v47 = sub_248730FF0();
    v49 = v48;

    v54 = v19;
    v51 = v47;
    v52 = v49;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000026, 0x80000002487399F0);
    swift_endAccess();
  }
}

id AppIntentFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t static ConversationUtils.conversationTurnTypeToString(turnType:)(uint64_t a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t static ConversationUtils.stringToConversationTurnType(typeString:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000024873B500 == a2 || (sub_248731880() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0xD000000000000018 && 0x800000024873B4E0 == a2)
  {
    return 1;
  }

  if (sub_248731880())
  {
    return 1;
  }

  return 2;
}

id ConversationUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConversationUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2486EDED0(char *a1)
{
  v4 = v1;
  v6 = sub_2487309B0();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_dimEvents;
  swift_beginAccess();
  v13 = *&a1[v12];
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v42 = *&a1[v12];
    }

    v14 = sub_248731790();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = off_278F52000;
  v78 = v4;
  v79 = v12;
  if (!v14)
  {
    goto LABEL_13;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x24C1D7600](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_92;
    }

    v16 = *(v13 + 32);
  }

  v17 = [v16 deviceFixedContext];

  if (!v17)
  {
LABEL_13:
    if (qword_28150EE60 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_99;
  }

  [v17 timeIntervalSince1970];
  v3 = v18;

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v19 = sub_248730DF0();
  __swift_project_value_buffer(v19, qword_28150F088);
  v20 = a1;
  v21 = sub_248730DD0();
  v22 = sub_2487313C0();

  if (os_log_type_enabled(v21, v22))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v80 = v12;
    *v4 = 134218242;
    *(v4 + 4) = v3;
    *(v4 + 12) = 2080;
    v23 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    (v7[2])(v11, &v20[v23], v6);
    v24 = sub_248730980();
    v26 = v25;
    (v7[1])(v11, v6);
    v27 = sub_2486D3010(v24, v26, &v80);

    *(v4 + 14) = v27;
    _os_log_impl(&dword_2486BF000, v21, v22, "Extracted  timestamp: %f for turn %s", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1D8100](v12, -1, -1);
    MEMORY[0x24C1D8100](v4, -1, -1);
  }

  LOBYTE(v15) = 0;
  while (1)
  {
    v2 = v79;
    v37 = *&a1[v79];
    v7 = off_278F52000;
    if (v37 >> 62)
    {
      if (v37 < 0)
      {
        v43 = *&a1[v79];
      }

      if (!sub_248731790())
      {
        goto LABEL_31;
      }
    }

    else if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    if ((v37 & 0xC000000000000001) != 0)
    {

      v38 = MEMORY[0x24C1D7600](0, v37);
    }

    else
    {
      if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_94;
      }

      v38 = *(v37 + 32);
    }

    v39 = [v38 deviceFixedContext];

    if (v39)
    {
      v40 = [v39 deviceType];

      if (v40)
      {
        v76 = sub_248730FF0();
        v6 = v41;

        goto LABEL_32;
      }
    }

LABEL_31:
    v76 = 0;
    v6 = 0;
LABEL_32:
    v13 = *&a1[v2];
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v46 = *&a1[v2];
      }

      if (!sub_248731790())
      {
        goto LABEL_42;
      }
    }

    else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    if ((v13 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_92:

    v44 = MEMORY[0x24C1D7600](0, v13);

LABEL_37:
    v45 = [v44 v7[388]];

    if (v45)
    {
      v11 = [v45 dataSharingOptInState];

      LOBYTE(v12) = 0;
      goto LABEL_43;
    }

LABEL_42:
    v11 = 0;
    LOBYTE(v12) = 1;
LABEL_43:
    v37 = *&a1[v2];
    if (v37 >> 62)
    {
      if (v37 < 0)
      {
        v64 = *&a1[v2];
      }

      v47 = sub_248731790();
    }

    else
    {
      v47 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v6;
    HIDWORD(v74) = v11;
    if (!v47)
    {
      v75 = 0;
      v4 = 0;
      LODWORD(v74) = 0;
      v11 = 1;
      goto LABEL_56;
    }

    if ((v37 & 0xC000000000000001) == 0)
    {
      if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_98;
      }

      v48 = v15;
      v49 = *(v37 + 32);
      goto LABEL_49;
    }

LABEL_94:
    v48 = v15;

    v49 = MEMORY[0x24C1D7600](0, v37);

LABEL_49:
    v50 = [v49 v7[388]];

    if (v50)
    {
      v51 = [v50 siriInputLocale];

      LODWORD(v74) = v51;
      if (v51 > 0x3E)
      {
        v52 = @"LOCALE_UNKNOWN_LOCALE";
        v53 = @"LOCALE_UNKNOWN_LOCALE";
      }

      else
      {
        v52 = off_278F51FE0[v51];
        v53 = off_278F521D8[v51];
      }

      LOBYTE(v15) = v48;
      v54 = v52;
      v55 = v53;
      v75 = sub_248730FF0();
      v4 = v56;

      v11 = 0;
    }

    else
    {
      v75 = 0;
      v4 = 0;
      LODWORD(v74) = 0;
      v11 = 1;
      LOBYTE(v15) = v48;
    }

LABEL_56:
    v13 = *&a1[v2];
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v65 = *&a1[v2];
      }

      if (!sub_248731790())
      {
        goto LABEL_71;
      }
    }

    else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_71;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_96;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v57 = *(v13 + 32);
      goto LABEL_61;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
LABEL_14:
    v28 = sub_248730DF0();
    __swift_project_value_buffer(v28, qword_28150F088);
    v29 = a1;
    v30 = sub_248730DD0();
    v31 = sub_2487313C0();

    if (os_log_type_enabled(v30, v31))
    {
      v4 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v80 = v12;
      *v4 = 136315138;
      v32 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
      swift_beginAccess();
      (v7[2])(v11, &v29[v32], v6);
      v33 = sub_248730980();
      v35 = v34;
      (v7[1])(v11, v6);
      v36 = sub_2486D3010(v33, v35, &v80);

      *(v4 + 4) = v36;
      _os_log_impl(&dword_2486BF000, v30, v31, "Failed to extract DIM timestamp for turn: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C1D8100](v12, -1, -1);
      MEMORY[0x24C1D8100](v4, -1, -1);
    }

    LOBYTE(v15) = 1;
    v3 = 0;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v13 + 32);
    goto LABEL_37;
  }

  __break(1u);
LABEL_96:

  v57 = MEMORY[0x24C1D7600](0, v13);

LABEL_61:
  v58 = [v57 v7[388]];

  if (v58 && (v59 = [v58 systemBuild], v58, v59))
  {
    v60 = sub_248730FF0();
    v62 = v61;

    if ((v15 & 1) == 0)
    {
LABEL_64:
      v63 = MEMORY[0x277D839F8];
      goto LABEL_73;
    }
  }

  else
  {
LABEL_71:
    v60 = 0;
    v62 = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  v63 = 0;
  v81 = 0;
  v82 = 0;
  v3 = 0;
LABEL_73:
  v80 = v3;
  v83 = v63;
  swift_beginAccess();
  sub_2486C6800(&v80, 0xD000000000000019, 0x8000000248739390);
  v66 = 0;
  if (v12)
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
  }

  else
  {
    type metadata accessor for SISchemaDataSharingOptInState(0);
    LODWORD(v80) = HIDWORD(v74);
  }

  v83 = v66;
  sub_2486C6800(&v80, 0xD000000000000019, 0x80000002487393B0);
  v67 = 0;
  if (v11)
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
  }

  else
  {
    type metadata accessor for SISchemaLocale(0);
    LODWORD(v80) = v74;
  }

  v83 = v67;
  sub_2486C6800(&v80, 0xD000000000000013, 0x80000002487393D0);
  if (v77)
  {
    v68 = MEMORY[0x277D837D0];
    v69 = v76;
  }

  else
  {
    v69 = 0;
    v68 = 0;
    v82 = 0;
  }

  v80 = v69;
  v81 = v77;
  v83 = v68;
  sub_2486C6800(&v80, 0x697665642E4D4944, 0xEE00657079546563);
  if (v62)
  {
    v70 = MEMORY[0x277D837D0];
  }

  else
  {
    v60 = 0;
    v70 = 0;
    v82 = 0;
  }

  v80 = v60;
  v81 = v62;
  v83 = v70;
  sub_2486C6800(&v80, 0x747379732E4D4944, 0xEF646C6975426D65);
  if (v4)
  {
    v71 = MEMORY[0x277D837D0];
    v72 = v75;
  }

  else
  {
    v72 = 0;
    v71 = 0;
    v82 = 0;
  }

  v80 = v72;
  v81 = v4;
  v83 = v71;
  sub_2486C6800(&v80, 0xD00000000000001BLL, 0x80000002487393F0);
  return swift_endAccess();
}

uint64_t sub_2486EE940()
{
  sub_248730C20();
  v0 = sub_2486CF4C4(0, &qword_27EEA6338, 0x277D57038);
  v1 = sub_2486CF428();
  v2 = *(v1 + 52);
  v3 = (*(v1 + 48) + 7) & 0x1FFFFFFF8;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2487335F0;
  *(v4 + 32) = sub_2486CF4C4(0, &qword_27EEA6340, 0x277D57048);
  v5 = MEMORY[0x24C1D6B80](v0, v4);

  return v5;
}

id DIMFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DIMFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DIMFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DIMFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DIMFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static CATUtils.speakeasyCategory(from:by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1819047246;
  if (*(a3 + 16))
  {
    v5 = sub_2486C94CC(a1, a2);
    if (v6)
    {
      v7 = (*(a3 + 56) + 16 * v5);
      v3 = *v7;
      v8 = v7[1];
    }
  }

  return v3;
}

unint64_t sub_2486EEB58()
{
  v18[4] = *MEMORY[0x277D85DE8];
  v0 = sub_2486D38BC(MEMORY[0x277D84F90]);
  v7 = sub_248730860();
  v9 = v8;
  v10 = objc_opt_self();
  v11 = sub_2487308A0();
  v18[0] = 0;
  v12 = [v10 JSONObjectWithData:v11 options:1 error:v18];

  if (v12)
  {
    v13 = v18[0];
    sub_2487315A0();
    sub_2486CC7FC(v7, v9);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6348, &qword_248734A88);
    if (swift_dynamicCast())
    {

      v0 = v17;
    }
  }

  else
  {
    v14 = v18[0];
    v15 = sub_2487307E0();

    swift_willThrow();
    v16 = v15;
    sub_2486CC7FC(v7, v9);
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v1 = sub_248730DF0();
    __swift_project_value_buffer(v1, qword_28150F088);
    v2 = sub_248730DD0();
    v3 = sub_2487313D0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2486BF000, v2, v3, "Unable to parse CatIdToSpeakeasyCategory", v4, 2u);
      MEMORY[0x24C1D8100](v4, -1, -1);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v0;
}

unint64_t _s26DeepThoughtBiomeFoundation8CATUtilsO24catIdToSpeakeasyCategory6bundleSDyS2SGSo8NSBundleC_tFZ_0(void *a1)
{
  v2 = sub_248730850();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2486D38BC(MEMORY[0x277D84F90]);
  v9 = sub_248730FC0();
  v10 = sub_248730FC0();
  v11 = [a1 URLForResource:v9 withExtension:v10];

  if (v11)
  {

    sub_248730830();

    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v12 = sub_248730DF0();
    __swift_project_value_buffer(v12, qword_28150F088);
    v13 = a1;
    v14 = sub_248730DD0();
    v15 = sub_2487313D0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_2486BF000, v14, v15, "Loading CatIdToSpeakeasyCategory mapping from Bundle %@", v16, 0xCu);
      sub_2486EF19C(v17);
      MEMORY[0x24C1D8100](v17, -1, -1);
      MEMORY[0x24C1D8100](v16, -1, -1);
    }

    v8 = sub_2486EEB58();
    (*(v3 + 8))(v7, v2);
  }

  return v8;
}

uint64_t _s26DeepThoughtBiomeFoundation8CATUtilsO15classAndUseCase4from10lowercasedS2S_SbtFZ_0(uint64_t a1, unint64_t a2, char a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 1819047246;
  }

  sub_2486D8A18();
  *(sub_248731570() + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6350, qword_248734A90);
  sub_2486EF138();
  v5 = sub_248730F90();

  if (a3)
  {
    v5 = sub_248731050();
  }

  return v5;
}

unint64_t sub_2486EF138()
{
  result = qword_27EEA6358;
  if (!qword_27EEA6358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA6350, qword_248734A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6358);
  }

  return result;
}

uint64_t sub_2486EF19C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6330, qword_248734840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2486EF204(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents;
  swift_beginAccess();
  v5 = *(a1 + v4);

  v7 = sub_2486EFD10(v6);

  v75 = v4;
  v76 = a1;
  v8 = *(a1 + v4);

  v10 = sub_2486EFEA0(v9);

  v102 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
LABEL_84:
    v11 = sub_248731790();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_85:

    v59 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    v87 = MEMORY[0x277D84F90];
    v60 = *(MEMORY[0x277D84F90] + 16);
    if (!v60)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_85;
  }

LABEL_3:
  if (v10 >> 62)
  {
LABEL_98:
    v92 = v10 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_248731790();
  }

  else
  {
    v92 = v10 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v82 = v7 & 0xC000000000000001;
  v78 = v7 & 0xFFFFFFFFFFFFFF8;
  v79 = v7;
  v77 = v7 + 32;
  v14 = v10 & 0xC000000000000001;
  v91 = v10 + 32;
  v15 = off_278F52000;
  v16 = MEMORY[0x277D84F90];
  v87 = MEMORY[0x277D84F90];
  v88 = v12;
  v93 = v10 & 0xC000000000000001;
  v80 = v11;
  v81 = v2;
  v89 = v10;
  while (1)
  {
    if (v82)
    {
      v17 = MEMORY[0x24C1D7600](v13, v79);
      v18 = __OFADD__(v13, 1);
      v19 = v13 + 1;
      if (v18)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (v13 >= *(v78 + 16))
      {
        goto LABEL_83;
      }

      v17 = *(v77 + 8 * v13);
      v18 = __OFADD__(v13, 1);
      v19 = v13 + 1;
      if (v18)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v85 = v19;
    v86 = v16;
    v7 = v17;
    v20 = [v17 package];
    v21 = [v20 postItn];

    v22 = [v21 v15[397]];
    v84 = v7;
    sub_2486EFFF8(v7);
    v83 = v24;
    v94 = v22;
    v95 = v23;
    if (v12)
    {
      break;
    }

    v2 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
LABEL_64:

    *&v100 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
    sub_2486F06C0();
    v47 = sub_248730F90();
    v49 = v48;

    v50 = v86;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_2486C44B4(0, *(v86 + 2) + 1, 1, v86);
    }

    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    v16 = v50;
    if (v52 >= v51 >> 1)
    {
      v16 = sub_2486C44B4((v51 > 1), v52 + 1, 1, v50);
    }

    *(v16 + 2) = v52 + 1;
    v53 = &v16[16 * v52];
    *(v53 + 4) = v47;
    *(v53 + 5) = v49;
    *&v100 = v2;
    v54 = sub_248730F90();
    v56 = v55;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_2486C44B4(0, *(v87 + 2) + 1, 1, v87);
    }

    v2 = v81;
    v15 = off_278F52000;
    v7 = *(v87 + 2);
    v57 = *(v87 + 3);
    if (v7 >= v57 >> 1)
    {
      v87 = sub_2486C44B4((v57 > 1), v7 + 1, 1, v87);
    }

    *(v87 + 2) = v7 + 1;
    v58 = &v87[16 * v7];
    *(v58 + 4) = v54;
    *(v58 + 5) = v56;
    sub_2486C398C(v83);

    v11 = v80;
    v13 = v85;
    v14 = v93;
    if (v85 == v80)
    {
      goto LABEL_78;
    }
  }

  v25 = 0;
  v90 = (v23 + 32);
  v2 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      if (v14)
      {
        v27 = MEMORY[0x24C1D7600](v25, v10);
        v18 = __OFADD__(v25++, 1);
        if (v18)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v25 >= *(v92 + 16))
        {
          goto LABEL_81;
        }

        v27 = *(v91 + 8 * v25);
        v18 = __OFADD__(v25++, 1);
        if (v18)
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }
      }

      v97 = v27;
      v28 = [v27 v15[397]];
      if (v28)
      {
        break;
      }

      v96 = v25;
      if (!v22)
      {
        goto LABEL_26;
      }

LABEL_15:

LABEL_16:
      v25 = v96;
      if (v96 == v12)
      {
        goto LABEL_64;
      }
    }

    v7 = v28;
    if (v22)
    {
      break;
    }

    if (v25 == v12)
    {
      goto LABEL_64;
    }
  }

  v96 = v25;
  sub_2486CF4C4(0, &qword_27EEA6370, 0x277D5AC78);
  v16 = v22;
  v29 = sub_248731530();

  if ((v29 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_26:
  v30 = [v97 tokens];
  if (v30)
  {
    v7 = v30;
    sub_2486CF4C4(0, &qword_27EEA6368, 0x277D56AA8);
    v11 = sub_248731240();
  }

  else
  {
    v11 = 0;
  }

  v31 = *(v95 + 16);
  if (!v31)
  {

LABEL_62:
    v14 = v93;
    v22 = v94;
    v15 = off_278F52000;
    goto LABEL_16;
  }

  v99 = v11 & 0xC000000000000001;
  v98 = v11 + 32;
  v32 = v90;
  while (1)
  {
    v34 = *v32++;
    v33 = v34;
    if (!v11)
    {
LABEL_40:
      v16 = 0;
      v7 = 0xE000000000000000;
      goto LABEL_41;
    }

    if (v99)
    {

      v35 = MEMORY[0x24C1D7600](v33, v11);

      goto LABEL_38;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v33 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_75;
    }

    v35 = *(v98 + 8 * v33);
LABEL_38:
    v36 = [v35 text];

    if (!v36)
    {
      goto LABEL_40;
    }

    v16 = sub_248730FF0();
    v7 = v37;

LABEL_41:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_2486C44B4(0, *(v26 + 2) + 1, 1, v26);
    }

    v39 = *(v26 + 2);
    v38 = *(v26 + 3);
    v10 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v26 = sub_2486C44B4((v38 > 1), v39 + 1, 1, v26);
    }

    *(v26 + 2) = v10;
    v40 = &v26[16 * v39];
    *(v40 + 4) = v16;
    *(v40 + 5) = v7;
    if (!v11)
    {
      goto LABEL_52;
    }

    if (v99)
    {

      v41 = MEMORY[0x24C1D7600](v33, v11);
    }

    else
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v33 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v41 = *(v98 + 8 * v33);
    }

    v42 = [v41 phoneSequence];

    if (v42)
    {
      v43 = sub_248730FF0();
      v16 = v44;
    }

    else
    {
LABEL_52:
      v43 = 0;
      v16 = 0xE000000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2486C44B4(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v45 = *(v2 + 3);
    v7 = v10 + 1;
    if (v10 >= v45 >> 1)
    {
      v2 = sub_2486C44B4((v45 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v7;
    v46 = &v2[16 * v10];
    *(v46 + 4) = v43;
    *(v46 + 5) = v16;
    if (!--v31)
    {

      v12 = v88;
      v10 = v89;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:

  v59 = v102;
  v60 = *(v102 + 16);
  if (v60)
  {
LABEL_86:
    v63 = 0;
    v64 = 0;
    while (1)
    {
      v65 = *(v59 + 8 * v63 + 32);
      v18 = __OFADD__(v64, v65);
      v64 += v65;
      if (v18)
      {
        break;
      }

      if (v60 == ++v63)
      {

        *&v100 = v16;
        v62 = v64 / v60;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
        sub_2486F06C0();
        sub_248730F90();

        v61 = sub_2487310E0();

        goto LABEL_90;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

LABEL_79:

  v61 = 0;
  v62 = 0;
LABEL_90:
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  *(&v101 + 1) = v66;
  *&v100 = v16;
  swift_beginAccess();
  sub_2486C6800(&v100, 0x74736F702E525341, 0xEB000000006E7449);
  *(&v101 + 1) = v66;
  *&v100 = v87;
  sub_2486C6800(&v100, 0x6E6F68702E525341, 0xEC00000073656D65);
  swift_endAccess();
  v67 = *(v76 + v75);

  v69 = sub_2486F0724(v68);
  v71 = v70;

  if (v71)
  {
    v69 = 0;
    v72 = 0;
    *(&v100 + 1) = 0;
    *&v101 = 0;
  }

  else
  {
    v72 = MEMORY[0x277D84D38];
  }

  *&v100 = v69;
  *(&v101 + 1) = v72;
  swift_beginAccess();
  sub_2486C6800(&v100, 0xD000000000000015, 0x8000000248739310);
  if (v60)
  {
    v73 = MEMORY[0x277D83B88];
    *(&v101 + 1) = MEMORY[0x277D83B88];
    *&v100 = v62;
    sub_2486C6800(&v100, 0xD00000000000001ALL, 0x8000000248739330);
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
    sub_2486C6800(&v100, 0xD00000000000001ALL, 0x8000000248739330);
    v61 = 0;
    v73 = 0;
    *(&v100 + 1) = 0;
    *&v101 = 0;
  }

  *&v100 = v61;
  *(&v101 + 1) = v73;
  sub_2486C6800(&v100, 0xD000000000000013, 0x8000000248739350);
  return swift_endAccess();
}

id ASRIntraTurnFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASRIntraTurnFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASRIntraTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ASRIntraTurnFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASRIntraTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2486EFD10(unint64_t a1)
{
  v14 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v3 = sub_248731790();
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1D7600](i, a1);
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v7 = v8;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v8 packageGenerated];
      if (v9)
      {
        break;
      }

LABEL_6:

      if (v4 == v3)
      {
        return v5;
      }
    }

    v10 = v9;
    v11 = [v9 isFinal];

    if ((v11 & 1) == 0)
    {
      v7 = v10;
      goto LABEL_6;
    }

    MEMORY[0x24C1D71A0]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_248731260();
    }

    sub_2487312A0();
    v5 = v14;
  }

  while (v4 != v3);
  return v5;
}

uint64_t sub_2486EFEA0(unint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_248731790();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1D7600](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 recognitionResultTier1];

    ++v4;
    if (v9)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      v5 = v12;
      v4 = v8;
    }
  }

  return v5;
}

void sub_2486EFFF8(void *a1)
{
  v1 = [a1 package];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 postItn];

  if (!v3)
  {
    return;
  }

  v4 = [v3 utterances];
  if (v4)
  {
    v5 = v4;
    sub_2486CF4C4(0, &qword_27EEA6398, 0x277D56AB0);
    v6 = sub_248731240();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = [v3 phrases];
  if (v7)
  {
    v8 = v7;
    sub_2486CF4C4(0, &qword_27EEA6390, 0x277D56A00);
    v9 = sub_248731240();

    if (!(v6 >> 62))
    {
      goto LABEL_8;
    }

LABEL_15:
    if (sub_248731790())
    {
      goto LABEL_9;
    }

LABEL_16:

    return;
  }

  v9 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_83:
    v10 = MEMORY[0x24C1D7600](0, v6);
    goto LABEL_12;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v6 + 32);
LABEL_12:
    v11 = v10;

    v12 = [v11 interpretationIndices];
    if (v12)
    {
      v13 = v12;
      sub_2486CF4C4(0, &qword_27EEA6388, 0x277CCABB0);
      v14 = sub_248731240();
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
      v16 = sub_248731790();
      if (!v16)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_85;
      }
    }

    v17 = 0;
    v53 = v14 & 0xC000000000000001;
    v51 = v9 & 0xFFFFFFFFFFFFFF8;
    v52 = v9 & 0xC000000000000001;
    v18 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    v44 = v11;
    v49 = v14 & 0xFFFFFFFFFFFFFF8;
    v50 = v16;
    while (1)
    {
      v45 = v18;
      v19 = v17 + 4;
      while (1)
      {
        v6 = v19 - 4;
        if (v53)
        {
          v20 = MEMORY[0x24C1D7600](v19 - 4, v14);
        }

        else
        {
          if (v6 >= *(v15 + 16))
          {
            goto LABEL_76;
          }

          v20 = *(v14 + 8 * v19);
        }

        v21 = v20;
        v17 = v19 - 3;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        if (v52)
        {
          v22 = MEMORY[0x24C1D7600](v19 - 4, v9);
        }

        else
        {
          if (v6 >= *(v51 + 16))
          {
            goto LABEL_77;
          }

          v22 = *(v9 + 8 * v19);
        }

        v23 = v22;
        v24 = [v22 interpretations];

        if (v24)
        {
          break;
        }

LABEL_24:
        ++v19;
        if (v17 == v16)
        {
          v11 = v44;
          goto LABEL_85;
        }
      }

      sub_2486CF4C4(0, &qword_27EEA6378, 0x277D56968);
      v6 = sub_248731240();

      v25 = [v21 integerValue];
      if ((v6 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C1D7600](v25, v6);
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        if (v25 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v26 = *(v6 + 8 * v25 + 32);
      }

      v27 = v26;

      v28 = [v27 tokens];
      if (!v28)
      {

        goto LABEL_24;
      }

      v29 = v28;
      sub_2486CF4C4(0, &qword_27EEA6380, 0x277D56AA0);
      v30 = sub_248731240();

      if (!(v30 >> 62))
      {
        break;
      }

      v6 = sub_248731790();
      if (!v6)
      {
        goto LABEL_40;
      }

LABEL_46:
      v43 = v14;
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x24C1D7600](0, v30);
      }

      else
      {
        if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }

        v31 = *(v30 + 32);
      }

      v32 = v31;
      v42 = v9;
      if (v6 != 1)
      {
        v9 = 1;
        v41 = v3;
        do
        {
          v47 = v32;
          v3 = v9;
          while (1)
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v33 = MEMORY[0x24C1D7600](v3, v30);
              v9 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_80;
              }
            }

            else
            {
              if (v3 < 0)
              {
                goto LABEL_81;
              }

              if (v3 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_82;
              }

              v33 = *(v30 + 8 * v3 + 32);
              v9 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_80;
              }
            }

            v32 = v33;
            v34 = [v47 confidence];
            if (v34 < [v32 confidence])
            {
              break;
            }

            ++v3;
            if (v9 == v6)
            {
              v32 = v47;
              v3 = v41;
              goto LABEL_63;
            }
          }

          v3 = v41;
        }

        while (v9 != v6);
      }

LABEL_63:

      v35 = [v32 linkIndex];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_2486C46EC(0, *(v46 + 2) + 1, 1, v46);
      }

      v9 = v42;
      v15 = v49;
      v36 = v46;
      v38 = *(v46 + 2);
      v37 = *(v46 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_2486C46EC((v37 > 1), v38 + 1, 1, v46);
      }

      *(v36 + 2) = v38 + 1;
      v46 = v36;
      *&v36[8 * v38 + 32] = v35;
      v48 = [v32 confidence];
      v18 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_2486C46EC(0, *(v45 + 2) + 1, 1, v45);
      }

      v40 = *(v18 + 2);
      v39 = *(v18 + 3);
      if (v40 >= v39 >> 1)
      {
        v18 = sub_2486C46EC((v39 > 1), v40 + 1, 1, v18);
      }

      *(v18 + 2) = v40 + 1;
      *&v18[8 * v40 + 32] = v48;
      v16 = v50;
      v14 = v43;
      v11 = v44;
      if (v17 == v50)
      {
LABEL_85:

        return;
      }
    }

    v6 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_46;
    }

LABEL_40:

    v15 = v49;
    v16 = v50;
    goto LABEL_24;
  }

  __break(1u);
LABEL_87:
  __break(1u);
}

unint64_t sub_2486F06C0()
{
  result = qword_27EEA6360;
  if (!qword_27EEA6360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA5F80, &qword_248733300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6360);
  }

  return result;
}

uint64_t sub_2486F0724(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_30:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

LABEL_29:
  v3 = sub_248731790();
  if (!v3)
  {
    goto LABEL_30;
  }

LABEL_3:
  v4 = 0;
  v23 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1D7600](v5, a1);
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_28;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v8 = [v6 requestContext];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 ended];

        if (v10)
        {
          v11 = [v10 metrics];

          if (v11)
          {
            break;
          }
        }
      }

      v12 = [v7 requestContext];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 failed];

        if (v14)
        {
          v11 = [v14 metrics];

          if (v11)
          {
            break;
          }
        }
      }

      v15 = [v7 requestContext];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 cancelled];

        if (v17)
        {
          v11 = [v17 metrics];

          if (v11)
          {
            break;
          }
        }
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_31;
      }
    }

    v18 = [v11 audioDurationInNs];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_2486C47F4(0, *(v23 + 2) + 1, 1, v23);
    }

    v20 = *(v23 + 2);
    v19 = *(v23 + 3);
    if (v20 >= v19 >> 1)
    {
      v23 = sub_2486C47F4((v19 > 1), v20 + 1, 1, v23);
    }

    *(v23 + 2) = v20 + 1;
    *&v23[8 * v20 + 32] = v18;
  }

  while (v4 != v3);
LABEL_31:
  if (*(v23 + 2))
  {
    v21 = *(v23 + 4);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t FeaturizedTurnsByBucketizedTimestamp.__allocating_init(bucketSize:)(double a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_2486D3EAC(MEMORY[0x277D84F90]);
  return v2;
}

uint64_t FeaturizedTurnsByBucketizedTimestamp.init(bucketSize:)(double a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = sub_2486D3EAC(MEMORY[0x277D84F90]);
  return v1;
}

uint64_t sub_2486F0AB4(double a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1 / *(v1 + 16);
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  swift_beginAccess();
  v6 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 24);
  v22 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  v9 = sub_2486C9590(v5);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_2486E566C(v14, isUniquelyReferenced_nonNull_native);
    v8 = v22;
    v9 = sub_2486C9590(v5);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_9;
    }

    v9 = sub_2487318B0();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_9:
    *(v2 + 24) = v8;
    if (v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = v9;
  sub_2486E6CDC();
  v9 = v21;
  v8 = v22;
  *(v2 + 24) = v22;
  if ((v15 & 1) == 0)
  {
LABEL_10:
    v17 = v9;
    sub_2486E62B0(v9, v5, MEMORY[0x277D84F90], v8);
    v9 = v17;
  }

LABEL_11:
  v18 = (v8[7] + 8 * v9);

  MEMORY[0x24C1D71A0](v19);
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_17:
    sub_248731260();
  }

  sub_2487312A0();
  return swift_endAccess();
}

Swift::Int sub_2486F0CA0(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v28 = *a3;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 40);
  v10 = (v9)(v7, v8);
  swift_beginAccess();
  v11 = *(v3 + 16);
  if (v10 == v11)
  {
    goto LABEL_6;
  }

  if (qword_28150EE60 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v12 = sub_248730DF0();
    __swift_project_value_buffer(v12, qword_28150F088);
    v13 = sub_248730DD0();
    v14 = sub_2487313D0();
    if (os_log_type_enabled(v13, v14))
    {
      v27 = v4;
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2486BF000, v13, v14, "Bucket sizes for two TimeBasedDictionary objects are not the same. Set its own time buckets the same as the other", v15, 2u);
      v16 = v15;
      v4 = v27;
      MEMORY[0x24C1D8100](v16, -1, -1);
    }

    v11 = (v9)(v7, v8);
    *(v4 + 16) = v11;
LABEL_6:
    v17 = *(a1 + 32);
    v18 = v17 / v11;
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v18 <= -9.22337204e18)
    {
      goto LABEL_29;
    }

    if (v18 >= 9.22337204e18)
    {
      goto LABEL_30;
    }

    v7 = v18;
    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v9 = v28;
    if (TimeBasedDictionary.exists(key:)(v7))
    {
      goto LABEL_24;
    }

    if (!v28)
    {
      goto LABEL_15;
    }

    v20 = sub_248731880();

    if (v20)
    {
      goto LABEL_16;
    }

    if (v28 == 2)
    {
LABEL_15:
    }

    else
    {
      v21 = sub_248731880();

      if ((v21 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_16:
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    if (!__OFADD__(v7, 1))
    {
      break;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  if (TimeBasedDictionary.exists(key:)(v7 + 1))
  {
LABEL_24:
    sub_2486F0AB4(v17);

    return a1;
  }

  if (v28 == 1)
  {
    goto LABEL_21;
  }

  v23 = sub_248731880();

  if ((v23 & 1) == 0)
  {
    if (v28)
    {
LABEL_21:

      goto LABEL_22;
    }

    v26 = sub_248731880();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = v7 - 1;
  if (!__OFSUB__(v7, 1))
  {
    if (!TimeBasedDictionary.exists(key:)(result))
    {
      return 0;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_2486F10D4()
{
  sub_248731650();
  MEMORY[0x24C1D70A0](0xD000000000000031, 0x800000024873BD00);
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_248731350();
  MEMORY[0x24C1D70A0](0xD000000000000016, 0x800000024873B5F0);
  swift_beginAccess();
  v17 = *(*(v0 + 24) + 16);
  v2 = sub_248731850();
  MEMORY[0x24C1D70A0](v2);

  v3 = *(v0 + 24);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      MEMORY[0x24C1D70A0](41, 0xE100000000000000);

      return 0;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      do
      {
LABEL_8:
        v11 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
        v12 = *(*(v3 + 48) + v11);
        v13 = *(*(v3 + 56) + v11);

        sub_248731650();

        v14 = sub_248731850();
        MEMORY[0x24C1D70A0](v14);

        MEMORY[0x24C1D70A0](0x206874697720, 0xE600000000000000);
        if (v13 >> 62)
        {
          sub_248731790();
        }

        else
        {
          v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v6 &= v6 - 1;

        v16 = sub_248731850();
        MEMORY[0x24C1D70A0](v16);

        MEMORY[0x24C1D70A0](0x7328746E65766520, 0xE900000000000029);
        MEMORY[0x24C1D70A0](0x2079656B202CLL, 0xE600000000000000);
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t FeaturizedTurnsByBucketizedTimestamp.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FeaturizedTurnsByBucketizedTimestamp.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_2486F1430@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  type metadata accessor for FeaturizedTurnsByBucketizedTimestamp();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  result = sub_2486D3EAC(MEMORY[0x277D84F90]);
  *(v4 + 24) = result;
  *a1 = v4;
  return result;
}

id SiriPostSiriEngagementFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2486F1680(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_2486F16F4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_2486F1748()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_isPostSiriEngagement;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_2486F178C()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_donatedTimestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2486F17F4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

id PSEActionEvent.__allocating_init(action:domain:isPostSiriEngagement:donatedTimestamp:duration:sinceUIStart:sinceUIEnd:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, char a10, uint64_t a11, char a12)
{
  v18 = objc_allocWithZone(v12);
  v19 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_action];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_domain];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_duration];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIStart];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIEnd];
  *v23 = 0;
  v23[8] = 1;
  swift_beginAccess();
  *v19 = a1;
  v19[1] = a2;
  swift_beginAccess();
  *v20 = a3;
  v20[1] = a4;
  v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_isPostSiriEngagement] = a5;
  *&v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_donatedTimestamp] = a9;
  swift_beginAccess();
  *v21 = a6;
  v21[8] = a7 & 1;
  swift_beginAccess();
  *v22 = a8;
  v22[8] = a10 & 1;
  swift_beginAccess();
  *v23 = a11;
  v23[8] = a12 & 1;
  v30.receiver = v18;
  v30.super_class = v29;
  return objc_msgSendSuper2(&v30, sel_init);
}

id PSEActionEvent.init(action:domain:isPostSiriEngagement:donatedTimestamp:duration:sinceUIStart:sinceUIEnd:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, char a10, uint64_t a11, char a12)
{
  v18 = &v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_action];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_domain];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_duration];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIStart];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIEnd];
  *v22 = 0;
  v22[8] = 1;
  swift_beginAccess();
  *v18 = a1;
  v18[1] = a2;
  swift_beginAccess();
  *v19 = a3;
  v19[1] = a4;
  v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_isPostSiriEngagement] = a5;
  *&v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_donatedTimestamp] = a9;
  swift_beginAccess();
  *v20 = a6;
  v20[8] = a7 & 1;
  swift_beginAccess();
  *v21 = a8;
  v21[8] = a10 & 1;
  swift_beginAccess();
  *v22 = a11;
  v22[8] = a12 & 1;
  v28.receiver = v12;
  v28.super_class = type metadata accessor for PSEActionEvent();
  return objc_msgSendSuper2(&v28, sel_init);
}

id SiriPostSiriEngagementFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriPostSiriEngagementFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486F1D5C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v122 = MEMORY[0x277D84F90];
  v5 = v4;
  v107 = v3;
  v108 = v5;
  v6 = [v5 pseEvents];
  sub_2486CF4C4(0, &qword_27EEA63D8, 0x277CF1550);
  v7 = sub_248731240();

  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_248731790();
    v8 = v7;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_4:
      if (v9 < 1)
      {
        __break(1u);
        return;
      }

      v10 = 0;
      v109 = v8 & 0xC000000000000001;
      v110 = v9;
      v11 = off_278F52000;
      v111 = v8;
      do
      {
        if (v109)
        {
          v12 = MEMORY[0x24C1D7600](v10);
        }

        else
        {
          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = [v12 action];
        if (v14)
        {
          v15 = v14;
          v16 = sub_248730FF0();
          v116 = v17;
          v117 = v16;
        }

        else
        {
          v116 = 0;
          v117 = 0;
        }

        v18 = [v13 domain];
        if (v18)
        {
          v19 = v18;
          v20 = sub_248730FF0();
          v114 = v21;
          v115 = v20;
        }

        else
        {
          v114 = 0;
          v115 = 0;
        }

        v113 = [v13 isPostSiriEngagement];
        [v13 donatedTimestamp];
        v23 = v22;
        v24 = [v13 v11[422]];
        v25 = v24;
        v26 = 0;
        v27 = 0;
        if (v24)
        {
          [v24 duration];
          v27 = v28;
        }

        v29 = [v13 v11[422]];
        v30 = v29;
        if (v29)
        {
          [v29 sinceUIStart];
          v26 = v31;
        }

        v32 = [v13 v11[422]];
        v33 = v32;
        v118 = v10;
        if (v32)
        {
          [v32 sinceUIEnd];
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        v112 = v33 == 0;
        v36 = v30 == 0;
        v37 = v25 == 0;
        v38 = type metadata accessor for PSEActionEvent();
        v39 = objc_allocWithZone(v38);
        v40 = &v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_action];
        *v40 = 0;
        v40[1] = 0;
        v41 = &v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_domain];
        *v41 = 0;
        v41[1] = 0;
        v42 = &v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_duration];
        *v42 = 0;
        v42[8] = 1;
        v43 = &v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIStart];
        *v43 = 0;
        v43[8] = 1;
        v44 = &v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIEnd];
        *v44 = 0;
        v44[8] = 1;
        swift_beginAccess();
        *v40 = v117;
        v40[1] = v116;
        swift_beginAccess();
        *v41 = v115;
        v41[1] = v114;
        v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_isPostSiriEngagement] = v113;
        *&v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_donatedTimestamp] = v23;
        swift_beginAccess();
        *v42 = v27;
        v42[8] = v37;
        swift_beginAccess();
        *v43 = v26;
        v43[8] = v36;
        swift_beginAccess();
        *v44 = v35;
        v44[8] = v112;
        v121.receiver = v39;
        v121.super_class = v38;
        v45 = objc_msgSendSuper2(&v121, sel_init);
        MEMORY[0x24C1D71A0]();
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v46 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_248731260();
        }

        v10 = v118 + 1;
        sub_2487312A0();

        v8 = v111;
        v11 = off_278F52000;
      }

      while (v110 != v118 + 1);
      v47 = v122;
      goto LABEL_28;
    }
  }

  v47 = MEMORY[0x277D84F90];
LABEL_28:

  v48 = [v108 engagementUnderstandingFeatures];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 isConfirmInteraction];

    LOBYTE(v119) = v50;
    v51 = MEMORY[0x277D839B0];
  }

  else
  {
    v51 = 0;
    v119 = 0uLL;
    *&v120 = 0;
  }

  *(&v120 + 1) = v51;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD00000000000002BLL, 0x8000000248739F10);
  swift_endAccess();
  v52 = [v108 engagementUnderstandingFeatures];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 isSiriCompleted];

    LOBYTE(v119) = v54;
    v55 = MEMORY[0x277D839B0];
  }

  else
  {
    v55 = 0;
    v119 = 0uLL;
    *&v120 = 0;
  }

  *(&v120 + 1) = v55;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000026, 0x8000000248739F40);
  swift_endAccess();
  v56 = [v108 engagementUnderstandingFeatures];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 isUserAbandoned];

    LOBYTE(v119) = v58;
    v59 = MEMORY[0x277D839B0];
  }

  else
  {
    v59 = 0;
    v119 = 0uLL;
    *&v120 = 0;
  }

  *(&v120 + 1) = v59;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000026, 0x8000000248739F70);
  swift_endAccess();
  v60 = [v108 engagementUnderstandingFeatures];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 isUserCancelled];

    LOBYTE(v119) = v62;
    v63 = MEMORY[0x277D839B0];
  }

  else
  {
    v63 = 0;
    v119 = 0uLL;
    *&v120 = 0;
  }

  *(&v120 + 1) = v63;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000026, 0x8000000248739FA0);
  swift_endAccess();
  v64 = [v108 engagementUnderstandingFeatures];
  if (v64)
  {
    v65 = v64;
    v66 = [v64 isPromptInteraction];

    LOBYTE(v119) = v66;
    v67 = MEMORY[0x277D839B0];
  }

  else
  {
    v67 = 0;
    v119 = 0uLL;
    *&v120 = 0;
  }

  *(&v120 + 1) = v67;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD00000000000002ALL, 0x8000000248739FD0);
  swift_endAccess();
  v68 = [v108 engagementUnderstandingFeatures];
  if (v68)
  {
    v69 = v68;
    v70 = [v68 isDisambiguateInteraction];

    LOBYTE(v119) = v70;
    v71 = MEMORY[0x277D839B0];
  }

  else
  {
    v71 = 0;
    v119 = 0uLL;
    *&v120 = 0;
  }

  *(&v120 + 1) = v71;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000032, 0x800000024873A000);
  swift_endAccess();
  v72 = [v108 engagementUnderstandingFeatures];
  if (v72)
  {
    v73 = v72;
    v74 = [v72 isUnsupportedPromptInteraction];

    LOBYTE(v119) = v74;
    v75 = MEMORY[0x277D839B0];
  }

  else
  {
    v75 = 0;
    v119 = 0uLL;
    *&v120 = 0;
  }

  *(&v120 + 1) = v75;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000035, 0x800000024873A040);
  swift_endAccess();
  v76 = [v108 engagementUnderstandingFeatures];
  if (v76)
  {
    v77 = v76;
    v78 = [v76 taskSuccess];

    type metadata accessor for BMSiriPostSiriEngagementFeaturesTaskSuccess(0);
    LODWORD(v119) = v78;
  }

  else
  {
    v119 = 0uLL;
    *&v120 = 0;
  }

  *(&v120 + 1) = v76;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000022, 0x800000024873A080);
  swift_endAccess();
  v79 = [v108 engagementUnderstandingFeatures];
  if (v79)
  {
    v80 = v79;
    [v79 taskSuccess];

    v81 = BMSiriPostSiriEngagementFeaturesTaskSuccessAsString();
    v82 = sub_248730FF0();
    v84 = v83;

    *(&v120 + 1) = MEMORY[0x277D837D0];
    *&v119 = v82;
    *(&v119 + 1) = v84;
  }

  else
  {
    v119 = 0u;
    v120 = 0u;
  }

  swift_beginAccess();
  sub_2486C6800(&v119, 0xD00000000000002ALL, 0x800000024873A0B0);
  swift_endAccess();
  *(&v120 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F88, &qword_248734080);
  *&v119 = v47;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000020, 0x8000000248739DF0);
  swift_endAccess();
  v85 = [v108 appPattern];
  if (v85)
  {
    v86 = v85;
    v87 = sub_248730FF0();
    v89 = v88;

    v90 = MEMORY[0x277D837D0];
  }

  else
  {
    v87 = 0;
    v89 = 0;
    v90 = 0;
    *&v120 = 0;
  }

  *&v119 = v87;
  *(&v119 + 1) = v89;
  *(&v120 + 1) = v90;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000021, 0x8000000248739E20);
  swift_endAccess();
  v91 = [v108 conversationPath];
  if (v91)
  {
    v92 = v91;
    v93 = sub_248730FF0();
    v95 = v94;

    v96 = MEMORY[0x277D837D0];
  }

  else
  {
    v93 = 0;
    v95 = 0;
    v96 = 0;
    *&v120 = 0;
  }

  *&v119 = v93;
  *(&v119 + 1) = v95;
  *(&v120 + 1) = v96;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000027, 0x8000000248739E50);
  swift_endAccess();
  v97 = [v108 engagementUnderstandingFeatures];
  v98 = v97;
  if (v97)
  {
    v97 = sub_2486CF4C4(0, &qword_27EEA5F90, 0x277CF1548);
  }

  else
  {
    *(&v119 + 1) = 0;
    *&v120 = 0;
  }

  *&v119 = v98;
  *(&v120 + 1) = v97;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000036, 0x8000000248739E80);
  swift_endAccess();
  v99 = [v108 requestIds];
  v100 = sub_248731240();

  *(&v120 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  *&v119 = v100;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD000000000000021, 0x8000000248739EC0);
  swift_endAccess();
  v101 = [v108 taskType];
  if (v101)
  {
    v102 = v101;
    v103 = sub_248730FF0();
    v105 = v104;

    v106 = MEMORY[0x277D837D0];
  }

  else
  {
    v103 = 0;
    v105 = 0;
    v106 = 0;
    *&v120 = 0;
  }

  *&v119 = v103;
  *(&v119 + 1) = v105;
  *(&v120 + 1) = v106;
  swift_beginAccess();
  sub_2486C6800(&v119, 0xD00000000000001FLL, 0x8000000248739EF0);
  swift_endAccess();
}

id sub_2486F2A88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t keypath_getTm_0@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_7Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_set_8Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

uint64_t UnifiedSiriTurnBase.turnId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t UnifiedSiriTurnBase.invocationTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_invocationTime;
  v4 = sub_248730970();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2486F2EA8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - v7;
  sub_2486C5C10(a1, &v12 - v7);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime;
  swift_beginAccess();
  sub_2486F3020(v8, v9 + v10);
  return swift_endAccess();
}

uint64_t sub_2486F2F68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime;
  swift_beginAccess();
  return sub_2486C5C10(v1 + v3, a1);
}

uint64_t sub_2486F2FC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime;
  swift_beginAccess();
  sub_2486F3020(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2486F3020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UnifiedSiriTurnBase.__allocating_init(turn:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  UnifiedSiriTurnBase.init(turn:)(a1);
  return v5;
}

uint64_t UnifiedSiriTurnBase.init(turn:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v34 = v33 - v7;
  v8 = sub_248730970();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2487309B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = *(v9 + 56);
  v33[1] = v9 + 56;
  (v33[0])(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime, 1, 1, v8);
  v2[2] = a1;
  v20 = a1;
  sub_248730C60();
  v21 = sub_248730980();
  v23 = v22;
  (*(v15 + 8))(v19, v14);
  v2[3] = v21;
  v2[4] = v23;
  sub_248730C50();
  sub_248730940();
  (*(v9 + 32))(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_invocationTime, v13, v8);
  sub_2486CF4C4(0, &qword_27EEA6340, 0x277D57048);
  v24 = sub_248730BA0();
  v25 = v24;
  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    return v2;
  }

  result = sub_248731790();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x24C1D7600](0, v25);
LABEL_6:
    v28 = v27;

    sub_2486CF4C4(0, &qword_27EEA63E0, 0x277D5A918);
    v29 = sub_248730B00();

    if (v29)
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        [v30 timeIntervalSince1970];
        v31 = v34;
        sub_248730940();

        (v33[0])(v31, 0, 1, v8);
        v32 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime;
        swift_beginAccess();
        sub_2486F3020(v31, v2 + v32);
        swift_endAccess();
      }

      else
      {
      }
    }

    else
    {
    }

    return v2;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v25 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2486F34C8()
{
  v1 = *(v0 + 16);
  sub_248730B80();
  sub_248730B60();
  sub_248730BC0();
  v2 = sub_248731280();

  return v2;
}

uint64_t sub_2486F3544()
{
  if (!sub_2487314B0())
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(v0 + 16);
  sub_248730B90();
  sub_248730B60();
  sub_248730BC0();
  v2 = sub_248731280();

  return v2;
}

uint64_t sub_2486F35D4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  sub_248730B90();
  sub_248730B60();
  sub_248730BC0();
  v5 = sub_248731280();

  v22 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248731790())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1D7600](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = sub_248730AF0();
      if (v12 && v12 == a2)
      {
        sub_2487316B0();
        v13 = *(v22 + 16);
        sub_2487316E0();
        sub_2487316F0();
        sub_2487316C0();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        a2 = v22;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  a2 = MEMORY[0x277D84F90];
LABEL_17:

  v22 = v7;
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v5 = sub_248731790();
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v5 != v14)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C1D7600](v14, a2);
    }

    else
    {
      if (v14 >= *(a2 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(a2 + 8 * v14 + 32);
    }

    v17 = v16;
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_2486CF4C4(0, &qword_27EEA63E0, 0x277D5A918);
    v19 = sub_248730B00();

    ++v14;
    if (v19)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      v15 = v22;
      v14 = v18;
    }
  }

  return v15;
}

uint64_t sub_2486F388C()
{
  v1 = *(v0 + 16);
  sub_2486CF4C4(0, &qword_27EEA6338, 0x277D57038);
  sub_248730B90();
  sub_248730B60();
  sub_248730BC0();
  v2 = sub_248731280();

  return v2;
}

uint64_t sub_2486F3920(uint64_t a1)
{
  sub_2486E8718(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  type metadata accessor for UnifiedSiriTurnBase();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v4 + 24);
  v2 = *(v4 + 32);

  return v1;
}