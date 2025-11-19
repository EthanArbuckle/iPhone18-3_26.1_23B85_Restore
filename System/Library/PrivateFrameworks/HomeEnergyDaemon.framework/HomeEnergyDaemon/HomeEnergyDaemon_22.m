uint64_t sub_22B33BD94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB088, &unk_22B3678D0);
  v38 = a2;
  result = sub_22B3612AC();
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
      }

      v27 = *(v8 + 40);
      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
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

uint64_t sub_22B33C03C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC40, &unk_22B367380);
  v36 = a2;
  result = sub_22B3612AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_22B172454(v25, v37);
      }

      else
      {
        sub_22B170C58(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22B172454(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22B33C2F4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0C0, &qword_22B367920);
  v47 = a2;
  result = sub_22B3612AC();
  v13 = result;
  if (*(v10 + 16))
  {
    v52 = v6;
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
    v44 = (v7 + 16);
    v45 = v10;
    v46 = v7;
    v49 = (v7 + 32);
    v20 = result + 64;
    v21 = v48;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v46 + 72) * v28;
      v50 = *(v46 + 72);
      v51 = v25;
      if (v47)
      {
        (*v49)(v21, v29, v52);
        v30 = (*(v10 + 56) + 16 * v28);
        v32 = *v30;
        v31 = v30[1];
      }

      else
      {
        (*v44)(v21, v29, v52);
        v33 = (*(v10 + 56) + 16 * v28);
        v32 = *v33;
        v31 = v33[1];
        sub_22B144B30(*v33, v31);
      }

      v34 = *(v13 + 40);
      sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578]);
      result = sub_22B36071C();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v21 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v13 + 48) + v50 * v22, v21, v52);
      v23 = (*(v13 + 56) + 16 * v22);
      *v23 = v32;
      v23[1] = v31;
      ++*(v13 + 16);
      v10 = v45;
      v18 = v51;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_22B33C6DC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA360, &unk_22B364030);
  v43 = a2;
  result = sub_22B3612AC();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
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
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578]);
      result = sub_22B36071C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22B33CAA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0A8, &unk_22B3678F8);
  v39 = a2;
  result = sub_22B3612AC();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = *v25;
      v40 = v25[1];
      v41 = *v23;
      v27 = v25[2];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
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
      *v17 = v41;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v26;
      v18[1] = v40;
      v18[2] = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
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

uint64_t sub_22B33CD78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0D8, &qword_22B367938);
  result = sub_22B3612AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
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
      v23 = *(v8 + 40);
      result = sub_22B36148C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22B33CFDC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v55 - v12;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v64 = *(Events - 8);
  v65 = Events;
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](Events);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v18 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0B0, &qword_22B367908);
  v66 = a2;
  result = sub_22B3612AC();
  v20 = result;
  if (*(v17 + 16))
  {
    v63 = v6;
    v56 = v3;
    v21 = 0;
    v22 = (v17 + 64);
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v17 + 64);
    v26 = (v23 + 63) >> 6;
    v61 = (v7 + 48);
    v58 = (v7 + 32);
    v57 = (v7 + 8);
    v27 = result + 64;
    v59 = v17;
    v62 = result;
    v28 = v65;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v31 = (v25 - 1) & v25;
LABEL_17:
      v34 = v30 | (v21 << 6);
      v35 = *(v17 + 48);
      v69 = *(v64 + 72);
      v70 = v31;
      v36 = v35 + v69 * v34;
      if (v66)
      {
        sub_22B343008(v36, v16, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v68 = *(*(v17 + 56) + 8 * v34);
      }

      else
      {
        sub_22B342FA0(v36, v16, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v68 = *(*(v17 + 56) + 8 * v34);
      }

      v37 = v20[5];
      sub_22B36149C();
      v38 = *v16;
      v39 = v16[1];
      sub_22B3608FC();
      v40 = v16[2];
      v41 = v16[3];
      sub_22B3608FC();
      v42 = *(v28 + 24);
      sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578]);
      v43 = v63;
      sub_22B36072C();
      v44 = v67;
      sub_22B170BE0(v16 + *(v28 + 28), v67, &qword_27D8BA340, &qword_22B363FB0);
      if ((*v61)(v44, 1, v43) == 1)
      {
        sub_22B3614BC();
      }

      else
      {
        v45 = v60;
        (*v58)(v60, v67, v43);
        sub_22B3614BC();
        sub_22B36072C();
        v46 = v45;
        v17 = v59;
        (*v57)(v46, v43);
      }

      result = sub_22B3614DC();
      v20 = v62;
      v47 = -1 << *(v62 + 32);
      v48 = result & ~v47;
      v49 = v48 >> 6;
      if (((-1 << v48) & ~*(v27 + 8 * (v48 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v47) >> 6;
        while (++v49 != v51 || (v50 & 1) == 0)
        {
          v52 = v49 == v51;
          if (v49 == v51)
          {
            v49 = 0;
          }

          v50 |= v52;
          v53 = *(v27 + 8 * v49);
          if (v53 != -1)
          {
            v29 = __clz(__rbit64(~v53)) + (v49 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v29 = __clz(__rbit64((-1 << v48) & ~*(v27 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      result = sub_22B343008(v16, v20[6] + v69 * v29, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      *(v20[7] + 8 * v29) = v68;
      ++v20[2];
      v25 = v70;
    }

    v32 = v21;
    while (1)
    {
      v21 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v21 >= v26)
      {
        break;
      }

      v33 = v22[v21];
      ++v32;
      if (v33)
      {
        v30 = __clz(__rbit64(v33));
        v31 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v66 & 1) == 0)
    {

      v3 = v56;
      goto LABEL_39;
    }

    v54 = 1 << *(v17 + 32);
    v3 = v56;
    if (v54 >= 64)
    {
      bzero(v22, ((v54 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v54;
    }

    *(v17 + 16) = 0;
  }

LABEL_39:
  *v3 = v20;
  return result;
}

uint64_t sub_22B33D598(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0A0, &qword_22B3678F0);
  v44 = a2;
  result = sub_22B3612AC();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
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
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_22B342F58(&unk_27D8BA320, MEMORY[0x277CC95F0]);
      result = sub_22B36071C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22B33D958(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_22B35DE9C();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAEA0, &unk_22B367400);
  v47 = a2;
  result = sub_22B3612AC();
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
    v43 = v2;
    v44 = (v6 + 16);
    v48 = (v6 + 32);
    v19 = result + 64;
    v20 = v6;
    v45 = v6;
    v46 = v9;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v49 = (v17 - 1) & v17;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(v9 + 56);
      v28 = (*(v9 + 48) + 32 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = v28[2];
      v32 = v28[3];
      v50 = *(v20 + 72);
      v33 = v27 + v50 * v26;
      if (v47)
      {
        (*v48)(v51, v33, v52);
      }

      else
      {
        (*v44)(v51, v33, v52);
      }

      v34 = *(v12 + 40);
      sub_22B36149C();
      sub_22B3608FC();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v35 = -1 << *(v12 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v19 + 8 * v37);
          if (v41 != -1)
          {
            v21 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v12 + 48) + 32 * v21);
      *v22 = v30;
      v22[1] = v29;
      v22[2] = v31;
      v22[3] = v32;
      result = (*v48)(*(v12 + 56) + v50 * v21, v51, v52);
      ++*(v12 + 16);
      v20 = v45;
      v9 = v46;
      v17 = v49;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v49 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v9 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v14, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v42;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22B33DD14(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SessionKey(0);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE90, &qword_22B3673F0);
  v59 = a2;
  result = sub_22B3612AC();
  v13 = result;
  if (*(v10 + 16))
  {
    v55 = v3;
    v56 = v10;
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
    v20 = result + 64;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48);
      v62 = *(v57 + 72);
      v63 = v25;
      v30 = v29 + v62 * v28;
      if (v59)
      {
        sub_22B343008(v30, v9, type metadata accessor for SessionKey);
      }

      else
      {
        sub_22B342FA0(v30, v9, type metadata accessor for SessionKey);
      }

      v31 = (*(v10 + 56) + 2 * v28);
      v32 = v31[1];
      v60 = *v31;
      v61 = v32;
      v33 = *(v13 + 40);
      sub_22B36149C();
      sub_22B35DF1C();
      sub_22B342F58(&unk_27D8BA320, MEMORY[0x277CC95F0]);
      sub_22B36072C();
      v34 = v58;
      v35 = &v9[v58[5]];
      sub_22B36072C();
      v36 = &v9[v34[6]];
      v37 = *v36;
      v38 = *(v36 + 1);
      sub_22B3608FC();
      v39 = &v9[v34[7]];
      v40 = *v39;
      v41 = *(v39 + 1);
      sub_22B3608FC();
      v42 = &v9[v34[8]];
      v43 = *v42;
      v44 = *(v42 + 1);
      sub_22B3608FC();
      v45 = &v9[v34[9]];
      sub_22B36072C();
      result = sub_22B3614DC();
      v46 = -1 << *(v13 + 32);
      v47 = result & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v20 + 8 * (v47 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v46) >> 6;
        v10 = v56;
        while (++v48 != v50 || (v49 & 1) == 0)
        {
          v51 = v48 == v50;
          if (v48 == v50)
          {
            v48 = 0;
          }

          v49 |= v51;
          v52 = *(v20 + 8 * v48);
          if (v52 != -1)
          {
            v21 = __clz(__rbit64(~v52)) + (v48 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v47) & ~*(v20 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
      v10 = v56;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_22B343008(v9, *(v13 + 48) + v62 * v21, type metadata accessor for SessionKey);
      v22 = (*(v13 + 56) + 2 * v21);
      v23 = v61;
      *v22 = v60;
      v22[1] = v23;
      ++*(v13 + 16);
      v18 = v63;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v59 & 1) == 0)
    {

      v3 = v55;
      goto LABEL_36;
    }

    v53 = 1 << *(v10 + 32);
    v3 = v55;
    if (v53 >= 64)
    {
      bzero(v15, ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v53;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_22B33E160(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB090, &qword_22B3678E0);
  v39 = a2;
  result = sub_22B3612AC();
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
      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
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

uint64_t sub_22B33E404(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - v8;
  v9 = sub_22B35DE9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE68, &qword_22B3673B8);
  v48 = a2;
  result = sub_22B3612AC();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
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
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_22B3229C4(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_22B170BE0(v33 + v32 * v28, v52, &qword_27D8BAAE0, &unk_22B3673C0);
      }

      v34 = *(v16 + 40);
      sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578]);
      result = sub_22B36071C();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_22B3229C4(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_22B33E880(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0D0, &qword_22B367930);
  result = sub_22B3612AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v23 = *(v8 + 40);
      result = sub_22B36148C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22B33EAE4(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_22B35F00C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B35DE9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0C8, &qword_22B367928);
  v52 = a2;
  result = sub_22B3612AC();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578]);
      result = sub_22B36071C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
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
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_22B33EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22B33B28C(a3, a4);
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
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22B33BAD0(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_22B33B28C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_22B3613BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22B340F90();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v27 = *v25;
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

uint64_t sub_22B33F11C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B33B28C(a2, a3);
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
      sub_22B33BD94(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22B33B28C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22B3613BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22B34111C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_22B33F298(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B33B28C(a2, a3);
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
      sub_22B34128C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22B33C03C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22B33B28C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22B3613BC();
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

    return sub_22B172454(a1, v23);
  }

  else
  {
    sub_22B33FD48(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_22B33F3E8(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v9 = *(*(Events - 8) + 64);
  MEMORY[0x28223BE20](Events);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22B33B460(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22B341C14();
      goto LABEL_7;
    }

    sub_22B33CFDC(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_22B33B460(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22B342FA0(a2, v11, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      return sub_22B33FDB4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22B3613BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_22B33F58C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22B35DF1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22B33B6BC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_22B341E60();
    goto LABEL_7;
  }

  sub_22B33D598(result, a3 & 1);
  v22 = *v4;
  result = sub_22B33B6BC(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22B3613BC();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_22B33FE68(v15, v12, a1 & 1, v21);
}

uint64_t sub_22B33F72C(__int16 a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SessionKey(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22B33B830(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 2 * v14);
      *v21 = a1 & 1;
      v21[1] = HIBYTE(a1) & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_22B342364();
    goto LABEL_7;
  }

  sub_22B33DD14(result, a3 & 1);
  v22 = *v4;
  result = sub_22B33B830(a2);
  if ((v18 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22B3613BC();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22B342FA0(a2, v11, type metadata accessor for SessionKey);
  return sub_22B33FF20(v14, v11, a1 & 0x101, v20);
}

uint64_t sub_22B33F8B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B33B28C(a2, a3);
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
      sub_22B33E160(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22B33B28C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_22B3613BC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_22B3425C0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
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

uint64_t sub_22B33FA2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22B33B348(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_22B34272C();
      goto LABEL_7;
    }

    sub_22B33E404(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_22B33B348(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_22B33FFE4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_22B3613BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0) - 8) + 72) * v15;

  return sub_22B342EE8(a1, v23);
}

unint64_t sub_22B33FC20(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22B33B41C(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_22B342A48();
    result = v17;
    goto LABEL_8;
  }

  sub_22B33E880(v14, a2 & 1);
  v18 = *v4;
  result = sub_22B33B41C(a1);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a3;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a1;
    *(v20[7] + 8 * result) = a3;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_22B3613BC();
  __break(1u);
  return result;
}

_OWORD *sub_22B33FD48(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22B172454(a4, (a5[7] + 32 * a1));
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

uint64_t sub_22B33FDB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  result = sub_22B343008(a2, v8 + *(*(Events - 8) + 72) * a1, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22B33FE68(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22B35DF1C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22B33FF20(unint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SessionKey(0);
  result = sub_22B343008(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for SessionKey);
  v11 = (a4[7] + 2 * a1);
  *v11 = a3 & 1;
  v11[1] = HIBYTE(a3) & 1;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_22B33FFE4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22B35DE9C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  result = sub_22B3229C4(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_22B3400CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22B35DE9C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_22B35F00C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_22B3401C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22B2F2694(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23188EA20](v9, a1);
      sub_22B1B0560(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22B340288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22B36134C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B340340(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22B360FBC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22B340414(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22B340480(uint64_t *a1, uint64_t a2)
{
  v5 = sub_22B35DE9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA730, &unk_22B367910);
  v13 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v15 = &v41 - v14;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v16 = *(*(Events - 8) + 64);
  MEMORY[0x28223BE20](Events);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v2 + 64;
  v21 = -1 << *(v2 + 32);
  v22 = a2 & ~v21;
  if (((*(v2 + 64 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    return v22;
  }

  v51 = v2;
  v52 = v5;
  v23 = ~v21;
  v24 = v6;
  v25 = *a1;
  v26 = a1[1];
  v48 = v2 + 64;
  v49 = (v24 + 48);
  v41 = (v24 + 32);
  v44 = (v24 + 8);
  v45 = v12;
  v54 = *(v17 + 72);
  v27 = Events;
  v50 = ~v21;
  v47 = v25;
  while (1)
  {
    sub_22B342FA0(*(v2 + 48) + v54 * v22, v19, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v29 = *v19 == v25 && v19[1] == v26;
    if (!v29 && (sub_22B36134C() & 1) == 0)
    {
      goto LABEL_5;
    }

    v30 = v19[2] == a1[2] && v19[3] == a1[3];
    if (!v30 && (sub_22B36134C() & 1) == 0)
    {
      goto LABEL_5;
    }

    v31 = *(v27 + 24);
    if ((sub_22B35DE4C() & 1) == 0)
    {
      goto LABEL_5;
    }

    v32 = *(v27 + 28);
    v33 = *(v53 + 48);
    sub_22B170BE0(v19 + v32, v15, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B170BE0(a1 + v32, &v15[v33], &qword_27D8BA340, &qword_22B363FB0);
    v34 = *v49;
    v35 = v52;
    if ((*v49)(v15, 1, v52) == 1)
    {
      break;
    }

    v36 = v45;
    sub_22B170BE0(v15, v45, &qword_27D8BA340, &qword_22B363FB0);
    if (v34(&v15[v33], 1, v35) == 1)
    {
      (*v44)(v36, v35);
      v23 = v50;
      v2 = v51;
      v27 = Events;
      goto LABEL_4;
    }

    v37 = &v15[v33];
    v38 = v42;
    (*v41)(v42, v37, v35);
    sub_22B342F58(&qword_27D8BA430, MEMORY[0x277CC9578]);
    v43 = sub_22B36078C();
    v39 = *v44;
    (*v44)(v38, v35);
    v39(v36, v35);
    sub_22B123284(v15, &qword_27D8BA340, &qword_22B363FB0);
    v23 = v50;
    v2 = v51;
    v20 = v48;
    v27 = Events;
    v25 = v47;
    if (v43)
    {
      goto LABEL_24;
    }

LABEL_5:
    sub_22B343070(v19, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v22 = (v22 + 1) & v23;
    if (((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return v22;
    }
  }

  v28 = v34(&v15[v33], 1, v35);
  v23 = v50;
  v2 = v51;
  if (v28 != 1)
  {
LABEL_4:
    sub_22B123284(v15, &qword_27D8BA730, &unk_22B367910);
    v25 = v47;
    v20 = v48;
    goto LABEL_5;
  }

  sub_22B123284(v15, &qword_27D8BA340, &qword_22B363FB0);
LABEL_24:
  sub_22B343070(v19, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
  return v22;
}

unint64_t sub_22B3409B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8, v11);
      sub_22B342F58(v25, v26);
      v21 = sub_22B36078C();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t sub_22B340B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_22B36134C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_22B340C58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SessionKey(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    while (1)
    {
      sub_22B342FA0(*(v2 + 48) + v13 * v11, v9, type metadata accessor for SessionKey);
      if (sub_22B35DEEC())
      {
        v15 = v5[5];
        if (sub_22B35DEEC())
        {
          v16 = v5[6];
          v17 = *&v9[v16];
          v18 = *&v9[v16 + 8];
          v19 = (a1 + v16);
          v20 = v17 == *v19 && v18 == v19[1];
          if (v20 || (sub_22B36134C() & 1) != 0)
          {
            v21 = v5[7];
            v22 = *&v9[v21];
            v23 = *&v9[v21 + 8];
            v24 = (a1 + v21);
            v25 = v22 == *v24 && v23 == v24[1];
            if (v25 || (sub_22B36134C() & 1) != 0)
            {
              v26 = v5[8];
              v27 = *&v9[v26];
              v28 = *&v9[v26 + 8];
              v29 = (a1 + v26);
              v30 = v27 == *v29 && v28 == v29[1];
              if (v30 || (sub_22B36134C() & 1) != 0)
              {
                v14 = v5[9];
                if (sub_22B35DEEC())
                {
                  break;
                }
              }
            }
          }
        }
      }

      sub_22B343070(v9, type metadata accessor for SessionKey);
      v11 = (v11 + 1) & v12;
      if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    sub_22B343070(v9, type metadata accessor for SessionKey);
  }

  return v11;
}

unint64_t sub_22B340E8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22B36084C();
      v9 = v8;
      if (v7 == sub_22B36084C() && v9 == v10)
      {
        break;
      }

      v12 = sub_22B36134C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_22B340F90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB098, &qword_22B3678E8);
  v2 = *v0;
  v3 = sub_22B36129C();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = *(&v22 + 1);
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

void *sub_22B34111C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB088, &unk_22B3678D0);
  v2 = *v0;
  v3 = sub_22B36129C();
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

void *sub_22B34128C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC40, &unk_22B367380);
  v2 = *v0;
  v3 = sub_22B36129C();
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
        sub_22B170C58(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22B172454(v25, (*(v4 + 56) + v22));
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

char *sub_22B341430()
{
  v1 = v0;
  v2 = sub_22B35DE9C();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0C0, &qword_22B367920);
  v6 = *v0;
  v7 = sub_22B36129C();
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
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = sub_22B144B30(v29, v30);
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

void *sub_22B3416BC()
{
  v1 = v0;
  v30 = sub_22B35DE9C();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA360, &unk_22B364030);
  v4 = *v0;
  v5 = sub_22B36129C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; *(*(v24 + 56) + 8 * v18) = v23)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v32;
      v20 = *(v32 + 72) * v18;
      v21 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 48) + v20, v30);
      v23 = *(*(v4 + 56) + 8 * v18);
      v24 = v31;
      result = (*(v19 + 32))(*(v31 + 48) + v20, v21, v22);
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

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
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

void *sub_22B341930()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0A8, &unk_22B3678F8);
  v2 = *v0;
  v3 = sub_22B36129C();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v24;
        v27[1] = v23;
        v27[2] = v25;
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

void *sub_22B341AC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0D8, &qword_22B367938);
  v2 = *v0;
  v3 = sub_22B36129C();
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

void *sub_22B341C14()
{
  v1 = v0;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v29 = *(Events - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](Events - 8);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0B0, &qword_22B367908);
  v5 = *v0;
  v6 = sub_22B36129C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
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
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_22B342FA0(*(v5 + 48) + v22, v28, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = v30;
        sub_22B343008(v21, *(v30 + 48) + v22, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        *(*(v24 + 56) + 8 * v20) = v23;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v7 = v30;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
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

char *sub_22B341E60()
{
  v1 = v0;
  v32 = sub_22B35DF1C();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0A0, &qword_22B3678F0);
  v4 = *v0;
  v5 = sub_22B36129C();
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

char *sub_22B3420D0()
{
  v1 = v0;
  v2 = sub_22B35DE9C();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAEA0, &unk_22B367400);
  v6 = *v0;
  v7 = sub_22B36129C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v42 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v41 + 32;
    v38 = v41 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v45 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = 32 * v21;
        v23 = *(v6 + 56);
        v24 = (*(v6 + 48) + 32 * v21);
        v25 = v24[1];
        v44 = *v24;
        v26 = v24[3];
        v43 = v24[2];
        v27 = v40;
        v28 = v41;
        v29 = *(v41 + 72) * v21;
        v30 = v39;
        (*(v41 + 16))(v39, v23 + v29, v40);
        v31 = v42;
        v32 = (*(v42 + 48) + v22);
        v33 = v43;
        *v32 = v44;
        v32[1] = v25;
        v32[2] = v33;
        v32[3] = v26;
        (*(v28 + 32))(*(v31 + 56) + v29, v30, v27);

        v16 = v45;
      }

      while (v45);
    }

    v19 = v12;
    v8 = v42;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v20 = *(v36 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

char *sub_22B342364()
{
  v1 = v0;
  v2 = type metadata accessor for SessionKey(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE90, &qword_22B3673F0);
  v5 = *v0;
  v6 = sub_22B36129C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v32 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v33 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v30;
        v22 = *(v31 + 72) * v20;
        sub_22B342FA0(*(v5 + 48) + v22, v30, type metadata accessor for SessionKey);
        v20 *= 2;
        v23 = (*(v5 + 56) + v20);
        v24 = *v23;
        v25 = v23[1];
        v26 = v32;
        result = sub_22B343008(v21, *(v32 + 48) + v22, type metadata accessor for SessionKey);
        v27 = (*(v26 + 56) + v20);
        *v27 = v24;
        v27[1] = v25;
        v15 = v33;
      }

      while (v33);
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

        v1 = v28;
        v7 = v32;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v33 = (v19 - 1) & v19;
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

id sub_22B3425C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB090, &qword_22B3678E0);
  v2 = *v0;
  v3 = sub_22B36129C();
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

char *sub_22B34272C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - v4;
  v36 = sub_22B35DE9C();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE68, &qword_22B3673B8);
  v7 = *v0;
  v8 = sub_22B36129C();
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
        sub_22B170BE0(*(v7 + 56) + v28, v37, &qword_27D8BAAE0, &unk_22B3673C0);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_22B3229C4(v27, *(v29 + 56) + v28);
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

void *sub_22B342A48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0D0, &qword_22B367930);
  v2 = *v0;
  v3 = sub_22B36129C();
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

char *sub_22B342B94()
{
  v1 = v0;
  v43 = sub_22B35F00C();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22B35DE9C();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB0C8, &qword_22B367928);
  v6 = *v0;
  v7 = sub_22B36129C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
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

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
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

uint64_t sub_22B342EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B342F58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B342FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B343008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B343070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t defaultLogger(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (*a1)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v4 = sub_22B36052C();
      v5 = v4;
      v6 = qword_28140BD10;
    }

    else
    {
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v4 = sub_22B36052C();
      v5 = v4;
      v6 = qword_28140BCB8;
    }
  }

  else if (v3 == 2)
  {
    if (qword_27D8B9FC8 != -1)
    {
      swift_once();
    }

    v4 = sub_22B36052C();
    v5 = v4;
    v6 = qword_27D8BB1D8;
  }

  else if (v3 == 3)
  {
    if (qword_27D8B9FD0 != -1)
    {
      swift_once();
    }

    v4 = sub_22B36052C();
    v5 = v4;
    v6 = qword_27D8BB1F0;
  }

  else
  {
    if (qword_281408CF0 != -1)
    {
      swift_once();
    }

    v4 = sub_22B36052C();
    v5 = v4;
    v6 = qword_28140BC68;
  }

  v7 = __swift_project_value_buffer(v4, v6);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a2, v7, v5);
}

uint64_t ekSignposter()@<X0>(uint64_t a1@<X8>)
{
  if (qword_281408E08 != -1)
  {
    swift_once();
  }

  v2 = sub_22B3604AC();
  v3 = __swift_project_value_buffer(v2, qword_28140BC88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id defaultLog()()
{
  if (qword_281409388 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCD0;

  return v1;
}

uint64_t sub_22B3433D4()
{
  sub_22B343DD8();
  result = sub_22B360FEC();
  qword_28140BCD0 = result;
  return result;
}

uint64_t sub_22B3434E0()
{
  v0 = sub_22B3604AC();
  __swift_allocate_value_buffer(v0, qword_28140BC88);
  __swift_project_value_buffer(v0, qword_28140BC88);
  return sub_22B36049C();
}

uint64_t Logging.description.getter()
{
  v1 = *v0;
  v2 = 0x6E6F6D656144;
  v3 = 0x7254796772656E45;
  v4 = 0x7246746E65696C43;
  if (v1 != 3)
  {
    v4 = 0x636974796C616E41;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x646572616853;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

HomeEnergyDaemon::Logging_optional __swiftcall Logging.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22B34362C()
{
  v1 = *v0;
  v2 = 0x6E6F6D656144;
  v3 = 0x7254796772656E45;
  v4 = 0x7246746E65696C43;
  if (v1 != 3)
  {
    v4 = 0x636974796C616E41;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x646572616853;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void setDefaultLog(_:)(void *a1)
{
  if (qword_281409388 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v3 = qword_28140BCD0;
  qword_28140BCD0 = a1;
  v1 = a1;
}

uint64_t sub_22B343814(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_22B36052C();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  (*(*(v5 - 8) + 24))(v6, a1, v5);
  return swift_endAccess();
}

Swift::Void __swiftcall setProcessName(_:)(Swift::String a1)
{
  xmmword_27D8BB0E0 = a1;
}

Swift::String_optional __swiftcall processName()()
{
  v0 = xmmword_27D8BB0E0;

  v2 = (v0 >> 64);
  v1 = v0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_22B343970(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22B36052C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22B36051C();
}

Swift::Void __swiftcall logMilestone(tag:description:)(Swift::String tag, Swift::String description)
{
  object = description._object;
  countAndFlagsBits = description._countAndFlagsBits;
  v4 = tag._object;
  v5 = tag._countAndFlagsBits;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D8B9FE0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_27D8BB208);
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_22B36050C();
  v13 = sub_22B360D0C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v17 = countAndFlagsBits;
    v15 = v14;
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_22B1A7B20(v5, v4, &v18);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_22B1A7B20(v17, object, &v18);
    _os_log_impl(&dword_22B116000, v12, v13, "(%s) %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
}

unint64_t sub_22B343C34()
{
  result = qword_27D8BB0F0;
  if (!qword_27D8BB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB0F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Logging(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Logging(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B343DD8()
{
  result = qword_281409268;
  if (!qword_281409268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281409268);
  }

  return result;
}

uint64_t sub_22B343E24(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B343F08, v1, 0);
}

uint64_t sub_22B343F08()
{
  v30 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 104) = v2;
  *(v0 + 112) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 96);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = __swift_project_value_buffer(v7, qword_28140BD10);
  *(v0 + 120) = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  *(v0 + 128) = v9;
  *(v0 + 136) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v7);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 96);
  v14 = *(v0 + 64);
  v28 = *(v0 + 56);
  if (v12)
  {
    v26 = v2;
    v15 = swift_slowAlloc();
    v27 = v13;
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22B1A7B20(v26, v4, &v29);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    v17 = *(v14 + 8);
    v17(v27, v28);
  }

  else
  {

    v17 = *(v14 + 8);
    v17(v13, v28);
  }

  *(v0 + 144) = v17;
  v9(*(v0 + 88), v8, *(v0 + 56));
  v18 = sub_22B36050C();
  v19 = sub_22B360D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22B116000, v18, v19, "[BackgroundTask] Execute AMI Refresh", v20, 2u);
    MEMORY[0x23188F650](v20, -1, -1);
  }

  v21 = *(v0 + 88);
  v22 = *(v0 + 56);
  v23 = *(v0 + 64);

  v17(v21, v22);
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  v24[1] = sub_22B34425C;

  return sub_22B335200();
}

uint64_t sub_22B34425C(char a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_22B344374, v3, 0);
}

uint64_t sub_22B344374()
{
  if (*(v0 + 168) == 1)
  {
    if (qword_28140A0B8 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_22B34459C;

    return sub_22B2E11D4(1);
  }

  else
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    v7 = *(v0 + 72);
    v8 = *(v0 + 56);

    v4(v7, v6, v8);
    v9 = sub_22B36050C();
    v10 = sub_22B360D1C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 144);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);
    if (v11)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B116000, v9, v10, "[BackgroundTask] Manatee not enabled. Skip AMI refresh", v16, 2u);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    v12(v13, v15);
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22B34459C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B3446AC, v2, 0);
}

uint64_t sub_22B3446AC()
{
  v26 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  (*(v0 + 128))(*(v0 + 80), *(v0 + 120), *(v0 + 56));

  v3 = sub_22B36050C();
  v4 = sub_22B360CFC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  v7 = *(v0 + 112);
  if (v5)
  {
    v8 = *(v0 + 104);
    v24 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;
    v13 = sub_22B1A7B20(v8, v7, &v25);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_22B116000, v3, v4, "[BackgroundTask] Marking task associated with identifier %{public}s complete", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);

    v14 = v24;
  }

  else
  {
    v15 = *(v0 + 80);
    v10 = *(v0 + 56);
    v16 = *(v0 + 64);
    v17 = *(v0 + 112);

    v14 = v15;
  }

  v6(v14, v10);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22B3448A4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v4 = sub_22B36052C();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B344974, a2, 0);
}

uint64_t sub_22B344974()
{
  v21 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 88) = v2;
  *(v0 + 96) = v4;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 104) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 112) = v9;
  *(v0 + 120) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 80);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, &v20);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 128) = v18;

  return MEMORY[0x2822009F8](sub_22B344BA0, 0, 0);
}

uint64_t sub_22B344BA0()
{
  if (qword_281408968 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_22B344C64;

  return sub_22B193520();
}

uint64_t sub_22B344C64()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B344D74, v2, 0);
}

uint64_t sub_22B344D74()
{
  v24 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  (*(v0 + 112))(*(v0 + 72), *(v0 + 104), *(v0 + 56));

  v3 = sub_22B36050C();
  v4 = sub_22B360D2C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  if (v5)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 64);
    v22 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446210;
    v13 = sub_22B1A7B20(v8, v7, &v23);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_22B116000, v3, v4, "[BackgroundTask] Successfully finished launching the task associated with identifier %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);

    v14 = v22;
  }

  else
  {
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v10 = *(v0 + 56);
    v17 = *(v0 + 96);

    v14 = v15;
  }

  v6(v14, v10);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_22B344F58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B344FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v6 = sub_22B36052C();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B345088, a2, 0);
}

uint64_t sub_22B345088()
{
  v24 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 104) = v2;
  *(v0 + 112) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 120) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 128) = v9;
  *(v0 + 136) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, &v23);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 144) = v18;
  v19 = swift_task_alloc();
  *(v0 + 152) = v19;
  *v19 = v0;
  v19[1] = sub_22B3452E8;
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);

  return sub_22B12ACA0(v21, v20);
}

uint64_t sub_22B3452E8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B3453F8, v2, 0);
}

uint64_t sub_22B3453F8()
{
  v24 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  (*(v0 + 128))(*(v0 + 88), *(v0 + 120), *(v0 + 72));

  v3 = sub_22B36050C();
  v4 = sub_22B360D2C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  v7 = *(v0 + 112);
  if (v5)
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 80);
    v22 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446210;
    v13 = sub_22B1A7B20(v8, v7, &v23);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_22B116000, v3, v4, "[BackgroundTask] Successfully finished launching the task associated with identifier %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);

    v14 = v22;
  }

  else
  {
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v10 = *(v0 + 72);
    v17 = *(v0 + 112);

    v14 = v15;
  }

  v6(v14, v10);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_22B3455DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v7 = sub_22B36052C();
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v9 = *(v8 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3456B4, a2, 0);
}

uint64_t sub_22B3456B4()
{
  v25 = v0;
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 112) = v2;
  *(v0 + 120) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 128) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 136) = v9;
  *(v0 + 144) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 104);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, &v24);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 152) = v18;
  v19 = swift_task_alloc();
  *(v0 + 160) = v19;
  *v19 = v0;
  v19[1] = sub_22B345918;
  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  v22 = *(v0 + 56);

  return sub_22B15F0A8(v22, v20, v21);
}

uint64_t sub_22B345918()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B345A28, v2, 0);
}

uint64_t sub_22B345A28()
{
  v24 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  (*(v0 + 136))(*(v0 + 96), *(v0 + 128), *(v0 + 80));

  v3 = sub_22B36050C();
  v4 = sub_22B360D2C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  v7 = *(v0 + 120);
  if (v5)
  {
    v8 = *(v0 + 112);
    v9 = *(v0 + 88);
    v22 = *(v0 + 96);
    v10 = *(v0 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446210;
    v13 = sub_22B1A7B20(v8, v7, &v23);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_22B116000, v3, v4, "[BackgroundTask] Successfully finished launching the task associated with identifier %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);

    v14 = v22;
  }

  else
  {
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v10 = *(v0 + 80);
    v17 = *(v0 + 120);

    v14 = v15;
  }

  v6(v14, v10);
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);
  [*__swift_project_boxed_opaque_existential_1(*(v0 + 40) *(*(v0 + 40) + 24))];

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_22B345C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v7 = sub_22B36052C();
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v9 = *(v8 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B345D30, a2, 0);
}

uint64_t sub_22B345D30()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 136) = v2;
  *(v0 + 144) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 152) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 128);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, v25);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 176) = v18;
  v19 = swift_task_alloc();
  *(v0 + 184) = v19;
  *v19 = v0;
  v19[1] = sub_22B345FC0;
  v20 = *(v0 + 72);
  v21 = *(v0 + 80);
  v22 = *(v0 + 64);
  v23 = *MEMORY[0x277D85DE8];

  return sub_22B15F740(v22, v20, v21);
}

uint64_t sub_22B345FC0(char a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 192) = a1;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B346104, v3, 0);
}

uint64_t sub_22B346104()
{
  v74 = v0;
  v73[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 88);
  if (*(v0 + 192) == 1)
  {
    v2(*(v0 + 120), v3, v5);

    v6 = sub_22B36050C();
    v7 = sub_22B360D2C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 176);
    v10 = *(v0 + 144);
    if (v8)
    {
      v11 = *(v0 + 136);
      v70 = *(v0 + 120);
      v13 = *(v0 + 88);
      v12 = *(v0 + 96);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v73[0] = v15;
      *v14 = 136446210;
      v16 = sub_22B1A7B20(v11, v10, v73);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_22B116000, v6, v7, "[BackgroundTask] Successfully finished launching the task associated with identifier %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23188F650](v15, -1, -1);
      MEMORY[0x23188F650](v14, -1, -1);

      v17 = v70;
    }

    else
    {
      v29 = *(v0 + 120);
      v13 = *(v0 + 88);
      v30 = *(v0 + 96);
      v31 = *(v0 + 144);

      v17 = v29;
    }

    v9(v17, v13);
    [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  }

  else
  {
    v2(*(v0 + 112), v3, v5);

    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 176);
    if (v20)
    {
      v23 = *(v0 + 136);
      v22 = *(v0 + 144);
      v71 = *(v0 + 112);
      v25 = *(v0 + 88);
      v24 = *(v0 + 96);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v73[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_22B1A7B20(v23, v22, v73);
      _os_log_impl(&dword_22B116000, v18, v19, "[BackgroundTask] Task associated with identifier %{public}s did not complete. Set retry.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x23188F650](v27, -1, -1);
      MEMORY[0x23188F650](v26, -1, -1);

      v28 = v71;
    }

    else
    {
      v32 = *(v0 + 112);
      v25 = *(v0 + 88);
      v33 = *(v0 + 96);

      v28 = v32;
    }

    v21(v28, v25);
    v34 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
    *(v0 + 40) = 0;
    v35 = [v34 setTaskExpiredWithRetryAfter:v0 + 40 error:0.0];
    v36 = *(v0 + 40);
    if (v35)
    {
      v37 = *(v0 + 144);
      v38 = v36;
    }

    else
    {
      v40 = *(v0 + 160);
      v39 = *(v0 + 168);
      v42 = *(v0 + 144);
      v41 = *(v0 + 152);
      v43 = *(v0 + 104);
      v44 = *(v0 + 88);
      v45 = v36;
      v46 = sub_22B35DB9C();

      swift_willThrow();
      v40(v43, v41, v44);

      v47 = sub_22B36050C();
      v48 = sub_22B360D2C();

      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 176);
      v51 = *(v0 + 144);
      if (v49)
      {
        v72 = *(v0 + 176);
        v52 = *(v0 + 136);
        v53 = *(v0 + 96);
        v69 = *(v0 + 104);
        v54 = *(v0 + 88);
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v73[0] = v56;
        *v55 = 136446210;
        v57 = sub_22B1A7B20(v52, v51, v73);

        *(v55 + 4) = v57;
        _os_log_impl(&dword_22B116000, v47, v48, "[BackgroundTask] Task associated with identifier %{public}s could not be retried. Set as completed", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x23188F650](v56, -1, -1);
        MEMORY[0x23188F650](v55, -1, -1);

        v72(v69, v54);
      }

      else
      {
        v59 = *(v0 + 96);
        v58 = *(v0 + 104);
        v60 = *(v0 + 88);
        v61 = *(v0 + 144);

        v50(v58, v60);
      }

      [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
    }
  }

  v63 = *(v0 + 120);
  v62 = *(v0 + 128);
  v65 = *(v0 + 104);
  v64 = *(v0 + 112);

  v66 = *(v0 + 8);
  v67 = *MEMORY[0x277D85DE8];

  return v66();
}

uint64_t sub_22B346628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v7 = sub_22B36052C();
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v9 = *(v8 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B34674C, a2, 0);
}

uint64_t sub_22B34674C()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 136) = v2;
  *(v0 + 144) = v4;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 152) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 128);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, v25);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 176) = v18;
  v19 = swift_task_alloc();
  *(v0 + 184) = v19;
  *v19 = v0;
  v19[1] = sub_22B3469DC;
  v20 = *(v0 + 72);
  v21 = *(v0 + 80);
  v22 = *(v0 + 64);
  v23 = *MEMORY[0x277D85DE8];

  return sub_22B21D774(v22, v20, v21);
}

uint64_t sub_22B3469DC(char a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 192) = a1;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B347A24, v3, 0);
}

uint64_t sub_22B346B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v5 = sub_22B36052C();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B346C40, a2, 0);
}

uint64_t sub_22B346C40()
{
  v24 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 120) = v2;
  *(v0 + 128) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 136) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 144) = v9;
  *(v0 + 152) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 112);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, v23);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 160) = v18;
  v19 = swift_task_alloc();
  *(v0 + 168) = v19;
  *v19 = v0;
  v19[1] = sub_22B346ECC;
  v20 = *(v0 + 64);
  v21 = *MEMORY[0x277D85DE8];

  return sub_22B21E5F0(v20);
}

uint64_t sub_22B346ECC(char a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 176) = a1;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B347A98, v3, 0);
}

uint64_t sub_22B347010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v5 = sub_22B36052C();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B347130, a2, 0);
}

uint64_t sub_22B347130()
{
  v24 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  v2 = sub_22B36084C();
  v4 = v3;

  *(v0 + 120) = v2;
  *(v0 + 128) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 136) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 144) = v9;
  *(v0 + 152) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 112);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22B1A7B20(v2, v4, v23);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] Successfully launched the task associated with identifier %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  *(v0 + 160) = v18;
  v19 = swift_task_alloc();
  *(v0 + 168) = v19;
  *v19 = v0;
  v19[1] = sub_22B3473BC;
  v20 = *(v0 + 64);
  v21 = *MEMORY[0x277D85DE8];

  return sub_22B21F494(v20);
}

uint64_t sub_22B3473BC(char a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 176) = a1;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B347500, v3, 0);
}

uint64_t sub_22B347500()
{
  v74 = v0;
  v73[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 72);
  if (*(v0 + 176) == 1)
  {
    v2(*(v0 + 104), v3, v5);

    v6 = sub_22B36050C();
    v7 = sub_22B360D2C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 160);
    v10 = *(v0 + 128);
    if (v8)
    {
      v11 = *(v0 + 120);
      v70 = *(v0 + 104);
      v13 = *(v0 + 72);
      v12 = *(v0 + 80);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v73[0] = v15;
      *v14 = 136446210;
      v16 = sub_22B1A7B20(v11, v10, v73);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_22B116000, v6, v7, "[BackgroundTask] Successfully finished launching the task associated with identifier %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23188F650](v15, -1, -1);
      MEMORY[0x23188F650](v14, -1, -1);

      v17 = v70;
    }

    else
    {
      v29 = *(v0 + 104);
      v13 = *(v0 + 72);
      v30 = *(v0 + 80);
      v31 = *(v0 + 128);

      v17 = v29;
    }

    v9(v17, v13);
    [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
  }

  else
  {
    v2(*(v0 + 96), v3, v5);

    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 160);
    if (v20)
    {
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v71 = *(v0 + 96);
      v25 = *(v0 + 72);
      v24 = *(v0 + 80);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v73[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_22B1A7B20(v23, v22, v73);
      _os_log_impl(&dword_22B116000, v18, v19, "[BackgroundTask] Task associated with identifier %{public}s did not complete. Set retry.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x23188F650](v27, -1, -1);
      MEMORY[0x23188F650](v26, -1, -1);

      v28 = v71;
    }

    else
    {
      v32 = *(v0 + 96);
      v25 = *(v0 + 72);
      v33 = *(v0 + 80);

      v28 = v32;
    }

    v21(v28, v25);
    v34 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
    *(v0 + 40) = 0;
    v35 = [v34 setTaskExpiredWithRetryAfter:v0 + 40 error:0.0];
    v36 = *(v0 + 40);
    if (v35)
    {
      v37 = *(v0 + 128);
      v38 = v36;
    }

    else
    {
      v40 = *(v0 + 144);
      v39 = *(v0 + 152);
      v42 = *(v0 + 128);
      v41 = *(v0 + 136);
      v43 = *(v0 + 88);
      v44 = *(v0 + 72);
      v45 = v36;
      v46 = sub_22B35DB9C();

      swift_willThrow();
      v40(v43, v41, v44);

      v47 = sub_22B36050C();
      v48 = sub_22B360D2C();

      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 160);
      v51 = *(v0 + 128);
      if (v49)
      {
        v72 = *(v0 + 160);
        v52 = *(v0 + 120);
        v53 = *(v0 + 80);
        v69 = *(v0 + 88);
        v54 = *(v0 + 72);
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v73[0] = v56;
        *v55 = 136446210;
        v57 = sub_22B1A7B20(v52, v51, v73);

        *(v55 + 4) = v57;
        _os_log_impl(&dword_22B116000, v47, v48, "[BackgroundTask] Task associated with identifier %{public}s could not be retried. Set as completed", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x23188F650](v56, -1, -1);
        MEMORY[0x23188F650](v55, -1, -1);

        v72(v69, v54);
      }

      else
      {
        v59 = *(v0 + 80);
        v58 = *(v0 + 88);
        v60 = *(v0 + 72);
        v61 = *(v0 + 128);

        v50(v58, v60);
      }

      [*__swift_project_boxed_opaque_existential_1(*(v0 + 48) *(*(v0 + 48) + 24))];
    }
  }

  v63 = *(v0 + 104);
  v62 = *(v0 + 112);
  v65 = *(v0 + 88);
  v64 = *(v0 + 96);

  v66 = *(v0 + 8);
  v67 = *MEMORY[0x277D85DE8];

  return v66();
}

uint64_t sub_22B347A24()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22B346104();
}

uint64_t sub_22B347A98()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_22B347500();
}

uint64_t sub_22B347B88(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  v35[1] = a5;
  v36 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v35 - v10;
  v12 = sub_22B36052C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_28140A0C8;
  v18 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_28140BD10);
  swift_beginAccess();
  (*(v13 + 16))(v16, v19, v12);

  v20 = sub_22B36050C();
  v21 = sub_22B360CFC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35[0] = v18;
    v24 = v11;
    v25 = a2;
    v26 = v23;
    aBlock[0] = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_22B1A7B20(v25, a3, aBlock);
    _os_log_impl(&dword_22B116000, v20, v21, "[BackgroundTask] Beginning execution of task associated with identifier %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v27 = v26;
    a2 = v25;
    v11 = v24;
    v18 = v35[0];
    MEMORY[0x23188F650](v27, -1, -1);
    MEMORY[0x23188F650](v22, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v38 = &type metadata for BackgroundSystemTask;
  v39 = &off_283EFC950;
  aBlock[0] = v18;
  v28 = v36(aBlock);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = v28;
  v39 = sub_22B349D14;
  v40 = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  v38 = &block_descriptor_8;
  v30 = a2;
  v31 = _Block_copy(aBlock);

  [v18 setExpirationHandler_];
  _Block_release(v31);

  v32 = sub_22B360B6C();
  (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v28;
  v33[5] = v30;
  v33[6] = a3;

  sub_22B123DF0(0, 0, v11, &unk_22B367B78, v33);
}

uint64_t sub_22B347FCC(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_22B36050C();
  v11 = sub_22B360CFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_22B1A7B20(a1, a2, &v15);
    _os_log_impl(&dword_22B116000, v10, v11, "[BackgroundTask] System scheduler is expiring the task run associated with identifier %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  return sub_22B360BDC();
}

uint64_t sub_22B348218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v8 = sub_22B36052C();
  v6[12] = v8;
  v9 = *(v8 - 8);
  v6[13] = v9;
  v10 = *(v9 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v11 = *(MEMORY[0x277D857D0] + 4);
  v12 = swift_task_alloc();
  v6[16] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  *v12 = v6;
  v12[1] = sub_22B348350;
  v14 = MEMORY[0x277D84950];
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v6 + 8, a4, v15, v13, v14);
}

uint64_t sub_22B348350()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B34844C, 0, 0);
}

uint64_t sub_22B34844C()
{
  v37 = v0;
  v1 = *(v0 + 64);
  if (*(v0 + 72))
  {
    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v2, v5, v4);

    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    if (v8)
    {
      v35 = *(v0 + 112);
      v13 = *(v0 + 80);
      v12 = *(v0 + 88);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_22B1A7B20(v13, v12, &v36);
      _os_log_impl(&dword_22B116000, v6, v7, "[BackgroundTask] Execution of task associated with identifier %{public}s failed", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23188F650](v15, -1, -1);
      MEMORY[0x23188F650](v14, -1, -1);
      sub_22B1CD010(v1, 1);

      (*(v9 + 8))(v35, v11);
    }

    else
    {
      sub_22B1CD010(v1, 1);

      (*(v9 + 8))(v10, v11);
    }
  }

  else
  {
    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 120);
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    v20 = __swift_project_value_buffer(v17, qword_28140BD10);
    swift_beginAccess();
    (*(v18 + 16))(v16, v20, v17);

    v21 = sub_22B36050C();
    v22 = sub_22B360CFC();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 120);
    v25 = *(v0 + 96);
    v26 = *(v0 + 104);
    if (v23)
    {
      v28 = *(v0 + 80);
      v27 = *(v0 + 88);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_22B1A7B20(v28, v27, &v36);
      _os_log_impl(&dword_22B116000, v21, v22, "[BackgroundTask] Finished execution of task associated with identifier %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    (*(v26 + 8))(v24, v25);
  }

  v32 = *(v0 + 112);
  v31 = *(v0 + 120);

  v33 = *(v0 + 8);

  return v33();
}

void sub_22B3487E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22B348848(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B3605FC();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B36052C();
  v65 = *(v11 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v54 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  v61 = *(v65 + 16);
  v62 = v22;
  v61(v21, v22, v11);

  v23 = sub_22B36050C();
  v24 = sub_22B360CFC();

  v25 = os_log_type_enabled(v23, v24);
  v64 = a1;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v55 = v11;
    v27 = a3;
    v28 = a4;
    v29 = v26;
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_22B1A7B20(v64, a2, aBlock);
    _os_log_impl(&dword_22B116000, v23, v24, "[BackgroundTask] Setting up to register launch handler associated with identifier %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v31 = v30;
    a1 = v64;
    MEMORY[0x23188F650](v31, -1, -1);
    v32 = v29;
    a4 = v28;
    a3 = v27;
    v11 = v55;
    v33 = v65;
    MEMORY[0x23188F650](v32, -1, -1);

    v34 = v33;
  }

  else
  {

    v34 = v65;
  }

  v63 = *(v34 + 8);
  v63(v21, v11);
  v35 = swift_allocObject();
  v35[2] = a1;
  v35[3] = a2;
  v35[4] = a3;
  v35[5] = a4;
  v61(v18, v62, v11);
  swift_bridgeObjectRetain_n();

  v36 = sub_22B36050C();
  v37 = sub_22B360CFC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_22B1A7B20(v64, a2, aBlock);
    _os_log_impl(&dword_22B116000, v36, v37, "[BackgroundTask] Attempting to register launch handler associated with identifier %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x23188F650](v39, -1, -1);
    MEMORY[0x23188F650](v38, -1, -1);
  }

  v63(v18, v11);
  v40 = [objc_opt_self() sharedScheduler];
  v41 = sub_22B36081C();
  sub_22B11870C();
  v43 = v58;
  v42 = v59;
  v44 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277D851A8], v60);
  v45 = sub_22B360DDC();
  (*(v42 + 8))(v43, v44);
  aBlock[4] = sub_22B349D08;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B3487E0;
  aBlock[3] = &block_descriptor_32;
  v46 = _Block_copy(aBlock);

  LODWORD(v42) = [v40 registerForTaskWithIdentifier:v41 usingQueue:v45 launchHandler:v46];
  _Block_release(v46);

  if (!v42)
  {
    v47 = v57;
    v61(v57, v62, v11);

    v48 = sub_22B36050C();
    v49 = sub_22B360CFC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_22B1A7B20(v64, a2, aBlock);
      v52 = "[BackgroundTask] Failed to register launch handler associated with identifier %{public}s";
      goto LABEL_13;
    }

LABEL_14:

    return (v63)(v47, v11);
  }

  v47 = v56;
  v61(v56, v62, v11);

  v48 = sub_22B36050C();
  v49 = sub_22B360CFC();

  if (!os_log_type_enabled(v48, v49))
  {
    goto LABEL_14;
  }

  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  aBlock[0] = v51;
  *v50 = 136446210;
  *(v50 + 4) = sub_22B1A7B20(v64, a2, aBlock);
  v52 = "[BackgroundTask] Successfully registered launch handler associated with identifier %{public}s";
LABEL_13:
  _os_log_impl(&dword_22B116000, v48, v49, v52, v50, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v51);
  MEMORY[0x23188F650](v51, -1, -1);
  MEMORY[0x23188F650](v50, -1, -1);

  return (v63)(v47, v11);
}

void sub_22B348FC8(void *a1, int a2, int a3)
{
  v102 = a2;
  LODWORD(v103) = a3;
  v109[4] = *MEMORY[0x277D85DE8];
  v105 = sub_22B36052C();
  v108 = *(v105 - 8);
  v4 = *(v108 + 64);
  MEMORY[0x28223BE20](v105);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v97 - v8;
  MEMORY[0x28223BE20](v10);
  v106 = &v97 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v97 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = *v18;
  v20 = v18[1];
  v21 = objc_opt_self();

  v22 = [v21 sharedScheduler];
  v104 = v19;
  v107 = v20;
  v23 = sub_22B36081C();
  v24 = [v22 taskRequestForIdentifier_];

  if (v24)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = v105;
    v26 = __swift_project_value_buffer(v105, qword_28140BD10);
    swift_beginAccess();
    v27 = v108;
    (*(v108 + 16))(v106, v26, v25);
    v28 = v107;

    v29 = sub_22B36050C();
    v30 = sub_22B360D1C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v109[0] = v32;
      *v31 = 136446210;
      v33 = sub_22B1A7B20(v104, v28, v109);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_22B116000, v29, v30, "[BackgroundTask] Declining to submit task request associated with identifier\n%{public}s because another request is already scheduled, but not yet completed", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23188F650](v32, -1, -1);
      MEMORY[0x23188F650](v31, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v106, v25);
    goto LABEL_19;
  }

  v98 = v9;
  v99 = v14;
  v97 = v6;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v34 = v105;
  v35 = __swift_project_value_buffer(v105, qword_28140BD10);
  swift_beginAccess();
  v36 = v108;
  v37 = *(v108 + 16);
  v38 = v17;
  v106 = v35;
  v100 = v37;
  v101 = v108 + 16;
  v37(v17, v35, v34);
  v39 = v107;

  v40 = sub_22B36050C();
  v41 = sub_22B360CFC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v109[0] = v43;
    *v42 = 136446210;
    *(v42 + 4) = sub_22B1A7B20(v104, v39, v109);
    _os_log_impl(&dword_22B116000, v40, v41, "[BackgroundTask] Attempting to submit task request associated with identifier\n%{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v44 = v43;
    v34 = v105;
    MEMORY[0x23188F650](v44, -1, -1);
    MEMORY[0x23188F650](v42, -1, -1);
  }

  v45 = *(v36 + 8);
  v45(v38, v34);
  v46 = [v21 sharedScheduler];
  v47 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = *v47;
  v49 = *(v47 + 1);
  v50 = v47[2];
  v51 = *(v47 + 24);
  v52 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v53 = sub_22B36081C();
  v54 = [v52 initWithIdentifier_];

  v55 = v54;
  [v55 setRequiresNetworkConnectivity_];
  v56 = v103;
  [v55 setRequiresExternalPower_];
  v57 = sub_22B36081C();
  [v55 setGroupName_];

  [v55 setGroupConcurrencyLimit_];
  if (v102)
  {
    [v55 setShouldWakeDevice_];
    [v55 setRequiresExternalPower_];
  }

  [v55 setResources_];
  [v55 setRequiresBuddyComplete_];
  v58 = 5.0;
  if ((v51 & 1) == 0)
  {
    [v55 setPriority_];
    [v55 setScheduleAfter_];
    v58 = v50 + 5.0;
  }

  [v55 setTrySchedulingBefore_];

  v109[0] = 0;
  v59 = [v46 submitTaskRequest:v55 error:v109];

  v60 = v109[0];
  if (v59)
  {
    v61 = v99;
    v100(v99, v106, v34);
    v62 = v107;

    v63 = v60;
    v64 = sub_22B36050C();
    v65 = sub_22B360CFC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v109[0] = v67;
      *v66 = 136446210;
      v68 = sub_22B1A7B20(v104, v62, v109);

      *(v66 + 4) = v68;
      _os_log_impl(&dword_22B116000, v64, v65, "[BackgroundTask] Successfully submitted task request associated with identifier\n%{public}s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x23188F650](v67, -1, -1);
      MEMORY[0x23188F650](v66, -1, -1);

      v69 = v99;
    }

    else
    {

      v69 = v61;
    }

    v45(v69, v34);
  }

  else
  {
    v71 = v109[0];
    v72 = sub_22B35DB9C();

    swift_willThrow();
    type metadata accessor for Code(0);
    v109[0] = 5;
    v73 = v72;
    sub_22B349B68();
    LOBYTE(v71) = sub_22B35DA9C();

    if (v71)
    {

      v74 = v98;
      v100(v98, v106, v34);
      v75 = v107;

      v76 = sub_22B36050C();
      v77 = sub_22B360CFC();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v109[0] = v79;
        *v78 = 136446210;
        v80 = v45;
        v81 = sub_22B1A7B20(v104, v75, v109);

        *(v78 + 4) = v81;
        _os_log_impl(&dword_22B116000, v76, v77, "[BackgroundTask] Attempted to submit request for\n%{public}s even though another request was already pending", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x23188F650](v79, -1, -1);
        MEMORY[0x23188F650](v78, -1, -1);

        v80(v98, v34);
      }

      else
      {

        v45(v74, v34);
      }

LABEL_19:
      sub_22B349BC0();
      swift_allocError();
      *v70 = 1;
      swift_willThrow();
      goto LABEL_30;
    }

    v103 = v45;
    v82 = v97;
    v100(v97, v106, v34);
    v83 = v107;

    v84 = v72;
    v85 = sub_22B36050C();
    v86 = sub_22B360D1C();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v109[0] = v89;
      *v87 = 136446466;
      v90 = sub_22B1A7B20(v104, v83, v109);

      *(v87 + 4) = v90;
      *(v87 + 12) = 2114;
      v91 = v72;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v87 + 14) = v92;
      *v88 = v92;
      _os_log_impl(&dword_22B116000, v85, v86, "[BackgroundTask] Received unknown error while attempting to submit task request\nassociated with identifier %{public}s: %{public}@", v87, 0x16u);
      sub_22B12F10C(v88);
      MEMORY[0x23188F650](v88, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x23188F650](v89, -1, -1);
      MEMORY[0x23188F650](v87, -1, -1);

      v93 = v82;
      v94 = v105;
    }

    else
    {

      v93 = v82;
      v94 = v34;
    }

    v103(v93, v94);
    sub_22B349BC0();
    swift_allocError();
    *v95 = 0;
    swift_willThrow();
  }

LABEL_30:
  v96 = *MEMORY[0x277D85DE8];
}

unint64_t sub_22B349B68()
{
  result = qword_27D8BA108;
  if (!qword_27D8BA108)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA108);
  }

  return result;
}

unint64_t sub_22B349BC0()
{
  result = qword_27D8BB0F8;
  if (!qword_27D8BB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB0F8);
  }

  return result;
}

id sub_22B349C14()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedScheduler];
  v1 = sub_22B36081C();
  v6[0] = 0;
  v2 = [v0 cancelTaskRequestWithIdentifier:v1 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_22B35DB9C();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B349D20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B119A60;

  return sub_22B348218(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_22B349DFC()
{
  result = qword_27D8BB100;
  if (!qword_27D8BB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB100);
  }

  return result;
}

void __swiftcall HomeEnergyNotificationContext.init(title:body:tapURL:homeID:seriesNotifications:)(HomeEnergyDaemon::HomeEnergyNotificationContext *__return_ptr retstr, Swift::String title, Swift::String body, Swift::String_optional tapURL, Swift::String_optional homeID, Swift::Bool seriesNotifications)
{
  retstr->title = title;
  retstr->body = body;
  retstr->tapURL = tapURL;
  retstr->homeID = homeID;
  retstr->seriesNotifications = seriesNotifications;
}

unint64_t sub_22B349E74()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[5];
  v6 = v0[7];
  v14 = v0[4];
  v15 = v0[6];
  v16 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634C0;
  *(inited + 32) = 0x656C746974;
  v8 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = 2036625250;
  *(inited + 120) = v8;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v3;

  v9 = sub_22B321AAC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
  swift_arrayDestroy();
  if (v5)
  {
    v19 = v8;
    *&v18 = v14;
    *(&v18 + 1) = v5;
    sub_22B172454(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298(v17, 0x4C5255706174, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v6)
  {
    v19 = v8;
    *&v18 = v15;
    *(&v18 + 1) = v6;
    sub_22B172454(&v18, v17);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298(v17, 0x4449656D6F68, 0xE600000000000000, v11);
  }

  v19 = MEMORY[0x277D839B0];
  LOBYTE(v18) = v16;
  sub_22B172454(&v18, v17);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298(v17, 0xD000000000000012, 0x800000022B36A9D0, v12);
  return v9;
}

uint64_t HomeEnergyNotificationStatus.description.getter(uint64_t a1)
{
  result = 0xD000000000000025;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0xD00000000000003ALL;
    }

    if (a1 == 3)
    {
      return 0xD000000000000037;
    }

    goto LABEL_10;
  }

  if (a1 && a1 != 1)
  {
LABEL_10:
    result = sub_22B36138C();
    __break(1u);
  }

  return result;
}

unint64_t sub_22B34A160@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22B34A19C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_22B34A19C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22B34A1B0()
{
  result = qword_27D8BB108;
  if (!qword_27D8BB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB108);
  }

  return result;
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

uint64_t sub_22B34A238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_22B34A280(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22B34A2E4(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_22B34A308, 0, 0);
}

uint64_t sub_22B34A308()
{
  v1 = MEMORY[0x277D84F98];
  *(v0 + 144) = MEMORY[0x277D84F98];
  if (sub_22B35EEBC())
  {
    v2 = swift_task_alloc();
    *(v0 + 160) = v2;
    *v2 = v0;
    v2[1] = sub_22B34A4B8;

    return sub_22B34F920();
  }

  else
  {
    *(v0 + 40) = MEMORY[0x277D839B0];
    *(v0 + 16) = 0;
    sub_22B172454((v0 + 16), (v0 + 48));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v0 + 48), 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v0 + 144) = v1;
    *(v0 + 104) = MEMORY[0x277D837D0];
    *(v0 + 80) = 0xD000000000000019;
    *(v0 + 88) = 0x800000022B36F130;
    sub_22B172454((v0 + 80), (v0 + 112));
    v5 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v0 + 112), 0x654D737574617473, 0xED00006567617373, v5);
    v6 = *(v0 + 8);

    return v6(v1);
  }
}

uint64_t sub_22B34A4B8(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_22B34A5B8, 0, 0);
}

uint64_t sub_22B34A5B8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 176);
  v4 = MEMORY[0x23188EEB0]();
  sub_22B34AD44(v2, (v0 + 144), v1, v3);
  v5 = *(v0 + 168);

  objc_autoreleasePoolPop(v4);
  v6 = *(v0 + 144);
  v7 = *(v0 + 8);

  return v7(v6);
}

void sub_22B34A690(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v5 = a2;
  v6 = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F98];
  if (a1)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    if (v11)
    {
      while (1)
      {
        v14 = v13;
LABEL_9:
        v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
        v17 = *v15;
        v16 = v15[1];

        v3 = MEMORY[0x23188EEB0](v18);
        sub_22B34A8B4(v17, v16, &v27);
        if (v4)
        {
          break;
        }

        v4 = 0;
        v11 &= v11 - 1;

        objc_autoreleasePoolPop(v3);
        v13 = v14;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v12)
        {

          v6 = v27;
          v5 = a2;
          goto LABEL_13;
        }

        v11 = *(v8 + 8 * v14);
        ++v13;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    objc_autoreleasePoolPop(v3);
    __break(1u);
  }

  else
  {
LABEL_13:
    v19 = [objc_opt_self() standardUserDefaults];
    v20 = [v19 dictionaryRepresentation];

    v21 = sub_22B3606EC();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB030, &unk_22B367700);
    *&v25 = v21;
    sub_22B172454(&v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298(v24, 0xD000000000000010, 0x800000022B36F1A0, isUniquelyReferenced_nonNull_native);
    *v5 = v6;
  }
}

void sub_22B34A8B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36[4] = a3;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_22B36081C();
  v16 = [v14 initWithSuiteName_];

  if (v16)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v33 = a1;
    v17 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v7 + 16))(v13, v17, v6);

    v18 = sub_22B36050C();
    v19 = sub_22B360CFC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v3;
      v35[0] = v21;
      v22 = v21;
      *v20 = 136315138;
      v32 = v6;
      v23 = v33;
      *(v20 + 4) = sub_22B1A7B20(v33, a2, v35);
      _os_log_impl(&dword_22B116000, v18, v19, "Reading %s defaults", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23188F650](v22, -1, -1);
      MEMORY[0x23188F650](v20, -1, -1);

      (*(v7 + 8))(v13, v32);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
      v23 = v33;
    }

    v30 = [v16 dictionaryRepresentation];
    v31 = sub_22B3606EC();

    v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB030, &unk_22B367700);
    v35[0] = v31;
    sub_22B2AC464(v35, v23, a2);
  }

  else
  {
    v24 = a1;
    v34 = v3;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v7 + 16))(v11, v25, v6);

    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_22B1A7B20(v24, a2, v36);
      _os_log_impl(&dword_22B116000, v26, v27, "Error reading %s defaults", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23188F650](v29, -1, -1);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
  }
}

void sub_22B34AD44(uint64_t a1, id *a2, void *a3, char a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = sub_22B36052C();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v63 - v12;
  v64 = sub_22B35DC4C();
  v66 = *(v64 - 8);
  v13 = *(v66 + 64);
  v14 = MEMORY[0x28223BE20](v64);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = &v63 - v17;
  v18 = sub_22B310CC8(&unk_283EF8180);
  v19 = MEMORY[0x277D837D0];
  v20 = swift_arrayDestroy();
  v21 = MEMORY[0x23188EEB0](v20);
  sub_22B34A690(v18, v71);
  if (v4)
  {
    objc_autoreleasePoolPop(v21);
    __break(1u);

    __break(1u);

    v62 = *a2;
    *a2 = v71[0];

    __break(1u);
    objc_autoreleasePoolPop(a2);
    __break(1u);
  }

  else
  {

    objc_autoreleasePoolPop(v21);
    v22 = v71[0];
    v23 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v23;
    sub_22B350FE8(a3, sub_22B34F44C, 0, isUniquelyReferenced_nonNull_native, v71);

    v25 = *a2;
    *a2 = v71[0];

    v26 = *a2;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_22B350FE8(v22, sub_22B34F44C, 0, v27, v71);

    v28 = *a2;
    *a2 = v71[0];

    v72 = MEMORY[0x277D839B0];
    LOBYTE(v71[0]) = 1;
    sub_22B2AC464(v71, 0x737574617473, 0xE600000000000000);
    v72 = v19;
    v71[0] = 0xD000000000000029;
    v71[1] = 0x800000022B36F150;
    sub_22B2AC464(v71, 0x654D737574617473, 0xED00006567617373);
    if (a4)
    {
      v29 = objc_opt_self();
      v30 = *a2;

      v31 = sub_22B3606CC();

      v71[0] = 0;
      v32 = [v29 dataWithPropertyList:v31 format:200 options:0 error:v71];

      v33 = v71[0];
      if (v32)
      {
        v34 = sub_22B35DCDC();
        v36 = v35;

        v37 = MEMORY[0x23188EEB0]();
        v38 = v67;
        sub_22B34CE74(0xD000000000000015, 1, v67);

        objc_autoreleasePoolPop(v37);
        sub_22B35DBEC();
        v39 = v64;
        (*(v66 + 40))(v38, v16, v64);
        sub_22B35DCEC();
        v65 = v36;
        v51 = v68;
        v50 = v69;
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v50, qword_28140BD10);
        swift_beginAccess();
        v52 = v63;
        (*(v51 + 16))();
        v53 = sub_22B36050C();
        v54 = sub_22B360CFC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = v39;
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v70 = v57;
          *v56 = 136315138;
          swift_beginAccess();
          sub_22B351918(&unk_28140B4A0, MEMORY[0x277CC9260]);
          v58 = sub_22B36131C();
          v60 = sub_22B1A7B20(v58, v59, &v70);

          *(v56 + 4) = v60;
          _os_log_impl(&dword_22B116000, v53, v54, "Wrote diagnostics to file %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x23188F650](v57, -1, -1);
          MEMORY[0x23188F650](v56, -1, -1);
          sub_22B12F174(v34, v65);

          (*(v68 + 8))(v63, v69);
          (*(v66 + 8))(v67, v55);
        }

        else
        {
          sub_22B12F174(v34, v65);

          (*(v51 + 8))(v52, v50);
          (*(v66 + 8))(v67, v39);
        }
      }

      else
      {
        v41 = v33;

        v42 = sub_22B35DB9C();

        swift_willThrow();
        v44 = v68;
        v43 = v69;
        v45 = v65;
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v46 = __swift_project_value_buffer(v43, qword_28140BD10);
        swift_beginAccess();
        (*(v44 + 16))(v45, v46, v43);
        v47 = sub_22B36050C();
        v48 = sub_22B360D1C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_22B116000, v47, v48, "Failed to save diagnostics to file", v49, 2u);
          MEMORY[0x23188F650](v49, -1, -1);
        }

        (*(v44 + 8))(v45, v43);
      }

      v61 = *MEMORY[0x277D85DE8];
    }

    else
    {

      v40 = *MEMORY[0x277D85DE8];
    }
  }
}

uint64_t sub_22B34B61C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v82 = a3;
  v84[3] = *MEMORY[0x277D85DE8];
  v5 = sub_22B35DC4C();
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v68 - v10;
  v11 = sub_22B36052C();
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v72 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  v21 = sub_22B36081C();
  v22 = [v20 fileExistsAtPath_];

  if (v22)
  {
    v23 = [v19 defaultManager];
    type metadata accessor for FileAttributeKey(0);
    sub_22B351918(&qword_2814092D8, type metadata accessor for FileAttributeKey);
    v24 = sub_22B3606CC();
    v25 = sub_22B36081C();
    v84[0] = 0;
    v26 = [v23 setAttributes:v24 ofItemAtPath:v25 error:v84];

    if (!v26)
    {
      v74 = a1;
      v75 = a2;
      a1 = v77;
      v47 = v84[0];
      v25 = sub_22B35DB9C();

      swift_willThrow();
      if (qword_28140A0C8 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }

    v27 = v84[0];
  }

  else
  {
    v72 = v19;
    v74 = a1;
    v75 = a2;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v28 = v78;
    v29 = __swift_project_value_buffer(v78, qword_28140BD10);
    swift_beginAccess();
    v30 = v77;
    v31 = *(v77 + 16);
    v70 = v77 + 16;
    v71 = v29;
    v69 = v31;
    v31(v18, v29, v28);
    v32 = v75;

    v33 = sub_22B36050C();
    v34 = sub_22B360D0C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v83 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_22B1A7B20(v74, v32, &v83);
      _os_log_impl(&dword_22B116000, v33, v34, "createDirectory %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x23188F650](v36, -1, -1);
      MEMORY[0x23188F650](v35, -1, -1);
    }

    v37 = *(v30 + 8);
    v37(v18, v28);
    a1 = v82;
    v38 = [v72 defaultManager];
    v39 = sub_22B36081C();
    type metadata accessor for FileAttributeKey(0);
    sub_22B351918(&qword_2814092D8, type metadata accessor for FileAttributeKey);
    v25 = sub_22B3606CC();
    v83 = 0;
    v40 = [v38 createDirectoryAtPath:v39 withIntermediateDirectories:1 attributes:v25 error:&v83];

    if (!v40)
    {
      v58 = v83;
      v59 = sub_22B35DB9C();

      swift_willThrow();
      v69(v73, v71, v78);

      v60 = v59;
      v61 = sub_22B36050C();
      v62 = sub_22B360D1C();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v83 = v65;
        *v63 = 136380931;
        *(v63 + 4) = sub_22B1A7B20(v74, v75, &v83);
        *(v63 + 12) = 2114;
        v66 = v59;
        v67 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 14) = v67;
        *v64 = v67;
        _os_log_impl(&dword_22B116000, v61, v62, "    Failed to create directory\n    %{private}s. Error = %{public}@", v63, 0x16u);
        sub_22B123284(v64, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v64, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x23188F650](v65, -1, -1);
        MEMORY[0x23188F650](v63, -1, -1);
      }

      v37(v73, v78);
      exit(1);
    }

    v41 = v83;
    v9 = v76;
  }

  v42 = sub_22B35DBBC();
  v43 = MEMORY[0x23188EEB0](v42);
  v44 = v79;
  sub_22B34BF68();
  if (v44)
  {
    objc_autoreleasePoolPop(v43);
    __break(1u);
LABEL_20:
    swift_once();
LABEL_13:
    v48 = v78;
    v49 = __swift_project_value_buffer(v78, qword_28140BD10);
    swift_beginAccess();
    (*(a1 + 16))(v72, v49, v48);

    v50 = v25;
    v51 = sub_22B36050C();
    v52 = sub_22B360D1C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v83 = v55;
      *v53 = 136380931;
      *(v53 + 4) = sub_22B1A7B20(v74, v75, &v83);
      *(v53 + 12) = 2114;
      v56 = v25;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v57;
      *v54 = v57;
      _os_log_impl(&dword_22B116000, v51, v52, "Failed to set attributes to directory\n%{private}s. Error = %{public}@", v53, 0x16u);
      sub_22B123284(v54, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x23188F650](v55, -1, -1);
      MEMORY[0x23188F650](v53, -1, -1);
    }

    (*(a1 + 8))(v72, v78);
    exit(1);
  }

  objc_autoreleasePoolPop(v43);
  result = (*(v80 + 8))(v9, v81);
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B34BF68()
{
  v25 = sub_22B36052C();
  v1 = *(v25 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_22B35DA8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35DA7C();
  sub_22B35DA6C();
  sub_22B35DBCC();
  if (v0)
  {
    (*(v9 + 8))(v12, v8);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = v25;
    v14 = __swift_project_value_buffer(v25, qword_28140BD10);
    swift_beginAccess();
    (*(v1 + 16))(v5, v14, v13);
    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B116000, v15, v16, "Failed to set skip backup for URL", v17, 2u);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    return (*(v1 + 8))(v5, v13);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v19 = v25;
    v20 = __swift_project_value_buffer(v25, qword_28140BD10);
    swift_beginAccess();
    (*(v1 + 16))(v7, v20, v19);
    v21 = sub_22B36050C();
    v22 = sub_22B360D0C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22B116000, v21, v22, "Set skip backup for URL", v23, 2u);
      MEMORY[0x23188F650](v23, -1, -1);

      (*(v1 + 8))(v7, v25);
    }

    else
    {

      (*(v1 + 8))(v7, v19);
    }

    return (*(v9 + 8))(v12, v8);
  }
}

void sub_22B34C348()
{
  v0 = sub_22B35DC4C();
  v1 = *(v0 - 8);
  v44 = v0;
  v45 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_22B36050C();
  v15 = sub_22B360D0C();
  if (os_log_type_enabled(v14, v15))
  {
    v43 = v4;
    v16 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v16 = 136315138;
    v17 = MEMORY[0x23188EEB0]();
    v18 = v46;
    sub_22B34C7C8(v7);
    v46 = v18;
    v19 = v17;
    if (v18)
    {
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v17);
    v20 = sub_22B35DC1C();
    v22 = v21;
    v23 = v7;
    v24 = v44;
    (*(v45 + 8))(v23, v44);
    v25 = sub_22B1A7B20(v20, v22, &v47);

    *(v16 + 4) = v25;
    _os_log_impl(&dword_22B116000, v14, v15, "initializeProtectedStorePaths %s", v16, 0xCu);
    v26 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x23188F650](v26, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    v27 = (*(v9 + 8))(v12, v8);
    v4 = v43;
  }

  else
  {

    v27 = (*(v9 + 8))(v12, v8);
    v24 = v44;
  }

  v28 = MEMORY[0x23188EEB0](v27);
  v29 = v46;
  sub_22B34C7C8(v4);
  if (!v29)
  {
    objc_autoreleasePoolPop(v28);
    v30 = sub_22B35DC1C();
    v32 = v31;
    (*(v45 + 8))(v4, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB110, &qword_22B367E08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B3634B0;
    v34 = *MEMORY[0x277CCA180];
    *(inited + 32) = *MEMORY[0x277CCA180];
    v35 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v36 = v34;
    v37 = [v35 initWithShort_];
    *(inited + 64) = sub_22B351960();
    *(inited + 40) = v37;
    v38 = sub_22B321984(inited);
    swift_setDeallocating();
    v39 = sub_22B123284(inited + 32, &qword_27D8BAE48, &unk_22B367E10);
    v40 = MEMORY[0x23188EEB0](v39);
    sub_22B34B61C(v30, v32, v38);

    objc_autoreleasePoolPop(v40);
    return;
  }

  objc_autoreleasePoolPop(v28);
  __break(1u);
  v19 = v8;
LABEL_10:
  objc_autoreleasePoolPop(v19);
  __break(1u);
}

void sub_22B34C7C8(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_22B35DBAC();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v51 - v7;
  v9 = sub_22B35DC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v56 = sub_22B36052C();
  v59 = *(v56 - 8);
  v17 = *(v59 + 64);
  v18 = MEMORY[0x28223BE20](v56);
  v57 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  v22 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v23 = sub_22B360A5C();

  if (!v23[2])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v46 = v56;
    v47 = __swift_project_value_buffer(v56, qword_28140BD10);
    swift_beginAccess();
    (*(v59 + 16))(v21, v47, v46);
    v48 = sub_22B36050C();
    v49 = sub_22B360D1C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_22B116000, v48, v49, "Can't get the library directory", v50, 2u);
      MEMORY[0x23188F650](v50, -1, -1);
    }

    (*(v59 + 8))(v21, v56);
    exit(1);
  }

  v25 = v23[4];
  v24 = v23[5];
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v52 + 104))(v4, *MEMORY[0x277CC91D8], v53);
  swift_bridgeObjectRetain_n();
  sub_22B35DC3C();
  sub_22B35DBFC();
  v53 = v10;
  v27 = v10 + 8;
  v26 = *(v10 + 8);
  v28 = v26(v14, v9);
  v29 = MEMORY[0x23188EEB0](v28);
  v30 = v54;
  sub_22B34BF68();
  if (v30)
  {
    objc_autoreleasePoolPop(v29);
    __break(1u);
  }

  else
  {
    v31 = v9;
    v52 = 0;
    v54 = v26;

    objc_autoreleasePoolPop(v29);
    v32 = v56;
    v33 = v57;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v32, qword_28140BD10);
    swift_beginAccess();
    v35 = v59;
    (*(v59 + 16))(v33, v34, v32);
    v36 = sub_22B36050C();
    v37 = sub_22B360D0C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v51 = v27;
      v40 = v39;
      v58[0] = v39;
      *v38 = 136315138;
      swift_beginAccess();
      sub_22B351918(&unk_28140B4A0, MEMORY[0x277CC9260]);
      v41 = sub_22B36131C();
      v43 = v31;
      v44 = sub_22B1A7B20(v41, v42, v58);

      *(v38 + 4) = v44;
      v31 = v43;
      _os_log_impl(&dword_22B116000, v36, v37, "defaultStorageDirectory is %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23188F650](v40, -1, -1);
      MEMORY[0x23188F650](v38, -1, -1);

      (*(v59 + 8))(v57, v32);
    }

    else
    {

      (*(v35 + 8))(v33, v32);
    }

    v45 = v53;
    swift_beginAccess();
    (*(v45 + 16))(v55, v16, v31);
    v54(v16, v31);
  }
}

void sub_22B34CE74(void *a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  v54 = a2;
  v59[19] = *MEMORY[0x277D85DE8];
  v56 = sub_22B35DC4C();
  v58 = *(v56 - 8);
  v6 = *(v58 + 64);
  v7 = MEMORY[0x28223BE20](v56);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v53 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v57 = v53 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v53 - v16;
  v18 = MEMORY[0x23188EEB0](v15);
  sub_22B34C7C8(v17);
  if (v3)
  {
    objc_autoreleasePoolPop(v18);
    __break(1u);
    objc_autoreleasePoolPop(v17);
    __break(1u);
    objc_autoreleasePoolPop(a1);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v18);
    v55 = v17;
    v19 = sub_22B35DBEC();
    v20 = MEMORY[0x23188EEB0](v19);
    sub_22B34BF68();
    v53[1] = a3;
    objc_autoreleasePoolPop(v20);
    v21 = objc_opt_self();
    v22 = [v21 defaultManager];
    v59[0] = 0;
    v23 = [v22 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v59];

    v24 = v58;
    v25 = v59[0];
    v26 = MEMORY[0x277CCA180];
    if (v23)
    {
      sub_22B35DC0C();
      v27 = v25;

      sub_22B35DBEC();
      v28 = v9;
      v29 = v56;
      v53[0] = *(v24 + 8);
      (v53[0])(v28, v56);
      (*(v24 + 32))(v57, v12, v29);
      v30 = [v21 defaultManager];
      v31 = sub_22B35DBDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB110, &qword_22B367E08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B3634B0;
      v33 = *v26;
      *(inited + 32) = *v26;
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 40) = 511;
      v34 = v33;
      sub_22B321984(inited);
      swift_setDeallocating();
      sub_22B123284(inited + 32, &qword_27D8BAE48, &unk_22B367E10);
      type metadata accessor for FileAttributeKey(0);
      sub_22B351918(&qword_2814092D8, type metadata accessor for FileAttributeKey);
      v35 = sub_22B3606CC();

      v59[0] = 0;
      v36 = [v30 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:v35 error:v59];

      if (v36)
      {
        v37 = v59[0];
      }

      else
      {
        v40 = v59[0];
        v41 = sub_22B35DB9C();

        swift_willThrow();
      }

      (v53[0])(v57, v29);
      v24 = v58;
    }

    else
    {
      v38 = v59[0];
      v39 = sub_22B35DB9C();

      swift_willThrow();
      v29 = v56;
    }

    v42 = MEMORY[0x277D83B88];
    if (v54)
    {
      v43 = sub_22B35DC1C();
      v45 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB110, &qword_22B367E08);
      v46 = swift_initStackObject();
      *(v46 + 16) = xmmword_22B3634B0;
      v47 = *v26;
      *(v46 + 32) = *v26;
      *(v46 + 64) = v42;
      *(v46 + 40) = 448;
      v48 = v47;
      v49 = sub_22B321984(v46);
      swift_setDeallocating();
      v50 = sub_22B123284(v46 + 32, &qword_27D8BAE48, &unk_22B367E10);
      v51 = MEMORY[0x23188EEB0](v50);
      sub_22B34B61C(v43, v45, v49);

      objc_autoreleasePoolPop(v51);
    }

    (*(v24 + 8))(v55, v29);
    v52 = *MEMORY[0x277D85DE8];
  }
}

void sub_22B34D440()
{
  v33[3] = *MEMORY[0x277D85DE8];
  v1 = sub_22B36052C();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = sub_22B35DC4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  v14 = MEMORY[0x23188EEB0]();
  sub_22B34C7C8(v12);
  if (v0)
  {
    objc_autoreleasePoolPop(v14);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v14);
    v15 = sub_22B35DBDC();
    (*(v9 + 8))(v12, v8);
    v33[0] = 0;
    v16 = [v13 removeItemAtURL:v15 error:v33];

    if (v16)
    {
      v17 = qword_28140A0C8;
      v18 = v33[0];
      v19 = v31;
      if (v17 != -1)
      {
        swift_once();
      }

      v20 = v32;
      v21 = __swift_project_value_buffer(v32, qword_28140BD10);
      swift_beginAccess();
      (*(v19 + 16))(v7, v21, v20);
      v22 = sub_22B36050C();
      v23 = sub_22B360D1C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_22B116000, v22, v23, "Deleted all local data", v24, 2u);
        MEMORY[0x23188F650](v24, -1, -1);
      }
    }

    else
    {
      v25 = v33[0];
      v26 = sub_22B35DB9C();

      swift_willThrow();
      v19 = v31;
      v20 = v32;
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v20, qword_28140BD10);
      swift_beginAccess();
      (*(v19 + 16))(v4, v27, v20);
      v22 = sub_22B36050C();
      v28 = sub_22B360D1C();
      if (os_log_type_enabled(v22, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_22B116000, v22, v28, "Failed to purge data", v29, 2u);
        MEMORY[0x23188F650](v29, -1, -1);
      }

      v7 = v4;
    }

    (*(v19 + 8))(v7, v20);
    v30 = *MEMORY[0x277D85DE8];
  }
}

void sub_22B34D88C()
{
  v110 = *MEMORY[0x277D85DE8];
  v100 = sub_22B35DBAC();
  *&v95 = *(v100 - 8);
  v1 = *(v95 + 64);
  MEMORY[0x28223BE20](v100);
  v94 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = (&v83 - v5);
  v6 = sub_22B35DC4C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v93 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22B36052C();
  v96 = *(v99 - 8);
  v10 = *(v96 + 64);
  MEMORY[0x28223BE20](v99);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v98 = &v83 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v83 - v16;
  v90 = objc_opt_self();
  v18 = [v90 standardUserDefaults];
  v19 = sub_22B36081C();
  v20 = [v18 objectForKey_];

  if (v20)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v107 = 0u;
    v108 = 0u;
  }

  v109[0] = v107;
  v109[1] = v108;
  if (*(&v108 + 1))
  {
    if (swift_dynamicCast() && (v101 & 1) != 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    sub_22B123284(v109, &unk_27D8BA950, &qword_22B364940);
  }

  v21 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v22 = sub_22B360A5C();

  if (v22[2])
  {
    v84 = v12;
    v92 = v0;
    v23 = v22[5];
    v87 = v22[4];
    v86 = v23;

    v89 = v7[7];
    v91 = 1;
    v24 = v6;
    v89(v97, 1, 1, v6);
    v88 = *MEMORY[0x277CC91D8];
    *&v95 = *(v95 + 104);
    v25 = v94;
    (v95)(v94);

    v26 = v93;
    sub_22B35DC3C();
    v27 = sub_22B35DC1C();
    v29 = v28;
    v85 = v7[1];
    v85(v26, v24);
    *&v109[0] = 0xD000000000000021;
    *(&v109[0] + 1) = 0x800000022B36EFF0;
    *&v107 = v27;
    *(&v107 + 1) = v29;
    *&v107 = sub_22B3609EC();
    *(&v107 + 1) = v30;
    sub_22B36093C();
    v102[0] = v107;
    v31 = v24;
    v89(v97, 1, 1, v24);
    (v95)(v25, v88, v100);
    v32 = v102 + 8;
    sub_22B35DC3C();
    v33 = sub_22B35DC1C();
    v35 = v34;
    v85(v26, v31);
    *&v109[0] = 0xD00000000000002BLL;
    *(&v109[0] + 1) = 0x800000022B36F020;
    *&v107 = v33;
    *(&v107 + 1) = v35;
    *&v107 = sub_22B3609EC();
    *(&v107 + 1) = v36;
    sub_22B36093C();
    v102[1] = v107;
    v103 = 0xD00000000000003CLL;
    v104 = 0x800000022B36F050;
    v105 = 0xD000000000000046;
    v106 = 0x800000022B36F090;
    v37 = objc_opt_self();
    v38 = 0;
    v97 = (v96 + 16);
    v96 += 8;
    v39 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
    *&v40 = 136315138;
    v95 = v40;
    v83 = v102 + 8;
LABEL_11:
    if (v38 <= 4)
    {
      v41 = 4;
    }

    else
    {
      v41 = v38;
    }

    v100 = -v41;
    v42 = &v32[16 * v38++];
    do
    {
      if (v100 + v38 == 1)
      {
        __break(1u);
LABEL_43:
        swift_arrayDestroy();
        goto LABEL_41;
      }

      v44 = *(v42 - 1);
      v43 = *v42;

      v45 = [v37 v39[72]];
      v46 = sub_22B36081C();
      v47 = [v45 fileExistsAtPath_];

      if (v47)
      {
        v48 = v39[72];
        v49 = v37;
        v50 = [v37 v48];
        v51 = sub_22B36081C();
        v101 = 0;
        v52 = [v50 removeItemAtPath:v51 error:&v101];

        if (!v52)
        {
          v63 = v101;
          v64 = sub_22B35DB9C();

          swift_willThrow();
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v65 = v99;
          v66 = __swift_project_value_buffer(v99, qword_28140BD10);
          swift_beginAccess();
          v67 = v84;
          (*v97)(v84, v66, v65);

          v68 = sub_22B36050C();
          v69 = sub_22B360D1C();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v100 = v64;
            v72 = v71;
            v101 = v71;
            *v70 = v95;
            v73 = sub_22B1A7B20(v44, v43, &v101);

            *(v70 + 4) = v73;
            _os_log_impl(&dword_22B116000, v68, v69, "Failed to delete path %s for migration", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v72);
            MEMORY[0x23188F650](v72, -1, -1);
            MEMORY[0x23188F650](v70, -1, -1);

            (*v96)(v67, v99);
          }

          else
          {

            (*v96)(v67, v65);
          }

          v37 = v49;
          v92 = 0;
          v91 = 0;
          v32 = v83;
          v39 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
          if (v38 == 4)
          {
            goto LABEL_43;
          }

          goto LABEL_11;
        }

        v53 = qword_28140A0C8;
        v54 = v101;
        if (v53 != -1)
        {
          swift_once();
        }

        v55 = v99;
        v56 = __swift_project_value_buffer(v99, qword_28140BD10);
        swift_beginAccess();
        v57 = v98;
        (*v97)(v98, v56, v55);

        v58 = sub_22B36050C();
        v59 = sub_22B360D1C();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v101 = v61;
          *v60 = v95;
          v62 = sub_22B1A7B20(v44, v43, &v101);

          *(v60 + 4) = v62;
          _os_log_impl(&dword_22B116000, v58, v59, "Deleted the path %s for migration", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          MEMORY[0x23188F650](v61, -1, -1);
          MEMORY[0x23188F650](v60, -1, -1);

          (*v96)(v98, v99);
        }

        else
        {

          (*v96)(v57, v55);
        }

        v37 = v49;
        v39 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
      }

      else
      {
      }

      ++v38;
      v42 += 2;
    }

    while (v38 != 5);
    swift_arrayDestroy();
    if (v91)
    {
      v74 = [v90 standardUserDefaults];
      v75 = sub_22B36081C();
      [v74 setBool:1 forKey:v75];
    }
  }

  else
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v76 = v99;
    v77 = __swift_project_value_buffer(v99, qword_28140BD10);
    swift_beginAccess();
    v78 = v96;
    (*(v96 + 16))(v17, v77, v76);
    v79 = sub_22B36050C();
    v80 = sub_22B360D1C();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_22B116000, v79, v80, "Can't get the library directory", v81, 2u);
      MEMORY[0x23188F650](v81, -1, -1);
    }

    (*(v78 + 8))(v17, v76);
  }

LABEL_41:
  v82 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B34E638(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B36052C();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v12 = sub_22B36081C();
  v13 = sub_22B36081C();
  v14 = [v11 initWithExtensionBundleIdentifier:v12 kind:v13];

  v32 = a1;
  v15 = sub_22B36081C();
  v16 = [v14 reloadTimelineWithReason_];

  if (v16)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v17 = v4;
    v18 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v19 = v33;
    (*(v33 + 16))(v10, v18, v17);

    v20 = sub_22B36050C();
    v21 = sub_22B360D1C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22B1A7B20(v32, a2, &v34);
      _os_log_impl(&dword_22B116000, v20, v21, "Failed to refresh Home's EnergyForecastWidget: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);
    }

    return (*(v19 + 8))(v10, v17);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = v4;
    v26 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v27 = v33;
    (*(v33 + 16))(v7, v26, v25);

    v28 = sub_22B36050C();
    v29 = sub_22B360CFC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_22B1A7B20(v32, a2, &v34);
      _os_log_impl(&dword_22B116000, v28, v29, "Reload timeline for Home's EnergyForecastWidget: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23188F650](v31, -1, -1);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    return (*(v27 + 8))(v7, v25);
  }
}

uint64_t sub_22B34EA8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B36052C();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v12 = sub_22B36081C();
  v13 = sub_22B36081C();
  v14 = [v11 initWithExtensionBundleIdentifier:v12 kind:v13];

  v32 = a1;
  v15 = sub_22B36081C();
  v16 = [v14 reloadTimelineWithReason_];

  if (v16)
  {

    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v17 = v4;
    v18 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v19 = v33;
    (*(v33 + 16))(v10, v18, v17);

    v20 = sub_22B36050C();
    v21 = sub_22B360D1C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22B1A7B20(v32, a2, &v34);
      _os_log_impl(&dword_22B116000, v20, v21, "Failed to refresh Home's HistoricalUsageWidget: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);
    }

    return (*(v19 + 8))(v10, v17);
  }

  else
  {
    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v25 = v4;
    v26 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v27 = v33;
    (*(v33 + 16))(v7, v26, v25);

    v28 = sub_22B36050C();
    v29 = sub_22B360CFC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_22B1A7B20(v32, a2, &v34);
      _os_log_impl(&dword_22B116000, v28, v29, "Reload timeline for Home's HistoricalUsageWidget: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23188F650](v31, -1, -1);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    return (*(v27 + 8))(v7, v25);
  }
}

uint64_t sub_22B34EEE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B36052C();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v12 = sub_22B36081C();
  v13 = sub_22B36081C();
  v14 = [v11 initWithExtensionBundleIdentifier:v12 kind:v13];

  v32 = a1;
  v15 = sub_22B36081C();
  v16 = [v14 reloadTimelineWithReason_];

  if (v16)
  {

    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v17 = v4;
    v18 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v19 = v33;
    (*(v33 + 16))(v10, v18, v17);

    v20 = sub_22B36050C();
    v21 = sub_22B360D1C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22B1A7B20(v32, a2, &v34);
      _os_log_impl(&dword_22B116000, v20, v21, "Failed to refresh Home's UtilityRateInfoWidget: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);
    }

    return (*(v19 + 8))(v10, v17);
  }

  else
  {
    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v25 = v4;
    v26 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v27 = v33;
    (*(v33 + 16))(v7, v26, v25);

    v28 = sub_22B36050C();
    v29 = sub_22B360CFC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_22B1A7B20(v32, a2, &v34);
      _os_log_impl(&dword_22B116000, v28, v29, "Reload timeline for Home's UtilityRateInfoWidget: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23188F650](v31, -1, -1);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    return (*(v27 + 8))(v7, v25);
  }
}

void sub_22B34F334()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22B36081C();
  v2 = [v0 initWithSuiteName_];

  qword_28140BCA0 = v2;
}

uint64_t sub_22B34F3A4(uint64_t a1, unint64_t a2)
{
  sub_22B144B30(a1, a2);
  v4 = *(sub_22B34F498(a1, a2) + 16);
  v5 = sub_22B3608EC();

  return v5;
}

uint64_t sub_22B34F410@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B3608EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B34F44C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_22B170C58((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_22B34F498(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B35DCFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_22B12F174(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_22B1A7F60(v11, 0);
      v15 = sub_22B35DC8C();
      sub_22B12F174(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_22B34F614(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_22B35D91C();
  if (a1)
  {
    a1 = sub_22B35D94C();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_22B35D91C() || !__OFSUB__(v5, sub_22B35D94C()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_22B35D93C();
LABEL_16:
  result = sub_22B3608EC();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B34F7C0@<X0>(_OWORD *a1@<X8>)
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
    sub_22B170C58(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_22B172454(v22, &v24);

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
      return sub_22B123284(v22, &qword_27D8BB118, &qword_22B367E38);
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

uint64_t sub_22B34F920()
{
  v1 = type metadata accessor for CDEnergyGuidanceCache();
  v0[155] = v1;
  v2 = *(v1 - 8);
  v0[156] = v2;
  v3 = *(v2 + 64) + 15;
  v0[157] = swift_task_alloc();
  v4 = sub_22B36052C();
  v0[158] = v4;
  v5 = *(v4 - 8);
  v0[159] = v5;
  v6 = *(v5 + 64) + 15;
  v0[160] = swift_task_alloc();
  v7 = sub_22B35E20C();
  v0[161] = v7;
  v8 = *(v7 - 8);
  v0[162] = v8;
  v9 = *(v8 + 64) + 15;
  v0[163] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA240, &qword_22B3636E8);
  v0[164] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v0[165] = swift_task_alloc();
  v0[166] = swift_task_alloc();
  v0[167] = swift_task_alloc();
  v12 = *(type metadata accessor for CDEnergyWindowNotifications() - 8);
  v0[168] = v12;
  v13 = *(v12 + 64) + 15;
  v0[169] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B34FB40, 0, 0);
}

uint64_t sub_22B34FB40()
{
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDB8;
  *(v0 + 1360) = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B34FBD8, v1, 0);
}

uint64_t sub_22B34FBD8()
{
  v1 = *(v0 + 1360);
  *(v0 + 1368) = sub_22B1802B0();

  return MEMORY[0x2822009F8](sub_22B34FC44, 0, 0);
}

uint64_t sub_22B34FC44()
{
  v1 = *(v0 + 1368);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F98];
  if (v2)
  {
    v4 = *(v0 + 1344);
    v5 = *(v0 + 1352);
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D837D0];
    v41 = *(v4 + 72);
    while (1)
    {
      v9 = *(v0 + 1352);
      sub_22B180AC8(v6, v9);
      v10 = *v9;
      v11 = *(v5 + 8);
      *(v0 + 120) = v8;
      *(v0 + 96) = v10;
      *(v0 + 104) = v11;
      sub_22B172454((v0 + 96), (v0 + 1056));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 1056), 0x444964697267, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      v13 = *(v5 + 16);
      v14 = MEMORY[0x277D839B0];
      *(v0 + 1016) = MEMORY[0x277D839B0];
      *(v0 + 992) = v13;
      sub_22B172454((v0 + 992), (v0 + 1152));
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 1152), 0xD000000000000012, 0x800000022B36B110, v15);
      v16 = *(v5 + 17);
      *(v0 + 184) = v14;
      *(v0 + 160) = v16;
      sub_22B172454((v0 + 160), (v0 + 192));
      v17 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 192), 0x6863746170736964, 0xEA00000000006465, v17);
      v18 = *(v5 + 24);
      v19 = *(v5 + 32);
      *(v0 + 248) = v8;
      *(v0 + 224) = v18;
      *(v0 + 232) = v19;
      sub_22B172454((v0 + 224), (v0 + 256));

      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 256), 0x656C746974, 0xE500000000000000, v20);
      v21 = *(v5 + 40);
      v22 = *(v5 + 48);
      *(v0 + 312) = v8;
      *(v0 + 288) = v21;
      *(v0 + 296) = v22;
      sub_22B172454((v0 + 288), (v0 + 320));

      v23 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 320), 2036625250, 0xE400000000000000, v23);
      v42 = v3;
      v24 = *(v5 + 64);
      if (v24)
      {
        v25 = *(v5 + 56);
        *(v0 + 376) = v8;
        *(v0 + 352) = v25;
        *(v0 + 360) = v24;
        sub_22B172454((v0 + 352), (v0 + 736));

        v26 = swift_isUniquelyReferenced_nonNull_native();
        sub_22B33F298((v0 + 736), 0x4C5255706174, 0xE600000000000000, v26);
        v42 = v3;
        v27 = *(v5 + 80);
        if (!v27)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_22B2E641C(0x4C5255706174, 0xE600000000000000, (v0 + 384));
        sub_22B123284(v0 + 384, &unk_27D8BA950, &qword_22B364940);
        v27 = *(v5 + 80);
        if (!v27)
        {
LABEL_7:
          sub_22B2E641C(0x4449656D6F68, 0xE600000000000000, (v0 + 448));
          sub_22B123284(v0 + 448, &unk_27D8BA950, &qword_22B364940);
          v30 = v42;
          goto LABEL_8;
        }
      }

      v28 = *(v5 + 72);
      *(v0 + 440) = v8;
      *(v0 + 416) = v28;
      *(v0 + 424) = v27;
      sub_22B172454((v0 + 416), (v0 + 1024));

      v29 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 1024), 0x4449656D6F68, 0xE600000000000000, v29);
      v30 = v42;
LABEL_8:
      v31 = *(v5 + 88);
      *(v0 + 504) = MEMORY[0x277D839B0];
      *(v0 + 480) = v31;
      sub_22B172454((v0 + 480), (v0 + 512));
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 512), 0xD000000000000013, 0x800000022B36F1C0, v32);
      *(v0 + 568) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB030, &unk_22B367700);
      *(v0 + 544) = v30;
      sub_22B172454((v0 + 544), (v0 + 576));
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B33F298((v0 + 576), 0x747865746E6F63, 0xE700000000000000, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22B32CF60(0, v7[2] + 1, 1, v7);
      }

      v35 = v7[2];
      v34 = v7[3];
      if (v35 >= v34 >> 1)
      {
        v7 = sub_22B32CF60((v34 > 1), v35 + 1, 1, v7);
      }

      sub_22B351A10(*(v0 + 1352), type metadata accessor for CDEnergyWindowNotifications);
      v7[2] = v35 + 1;
      v7[v35 + 4] = v3;
      v6 += v41;
      if (!--v2)
      {
        v36 = *(v0 + 1368);

        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_15:
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB120, &qword_22B367E40);
  *(v0 + 1376) = v37;
  *(v0 + 632) = v37;
  *(v0 + 608) = v7;
  sub_22B172454((v0 + 608), (v0 + 640));
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298((v0 + 640), 0xD000000000000015, 0x800000022B36F1E0, v38);
  *(v0 + 1384) = v3;
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v39 = qword_28140BDC0;
  *(v0 + 1392) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B350204, v39, 0);
}

uint64_t sub_22B350204()
{
  v1 = *(v0 + 1392);
  *(v0 + 1400) = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B350270, 0, 0);
}

uint64_t sub_22B350270()
{
  v1 = *(v0 + 1400);
  v2 = *(v1 + 16);
  *(v0 + 1408) = v2;
  if (v2)
  {
    v3 = *(type metadata accessor for CDEnergyGuidanceTracker() - 8);
    v4 = *(v3 + 80);
    *(v0 + 1488) = v4;
    v5 = MEMORY[0x277D17EE8];
    *(v0 + 1416) = *(v3 + 72);
    *(v0 + 1492) = *v5;
    *(v0 + 1440) = MEMORY[0x277D84F90];
    v6 = (v1 + ((v4 + 32) & ~v4));
    *(v0 + 1424) = 0u;
    v7 = *v6;
    *(v0 + 1448) = *v6;
    v8 = v6[1];
    *(v0 + 1456) = v8;
    *(v0 + 696) = MEMORY[0x277D837D0];
    *(v0 + 672) = v7;
    *(v0 + 680) = v8;
    sub_22B172454((v0 + 672), (v0 + 704));

    v9 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v0 + 704), 0x444964697267, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    *(v0 + 1464) = v9;
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 1492);
    v12 = *(v0 + 1304);
    v13 = *(v0 + 1296);
    v14 = *(v0 + 1288);
    v15 = qword_28140BDC8;
    *(v0 + 1472) = qword_28140BDC8;
    (*(v13 + 104))(v12, v11, v14);
    *(v0 + 1496) = sub_22B35E1FC();
    (*(v13 + 8))(v12, v14);

    return MEMORY[0x2822009F8](sub_22B350588, v15, 0);
  }

  else
  {
    v16 = *(v0 + 1384);
    v17 = *(v0 + 1376);
    v18 = *(v0 + 1352);
    v19 = *(v0 + 1336);
    v20 = *(v0 + 1328);
    v21 = *(v0 + 1320);
    v22 = *(v0 + 1304);
    v23 = *(v0 + 1280);
    v27 = *(v0 + 1256);

    *(v0 + 856) = v17;
    *(v0 + 832) = MEMORY[0x277D84F90];
    sub_22B172454((v0 + 832), (v0 + 864));
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v0 + 864), 0x676E696B63617274, 0xEC00000061746144, v24);

    v25 = *(v0 + 8);

    return v25(v16);
  }
}

uint64_t sub_22B350588()
{
  v33 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1456);
  v2 = *(v0 + 1280);
  v3 = *(v0 + 1272);
  v4 = *(v0 + 1264);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1496);
    v9 = *(v0 + 1456);
    v10 = *(v0 + 1448);
    v30 = *(v0 + 1280);
    v11 = *(v0 + 1272);
    v12 = *(v0 + 1264);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136381187;
    *(v13 + 4) = sub_22B1A7B20(v10, v9, &v32);
    *(v13 + 12) = 512;
    *(v13 + 14) = v8;
    *(v13 + 16) = 1024;
    *(v13 + 18) = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Get cached guidance entry from cache for %{private}s %hd hasUtility: %{BOOL}d", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    (*(v11 + 8))(v30, v12);
  }

  else
  {
    v15 = *(v0 + 1280);
    v16 = *(v0 + 1272);
    v17 = *(v0 + 1264);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(*(v0 + 1472) + 112);
  if (v18)
  {
    v19 = *(v0 + 1496);
    v20 = *(v0 + 1456);
    v21 = *(v0 + 1448);
    v31 = *(v0 + 1424);
    v22 = *(v0 + 1336);
    v23 = *(v0 + 1328);
    v24 = *(v0 + 1312);
    (*(*(v0 + 1248) + 56))(v23, 1, 1, *(v0 + 1240));
    v25 = *(v18 + 48);
    v26 = swift_task_alloc();
    *(v26 + 16) = v18;
    *(v26 + 24) = v21;
    *(v26 + 32) = v20;
    *(v26 + 40) = v19;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0xE000000000000000;
    *(v26 + 64) = 0;
    *(v26 + 72) = 0xE000000000000000;
    *(v26 + 80) = 0;
    *(v26 + 88) = 0xE000000000000000;
    *(v26 + 96) = 2;
    *(v26 + 104) = v23;

    v27 = v25;
    v28 = v31;
    sub_22B360E7C();

    sub_22B123284(v23, &qword_27D8BA240, &qword_22B3636E8);
  }

  else
  {
    (*(*(v0 + 1248) + 56))(*(v0 + 1336), 1, 1, *(v0 + 1240));
    v28 = *(v0 + 1424);
  }

  *(v0 + 1480) = v28;

  return MEMORY[0x2822009F8](sub_22B3508E4, 0, 0);
}

uint64_t sub_22B3508E4()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  sub_22B12F208(*(v0 + 1336), v1);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D84F98];
  if (v4 == 1)
  {
    sub_22B123284(*(v0 + 1320), &qword_27D8BA240, &qword_22B3636E8);
    v7 = *(v0 + 1480);
    v8 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v7 = *(v0 + 1480);
  v9 = *(v0 + 1256);
  sub_22B3519AC(*(v0 + 1320), v9);
  v10 = v9[3];
  v11 = v9[4];
  *(v0 + 920) = v5;
  *(v0 + 896) = v10;
  *(v0 + 904) = v11;
  sub_22B172454((v0 + 896), (v0 + 928));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298((v0 + 928), 0x444964697267, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v13 = *v9;
  v14 = v9[1];
  v15 = sub_22B34F614(v13, v14);
  if (!v16)
  {
    *(v0 + 1224) = v13;
    *(v0 + 1232) = v14;
    sub_22B144B30(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB128, &qword_22B367E48);
    if (swift_dynamicCast())
    {
      sub_22B11A02C((v0 + 56), v0 + 16);
      v17 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      if (sub_22B3612DC())
      {
        v18 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        sub_22B3612CC();
        v19 = *(v0 + 1208);
        v20 = *(v0 + 1216);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v16 = v20;
        v15 = v19;
        v5 = MEMORY[0x277D837D0];
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v5 = MEMORY[0x277D837D0];
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_22B123284(v0 + 56, &qword_27D8BB130, qword_22B367E50);
    }

    v15 = sub_22B34F3A4(v13, v14);
  }

LABEL_10:
  v21 = *(v0 + 1256);
  v22 = *(v0 + 1240);
  *(v0 + 984) = v5;
  *(v0 + 960) = v15;
  *(v0 + 968) = v16;
  sub_22B172454((v0 + 960), (v0 + 1088));
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298((v0 + 1088), 0x65636E6164697567, 0xE800000000000000, v23);
  v24 = *(v22 + 32);
  v25 = sub_22B35DE9C();
  *(v0 + 1144) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1120));
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v21 + v24, v25);
  sub_22B172454((v0 + 1120), (v0 + 128));
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298((v0 + 128), 0x6954747265736E69, 0xEA0000000000656DLL, v27);
  v8 = sub_22B32CF60(0, 1, 1, MEMORY[0x277D84F90]);
  v29 = v8[2];
  v28 = v8[3];
  if (v29 >= v28 >> 1)
  {
    v8 = sub_22B32CF60((v28 > 1), v29 + 1, 1, v8);
  }

  sub_22B351A10(*(v0 + 1256), type metadata accessor for CDEnergyGuidanceCache);
  v8[2] = v29 + 1;
  v8[v29 + 4] = v6;
LABEL_13:
  v30 = *(v0 + 1464);
  v31 = *(v0 + 1440);
  *(v0 + 792) = *(v0 + 1376);
  *(v0 + 768) = v8;
  sub_22B172454((v0 + 768), (v0 + 800));
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B33F298((v0 + 800), 0xD000000000000015, 0x800000022B36F200, v32);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v0 + 1440);
  if ((v33 & 1) == 0)
  {
    v34 = sub_22B32CF60(0, v34[2] + 1, 1, *(v0 + 1440));
  }

  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_22B32CF60((v35 > 1), v36 + 1, 1, v34);
  }

  v37 = *(v0 + 1408);
  v38 = *(v0 + 1432) + 1;
  sub_22B123284(*(v0 + 1336), &qword_27D8BA240, &qword_22B3636E8);
  v34[2] = v36 + 1;
  v34[v36 + 4] = v30;
  if (v38 == v37)
  {
    v39 = *(v0 + 1400);
    v40 = *(v0 + 1384);
    v41 = *(v0 + 1376);
    v42 = *(v0 + 1352);
    v43 = *(v0 + 1336);
    v44 = *(v0 + 1328);
    v45 = *(v0 + 1320);
    v46 = *(v0 + 1304);
    v47 = *(v0 + 1280);
    v61 = *(v0 + 1256);

    *(v0 + 856) = v41;
    *(v0 + 832) = v34;
    sub_22B172454((v0 + 832), (v0 + 864));
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v0 + 864), 0x676E696B63617274, 0xEC00000061746144, v48);

    v49 = *(v0 + 8);

    return v49(v40);
  }

  else
  {
    v51 = *(v0 + 1432) + 1;
    *(v0 + 1440) = v34;
    *(v0 + 1432) = v51;
    *(v0 + 1424) = v7;
    v52 = (*(v0 + 1400) + ((*(v0 + 1488) + 32) & ~*(v0 + 1488)) + *(v0 + 1416) * v51);
    v53 = *v52;
    *(v0 + 1448) = *v52;
    v54 = v52[1];
    *(v0 + 1456) = v54;
    *(v0 + 696) = MEMORY[0x277D837D0];
    *(v0 + 672) = v53;
    *(v0 + 680) = v54;
    sub_22B172454((v0 + 672), (v0 + 704));

    v55 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B33F298((v0 + 704), 0x444964697267, 0xE600000000000000, v55);
    *(v0 + 1464) = v6;
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 1492);
    v57 = *(v0 + 1304);
    v58 = *(v0 + 1296);
    v59 = *(v0 + 1288);
    v60 = qword_28140BDC8;
    *(v0 + 1472) = qword_28140BDC8;
    (*(v58 + 104))(v57, v56, v59);
    *(v0 + 1496) = sub_22B35E1FC();
    (*(v58 + 8))(v57, v59);

    return MEMORY[0x2822009F8](sub_22B350588, v60, 0);
  }
}

unint64_t sub_22B350FE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_22B34F7C0(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_22B172454(v46, v44);
  v14 = *a5;
  result = sub_22B33B28C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_22B33C03C(v20, a4 & 1);
    v22 = *a5;
    result = sub_22B33B28C(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22B3613BC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_22B34128C();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_22B172454(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_22B172454(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_22B34F7C0(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_22B172454(v46, v44);
        v33 = *a5;
        result = sub_22B33B28C(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_22B33C03C(v37, 1);
          v38 = *a5;
          result = sub_22B33B28C(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_22B172454(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_22B172454(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_22B34F7C0(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_22B1A20B8();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22B3512F8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3513B8, 0, 0);
}

uint64_t sub_22B3513B8()
{
  v21 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360CFC();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B36F0E0, &v20);
    _os_log_impl(&dword_22B116000, v5, v6, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v13 = (*(v9 + 8))(v8, v10);
  v15 = v0[5];
  v14 = v0[6];
  v16 = MEMORY[0x23188EEB0](v13);
  sub_22B34E638(v15, v14);
  v17 = v0[9];
  objc_autoreleasePoolPop(v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_22B3515E8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3516A8, 0, 0);
}

uint64_t sub_22B3516A8()
{
  v24 = v0;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360CFC();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD00000000000002DLL, 0x800000022B36EF50, &v23);
    _os_log_impl(&dword_22B116000, v5, v6, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v13 = (*(v9 + 8))(v8, v10);
  v14 = v0[5];
  v15 = v0[6];
  v16 = MEMORY[0x23188EEB0](v13);
  sub_22B34EA8C(v14, v15);
  objc_autoreleasePoolPop(v16);
  v18 = v0[5];
  v17 = v0[6];
  v19 = MEMORY[0x23188EEB0]();
  sub_22B34EEE0(v18, v17);
  v20 = v0[9];
  objc_autoreleasePoolPop(v19);

  v21 = v0[1];

  return v21();
}

uint64_t sub_22B351918(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B351960()
{
  result = qword_281409278;
  if (!qword_281409278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281409278);
  }

  return result;
}

uint64_t sub_22B3519AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergyGuidanceCache();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B351A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22B351AAC(uint64_t a1, int a2)
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

uint64_t sub_22B351AF4(uint64_t result, int a2, int a3)
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

void sub_22B351B48()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_serialNumber_obj();

    if (v2)
    {
      v3 = sub_22B36084C();
      v5 = v4;

      qword_27D8BB220 = v3;
      *algn_27D8BB228 = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22B351BE4(uint64_t a1)
{
  v2[36] = a1;
  v3 = sub_22B36052C();
  v2[37] = v3;
  v4 = *(v3 - 8);
  v2[38] = v4;
  v5 = *(v4 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v7 = sub_22B35E32C();
  v2[42] = v7;
  v8 = *(v7 - 8);
  v2[43] = v8;
  v9 = *(v8 + 64) + 15;
  v2[44] = swift_task_alloc();
  v10 = sub_22B35DE9C();
  v2[45] = v10;
  v11 = *(v10 - 8);
  v2[46] = v11;
  v12 = *(v11 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B351DAC, v1, 0);
}

uint64_t sub_22B351DAC()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_22B36081C();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_22B36081C();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    *(v0 + 16) = v71;
    *(v0 + 32) = v72;
    if (*(v0 + 40))
    {
      if (swift_dynamicCast() && (*(v0 + 398) & 1) != 0)
      {
        v6 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v62 = *(v0 + 336);
        v63 = *(v0 + 384);
        v64 = *(v0 + 288);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v6, v7);
        v13 = MEMORY[0x277D17F98];
LABEL_57:
        (*(v10 + 104))(v9, *v13, v62);
        (*(v8 + 56))(v11, 1, 1, v7);
        sub_22B35E2FC();

        sub_22B123284(v11, &qword_27D8BA340, &qword_22B363FB0);
        (*(v10 + 8))(v9, v62);
        v12(v63, v7);
        goto LABEL_69;
      }
    }

    else
    {
      sub_22B123284(v0 + 16, &unk_27D8BA950, &qword_22B364940);
    }

    v14 = sub_22B36081C();
    v15 = [v3 objectForKey_];

    if (v15)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    *(v0 + 48) = v71;
    *(v0 + 64) = v72;
    if (*(v0 + 72))
    {
      if (swift_dynamicCast() && (*(v0 + 397) & 1) != 0)
      {
        v16 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v62 = *(v0 + 336);
        v63 = *(v0 + 384);
        v65 = *(v0 + 288);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v16, v7);
        v13 = MEMORY[0x277D17F90];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 48, &unk_27D8BA950, &qword_22B364940);
    }

    v17 = sub_22B36081C();
    v18 = [v3 objectForKey_];

    if (v18)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    *(v0 + 80) = v71;
    *(v0 + 96) = v72;
    if (*(v0 + 104))
    {
      if (swift_dynamicCast() && (*(v0 + 396) & 1) != 0)
      {
        v19 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v62 = *(v0 + 336);
        v63 = *(v0 + 384);
        v66 = *(v0 + 288);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v19, v7);
        v13 = MEMORY[0x277D17FA0];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 80, &unk_27D8BA950, &qword_22B364940);
    }

    v20 = sub_22B36081C();
    v21 = [v3 objectForKey_];

    if (v21)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    *(v0 + 112) = v71;
    *(v0 + 128) = v72;
    if (*(v0 + 136))
    {
      if (swift_dynamicCast() && (*(v0 + 395) & 1) != 0)
      {
        v22 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v62 = *(v0 + 336);
        v63 = *(v0 + 384);
        v67 = *(v0 + 288);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v22, v7);
        v13 = MEMORY[0x277D17F70];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 112, &unk_27D8BA950, &qword_22B364940);
    }

    v23 = sub_22B36081C();
    v24 = [v3 objectForKey_];

    if (v24)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    *(v0 + 144) = v71;
    *(v0 + 160) = v72;
    if (*(v0 + 168))
    {
      if (swift_dynamicCast() && (*(v0 + 394) & 1) != 0)
      {
        v25 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v62 = *(v0 + 336);
        v63 = *(v0 + 384);
        v68 = *(v0 + 288);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v25, v7);
        v13 = MEMORY[0x277D17F78];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 144, &unk_27D8BA950, &qword_22B364940);
    }

    v26 = sub_22B36081C();
    v27 = [v3 objectForKey_];

    if (v27)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    *(v0 + 176) = v71;
    *(v0 + 192) = v72;
    if (*(v0 + 200))
    {
      if (swift_dynamicCast() && (*(v0 + 393) & 1) != 0)
      {
        v28 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v62 = *(v0 + 336);
        v63 = *(v0 + 384);
        v69 = *(v0 + 288);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v28, v7);
        v13 = MEMORY[0x277D17F80];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 176, &unk_27D8BA950, &qword_22B364940);
    }

    v29 = sub_22B36081C();
    v30 = [v3 objectForKey_];

    if (v30)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    *(v0 + 208) = v71;
    *(v0 + 224) = v72;
    if (*(v0 + 232))
    {
      if (swift_dynamicCast() && (*(v0 + 392) & 1) != 0)
      {
        v31 = *(v0 + 376);
        v7 = *(v0 + 360);
        v8 = *(v0 + 368);
        v10 = *(v0 + 344);
        v9 = *(v0 + 352);
        v11 = *(v0 + 328);
        v62 = *(v0 + 336);
        v63 = *(v0 + 384);
        v70 = *(v0 + 288);
        sub_22B35DE6C();
        sub_22B35F62C();
        sub_22B35DDCC();
        v12 = *(v8 + 8);
        v12(v31, v7);
        v13 = MEMORY[0x277D17F88];
        goto LABEL_57;
      }
    }

    else
    {
      sub_22B123284(v0 + 208, &unk_27D8BA950, &qword_22B364940);
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 320);
    v33 = *(v0 + 296);
    v34 = *(v0 + 304);
    v35 = __swift_project_value_buffer(v33, qword_28140BD10);
    swift_beginAccess();
    (*(v34 + 16))(v32, v35, v33);
    v36 = sub_22B36050C();
    v37 = sub_22B360CFC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22B116000, v36, v37, "Did not find entry in com.apple.Home defaults", v38, 2u);
      MEMORY[0x23188F650](v38, -1, -1);
    }

    v39 = *(v0 + 320);
    v40 = *(v0 + 296);
    v41 = *(v0 + 304);

    (*(v41 + 8))(v39, v40);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 304);
  v42 = *(v0 + 312);
  v44 = *(v0 + 296);
  v45 = __swift_project_value_buffer(v44, qword_28140BD10);
  swift_beginAccess();
  (*(v43 + 16))(v42, v45, v44);
  v46 = sub_22B36050C();
  v47 = sub_22B360CFC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_22B116000, v46, v47, "Did not find com.apple.Home defaults", v48, 2u);
    MEMORY[0x23188F650](v48, -1, -1);
  }

  v50 = *(v0 + 304);
  v49 = *(v0 + 312);
  v52 = *(v0 + 288);
  v51 = *(v0 + 296);

  (*(v50 + 8))(v49, v51);
  v53 = sub_22B35E33C();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
LABEL_69:
  v55 = *(v0 + 376);
  v54 = *(v0 + 384);
  v56 = *(v0 + 352);
  v58 = *(v0 + 320);
  v57 = *(v0 + 328);
  v59 = *(v0 + 312);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_22B3528FC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  v3 = sub_22B35DE9C();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(*(sub_22B36089C() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = sub_22B35DBAC();
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v9 = *(v8 + 64) + 15;
  v2[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v11 = sub_22B35DC4C();
  v2[22] = v11;
  v12 = *(v11 - 8);
  v2[23] = v12;
  v13 = *(v12 + 64) + 15;
  v2[24] = swift_task_alloc();
  v14 = sub_22B36052C();
  v2[25] = v14;
  v15 = *(v14 - 8);
  v2[26] = v15;
  v16 = *(v15 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B352B80, v1, 0);
}

uint64_t sub_22B352B80()
{
  v82 = v0;
  v1 = *(*(v0 + 96) + 136);
  v2 = sub_22B36081C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
  }

  v4 = v81;
  *(v0 + 16) = v80;
  *(v0 + 32) = v4;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v5 = *(v0 + 72);
      v6 = *(v0 + 80);
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 240);
      v9 = *(v0 + 200);
      v8 = *(v0 + 208);
      v10 = __swift_project_value_buffer(v9, qword_28140BD10);
      swift_beginAccess();
      v78 = *(v8 + 16);
      v78(v7, v10, v9);
      v11 = sub_22B36050C();
      v12 = sub_22B360D2C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22B116000, v11, v12, "Skip fetch from server. Use mock data instead", v13, 2u);
        MEMORY[0x23188F650](v13, -1, -1);
      }

      v14 = *(v0 + 240);
      v15 = *(v0 + 200);
      v16 = *(v0 + 208);

      v17 = *(v16 + 8);
      v17(v14, v15);
      v18 = [objc_opt_self() defaultManager];
      v19 = sub_22B36081C();
      LODWORD(v14) = [v18 fileExistsAtPath_];

      v77 = v10;
      if (v14)
      {
        v73 = v18;
        v21 = *(v0 + 184);
        v20 = *(v0 + 192);
        v23 = *(v0 + 152);
        v22 = *(v0 + 160);
        v25 = *(v0 + 136);
        v24 = *(v0 + 144);
        (*(v21 + 56))(*(v0 + 168), 1, 1, *(v0 + 176));
        (*(v23 + 104))(v22, *MEMORY[0x277CC91D8], v24);

        sub_22B35DC3C();
        sub_22B36088C();
        v26 = sub_22B36079C();
        v54 = *(v0 + 128);
        v55 = *(v0 + 88);
        v56 = v26;
        (*(v21 + 8))(*(v0 + 192), *(v0 + 176));
        sub_22B35DE6C();
        sub_22B353D54(v56, v54, v55);
        (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

        goto LABEL_21;
      }

      v78(*(v0 + 224), v10, *(v0 + 200));
      v27 = v18;
      v28 = sub_22B36050C();
      v29 = sub_22B360D1C();
      v75 = v27;

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 224);
      v32 = *(v0 + 200);
      v72 = v5;
      v74 = *(v0 + 208);
      if (v30)
      {
        v76 = v17;
        v33 = swift_slowAlloc();
        v71 = v31;
        v34 = swift_slowAlloc();
        *&v80 = v34;
        *v33 = 136315138;
        v35 = [v27 currentDirectoryPath];
        v70 = v32;
        v36 = sub_22B36084C();
        v37 = v6;
        v39 = v38;

        v40 = sub_22B1A7B20(v36, v39, &v80);
        v6 = v37;

        *(v33 + 4) = v40;
        _os_log_impl(&dword_22B116000, v28, v29, "%s.", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x23188F650](v34, -1, -1);
        v41 = v33;
        v17 = v76;
        MEMORY[0x23188F650](v41, -1, -1);

        v43 = v70;
        v42 = v71;
      }

      else
      {

        v42 = v31;
        v43 = v32;
      }

      v17(v42, v43);
      v78(*(v0 + 216), v77, *(v0 + 200));

      v44 = sub_22B36050C();
      v45 = sub_22B360D1C();

      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 208);
      v48 = *(v0 + 216);
      v49 = *(v0 + 200);
      if (v46)
      {
        v79 = *(v0 + 216);
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v80 = v51;
        *v50 = 136315138;
        v52 = sub_22B1A7B20(v72, v6, &v80);

        *(v50 + 4) = v52;
        _os_log_impl(&dword_22B116000, v44, v45, "Mock data file %s not found.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x23188F650](v51, -1, -1);
        MEMORY[0x23188F650](v50, -1, -1);

        v53 = v79;
      }

      else
      {

        v53 = v48;
      }

      v17(v53, v49);
    }
  }

  else
  {
    sub_22B123284(v0 + 16, &unk_27D8BA950, &qword_22B364940);
  }

  v57 = *(v0 + 88);
  v58 = sub_22B35E33C();
  (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
LABEL_21:
  v60 = *(v0 + 232);
  v59 = *(v0 + 240);
  v62 = *(v0 + 216);
  v61 = *(v0 + 224);
  v63 = *(v0 + 192);
  v65 = *(v0 + 160);
  v64 = *(v0 + 168);
  v67 = *(v0 + 128);
  v66 = *(v0 + 136);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_22B35346C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22B35E32C();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = sub_22B35DE9C();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3535CC, v1, 0);
}

uint64_t sub_22B3535CC()
{
  v1 = *(*(v0 + 56) + 136);
  v2 = sub_22B36081C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  *(v0 + 16) = v27;
  *(v0 + 32) = v28;
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  if (*(v0 + 40))
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = swift_dynamicCast();
    v10 = *(v5 + 56);
    v10(v6, v9 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v12 = *(v0 + 112);
      v11 = *(v0 + 120);
      v13 = *(v0 + 104);
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      v16 = *(v0 + 64);
      v17 = *(v0 + 72);
      v18 = *(v0 + 48);
      (*(v12 + 32))(v11, *(v0 + 96), v13);
      (*(v17 + 104))(v14, *MEMORY[0x277D17FA8], v16);
      (*(v12 + 16))(v15, v11, v13);
      v10(v15, 0, 1, v13);
      sub_22B35E38C();
      sub_22B35E39C();

      sub_22B123284(v15, &qword_27D8BA340, &qword_22B363FB0);
      (*(v17 + 8))(v14, v16);
      (*(v12 + 8))(v11, v13);
      goto LABEL_9;
    }
  }

  else
  {
    sub_22B123284(v0 + 16, &unk_27D8BA950, &qword_22B364940);
    (*(v5 + 56))(v6, 1, 1, v4);
  }

  v19 = *(v0 + 48);
  sub_22B123284(*(v0 + 96), &qword_27D8BA340, &qword_22B363FB0);
  v20 = sub_22B35E33C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
LABEL_9:
  v21 = *(v0 + 120);
  v22 = *(v0 + 88);
  v23 = *(v0 + 96);
  v24 = *(v0 + 80);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22B35390C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_22B36052C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B35F5AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B35E29C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, v12, v15);
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 == *MEMORY[0x277D17F48])
  {
    (*(v8 + 104))(v11, *MEMORY[0x277D073F8], v7);
LABEL_10:
    sub_22B35F5FC();
    return (*(v8 + 8))(v11, v7);
  }

  v19 = a2;
  if (v18 == *MEMORY[0x277D17F40])
  {
    v20 = MEMORY[0x277D073F0];
LABEL_9:
    (*(v8 + 104))(v11, *v20, v7);
    goto LABEL_10;
  }

  if (v18 == *MEMORY[0x277D17F58])
  {
    v20 = MEMORY[0x277D07400];
    goto LABEL_9;
  }

  if (v18 == *MEMORY[0x277D17F50])
  {
    v20 = MEMORY[0x277D073E8];
    goto LABEL_9;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v22 = v30;
  v23 = __swift_project_value_buffer(v30, qword_28140BD10);
  swift_beginAccess();
  v24 = v29;
  (*(v29 + 16))(v31, v23, v22);
  v25 = sub_22B36050C();
  v26 = sub_22B360D1C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22B116000, v25, v26, "Unable to determine correct interval for mock data", v27, 2u);
    MEMORY[0x23188F650](v27, -1, -1);
  }

  (*(v24 + 8))(v31, v22);
  v28 = sub_22B35DE9C();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_22B353D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v127 = a2;
  v154 = a1;
  v132 = a3;
  v3 = sub_22B36052C();
  v152 = *(v3 - 1);
  v153 = v3;
  v4 = *(v152 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v137 = &v116 - v8;
  v119 = sub_22B35E21C();
  v118 = *(v119 - 8);
  v9 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v133 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_22B35E20C();
  v129 = *(v142 - 8);
  v11 = *(v129 + 64);
  MEMORY[0x28223BE20](v142);
  v131 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22B35E32C();
  v128 = *(v141 - 8);
  v13 = *(v128 + 64);
  MEMORY[0x28223BE20](v141);
  v130 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB138, &qword_22B367F48);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v123 = &v116 - v17;
  v126 = sub_22B35E29C();
  v125 = *(v126 - 8);
  v18 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v139 = &v116 - v22;
  v140 = sub_22B35DE9C();
  v147 = *(v140 - 8);
  v23 = *(v147 + 64);
  MEMORY[0x28223BE20](v140);
  v146 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v122 = &v116 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v135 = &v116 - v29;
  v30 = sub_22B35E0BC();
  v144 = *(v30 - 8);
  v145 = v30;
  v31 = *(v144 + 64);
  MEMORY[0x28223BE20](v30);
  v121 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v138 = &v116 - v34;
  v35 = sub_22B35DF9C();
  v134 = *(v35 - 8);
  v36 = *(v134 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_22B35E04C();
  v150 = *(v148 - 8);
  v39 = *(v150 + 64);
  MEMORY[0x28223BE20](v148);
  v136 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v120 = &v116 - v42;
  MEMORY[0x28223BE20](v43);
  v149 = &v116 - v44;
  v45 = sub_22B35E2CC();
  v143 = *(v45 - 8);
  v46 = *(v143 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v116 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22B36089C();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v116 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B36088C();
  v54 = sub_22B36085C();
  v55 = v53;
  v57 = v56;
  (*(v50 + 8))(v55, v49);
  if (v57 >> 60 == 15)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v58 = v153;
    v59 = __swift_project_value_buffer(v153, qword_28140BD10);
    swift_beginAccess();
    v60 = v152;
    (*(v152 + 16))(v6, v59, v58);
    v61 = sub_22B36050C();
    v62 = sub_22B360D1C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_22B116000, v61, v62, "Failed to extract data from JSON", v63, 2u);
      MEMORY[0x23188F650](v63, -1, -1);
    }

    (*(v60 + 8))(v6, v58);
    sub_22B134CDC();
    swift_allocError();
    *v64 = 18;
    return swift_willThrow();
  }

  else
  {
    v66 = sub_22B35D7FC();
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    sub_22B35D7EC();
    sub_22B354F10(&qword_27D8BB140, MEMORY[0x277D17F60]);
    v69 = v151;
    sub_22B35D7DC();
    if (v69)
    {
      sub_22B11EDC0(v54, v57);
    }

    else
    {
      v70 = v48;
      v116 = v54;
      v151 = v57;
      v154 = v45;

      v71 = v134;
      (*(v134 + 104))(v38, *MEMORY[0x277CC9830], v35);
      v72 = v149;
      sub_22B35DFAC();
      (*(v71 + 8))(v38, v35);
      sub_22B35E27C();
      v73 = v135;
      sub_22B35E05C();

      v75 = v144;
      v74 = v145;
      v76 = (*(v144 + 48))(v73, 1, v145);
      v117 = v70;
      if (v76 == 1)
      {
        sub_22B123284(v73, &unk_27D8BA080, &unk_22B364280);
        v77 = v150;
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v78 = v153;
        v79 = __swift_project_value_buffer(v153, qword_28140BD10);
        swift_beginAccess();
        v80 = v152;
        (*(v152 + 16))(v137, v79, v78);
        v81 = sub_22B36050C();
        v82 = sub_22B360D1C();
        v83 = os_log_type_enabled(v81, v82);
        v84 = v148;
        v85 = v116;
        if (v83)
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_22B116000, v81, v82, "Failed to extract timezone from JSON", v86, 2u);
          MEMORY[0x23188F650](v86, -1, -1);
        }

        (*(v80 + 8))(v137, v78);
        sub_22B134CDC();
        swift_allocError();
        *v87 = 18;
        swift_willThrow();
        sub_22B11EDC0(v85, v151);
        (*(v77 + 8))(v72, v84);
        return (*(v143 + 8))(v117, v154);
      }

      else
      {
        v88 = v138;
        (*(v75 + 32))(v138, v73, v74);
        (*(v75 + 16))(v121, v88, v74);
        sub_22B35E01C();
        sub_22B35E2AC();
        v89 = v72;
        v90 = v150;
        v137 = *(v150 + 16);
        v91 = v120;
        v92 = v148;
        (v137)(v120, v89, v148);
        sub_22B35E2BC();
        v93 = v122;
        sub_22B35DE6C();
        v152 = sub_22B35E2EC();

        v94 = *(v147 + 8);
        v147 += 8;
        v153 = v94;
        v94(v93, v140);
        v95 = v149;
        v96 = v92;
        v97 = *(v90 + 8);
        v150 = v90 + 8;
        v97(v91, v96);
        sub_22B35F52C();
        (v137)(v136, v95, v96);
        v98 = v123;
        sub_22B35E28C();
        v99 = v125;
        v100 = *(v125 + 48);
        v101 = v126;
        v102 = v97;
        if (v100(v98, 1, v126) == 1)
        {
          v103 = v124;
          (*(v99 + 104))(v124, *MEMORY[0x277D17F40], v101);
          v104 = v100(v98, 1, v101);
          v105 = v99;
          v106 = v130;
          if (v104 != 1)
          {
            sub_22B123284(v98, &qword_27D8BB138, &qword_22B367F48);
          }
        }

        else
        {
          v103 = v124;
          (*(v99 + 32))(v124, v98, v101);
          v105 = v99;
          v106 = v130;
        }

        type metadata accessor for HomeEnergyForecastCache();
        v107 = v136;
        sub_22B35390C(v103, v139);
        (*(v105 + 8))(v103, v101);
        v108 = v107;
        v109 = v148;
        v137 = v102;
        (v102)(v108, v148);
        v110 = v128 + 104;
        (*(v128 + 104))(v106, *MEMORY[0x277D17FA8], v141);
        sub_22B35E2BC();
        v111 = v129 + 104;
        v112 = v106;
        v113 = v131;
        (*(v129 + 104))(v131, *MEMORY[0x277D17EE8], v142);
        v114 = v139;
        sub_22B35E11C();

        sub_22B11EDC0(v116, v151);
        (*(v111 - 96))(v113, v142);
        (*(v110 - 96))(v112, v141);
        sub_22B123284(v114, &qword_27D8BA340, &qword_22B363FB0);
        v153(v146, v140);
        (*(v144 + 8))(v138, v145);
        (v137)(v149, v109);
        (*(v143 + 8))(v117, v154);
        v115 = sub_22B35E33C();
        return (*(*(v115 - 8) + 56))(v132, 0, 1, v115);
      }
    }
  }
}

uint64_t sub_22B354F10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B354F58()
{
  v0 = sub_22B35F6FC();
  __swift_allocate_value_buffer(v0, qword_27D8BB230);
  __swift_project_value_buffer(v0, qword_27D8BB230);
  sub_22B354FE8();
  return sub_22B3614EC();
}

unint64_t sub_22B354FE8()
{
  result = qword_27D8BA898;
  if (!qword_27D8BA898)
  {
    sub_22B35F6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA898);
  }

  return result;
}

uint64_t sub_22B35506C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22B36109C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_22B36109C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_22B356064(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22B356104(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_22B3551B4(unint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_22B36109C();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = sub_22B36109C();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_22B356064(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = (*(v3 + 0x18) >> 1) - v14;
  result = sub_22B24FEE0(&v36, (v3 + 8 * v14 + 32), v15, v8);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_22B1A20B8();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!sub_22B36125C())
    {
      goto LABEL_11;
    }

    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= (v39 + 1))
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 48) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_22B360A7C();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_22B36125C())
      {
        sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 48) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= (v8 + 1))
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_22B35553C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_22B355680(char *a1, int64_t a2, char a3)
{
  result = sub_22B3558B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22B3556A0(size_t a1, int64_t a2, char a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BAF78, &qword_22B367610, type metadata accessor for CDEnergyGuidanceTracker);
  *v3 = result;
  return result;
}

char *sub_22B3556E4(char *a1, int64_t a2, char a3)
{
  result = sub_22B3559C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22B355704(size_t a1, int64_t a2, char a3)
{
  result = sub_22B355B6C(a1, a2, a3, *v3, &qword_27D8BB168, &qword_22B367FF8, &qword_27D8BA358, qword_22B368000);
  *v3 = result;
  return result;
}

size_t sub_22B355744(size_t a1, int64_t a2, char a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BAFA8, &qword_22B367FE0, MEMORY[0x277D17FC8]);
  *v3 = result;
  return result;
}

size_t sub_22B355788(size_t a1, int64_t a2, char a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BA738, &unk_22B3659D0, type metadata accessor for CDTOUPeak);
  *v3 = result;
  return result;
}

size_t sub_22B3557CC(size_t a1, int64_t a2, char a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BAFB8, &qword_22B367658, MEMORY[0x277D17F18]);
  *v3 = result;
  return result;
}

size_t sub_22B355810(size_t a1, int64_t a2, char a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BA250, &unk_22B367FC0, MEMORY[0x277D17568]);
  *v3 = result;
  return result;
}

void *sub_22B355854(void *a1, int64_t a2, char a3)
{
  result = sub_22B355D54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22B355874(size_t a1, int64_t a2, char a3)
{
  result = sub_22B355E88(a1, a2, a3, *v3, &qword_27D8BAF50, &qword_22B3675D0, _s17PreparedBlockDataVMa);
  *v3 = result;
  return result;
}

char *sub_22B3558B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
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

char *sub_22B3559C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF40, &unk_22B3675B8);
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

size_t sub_22B355B6C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_22B355D54(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB160, &qword_22B367FE8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5E0, &unk_22B365590);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22B355E88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_22B356064(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22B36109C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22B3611AC();
  *v1 = result;
  return result;
}

uint64_t sub_22B356104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22B36109C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22B36109C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22B357624();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA858, &qword_22B365EF8);
            v9 = sub_22B338A54(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22B128014(0, &qword_281408590, 0x277CBE448);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_22B356294(uint64_t a1, uint64_t a2)
{
  sub_22B35F67C();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v5 = sub_22B35DEDC();
  [v4 setHomeIdentifier_];

  v6 = _s17PreparedBlockDataVMa();
  v7 = a1 + v6[5];
  v8 = sub_22B35DEDC();
  [v4 setSiteIdentifier_];

  v9 = (a1 + v6[6]);
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_22B36081C();
  [v4 setSourceIdentifier_];

  v13 = (a1 + v6[7]);
  v14 = *v13;
  v15 = v13[1];
  v16 = sub_22B36081C();
  [v4 setDeviceIdentifier_];

  v17 = a1 + v6[8];
  v18 = sub_22B35DEDC();
  [v4 setSessionIdentifier_];

  v19 = (a1 + v6[9]);
  v20 = *v19;
  v21 = v19[1];
  v22 = sub_22B36081C();
  [v4 setLoadType_];

  [v4 setBlockIndex_];
  [v4 setIsConsumptionBlock_];
  v23 = a1 + v6[12];
  v24 = sub_22B35DDDC();
  [v4 setSessionStart_];

  v25 = a1 + v6[13];
  v26 = sub_22B35DDDC();
  [v4 setSessionEnd_];

  v27 = a1 + v6[14];
  v28 = sub_22B35DDDC();
  [v4 setBlockStart_];

  v29 = a1 + v6[15];
  v30 = sub_22B35DDDC();
  [v4 setBlockEnd_];

  v31 = (a1 + v6[16]);
  v32 = *v31;
  v33 = v31[1];
  v34 = sub_22B35DCCC();
  [v4 setBlockData_];

  [v4 setVersion_];
  return v4;
}

uint64_t sub_22B3564FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v162 = a2;
  v179 = sub_22B35DE9C();
  v5 = *(v179 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v179);
  v178 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_22B35E85C();
  v8 = *(v184 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v184);
  v183 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_22B35E81C();
  v11 = *(v182 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v182);
  v181 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB148, &unk_22B367FB0);
  v14 = *(*(v187 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v187);
  v17 = (&v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v161 = &v155 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v175 = (&v155 - v21);
  MEMORY[0x28223BE20](v20);
  v173 = &v155 - v22;
  v180 = _s17PreparedBlockDataVMa();
  v185 = *(v180 - 8);
  v23 = *(v185 + 64);
  v24 = MEMORY[0x28223BE20](v180);
  v156 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v160 = &v155 - v27;
  MEMORY[0x28223BE20](v26);
  v172 = (&v155 - v28);
  v29 = MEMORY[0x277D84F90];
  v200 = MEMORY[0x277D84F90];
  v30 = sub_22B35E5BC();
  v31 = *(v30 + 16);
  v186 = a1;
  v177 = v17;
  v159 = v5;
  v158 = v8;
  v157 = v11;
  if (v31)
  {
    v199 = v29;
    v174 = v30;
    v176 = v31;
    sub_22B355874(0, v31, 0);
    v32 = v174;
    v197 = v199;
    v33 = *(v174 + 16);
    result = sub_22B35E66C();
    v35 = 0;
    v170 = result;
    v36 = *(result - 8);
    v168 = (v32 + ((*(v36 + 80) + 32) & ~*(v36 + 80)));
    v167 = (v36 + 16);
    v169 = v36;
    v166 = (v36 + 32);
    v165 = (v11 + 8);
    v164 = (v8 + 8);
    v163 = (v5 + 8);
    if (v33 >= v176)
    {
      v37 = v176;
    }

    else
    {
      v37 = v33;
    }

    v171 = v37;
    v38 = v175;
    while (v171 != v35)
    {
      if (v35 >= *(v32 + 16))
      {
        goto LABEL_37;
      }

      v39 = v187;
      v40 = *(v187 + 48);
      v41 = v169;
      v42 = v173;
      v43 = v170;
      (*(v169 + 2))(&v173[v40], &v168[*(v169 + 9) * v35], v170);
      *v38 = v35;
      (*(v41 + 4))(v38 + *(v39 + 48), &v42[v40], v43);
      v44 = sub_22B35DB0C();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();
      v47 = sub_22B35DAFC();
      sub_22B35DADC();
      sub_22B357440();
      v48 = sub_22B35DAEC();
      if (v3)
      {

        sub_22B357498(v38);
      }

      v50 = v48;
      v195 = v47;
      v196 = v49;
      v198 = 0;
      v51 = v180;
      v52 = v181;
      sub_22B35E60C();
      v190 = sub_22B35E42C();
      v53 = *v165;
      v54 = v182;
      (*v165)(v52, v182);
      sub_22B35E65C();
      sub_22B35E42C();
      v53(v52, v54);
      v55 = v172;
      sub_22B35E56C();
      v56 = v55 + v51[5];
      sub_22B35E57C();
      v57 = sub_22B35E5AC();
      v194 = v58;
      v59 = sub_22B35E58C();
      v192 = v60;
      v193 = v59;
      v61 = v55 + v51[8];
      sub_22B35E5CC();
      v62 = v183;
      sub_22B35E68C();
      v63 = sub_22B35E84C();
      v191 = v64;
      result = (*v164)(v62, v184);
      if (v35 == 0x80000000)
      {
        goto LABEL_38;
      }

      v65 = v55 + v51[12];
      v189 = v63;
      v66 = sub_22B35E69C();
      v67 = v55 + v51[13];
      MEMORY[0x23188BFA0](v66);
      v68 = v178;
      sub_22B35E69C();
      v69 = v55 + v51[14];
      sub_22B35DDCC();
      v188 = v50;
      v70 = *v163;
      v190 = v35;
      v71 = v57;
      v72 = v179;
      v73 = v70(v68, v179);
      MEMORY[0x23188BFA0](v73);
      v74 = v55 + v51[15];
      sub_22B35DDCC();

      v70(v68, v72);
      v75 = (v55 + v51[6]);
      *v75 = v71;
      v76 = v193;
      v75[1] = v194;
      v77 = (v55 + v51[7]);
      v78 = v192;
      *v77 = v76;
      v77[1] = v78;
      v79 = (v55 + v51[9]);
      v80 = v190;
      v81 = v191;
      *v79 = v189;
      v79[1] = v81;
      *(v55 + v51[10]) = v80;
      *(v55 + v51[11]) = 1;
      v82 = (v55 + v51[16]);
      v83 = v196;
      *v82 = v188;
      v82[1] = v83;
      v38 = v175;
      sub_22B357498(v175);
      v84 = v197;
      v199 = v197;
      v86 = *(v197 + 16);
      v85 = *(v197 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_22B355874(v85 > 1, v86 + 1, 1);
        v84 = v199;
      }

      v35 = v80 + 1;
      *(v84 + 16) = v86 + 1;
      v87 = (*(v185 + 80) + 32) & ~*(v185 + 80);
      v197 = v84;
      result = sub_22B357500(v55, v84 + v87 + *(v185 + 72) * v86);
      v3 = v198;
      v17 = v177;
      v32 = v174;
      if (v176 == v35)
      {

        v88 = v197;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v88 = MEMORY[0x277D84F90];
LABEL_16:
  sub_22B35553C(v88, sub_22B32DA78, _s17PreparedBlockDataVMa);
  v89 = sub_22B35E59C();
  v90 = *(v89 + 16);
  v91 = v162;
  v92 = v159;
  v93 = v158;
  v94 = v157;
  if (v90)
  {
    v199 = MEMORY[0x277D84F90];
    v175 = v89;
    v176 = v90;
    sub_22B355874(0, v90, 0);
    v95 = v175;
    v197 = v199;
    v96 = v175[2];
    result = sub_22B35E66C();
    v97 = 0;
    v173 = result;
    v98 = *(result - 8);
    v171 = v95 + ((v98[80] + 32) & ~v98[80]);
    v170 = (v98 + 16);
    v172 = v98;
    v169 = v98 + 32;
    v168 = (v94 + 8);
    v167 = (v93 + 8);
    v166 = (v92 + 8);
    if (v96 >= v176)
    {
      v99 = v176;
    }

    else
    {
      v99 = v96;
    }

    v174 = v99;
    while (v174 != v97)
    {
      if (v97 >= *(v95 + 16))
      {
        goto LABEL_40;
      }

      v100 = v187;
      v101 = *(v187 + 48);
      v102 = v172;
      v103 = v161;
      v104 = v173;
      v172[2](&v161[v101], (v171 + v172[9] * v97), v173);
      *v17 = v97;
      v102[4](v17 + *(v100 + 48), &v103[v101], v104);
      v105 = sub_22B35DB0C();
      v106 = *(v105 + 48);
      v107 = *(v105 + 52);
      swift_allocObject();
      v108 = sub_22B35DAFC();
      sub_22B35DADC();
      sub_22B357440();
      v109 = sub_22B35DAEC();
      if (v3)
      {

        sub_22B357498(v17);
      }

      v194 = v108;
      v195 = v110;
      v196 = v109;
      v198 = 0;
      v111 = v180;
      v112 = v181;
      sub_22B35E60C();
      v189 = sub_22B35E42C();
      v113 = *v168;
      v114 = v182;
      (*v168)(v112, v182);
      sub_22B35E65C();
      sub_22B35E42C();
      v113(v112, v114);
      v115 = v160;
      sub_22B35E56C();
      v116 = v115 + v111[5];
      sub_22B35E57C();
      v117 = sub_22B35E5AC();
      v193 = v118;
      v119 = sub_22B35E58C();
      v191 = v120;
      v192 = v119;
      v121 = v115 + v111[8];
      sub_22B35E5CC();
      v122 = v183;
      sub_22B35E68C();
      v123 = sub_22B35E84C();
      v190 = v124;
      result = (*v167)(v122, v184);
      if (v97 == 0x80000000)
      {
        goto LABEL_41;
      }

      v125 = v115 + v111[12];
      v189 = v123;
      v126 = sub_22B35E69C();
      v127 = v115 + v111[13];
      MEMORY[0x23188BFA0](v126);
      v128 = v178;
      sub_22B35E69C();
      v129 = v115 + v111[14];
      sub_22B35DDCC();
      v130 = *v166;
      v188 = v117;
      v131 = v179;
      v132 = v130(v128, v179);
      MEMORY[0x23188BFA0](v132);
      v133 = v115 + v111[15];
      sub_22B35DDCC();

      v130(v128, v131);
      v134 = (v115 + v111[6]);
      v135 = v192;
      v136 = v193;
      *v134 = v188;
      v134[1] = v136;
      v137 = (v115 + v111[7]);
      *v137 = v135;
      v137[1] = v191;
      v138 = (v115 + v111[9]);
      v139 = v190;
      *v138 = v189;
      v138[1] = v139;
      *(v115 + v111[10]) = v97;
      *(v115 + v111[11]) = 0;
      v140 = (v115 + v111[16]);
      v141 = v195;
      *v140 = v196;
      v140[1] = v141;
      v17 = v177;
      sub_22B357498(v177);
      v142 = v197;
      v199 = v197;
      v144 = *(v197 + 16);
      v143 = *(v197 + 24);
      if (v144 >= v143 >> 1)
      {
        sub_22B355874(v143 > 1, v144 + 1, 1);
        v142 = v199;
      }

      ++v97;
      *(v142 + 16) = v144 + 1;
      v145 = (*(v185 + 80) + 32) & ~*(v185 + 80);
      v197 = v142;
      result = sub_22B357500(v115, v142 + v145 + *(v185 + 72) * v144);
      v3 = v198;
      v91 = v162;
      v95 = v175;
      if (v176 == v97)
      {

        v146 = MEMORY[0x277D84F90];
        v147 = v197;
        goto LABEL_31;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  v147 = MEMORY[0x277D84F90];
  v146 = MEMORY[0x277D84F90];
LABEL_31:
  sub_22B35553C(v147, sub_22B32DA78, _s17PreparedBlockDataVMa);
  v148 = v200;
  v149 = *(v200 + 16);
  if (v149)
  {
    v199 = v146;
    sub_22B3611FC();
    v150 = *(v185 + 80);
    v198 = v148;
    v151 = v148 + ((v150 + 32) & ~v150);
    v152 = *(v185 + 72);
    v153 = v156;
    do
    {
      sub_22B357564(v151, v153);
      sub_22B356294(v153, v91);
      sub_22B3575C8(v153);
      sub_22B3611DC();
      v154 = *(v199 + 16);
      sub_22B36120C();
      sub_22B36121C();
      sub_22B3611EC();
      v151 += v152;
      --v149;
    }

    while (v149);

    return v199;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t _s17PreparedBlockDataVMa()
{
  result = qword_27D8BB170;
  if (!qword_27D8BB170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22B357440()
{
  result = qword_27D8BB150;
  if (!qword_27D8BB150)
  {
    sub_22B35E66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB150);
  }

  return result;
}

uint64_t sub_22B357498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB148, &unk_22B367FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B357500(uint64_t a1, uint64_t a2)
{
  v4 = _s17PreparedBlockDataVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B357564(uint64_t a1, uint64_t a2)
{
  v4 = _s17PreparedBlockDataVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3575C8(uint64_t a1)
{
  v2 = _s17PreparedBlockDataVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B357624()
{
  result = qword_27D8BB158;
  if (!qword_27D8BB158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA858, &qword_22B365EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB158);
  }

  return result;
}

uint64_t sub_22B3576B0()
{
  result = sub_22B35DF1C();
  if (v1 <= 0x3F)
  {
    result = sub_22B35DE9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B357770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  else
  {
    v4 = objc_opt_self();
    v5 = sub_22B360A3C();
    v6 = sub_22B360A3C();
    v7 = [v4 preferredLocalizationsFromArray:v5 forPreferences:v6];

    v8 = sub_22B360A5C();
    if (v8[2])
    {
      v9 = v8[4];
      v10 = v8[5];
    }
  }

  return sub_22B35DF2C();
}

unint64_t sub_22B357898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a1;
  v7 = sub_22B35DF8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0xD000000000000011;
  v26 = 0x800000022B36F2A0;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_22B36116C();

  v23 = 0xD00000000000001BLL;
  v24 = 0x800000022B36F2C0;
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x23188E390](a1, MEMORY[0x277D837D0]);
  MEMORY[0x23188E270](v13);

  MEMORY[0x23188E270](v23, v24);

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_22B36116C();

  v23 = 0xD000000000000013;
  v24 = 0x800000022B36F2E0;
  v14 = MEMORY[0x23188E390](a2, v12);
  MEMORY[0x23188E270](v14);

  MEMORY[0x23188E270](v23, v24);

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_22B36116C();

  v23 = 0xD000000000000017;
  v24 = 0x800000022B36F300;
  v15 = v19;
  v21 = v19;
  v22 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA218, &qword_22B363548);
  v16 = sub_22B3608BC();
  MEMORY[0x23188E270](v16);

  MEMORY[0x23188E270](v23, v24);

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_22B36116C();

  v23 = 0xD000000000000014;
  v24 = 0x800000022B36F320;
  sub_22B357770(v20, a2, v15, a4);
  sub_22B357E94();
  v17 = sub_22B36131C();
  MEMORY[0x23188E270](v17);

  (*(v8 + 8))(v11, v7);
  MEMORY[0x23188E270](v23, v24);

  MEMORY[0x23188E270](10506, 0xE200000000000000);
  return v25;
}

uint64_t sub_22B357B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  MEMORY[0x23188EDD0](v8);
  if (v8)
  {
    v9 = (a2 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      sub_22B3608FC();

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v12 = *(a3 + 16);
  MEMORY[0x23188EDD0](v12);
  if (v12)
  {
    v13 = (a3 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_22B3608FC();

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  if (!a5)
  {
    return sub_22B3614BC();
  }

  sub_22B3614BC();

  return sub_22B3608FC();
}

uint64_t sub_22B357CA8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if (sub_22B357FDC(*a1, *a2) & 1) != 0 && (sub_22B357FDC(v2, v5))
  {
    if (v4)
    {
      if (v6 && (v3 == v7 && v4 == v6 || (sub_22B36134C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22B357D48()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22B36149C();
  sub_22B357B90(v6, v1, v2, v4, v3);
  return sub_22B3614DC();
}

uint64_t sub_22B357DB4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22B36149C();
  sub_22B357B90(v6, v1, v2, v4, v3);
  return sub_22B3614DC();
}

void sub_22B357E10()
{
  v0 = sub_22B36081C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_27D8BB248 = v1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22B357E94()
{
  result = qword_27D8BB180;
  if (!qword_27D8BB180)
  {
    sub_22B35DF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB180);
  }

  return result;
}

uint64_t sub_22B357EEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22B357F34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B357F88()
{
  result = qword_27D8BB188;
  if (!qword_27D8BB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BB188);
  }

  return result;
}

uint64_t sub_22B357FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22B36134C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22B35806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(type metadata accessor for CDEnergyGuidanceTracker() - 8);
  v4[6] = v5;
  v6 = *(v5 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B35812C, v3, 0);
}

uint64_t sub_22B35812C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_22B3634B0;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    *(v0 + 80) = v3;
    *(v0 + 88) = xmmword_22B368150;
    *(v0 + 104) = v1;
    swift_bridgeObjectRetain_n();

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_22B35856C;
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);

    return sub_22B1CD648(v2, v1, v5);
  }

  else
  {
    if (qword_28140B068 != -1)
    {
      swift_once();
    }

    v8 = qword_28140BDC0;
    *(v0 + 64) = qword_28140BDC0;

    return MEMORY[0x2822009F8](sub_22B3582B8, v8, 0);
  }
}

uint64_t sub_22B3582B8()
{
  v1 = v0[8];
  v2 = v0[5];
  v0[9] = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B358328, v2, 0);
}

uint64_t sub_22B358328()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[7];
    v27 = MEMORY[0x277D84F90];
    sub_22B355680(0, v2, 0);
    v5 = v27;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = v0[7];
      sub_22B12B168(v6, v8);
      v9 = *v8;
      v10 = *(v4 + 8);

      sub_22B12B1CC(v8);
      v12 = v27[2];
      v11 = v27[3];
      if (v12 >= v11 >> 1)
      {
        sub_22B355680((v11 > 1), v12 + 1, 1);
      }

      v27[2] = v12 + 1;
      v13 = &v27[2 * v12];
      v13[4] = v9;
      v13[5] = v10;
      v6 += v7;
      --v2;
    }

    while (v2);
    v14 = v0[9];
  }

  else
  {
    v15 = v0[9];

    v5 = MEMORY[0x277D84F90];
  }

  v0[10] = v5;
  v16 = v5[2];
  v0[11] = v16;
  if (v16)
  {
    v0[12] = 0;
    v17 = v5[4];
    v18 = v5[5];
    v0[13] = v18;

    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_22B35856C;
    v20 = v0[4];
    v21 = v0[5];

    return sub_22B1CD648(v17, v18, v20);
  }

  else
  {
    v23 = swift_task_alloc();
    v0[15] = v23;
    *v23 = v0;
    v23[1] = sub_22B3587E4;
    v24 = v0[10];
    v25 = v0[4];
    v26 = v0[5];

    return sub_22B35B648(v24, v25);
  }
}

uint64_t sub_22B35856C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B358698, v3, 0);
}

uint64_t sub_22B358698()
{
  v1 = v0[12] + 1;
  if (v1 == v0[11])
  {
    v2 = v0[10];

    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_22B3587E4;
    v4 = v0[10];
    v5 = v0[4];
    v6 = v0[5];

    return sub_22B35B648(v4, v5);
  }

  else
  {
    v0[12] = v1;
    v8 = v0[10] + 16 * v1;
    v10 = *(v8 + 32);
    v9 = *(v8 + 40);
    v0[13] = v9;

    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_22B35856C;
    v12 = v0[4];
    v13 = v0[5];

    return sub_22B1CD648(v10, v9, v12);
  }
}

uint64_t sub_22B3587E4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B358910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 160) = a4;
  *(v6 + 168) = v5;
  *(v6 + 464) = a5;
  *(v6 + 144) = a2;
  *(v6 + 152) = a3;
  *(v6 + 136) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA740, &unk_22B3659E0) - 8) + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v8 = sub_22B35E37C();
  *(v6 + 184) = v8;
  v9 = *(v8 - 8);
  *(v6 + 192) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  v11 = sub_22B36052C();
  *(v6 + 224) = v11;
  v12 = *(v11 - 8);
  *(v6 + 232) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v14 = sub_22B35E04C();
  *(v6 + 264) = v14;
  v15 = *(v14 - 8);
  *(v6 + 272) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  v18 = sub_22B35E0BC();
  *(v6 + 296) = v18;
  v19 = *(v18 - 8);
  *(v6 + 304) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  v21 = sub_22B35DE9C();
  *(v6 + 320) = v21;
  v22 = *(v21 - 8);
  *(v6 + 328) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  v24 = sub_22B35E02C();
  *(v6 + 360) = v24;
  v25 = *(v24 - 8);
  *(v6 + 368) = v25;
  v26 = *(v25 + 64) + 15;
  *(v6 + 376) = swift_task_alloc();
  v27 = sub_22B35D8BC();
  *(v6 + 384) = v27;
  v28 = *(v27 - 8);
  *(v6 + 392) = v28;
  v29 = *(v28 + 64) + 15;
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B358CE0, v5, 0);
}

uint64_t sub_22B358CE0()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  (*(v2 + 16))(v1, v0[20], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277CC9998])
  {
    v59 = v0[43];
    v61 = v0[42];
    v64 = v0[53];
    v5 = v0[34];
    v6 = v0[35];
    v7 = v0[33];
    v8 = v0[21];
    v9 = v0[19];
    v10 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
    swift_beginAccess();
    v11 = *(v5 + 16);
    v11(v6, v8 + v10, v7);
    sub_22B35F57C();
    v12 = *(v5 + 8);
    v12(v6, v7);
    v11(v6, v8 + v10, v7);
    sub_22B35F4FC();
    v12(v6, v7);
    goto LABEL_6;
  }

  if (v4 == *MEMORY[0x277CC9968])
  {
    v13 = v0[37];
    v14 = v0[38];
    v15 = v0[36];
    sub_22B35E08C();
    v16 = (*(v14 + 48))(v15, 1, v13);
    if (v16 == 1)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v16, v17, v18);
    }

    v19 = v0[44];
    v62 = v0[43];
    v65 = v0[53];
    v20 = v0[38];
    v21 = v0[39];
    v22 = v0[37];
    v24 = v0[34];
    v23 = v0[35];
    v25 = v0[33];
    v26 = v0[21];
    v27 = v0[19];
    (*(v20 + 32))(v21, v0[36], v22);
    sub_22B35F50C();
    (*(v20 + 8))(v21, v22);
    v28 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
    swift_beginAccess();
    (*(v24 + 16))(v23, v26 + v28, v25);
    sub_22B35F64C();
    (*(v24 + 8))(v23, v25);
LABEL_6:
    sub_22B35D88C();
    if (qword_281408750 != -1)
    {
      swift_once();
    }

    v17 = qword_28140BC30;
    v0[54] = qword_28140BC30;
    v16 = sub_22B359224;
    v18 = 0;

    return MEMORY[0x2822009F8](v16, v17, v18);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v29 = v0[32];
  v30 = v0[28];
  v31 = v0[29];
  v32 = __swift_project_value_buffer(v30, qword_28140BD10);
  swift_beginAccess();
  (*(v31 + 16))(v29, v32, v30);
  v33 = sub_22B36050C();
  v34 = sub_22B360D1C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_22B116000, v33, v34, "Invalid queryInterval passed in", v35, 2u);
    MEMORY[0x23188F650](v35, -1, -1);
  }

  v37 = v0[46];
  v36 = v0[47];
  v38 = v0[45];
  v39 = v0[32];
  v40 = v0[28];
  v41 = v0[29];

  (*(v41 + 8))(v39, v40);
  (*(v37 + 8))(v36, v38);
  v43 = v0[52];
  v42 = v0[53];
  v45 = v0[50];
  v44 = v0[51];
  v46 = v0[47];
  v47 = v0[43];
  v48 = v0[44];
  v49 = v0[42];
  v50 = v0[39];
  v51 = v0[36];
  v54 = v0[35];
  v55 = v0[32];
  v56 = v0[31];
  v57 = v0[30];
  v58 = v0[27];
  v60 = v0[26];
  v63 = v0[25];
  v66 = v0[22];

  v52 = v0[1];

  return v52(0);
}

uint64_t sub_22B359224()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 168);
  *(v0 + 465) = sub_22B31FD94(*(v0 + 136), *(v0 + 144), *(v0 + 424)) & 1;

  return MEMORY[0x2822009F8](sub_22B35929C, v2, 0);
}

uint64_t sub_22B35929C()
{
  if (*(v0 + 465) == 1)
  {
    (*(*(v0 + 392) + 8))(*(v0 + 424), *(v0 + 384));
    v2 = *(v0 + 416);
    v1 = *(v0 + 424);
    v4 = *(v0 + 400);
    v3 = *(v0 + 408);
    v5 = *(v0 + 376);
    v6 = *(v0 + 344);
    v7 = *(v0 + 352);
    v8 = *(v0 + 336);
    v9 = *(v0 + 312);
    v10 = *(v0 + 288);
    v19 = *(v0 + 280);
    v20 = *(v0 + 256);
    v21 = *(v0 + 248);
    v22 = *(v0 + 240);
    v23 = *(v0 + 216);
    v24 = *(v0 + 208);
    v25 = *(v0 + 200);
    v26 = *(v0 + 176);

    v11 = *(v0 + 8);

    return v11(1);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 440) = v13;
    *v13 = v0;
    v13[1] = sub_22B35948C;
    v14 = *(v0 + 424);
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);

    return sub_22B35A798(v15, v17, v18, v14);
  }
}

uint64_t sub_22B35948C()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B35959C, v2, 0);
}

uint64_t sub_22B35959C()
{
  v150 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22B123284(v3, &qword_27D8BA740, &unk_22B3659E0);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 424);
    v5 = *(v0 + 408);
    v146 = *(v0 + 400);
    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    v10 = *(v0 + 224);
    v11 = *(v0 + 144);
    v12 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v8 + 16))(v9, v12, v10);
    v13 = *(v7 + 16);
    v13(v5, v4, v6);
    v13(v146, v4, v6);

    v14 = sub_22B36050C();
    v15 = sub_22B360D2C();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 424);
    v19 = *(v0 + 400);
    v18 = *(v0 + 408);
    v20 = *(v0 + 384);
    v21 = *(v0 + 392);
    if (v16)
    {
      v147 = *(v0 + 424);
      v22 = *(v0 + 344);
      v111 = *(v0 + 408);
      v24 = *(v0 + 320);
      v23 = *(v0 + 328);
      v132 = *(v0 + 232);
      v137 = *(v0 + 224);
      v142 = *(v0 + 240);
      v129 = v15;
      v119 = *(v0 + 384);
      v26 = *(v0 + 136);
      v25 = *(v0 + 144);
      v122 = *(v0 + 400);
      v27 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v149 = v125;
      *v27 = 136381187;
      *(v27 + 4) = sub_22B1A7B20(v26, v25, &v149);
      *(v27 + 12) = 2080;
      sub_22B35D89C();
      sub_22B35D784(&qword_28140B488, MEMORY[0x277CC9578]);
      v28 = sub_22B36131C();
      log = v14;
      v30 = v29;
      v114 = *(v23 + 8);
      v114(v22, v24);
      v31 = *(v21 + 8);
      v31(v111, v119);
      v32 = sub_22B1A7B20(v28, v30, &v149);

      *(v27 + 14) = v32;
      *(v27 + 22) = 2080;
      sub_22B35D86C();
      v33 = sub_22B36131C();
      v35 = v34;
      v114(v22, v24);
      v31(v122, v119);
      v36 = sub_22B1A7B20(v33, v35, &v149);

      *(v27 + 24) = v36;
      _os_log_impl(&dword_22B116000, log, v129, "No guidance for %{private}s interval start: %s end: %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v125, -1, -1);
      MEMORY[0x23188F650](v27, -1, -1);

      (*(v132 + 8))(v142, v137);
      v31(v147, v119);
    }

    else
    {
      v48 = *(v0 + 232);
      v47 = *(v0 + 240);
      v49 = *(v0 + 224);

      v50 = *(v21 + 8);
      v50(v19, v20);
      v50(v18, v20);
      (*(v48 + 8))(v47, v49);
      v50(v17, v20);
    }

LABEL_21:
    v97 = *(v0 + 416);
    v96 = *(v0 + 424);
    v99 = *(v0 + 400);
    v98 = *(v0 + 408);
    v100 = *(v0 + 376);
    v101 = *(v0 + 344);
    v102 = *(v0 + 352);
    v103 = *(v0 + 336);
    v104 = *(v0 + 312);
    v105 = *(v0 + 288);
    v121 = *(v0 + 280);
    v124 = *(v0 + 256);
    v128 = *(v0 + 248);
    v131 = *(v0 + 240);
    v136 = *(v0 + 216);
    v141 = *(v0 + 208);
    v145 = *(v0 + 200);
    v148 = *(v0 + 176);

    v106 = *(v0 + 8);

    return v106(0);
  }

  v37 = *(v0 + 416);
  v38 = *(v0 + 392);
  v133 = *(v0 + 384);
  v39 = *(v0 + 344);
  v138 = *(v0 + 336);
  v143 = *(v0 + 424);
  v41 = *(v0 + 320);
  v40 = *(v0 + 328);
  v42 = (*(v2 + 32))(*(v0 + 216), v3, v1);
  MEMORY[0x23188BC90](v42);
  sub_22B35D89C();
  v43 = *(v38 + 8);
  *(v0 + 448) = v43;
  *(v0 + 456) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v37, v133);
  sub_22B35D89C();
  sub_22B35D784(&qword_28140B490, MEMORY[0x277CC9578]);
  v44 = sub_22B36074C();
  v45 = *(v40 + 8);
  v45(v138, v41);
  v46 = (v45)(v39, v41);
  v134 = v45;
  if ((v44 & 1) == 0)
  {
    v51 = *(v0 + 416);
    v139 = *(v0 + 424);
    v52 = *(v0 + 384);
    v54 = *(v0 + 336);
    v53 = *(v0 + 344);
    v55 = *(v0 + 320);
    v56 = *(v0 + 216);
    v126 = *(v0 + 464);
    MEMORY[0x23188BC90](v46);
    sub_22B35D86C();
    v43(v51, v52);
    sub_22B35D86C();
    LOBYTE(v56) = sub_22B36074C();
    v134(v54, v55);
    v134(v53, v55);
    if (v56 & 1) == 0 || (v126)
    {
      goto LABEL_16;
    }

LABEL_12:
    v130 = v43;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 208);
    v60 = *(v0 + 216);
    v63 = *(v0 + 192);
    v62 = *(v0 + 200);
    v64 = *(v0 + 184);
    v65 = __swift_project_value_buffer(v58, qword_28140BD10);
    swift_beginAccess();
    (*(v59 + 16))(v57, v65, v58);
    v66 = *(v63 + 16);
    v66(v61, v60, v64);
    v66(v62, v60, v64);
    v67 = sub_22B36050C();
    v68 = sub_22B360D2C();
    v69 = os_log_type_enabled(v67, v68);
    v140 = *(v0 + 424);
    if (v69)
    {
      v70 = *(v0 + 416);
      v113 = v68;
      v71 = *(v0 + 384);
      v72 = *(v0 + 344);
      v73 = *(v0 + 320);
      v115 = *(v0 + 232);
      v116 = *(v0 + 224);
      loga = *(v0 + 248);
      v74 = *(v0 + 208);
      v110 = *(v0 + 200);
      v127 = *(v0 + 192);
      v120 = *(v0 + 216);
      v123 = *(v0 + 184);
      v109 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v149 = v112;
      *v109 = 136315394;
      v75 = v74;
      MEMORY[0x23188BC90]();
      sub_22B35D89C();
      v130(v70, v71);
      sub_22B35D784(&qword_28140B488, MEMORY[0x277CC9578]);
      v76 = sub_22B36131C();
      v78 = v77;
      v134(v72, v73);
      v108 = *(v127 + 8);
      v108(v75, v123);
      v79 = sub_22B1A7B20(v76, v78, &v149);

      *(v109 + 4) = v79;
      *(v109 + 12) = 2080;
      MEMORY[0x23188BC90](v80);
      sub_22B35D86C();
      v130(v70, v71);
      v81 = sub_22B36131C();
      v83 = v82;
      v134(v72, v73);
      v108(v110, v123);
      v84 = sub_22B1A7B20(v81, v83, &v149);

      *(v109 + 14) = v84;
      _os_log_impl(&dword_22B116000, v67, v113, "Guidance did not span over time specified. fetched interval: %s end: %s", v109, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v112, -1, -1);
      MEMORY[0x23188F650](v109, -1, -1);

      (*(v115 + 8))(loga, v116);
      v108(v120, v123);
      v85 = v140;
      v86 = v71;
    }

    else
    {
      v144 = *(v0 + 384);
      v88 = *(v0 + 248);
      v89 = *(v0 + 224);
      v90 = *(v0 + 232);
      v91 = *(v0 + 208);
      v135 = *(v0 + 216);
      v92 = *(v0 + 192);
      v93 = *(v0 + 200);
      v94 = *(v0 + 184);

      v95 = *(v92 + 8);
      v95(v93, v94);
      v95(v91, v94);
      (*(v90 + 8))(v88, v89);
      v95(v135, v94);
      v85 = v140;
      v86 = v144;
    }

    v130(v85, v86);
    goto LABEL_21;
  }

  if (*(v0 + 464) != 1)
  {
    goto LABEL_12;
  }

LABEL_16:
  v87 = *(v0 + 432);

  return MEMORY[0x2822009F8](sub_22B35A12C, v87, 0);
}

uint64_t sub_22B35A12C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 168);
  *(v0 + 466) = sub_22B31FA54(*(v0 + 216), *(v0 + 424), *(v0 + 136), *(v0 + 144)) & 1;

  return MEMORY[0x2822009F8](sub_22B35A1A8, v2, 0);
}

uint64_t sub_22B35A1A8()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 424);
  v4 = *(v0 + 384);
  (*(*(v0 + 192) + 8))(*(v0 + 216), *(v0 + 184));
  v2(v3, v4);
  v25 = *(v0 + 466);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 376);
  v10 = *(v0 + 344);
  v11 = *(v0 + 352);
  v12 = *(v0 + 336);
  v13 = *(v0 + 312);
  v14 = *(v0 + 288);
  v17 = *(v0 + 280);
  v18 = *(v0 + 256);
  v19 = *(v0 + 248);
  v20 = *(v0 + 240);
  v21 = *(v0 + 216);
  v22 = *(v0 + 208);
  v23 = *(v0 + 200);
  v24 = *(v0 + 176);

  v15 = *(v0 + 8);

  return v15(v25);
}

uint64_t sub_22B35A328()
{
  v0 = type metadata accessor for HistoricalGuidanceDataManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_22B35A368();
  qword_28140BC40 = v3;
  return result;
}

uint64_t sub_22B35A368()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_22B35E0BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B35DF9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v16 = [objc_opt_self() ephemeralSessionConfiguration];
  v17 = [objc_opt_self() sessionWithConfiguration_];

  *(v1 + 112) = v17;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9830], v11);
  sub_22B35DFAC();
  (*(v12 + 8))(v15, v11);
  sub_22B35E08C();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    swift_beginAccess();
    sub_22B35E01C();
    swift_endAccess();
    return v1;
  }

  return result;
}

uint64_t sub_22B35A61C()
{
  v1 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
  v2 = sub_22B35E04C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for HistoricalGuidanceDataManager()
{
  result = qword_281408848;
  if (!qword_281408848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B35A6F0()
{
  result = sub_22B35E04C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B35A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a4;
  v5[25] = v4;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v6 = sub_22B35E37C();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v8 = *(v7 + 64) + 15;
  v5[28] = swift_task_alloc();
  v9 = sub_22B35E21C();
  v5[29] = v9;
  v10 = *(v9 - 8);
  v5[30] = v10;
  v11 = *(v10 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v12 = sub_22B35DE9C();
  v5[35] = v12;
  v13 = *(v12 - 8);
  v5[36] = v13;
  v14 = *(v13 + 64) + 15;
  v5[37] = swift_task_alloc();
  v15 = sub_22B35D8BC();
  v5[38] = v15;
  v16 = *(v15 - 8);
  v5[39] = v16;
  v17 = *(v16 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v18 = sub_22B36052C();
  v5[42] = v18;
  v19 = *(v18 - 8);
  v5[43] = v19;
  v20 = *(v19 + 64) + 15;
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B35AA0C, v4, 0);
}

uint64_t sub_22B35AA0C()
{
  v59 = v0;
  sub_22B35EEBC();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[41];
  v56 = v0[40];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[23];
  v8 = v0[24];
  v9 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[46] = v9;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v0[47] = v10;
  v0[48] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v9, v2);
  v11 = *(v5 + 16);
  v11(v4, v8, v6);
  v11(v56, v8, v6);

  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();

  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[42];
  v15 = v0[43];
  v17 = v0[40];
  v18 = v0[41];
  v55 = v17;
  v57 = v0[45];
  v19 = v0[38];
  v20 = v0[39];
  if (v14)
  {
    log = v12;
    v53 = v0[43];
    v21 = v0[37];
    v54 = v0[36];
    v22 = v0[35];
    v51 = v13;
    v24 = v0[22];
    v23 = v0[23];
    v48 = v0[38];
    v25 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v58 = v50;
    *v25 = 136381187;
    *(v25 + 4) = sub_22B1A7B20(v24, v23, &v58);
    *(v25 + 12) = 2080;
    sub_22B35D89C();
    sub_22B35D784(&qword_28140B488, MEMORY[0x277CC9578]);
    v26 = sub_22B36131C();
    v49 = v16;
    v28 = v27;
    v47 = *(v54 + 8);
    v47(v21, v22);
    v29 = *(v20 + 8);
    v29(v18, v48);
    v30 = sub_22B1A7B20(v26, v28, &v58);

    *(v25 + 14) = v30;
    *(v25 + 22) = 2080;
    sub_22B35D86C();
    v31 = sub_22B36131C();
    v33 = v32;
    v47(v21, v22);
    v29(v55, v48);
    v34 = sub_22B1A7B20(v31, v33, &v58);

    *(v25 + 24) = v34;
    _os_log_impl(&dword_22B116000, log, v51, "Fetching historical guidance from server for %{private}s\ninterval: %s - %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v50, -1, -1);
    MEMORY[0x23188F650](v25, -1, -1);

    v35 = *(v53 + 8);
    v35(v57, v49);
  }

  else
  {

    v36 = *(v20 + 8);
    v36(v55, v19);
    v36(v18, v19);
    v35 = *(v15 + 8);
    v35(v57, v16);
  }

  v0[49] = v35;
  v37 = *(v0[25] + 112);
  v0[50] = v37;
  v38 = *(MEMORY[0x277D17E90] + 4);
  v39 = v37;
  v40 = swift_task_alloc();
  v0[51] = v40;
  *v40 = v0;
  v40[1] = sub_22B35AE80;
  v41 = v0[33];
  v42 = v0[28];
  v43 = v0[23];
  v44 = v0[24];
  v45 = v0[22];

  return MEMORY[0x2821720A8](v42, v45, v43, v44, v39, v41);
}

uint64_t sub_22B35AE80()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *(*v1 + 400);
  v5 = *v1;

  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_22B35B308;
  }

  else
  {
    v7 = sub_22B35AFC4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B35AFC4()
{
  v1 = *(v0[25] + 112);
  v0[52] = v1;
  v0[2] = v0;
  v0[3] = sub_22B35B0E0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B30F28C;
  v0[13] = &block_descriptor_33;
  v0[14] = v2;
  [v1 resetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B35B0E0()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B35B1D4, v1, 0);
}

uint64_t sub_22B35B1D4()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 168);

  (*(v2 + 32))(v4, v1, v3);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 296);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v16 = *(v0 + 224);
  (*(*(v0 + 216) + 56))(*(v0 + 168), 0, 1, *(v0 + 208));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22B35B308()
{
  v35 = *(v0 + 376);
  v37 = *(v0 + 384);
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 272);
  v5 = *(v0 + 256);
  v34 = *(v0 + 248);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v6 + 32);
  v8(v4, *(v0 + 264), v7);
  v8(v5, v4, v7);
  v35(v2, v1, v3);
  v9 = *(v6 + 16);
  v9(v34, v5, v7);
  v10 = sub_22B36050C();
  v11 = sub_22B360D1C();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v15 = *(v0 + 232);
  if (v12)
  {
    v38 = v11;
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v16 = 138412290;
    sub_22B35D784(&qword_2814091A0, MEMORY[0x277D17F08]);
    swift_allocError();
    v9(v17, v13, v15);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    v19 = *(v14 + 8);
    v19(v13, v15);
    *(v16 + 4) = v18;
    *v36 = v18;
    _os_log_impl(&dword_22B116000, v10, v38, "Error fetching historical guidance from server: %@", v16, 0xCu);
    sub_22B123284(v36, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v36, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  else
  {

    v19 = *(v14 + 8);
    v19(v13, v15);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 232);
  v22 = *(v0 + 344) + 8;
  (*(v0 + 392))(*(v0 + 352), *(v0 + 336));
  v19(v20, v21);
  v23 = *(v0 + 352);
  v24 = *(v0 + 360);
  v26 = *(v0 + 320);
  v25 = *(v0 + 328);
  v27 = *(v0 + 296);
  v29 = *(v0 + 264);
  v28 = *(v0 + 272);
  v31 = *(v0 + 248);
  v30 = *(v0 + 256);
  v39 = *(v0 + 224);
  (*(*(v0 + 216) + 56))(*(v0 + 168), 1, 1, *(v0 + 208));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22B35B648(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_22B36052C();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB190, &unk_22B368200) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v9 = sub_22B35DA4C();
  v3[20] = v9;
  v10 = *(v9 - 8);
  v3[21] = v10;
  v11 = *(v10 + 64) + 15;
  v3[22] = swift_task_alloc();
  v12 = sub_22B35E04C();
  v3[23] = v12;
  v13 = *(v12 - 8);
  v3[24] = v13;
  v14 = *(v13 + 64) + 15;
  v3[25] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v16 = sub_22B35DE9C();
  v3[28] = v16;
  v17 = *(v16 - 8);
  v3[29] = v17;
  v18 = *(v17 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B35B904, v2, 0);
}

uint64_t sub_22B35B904()
{
  v53 = v0;
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v46 = v0[21];
  v47 = v0[27];
  v48 = v0[20];
  v50 = v0[28];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[13];
  v9 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
  swift_beginAccess();
  (*(v2 + 16))(v3, v8 + v9, v5);
  (*(v2 + 56))(v7, 1, 1, v5);
  v10 = sub_22B35E0BC();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_22B35DA3C();
  sub_22B35DFDC();
  (*(v46 + 8))(v4, v48);
  (*(v2 + 8))(v3, v5);
  v11 = *(v1 + 48);
  v0[34] = v11;
  v0[35] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v47, 1, v50) == 1)
  {
    sub_22B123284(v0[27], &qword_27D8BA340, &qword_22B363FB0);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];
    v15 = __swift_project_value_buffer(v14, qword_28140BD10);
    swift_beginAccess();
    (*(v13 + 16))(v12, v15, v14);
    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[14];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v52 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B36F3B0, &v52);
      _os_log_impl(&dword_22B116000, v16, v17, "%s: unable to create oldestFetchDate", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    goto LABEL_14;
  }

  v24 = v0[33];
  v25 = v0[28];
  v26 = v0[29];
  v27 = v0[27];
  v28 = v0[11];
  v29 = *(v26 + 32);
  v0[36] = v29;
  v0[37] = (v26 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v29(v24, v27, v25);
  v30 = *(v28 + 16);
  v0[38] = v30;
  if (!v30)
  {
    (*(v0[29] + 8))(v0[33], v0[28]);
LABEL_14:
    v35 = v0[32];
    v34 = v0[33];
    v37 = v0[30];
    v36 = v0[31];
    v39 = v0[26];
    v38 = v0[27];
    v40 = v0[25];
    v41 = v0[22];
    v43 = v0[18];
    v42 = v0[19];
    v49 = v0[17];
    v51 = v0[16];

    v44 = v0[1];

    return v44();
  }

  v31 = v0[11];
  v0[39] = 0;
  v0[40] = *(v31 + 32);
  v0[41] = *(v31 + 40);
  v32 = qword_281408750;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_28140BC30;
  v0[42] = qword_28140BC30;

  return MEMORY[0x2822009F8](sub_22B35BE20, v33, 0);
}

uint64_t sub_22B35BE20()
{
  v1 = v0[42];
  v2 = v0[13];
  sub_22B32128C(v0[40], v0[41], v0[26]);

  return MEMORY[0x2822009F8](sub_22B35BE94, v2, 0);
}

uint64_t sub_22B35BE94()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  if (v2(v4, 1, v3) == 1)
  {
    v5 = *(v0 + 256);
    sub_22B35DD1C();
    if (v2(v4, 1, v3) != 1)
    {
      sub_22B123284(*(v0 + 208), &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    v6 = *(v0 + 296);
    (*(v0 + 288))(*(v0 + 256), v4, v3);
  }

  v8 = *(v0 + 288);
  v7 = *(v0 + 296);
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  if (sub_22B35DDEC())
  {
    v15 = v9;
  }

  else
  {
    v15 = v10;
  }

  (*(v14 + 16))(v12, v15, v13);
  v8(v11, v12, v13);
  v16 = swift_task_alloc();
  *(v0 + 344) = v16;
  *v16 = v0;
  v16[1] = sub_22B35C008;
  v18 = *(v0 + 320);
  v17 = *(v0 + 328);
  v19 = *(v0 + 248);
  v20 = *(v0 + 96);
  v21 = *(v0 + 104);

  return sub_22B35C4E4(v18, v17, v20, v19);
}

uint64_t sub_22B35C008()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B35C118, v2, 0);
}

uint64_t sub_22B35C118()
{
  v49 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[41];
  if (v8)
  {
    v10 = v0[40];
    v44 = v0[31];
    v46 = v0[32];
    v11 = v0[28];
    v12 = v0[29];
    v13 = v0[15];
    v42 = v0[14];
    v43 = v0[17];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v48 = v15;
    *v14 = 136380675;
    v16 = sub_22B1A7B20(v10, v9, &v48);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_22B116000, v6, v7, "Populated cache for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    (*(v13 + 8))(v43, v42);
    v17 = *(v12 + 8);
    v17(v44, v11);
    v17(v46, v11);
  }

  else
  {
    v19 = v0[31];
    v18 = v0[32];
    v20 = v0[28];
    v21 = v0[29];
    v22 = v0[17];
    v23 = v0[14];
    v24 = v0[15];

    (*(v24 + 8))(v22, v23);
    v17 = *(v21 + 8);
    v17(v19, v20);
    v17(v18, v20);
  }

  v25 = v0[39] + 1;
  if (v25 == v0[38])
  {
    v26 = v0[29] + 8;
    v17(v0[33], v0[28]);
    v28 = v0[32];
    v27 = v0[33];
    v30 = v0[30];
    v29 = v0[31];
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    v34 = v0[22];
    v36 = v0[18];
    v35 = v0[19];
    v45 = v0[17];
    v47 = v0[16];

    v37 = v0[1];

    return v37();
  }

  else
  {
    v0[39] = v25;
    v39 = v0[11] + 16 * v25;
    v0[40] = *(v39 + 32);
    v0[41] = *(v39 + 40);
    v40 = qword_281408750;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = qword_28140BC30;
    v0[42] = qword_28140BC30;

    return MEMORY[0x2822009F8](sub_22B35BE20, v41, 0);
  }
}

uint64_t sub_22B35C4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_22B35E04C();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v9 = sub_22B35E02C();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();
  v12 = sub_22B36052C();
  v5[19] = v12;
  v13 = *(v12 - 8);
  v5[20] = v13;
  v14 = *(v13 + 64) + 15;
  v5[21] = swift_task_alloc();
  v15 = sub_22B35DE9C();
  v5[22] = v15;
  v16 = *(v15 - 8);
  v5[23] = v16;
  v17 = *(v16 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B35C6D8, v4, 0);
}

uint64_t sub_22B35C6D8()
{
  v39 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  (*(*(v0 + 184) + 16))(*(v0 + 208), *(v0 + 88), *(v0 + 176));
  *(v0 + 216) = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
  swift_beginAccess();
  sub_22B35D784(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36074C())
  {
    (*(*(v0 + 184) + 8))(*(v0 + 208), *(v0 + 176));
LABEL_12:
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v33 = *(v0 + 168);
    v34 = *(v0 + 144);
    v35 = *(v0 + 120);

    v36 = *(v0 + 8);

    return v36();
  }

  *(v0 + 272) = *MEMORY[0x277CC9998];
  *(v0 + 276) = *MEMORY[0x277CC9968];
  if (sub_22B360BFC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    v6 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 208);
    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    v15 = *(v0 + 152);
    if (v9)
    {
      v37 = *(v0 + 208);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_22B1A7B20(0xD00000000000002ELL, 0x800000022B36F3E0, &v38);
      *(v16 + 12) = 2048;
      *(v16 + 14) = 136;
      _os_log_impl(&dword_22B116000, v7, v8, "[HistoricalGuidanceDataManager] Task is cancelled at %s:%ld", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);

      (*(v13 + 8))(v14, v15);
      (*(v12 + 8))(v37, v11);
    }

    else
    {

      (*(v13 + 8))(v14, v15);
      (*(v12 + 8))(v10, v11);
    }

    goto LABEL_12;
  }

  v18 = *(v0 + 272);
  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v21 = *(v0 + 128);
  v22 = *(v20 + 104);
  *(v0 + 224) = v22;
  *(v0 + 232) = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v19, v18, v21);
  v23 = swift_task_alloc();
  *(v0 + 240) = v23;
  *v23 = v0;
  v23[1] = sub_22B35CAD8;
  v24 = *(v0 + 208);
  v25 = *(v0 + 144);
  v26 = *(v0 + 96);
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);

  return sub_22B358910(v28, v27, v24, v25, 0);
}

uint64_t sub_22B35CAD8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 96);
  v10 = *v1;
  *(v2 + 280) = a1;

  v8 = *(v5 + 8);
  *(v2 + 248) = v8;
  *(v2 + 256) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);

  return MEMORY[0x2822009F8](sub_22B35CC60, v7, 0);
}

uint64_t sub_22B35CC60()
{
  v62 = v0;
  if (*(v0 + 280))
  {
    v55 = *(v0 + 248);
    v56 = *(v0 + 256);
    v1 = *(v0 + 232);
    v2 = *(v0 + 216);
    v3 = *(v0 + 192);
    v57 = *(v0 + 200);
    v54 = *(v0 + 184);
    v4 = *(v0 + 176);
    v58 = v4;
    v59 = *(v0 + 208);
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v52 = v9;
    v53 = *(v0 + 128);
    (*(v0 + 224))(v5, *(v0 + 272));
    v10 = *(v7 + 16);
    v10(v6, v9 + v2, v8);
    v11 = v10;
    sub_22B35F60C();
    v12 = *(v7 + 8);
    v12(v6, v8);
    v55(v5, v53);
    v11(v6, v52 + v2, v8);
    sub_22B35F57C();
    v12(v6, v8);
    v13 = *(v54 + 8);
    v13(v3, v58);
    v13(v59, v58);
    v14 = *(v0 + 80);
    (*(*(v0 + 184) + 32))(*(v0 + 208), *(v0 + 200), *(v0 + 176));
    sub_22B35D784(&qword_28140B490, MEMORY[0x277CC9578]);
    if (sub_22B36074C())
    {
      v15 = *(v0 + 184) + 8;
      v13(*(v0 + 208), *(v0 + 176));
LABEL_15:
      v46 = *(v0 + 200);
      v45 = *(v0 + 208);
      v47 = *(v0 + 192);
      v48 = *(v0 + 168);
      v49 = *(v0 + 144);
      v50 = *(v0 + 120);

      v51 = *(v0 + 8);

      return v51();
    }

    if (sub_22B360BFC())
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = *(v0 + 152);
      v28 = __swift_project_value_buffer(v27, qword_28140BD10);
      swift_beginAccess();
      (*(v26 + 16))(v25, v28, v27);
      v29 = sub_22B36050C();
      v30 = sub_22B360D1C();
      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 208);
      v33 = *(v0 + 176);
      v34 = *(v0 + 184);
      v35 = *(v0 + 160);
      v36 = *(v0 + 168);
      v37 = *(v0 + 152);
      if (v31)
      {
        v60 = *(v0 + 208);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v61 = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_22B1A7B20(0xD00000000000002ELL, 0x800000022B36F3E0, &v61);
        *(v38 + 12) = 2048;
        *(v38 + 14) = 136;
        _os_log_impl(&dword_22B116000, v29, v30, "[HistoricalGuidanceDataManager] Task is cancelled at %s:%ld", v38, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x23188F650](v39, -1, -1);
        MEMORY[0x23188F650](v38, -1, -1);

        (*(v35 + 8))(v36, v37);
        (*(v34 + 8))(v60, v33);
      }

      else
      {

        (*(v35 + 8))(v36, v37);
        (*(v34 + 8))(v32, v33);
      }

      goto LABEL_15;
    }

    v40 = *(v0 + 272);
    v42 = *(v0 + 136);
    v41 = *(v0 + 144);
    v43 = *(v0 + 128);
    v44 = *(v42 + 104);
    *(v0 + 224) = v44;
    *(v0 + 232) = (v42 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v44(v41, v40, v43);
    v17 = swift_task_alloc();
    *(v0 + 240) = v17;
    *v17 = v0;
    v18 = sub_22B35CAD8;
  }

  else
  {
    v16 = *(v0 + 232);
    (*(v0 + 224))(*(v0 + 144), *(v0 + 276), *(v0 + 128));
    v17 = swift_task_alloc();
    *(v0 + 264) = v17;
    *v17 = v0;
    v18 = sub_22B35D198;
  }

  v17[1] = v18;
  v19 = *(v0 + 208);
  v20 = *(v0 + 144);
  v21 = *(v0 + 96);
  v23 = *(v0 + 64);
  v22 = *(v0 + 72);

  return sub_22B358910(v23, v22, v19, v20, 0);
}

uint64_t sub_22B35D198()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 96);
  v8 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_22B35D314, v6, 0);
}

uint64_t sub_22B35D314()
{
  v54 = v0;
  v50 = *(v0 + 248);
  v51 = *(v0 + 256);
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v49 = *(v0 + 176);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 96);
  (*(v0 + 224))(v6, *(v0 + 276), v7);
  (*(v9 + 16))(v8, v11 + v3, v10);
  sub_22B35F60C();
  (*(v9 + 8))(v8, v10);
  v50(v6, v7);
  v12 = *(v5 + 8);
  v12(v2, v49);
  v13 = *(v0 + 80);
  (*(*(v0 + 184) + 32))(*(v0 + 208), *(v0 + 200), *(v0 + 176));
  sub_22B35D784(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36074C())
  {
    v14 = *(v0 + 184) + 8;
    v12(*(v0 + 208), *(v0 + 176));
LABEL_12:
    v43 = *(v0 + 200);
    v42 = *(v0 + 208);
    v44 = *(v0 + 192);
    v45 = *(v0 + 168);
    v46 = *(v0 + 144);
    v47 = *(v0 + 120);

    v48 = *(v0 + 8);

    return v48();
  }

  if (sub_22B360BFC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = *(v0 + 152);
    v18 = __swift_project_value_buffer(v17, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v15, v18, v17);
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 208);
    v23 = *(v0 + 176);
    v24 = *(v0 + 184);
    v25 = *(v0 + 160);
    v26 = *(v0 + 168);
    v27 = *(v0 + 152);
    if (v21)
    {
      v52 = *(v0 + 208);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_22B1A7B20(0xD00000000000002ELL, 0x800000022B36F3E0, &v53);
      *(v28 + 12) = 2048;
      *(v28 + 14) = 136;
      _os_log_impl(&dword_22B116000, v19, v20, "[HistoricalGuidanceDataManager] Task is cancelled at %s:%ld", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23188F650](v29, -1, -1);
      MEMORY[0x23188F650](v28, -1, -1);

      (*(v25 + 8))(v26, v27);
      (*(v24 + 8))(v52, v23);
    }

    else
    {

      (*(v25 + 8))(v26, v27);
      (*(v24 + 8))(v22, v23);
    }

    goto LABEL_12;
  }

  v30 = *(v0 + 272);
  v32 = *(v0 + 136);
  v31 = *(v0 + 144);
  v33 = *(v0 + 128);
  v34 = *(v32 + 104);
  *(v0 + 224) = v34;
  *(v0 + 232) = (v32 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v34(v31, v30, v33);
  v35 = swift_task_alloc();
  *(v0 + 240) = v35;
  *v35 = v0;
  v35[1] = sub_22B35CAD8;
  v36 = *(v0 + 208);
  v37 = *(v0 + 144);
  v38 = *(v0 + 96);
  v40 = *(v0 + 64);
  v39 = *(v0 + 72);

  return sub_22B358910(v40, v39, v36, v37, 0);
}

uint64_t sub_22B35D784(unint64_t *a1, void (*a2)(uint64_t))
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