uint64_t sub_22989631C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820B0, &qword_22A586CB0);
  v43 = a2;
  result = sub_22A4DE3EC();
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
      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0]);
      result = sub_22A4DD4EC();
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

uint64_t sub_2298966F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820A0, &qword_22A586CA0);
  v34 = a2;
  result = sub_22A4DE3EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_22A4DE77C();
      MEMORY[0x22AAD1960](v21);
      result = sub_22A4DE7BC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_229896984(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820A8, &qword_22A586CA8);
  v34 = a2;
  result = sub_22A4DE3EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_22A4DE77C();
      MEMORY[0x22AAD1960](v21);
      result = sub_22A4DE7BC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_229896C24(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_22A4DE3EC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
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
      v24 = *(*(v7 + 56) + v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
      }

      v26 = *(v10 + 40);
      result = sub_22A4DDECC();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + v18) = v24;
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

    if (a2)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_229896EA8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_22A4DE3EC();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
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
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 40 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_22957F1C4(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_229897178(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD0, &qword_22A577C50);
  v38 = a2;
  result = sub_22A4DE3EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_229897420(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882070, &qword_22A586C60);
  v38 = a2;
  result = sub_22A4DE3EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_2298976C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882078, &unk_22A586C68);
  v40 = a2;
  result = sub_22A4DE3EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_229897980(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for HomePassData(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882060, &unk_22A586C50);
  v44 = a2;
  result = sub_22A4DE3EC();
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
        sub_22989B1E4(v31, v45, type metadata accessor for HomePassData);
      }

      else
      {
        sub_22989B24C(v31, v45, type metadata accessor for HomePassData);
      }

      v32 = *(v12 + 40);
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
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
      result = sub_22989B1E4(v45, *(v12 + 56) + v30 * v20, type metadata accessor for HomePassData);
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

void *sub_229897D70(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_22A4DE3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
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
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_2295404B0(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
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

        v4 = v27;
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
    *v4 = v7;
  }

  return result;
}

char *sub_229897F38()
{
  v1 = v0;
  v2 = _s13PresenceStateOMa();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22A4DB7DC();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882080, &unk_22A586C78);
  v7 = *v0;
  v8 = sub_22A4DE3DC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_22989B24C(*(v7 + 56) + v28, v37, _s13PresenceStateOMa);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_22989B1E4(v27, *(v29 + 56) + v28, _s13PresenceStateOMa);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
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

char *sub_229898264()
{
  v1 = v0;
  v2 = _s28DefaultRoomPresencePublisherC8ObserverVMa();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22A4DB7DC();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882088, &qword_22A586C88);
  v7 = *v0;
  v8 = sub_22A4DE3DC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_22989B24C(*(v7 + 56) + v28, v37, _s28DefaultRoomPresencePublisherC8ObserverVMa);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_22989B1E4(v27, *(v29 + 56) + v28, _s28DefaultRoomPresencePublisherC8ObserverVMa);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
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

char *sub_229898590()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v43 = v2;
  v44 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882110, &qword_22A57DD30);
  v6 = *v0;
  v7 = sub_22A4DE3DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v36 = v1;
    v37 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v45 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = v44 + 32;
    v39 = v44 + 16;
    v40 = v17;
    v41 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v46 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v23 = v43;
        v22 = v44;
        v24 = *(v44 + 72) * v21;
        v25 = v42;
        (*(v44 + 16))(v42, *(v6 + 48) + v24, v43);
        v26 = *(v6 + 56);
        v27 = 24 * v21;
        v28 = (v26 + 24 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[2];
        v32 = v45;
        (*(v22 + 32))(*(v45 + 48) + v24, v25, v23);
        v33 = (*(v32 + 56) + v27);
        v6 = v41;
        *v33 = v29;
        v33[1] = v30;
        v33[2] = v31;
        v34 = v31;

        v17 = v40;
        v16 = v46;
      }

      while (v46);
    }

    v19 = v12;
    v8 = v45;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v36;
        goto LABEL_18;
      }

      v20 = *(v37 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v46 = (v20 - 1) & v20;
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

char *sub_229898834()
{
  v1 = v0;
  v36 = sub_22A4DBB4C();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882108, &unk_22A586D00);
  v4 = *v0;
  v5 = sub_22A4DE3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

id sub_229898ADC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22A4DE3DC();
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

        result = v22;
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

char *sub_229898C38()
{
  v1 = v0;
  v34 = sub_22A4DB7DC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820E8, &unk_22A586CF0);
  v4 = *v0;
  v5 = sub_22A4DE3DC();
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

void *sub_229898EB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880938, &qword_22A586CE0);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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
        result = swift_unknownObjectRetain();
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

char *sub_229899030()
{
  v1 = v0;
  v32 = sub_22A4DB7DC();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820E0, &qword_22A586CE8);
  v4 = *v0;
  v5 = sub_22A4DE3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void *sub_2298992A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820C8, &qword_22A586CC8);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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

void *sub_229899410()
{
  v1 = v0;
  v31 = sub_22A4DB7DC();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882118, qword_22A586D10);
  v4 = *v0;
  v5 = sub_22A4DE3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = swift_unknownObjectRetain())
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
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

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

char *sub_229899690()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CDE0, &unk_22A577C60);
  v6 = *v0;
  v7 = sub_22A4DE3DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = v26 + 16 * v21;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = *(v31 + 56) + v27;
        v6 = v37;
        *v32 = v29;
        *(v32 + 8) = v30;
        result = sub_229792944(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
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

void *sub_229899924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8820B8, &unk_22A586CB8);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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

char *sub_229899A88()
{
  v1 = v0;
  v32 = sub_22A4DB7DC();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820B0, &qword_22A586CB0);
  v4 = *v0;
  v5 = sub_22A4DE3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

id sub_229899CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820A0, &qword_22A586CA0);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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

id sub_229899E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820A8, &qword_22A586CA8);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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

id sub_229899FC8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22A4DE3DC();
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + v19) = v21;
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

void *sub_22989A13C(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_22A4DE3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
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
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_22957F1C4(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
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

        v4 = v27;
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
    *v4 = v7;
  }

  return result;
}

void *sub_22989A2E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD0, &qword_22A577C50);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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

        result = swift_unknownObjectRetain();
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

void *sub_22989A450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882078, &unk_22A586C68);
  v2 = *v0;
  v3 = sub_22A4DE3DC();
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

void *sub_22989A5C8()
{
  v1 = v0;
  v2 = type metadata accessor for HomePassData(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882060, &unk_22A586C50);
  v5 = *v0;
  v6 = sub_22A4DE3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_22989B24C(*(v5 + 56) + v27, v31, type metadata accessor for HomePassData);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_22989B1E4(v26, *(v28 + 56) + v27, type metadata accessor for HomePassData);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_22989A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  v33 = &off_283CDFC68;
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v11 = *a6;
  v13 = sub_229543DBC(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_229557188(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_22989A13C(&qword_27D882010, &qword_22A586BF0, sub_229557188);
    goto LABEL_7;
  }

  sub_229896EA8(v16, a5 & 1, &qword_27D882010, &qword_22A586BF0, sub_229557188);
  v22 = *a6;
  v23 = sub_229543DBC(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_22989AE80(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v31);
}

uint64_t sub_22989AA58(int a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LODWORD(v24) = a1;
  v25 = MEMORY[0x277D84CC0];
  v26 = &off_283CDFC58;
  v9 = *a5;
  v11 = sub_229543DBC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_229557188(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_22989A13C(&qword_27D882010, &qword_22A586BF0, sub_229557188);
    goto LABEL_7;
  }

  sub_229896EA8(v14, a4 & 1, &qword_27D882010, &qword_22A586BF0, sub_229557188);
  v20 = *a5;
  v21 = sub_229543DBC(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v24, MEMORY[0x277D84CC0]);
  sub_22989AF10(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v24);
}

uint64_t sub_22989AC04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = sub_229543DBC(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_229557188(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_22989A13C(&qword_27D882010, &qword_22A586BF0, sub_229557188);
    goto LABEL_7;
  }

  sub_229896EA8(v20, a4 & 1, &qword_27D882010, &qword_22A586BF0, sub_229557188);
  v26 = *a5;
  v27 = sub_229543DBC(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_22A4DE67C();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = __swift_mutable_project_boxed_opaque_existential_0(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_22989AFA0(v17, a2, a3, v33, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v36);
}

uint64_t sub_22989AE80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = &off_283CDFC68;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_229557188(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_22989AF10(unint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  LODWORD(v11) = a4;
  v12 = MEMORY[0x277D84CC0];
  v13 = &off_283CDFC58;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_229557188(&v11, a5[7] + 40 * a1);
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

uint64_t sub_22989AFA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_229557188(&v19, a5[7] + 40 * a1);
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

uint64_t sub_22989B078(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_229892570(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22989B17C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22989B1E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22989B24C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22989B2B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = [v4 scheduleRules];
  sub_22989B4A0();
  v9 = sub_22A4DD83C();

  if (v9 >> 62)
  {
    v10 = sub_22A4DE0EC();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 == 1)
  {
    v11 = [v4 scheduleRules];
    v12 = sub_22A4DD83C();

    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAD13F0](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v13 = *(v12 + 32);
    }

    v16 = v13;

    sub_22965882C(a1, a2, a3);
  }

  else
  {
    v14 = sub_22A4DB74C();
    v15 = *(*(v14 - 8) + 56);

    v15(a3, 1, 1, v14);
  }
}

unint64_t sub_22989B4A0()
{
  result = qword_27D87CD80;
  if (!qword_27D87CD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87CD80);
  }

  return result;
}

id sub_22989B52C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HindsightCloudShareManagerEnergyKitDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22989B8C4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_22A4DB7DC();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22989B988, 0, 0);
}

uint64_t sub_22989B988()
{
  v1 = [*(v0 + 112) home];
  if (v1 && (v2 = v1, v3 = [v1 administratorHandler], *(v0 + 144) = v3, v2, v3))
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v23 = *MEMORY[0x277CD0CB0];
    v9 = [*(v0 + 112) messageTargetUUID];
    sub_22A4DB79C();

    v10 = objc_allocWithZone(MEMORY[0x277D0F820]);
    v11 = sub_22A4DB77C();
    v12 = [v10 initWithTarget_];
    *(v0 + 152) = v12;

    (*(v4 + 8))(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v14 = *MEMORY[0x277CD0D30];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v15;
    *(inited + 48) = v8;
    *(inited + 56) = v7;

    v16 = sub_22956AC5C(inited);
    *(v0 + 160) = v16;
    swift_setDeallocating();
    sub_2295ED9B4(inited + 32);
    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v17[1] = sub_22989BC50;

    return sub_2297983DC(v23, v12, v16);
  }

  else
  {
    v19 = objc_opt_self();
    v20 = sub_22A4DD5AC();
    [v19 hmErrorWithCode:3 description:v20 reason:0 suggestion:0 underlyingError:0];

    swift_willThrow();
    v21 = *(v0 + 136);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_22989BC50()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_22989BDDC;
  }

  else
  {
    v6 = *(v2 + 152);
    v5 = *(v2 + 160);

    v4 = sub_22989BD70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22989BD70()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22989BDDC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  v4 = v0[22];
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22989BE54(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_229562F68(0, &qword_27D8821B0, off_2786660D0);
  sub_22A4DD83C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8821A0, &qword_22A586DA0);
  return sub_22A4DD8FC();
}

uint64_t sub_22989BED4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2297088A4;

  return (sub_22989C8CC)(a1);
}

void sub_22989BF80()
{
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  sub_22989C864();
  v1 = sub_22A4DDB5C();
  [v0 stateObserverStoppedMonitoringCharacteristics_];
}

id sub_22989C050()
{
  v1 = v0;
  v2 = sub_22A4DB77C();
  v3 = [v1 accessoryWithUUID_];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 mediaProfile];

      return v5;
    }
  }

  return 0;
}

id sub_22989C0EC()
{
  result = [v0 isCurrentDevicePrimaryResident];
  if (result)
  {
    result = [v0 actionSetStateSubscriptionManager];
    if (result)
    {
      v2 = result;
      v3 = sub_22A4DB77C();
      v4 = [v2 isMonitoringActionSet_];
      swift_unknownObjectRelease();

      return v4;
    }
  }

  return result;
}

id sub_22989C17C()
{
  v1 = v0;
  v2 = sub_22A4DB77C();
  v3 = [v1 actionSetWithUUID_];

  return v3;
}

void sub_22989C1D4()
{
  v1 = [v0 uuid];
  sub_22A4DB79C();
}

id sub_22989C234()
{
  v1 = [v0 workQueue];

  return v1;
}

id sub_22989C26C()
{
  v0 = objc_opt_self();
  v1 = sub_22A4DB77C();
  v2 = [v0 matterDeviceControllerWithUUID_];

  return v2;
}

id sub_22989C2CC()
{
  v16 = sub_22A4DB7DC();
  v1 = *(v16 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 actionSets];
  if (!result)
  {
    goto LABEL_17;
  }

  v6 = result;
  sub_229562F68(0, &qword_281401C20, off_278666020);
  v7 = sub_22A4DD83C();

  if (v7 >> 62)
  {
    v8 = sub_22A4DE0EC();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_4:
  v17 = MEMORY[0x277D84F90];
  result = sub_22958345C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v17;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v9, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v11 uuid];
      sub_22A4DB79C();

      v17 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22958345C(v14 > 1, v15 + 1, 1);
        v10 = v17;
      }

      ++v9;
      *(v10 + 16) = v15 + 1;
      (*(v1 + 32))(v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v15, v4, v16);
    }

    while (v8 != v9);

    return v10;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_22989C520(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v5 = sub_22A4DB77C();
  v11 = [v4 accessoryWithUUID_];

  if (v11)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = [v4 mediaStateSubscriber];
      v9 = sub_22A4DD5AC();
      [v8 *a2];

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }
  }
}

id sub_22989C638(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22A576190;
  v12 = [a1 uuid];
  sub_22A4DB79C();

  v13 = objc_allocWithZone(HMDActionSetResponse);
  v14 = sub_22A4DB77C();
  v15 = [v13 initWithActionSetUUID:v14 state:a2 & 1];

  v16 = *(v7 + 8);
  v16(v10, v6);
  *(v11 + 32) = v15;
  type metadata accessor for HMDActionSetResponse(0);
  v17 = sub_22A4DD81C();

  [v3 notifyRemoteUsersOfChangedActionSetResponses_];

  result = [v3 actionSetStateSubscriptionManager];
  if (result)
  {
    v19 = result;
    v20 = [a1 uuid];
    sub_22A4DB79C();

    v21 = sub_22A4DB77C();
    v16(v10, v6);
    [v19 actionSetStateDidChange:v21 state:a2 & 1];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_22989C864()
{
  result = qword_27D87D580;
  if (!qword_27D87D580)
  {
    sub_229562F68(255, &unk_27D87E490, off_2786660B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D580);
  }

  return result;
}

uint64_t sub_22989C8CC(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8821A0, &qword_22A586DA0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22989C998, 0, 0);
}

uint64_t sub_22989C998()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v1[19];
  v12 = v1[20];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  sub_22989C864();
  v9 = sub_22A4DDB5C();
  v1[24] = v9;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_22989CB8C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8821A8, &qword_22A586DA8);
  sub_22A4DD8DC();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_22989BE54;
  v1[13] = &block_descriptor_48;
  [v12 stateObserverStartedMonitoringCharacteristics:v9 completionHandler:v3];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_22989CB8C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22989CC6C, 0, 0);
}

uint64_t sub_22989CC6C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22989CCDC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_22A4DB7DC();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22989CDA0, 0, 0);
}

uint64_t sub_22989CDA0()
{
  v1 = [*(v0 + 112) home];
  if (v1 && (v2 = v1, v3 = [v1 administratorHandler], *(v0 + 144) = v3, v2, v3))
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *MEMORY[0x277CD2538];
    *(v0 + 152) = *MEMORY[0x277CD2538];
    v25 = v10;
    v11 = [v6 messageTargetUUID];
    sub_22A4DB79C();

    v12 = objc_allocWithZone(MEMORY[0x277D0F820]);
    v13 = sub_22A4DB77C();
    v14 = [v12 initWithTarget_];
    *(v0 + 160) = v14;

    (*(v4 + 8))(v5, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v16 = *MEMORY[0x277CD2040];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v17;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    v18 = sub_22956AC5C(inited);
    *(v0 + 168) = v18;
    swift_setDeallocating();
    sub_2295ED9B4(inited + 32);
    v19 = swift_task_alloc();
    *(v0 + 176) = v19;
    *v19 = v0;
    v19[1] = sub_22989D074;

    return sub_2297983DC(v25, v14, v18);
  }

  else
  {
    v21 = objc_opt_self();
    v22 = sub_22A4DD5AC();
    [v21 hmErrorWithCode:3 description:v22 reason:0 suggestion:0 underlyingError:0];

    swift_willThrow();
    v23 = *(v0 + 136);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_22989D074()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_22989D19C;
  }

  else
  {
    v6 = v2[20];
    v5 = v2[21];
    v7 = v2[19];

    v4 = sub_22989BD70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22989D19C()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  v5 = v0[23];
  v6 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22989D234(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a1;
  *(v6 + 16) = 0;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 88) = type metadata accessor for DefaultDaemonMissingItemHandler();
  *(v6 + 96) = &off_283CE81C0;
  *(v6 + 64) = a6;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;

  return v6;
}

uint64_t sub_22989D2C4(uint64_t a1, uint64_t a2)
{
  _s8IdentityCMa();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 0;
  *(v4 + 36) = 0;
  type metadata accessor for DefaultDaemonMissingItemHandler();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  type metadata accessor for Registry();
  swift_allocObject();

  v6 = sub_22989D234(v4, 0, 0, 0, 0, v5);

  return v6;
}

void sub_22989DFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22989E760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@System time changed %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [v4 _handleSignificantTimeChange];

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2298A0E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2298A49E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__342(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2298AA6C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2298AC78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__881(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2298B0FE0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2298B10E4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2298C08DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2298C0D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2298C11A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
        v16 = &unk_278686CC0;
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
        v16 = &unk_278686CC0;
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

void sub_2298C2068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_2298C59C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298D94D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298D9828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298DB840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298DBB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298DBEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2298F30E0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2298F316C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2298F7F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5874(uint64_t result, uint64_t a2)
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

void __languageChanged()
{
  v0 = +[HMDMainDriver driver];
  [v0 localeChanged];
}

void sub_22991FEC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2299206A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229924DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22992F188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_22992F690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22992FD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299301B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299309CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229930E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299329FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10242(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229932EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229933528(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2299343EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_229934A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229934DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
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

void sub_229943D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13008(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22994A804(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void addLogEventsToResponse(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    [v6 setObject:v7 forKeyedSubscript:v8];
  }

  [v7 addObjectsFromArray:v5];
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

void sub_22994E848(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22994E948(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2299565F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229958250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14759(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
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

void sub_229962080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229962C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229962F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229964260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
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
        v29[3] = &unk_27868A250;
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
        _os_log_impl(&dword_229538000, v16, v17, v15, buf, 0xCu);
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
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Cannot update home current user account handle because primary handle cannot be determined", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

void ____updateAccountHandleForCurrentUser_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to change account handle for current user: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = [*(a1 + 32) homeManager];
    if ([*(a1 + 32) isOwnerUser] && objc_msgSend(*(a1 + 32), "isCurrentDevicePrimaryResident"))
    {
      v9 = [v8 homeOwnerCloudShareManager];
      [v9 updateSharedOwnerAccountHandleForHome:*(a1 + 32)];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22996FF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299705BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299735A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_229976860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229989618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Specified user identifier does not match current user: %@", &v18, 0x16u);
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

void sub_22998CF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22998DBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22998E25C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_22998ECA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229991E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229992144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
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

void sub_229996EBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_229997344(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22999864C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229998AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229999140(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_22999A344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22999AB20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_22999B100(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_22999F68C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x320]);
  _Unwind_Resume(a1);
}

void sub_2299A4184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __authenticateAcceptedOutgoingInvitation(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  val = a1;
  v9 = a2;
  v38 = a3;
  v37 = a4;
  v40 = a5;
  v10 = [v9 user];
  v39 = [v10 accountHandle];

  if (v39)
  {
    v11 = +[HMDAccountRegistry sharedRegistry];
    v42 = [v11 accountForHandle:v38];

    v36 = [MEMORY[0x277CBEB58] setWithCapacity:2];
    if (!v37 || ([v38 isEqual:v37] & 1) != 0 || (objc_msgSend(v39, "isEqual:", v37) & 1) != 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = val;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Preferred handle by the shared user is the same as the handle the invitation was sent to or the response was received from", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = val;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v35;
        *&buf[12] = 2112;
        *&buf[14] = v37;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Authenticating the preferred handle: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      [v36 addObject:v37];
    }

    if ([v36 hmf_isEmpty])
    {
      v16 = objc_autoreleasePoolPush();
      v17 = val;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Authenticated invitation without resolving", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      if (v40)
      {
        v40[2](v40, 0);
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v62 = __Block_byref_object_copy__14759;
      v63 = __Block_byref_object_dispose__14760;
      v64 = 0;
      v24 = dispatch_group_create();
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = v36;
      v25 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v25)
      {
        v26 = *v57;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v57 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v56 + 1) + 8 * i);
            dispatch_group_enter(v24);
            objc_initWeak(&location, val);
            v29 = +[HMDAccountRegistry sharedRegistry];
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = ____authenticateAcceptedOutgoingInvitation_block_invoke;
            v49[3] = &unk_278670AD0;
            objc_copyWeak(&v54, &location);
            v50 = v24;
            v51 = v28;
            v53 = buf;
            v52 = v42;
            [v29 _resolveAccountForHandle:v28 completionHandler:v49];

            objc_destroyWeak(&v54);
            objc_destroyWeak(&location);
          }

          v25 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
        }

        while (v25);
      }

      v30 = [val workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____authenticateAcceptedOutgoingInvitation_block_invoke_5173;
      block[3] = &unk_278682E60;
      v48 = buf;
      v46 = val;
      v47 = v40;
      dispatch_group_notify(v24, v30, block);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = val;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid invitee destination", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    if (v40)
    {
      v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (v40)[2](v40, v43);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
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
    block[3] = &unk_278684B90;
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

uint64_t ____authenticateAcceptedOutgoingInvitation_block_invoke_5173(uint64_t a1)
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

  _os_log_impl(&dword_229538000, v9, v10, v8, &v13, 0xCu);

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
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to resolve handle, %@, with error: %@", &v25, 0x20u);
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
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Authenticated handle: %@", &v25, 0x16u);
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
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invitation response received from account, %@, expected: %@", &v25, 0x20u);
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

void sub_2299A8E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, id location, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  objc_destroyWeak((v59 + 40));
  _HMFThreadLocalAsyncContextPop();
  objc_destroyWeak(&location);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_2299A9274(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_2299ABB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id location)
{
  objc_destroyWeak((v62 + 56));
  objc_destroyWeak(&a61);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a38);
  objc_destroyWeak(&a46);
  _Unwind_Resume(a1);
}

void sub_2299AD02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299AE678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2299AEDC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2299B4A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299B65C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _HMFThreadLocalAsyncContextPop();
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299B811C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_2299BDE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299BFAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak((v36 - 152));
  _Unwind_Resume(a1);
}

void sub_2299C06F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299C4184(_Unwind_Exception *a1)
{
  __HMFActivityScopeLeave();
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2299CA5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a42, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2299CD314(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __handleAccessoryReachabilityRegistration(void *a1, void *a2, int a3)
{
  v137 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v5 workQueue];
  dispatch_assert_queue_V2(v7);

  v104 = v6;
  if (![v6 isRemote] || (objc_msgSend(v6, "isSecureRemote") & 1) != 0)
  {
    v100 = *MEMORY[0x277CD0640];
    v8 = [v6 stringForKey:?];
    v9 = [v5 uuid];
    v10 = [v9 UUIDString];
    v102 = v8;
    LOBYTE(v8) = [v8 isEqualToString:v10];

    if (v8)
    {
      v103 = 0;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v5;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v12 uuid];
        [v15 UUIDString];
        v17 = v16 = v5;
        *buf = 138543874;
        v132 = v14;
        v133 = 2112;
        v134 = v102;
        v135 = 2112;
        v136 = v17;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Home does not match, received: %@, current: %@", buf, 0x20u);

        v5 = v16;
      }

      objc_autoreleasePoolPop(v11);
      v103 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    }

    v18 = [v104 responseHandler];

    if (v18)
    {
      v19 = [v104 responseHandler];
      (v19)[2](v19, v103, 0);
    }

    v20 = objc_autoreleasePoolPush();
    v21 = v5;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v132 = v23;
      v133 = 2112;
      v134 = v21;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Registering for remote reachability for home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v101 = [v104 remoteSourceID];
    v24 = [HMDDevice deviceWithDestination:?];
    v25 = v24;
    if (a3)
    {
      v99 = v24;
      v97 = v5;
      v26 = [v104 messagePayload];
      v96 = *MEMORY[0x277CCE7A8];
      v27 = [v26 hmf_arrayForKey:?];

      v105 = v21;
      if (!v27)
      {
        v28 = [MEMORY[0x277CBEB18] array];
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v29 = [v21 accessories];
        v30 = [v29 copy];

        v31 = [v30 countByEnumeratingWithState:&v120 objects:v130 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v121;
          p_vtable = HMDModernTransportDeviceReachabilityObserver.vtable;
          do
          {
            v35 = 0;
            v110 = v32;
            do
            {
              if (*v121 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v36 = *(*(&v120 + 1) + 8 * v35);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) != 0 && v36)
              {
                v38 = objc_autoreleasePoolPush();
                v39 = v21;
                v40 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v41 = v33;
                  v42 = p_vtable;
                  v43 = v30;
                  v45 = v44 = v28;
                  *buf = 138543618;
                  v132 = v45;
                  v133 = 2112;
                  v134 = v36;
                  _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Not including native matter accessory in reachability registration as this is controlled by MTRDevice. accessory=%@", buf, 0x16u);

                  v28 = v44;
                  v30 = v43;
                  p_vtable = v42;
                  v33 = v41;
                  v32 = v110;
                }

                objc_autoreleasePoolPop(v38);
                v21 = v105;
              }

              else
              {
                v46 = [v36 uuid];
                v47 = [v46 UUIDString];
                [v28 addObject:v47];
              }

              ++v35;
            }

            while (v32 != v35);
            v32 = [v30 countByEnumeratingWithState:&v120 objects:v130 count:16];
          }

          while (v32);
        }

        v27 = v28;
        v48 = objc_autoreleasePoolPush();
        v49 = v21;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          *buf = 138543618;
          v132 = v51;
          v133 = 2112;
          v134 = v27;
          _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Registering for reachability notification for all accessories: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v48);
      }

      v98 = [v21 homeManager];
      v107 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v27, "count")}];
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      obj = v27;
      v111 = [obj countByEnumeratingWithState:&v116 objects:v129 count:16];
      if (v111)
      {
        v109 = *v117;
        do
        {
          for (i = 0; i != v111; ++i)
          {
            if (*v117 != v109)
            {
              objc_enumerationMutation(obj);
            }

            v53 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v116 + 1) + 8 * i)];
            if (v53)
            {
              v114 = 0u;
              v115 = 0u;
              v112 = 0u;
              v113 = 0u;
              v54 = [v21 accessories];
              v55 = [v54 copy];

              v56 = [v55 countByEnumeratingWithState:&v112 objects:v128 count:16];
              if (v56)
              {
                v57 = v56;
                v58 = *v113;
                while (2)
                {
                  for (j = 0; j != v57; ++j)
                  {
                    if (*v113 != v58)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v60 = *(*(&v112 + 1) + 8 * j);
                    v61 = [v60 uuid];
                    v62 = [v61 isEqual:v53];

                    if (v62)
                    {
                      v63 = [v60 isReachable];
                      v64 = objc_autoreleasePoolPush();
                      v65 = v21;
                      v66 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                      {
                        HMFGetLogIdentifier();
                        v67 = v106 = v64;
                        v68 = [v60 uuid];
                        v69 = [v68 UUIDString];
                        *buf = 138543874;
                        v132 = v67;
                        v133 = 2112;
                        v134 = v69;
                        v135 = 1024;
                        LODWORD(v136) = v63;
                        _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@Updating reachability for accessory: %@ to: %d", buf, 0x1Cu);

                        v21 = v105;
                        v64 = v106;
                      }

                      objc_autoreleasePoolPop(v64);
                      v70 = [v60 uuid];
                      v71 = [v70 UUIDString];
                      v126 = v71;
                      v72 = [MEMORY[0x277CCABB0] numberWithBool:v63];
                      v127 = v72;
                      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                      [v107 addObject:v73];

                      goto LABEL_48;
                    }
                  }

                  v57 = [v55 countByEnumeratingWithState:&v112 objects:v128 count:16];
                  if (v57)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_48:
            }
          }

          v111 = [obj countByEnumeratingWithState:&v116 objects:v129 count:16];
        }

        while (v111);
      }

      v5 = v97;
      v74 = v101;
      v25 = v99;
      if (v101 && v99)
      {
        [v21 _registerDeviceForReachabilityNotification:v99 accessoryList:obj];
        v75 = objc_autoreleasePoolPush();
        v76 = v21;
        v77 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          v78 = HMFGetLogIdentifier();
          *buf = 138543618;
          v132 = v78;
          v133 = 2112;
          v134 = v101;
          _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_INFO, "%{public}@Sending current reachability to destination:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v75);
        v124[0] = v96;
        v79 = [v107 copy];
        v124[1] = v100;
        v125[0] = v79;
        v80 = [v76 uuid];
        v81 = [v80 UUIDString];
        v125[1] = v81;
        v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:2];

        v83 = [HMDRemoteMessage messageWithName:@"kRemoteReachabilityChangedNotificationKey" identifier:0 messagePayload:v82];
        v84 = [v98 messageDispatcher];
        v85 = [v76 uuid];
        v86 = [v99 remoteDestinationString];
        v87 = [v76 workQueue];
        [v84 sendSecureMessage:v83 target:v85 userID:0 destination:v86 responseQueue:v87 responseHandler:0];

        v74 = v101;
        v25 = v99;
      }
    }

    else
    {
      [v21 _deregisterDeviceForReachabilityNotification:v24];
      v74 = v101;
    }

    v88 = v102;
    goto LABEL_59;
  }

  v90 = objc_autoreleasePoolPush();
  v91 = v5;
  v92 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    v93 = HMFGetLogIdentifier();
    *buf = 138543618;
    v132 = v93;
    v133 = 2112;
    v134 = v104;
    _os_log_impl(&dword_229538000, v92, OS_LOG_TYPE_DEFAULT, "%{public}@Message not supported: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v90);
  v94 = [v104 responseHandler];

  if (v94)
  {
    v95 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v88 = [v104 responseHandler];
    v103 = v95;
    v88[2](v88, v95, 0);
LABEL_59:
  }

  v89 = *MEMORY[0x277D85DE8];
}

void sub_2299D2004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299DCF90(_Unwind_Exception *a1)
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
  v19[3] = &unk_278670AA8;
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
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s(), %s:%ld", "HMDAccessoryBrowserAddAccessoryCompletionHandler __createAccessoryBrowserAddAccessoryCompletionHandler(HMDHome *__weak, HMSetupAccessoryDescription *__strong, HMDUnpairedHAPAccessoryConfiguration *__strong, HMDAccessoryPairingEvent *__strong, HMFMessage *__strong)_block_invoke", "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Home/HMDHome.m", 11629];
  v17 = [a1[6] activity];
  v80 = [v15 initWithName:v16 parent:v17];

  WeakRetained = objc_loadWeakRetained(a1 + 8);
  [WeakRetained unsetFabricForPairing];
  if (!v13 && WeakRetained)
  {
    v19 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke_5155;
    block[3] = &unk_278670A80;
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
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Add accessory completion handler for accessory uuid %@ error %@ mapped error %@ context %@", buf, 0x34u);
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
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Matter pairing end context is nil", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing cancelled %@", buf, 0x16u);
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
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_DEBUG, "%{public}@Failed to add accessory %@ with error: %@", buf, 0x20u);
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

void ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke_5155(uint64_t a1)
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
  aBlock[3] = &unk_27866FC60;
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Progress Handler called with progress: %@", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Posting accessory pairing state progress notification to %@", buf, 0x16u);
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
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Progress is %@ but no accessory being replaced", buf, 0x16u);
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
          _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_DEBUG, "%{public}@No appID/bundleID found for productData: %@", buf, 0x16u);
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

void sub_2299E16B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_2299E4128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299E8280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
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
  v7[3] = &unk_278675410;
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
  v8[3] = &unk_278670A58;
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

void sub_2299F6AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299F76DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2299FF400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A0BAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id location)
{
  objc_destroyWeak(&a51);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A12D08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 176));
  objc_destroyWeak((v1 - 168));
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Notifying of removed identity: %@", &v25, 0x16u);
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
    v10[3] = &unk_27868A010;
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing registered identity, %@", &v11, 0x16u);
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Notifying of added identity: %@", &v25, 0x16u);
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
      v17 = &unk_27867F3D0;
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

void sub_229A1A630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Registered object deallocated, removing object from identity: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    __removeRegisteredObjectForRegisteredIdentity(v7, v3, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_229A1AD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15589(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A1B0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A1B3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A1B740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A1BCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A1C038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A1D6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id toManyRelationship(void *a1, void *a2)
{
  v2 = objectValue(a1, 2, a2);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

id objectValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 objectAtIndexedSubscript:a2];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

void pruneArrayOfRefs(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  v4 = [v10 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [v10 objectAtIndexedSubscript:v6];
      v8 = [v7 objectForKeyedSubscript:@"modelID"];
      v9 = [v3 containsObject:v8];

      if (v9)
      {
        [v10 removeObjectAtIndex:v6];
        --v5;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < v5);
  }
}

void sub_229A242F4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229A24DC8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229A24E4C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229A25068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17315(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A29420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A2E9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A32144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A35588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18771(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A39AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19541(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A3B334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id location)
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

void sub_229A40CE0(_Unwind_Exception *a1)
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

void sub_229A43974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A45474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak((v49 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A46A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_229A4882C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
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
      dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_198641);
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

void sub_229A4FB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A50980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19997(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A5554C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A556FC(_Unwind_Exception *a1)
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
    v1 = off_278671290[a1];
  }

  return v1;
}

void sub_229A5F258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 120));
  _Block_object_dispose((v3 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_229A602E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A60F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21464(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A615E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A62644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A69CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A6A024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A6A7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A6B6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A6C400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A75ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23380(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A79778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A7B3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23924(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A7EE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_229A7F470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_229A7FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229A80CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_229A813EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24946(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229A8A778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A8B074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A8CBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A8D044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229A8E058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26011(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void notifyObservers(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v12++) updatedCounter:v8 fromOldValue:a3 toNewValue:a4];
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_229A9F630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27212(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229AA0224(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229AA2AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229AA34CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDExtendedTypeDateFormatter()
{
  if (HMDExtendedTypeDateFormatter_once != -1)
  {
    dispatch_once(&HMDExtendedTypeDateFormatter_once, &__block_literal_global_27646);
  }

  v1 = HMDExtendedTypeDateFormatter_formatter;

  return v1;
}

uint64_t __HMDExtendedTypeDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = HMDExtendedTypeDateFormatter_formatter;
  HMDExtendedTypeDateFormatter_formatter = v0;

  v2 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [HMDExtendedTypeDateFormatter_formatter setTimeZone:v2];

  v3 = HMDExtendedTypeDateFormatter_formatter;

  return [v3 setFormatOptions:3955];
}

uint64_t HMDUserActivityType6StateEventAsString(uint64_t a1, uint64_t a2)
{
  if ((a1 - 1) > 2)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_2786719D0[a1 - 1];
  }

  if ((a2 - 1) > 4)
  {
    v5 = @"Other";
  }

  else
  {
    v5 = off_2786719E8[a2 - 1];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v4, v5, v2, v3];
}

void sub_229AABA54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229AADF88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229AB087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28761(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229AB2610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229AB3168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229AB59E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229ABA64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
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
    v5 = [v3 localizedStringForKey:v1 value:&stru_283CF9D50 table:@"HomeKitDaemon"];
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

void sub_229ABD34C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30152(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229AC3978(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t HMHomeActivityStateFromTruncatedString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Home"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Away"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Vacation"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"ComingHome"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"ComingHomeFromVacation"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
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

void sub_229AC6B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31300(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229AC72F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229AC79A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229AC812C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229AC8ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_destroyWeak((v43 + 56));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229AD905C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229AD90F0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229AD9184(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229AD9520(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229ADA250(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_229ADB050(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229ADC34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229ADF778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33336(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229AE77E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229AE7DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229AE87EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229AE9C3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_229AEAF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34240(uint64_t result, uint64_t a2)
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

void sub_229AF8610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 184));
  _Unwind_Resume(a1);
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
    v1 = off_278672800[a1];
  }

  return v1;
}

void ____managedObjectClassFromProtocol_block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = __managedObjectClassFromProtocol__hmf_once_v8;
  __managedObjectClassFromProtocol__hmf_once_v8 = v0;
}

void sub_229B07B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38060(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229B07E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B0BEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B0DC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B13724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39842(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __sendChangeNotifications(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[HMDAppleAccountManager sharedManager];
  v8 = [v7 account];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ____sendChangeNotifications_block_invoke;
  v11[3] = &unk_278672AE8;
  v13 = v8;
  v14 = a3;
  v12 = v5;
  v9 = v8;
  v10 = v5;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
}

void ____sendChangeNotifications_block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isObjectType:&unk_283EF7428] && *(a1 + 48) != 2)
  {
    v4 = *(a1 + 32);
    v5 = [v3 modelID];
    v6 = [v4 deviceForIdentifier:v5];

    if (v6)
    {
      logAndPostNotification(@"HMDDeviceUpdatedNotification", v6, 0);
    }
  }

  if ([v3 isObjectType:&unk_283F64610])
  {
    v7 = [*(a1 + 32) accounts];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ____sendChangeNotifications_block_invoke_2;
    v21[3] = &unk_2786861F8;
    v22 = v3;
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];
  }

  if ([v3 isObjectType:&unk_283E8EE20])
  {
    v8 = [v3 modelID];
    v9 = [*(a1 + 40) modelIdentifier];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [*(a1 + 32) accounts];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = ____sendChangeNotifications_block_invoke_4;
      v19[3] = &unk_278672AC0;
      v20 = v3;
      v12 = [v11 na_firstObjectPassingTest:v19];

      if (!v12)
      {
LABEL_17:

        goto LABEL_18;
      }

      v13 = *(a1 + 48);
      if (v13 == 2)
      {
        v15 = [MEMORY[0x277CCAB98] defaultCenter];
        v16 = *(a1 + 32);
        v23 = @"HMDAccountNotificationKey";
        v24 = v12;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v15 postNotificationName:@"HMDAccountRegistryRemovedAccountNotification" object:v16 userInfo:v17];
      }

      else
      {
        if (v13 != 1)
        {
LABEL_16:

          goto LABEL_17;
        }

        v14 = *(a1 + 32);
        v25 = @"HMDAccountNotificationKey";
        v26[0] = v12;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        logAndPostNotification(@"HMDAccountRegistryAddedAccountNotification", v14, v15);
      }

      goto LABEL_16;
    }
  }

LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
}

void ____sendChangeNotifications_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 handles];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ____sendChangeNotifications_block_invoke_3;
  v9[3] = &unk_278672A98;
  v10 = *(a1 + 32);
  v11 = v6;
  v12 = a4;
  v8 = v6;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
}

uint64_t ____sendChangeNotifications_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 modelIdentifier];
  v4 = [*(a1 + 32) modelID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void ____sendChangeNotifications_block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 modelIdentifier];
  v7 = [*(a1 + 32) modelID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    logAndPostNotification(@"HMDAccountHandlesUpdatedNotification", *(a1 + 40), 0);
    **(a1 + 48) = 1;
    *a4 = 1;
  }
}

void sub_229B145C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B154D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDAppleAccountSettingsPostUpdatedNotification(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated Apple account settings", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"HMDAppleAccountSettingsUpdatedNotification" object:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_229B182FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B18BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __legacyWatchOSCategoryMap_block_invoke()
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (BulletinDistributorCompanionLibraryCore())
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v0 = getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr;
    v18 = getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr;
    if (!getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr)
    {
      v1 = BulletinDistributorCompanionLibrary();
      v16[3] = dlsym(v1, "BLTBulletinContextKeyWatchLegacyMapKey");
      getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr = v16[3];
      v0 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v0)
    {
      goto LABEL_12;
    }

    v2 = *v0;
    v23 = v2;
    v3 = [&unk_283E72020 stringValue];
    v21 = v3;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v4 = getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr;
    v18 = getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr;
    if (!getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr)
    {
      v5 = BulletinDistributorCompanionLibrary();
      v16[3] = dlsym(v5, "BLTWatchLegacyMapCategoryIDKey");
      getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr = v16[3];
      v4 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v4)
    {
LABEL_12:
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v19 = *v4;
    v20 = MEMORY[0x277CBEBF8];
    v6 = MEMORY[0x277CBEAC0];
    v7 = v19;
    v8 = [v6 dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v24[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v11 = legacyWatchOSCategoryMap_legacyWatchOSCategoryMap;
    legacyWatchOSCategoryMap_legacyWatchOSCategoryMap = v10;

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = legacyWatchOSCategoryMap_legacyWatchOSCategoryMap;
    legacyWatchOSCategoryMap_legacyWatchOSCategoryMap = MEMORY[0x277CBEC10];
    v14 = *MEMORY[0x277D85DE8];
  }
}

void sub_229B1DBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BulletinDistributorCompanionLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!BulletinDistributorCompanionLibraryCore_frameworkLibrary)
  {
    BulletinDistributorCompanionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = BulletinDistributorCompanionLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BulletinDistributorCompanionLibrary();
  result = dlsym(v2, "BLTBulletinContextKeyWatchLegacyMapKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BulletinDistributorCompanionLibrary()
{
  v0 = BulletinDistributorCompanionLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getBLTWatchLegacyMapCategoryIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BulletinDistributorCompanionLibrary();
  result = dlsym(v2, "BLTWatchLegacyMapCategoryIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BulletinDistributorCompanionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BulletinDistributorCompanionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_229B2A088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B2A43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B2ACA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _NCSchedulerDateWithMultiple(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = MEMORY[0x277CBEAB8];
  v9 = a2;
  v10 = a1;
  v11 = objc_alloc_init(v8);
  if (v11)
  {
    v12 = [v7 era];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12 * a4;
    }

    [v11 setEra:v13];
    v14 = [v7 year];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14 * a4;
    }

    [v11 setYear:v15];
    v16 = [v7 month];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16 * a4;
    }

    [v11 setMonth:v17];
    v18 = [v7 day];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18 * a4;
    }

    [v11 setDay:v19];
    v20 = [v7 hour];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20 * a4;
    }

    [v11 setHour:v21];
    v22 = [v7 minute];
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22 * a4;
    }

    [v11 setMinute:v23];
    v24 = [v7 second];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24 * a4;
    }

    [v11 setSecond:v25];
    v26 = [v7 weekday];
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v26 * a4;
    }

    [v11 setWeekday:v27];
    v28 = [v7 weekdayOrdinal];
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28 * a4;
    }

    [v11 setWeekdayOrdinal:v29];
    v30 = [v7 quarter];
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v30 * a4;
    }

    [v11 setQuarter:v31];
    v32 = [v7 weekOfMonth];
    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v32 * a4;
    }

    [v11 setWeekOfMonth:v33];
    v34 = [v7 weekOfYear];
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v34 * a4;
    }

    [v11 setWeekOfYear:v35];
    v36 = [v7 yearForWeekOfYear];
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = v36 * a4;
    }

    [v11 setYearForWeekOfYear:v37];
  }

  v38 = [v9 dateByAddingComponents:v11 toDate:v10 options:0];

  return v38;
}

void sub_229B38F04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229B4151C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HMDRemoteEventRouterProtoChangeRegistrationsMessageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
          [a1 addTopicAdditions:v14];
          goto LABEL_30;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
          [a1 addTopicRemovals:v14];
LABEL_30:
          v17[0] = 0;
          v17[1] = 0;
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoTopicReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addTopicFilterAdditions:v14];
          }

          goto LABEL_33;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addTopicFilterRemovals:v14];
          }

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_229B441B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B454AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMDUserActivityHomeAwayStateFromPresenceRegion(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 value] == 1)
  {
    v5 = [v3 value];
    if (v5 >= 3)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v3 number];
        v16 = 138543618;
        v17 = v12;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_FAULT, "%{public}@Cannot map presence region status to home away state: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v6 = 0;
    }

    else
    {
      v6 = v5 + 1;
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@No authorization to determine home away state: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}