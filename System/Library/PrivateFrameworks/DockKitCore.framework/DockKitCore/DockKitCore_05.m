uint64_t sub_22458CAE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9330);
  v37 = a2;
  result = sub_224628498();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      v38 = *(v25 + 16);
      if ((v37 & 1) == 0)
      {
      }

      sub_224628778();
      sub_224627D78();
      result = sub_2246287C8();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v26;
      *(v17 + 8) = v27;
      *(v17 + 16) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

uint64_t sub_22458CDB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9320);
  v33 = a2;
  result = sub_224628498();
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
        sub_224535258(v24, v34);
      }

      else
      {
        sub_2245097F8(v24, v34);
      }

      sub_224628778();
      sub_224627D78();
      result = sub_2246287C8();
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
      result = sub_224535258(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_22458D068(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9308);
  result = sub_224628498();
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
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      sub_224628778();
      MEMORY[0x22AA51BF0](v20);
      result = sub_2246287C8();
      v21 = -1 << *(v7 + 32);
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
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

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22458D2F8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_224627188();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9318);
  v55 = a2;
  result = sub_224628498();
  v11 = result;
  if (*(v9 + 16))
  {
    v65 = v8;
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
    v51 = v2;
    v52 = (v6 + 16);
    v53 = v9;
    v54 = v6;
    v56 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v25 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v28 = v25 | (v12 << 6);
      v29 = *(v9 + 48);
      v64 = *(v54 + 72);
      v30 = v29 + v64 * v28;
      if (v55)
      {
        (*v56)(v65, v30, v5);
        v31 = (*(v9 + 56) + 56 * v28);
        v32 = *v31;
        v33 = v31[1];
        v62 = v31[2];
        v63 = v33;
        v34 = v31[3];
        v60 = v31[4];
        v61 = v34;
        v36 = v31[5];
        v35 = v31[6];
        v58 = v32;
        v59 = v36;
        v57 = v35;
      }

      else
      {
        (*v52)(v65, v30, v5);
        v37 = *(v9 + 56) + 56 * v28;
        v38 = *v37;
        v39 = *(v37 + 8);
        v62 = *(v37 + 16);
        v63 = v39;
        v40 = *(v37 + 32);
        v61 = *(v37 + 24);
        v41 = *(v37 + 48);
        v59 = *(v37 + 40);
        v58 = v38;
        v60 = v40;

        v57 = v41;
      }

      sub_2245817E0(&qword_27D0C8C60, MEMORY[0x277CC95F0]);
      result = sub_224627C78();
      v42 = -1 << *(v11 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v18 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v18 + 8 * v44);
          if (v48 != -1)
          {
            v19 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v43) & ~*(v18 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v56)(*(v11 + 48) + v64 * v19, v65, v5);
      v20 = (*(v11 + 56) + 56 * v19);
      v21 = v62;
      v22 = v63;
      *v20 = v58;
      v20[1] = v22;
      v20[2] = v21;
      v23 = v60;
      v20[3] = v61;
      v20[4] = v23;
      v24 = v57;
      v20[5] = v59;
      v20[6] = v24;
      ++*(v11 + 16);
      v9 = v53;
    }

    v26 = v12;
    while (1)
    {
      v12 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v27 = v13[v12];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v16 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v51;
      goto LABEL_34;
    }

    v49 = 1 << *(v9 + 32);
    v3 = v51;
    if (v49 >= 64)
    {
      bzero(v13, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v49;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22458D748(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92F8);
  v33 = a2;
  result = sub_224628498();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_2245122DC(v34);
      }

      sub_224628778();
      sub_224627D78();
      result = sub_2246287C8();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22458DA18(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_224628498();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
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
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_224628778();
      sub_224627D78();
      result = sub_2246287C8();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
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

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_22458DCB4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_224628498();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
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
      v21 = *(*(v6 + 48) + 4 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = MEMORY[0x22AA51BD0](*(v8 + 40), v21, 4);
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
      *(*(v8 + 48) + 4 * v16) = v21;
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

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
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

uint64_t sub_22458DF20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2246282B8() + 1) & ~v5;
    do
    {
      sub_224628778();

      sub_224627D78();
      v10 = sub_2246287C8();

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
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
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

uint64_t sub_22458E0F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2246282B8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x22AA51BD0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

void sub_22458E264(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2245096C8(a2, a3);
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
      sub_22458DA18(v16, a4 & 1, &qword_27D0C9CB8);
      v11 = sub_2245096C8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2246286D8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22458F8BC(&qword_27D0C9CB8);
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

unint64_t sub_22458E400(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_2245096C8(a3, a4);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 < v20 || (a5 & 1) != 0)
    {
      sub_22458CAE0(v20, a5 & 1);
      result = sub_2245096C8(a3, a4);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_2246286D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_22458EFD0();
      result = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * result;
    *v26 = a6;
    *(v26 + 8) = a1;
    *(v26 + 16) = a2 & 1;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  v27 = (v25[6] + 16 * result);
  *v27 = a3;
  v27[1] = a4;
  v28 = v25[7] + 24 * result;
  *v28 = a6;
  *(v28 + 8) = a1;
  *(v28 + 16) = a2 & 1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v30;
}

_OWORD *sub_22458E5A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2245096C8(a2, a3);
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
      sub_22458F158();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22458CDB0(v16, a4 & 1);
    v11 = sub_2245096C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2246286D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_224535258(a1, v22);
  }

  else
  {
    sub_22458ED40(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_22458E6F0(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22452BA50(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22458D068(v16, a4 & 1);
      result = sub_22452BA50(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2246286D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22458F2FC();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_22458E850(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_224627188();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_22452BABC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_22458F460();
      goto LABEL_7;
    }

    sub_22458D2F8(v17, a3 & 1);
    v23 = sub_22452BABC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22458EDAC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2246286D8();
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
  v21 = v20[7] + 56 * v14;

  return sub_2245936F8(a1, v21);
}

uint64_t sub_22458EA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2245096C8(a3, a4);
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
      sub_22458D748(v18, a5 & 1);
      v13 = sub_2245096C8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_2246286D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22458F724();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    *v24 = a1;
    v24[1] = a2;

    return sub_224512308(v25);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v23[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v23[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v23[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v30;
}

unint64_t sub_22458EBD0(uint64_t a1, unsigned int a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_22452B99C(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_22458DCB4(v16, a3 & 1, a4);
      result = sub_22452B99C(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2246286D8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22458FA18(a4);
      result = v19;
    }
  }

  v21 = *v6;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

_OWORD *sub_22458ED40(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_224535258(a4, (a5[7] + 32 * a1));
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

uint64_t sub_22458EDAC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_224627188();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 56 * a1;
  *(v11 + 48) = *(a3 + 48);
  v12 = *(a3 + 32);
  *(v11 + 16) = *(a3 + 16);
  *(v11 + 32) = v12;
  *v11 = *a3;
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

void *sub_22458EE80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9300);
  v2 = *v0;
  v3 = sub_224628488();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
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

void *sub_22458EFD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9330);
  v2 = *v0;
  v3 = sub_224628488();
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
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
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

void *sub_22458F158()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9320);
  v2 = *v0;
  v3 = sub_224628488();
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
        sub_2245097F8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_224535258(v25, (*(v4 + 56) + v22));
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

void *sub_22458F2FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9308);
  v2 = *v0;
  v3 = sub_224628488();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

char *sub_22458F460()
{
  v1 = v0;
  v2 = sub_224627188();
  v3 = *(v2 - 8);
  v43 = v2;
  v44 = v3;
  MEMORY[0x28223BE20](v2);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9318);
  v5 = *v0;
  v6 = sub_224628488();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v36 = v1;
    v37 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v45 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v38 = v44 + 32;
    v39 = v44 + 16;
    v40 = v16;
    v41 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v49 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v43;
        v21 = v44;
        v23 = *(v44 + 72) * v20;
        v24 = v42;
        (*(v44 + 16))(v42, *(v5 + 48) + v23, v43);
        v25 = *(v5 + 56);
        v26 = 56 * v20;
        v27 = v25 + 56 * v20;
        v28 = *v27;
        v48 = *(v27 + 8);
        v29 = *(v27 + 24);
        v30 = *(v27 + 32);
        v31 = *(v27 + 48);
        v46 = *(v27 + 40);
        v47 = v29;
        v32 = v45;
        (*(v21 + 32))(*(v45 + 48) + v23, v24, v22);
        v33 = *(v32 + 56) + v26;
        v5 = v41;
        *v33 = v28;
        *(v33 + 8) = v48;
        v34 = v46;
        *(v33 + 24) = v47;
        *(v33 + 32) = v30;
        *(v33 + 40) = v34;
        *(v33 + 48) = v31;
        v35 = v28;

        v16 = v40;
        v15 = v49;
      }

      while (v49);
    }

    v18 = v11;
    v7 = v45;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v36;
        goto LABEL_18;
      }

      v19 = *(v37 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v49 = (v19 - 1) & v19;
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

void *sub_22458F724()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C92F8);
  v2 = *v0;
  v3 = sub_224628488();
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

        result = sub_2245122DC(v22);
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

id sub_22458F8BC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_224628488();
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

        result = v21;
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

void *sub_22458FA18(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_224628488();
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
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 4 * v18) = *(*(v3 + 48) + 4 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = swift_unknownObjectRetain();
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

void sub_22458FB64(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA51770](a1, a2, v7);
      sub_22450950C(0, &qword_27D0C99A8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22450950C(0, &qword_27D0C99A8);
    if (sub_2246282E8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2246282F8();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2246281D8();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2246281E8();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t _s11DockKitCore0aB11BoundingBoxV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 25) != *(a2 + 25))
  {
    return 0;
  }

  type metadata accessor for DockKitBoundingBox(0);

  return sub_224627158();
}

unint64_t sub_22458FE64()
{
  result = qword_27D0C98A8;
  if (!qword_27D0C98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C98A8);
  }

  return result;
}

uint64_t sub_22458FEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22458FF20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22458FF80()
{
  result = qword_27D0C98F8;
  if (!qword_27D0C98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C98F8);
  }

  return result;
}

unint64_t sub_22458FFD4()
{
  result = qword_27D0C9900;
  if (!qword_27D0C9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9900);
  }

  return result;
}

unint64_t sub_224590028()
{
  result = qword_27D0C9908;
  if (!qword_27D0C9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9908);
  }

  return result;
}

unint64_t sub_22459007C()
{
  result = qword_27D0C9910;
  if (!qword_27D0C9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9910);
  }

  return result;
}

unint64_t sub_2245900D0()
{
  result = qword_27D0C9918;
  if (!qword_27D0C9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9918);
  }

  return result;
}

unint64_t sub_224590124()
{
  result = qword_27D0C9920;
  if (!qword_27D0C9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9920);
  }

  return result;
}

unint64_t sub_224590178()
{
  result = qword_27D0C9928;
  if (!qword_27D0C9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9928);
  }

  return result;
}

unint64_t sub_2245901CC()
{
  result = qword_27D0C9930;
  if (!qword_27D0C9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9930);
  }

  return result;
}

uint64_t sub_224590220(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_224628688();

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

uint64_t sub_224590334(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1868983913 && a2 == 0xE400000000000000;
  if (v3 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746174536B636F64 && a2 == 0xE900000000000065 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xED00006574617453 || (sub_224628688() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (sub_224628688() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_224590500(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_224628688() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_224628688() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79636E65696C6173 && a2 == 0xEC0000006B6E6152 || (sub_224628688() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xEC0000006B636F4CLL || (sub_224628688() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 6;
  }

  else
  {
    v5 = sub_224628688();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_22459072C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465726961506F6ELL && a2 == 0xEE00656369766544;
  if (v4 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000224638C70 == a2 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000224638C90 == a2 || (sub_224628688() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7369676552746F6ELL && a2 == 0xED00006465726574 || (sub_224628688() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000224638CB0 == a2 || (sub_224628688() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000224638CD0 == a2 || (sub_224628688() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C706D49746F6ELL && a2 == 0xEE006465746E656DLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_224590994(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DockKitIDSMessage(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  if (a2 >> 60 != 15)
  {
    v39 = v4;
    sub_224626F68();
    swift_allocObject();
    sub_224626F58();
    sub_2245817E0(&qword_27D0C9CB0, type metadata accessor for DockKitIDSMessage);
    sub_224626F48();

    if (qword_27D0C8880 != -1)
    {
      swift_once();
    }

    v21 = sub_224627B78();
    v22 = __swift_project_value_buffer(v21, qword_27D0C97B0);
    sub_22458FEB8(v16, v14, type metadata accessor for DockKitIDSMessage);

    v23 = sub_224627B58();
    v24 = sub_224628038();

    if (os_log_type_enabled(v23, v24))
    {
      v37 = v24;
      v38 = v22;
      v25 = a3;
      v26 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40[0] = v36;
      *v26 = 136380931;
      v27 = v39;
      if (!a4)
      {
        __break(1u);
        return;
      }

      v35 = v25;
      *(v26 + 4) = sub_224509F28(v25, a4, v40);
      *(v26 + 12) = 2081;
      sub_22458FEB8(v14, v11, type metadata accessor for DockKitIDSMessage);
      v28 = sub_224627D28();
      v30 = v29;
      sub_22458FF20(v14, type metadata accessor for DockKitIDSMessage);
      v31 = sub_224509F28(v28, v30, v40);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_224507000, v23, v37, "Got IDS message from %{private}s: %{private}s", v26, 0x16u);
      v32 = v36;
      swift_arrayDestroy();
      MEMORY[0x22AA526D0](v32, -1, -1);
      v33 = v26;
      a3 = v35;
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    else
    {

      sub_22458FF20(v14, type metadata accessor for DockKitIDSMessage);
      v27 = v39;
    }

    (*((*MEMORY[0x277D85000] & v27->isa) + 0x78))(v16, a3, a4);
    sub_22458FF20(v16, type metadata accessor for DockKitIDSMessage);
    return;
  }

  if (qword_27D0C8880 != -1)
  {
    swift_once();
  }

  v17 = sub_224627B78();
  __swift_project_value_buffer(v17, qword_27D0C97B0);
  v39 = sub_224627B58();
  v18 = sub_224628048();
  if (os_log_type_enabled(v39, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_224507000, v39, v18, "Got incoming data message, but it is nil!", v19, 2u);
    MEMORY[0x22AA526D0](v19, -1, -1);
  }

  v20 = v39;
}

void sub_22459109C(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_27D0C8880 != -1)
  {
    swift_once();
  }

  v6 = sub_224627B78();
  __swift_project_value_buffer(v6, qword_27D0C97B0);

  v7 = a1;
  oslog = sub_224627B58();
  v8 = sub_224628048();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9CA8);
    v12 = sub_224627D28();
    v14 = sub_224509F28(v12, v13, &v16);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    if (a3)
    {
      *(v9 + 14) = sub_224509F28(a2, a3, &v16);
      _os_log_impl(&dword_224507000, oslog, v8, "Got message on service %s from %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA526D0](v10, -1, -1);
      MEMORY[0x22AA526D0](v9, -1, -1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2245912EC()
{
  result = qword_27D0C9998;
  if (!qword_27D0C9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9998);
  }

  return result;
}

unint64_t sub_224591340()
{
  result = qword_27D0C99B0;
  if (!qword_27D0C99B0)
  {
    sub_22450950C(255, &qword_27D0C99A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C99B0);
  }

  return result;
}

unint64_t sub_2245913A8()
{
  result = qword_27D0C99C8;
  if (!qword_27D0C99C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D0C9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C99C8);
  }

  return result;
}

uint64_t sub_224591424(uint64_t a1, uint64_t a2)
{
  v5 = sub_224627B98();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224627BC8();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_queue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224580D44;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_224627BA8();
  v17 = MEMORY[0x277D84F90];
  sub_2245817E0(&qword_27D0C9EF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A40);
  sub_224509674(&qword_27D0C9F00, &unk_27D0C9A40);
  sub_224628298();
  MEMORY[0x22AA51530](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_2245916F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9C98);
    v3 = sub_224628358();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_224535140(v6 + 40 * v4, v19);
      result = sub_224628328();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_224535140(*(v3 + 48) + 40 * i, v18);
        v11 = MEMORY[0x22AA517A0](v18, v19);
        result = sub_22453519C(v18);
        if (v11)
        {
          sub_22453519C(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_224591960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22458A1E8();
  *a1 = result;
  return result;
}

unint64_t sub_2245919F0()
{
  result = qword_27D0C9A58;
  if (!qword_27D0C9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9A58);
  }

  return result;
}

unint64_t sub_224591A48()
{
  result = qword_27D0C9A60;
  if (!qword_27D0C9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9A60);
  }

  return result;
}

unint64_t sub_224591AA0()
{
  result = qword_27D0C9A68;
  if (!qword_27D0C9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9A68);
  }

  return result;
}

unint64_t sub_224591AFC()
{
  result = qword_27D0C9A70;
  if (!qword_27D0C9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9A70);
  }

  return result;
}

unint64_t sub_224591B54()
{
  result = qword_27D0C9A78;
  if (!qword_27D0C9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9A78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DockKitIDSMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DockKitIDSMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_224591D20()
{
  sub_224627188();
  if (v0 <= 0x3F)
  {
    sub_22459202C(319, &unk_27D0C9A98);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224591E18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_224591E5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_224591EB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_224591EF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_224591F7C()
{
  sub_22459202C(319, &unk_27D0C9AB8);
  if (v0 <= 0x3F)
  {
    sub_224627188();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22459202C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_224628228();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2245923E4()
{
  result = sub_224627188();
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

uint64_t getEnumTagSinglePayload for DKIDSKeepAlive.DKIDSKeepAliveRecord(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DKIDSKeepAlive.DKIDSKeepAliveRecord(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2245929B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_224592A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224592B38()
{
  result = qword_27D0C9B38;
  if (!qword_27D0C9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B38);
  }

  return result;
}

unint64_t sub_224592B90()
{
  result = qword_27D0C9B40;
  if (!qword_27D0C9B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B40);
  }

  return result;
}

unint64_t sub_224592BE8()
{
  result = qword_27D0C9B48;
  if (!qword_27D0C9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B48);
  }

  return result;
}

unint64_t sub_224592C40()
{
  result = qword_27D0C9B50;
  if (!qword_27D0C9B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B50);
  }

  return result;
}

unint64_t sub_224592C98()
{
  result = qword_27D0C9B58;
  if (!qword_27D0C9B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B58);
  }

  return result;
}

unint64_t sub_224592CF0()
{
  result = qword_27D0C9B60;
  if (!qword_27D0C9B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B60);
  }

  return result;
}

unint64_t sub_224592D48()
{
  result = qword_27D0C9B68;
  if (!qword_27D0C9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B68);
  }

  return result;
}

unint64_t sub_224592DA0()
{
  result = qword_27D0C9B70;
  if (!qword_27D0C9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B70);
  }

  return result;
}

unint64_t sub_224592DF8()
{
  result = qword_27D0C9B78;
  if (!qword_27D0C9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B78);
  }

  return result;
}

unint64_t sub_224592E50()
{
  result = qword_27D0C9B80;
  if (!qword_27D0C9B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B80);
  }

  return result;
}

unint64_t sub_224592EA8()
{
  result = qword_27D0C9B88;
  if (!qword_27D0C9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B88);
  }

  return result;
}

unint64_t sub_224592F00()
{
  result = qword_27D0C9B90;
  if (!qword_27D0C9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B90);
  }

  return result;
}

unint64_t sub_224592F58()
{
  result = qword_27D0C9B98;
  if (!qword_27D0C9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9B98);
  }

  return result;
}

unint64_t sub_224592FB0()
{
  result = qword_27D0C9BA0;
  if (!qword_27D0C9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BA0);
  }

  return result;
}

unint64_t sub_224593008()
{
  result = qword_27D0C9BA8;
  if (!qword_27D0C9BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BA8);
  }

  return result;
}

unint64_t sub_224593060()
{
  result = qword_27D0C9BB0;
  if (!qword_27D0C9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BB0);
  }

  return result;
}

unint64_t sub_2245930B8()
{
  result = qword_27D0C9BB8;
  if (!qword_27D0C9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BB8);
  }

  return result;
}

unint64_t sub_224593110()
{
  result = qword_27D0C9BC0;
  if (!qword_27D0C9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BC0);
  }

  return result;
}

unint64_t sub_224593168()
{
  result = qword_27D0C9BC8;
  if (!qword_27D0C9BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BC8);
  }

  return result;
}

unint64_t sub_2245931C0()
{
  result = qword_27D0C9BD0;
  if (!qword_27D0C9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BD0);
  }

  return result;
}

unint64_t sub_224593218()
{
  result = qword_27D0C9BD8;
  if (!qword_27D0C9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BD8);
  }

  return result;
}

unint64_t sub_224593270()
{
  result = qword_27D0C9BE0;
  if (!qword_27D0C9BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BE0);
  }

  return result;
}

unint64_t sub_2245932C8()
{
  result = qword_27D0C9BE8;
  if (!qword_27D0C9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BE8);
  }

  return result;
}

unint64_t sub_224593320()
{
  result = qword_27D0C9BF0;
  if (!qword_27D0C9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BF0);
  }

  return result;
}

unint64_t sub_224593378()
{
  result = qword_27D0C9BF8;
  if (!qword_27D0C9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9BF8);
  }

  return result;
}

unint64_t sub_2245933D0()
{
  result = qword_27D0C9C00;
  if (!qword_27D0C9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C00);
  }

  return result;
}

unint64_t sub_224593428()
{
  result = qword_27D0C9C08;
  if (!qword_27D0C9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C08);
  }

  return result;
}

unint64_t sub_224593480()
{
  result = qword_27D0C9C10;
  if (!qword_27D0C9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C10);
  }

  return result;
}

unint64_t sub_2245934D8()
{
  result = qword_27D0C9C18;
  if (!qword_27D0C9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C18);
  }

  return result;
}

uint64_t sub_22459352C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22459359C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224593604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2245936AC(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_224593730()
{
  result = qword_27D0C9C30;
  if (!qword_27D0C9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C30);
  }

  return result;
}

unint64_t sub_224593784()
{
  result = qword_27D0C9C38;
  if (!qword_27D0C9C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C38);
  }

  return result;
}

unint64_t sub_2245937D8()
{
  result = qword_27D0C9C40;
  if (!qword_27D0C9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C40);
  }

  return result;
}

unint64_t sub_22459382C()
{
  result = qword_27D0C9C48;
  if (!qword_27D0C9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C48);
  }

  return result;
}

unint64_t sub_224593888()
{
  result = qword_27D0C9C60;
  if (!qword_27D0C9C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0C9A50);
    sub_2245817E0(&qword_27D0C9C68, type metadata accessor for DockKitBoundingBox);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C60);
  }

  return result;
}

unint64_t sub_224593944()
{
  result = qword_27D0C9C70;
  if (!qword_27D0C9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C70);
  }

  return result;
}

unint64_t sub_224593998()
{
  result = qword_27D0C9C80;
  if (!qword_27D0C9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9C80);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_224593A50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_224593AD0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_224593B14()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  v2 = v1;
  return v1;
}

void *sub_224593B44()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_sensorController);
  v2 = v1;
  return v1;
}

void sub_224593B74(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  v5 = *(*a1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore);
  sub_224628148();

  v6 = *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled);
  v7 = *(v3 + v4);
  sub_224628158();

  *a2 = v6;
}

void sub_224593BE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  v5 = *(*a2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore);
  sub_224628148();

  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled) = v2;
  v6 = *(v3 + v4);
  sub_224628158();
}

uint64_t sub_224593C6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore);
  sub_224628148();

  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled);
  v5 = *(v1 + v2);
  sub_224628158();

  return v4;
}

void sub_224593CD4(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  v5 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore);
  sub_224628148();

  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled) = a1;
  v6 = *(v2 + v4);
  sub_224628158();
}

void (*sub_224593D58(uint64_t a1))(uint64_t *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  *a1 = v1;
  *(a1 + 8) = v4;
  v5 = *(v1 + v4);
  sub_224628148();

  v6 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled;
  *(a1 + 16) = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled;
  v7 = *(v2 + v6);
  v8 = *(v2 + v4);
  sub_224628158();

  *(a1 + 24) = v7;
  return sub_224593DF0;
}

void sub_224593DF0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = *(*a1 + v2);
  sub_224628148();

  *(v3 + v1) = v4;
  v6 = *(v3 + v2);
  sub_224628158();
}

uint64_t sub_224593F10()
{
  v1 = OBJC_IVAR____TtC11DockKitCore13TrackingStand____lazy_storage___trackingSensor;
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand____lazy_storage___trackingSensor);
  if (v2 != 1)
  {
    v14 = v2;
    return v2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_sensorController);
  if (!v3)
  {
    v2 = 0;
    *(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand____lazy_storage___trackingSensor) = 0;
    return v2;
  }

  v4 = *(v3 + OBJC_IVAR____TtC11DockKitCore6System_components);
  v5 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(*(v4 + 56) + ((v10 << 9) | (8 * v11)));
      type metadata accessor for SensorTracker();
      if (swift_dynamicCastClass())
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    MEMORY[0x22AA51310](v12);
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_224627EF8();
    }

    sub_224627F08();
    v5 = v20;
  }

  while (v8);
  while (1)
  {
LABEL_8:
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_25:
      result = sub_224628478();
      if (!result)
      {
        goto LABEL_26;
      }

LABEL_19:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x22AA517F0](0, v5);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v16 = *(v5 + 32);
      }

      v2 = v16;

      v17 = *(v0 + v1);
      *(v0 + v1) = v2;
      v18 = v2;
      sub_2245B1A88(v17);
      return v2;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = *(v4 + 64 + 8 * v13);
    ++v10;
    if (v8)
    {
      v10 = v13;
      goto LABEL_6;
    }
  }

  if (v5 >> 62)
  {
    goto LABEL_25;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_26:

  v19 = *(v0 + v1);
  *(v0 + v1) = 0;
  sub_2245B1A88(v19);
  return 0;
}

id TrackingStand.init(info:systems:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v77 = a1;
  v78 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9CD0);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v74 = v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9488);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9CE0);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = v57 - v9;
  v10 = sub_224627838();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_224627518();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224627AE8();
  MEMORY[0x28223BE20](v13 - 8);
  v65 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2246280A8();
  v79 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224628078();
  MEMORY[0x28223BE20](v16);
  v17 = sub_224627BC8();
  MEMORY[0x28223BE20](v17 - 8);
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_sensorController) = 0;
  v18 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  *(v3 + v18) = dispatch_semaphore_create(1);
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled) = 0;
  v19 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingMetrics;
  type metadata accessor for TrackingMetrics(0);
  swift_allocObject();
  *(v3 + v19) = sub_224617CA0();
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_assertion) = 0;
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoCheckTimer) = 0;
  v20 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoLock;
  *(v3 + v20) = dispatch_semaphore_create(1);
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoStreamConnected) = 0;
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_motionStopped) = 0;
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_useDeviceMotion) = 1;
  v21 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerLock;
  v22 = sub_2246274B8();
  *(v3 + v21) = sub_2246274A8();
  v23 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerRunningLock;
  *(v3 + v23) = sub_2246274A8();
  v24 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_positionCommandLock;
  v60 = v22;
  *(v3 + v24) = sub_2246274A8();
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingRunning) = 0;
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTimer) = 0;
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerTimerInterval) = 0x3FA1111111111111;
  sub_224627108();
  v25 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_observations) = MEMORY[0x277D84F90];
  v26 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_observationsLock;
  *(v3 + v26) = sub_2246274A8();
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_maxObservations) = 1;
  v27 = (v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_appID);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_aspectRatio;
  *(v3 + v28) = sub_22452E8A8(v25);
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_userOverridedAspectRatio) = 0;
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_flipCamera) = 0;
  v29 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_referenceDimension;
  type metadata accessor for ReferenceDimension();
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v30 + 112) = 0;
  *(v30 + 120) = 0;
  *(v3 + v29) = v30;
  v59 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_processingQueue;
  sub_22450950C(0, &unk_280C518F0);
  v58 = "v16@?0@NSTimer8";
  sub_224627BA8();
  v81 = v25;
  v57[1] = sub_22450959C(&unk_280C51900, MEMORY[0x277D85230]);
  v57[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99E0);
  v57[2] = sub_22450ADC8();
  sub_224628298();
  v31 = *MEMORY[0x277D85260];
  v32 = *(v79 + 104);
  v79 += 104;
  v34 = v61;
  v33 = v62;
  v32(v61, v31, v62);
  *(v3 + v59) = sub_2246280D8();
  v59 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingQueue;
  v58 = "tracker-stand-metadata";
  sub_224627BB8();
  v81 = MEMORY[0x277D84F90];
  sub_224628298();
  v32(v34, v31, v33);
  *(v3 + v59) = sub_2246280D8();
  v35 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_debugMessageCallbacks;
  v36 = MEMORY[0x277D84F90];
  *(v3 + v35) = sub_22452E990(MEMORY[0x277D84F90]);
  v37 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  *(v3 + v37) = sub_2246274A8();
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking) = 0;
  v38 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_cameraManager;
  (*(v64 + 104))(v63, *MEMORY[0x277D213C8], v66);
  (*(v68 + 104))(v67, *MEMORY[0x277D21470], v69);
  v39 = sub_224627A28();
  (*(*(v39 - 8) + 56))(v70, 1, 1, v39);
  sub_224627AB8();
  sub_2246275E8();
  swift_allocObject();
  *(v3 + v38) = sub_2246275C8();
  sub_224627088();
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_lastTrackingSummaryDebug) = 0;
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_lastTrackingSummary) = 0;
  v40 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuatorPositionEpsilon;
  v80 = 0x4014000000000000;
  sub_2245AD4DC();
  sub_224627C68();
  *(v3 + v40) = v81;
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_isInferenceEnabled) = 1;
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand____lazy_storage___trackingSensor) = 1;
  v41 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__selectedFaceIDs;
  v81 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9D28);
  v42 = v71;
  sub_224627568();
  v43 = v73;
  v44 = *(v72 + 32);
  v44(v3 + v41, v42, v73);
  v45 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__selectedBodyIDs;
  v81 = v36;
  sub_224627568();
  v44(v3 + v45, v42, v43);
  v46 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTaskLock;
  *(v3 + v46) = sub_2246274A8();
  v47 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_observationLock;
  *(v3 + v47) = sub_2246274A8();
  v48 = (v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation);
  *v48 = 0;
  v48[1] = 0;
  *(v3 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_debugEnabled) = 0;
  v49 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_cameraFPSTracker;
  sub_224627558();
  swift_allocObject();
  *(v3 + v49) = sub_224627548();
  v50 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationLock;
  *(v3 + v50) = sub_2246274A8();
  v51 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__lastLatency;
  v81 = 0x3FA0E5604189374CLL;
  v52 = v74;
  sub_224627568();
  (*(v75 + 32))(v3 + v51, v52, v76);
  v53 = v77;
  v54 = sub_22457E1D8(v53, v78);

  v55 = v54;
  sub_22459552C();

  return v55;
}

uint64_t sub_224594D00()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_timeElapsedSinceStartup;
  v2 = sub_224627118();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_lastSummaryPrintTime, v2);

  sub_2245B1A88(*(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand____lazy_storage___trackingSensor));
  v4 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__selectedFaceIDs;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9488);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__selectedBodyIDs, v5);

  sub_2245AF648(*(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation), *(v0 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation + 8));

  v7 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__lastLatency;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9CD0);
  v9 = *(*(v8 - 8) + 8);

  return v9(v0 + v7, v8);
}

id TrackingStand.__deallocating_deinit()
{
  v1 = sub_224627B78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v1);
  v5 = v0;
  v6 = sub_224627B58();
  v7 = sub_224628058();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_224507000, v6, v7, "TrackingStand deinit", v8, 2u);
    MEMORY[0x22AA526D0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v9 = type metadata accessor for TrackingStand();
  v11.receiver = v5;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

void sub_22459552C()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22460BFC4())
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v2);
    v6 = sub_224627B58();
    v7 = sub_224628058();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_224509F28(0x72756769666E6F63, 0xEB00000000292865, &v17);
      _os_log_impl(&dword_224507000, v6, v7, "%s Recognition is disabled", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x22AA526D0](v9, -1, -1);
      MEMORY[0x22AA526D0](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_isInferenceEnabled) = 0;
  }

  v10 = sub_22456B370(0);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for ActuationController();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {

      v10 = 0;
    }
  }

  v12 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController) = v10;

  v13 = sub_22456B370(1);
  if (v13)
  {
    v14 = v13;
    type metadata accessor for SensorController();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {

      v13 = 0;
    }
  }

  v15 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_sensorController);
  *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_sensorController) = v13;
}

unint64_t sub_22459579C()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v88 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v88 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_appID);
  v13 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_appID + 8);
  _ZF = v12 == 0xD000000000000012 && 0x80000002246354E0 == v13;
  if (!_ZF && (sub_224628688() & 1) == 0)
  {
    v37 = v12 == 0xD000000000000011 && 0x8000000224639400 == v13;
    if (!v37 && (sub_224628688() & 1) == 0)
    {
      if (v12 != 0xD000000000000011 || 0x8000000224639420 != v13)
      {
        result = sub_224628688();
        if ((result & 1) == 0)
        {
          return result;
        }
      }

      (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v2);
      v9 = sub_224627B58();
      v50 = sub_224628058();
      if (os_log_type_enabled(v9, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v89 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_224509F28(0xD00000000000001ELL, 0x8000000224639440, &v89);
        _os_log_impl(&dword_224507000, v9, v50, "%s Setting 16:9 aspect ratio for Continuity Capture", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x22AA526D0](v52, -1, -1);
        MEMORY[0x22AA526D0](v51, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      v18 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_aspectRatio;
      v25 = qword_2837F5810;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = *(v1 + v18);
      v53 = v89;
      *(v1 + v18) = 0x8000000000000000;
      result = sub_22452B9E4(v25);
      v55 = *(v53 + 16);
      v56 = (v54 & 1) == 0;
      _VF = __OFADD__(v55, v56);
      v57 = v55 + v56;
      if (_VF)
      {
        goto LABEL_77;
      }

      LOBYTE(v9) = v54;
      if (*(v53 + 24) >= v57)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        sub_22458C854(v57, isUniquelyReferenced_nonNull_native);
        result = sub_22452B9E4(v25);
        if ((v9 & 1) != (v58 & 1))
        {
          goto LABEL_73;
        }
      }

      v59 = v89;
      if ((v9 & 1) == 0)
      {
LABEL_68:
        v59[(result >> 6) + 8] |= 1 << result;
        *(v59[6] + 8 * result) = v25;
        *(v59[7] + 16 * result) = xmmword_224631930;
        v78 = v59[2];
        _VF = __OFADD__(v78, 1);
        v79 = v78 + 1;
        if (_VF)
        {
LABEL_81:
          __break(1u);
          return result;
        }

        v59[2] = v79;
LABEL_70:
        *(v1 + v18) = v59;

        v25 = qword_2837F5818;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = *(v1 + v18);
        v80 = v89;
        *(v1 + v18) = 0x8000000000000000;
        result = sub_22452B9E4(v25);
        v82 = *(v80 + 16);
        v83 = (v81 & 1) == 0;
        _VF = __OFADD__(v82, v83);
        v84 = v82 + v83;
        if (!_VF)
        {
          LOBYTE(v9) = v81;
          if (*(v80 + 24) >= v84)
          {
            goto LABEL_74;
          }

          sub_22458C854(v84, isUniquelyReferenced_nonNull_native);
          result = sub_22452B9E4(v25);
          if ((v9 & 1) != (v85 & 1))
          {
            goto LABEL_73;
          }

LABEL_75:
          v70 = v89;
          if ((v9 & 1) == 0)
          {
            goto LABEL_79;
          }

          goto LABEL_76;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_46:
      *(v59[7] + 16 * result) = xmmword_224631930;
      goto LABEL_70;
    }

    (*(v3 + 16))(v9, v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v2);
    v38 = sub_224627B58();
    v39 = sub_224628058();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v89 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_224509F28(0xD00000000000001ELL, 0x8000000224639440, &v89);
      _os_log_impl(&dword_224507000, v38, v39, "%s Setting 1:1 aspect ratio for Webex", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x22AA526D0](v41, -1, -1);
      MEMORY[0x22AA526D0](v40, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    v18 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_aspectRatio;
    v25 = qword_2837F57E0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v1 + v18);
    v42 = v89;
    *(v1 + v18) = 0x8000000000000000;
    result = sub_22452B9E4(v25);
    v44 = *(v42 + 16);
    v45 = (v43 & 1) == 0;
    _VF = __OFADD__(v44, v45);
    v46 = v44 + v45;
    if (_VF)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    LOBYTE(v9) = v43;
    if (*(v42 + 24) >= v46)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      sub_22458C854(v46, isUniquelyReferenced_nonNull_native);
      result = sub_22452B9E4(v25);
      if ((v9 & 1) != (v47 & 1))
      {
        goto LABEL_73;
      }
    }

    v48 = v89;
    if ((v9 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_34:
    __asm { FMOV            V0.2D, #1.0 }

    *(v48[7] + 16 * result) = _Q0;
    goto LABEL_52;
  }

  (*(v3 + 16))(v11, v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v2);
  v15 = sub_224627B58();
  LOBYTE(v9) = sub_224628058();
  if (os_log_type_enabled(v15, v9))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v89 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_224509F28(0xD00000000000001ELL, 0x8000000224639440, &v89);
    _os_log_impl(&dword_224507000, v15, v9, "%s Setting 1:1 aspect ratio for FaceTime", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x22AA526D0](v17, -1, -1);
    MEMORY[0x22AA526D0](v16, -1, -1);
  }

  (*(v3 + 8))(v11, v2);
  v18 = 0;
  v19 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_aspectRatio;
  __asm { FMOV            V0.2D, #1.0 }

  v88 = _Q0;
  while (1)
  {
    v25 = *(&unk_2837F5780 + v18 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v1 + v19);
    v27 = v89;
    *(v1 + v19) = 0x8000000000000000;
    result = sub_22452B9E4(v25);
    v29 = *(v27 + 16);
    v30 = (v28 & 1) == 0;
    _VF = __OFADD__(v29, v30);
    v31 = v29 + v30;
    if (_VF)
    {
      break;
    }

    LOBYTE(v9) = v28;
    if (*(v27 + 24) < v31)
    {
      sub_22458C854(v31, isUniquelyReferenced_nonNull_native);
      result = sub_22452B9E4(v25);
      if ((v9 & 1) != (v32 & 1))
      {
        goto LABEL_73;
      }

LABEL_16:
      v33 = v89;
      if (v9)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v36 = result;
    sub_22458EE80();
    result = v36;
    v33 = v89;
    if (v9)
    {
LABEL_9:
      *(v33[7] + 16 * result) = v88;
      goto LABEL_10;
    }

LABEL_17:
    v33[(result >> 6) + 8] |= 1 << result;
    *(v33[6] + 8 * result) = v25;
    *(v33[7] + 16 * result) = v88;
    v34 = v33[2];
    _VF = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (_VF)
    {
      goto LABEL_48;
    }

    v33[2] = v35;
LABEL_10:
    *(v1 + v19) = v33;

    v18 += 8;
    if (v18 == 32)
    {
      return result;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  v60 = result;
  sub_22458EE80();
  result = v60;
  v48 = v89;
  if (v9)
  {
    goto LABEL_34;
  }

LABEL_50:
  v48[(result >> 6) + 8] |= 1 << result;
  *(v48[6] + 8 * result) = v25;
  __asm { FMOV            V0.2D, #1.0 }

  *(v48[7] + 16 * result) = _Q0;
  v62 = v48[2];
  _VF = __OFADD__(v62, 1);
  v63 = v62 + 1;
  if (_VF)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    v77 = result;
    sub_22458EE80();
    result = v77;
    v59 = v89;
    if ((v9 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_46;
  }

  v48[2] = v63;
LABEL_52:
  *(v1 + v18) = v48;

  v25 = qword_2837F57E8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = *(v1 + v18);
  v64 = v89;
  *(v1 + v18) = 0x8000000000000000;
  result = sub_22452B9E4(v25);
  v66 = *(v64 + 16);
  v67 = (v65 & 1) == 0;
  _VF = __OFADD__(v66, v67);
  v68 = v66 + v67;
  if (_VF)
  {
    goto LABEL_60;
  }

  LOBYTE(v9) = v65;
  if (*(v64 + 24) >= v68)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_57:
      v70 = v89;
      if (v9)
      {
LABEL_58:
        v71 = v70[7];
        __asm { FMOV            V0.2D, #1.0 }

LABEL_59:
        *(v71 + 16 * result) = _Q0;
        goto LABEL_64;
      }

      goto LABEL_62;
    }

LABEL_61:
    v73 = result;
    sub_22458EE80();
    result = v73;
    v70 = v89;
    if (v9)
    {
      goto LABEL_58;
    }

LABEL_62:
    v70[(result >> 6) + 8] |= 1 << result;
    *(v70[6] + 8 * result) = v25;
    __asm { FMOV            V0.2D, #1.0 }

    *(v70[7] + 16 * result) = _Q0;
    v75 = v70[2];
    _VF = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (!_VF)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  sub_22458C854(v68, isUniquelyReferenced_nonNull_native);
  result = sub_22452B9E4(v25);
  if ((v9 & 1) == (v69 & 1))
  {
    goto LABEL_57;
  }

LABEL_73:
  result = sub_2246286D8();
  __break(1u);
LABEL_74:
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_75;
  }

LABEL_78:
  v86 = result;
  sub_22458EE80();
  result = v86;
  v70 = v89;
  if (v9)
  {
LABEL_76:
    v71 = v70[7];
    _Q0 = xmmword_224631930;
    goto LABEL_59;
  }

LABEL_79:
  v70[(result >> 6) + 8] |= 1 << result;
  *(v70[6] + 8 * result) = v25;
  *(v70[7] + 16 * result) = xmmword_224631930;
  v87 = v70[2];
  _VF = __OFADD__(v87, 1);
  v76 = v87 + 1;
  if (_VF)
  {
    goto LABEL_81;
  }

LABEL_63:
  v70[2] = v76;
LABEL_64:
  *(v1 + v18) = v70;
}

uint64_t sub_2245961D0()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9DF0);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9DF8);
  v1[4] = swift_task_alloc();
  v2 = sub_224627658();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_224627118();
  v1[8] = swift_task_alloc();
  v3 = sub_224627318();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224596388, 0, 0);
}

uint64_t sub_224596388()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[12] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[13] = *(v1 + v2);
  v5 = (*MEMORY[0x277D21398] + MEMORY[0x277D21398]);

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_224596450;

  return v5();
}

uint64_t sub_224596450(char a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_224596570, 0, 0);
}

uint64_t sub_224596570()
{
  if (*(v0 + 176) == 1)
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = *(v0 + 72);
    v4 = *(v0 + 16);
    sub_224627648();
    swift_allocObject();
    *(v0 + 120) = sub_224627638();
    sub_224627618();
    swift_allocObject();
    *(v0 + 128) = sub_224627608();
    sub_224627398();
    swift_allocObject();
    v5 = sub_224627388();
    *(v0 + 136) = v5;
    (*(v2 + 104))(v1, *MEMORY[0x277D21318], v3);
    sub_224627368();
    sub_224627338();
    sub_224627378();

    sub_224627688();

    sub_224627378();

    sub_224627698();

    sub_224627378();

    sub_224627668();

    sub_224627378();

    sub_224627678();

    v6 = *(v4 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_cameraManager);

    sub_2246270E8();
    sub_224627488();
    swift_allocObject();
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_22459686C;
    v8 = *(v0 + 64);

    return MEMORY[0x28217DB88](v5, v6, v8);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_22459686C(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_22459696C, 0, 0);
}

uint64_t sub_22459696C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  *(v0[2] + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking) = v0[19];

  (*(v2 + 104))(v1, *MEMORY[0x277D21420], v3);
  v6 = *MEMORY[0x277D21418];
  v7 = sub_224627628();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = *MEMORY[0x277D213F8];
  v10 = sub_2246275F8();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v5, v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  v17 = (*MEMORY[0x277D21350] + MEMORY[0x277D21350]);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_224596B80;
  v13 = v0[7];
  v15 = v0[3];
  v14 = v0[4];

  return v17(v13, v14, v15);
}

uint64_t sub_224596B80()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);

  sub_2245098A0(v5, &qword_27D0C9DF0);
  sub_2245098A0(v4, &unk_27D0C9DF8);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_224596D54, 0, 0);
}

uint64_t sub_224596D54()
{
  v0[21] = *(v0[2] + v0[12]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224596E2C, v2, v1);
}

uint64_t sub_224596E2C()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224596E9C, 0, 0);
}

uint64_t sub_224596E9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224596F68()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[3] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_224597030;

  return v5();
}

uint64_t sub_224597030()
{

  return MEMORY[0x2822009F8](sub_224597148, 0, 0);
}

uint64_t sub_224597148()
{
  v1 = v0[2];
  v2 = v0[3];
  *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking) = 0;

  v0[6] = *(v1 + v2);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224550164, v4, v3);
}

uint64_t sub_224597230()
{
  v1[4] = v0;
  sub_224627118();
  v1[5] = swift_task_alloc();
  sub_224627B38();
  v1[6] = swift_task_alloc();
  v2 = sub_224627A68();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_224627318();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245973B0, 0, 0);
}

uint64_t sub_2245973B0()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[14] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[15] = *(v1 + v2);
  v5 = (*MEMORY[0x277D21398] + MEMORY[0x277D21398]);

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_224597478;

  return v5();
}

uint64_t sub_224597478(char a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_224597598, 0, 0);
}

uint64_t sub_224597598()
{
  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 64);
    v33 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = *(v0 + 32);
    sub_224627398();
    swift_allocObject();
    v8 = sub_224627388();
    *(v0 + 136) = v8;
    if (*(v7 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_isInferenceEnabled))
    {
      v9 = MEMORY[0x277D21310];
    }

    else
    {
      v9 = MEMORY[0x277D21318];
    }

    (*(v3 + 104))(v2, *v9, v4);
    sub_224627368();
    sub_224627338();
    (*(v5 + 104))(v33, *MEMORY[0x277D214E8], v6);
    sub_224628378();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x22AA51210](0xD00000000000001ALL, 0x8000000224639360);
    sub_224627358();
    sub_224628448();
    (*(v3 + 8))(v1, v4);
    MEMORY[0x22AA51210](0xD000000000000011, 0x8000000224639380);
    v10 = sub_224627328();
    if (v10)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v10)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    sub_224627A78();
    MEMORY[0x22AA51210](v11, v12);

    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    v15 = sub_224628028();
    MEMORY[0x22AA50EC0](v33, v13, v14, v15);

    (*(v5 + 8))(v33, v6);
    v16 = *(v7 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
    if (v16)
    {
      v17 = v16;
      v18 = sub_2245BB488(7823737, 0xE300000000000000);
      if (v18)
      {
        v19 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
        v20 = *(v18 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
        v21 = v18;

        os_unfair_lock_lock(v20 + 4);

        v22 = *&v21[v19];

        os_unfair_lock_unlock(v22 + 4);
      }

      v23 = sub_2245BB488(0x6863746970, 0xE500000000000000);
      if (v23)
      {
        v24 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
        v25 = *(v23 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
        v26 = v23;

        os_unfair_lock_lock(v25 + 4);

        v27 = *&v26[v24];

        os_unfair_lock_unlock(v27 + 4);
      }

      sub_224627AF8();
      sub_224627348();
      sub_224627308();
    }

    v28 = *(*(v0 + 32) + OBJC_IVAR____TtC11DockKitCore13TrackingStand_cameraManager);

    sub_2246270E8();
    sub_224627488();
    swift_allocObject();
    v29 = swift_task_alloc();
    *(v0 + 144) = v29;
    *v29 = v0;
    v29[1] = sub_224597A58;
    v30 = *(v0 + 40);

    return MEMORY[0x28217DB88](v8, v28, v30);
  }

  else
  {

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_224597A58(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_224597B58, 0, 0);
}

uint64_t sub_224597B58()
{
  v1 = v0[14];
  v2 = v0[4];
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking) = v0[19];

  v0[20] = *(v2 + v1);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224597C48, v4, v3);
}

uint64_t sub_224597C48()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224597CB8, 0, 0);
}

uint64_t sub_224597CB8()
{

  v1 = *(v0 + 8);

  return v1();
}

void *TrackingStand.init(coder:)(void *a1)
{
  v2 = v1;
  v77 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9CD0);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v74 = v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9488);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9CE0);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = v57 - v8;
  v9 = sub_224627838();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_224627518();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224627AE8();
  MEMORY[0x28223BE20](v12 - 8);
  v65 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2246280A8();
  v78 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224628078();
  MEMORY[0x28223BE20](v16);
  v17 = sub_224627BC8();
  MEMORY[0x28223BE20](v17 - 8);
  *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController) = 0;
  *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_sensorController) = 0;
  v18 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  *(v2 + v18) = dispatch_semaphore_create(1);
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled) = 0;
  v19 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingMetrics;
  type metadata accessor for TrackingMetrics(0);
  swift_allocObject();
  *(v2 + v19) = sub_224617CA0();
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_assertion) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoCheckTimer) = 0;
  v20 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoLock;
  *(v2 + v20) = dispatch_semaphore_create(1);
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_videoStreamConnected) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_motionStopped) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_useDeviceMotion) = 1;
  v21 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerLock;
  v22 = sub_2246274B8();
  *(v2 + v21) = sub_2246274A8();
  v23 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerRunningLock;
  *(v2 + v23) = sub_2246274A8();
  v24 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_positionCommandLock;
  v61 = v22;
  *(v2 + v24) = sub_2246274A8();
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingRunning) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTimer) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerTimerInterval) = 0x3FA1111111111111;
  sub_224627108();
  v25 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_observations) = MEMORY[0x277D84F90];
  v26 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_observationsLock;
  *(v2 + v26) = sub_2246274A8();
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_maxObservations) = 1;
  v27 = (v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_appID);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_aspectRatio;
  *(v2 + v28) = sub_22452E8A8(v25);
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_userOverridedAspectRatio) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_flipCamera) = 0;
  v29 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_referenceDimension;
  type metadata accessor for ReferenceDimension();
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v30 + 112) = 0;
  *(v30 + 120) = 0;
  *(v2 + v29) = v30;
  v60 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_processingQueue;
  v59 = sub_22450950C(0, &unk_280C518F0);
  v58 = "v16@?0@NSTimer8";
  sub_224627BA8();
  v80 = v25;
  v57[2] = sub_22450959C(&unk_280C51900, MEMORY[0x277D85230]);
  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99E0);
  v57[3] = sub_22450ADC8();
  sub_224628298();
  v31 = *MEMORY[0x277D85260];
  v32 = *(v78 + 104);
  v78 += 104;
  v33 = v62;
  v32(v15, v31, v62);
  *(v2 + v60) = sub_2246280D8();
  v60 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingQueue;
  v58 = "tracker-stand-metadata";
  sub_224627BB8();
  v80 = MEMORY[0x277D84F90];
  sub_224628298();
  v32(v15, v31, v33);
  *(v2 + v60) = sub_2246280D8();
  v34 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_debugMessageCallbacks;
  v35 = MEMORY[0x277D84F90];
  *(v2 + v34) = sub_22452E990(MEMORY[0x277D84F90]);
  v36 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  *(v2 + v36) = sub_2246274A8();
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking) = 0;
  v37 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_cameraManager;
  (*(v64 + 104))(v63, *MEMORY[0x277D213C8], v66);
  (*(v68 + 104))(v67, *MEMORY[0x277D21470], v69);
  v38 = sub_224627A28();
  (*(*(v38 - 8) + 56))(v70, 1, 1, v38);
  sub_224627AB8();
  sub_2246275E8();
  swift_allocObject();
  *(v2 + v37) = sub_2246275C8();
  sub_224627088();
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_lastTrackingSummaryDebug) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_lastTrackingSummary) = 0;
  v39 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuatorPositionEpsilon;
  v79 = 0x4014000000000000;
  sub_2245AD4DC();
  sub_224627C68();
  *(v2 + v39) = v80;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_isInferenceEnabled) = 1;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand____lazy_storage___trackingSensor) = 1;
  v40 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__selectedFaceIDs;
  v80 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9D28);
  v41 = v71;
  sub_224627568();
  v42 = v73;
  v43 = *(v72 + 32);
  v43(v2 + v40, v41, v73);
  v44 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__selectedBodyIDs;
  v80 = v35;
  sub_224627568();
  v43(v2 + v44, v41, v42);
  v45 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTaskLock;
  *(v2 + v45) = sub_2246274A8();
  v46 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_observationLock;
  *(v2 + v46) = sub_2246274A8();
  v47 = (v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation);
  *v47 = 0;
  v47[1] = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_debugEnabled) = 0;
  v48 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_cameraFPSTracker;
  sub_224627558();
  swift_allocObject();
  *(v2 + v48) = sub_224627548();
  v49 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationLock;
  *(v2 + v49) = sub_2246274A8();
  v50 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__lastLatency;
  v80 = 0x3FA0E5604189374CLL;
  v51 = v74;
  sub_224627568();
  (*(v75 + 32))(v2 + v50, v51, v76);
  v52 = v77;
  v53 = DockCoreAccessory.init(coder:)(v52);
  v54 = v53;
  if (v53)
  {
    v55 = v53;
    sub_22459552C();
  }

  return v54;
}

uint64_t sub_224598908(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v1[OBJC_IVAR____TtC11DockKitCore13TrackingStand_userOverridedAspectRatio] = 1;
  v6 = sub_224627F78();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;
  v8 = v1;
  sub_224536440(0, 0, v5, &unk_2246319A0, v7);
}

uint64_t sub_224598A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9DF0);
  v5[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9DF8);
  v5[6] = swift_task_alloc();
  v6 = sub_224627658();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224598B50, 0, 0);
}

uint64_t sub_224598B50()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[10] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[11] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_224598C18;

  return v5();
}

uint64_t sub_224598C18()
{

  return MEMORY[0x2822009F8](sub_224598D30, 0, 0);
}

uint64_t sub_224598D30()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[13] = v2;
  if (v2)
  {
    v3 = v0[4];
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v24 = v0[6];
        v25 = v0[5];
        (*(v0[8] + 104))(v0[9], *MEMORY[0x277D21420], v0[7]);
        v26 = *MEMORY[0x277D21408];
        v27 = sub_224627628();
        v28 = *(v27 - 8);
        (*(v28 + 104))(v24, v26, v27);
        (*(v28 + 56))(v24, 0, 1, v27);
        v29 = sub_2246275F8();
        (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
        v34 = (*MEMORY[0x277D21350] + MEMORY[0x277D21350]);

        v10 = swift_task_alloc();
        v0[16] = v10;
        *v10 = v0;
        v11 = sub_224599720;
        goto LABEL_17;
      }

      if (v3 == 3)
      {
        v14 = v0[6];
        v15 = v0[5];
        (*(v0[8] + 104))(v0[9], *MEMORY[0x277D21420], v0[7]);
        v16 = *MEMORY[0x277D21410];
        v17 = sub_224627628();
        v18 = *(v17 - 8);
        (*(v18 + 104))(v14, v16, v17);
        (*(v18 + 56))(v14, 0, 1, v17);
        v19 = sub_2246275F8();
        (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
        v34 = (*MEMORY[0x277D21350] + MEMORY[0x277D21350]);

        v10 = swift_task_alloc();
        v0[17] = v10;
        *v10 = v0;
        v11 = sub_2245998D8;
        goto LABEL_17;
      }
    }

    else
    {
      if (!v3)
      {
        v20 = v0[6];
        v21 = v0[5];
        (*(v0[8] + 104))(v0[9], *MEMORY[0x277D21428], v0[7]);
        v22 = sub_224627628();
        (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
        v23 = sub_2246275F8();
        (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
        v34 = (*MEMORY[0x277D21350] + MEMORY[0x277D21350]);

        v10 = swift_task_alloc();
        v0[14] = v10;
        *v10 = v0;
        v11 = sub_2245993B0;
        goto LABEL_17;
      }

      if (v3 == 1)
      {
        v4 = v0[6];
        v5 = v0[5];
        (*(v0[8] + 104))(v0[9], *MEMORY[0x277D21420], v0[7]);
        v6 = *MEMORY[0x277D21418];
        v7 = sub_224627628();
        v8 = *(v7 - 8);
        (*(v8 + 104))(v4, v6, v7);
        (*(v8 + 56))(v4, 0, 1, v7);
        v9 = sub_2246275F8();
        (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
        v34 = (*MEMORY[0x277D21350] + MEMORY[0x277D21350]);

        v10 = swift_task_alloc();
        v0[15] = v10;
        *v10 = v0;
        v11 = sub_224599568;
LABEL_17:
        v10[1] = v11;
        v30 = v0[9];
        v32 = v0[5];
        v31 = v0[6];

        return v34(v30, v31, v32);
      }
    }

    v0[2] = v3;

    return sub_2246286B8();
  }

  else
  {
    v0[18] = *(v1 + v0[10]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v13 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_224599B70, v13, v12);
  }
}

uint64_t sub_2245993B0()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);

  sub_2245098A0(v5, &qword_27D0C9DF0);
  sub_2245098A0(v4, &unk_27D0C9DF8);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2245B26A8, 0, 0);
}

uint64_t sub_224599568()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);

  sub_2245098A0(v5, &qword_27D0C9DF0);
  sub_2245098A0(v4, &unk_27D0C9DF8);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2245B26A8, 0, 0);
}

uint64_t sub_224599720()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);

  sub_2245098A0(v5, &qword_27D0C9DF0);
  sub_2245098A0(v4, &unk_27D0C9DF8);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2245B26A8, 0, 0);
}

uint64_t sub_2245998D8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);

  sub_2245098A0(v5, &qword_27D0C9DF0);
  sub_2245098A0(v4, &unk_27D0C9DF8);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_224599A90, 0, 0);
}

uint64_t sub_224599A90()
{

  v0[18] = *(v0[3] + v0[10]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_224599B70, v2, v1);
}

uint64_t sub_224599B70()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224599C00(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v4[OBJC_IVAR____TtC11DockKitCore13TrackingStand_userOverridedAspectRatio] = 1;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v4;
  *(v13 + 40) = a1;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;
  *(v13 + 64) = a4;
  v14 = v4;
  sub_224536440(0, 0, v11, &unk_2246319B0, v13);
}

uint64_t sub_224599D44(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 16) = a8;
  return MEMORY[0x2822009F8](sub_224599D6C, 0, 0);
}

uint64_t sub_224599D6C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[7] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[8] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_224599E34;

  return v5();
}

uint64_t sub_224599E34()
{

  return MEMORY[0x2822009F8](sub_224599F4C, 0, 0);
}

uint64_t sub_224599F4C()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[10] = v2;
  if (v2)
  {
    v11 = (*MEMORY[0x277D21378] + MEMORY[0x277D21378]);

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_22459A0C8;
    v4.n128_u64[0] = v0[5];
    v5.n128_u64[0] = v0[6];
    v6.n128_u64[0] = v0[3];
    v7.n128_u64[0] = v0[4];

    return v11(v6, v7, v4, v5);
  }

  else
  {
    v0[12] = *(v1 + v0[7]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v10 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_22459A2C0, v10, v9);
  }
}

uint64_t sub_22459A0C8()
{

  if (v0)
  {

    v1 = sub_2245B269C;
  }

  else
  {
    v1 = sub_22459A1E0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22459A1E0()
{

  v0[12] = *(v0[2] + v0[7]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22459A2C0, v2, v1);
}

uint64_t sub_22459A2C0()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22459A328()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  v1[3] = swift_task_alloc();
  v2 = sub_224627B78();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22459A420, 0, 0);
}

uint64_t sub_22459A420()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerRunningLock;
  v0[7] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerRunningLock;
  v0[8] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_22459A4E8;

  return v5();
}

uint64_t sub_22459A4E8()
{

  return MEMORY[0x2822009F8](sub_22459A600, 0, 0);
}

uint64_t sub_22459A600()
{
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingRunning) == 1)
  {
    (*(v0[5] + 16))(v0[6], v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0[4]);
    v2 = sub_224627B58();
    v3 = sub_224628058();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_224507000, v2, v3, "startTracking() already called, ignoring request to start again", v4, 2u);
      MEMORY[0x22AA526D0](v4, -1, -1);
    }

    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[2];

    (*(v8 + 8))(v5, v7);
    v0[10] = *(v9 + v6);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v10 = sub_224627F28();
    v12 = v11;
    v13 = sub_22459A830;
  }

  else
  {
    v14 = v0[7];
    *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingRunning) = 1;
    v0[11] = *(v1 + v14);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v10 = sub_224627F28();
    v12 = v15;
    v13 = sub_22459A8AC;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_22459A830()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22459A8AC()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22459A91C, 0, 0);
}

uint64_t sub_22459A91C()
{
  v1 = *(v0 + 16);
  sub_22459579C();
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingMetrics;
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingMetrics);
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_appID + 8);
  *(v3 + 16) = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_appID);
  *(v3 + 24) = v4;

  v5 = *(v1 + v2);
  v6 = objc_allocWithZone(MEMORY[0x277CBEAA8]);

  v7 = [v6 init];
  [v7 timeIntervalSince1970];
  v9 = v8;

  *(v5 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_startTime) = v9;

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController))
  {
    *(v0 + 96) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9D40);
    sub_224627588();
  }

  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  v12 = sub_224627F78();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 1, 1, v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v11;
  v15 = v11;
  sub_224536730(0, 0, v10, &unk_2246319D0, v14);

  sub_2245A9BF0();
  sub_2245A0CD4();
  v13(v10, 1, 1, v12);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  v17 = v15;
  sub_224536440(0, 0, v10, &unk_2246319E0, v16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22459AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_22459ABA8, 0, 0);
}

uint64_t sub_22459ABA8()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  *(v0 + 32) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_22459AC98;

    return sub_2245BB528();
  }

  else
  {
    **(v0 + 16) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_22459AC98()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_22459ADAC, 0, 0);
}

uint64_t sub_22459ADD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224627118();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22459AE94, 0, 0);
}

uint64_t sub_22459AE94()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[6] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[7] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22459AF5C;

  return v5();
}

uint64_t sub_22459AF5C()
{

  return MEMORY[0x2822009F8](sub_22459B074, 0, 0);
}

uint64_t sub_22459B074()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[9] = v2;
  if (v2)
  {

    sub_2246270E8();
    v8 = (*MEMORY[0x277D21360] + MEMORY[0x277D21360]);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_22459B1F8;
    v4 = v0[5];

    return v8(v4);
  }

  else
  {
    v0[11] = *(v1 + v0[6]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v7 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_22459B444, v7, v6);
  }
}

uint64_t sub_22459B1F8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22459B36C, 0, 0);
}

uint64_t sub_22459B36C()
{
  v0[11] = *(v0[2] + v0[6]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22459B444, v2, v1);
}

uint64_t sub_22459B444()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22459B62C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245466C4;

  return sub_22459A328();
}

uint64_t sub_22459B6D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  sub_2245AA5C4();
  sub_2245A9350();
  v4 = *&v0[OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingMetrics];
  v5 = objc_allocWithZone(MEMORY[0x277CBEAA8]);

  v6 = [v5 init];
  [v6 timeIntervalSince1970];
  v8 = v7;

  *(v4 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_endTime) = v8;

  sub_2245AAE28();
  v9 = sub_224627F78();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v0;
  v11 = v0;
  sub_224536440(0, 0, v3, &unk_2246319F0, v10);
}

uint64_t sub_22459B870()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerRunningLock;
  v0[3] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerRunningLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22459B938;

  return v5();
}

uint64_t sub_22459B938()
{

  return MEMORY[0x2822009F8](sub_22459BA50, 0, 0);
}

uint64_t sub_22459BA50()
{
  v2 = v0[2];
  v1 = v0[3];
  *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingRunning) = 0;
  v0[6] = *(v2 + v1);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245B2690, v4, v3);
}

uint64_t sub_22459BB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22459BBA0, 0, 0);
}

uint64_t sub_22459BBA0()
{
  sub_2245AE32C(*(v0 + 16), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = v1;
  *(v0 + 64) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_22459BC50;
  v4 = *(v0 + 24);

  return sub_2245A03E4(v2, v4);
}

uint64_t sub_22459BC50()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22459BDC8;
  }

  else
  {
    v2 = sub_22459BD64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22459BD64()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22459BDC8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22459BE2C(_BYTE *a1)
{
  *(v2 + 32) = v1;
  v4 = sub_224627B78();
  *(v2 + 40) = v4;
  *(v2 + 48) = *(v4 - 8);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 112) = *a1;

  return MEMORY[0x2822009F8](sub_22459BEF8, 0, 0);
}

uint64_t sub_22459BEF8()
{
  v35 = v0;
  v4 = *(v0[4] + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems);
  v31[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_45:
    v5 = sub_224628478();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v30 = v0;
    v1 = 0;
    v3 = v4 & 0xC000000000000001;
    v0 = &OBJC_IVAR____TtC11DockKitCore6System_type;
    while (1)
    {
      if (v3)
      {
        v6 = MEMORY[0x22AA517F0](v1, v4);
        v7 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v0 = v30;
          v8 = v31[0];
          goto LABEL_17;
        }
      }

      else
      {
        if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_45;
        }

        v6 = *(v4 + 8 * v1 + 32);
        v7 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_14;
        }
      }

      if (*&v6[OBJC_IVAR____TtC11DockKitCore6System_type])
      {
      }

      else
      {
        v2 = v6;
        sub_2246283C8();
        sub_2246283E8();
        sub_2246283F8();
        sub_2246283D8();
      }

      ++v1;
      if (v7 == v5)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:

  if ((v8 & 0x8000000000000000) == 0 && (v8 & 0x4000000000000000) == 0)
  {
    if (*(v8 + 16))
    {
      goto LABEL_20;
    }

LABEL_47:

    goto LABEL_48;
  }

  if (!sub_224628478())
  {
    goto LABEL_47;
  }

LABEL_20:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x22AA517F0](0, v8);
  }

  else
  {
    v9 = *(v8 + 16);
    if (!v9)
    {
      __break(1u);
      goto LABEL_54;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;

  v0[8] = v11;
  type metadata accessor for ActuationController();
  if (!swift_dynamicCastClass())
  {

LABEL_48:
    sub_22452ECAC();
    swift_allocError();
    *v28 = 0xD000000000000017;
    *(v28 + 8) = 0x8000000224638D80;
    *(v28 + 16) = 9;
    swift_willThrow();
    goto LABEL_49;
  }

  v12 = sub_2245BB488(7823737, 0xE300000000000000);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC11DockKitCore9Component_id];

    v14 = sub_2245BB488(0x6863746970, 0xE500000000000000);
    if (v14)
    {
      v15 = *(v0 + 112);
      v5 = *&v14[OBJC_IVAR____TtC11DockKitCore9Component_id];

      v4 = [objc_opt_self() progressWithTotalUnitCount_];
      v0[9] = v4;
      if (v15 <= 5)
      {
        if (v15 == 4)
        {
          sub_224527720(v5, v31);
          goto LABEL_40;
        }

        if (v15 == 5)
        {
          sub_22452792C(v13, v31);
LABEL_40:
          v1 = v31[0];
          v20 = *&v31[1];
          v5 = v31[2];
          v17 = v32;
          v19 = v33;
          v21 = v34;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v15 == 6)
      {
        sub_224527B38(v5, v31);
        goto LABEL_40;
      }

      if (v15 != 7)
      {
LABEL_37:
        sub_22452ECAC();
        swift_allocError();
        *v22 = 0xD000000000000013;
        *(v22 + 8) = 0x8000000224638DC0;
        *(v22 + 16) = 16;
        swift_willThrow();

        goto LABEL_31;
      }

      v1 = sub_22452AE14(0, 1, 1, MEMORY[0x277D84F90]);
      v3 = *(v1 + 2);
      v9 = *(v1 + 3);
      v2 = v3 + 1;
      if (v3 < v9 >> 1)
      {
LABEL_36:
        v17 = 0;
        *(v1 + 2) = v2;
        v18 = &v1[24 * v3];
        *(v18 + 2) = xmmword_224631940;
        *(v18 + 6) = 0;
        v19 = 1;
        v20 = 1.0;
        v21 = 1;
LABEL_41:
        v23 = v0[4];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9D50);
        v24 = swift_allocObject();
        v0[10] = v24;
        *(v24 + 16) = xmmword_22462C8F0;
        *(v24 + 32) = v1;
        *(v24 + 40) = v20;
        *(v24 + 48) = v5;
        *(v24 + 56) = v17;
        *(v24 + 57) = v19;
        *(v24 + 58) = v21;
        *(v0 + 8) = 512;
        v0[3] = v24;
        v25 = swift_task_alloc();
        v0[11] = v25;
        *(v25 + 16) = v23;
        *(v25 + 24) = v4;
        v26 = swift_task_alloc();
        v0[12] = v26;
        *v26 = v0;
        v26[1] = sub_22459C498;

        return ActuationController.sendTrajectoryCommand(trajectoryCommand:progressCallback:)((v0 + 2), sub_2245AE9DC, v25);
      }

LABEL_54:
      v1 = sub_22452AE14((v9 > 1), v2, 1, v1);
      goto LABEL_36;
    }
  }

  sub_22452ECAC();
  swift_allocError();
  *v16 = 0xD000000000000018;
  *(v16 + 8) = 0x8000000224638DA0;
  *(v16 + 16) = 16;
  swift_willThrow();
LABEL_31:

LABEL_49:

  v29 = v0[1];

  return v29();
}

uint64_t sub_22459C498()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22459C62C;
  }

  else
  {

    v2 = sub_22459C5BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22459C5BC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_22459C62C()
{
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
  v6 = v1;
  v7 = sub_224627B58();
  v8 = sub_224628048();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[13];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_224507000, v7, v8, "Failed executing trajectory, raising %@", v10, 0xCu);
    sub_2245098A0(v11, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v11, -1, -1);
    MEMORY[0x22AA526D0](v10, -1, -1);
  }

  v15 = v0[8];
  v14 = v0[9];
  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[5];

  (*(v17 + 8))(v16, v18);
  [v14 cancel];
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

char *sub_22459C80C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v39 - v21;
  v23 = *(a1 + 1);
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      (*(v7 + 16))(v19, a2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v6);
      v33 = sub_224627B58();
      v34 = sub_224628058();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_224507000, v33, v34, "completed: increase completed unit count", v35, 2u);
        MEMORY[0x22AA526D0](v35, -1, -1);
      }

      (*(v7 + 8))(v19, v6);
      result = [a3 completedUnitCount];
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        return [a3 setCompletedUnitCount_];
      }
    }

    else
    {
      if (v23 == 4)
      {
        (*(v7 + 16))(&v39 - v21, a2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v6);
        v27 = sub_224627B58();
        v28 = sub_224628058();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_224507000, v27, v28, "canceled: canceling progress", v29, 2u);
          MEMORY[0x22AA526D0](v29, -1, -1);
        }

        (*(v7 + 8))(v22, v6);
      }

      else
      {
        (*(v7 + 16))(v16, a2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v6);
        v36 = sub_224627B58();
        v37 = sub_224628058();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_224507000, v36, v37, "failed: canceling progress", v38, 2u);
          MEMORY[0x22AA526D0](v38, -1, -1);
        }

        (*(v7 + 8))(v16, v6);
      }

      return [a3 cancel];
    }
  }

  else if (*(a1 + 1))
  {
    if (v23 == 1)
    {
      (*(v7 + 16))(v10, a2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v6);
      v24 = sub_224627B58();
      v25 = sub_224628058();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_224507000, v24, v25, "started: started progress", v26, 2u);
        MEMORY[0x22AA526D0](v26, -1, -1);
      }

      return (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    (*(v7 + 16))(v13, a2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v6);
    v30 = sub_224627B58();
    v31 = sub_224628058();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_224507000, v30, v31, "calibrating: calibrating progress", v32, 2u);
      MEMORY[0x22AA526D0](v32, -1, -1);
    }

    return (*(v7 + 8))(v13, v6);
  }

  return result;
}

uint64_t sub_22459CD24(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_224627A48();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_224627A18();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22459CE44, 0, 0);
}

uint64_t sub_22459CE44()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[11] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[12] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_22459CF0C;

  return v5();
}

uint64_t sub_22459CF0C()
{

  return MEMORY[0x2822009F8](sub_22459D024, 0, 0);
}

uint64_t sub_22459D024()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = *(v0 + 72);
    **(v0 + 80) = *(v0 + 16);
    (*(v2 + 104))();
    v10 = (*MEMORY[0x277D21348] + MEMORY[0x277D21348]);

    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_22459D214;
    v4 = *(v0 + 80);

    return v10(v4);
  }

  else
  {
    sub_2245AE9E4();
    v6 = swift_allocError();
    *v7 = 0xD000000000000027;
    *(v7 + 8) = 0x8000000224638DE0;
    *(v7 + 16) = 1;
    *(v0 + 128) = v6;
    *(v0 + 136) = *(*(v0 + 32) + *(v0 + 88));
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v9 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_22459D450, v9, v8);
  }
}

uint64_t sub_22459D214()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22459D36C, 0, 0);
}

uint64_t sub_22459D36C()
{

  v0[16] = 0;
  v0[17] = *(v0[4] + v0[11]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22459D450, v2, v1);
}

uint64_t sub_22459D450()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22459D4C0, 0, 0);
}

uint64_t sub_22459D4C0()
{
  v1 = v0[16];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  (*(v3 + 104))(v2, *MEMORY[0x277D214E0], v4);
  sub_22459E0F0(v2, v1);
  (*(v3 + 8))(v2, v4);
  if (v1)
  {
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_22459D5CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_224627A48();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8C38);
  v2[7] = swift_task_alloc();
  v4 = sub_224627188();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_224627A18();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22459D77C, 0, 0);
}

uint64_t sub_22459D77C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[14] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[15] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_22459D844;

  return v5();
}

uint64_t sub_22459D844()
{

  return MEMORY[0x2822009F8](sub_22459D95C, 0, 0);
}

uint64_t sub_22459D95C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  *(v0 + 136) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v0 + 72);
      v30 = MEMORY[0x277D84F90];

      sub_22455C720(0, v3, 0);
      v5 = v30;
      v6 = (v4 + 48);
      v27 = v4;
      v28 = (v4 + 32);
      v7 = v2 + 40;
      do
      {
        v9 = *(v0 + 56);
        v8 = *(v0 + 64);

        sub_224627128();
        v10 = *v6;
        v11 = (*v6)(v9, 1, v8);
        v12 = *(v0 + 80);
        v14 = *(v0 + 56);
        v13 = *(v0 + 64);
        if (v11 == 1)
        {
          sub_224627178();

          if (v10(v14, 1, v13) != 1)
          {
            sub_2245098A0(*(v0 + 56), &qword_27D0C8C38);
          }
        }

        else
        {

          (*v28)(v12, v14, v13);
        }

        v16 = *(v30 + 16);
        v15 = *(v30 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_22455C720(v15 > 1, v16 + 1, 1);
        }

        v17 = *(v0 + 80);
        v18 = *(v0 + 64);
        *(v30 + 16) = v16 + 1;
        (*(v27 + 32))(v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v16, v17, v18);
        v7 += 16;
        --v3;
      }

      while (v3);
    }

    else
    {

      v5 = MEMORY[0x277D84F90];
    }

    v23 = *(v0 + 96);
    **(v0 + 104) = v5;
    (*(v23 + 104))();
    v29 = (*MEMORY[0x277D21348] + MEMORY[0x277D21348]);
    v24 = swift_task_alloc();
    *(v0 + 144) = v24;
    *v24 = v0;
    v24[1] = sub_22459DD08;
    v25 = *(v0 + 104);

    return v29(v25);
  }

  else
  {
    sub_2245AE9E4();
    v19 = swift_allocError();
    *v20 = 0xD000000000000027;
    *(v20 + 8) = 0x8000000224638DE0;
    *(v20 + 16) = 1;
    *(v0 + 152) = v19;
    *(v0 + 160) = *(*(v0 + 24) + *(v0 + 112));
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v22 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_22459DF44, v22, v21);
  }
}

uint64_t sub_22459DD08()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_22459DE60, 0, 0);
}

uint64_t sub_22459DE60()
{

  v0[19] = 0;
  v0[20] = *(v0[3] + v0[14]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22459DF44, v2, v1);
}

uint64_t sub_22459DF44()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22459DFB4, 0, 0);
}

uint64_t sub_22459DFB4()
{
  v1 = v0[19];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  (*(v3 + 104))(v2, *MEMORY[0x277D214D8], v4);
  sub_22459E0F0(v2, v1);
  (*(v3 + 8))(v2, v4);
  if (v1)
  {
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_22459E0F0(uint64_t a1, void *a2)
{
  result = sub_2245AD530();
  if (v5)
  {
    if (result == 0xD000000000000018 && v5 == 0x8000000224637E60 || (v26 = result, v27 = v5, (sub_224628688() & 1) != 0))
    {
    }

    else
    {
      if (a2)
      {
        *&v35[0] = a2;
        v6 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
        if (swift_dynamicCast())
        {
          v7 = *(&v36 + 1);
          v25 = v36;
          v8 = v37;
        }

        else
        {
          swift_getErrorValue();
          v25 = sub_2246286F8();
          v7 = v9;
          v8 = 16;
        }
      }

      else
      {
        v25 = 0;
        v7 = 0;
        v8 = -1;
      }

      v24 = v8;
      v10 = sub_224627A38();
      if (*(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion + 8))
      {
        v11 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion);
        v12 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion + 8);
      }

      else
      {
        v12 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E55;
      }

      if (*(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model + 8))
      {
        v13 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model);
        v14 = *(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model + 8);
      }

      else
      {
        v14 = 0xE700000000000000;
        v13 = 0x6E776F6E6B6E55;
      }

      v15 = (*(v2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info) + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
      v16 = *v15;
      v17 = v15[1];
      v23 = *v15;

      sub_224513D30(0, 0, 0xFFu);
      LOBYTE(v30) = v10;
      *(&v30 + 1) = v25;
      *&v31 = v7;
      BYTE8(v31) = v24;
      BYTE9(v31) = 4;
      *&v32 = v11;
      *(&v32 + 1) = v12;
      *&v33 = v13;
      *(&v33 + 1) = v14;
      *&v34 = v16;
      *(&v34 + 1) = v17;
      v38 = v32;
      v39 = v33;
      v40 = v34;
      v36 = v30;
      v37 = v31;
      LOBYTE(v16) = sub_224513D5C(v26, v27);
      sub_224513E98(&v30, v35);

      v35[2] = v38;
      v35[3] = v39;
      v35[4] = v40;
      v35[0] = v36;
      v35[1] = v37;
      sub_224513ED0(v35);
      LOBYTE(v36) = v10;
      *(&v36 + 1) = v25;
      *&v37 = v7;
      BYTE8(v37) = v24;
      BYTE9(v37) = v16;
      *&v38 = v11;
      *(&v38 + 1) = v12;
      *&v39 = v13;
      *(&v39 + 1) = v14;
      *&v40 = v23;
      *(&v40 + 1) = v17;
      v18 = sub_224627CB8();
      v19 = swift_allocObject();
      v20 = v39;
      v19[3] = v38;
      v19[4] = v20;
      v19[5] = v40;
      v21 = v37;
      v19[1] = v36;
      v19[2] = v21;
      aBlock[4] = sub_224514314;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224513B14;
      aBlock[3] = &block_descriptor_3;
      v22 = _Block_copy(aBlock);
      sub_224513E98(&v36, v28);

      AnalyticsSendEventLazy();
      _Block_release(v22);

      return sub_224513ED0(&v36);
    }
  }

  return result;
}

uint64_t sub_22459E4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = swift_getObjectType();
  v6 = sub_224627428();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_224627838();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = sub_224627AE8();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v9 = sub_224627118();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22459E6C4, 0, 0);
}

uint64_t sub_22459E6C4()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = sub_224627418();
  v0[24] = v6;
  v7 = *(v6 - 8);
  v0[25] = v7;
  v8 = *(v7 + 56);
  v0[26] = v8;
  v0[27] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v5, 1, 1, v6);
  sub_2245AE32C(v4, v3, v1, 0);
  v9 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[28] = v10;
  v0[29] = v9;
  v0[30] = *(v2 + v9);
  v13 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_22459E818;

  return v13();
}

uint64_t sub_22459E818()
{

  return MEMORY[0x2822009F8](sub_22459E930, 0, 0);
}

uint64_t sub_22459E930()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking;
  v0[32] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking;
  v3 = *(v1 + v2);
  v0[33] = v3;
  if (v3)
  {
    v4 = v0[28];
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[21];

    sub_2246270E8();
    v8 = _s11DockKitCore13TrackingStandC7convert4time8metadata5image011IntelligentdC021DKObservationMetadataCSg10Foundation4DateV_AA08FollowerL0CSo11CVBufferRefaSgtFZ_0(v5, v4, 0);
    v0[34] = v8;
    (*(v6 + 8))(v5, v7);
    if (v8)
    {
      v10 = v0[15];
      v9 = v0[16];
      v11 = v0[13];
      v12 = v0[14];
      static TrackingStand.getCamera(metadata:)(v0[28], v0[20]);
      sub_224627A88();
      (*(v12 + 104))(v10, *MEMORY[0x277D21470], v11);
      sub_22450959C(&qword_27D0C9D78, MEMORY[0x277D21488]);
      sub_224627E38();
      sub_224627E38();
      v13 = *(v12 + 8);
      v13(v10, v11);
      v13(v9, v11);
      if (v0[2] == v0[3] && (v14 = *(v1 + v2), (v0[35] = v14) != 0))
      {
        v26 = (*MEMORY[0x277D21390] + MEMORY[0x277D21390]);

        v15 = swift_task_alloc();
        v0[36] = v15;
        *v15 = v0;
        v15[1] = sub_22459ECC8;
        v16 = 6;
      }

      else
      {
        v17 = v0[34];
        v19 = v0[18];
        v18 = v0[19];
        v20 = v0[17];
        static TrackingStand.getCamera(metadata:)(v0[28], v18);
        sub_2246275D8();
        v21 = *(v19 + 8);
        v0[37] = v21;
        v0[38] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v21(v18, v20);
        v26 = (*MEMORY[0x277D21380] + MEMORY[0x277D21380]);
        v22 = swift_task_alloc();
        v0[39] = v22;
        *v22 = v0;
        v22[1] = sub_22459EEDC;
        v16 = v17;
      }

      return v26(v16);
    }

    v1 = v0[8];
  }

  v0[41] = *(v1 + v0[29]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v25 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22459F214, v25, v24);
}

uint64_t sub_22459ECC8()
{

  return MEMORY[0x2822009F8](sub_22459EDC4, 0, 0);
}

uint64_t sub_22459EDC4()
{

  v1 = v0[34];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  static TrackingStand.getCamera(metadata:)(v0[28], v2);
  sub_2246275D8();
  v5 = *(v3 + 8);
  v0[37] = v5;
  v0[38] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v8 = (*MEMORY[0x277D21380] + MEMORY[0x277D21380]);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_22459EEDC;

  return v8(v1);
}

uint64_t sub_22459EEDC()
{

  return MEMORY[0x2822009F8](sub_22459EFD8, 0, 0);
}

uint64_t sub_22459EFD8()
{
  v0[40] = *(v0[8] + v0[29]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22459F0B0, v2, v1);
}

uint64_t sub_22459F0B0()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22459F120, 0, 0);
}

uint64_t sub_22459F120()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);

  v1(v2, v3);
  *(v0 + 344) = *(*(v0 + 64) + *(v0 + 232));
  v6 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_22459F470;

  return v6();
}

uint64_t sub_22459F214()
{
  sub_224627498();

  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_22459F2B4;

  return sub_2245961D0();
}

uint64_t sub_22459F2B4()
{

  return MEMORY[0x2822009F8](sub_22459F3B0, 0, 0);
}

uint64_t sub_22459F3B0()
{
  v0[43] = *(v0[8] + v0[29]);
  v3 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_22459F470;

  return v3();
}

uint64_t sub_22459F470()
{

  return MEMORY[0x2822009F8](sub_22459F588, 0, 0);
}

uint64_t sub_22459F588()
{
  v1 = v0[8];
  v2 = *(v1 + v0[32]);
  v0[45] = v2;
  if (v2)
  {

    sub_2246270E8();
    v8 = (*MEMORY[0x277D21368] + MEMORY[0x277D21368]);
    v3 = swift_task_alloc();
    v0[46] = v3;
    *v3 = v0;
    v3[1] = sub_22459F708;
    v4 = v0[23];

    return v8(v4);
  }

  else
  {
    v0[48] = *(v1 + v0[29]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v7 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_22459FA44, v7, v6);
  }
}

uint64_t sub_22459F708(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  *(*v1 + 376) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22459F868, 0, 0);
}

uint64_t sub_22459F868()
{
  if (v0[47])
  {
    v2 = v0[11];
    v1 = v0[12];
    v3 = v0[10];
    sub_224627438();

    if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D21340])
    {
      v4 = v0[26];
      v5 = v0[24];
      v6 = v0[25];
      v8 = v0[11];
      v7 = v0[12];
      v9 = v0[10];
      v10 = v0[4];
      sub_2245098A0(v10, &qword_27D0C9D70);
      (*(v8 + 96))(v7, v9);
      (*(v6 + 32))(v10, v7, v5);
      v4(v10, 0, 1, v5);
    }

    else
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
    }
  }

  else
  {
  }

  v0[48] = *(v0[8] + v0[29]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v12 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22459FA44, v12, v11);
}

uint64_t sub_22459FA44()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22459FAB4, 0, 0);
}

uint64_t sub_22459FAB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static TrackingStand.getCamera(metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9CE0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v47 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v47 - v6;
  v7 = sub_224627AE8();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v56 = sub_224627838();
  v12 = *(v56 - 8);
  v13 = MEMORY[0x28223BE20](v56);
  v48 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v47 - v16;
  MEMORY[0x28223BE20](v15);
  v54 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8FA8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v47 - v19;
  v21 = sub_224627518();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v47 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v47 - v29;
  v58 = a1;
  sub_224627CD8();
  sub_224627508();
  v31 = *(v22 + 48);
  v32 = v31(v20, 1, v21);
  v57 = v30;
  if (v32 == 1)
  {
    (*(v22 + 104))(v30, *MEMORY[0x277D213C0], v21);
    if (v31(v20, 1, v21) != 1)
    {
      sub_2245098A0(v20, &qword_27D0C8FA8);
    }
  }

  else
  {
    (*(v22 + 32))(v30, v20, v21);
  }

  sub_224627818();
  v33 = *(v12 + 48);
  v34 = v56;
  if (v33(v11, 1, v56) == 1)
  {
    v35 = v54;
    (*(v12 + 104))(v54, *MEMORY[0x277D21480], v34);
    v36 = v33(v11, 1, v34);
    v37 = v35;
    if (v36 != 1)
    {
      sub_2245098A0(v11, &qword_27D0C9D80);
    }
  }

  else
  {
    v37 = v54;
    (*(v12 + 32))(v54, v11, v34);
  }

  (*(v22 + 104))(v28, *MEMORY[0x277D213B8], v21);
  sub_22450959C(&qword_27D0C8FB0, MEMORY[0x277D213D0]);
  sub_224627E38();
  sub_224627E38();
  v54 = *(v22 + 8);
  (v54)(v28, v21);
  v38 = v56;
  if (v60 == v59)
  {
    v39 = v53;
    sub_224535514(v53);
    (*(v12 + 8))(v37, v38);
    (*(v12 + 32))(v37, v39, v38);
  }

  v40 = *(v58 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics);
  if (v40)
  {
    (*(v22 + 16))(v25, v57, v21);
    (*(v12 + 16))(v48, v37, v38);
    v41 = sub_224627A28();
    (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
    v42 = v40;
    v43 = v49;
    sub_224627AA8();
    (*(v51 + 32))(v55, v43, v52);
    sub_224627AD8();

    v38 = v56;
    v44 = v57;
  }

  else
  {
    v44 = v57;
    (*(v22 + 16))(v28, v57, v21);
    (*(v12 + 16))(v53, v37, v38);
    v45 = sub_224627A28();
    (*(*(v45 - 8) + 56))(v47, 1, 1, v45);
    sub_224627AB8();
  }

  (*(v12 + 8))(v37, v38);
  return (v54)(v44, v21);
}

uint64_t sub_2245A03E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2245A0408, 0, 0);
}

uint64_t sub_2245A0408()
{
  v1 = v0[4];
  if (!*(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTimer))
  {
    sub_2245A0CD4();
    v1 = v0[4];
  }

  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_observationLock;
  v0[5] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_observationLock;
  v0[6] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_2245A04E8;

  return v5();
}

uint64_t sub_2245A04E8()
{

  return MEMORY[0x2822009F8](sub_2245A0600, 0, 0);
}

uint64_t sub_2245A0600()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = (v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation);
  v6 = *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation);
  v5 = *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation + 8);
  *v4 = v1;
  v4[1] = v3;
  v7 = v1;
  v8 = v3;
  sub_2245AF648(v6, v5);

  sub_224627538();

  v9 = *(v2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_referenceDimension);
  *(v0 + 64) = v9;
  *(v0 + 80) = *&v8[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth];
  *(v0 + 84) = *&v8[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight];

  return MEMORY[0x2822009F8](sub_2245A0700, v9, 0);
}

uint64_t sub_2245A0700()
{
  *(*&v0[8] + 112) = vcvtq_f64_f32(v0[10]);

  return MEMORY[0x2822009F8](sub_2245A0774, 0, 0);
}

uint64_t sub_2245A0774()
{
  v0[9] = *(v0[4] + v0[5]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A0848, v2, v1);
}

uint64_t sub_2245A0848()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245A0A44(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_2245A0B18;

  return sub_2245A03E4(v8, a2);
}

uint64_t sub_2245A0B18()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 40);
  if (v2)
  {
    v10 = sub_224626FA8();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v11 = *(v8 + 8);

  return v11();
}

void sub_2245A0CD4()
{
  ObjectType = swift_getObjectType();
  v0 = sub_224627B98();
  v79 = *(v0 - 8);
  v80 = v0;
  MEMORY[0x28223BE20](v0);
  v77 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_224627BC8();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_224627B88();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_224627BE8();
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v68 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v58 - v8;
  v66 = sub_2246280F8();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_224627B38();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_224627418();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  v21 = sub_224627B78();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v23[OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTimer])
  {
    (*(v22 + 16))(v25, &v23[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v21);
    v26 = sub_224627B58();
    v27 = sub_224628058();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_224507000, v26, v27, "Tracking check timer already running", v28, 2u);
      MEMORY[0x22AA526D0](v28, -1, -1);
    }

    (*(v22 + 8))(v25, v21);
  }

  else
  {
    v29 = v23;
    v63 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTimer;
    sub_224627AF8();
    v62 = v20;
    sub_224627408();
    v30 = sub_224627F78();
    (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    v31 = *(v15 + 16);
    v60 = v14;
    v31(v18, v20, v14);
    v32 = *(v15 + 80);
    v61 = v15;
    v33 = (v32 + 40) & ~v32;
    v34 = swift_allocObject();
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    v59 = v29;
    *(v34 + 4) = v29;
    (*(v15 + 32))(&v34[v33], v18, v14);
    v35 = v29;
    sub_224536440(0, 0, v12, &unk_224631D50, v34);

    v36 = *&v35[OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerTimerInterval];
    v37 = *&v35[OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingQueue];
    v38 = swift_allocObject();
    v39 = ObjectType;
    *(v38 + 16) = v35;
    *(v38 + 24) = v39;
    ObjectType = type metadata accessor for RepeatingTimer();
    v40 = objc_allocWithZone(ObjectType);
    v41 = OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_stateLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *&v40[v41] = v42;
    v40[OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_state] = 0;
    sub_22450950C(0, &qword_27D0C9E08);
    v43 = v35;
    v58 = v37;
    v44 = v64;
    sub_2246280E8();
    v45 = sub_224628108();
    (*(v65 + 8))(v44, v66);
    *&v40[OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_timer] = v45;
    v46 = swift_getObjectType();
    swift_unknownObjectRetain();
    v47 = v68;
    sub_224627BD8();
    v48 = v69;
    sub_224627C38();
    v49 = v71;
    v50 = *(v70 + 8);
    v50(v47, v71);
    v51 = v72;
    sub_2245B6538(v72);
    MEMORY[0x22AA515E0](v48, v51, v46, v36);
    swift_unknownObjectRelease();
    (*(v73 + 8))(v51, v74);
    v50(v48, v49);
    swift_getObjectType();
    aBlock[4] = sub_2245B2420;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224580D44;
    aBlock[3] = &block_descriptor_448;
    v52 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v53 = v75;
    sub_2245B65B8();
    v54 = v77;
    sub_2245B65BC();
    sub_224628118();
    _Block_release(v52);
    swift_unknownObjectRelease();
    (*(v79 + 8))(v54, v80);
    (*(v76 + 8))(v53, v78);

    v55 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
    *&v40[OBJC_IVAR____TtC11DockKitCore14RepeatingTimer_date] = v55;
    v81.receiver = v40;
    v81.super_class = ObjectType;
    v56 = objc_msgSendSuper2(&v81, sel_init);
    sub_2245B6854();

    (*(v61 + 8))(v62, v60);
    v57 = *&v59[v63];
    *&v59[v63] = v56;
  }
}

uint64_t sub_2245A16C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2245A16E8, 0, 0);
}

uint64_t sub_2245A16E8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerLock;
  v0[4] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerLock;
  v0[5] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2245A17B0;

  return v5();
}

uint64_t sub_2245A17B0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_2245A1924;
  v4 = *(v1 + 24);

  return sub_2245A5958(v4);
}

uint64_t sub_2245A1924()
{

  return MEMORY[0x2822009F8](sub_2245A1A20, 0, 0);
}

uint64_t sub_2245A1A20()
{
  v0[8] = *(v0[2] + v0[4]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245B2694, v2, v1);
}

uint64_t sub_2245A1AF8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_224627F58();
  v10 = sub_224627F78();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_224562284(v9, v7);
  LODWORD(a2) = (*(v11 + 48))(v7, 1, v10);
  v13 = a1;
  if (a2 == 1)
  {
    sub_2245098A0(v7, &qword_27D0C9408);
  }

  else
  {
    sub_224627F68();
    (*(v11 + 8))(v7, v10);
  }

  v14 = swift_allocObject();
  *(v14 + 16) = &unk_224631D68;
  *(v14 + 24) = v12;

  swift_task_create();
  sub_2245098A0(v9, &qword_27D0C9408);
}

uint64_t sub_2245A1D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_224627B78();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_224627838();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_224627AE8();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9DC8);
  v3[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9CD0);
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v8 = sub_224627118();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245A1FD0, 0, 0);
}

uint64_t sub_2245A1FD0()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTaskLock;
  v0[26] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingTaskLock;
  v0[27] = *(v1 + v2);
  v5 = (*MEMORY[0x277D21398] + MEMORY[0x277D21398]);

  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_2245A2098;

  return v5();
}

uint64_t sub_2245A2098(char a1)
{
  *(*v1 + 464) = a1;

  return MEMORY[0x2822009F8](sub_2245A21B8, 0, 0);
}

uint64_t sub_2245A21B8()
{
  if (*(v0 + 464) == 1)
  {
    v1 = *(v0 + 40);
    v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_observationLock;
    *(v0 + 232) = OBJC_IVAR____TtC11DockKitCore13TrackingStand_observationLock;
    *(v0 + 240) = *(v1 + v2);
    v13 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v3 = swift_task_alloc();
    *(v0 + 248) = v3;
    *v3 = v0;
    v3[1] = sub_2245A23FC;

    return v13();
  }

  else
  {
    (*(*(v0 + 64) + 16))(*(v0 + 80), *(v0 + 40) + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, *(v0 + 56));
    v5 = sub_224627B58();
    v6 = sub_224628058();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_224507000, v5, v6, "Another tracking task running, ignoring", v11, 2u);
      MEMORY[0x22AA526D0](v11, -1, -1);
    }

    (*(v10 + 8))(v8, v9);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_2245A23FC()
{

  return MEMORY[0x2822009F8](sub_2245A2514, 0, 0);
}

uint64_t sub_2245A2514()
{
  v1 = v0[29];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation;
  v0[32] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_currentObservation;
  v4 = v2 + v3;
  v5 = *v4;
  v0[33] = *v4;
  v6 = *(v4 + 8);
  v0[34] = v6;
  v0[35] = *(v2 + v1);

  sub_2245B258C(v5, v6);
  v0[36] = sub_2246274B8();
  v0[37] = sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);
  v8 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A2620, v8, v7);
}

uint64_t sub_2245A2620()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245A2690, 0, 0);
}

uint64_t sub_2245A2690()
{
  v1 = v0[34];
  if (v1)
  {
    v2 = v0[33];
    v3 = v0[5];
    v4 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
    v0[38] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
    v0[39] = *(v3 + v4);
    v11 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);
    v5 = v1;
    v6 = v2;

    v7 = swift_task_alloc();
    v0[40] = v7;
    *v7 = v0;
    v7[1] = sub_2245A27DC;

    return v11();
  }

  else
  {
    v0[42] = *(v0[5] + v0[26]);

    v10 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245A2E80, v10, v9);
  }
}

uint64_t sub_2245A27DC()
{

  return MEMORY[0x2822009F8](sub_2245A28F4, 0, 0);
}

uint64_t sub_2245A28F4()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking;
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[41] = v3;
  if (v3)
  {
    v5 = v0[33];
    v4 = v0[34];
    v7 = v0[24];
    v6 = v0[25];
    v8 = v0[23];

    sub_2246270E8();
    v9 = [v5 pixelBuffer];
    v10 = _s11DockKitCore13TrackingStandC7convert4time8metadata5image011IntelligentdC021DKObservationMetadataCSg10Foundation4DateV_AA08FollowerL0CSo11CVBufferRefaSgtFZ_0(v6, v4, v9);
    v0[43] = v10;

    (*(v7 + 8))(v6, v8);
    if (v10)
    {
      v12 = v0[21];
      v11 = v0[22];
      v13 = v0[20];
      v14 = v0[5];

      sub_224627978();
      (*(v12 + 16))(v11, v14 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__lastLatency, v13);
      sub_224627578();
      (*(v12 + 8))(v11, v13);
      sub_224627988();
      v15 = *(v14 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
      if (v15)
      {
        v16 = v15;
        v17 = ActuationController.getOrientation()();

        if (v17)
        {
          v18 = v0[19];
          v19 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
          v20 = *&v17[OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock];

          os_unfair_lock_lock(v20 + 4);

          v21 = *&v17[v19];

          os_unfair_lock_unlock(v21 + 4);

          v22 = *&v17[v19];

          os_unfair_lock_lock(v22 + 4);

          v23 = *&v17[v19];

          os_unfair_lock_unlock(v23 + 4);

          v24 = *&v17[v19];

          os_unfair_lock_lock(v24 + 4);

          v25 = *&v17[v19];

          os_unfair_lock_unlock(v25 + 4);

          sub_224627AF8();
          v26 = sub_224627B38();
          (*(*(v26 - 8) + 56))(v18, 0, 1, v26);
          sub_224627958();
        }
      }

      v28 = v0[13];
      v27 = v0[14];
      v29 = v0[11];
      v30 = v0[12];
      static TrackingStand.getCamera(metadata:)(v0[34], v0[18]);
      sub_224627A88();
      (*(v30 + 104))(v28, *MEMORY[0x277D21470], v29);
      sub_22450959C(&qword_27D0C9D78, MEMORY[0x277D21488]);
      sub_224627E38();
      sub_224627E38();
      v31 = *(v30 + 8);
      v31(v28, v29);
      v31(v27, v29);
      if (v0[3] == v0[4] && (v32 = *(v1 + v2), (v0[44] = v32) != 0))
      {
        v44 = (*MEMORY[0x277D21390] + MEMORY[0x277D21390]);

        v33 = swift_task_alloc();
        v0[45] = v33;
        *v33 = v0;
        v33[1] = sub_2245A2F5C;
        v34 = 6;
      }

      else
      {
        v35 = v0[43];
        v37 = v0[16];
        v36 = v0[17];
        v38 = v0[15];
        static TrackingStand.getCamera(metadata:)(v0[34], v36);
        sub_2246275D8();
        v39 = *(v37 + 8);
        v0[46] = v39;
        v0[47] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v39(v36, v38);
        v44 = (*MEMORY[0x277D21380] + MEMORY[0x277D21380]);
        v40 = swift_task_alloc();
        v0[48] = v40;
        *v40 = v0;
        v40[1] = sub_2245A3174;
        v34 = v35;
      }

      return v44(v34);
    }

    v1 = v0[5];
  }

  v0[50] = *(v1 + v0[38]);

  v43 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A3470, v43, v42);
}

uint64_t sub_2245A2E80()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245A2F5C()
{

  return MEMORY[0x2822009F8](sub_2245A3058, 0, 0);
}

uint64_t sub_2245A3058()
{

  v1 = v0[43];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  static TrackingStand.getCamera(metadata:)(v0[34], v2);
  sub_2246275D8();
  v5 = *(v3 + 8);
  v0[46] = v5;
  v0[47] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v8 = (*MEMORY[0x277D21380] + MEMORY[0x277D21380]);
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_2245A3174;

  return v8(v1);
}

uint64_t sub_2245A3174()
{

  return MEMORY[0x2822009F8](sub_2245A3270, 0, 0);
}

uint64_t sub_2245A3270()
{
  v0[49] = *(v0[5] + v0[38]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A3308, v2, v1);
}

uint64_t sub_2245A3308()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245A3378, 0, 0);
}

uint64_t sub_2245A3378()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);

  v1(v2, v3);
  *(v0 + 416) = *(*(v0 + 40) + *(v0 + 232));
  v6 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v4 = swift_task_alloc();
  *(v0 + 424) = v4;
  *v4 = v0;
  v4[1] = sub_2245A36CC;

  return v6();
}

uint64_t sub_2245A3470()
{
  sub_224627498();

  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_2245A3510;

  return sub_224597230();
}

uint64_t sub_2245A3510()
{

  return MEMORY[0x2822009F8](sub_2245A360C, 0, 0);
}

uint64_t sub_2245A360C()
{
  v0[52] = *(v0[5] + v0[29]);
  v3 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v1 = swift_task_alloc();
  v0[53] = v1;
  *v1 = v0;
  v1[1] = sub_2245A36CC;

  return v3();
}

uint64_t sub_2245A36CC()
{

  return MEMORY[0x2822009F8](sub_2245A37E4, 0, 0);
}

uint64_t sub_2245A37E4()
{
  v1 = v0[29];
  v2 = v0[5];
  v3 = v2 + v0[32];
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = 0;
  *(v3 + 8) = 0;
  sub_2245AF648(v4, v5);
  v0[54] = *(v2 + v1);

  v7 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A3890, v7, v6);
}

uint64_t sub_2245A3890()
{
  sub_224627498();

  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  v1[1] = sub_2245A3930;

  return sub_2245A62E0();
}

uint64_t sub_2245A3930()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_2245A3C30;
  }

  else
  {
    v2 = sub_2245A3A44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245A3A44()
{
  v0[57] = *(v0[5] + v0[26]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A3ADC, v2, v1);
}

uint64_t sub_2245A3ADC()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245A3B4C, 0, 0);
}

uint64_t sub_2245A3B4C()
{
  v1 = v0[33];
  v2 = v0[34];

  sub_2245AF648(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2245A3C30()
{
  v1 = v0[56];
  (*(v0[8] + 16))(v0[9], v0[5] + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0[7]);
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628048();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[56];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_224507000, v3, v4, "Failed to run tracker loop %@", v7, 0xCu);
    sub_2245098A0(v8, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v8, -1, -1);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v0[57] = *(v0[5] + v0[26]);

  v12 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A3ADC, v12, v11);
}

uint64_t sub_2245A3E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2246273E8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v7 = sub_224627B38();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = sub_224627B78();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245A3F9C, 0, 0);
}

uint64_t sub_2245A3F9C()
{
  v0[15] = *(v0[2] + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationLock);
  v3 = (*MEMORY[0x277D21398] + MEMORY[0x277D21398]);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_2245A4050;

  return v3();
}

uint64_t sub_2245A4050(char a1)
{
  *(*v1 + 241) = a1;

  return MEMORY[0x2822009F8](sub_2245A4150, 0, 0);
}

uint64_t sub_2245A4150()
{
  if (*(v0 + 241) == 1)
  {
    v1 = *(v0 + 16);
    v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
    *(v0 + 136) = v2;
    if (v2)
    {
      v4 = *(v0 + 72);
      v3 = *(v0 + 80);
      v5 = *(v0 + 64);
      v6 = objc_allocWithZone(type metadata accessor for Orientation());
      v2;
      v7 = [v6 init];
      *(v0 + 144) = v7;
      sub_2246273C8();
      sub_224627B08();
      v9 = v8;
      v10 = *(v4 + 8);
      *(v0 + 152) = v10;
      *(v0 + 160) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v10(v3, v5);
      v11 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
      v12 = *&v7[OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock];

      os_unfair_lock_lock(v12 + 4);

      *&v7[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = v9;
      v13 = *&v7[v11];

      os_unfair_lock_unlock(v13 + 4);

      sub_2246273C8();
      sub_224627B18();
      v15 = v14;
      v10(v3, v5);
      v16 = *&v7[v11];

      os_unfair_lock_lock(v16 + 4);

      *&v7[OBJC_IVAR____TtC11DockKitCore11Orientation__pitch] = v15;
      v17 = *&v7[v11];

      os_unfair_lock_unlock(v17 + 4);

      if (sub_2246273A8())
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      v19 = sub_2246273D8();
      sub_2246273B8();
      v21 = v20;
      *(v0 + 240) = v18;
      v22 = swift_task_alloc();
      *(v0 + 168) = v22;
      *(v22 + 16) = v1;
      v23 = swift_task_alloc();
      *(v0 + 176) = v23;
      *v23 = v0;
      v23[1] = sub_2245A44F8;

      return ActuationController.setOrientation(orientation:relative:duration:priority:progressCallback:)(v7, v19 & 1, (v0 + 240), sub_2245B1C58, v22, v21);
    }

    (*(*(v0 + 96) + 16))(*(v0 + 112), v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, *(v0 + 88));
    v25 = sub_224627B58();
    v26 = sub_224628048();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 112);
    v29 = *(v0 + 88);
    v30 = *(v0 + 96);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_224507000, v25, v26, "Failed to set position : ActuationController not initilized", v31, 2u);
      MEMORY[0x22AA526D0](v31, -1, -1);
    }

    (*(v30 + 8))(v28, v29);
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2245A44F8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2245A4770;
  }

  else
  {

    v2 = sub_2245A4614;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245A4614()
{
  v1 = *(v0 + 136);

  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);
  v3 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A46D8, v3, v2);
}

uint64_t sub_2245A46D8()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245A4770()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v37 = *(v0 + 56);
  v39 = *(v0 + 48);
  v41 = *(v0 + 184);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  (*(v3 + 16))(v2, v7 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
  v9 = *(v5 + 16);
  v9(v37, v8, v6);
  v9(v39, v8, v6);
  v10 = v41;
  v11 = sub_224627B58();
  v12 = sub_224628048();

  if (os_log_type_enabled(v11, v12))
  {
    v40 = v11;
    v42 = *(v0 + 184);
    v13 = *(v0 + 152);
    v14 = *(v0 + 80);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 40);
    v36 = *(v0 + 48);
    v18 = *(v0 + 32);
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v19 = 134218498;
    sub_2246273C8();
    sub_224627B08();
    v21 = v20;
    v13(v14, v15);
    v22 = *(v17 + 8);
    v22(v16, v18);
    *(v19 + 4) = v21;
    *(v19 + 12) = 2048;
    sub_2246273C8();
    sub_224627B18();
    v24 = v23;
    v13(v14, v15);
    v22(v36, v18);
    *(v19 + 14) = v24;
    *(v19 + 22) = 2112;
    v25 = v42;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v26;
    *v38 = v26;
    _os_log_impl(&dword_224507000, v40, v12, "Failed to set position (x: %f, y: %f) with error:  %@", v19, 0x20u);
    sub_2245098A0(v38, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v38, -1, -1);
    MEMORY[0x22AA526D0](v19, -1, -1);
  }

  else
  {
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 32);
    v30 = *(v0 + 40);

    v31 = *(v30 + 8);
    v31(v28, v29);
    v31(v27, v29);
  }

  v32 = *(v0 + 16);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v33 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  *(v0 + 192) = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  *(v0 + 200) = *(v32 + v33);
  v43 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v34 = swift_task_alloc();
  *(v0 + 208) = v34;
  *v34 = v0;
  v34[1] = sub_2245A4AE8;

  return v43();
}

uint64_t sub_2245A4AE8()
{

  return MEMORY[0x2822009F8](sub_2245A4C00, 0, 0);
}

uint64_t sub_2245A4C00()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[27] = v2;
  if (v2)
  {
    v7 = (*MEMORY[0x277D21390] + MEMORY[0x277D21390]);

    v3 = swift_task_alloc();
    v0[28] = v3;
    *v3 = v0;
    v3[1] = sub_2245A4D78;

    return v7(0);
  }

  else
  {
    v0[29] = *(v1 + v0[24]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v6 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245A4F68, v6, v5);
  }
}

uint64_t sub_2245A4D78()
{

  return MEMORY[0x2822009F8](sub_2245A4E90, 0, 0);
}

uint64_t sub_2245A4E90()
{
  v0[29] = *(v0[2] + v0[24]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A4F68, v2, v1);
}

uint64_t sub_2245A4F68()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245A4FD8, 0, 0);
}

uint64_t sub_2245A4FD8()
{
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);
  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A46D8, v2, v1);
}

uint64_t sub_2245A5098(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  if (*(a1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_status) - 1 <= 2)
  {
    v8 = sub_224627F78();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v10 = a2;
    sub_224536440(0, 0, v7, &unk_224631C40, v9);
  }

  return result;
}

uint64_t sub_2245A51C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224627B78();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245A5280, 0, 0);
}

uint64_t sub_2245A5280()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[6] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
  v0[7] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2245A5348;

  return v5();
}

uint64_t sub_2245A5348()
{

  return MEMORY[0x2822009F8](sub_2245A5460, 0, 0);
}

uint64_t sub_2245A5460()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[9] = v2;
  if (v2)
  {
    v7 = (*MEMORY[0x277D21390] + MEMORY[0x277D21390]);

    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_2245A55D8;

    return v7(0);
  }

  else
  {
    v0[11] = *(v1 + v0[6]);
    sub_2246274B8();
    sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v6 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245A57C8, v6, v5);
  }
}

uint64_t sub_2245A55D8()
{

  return MEMORY[0x2822009F8](sub_2245A56F0, 0, 0);
}

uint64_t sub_2245A56F0()
{
  v0[11] = *(v0[2] + v0[6]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A57C8, v2, v1);
}

uint64_t sub_2245A57C8()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245A5838, 0, 0);
}

uint64_t sub_2245A5838()
{
  (*(v0[4] + 16))(v0[5], v0[2] + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0[3]);
  v1 = sub_224627B58();
  v2 = sub_224628048();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "trajectory finished", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2245A5958(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_224627418();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_224627B78();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v5 = sub_224627B38();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245A5B00, 0, 0);
}

uint64_t sub_2245A5B00()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  v0[17] = v2;
  if (v2)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[12];
    v6 = v0[13];
    v2;
    sub_2246273F8();
    sub_224627B08();
    v8 = v7;
    v9 = *(v6 + 8);
    v0[18] = v9;
    v0[19] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v3, v5);
    sub_2246273F8();
    sub_224627B18();
    v11 = v10;
    v9(v4, v5);
    v12 = swift_task_alloc();
    v0[20] = v12;
    *v12 = v0;
    v12[1] = sub_2245A5D94;

    return ActuationController.setRotationalVelocity(yaw:pitch:roll:)(v8, v11, INFINITY);
  }

  else
  {
    (*(v0[9] + 16))(v0[11], v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0[8]);
    v14 = sub_224627B58();
    v15 = sub_224628048();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[11];
    v18 = v0[8];
    v19 = v0[9];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_224507000, v14, v15, "Failed to set velocity : ActuationController not initilized", v20, 2u);
      MEMORY[0x22AA526D0](v20, -1, -1);
    }

    (*(v19 + 8))(v17, v18);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_2245A5D94()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2245A5F5C;
  }

  else
  {
    v2 = sub_2245A5EA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245A5EA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245A5F5C()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v45 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  (*(v3 + 16))(v2, v7 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
  v10 = *(v6 + 16);
  v10(v5, v9, v8);
  v10(v45, v9, v8);
  v11 = v1;
  v12 = sub_224627B58();
  v13 = sub_224628048();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 168);
  if (v14)
  {
    v16 = *(v0 + 144);
    v42 = *(v0 + 168);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);
    v43 = *(v0 + 72);
    v19 = *(v0 + 56);
    v44 = *(v0 + 64);
    v46 = *(v0 + 80);
    v20 = *(v0 + 40);
    v40 = *(v0 + 48);
    v39 = *(v0 + 32);
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v21 = 134218498;
    sub_2246273F8();
    sub_224627B08();
    v23 = v22;
    v16(v17, v18);
    v24 = *(v20 + 8);
    v24(v19, v39);
    *(v21 + 4) = v23;
    *(v21 + 12) = 2048;
    sub_2246273F8();
    sub_224627B18();
    v26 = v25;
    v16(v17, v18);
    v24(v40, v39);
    *(v21 + 14) = v26;
    *(v21 + 22) = 2112;
    v27 = v42;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 24) = v28;
    *v41 = v28;
    _os_log_impl(&dword_224507000, v12, v13, "Failed to set velocity (x: %f, y: %f) with error:  %@", v21, 0x20u);
    sub_2245098A0(v41, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v41, -1, -1);
    MEMORY[0x22AA526D0](v21, -1, -1);

    (*(v43 + 8))(v46, v44);
  }

  else
  {
    v30 = *(v0 + 72);
    v29 = *(v0 + 80);
    v32 = *(v0 + 56);
    v31 = *(v0 + 64);
    v34 = *(v0 + 40);
    v33 = *(v0 + 48);
    v35 = *(v0 + 32);

    v36 = *(v34 + 8);
    v36(v33, v35);
    v36(v32, v35);
    (*(v30 + 8))(v29, v31);
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2245A62E0()
{
  v1[3] = v0;
  v2 = sub_2246275B8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_224627B88();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_224627BE8();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  v1[15] = swift_task_alloc();
  v5 = sub_2246273E8();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v1[18] = *(v6 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = sub_224627418();
  v1[21] = v7;
  v1[22] = *(v7 - 8);
  v1[23] = swift_task_alloc();
  v8 = sub_224627428();
  v1[24] = v8;
  v1[25] = *(v8 - 8);
  v1[26] = swift_task_alloc();
  v9 = sub_224627118();
  v1[27] = v9;
  v1[28] = *(v9 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v10 = sub_224627B78();
  v1[31] = v10;
  v1[32] = *(v10 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245A66B8, 0, 0);
}

uint64_t sub_2245A66B8()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore;
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonSemaphore);
  sub_224628148();

  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand__trackingButtonEnabled);
  v5 = *(v1 + v2);
  sub_224628158();

  if (v4)
  {
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerLock;
    v0[41] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackerLock;
    v0[42] = *(v6 + v7);
    v19 = (*MEMORY[0x277D21398] + MEMORY[0x277D21398]);

    v8 = swift_task_alloc();
    v0[43] = v8;
    *v8 = v0;
    v9 = sub_2245A6C54;
  }

  else
  {
    (*(v0[32] + 16))(v0[36], v0[3] + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0[31]);
    v10 = sub_224627B58();
    v11 = sub_224628058();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_224507000, v10, v11, "tracking disabled at start of track(), dropping", v12, 2u);
      MEMORY[0x22AA526D0](v12, -1, -1);
    }

    v13 = v0[36];
    v14 = v0[31];
    v15 = v0[32];
    v16 = v0[3];

    (*(v15 + 8))(v13, v14);
    v17 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
    v0[37] = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
    v0[38] = *(v16 + v17);
    v19 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v8 = swift_task_alloc();
    v0[39] = v8;
    *v8 = v0;
    v9 = sub_2245A6900;
  }

  v8[1] = v9;

  return v19();
}

uint64_t sub_2245A6900()
{

  return MEMORY[0x2822009F8](sub_2245A6A18, 0, 0);
}

uint64_t sub_2245A6A18()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking))
  {

    sub_224627448();

    v1 = v0[3];
  }

  v0[40] = *(v1 + v0[37]);
  sub_2246274B8();
  sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

  v3 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245A6B18, v3, v2);
}

uint64_t sub_2245A6B18()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245A6C54(char a1)
{
  *(*v1 + 584) = a1;

  return MEMORY[0x2822009F8](sub_2245A6D74, 0, 0);
}

uint64_t sub_2245A6D74()
{
  if (*(v0 + 584) == 1)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
    v3 = *(v0 + 24);
    sub_2246270E8();
    v4 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingMetrics;
    *(v0 + 352) = OBJC_IVAR____TtC11DockKitCore13TrackingStand_trackingMetrics;
    v5 = *(v3 + v4);
    v6 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackingMode;
    v7 = *(v2 + 8);
    *(v0 + 360) = v7;
    *(v0 + 368) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

    v7(v5 + v6, v1);
    v8 = *MEMORY[0x277D213F0];
    v9 = *(v2 + 104);
    *(v0 + 376) = v9;
    *(v0 + 384) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v9(v5 + v6, v8, v1);

    v10 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
    *(v0 + 392) = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
    *(v0 + 400) = *(v3 + v10);
    v16 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v11 = swift_task_alloc();
    *(v0 + 408) = v11;
    *v11 = v0;
    v12 = sub_2245A6F60;
  }

  else
  {
    v13 = *(v0 + 24);
    v14 = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
    *(v0 + 552) = OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTrackingLock;
    *(v0 + 560) = *(v13 + v14);
    v16 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v11 = swift_task_alloc();
    *(v0 + 568) = v11;
    *v11 = v0;
    v12 = sub_2245A84D4;
  }

  v11[1] = v12;

  return v16();
}

uint64_t sub_2245A6F60()
{

  return MEMORY[0x2822009F8](sub_2245A7078, 0, 0);
}

uint64_t sub_2245A7078()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_intelligentTracking);
  v0[52] = v2;
  if (v2)
  {

    sub_2246270E8();
    v8 = (*MEMORY[0x277D21368] + MEMORY[0x277D21368]);
    v3 = swift_task_alloc();
    v0[53] = v3;
    *v3 = v0;
    v3[1] = sub_2245A7204;
    v4 = v0[29];

    return v8(v4);
  }

  else
  {
    v0[63] = *(v1 + v0[49]);
    v0[64] = sub_2246274B8();
    v0[65] = sub_22450959C(&qword_280C51570, MEMORY[0x277D213A8]);

    v7 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245A8118, v7, v6);
  }
}

uint64_t sub_2245A7204(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  *(*v1 + 432) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2245A7364, 0, 0);
}

uint64_t sub_2245A7364()
{
  if (v0[54])
  {
    v2 = v0[25];
    v1 = v0[26];
    v3 = v0[24];
    sub_224627438();
    v4 = (*(v2 + 88))(v1, v3);
    if (v4 == *MEMORY[0x277D21340])
    {
      v5 = v0[34];
      v6 = v0[31];
      v7 = v0[32];
      v8 = v0[26];
      v9 = v0[23];
      v10 = v0[21];
      v11 = v0[22];
      v12 = v0[3];
      (*(v0[25] + 96))(v8, v0[24]);
      (*(v11 + 32))(v9, v8, v10);
      (*(v7 + 16))(v5, v12 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v6);
      v13 = sub_224627B58();
      v14 = sub_224628038();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_224507000, v13, v14, "Track command: velocity", v15, 2u);
        MEMORY[0x22AA526D0](v15, -1, -1);
      }

      v16 = v0[34];
      v17 = v0[31];
      v18 = v0[32];

      (*(v18 + 8))(v16, v17);
      v19 = swift_task_alloc();
      v0[55] = v19;
      *v19 = v0;
      v19[1] = sub_2245A7954;
      v20 = v0[23];

      return sub_2245A5958(v20);
    }

    if (v4 == *MEMORY[0x277D21338])
    {
      v23 = v0[32];
      v22 = v0[33];
      v24 = v0[31];
      v25 = v0[26];
      v26 = v0[20];
      v27 = v0[16];
      v28 = v0[17];
      v29 = v0[3];
      (*(v0[25] + 96))(v25, v0[24]);
      v58 = *(v28 + 32);
      v58(v26, v25, v27);
      (*(v23 + 16))(v22, v29 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v24);
      v30 = sub_224627B58();
      v31 = sub_224628038();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_224507000, v30, v31, "Track command: position", v32, 2u);
        MEMORY[0x22AA526D0](v32, -1, -1);
      }

      v33 = v0[32];
      v34 = v0[33];
      v35 = v0[31];
      v36 = v0[19];
      v37 = v0[17];
      v56 = v0[20];
      v39 = v0[15];
      v38 = v0[16];
      v57 = v0[3];

      (*(v33 + 8))(v34, v35);
      v40 = sub_224627F78();
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
      (*(v37 + 16))(v36, v56, v38);
      v41 = (*(v37 + 80) + 40) & ~*(v37 + 80);
      v42 = swift_allocObject();
      *(v42 + 2) = 0;
      *(v42 + 3) = 0;
      *(v42 + 4) = v57;
      v58(&v42[v41], v36, v38);
      v43 = v57;
      sub_224536440(0, 0, v39, &unk_224631C30, v42);

      (*(v37 + 8))(v56, v38);
    }

    else if (v4 == *MEMORY[0x277D21330])
    {
      (*(v0[32] + 16))(v0[35], v0[3] + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v0[31]);
      v44 = sub_224627B58();
      v45 = sub_224628038();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v0[35];
      v48 = v0[31];
      v49 = v0[32];
      if (v46)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_224507000, v44, v45, "Track command: no command", v50, 2u);
        MEMORY[0x22AA526D0](v50, -1, -1);
      }

      (*(v49 + 8))(v47, v48);
    }

    else
    {
      v52 = v0[25];
      v51 = v0[26];
      v53 = v0[24];

      (*(v52 + 8))(v51, v53);
    }
  }

  v54 = v0[3];
  v0[56] = sub_224627468();

  sub_224627528();

  sub_2246272F8();
  v55 = *(v54 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_referenceDimension);
  v0[57] = v55;

  return MEMORY[0x2822009F8](sub_2245A7B44, v55, 0);
}