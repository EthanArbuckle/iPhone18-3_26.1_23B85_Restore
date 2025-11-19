uint64_t sub_1AE4D9968(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD570, &qword_1AE4EDBD8);
  v36 = a2;
  result = sub_1AE4EB170();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v22 = (*(v5 + 48) + 40 * v21);
      v23 = v22[1];
      v39 = *v22;
      v24 = v22[2];
      v37 = v22[4];
      v38 = v22[3];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1AE4EB260();
      sub_1AE4EADC0();
      MEMORY[0x1B2701710](v24);
      MEMORY[0x1B2701710](v38);
      MEMORY[0x1B2701710](v37);
      result = sub_1AE4EB290();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 40 * v16);
      *v17 = v39;
      v17[1] = v23;
      v17[2] = v24;
      v17[3] = v38;
      v17[4] = v37;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1AE4D9C5C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1AE4EAC50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x1EEE9AC00])();
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD620, &qword_1AE4EDC50);
  v49 = a2;
  result = sub_1AE4EB170();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_1AE4AA0A8(&qword_1EB5DD1A8, MEMORY[0x1E69E83A8]);
      result = sub_1AE4EACE0();
      v35 = -1 << *(v33 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
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
          v41 = *(v21 + 8 * v37);
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

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

uint64_t sub_1AE4DA0A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD530, &qword_1AE4EDBA8);
  v39 = a2;
  result = sub_1AE4EB170();
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
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v27 = *v26;
      v40 = *(v26 + 8);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1AE4EB260();
      sub_1AE4EADC0();
      result = sub_1AE4EB290();
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
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v27;
      *(v18 + 8) = v40;
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

uint64_t sub_1AE4DA370(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1AE4EAB10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD528, &qword_1AE4EDBA0);
  v50 = a2;
  result = sub_1AE4EB170();
  v14 = result;
  if (*(v11 + 16))
  {
    v56 = v10;
    v46 = v3;
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
    v47 = (v7 + 16);
    v48 = v11;
    v49 = v7;
    v51 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v55 = *(v49 + 72);
      v30 = v29 + v55 * v28;
      if (v50)
      {
        (*v51)(v56, v30, v6);
        v31 = (*(v11 + 56) + 24 * v28);
        v32 = *v31;
        v53 = v31[1];
        v54 = v32;
        v52 = v31[2];
      }

      else
      {
        (*v47)(v56, v30, v6);
        v33 = (*(v11 + 56) + 24 * v28);
        v34 = *v33;
        v35 = v33[1];
        v52 = v33[2];
        v53 = v35;
        v54 = v34;
      }

      v36 = *(v14 + 40);
      sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
      result = sub_1AE4EACE0();
      v37 = -1 << *(v14 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v21 + 8 * (v38 >> 6))) == 0)
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
          v43 = *(v21 + 8 * v39);
          if (v43 != -1)
          {
            v22 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v38) & ~*(v21 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v51)(*(v14 + 48) + v55 * v22, v56, v6);
      v23 = (*(v14 + 56) + 24 * v22);
      v24 = v53;
      *v23 = v54;
      v23[1] = v24;
      v23[2] = v52;
      ++*(v14 + 16);
      v11 = v48;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v11 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v16, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v44;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_1AE4DA77C(uint64_t a1, unsigned int a2, char a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v10 = v6;
  v14 = *v6;
  result = sub_1AE4E8EEC(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 < v20 || (a3 & 1) != 0)
    {
      sub_1AE4D96FC(v20, a3 & 1, a5, a6);
      v24 = *v10;
      result = sub_1AE4E8EEC(a2);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_1AE4EB1C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a4();
      result = v23;
    }
  }

  v26 = *v10;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + 4 * result) = a2;
    *(v26[7] + 8 * result) = a1;
    v29 = v26[2];
    v19 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v19)
    {
      v26[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7];
  v28 = *(v27 + 8 * result);
  *(v27 + 8 * result) = a1;
}

uint64_t sub_1AE4DA8F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AE4E8F34(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AE4D9968(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_1AE4E8F34(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        result = sub_1AE4EB1C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1AE4E9D08();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  v24 = v20[6] + 40 * v9;
  v25 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a2 + 32);
  *(v20[7] + 8 * v9) = a1;
  v26 = v20[2];
  v13 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v27;
  v28 = *(a2 + 8);
}

uint64_t sub_1AE4DAA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1AE4E8FE4(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1AE4DA0A8(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_1AE4E8FE4(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1AE4EB1C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1AE4EA154();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = *v27;
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a4;
  v30[1] = a5;
  v31 = (v26[7] + 24 * v15);
  *v31 = a1;
  v31[1] = a2;
  v31[2] = a3;
  v32 = v26[2];
  v19 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v33;
}

uint64_t sub_1AE4DAC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v31 = a1;
  v32 = a2;
  v10 = sub_1AE4EAB10();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_1AE4B4484(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_1AE4EA2DC();
      goto LABEL_9;
    }

    sub_1AE4DA370(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_1AE4B4484(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1AE4EB1C0();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v32;
  v27 = *v6;
  if (v21)
  {
    v28 = (v27[7] + 24 * v17);
    v29 = *v28;
    *v28 = v31;
    v28[1] = v26;
    v28[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    return sub_1AE4DAED8(v17, v14, v31, v26, a3, v27);
  }
}

uint64_t sub_1AE4DADFC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AE4EAC50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1AE4DAED8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_1AE4EAB10();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

unint64_t sub_1AE4DAFAC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B27020C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B27020C0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1AE4DB038(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B2701540](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1AE4DB0B8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4DB0C0(uint64_t a1, uint64_t a2)
{
  v51 = sub_1AE4EAB10();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v51);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - v8;
  v10 = type metadata accessor for FileIdentifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v48 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D0, &qword_1AE4EDB50);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v48 - v23;
  v25 = (&v48 + *(v22 + 56) - v23);
  sub_1AE4DB620(a1, &v48 - v23);
  sub_1AE4DB620(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1AE4DB620(v24, v17);
      v28 = *v17;
      v27 = v17[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v28 != *v25 || v27 != v25[1])
        {
          v30 = v25[1];
          v31 = sub_1AE4EB190();

          if (v31)
          {
            goto LABEL_29;
          }

          goto LABEL_26;
        }

        v46 = v25[1];

LABEL_29:
        sub_1AE4DB5C0(v24, type metadata accessor for FileIdentifier);
        v44 = 1;
        return v44 & 1;
      }
    }

    else
    {
      sub_1AE4DB620(v24, v14);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4D8, &qword_1AE4EDB58) + 48);
      v34 = *&v14[v32];
      v33 = *&v14[v32 + 8];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v35 = *(v25 + v32);
        v36 = *(v25 + v32 + 8);
        v49 = v35;
        v37 = v50;
        v38 = v51;
        (*(v4 + 32))(v50, v25, v51);
        v39 = sub_1AE4EAAE0();
        v40 = *(v4 + 8);
        v40(v14, v38);
        if (v39)
        {
          if (v34 == v49 && v33 == v36)
          {

            v40(v50, v38);
            goto LABEL_29;
          }

          v42 = sub_1AE4EB190();

          v40(v50, v38);
          if (v42)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v40(v37, v38);
        }

LABEL_26:
        sub_1AE4DB5C0(v24, type metadata accessor for FileIdentifier);
        goto LABEL_27;
      }

      (*(v4 + 8))(v14, v51);
    }

LABEL_22:
    sub_1AE4B4558(v24, &qword_1EB5DD4D0, &qword_1AE4EDB50);
LABEL_27:
    v44 = 0;
    return v44 & 1;
  }

  sub_1AE4DB620(v24, v19);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v4 + 8))(v19, v51);
    goto LABEL_22;
  }

  v43 = v51;
  (*(v4 + 32))(v9, v25, v51);
  v44 = sub_1AE4EAAE0();
  v45 = *(v4 + 8);
  v45(v9, v43);
  v45(v19, v43);
  sub_1AE4DB5C0(v24, type metadata accessor for FileIdentifier);
  return v44 & 1;
}

uint64_t sub_1AE4DB5C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AE4DB620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE4DB684(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0xE0) == 0x60)
  {
  }

  return result;
}

uint64_t sub_1AE4DB69C(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v2 = type metadata accessor for Image.Info(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v18 = type metadata accessor for FileIdentifier(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = (&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v42 - v23);
  sub_1AE4B55F8(v11);
  sub_1AE4B441C(v11, v17, &qword_1EB5DD4B8, "R3");
  sub_1AE4DB5C0(v11, type metadata accessor for Image.Info);
  sub_1AE4B55F8(v9);
  v43 = v2;
  v25 = &v9[*(v2 + 20)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v28 = v25[16];
  sub_1AE4BA890(*v25, v27, v25[16]);
  sub_1AE4DB5C0(v9, type metadata accessor for Image.Info);
  if (v28 == 255)
  {
    v29 = 0;
    v31 = 0;
  }

  else
  {
    v29 = sub_1AE4BB8CC(v26, v27, v28 & 1);
    v31 = v30;
    sub_1AE4BA998(v26, v27, v28);
  }

  sub_1AE4CBD90(v17, v29, v31, v24);
  sub_1AE4B55F8(v11);
  v32 = v45;
  sub_1AE4B441C(v11, v45, &qword_1EB5DD4B8, "R3");
  sub_1AE4DB5C0(v11, type metadata accessor for Image.Info);
  sub_1AE4B55F8(v6);
  v33 = &v6[*(v43 + 20)];
  v34 = *v33;
  v35 = *(v33 + 1);
  v36 = v33[16];
  sub_1AE4BA890(*v33, v35, v33[16]);
  sub_1AE4DB5C0(v6, type metadata accessor for Image.Info);
  if (v36 == 255)
  {
    v37 = 0;
    v39 = 0;
  }

  else
  {
    v37 = sub_1AE4BB8CC(v34, v35, v36 & 1);
    v39 = v38;
    sub_1AE4BA998(v34, v35, v36);
  }

  sub_1AE4CBD90(v32, v37, v39, v22);
  v40 = sub_1AE4DB0C0(v24, v22);
  sub_1AE4DB5C0(v22, type metadata accessor for FileIdentifier);
  sub_1AE4DB5C0(v24, type metadata accessor for FileIdentifier);
  return v40 & 1;
}

uint64_t sub_1AE4DBA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    *(&v67 + 6) = 0;
    *&v67 = 0;
    if (v7 > 0)
    {
      __break(1u);
LABEL_84:
      v48 = v6 + v7;
      goto LABEL_85;
    }

    if (v7 < 0)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      if (v5)
      {
        goto LABEL_87;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      if (!v5)
      {
        __break(1u);
      }

      goto LABEL_87;
    }

    *&v69 = &v67;
    *(&v69 + 1) = &v67;
    *&v70 = 1;
    BYTE8(v70) = 64;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v44 = swift_allocError();
    *v55 = &v67;
    *(v55 + 8) = &v67;
    *(v55 + 16) = 1;
    *(v55 + 24) = 64;
    while (1)
    {
LABEL_86:
      v65 = v44;
      v50 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v51 = v69;
      v52 = v70;
      v53 = BYTE8(v70);
      v67 = v69;
      *&v68 = v70;
      BYTE8(v68) = BYTE8(v70);
      v5 = sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      swift_allocError();
      *v54 = v51;
      *(v54 + 16) = v52;
      *(v54 + 24) = v53;
      swift_unexpectedError();
      __break(1u);
LABEL_87:
      v48 = &v5[v7];
      v5 += v3;
LABEL_85:
      *&v67 = v48;
      *(&v67 + 1) = v5;
      *&v68 = 1;
      BYTE8(v68) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v44 = swift_allocError();
      *v49 = v48;
      *(v49 + 8) = v5;
      *(v49 + 16) = 1;
      *(v49 + 24) = 64;
    }
  }

  v8 = a3;
  result = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1AE4EB0F0();
    v10 = 0;
    v6 = &v59;
    v56 = v8;
    while (1)
    {
      if (v8 == v10)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
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

      v11 = sub_1AE4B9974(v10, a1, a2, v8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 64))();
      v7 = v13;
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v3 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        break;
      }

      if (v3)
      {
        v26 = v14;
        v27 = v14 >> 32;
        v6 = (v27 - v26);
        if (v27 < v26)
        {
          goto LABEL_57;
        }

        v5 = sub_1AE4EA990();
        if (v5)
        {
          v28 = sub_1AE4EA9B0();
          if (__OFSUB__(v26, v28))
          {
            goto LABEL_67;
          }

          v5 += v26 - v28;
        }

        v29 = sub_1AE4EA9A0();
        if (v29 >= v6)
        {
          v30 = v6;
        }

        else
        {
          v30 = v29;
        }

        v23 = v30 + v5;
        if (v5)
        {
          v31 = v23;
        }

        else
        {
          v31 = 0;
        }

        v3 = v31 - v5;
        if (v5)
        {
          v32 = v3;
        }

        else
        {
          v32 = 0;
        }

        if (v32 < v7)
        {
          goto LABEL_61;
        }

        if (v7 < 0)
        {
          goto LABEL_63;
        }

        if (v32 <= v7)
        {
          goto LABEL_73;
        }

        v8 = v56;
        v6 = &v59;
        if (!v5)
        {
          goto LABEL_72;
        }

        if (v3 <= v7)
        {
          goto LABEL_64;
        }

        goto LABEL_49;
      }

      v59 = *(v11 + 16);
      v60 = v15;
      v61 = BYTE2(v15);
      v3 = HIDWORD(v15);
      v62 = BYTE3(v15);
      v63 = BYTE4(v15);
      v64 = BYTE5(v15);
      if (BYTE6(v15) < v13)
      {
        goto LABEL_56;
      }

      if (v13 < 0)
      {
        goto LABEL_59;
      }

      v5 = &v59 + BYTE6(v15);
      if (BYTE6(v15) <= v13)
      {
        goto LABEL_84;
      }

      v16 = *(&v59 + v13);
      *&v69 = v13 + 1;
      *(&v69 + 1) = BYTE6(v15);
      *&v70 = &v59;
      *(&v70 + 1) = &v59 + BYTE6(v15);
LABEL_50:
      sub_1AE4A65CC(v16);
      v7 = v36;
      if (v4)
      {
        v41 = v33;
        v42 = v34;
        v43 = v35;
        sub_1AE4C78AC();
        v44 = swift_allocError();
        *v45 = v7;
        *(v45 + 8) = v41;
        *(v45 + 16) = v42;
        *(v45 + 24) = v43;
        goto LABEL_86;
      }

      v37 = v16 >> 4;
      if (v16 >> 4 != 13)
      {
        if (v37 <= 0xA && ((1 << v37) & 0x472) != 0)
        {
          *&v68 = 0;
          v67 = 6uLL;
          BYTE8(v68) = 0x80;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v44 = swift_allocError();
          *(v46 + 8) = 0;
          *(v46 + 16) = 0;
          *v46 = 6;
          *(v46 + 24) = 0x80;
        }

        else
        {
          sub_1AE4C78AC();
          v44 = swift_allocError();
          *(v47 + 8) = 0;
          *(v47 + 16) = 0;
          *v47 = 0;
          *(v47 + 24) = 0x80;
          swift_willThrow();
        }

        goto LABEL_86;
      }

      v67 = v69;
      v68 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();
      v38 = v65;
      ++v10;
      swift_weakLoadStrong();
      type metadata accessor for SubCache.Impl();
      v5 = swift_allocObject();
      swift_weakInit();
      *(v5 + 2) = v11;
      *(v5 + 3) = v38;
      *(v5 + 4) = v7;
      swift_weakAssign();

      sub_1AE4EB0D0();
      v39 = *(v66 + 16);
      sub_1AE4EB100();
      sub_1AE4EB110();
      sub_1AE4EB0E0();
      if (v8 == v10)
      {
        result = v66;
        goto LABEL_54;
      }
    }

    if (v3 != 2)
    {
      goto LABEL_69;
    }

    v6 = *(v14 + 16);
    v17 = *(v14 + 24);
    v5 = sub_1AE4EA990();
    if (v5)
    {
      v18 = sub_1AE4EA9B0();
      if (__OFSUB__(v6, v18))
      {
        goto LABEL_66;
      }

      v5 = &v5[v6 - v18];
    }

    v19 = __OFSUB__(v17, v6);
    v20 = v17 - v6;
    if (v19)
    {
      goto LABEL_58;
    }

    v21 = sub_1AE4EA9A0();
    if (v21 >= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    v23 = &v5[v22];
    if (v5)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v3 = v24 - v5;
    if (v5)
    {
      v25 = v3;
    }

    else
    {
      v25 = 0;
    }

    if (v25 < v7)
    {
      goto LABEL_60;
    }

    if (v7 < 0)
    {
      goto LABEL_62;
    }

    if (v25 <= v7)
    {
      goto LABEL_76;
    }

    v8 = v56;
    v6 = &v59;
    if (!v5)
    {
      goto LABEL_75;
    }

    if (v3 <= v7)
    {
      goto LABEL_65;
    }

LABEL_49:
    v16 = v5[v7];
    *&v69 = v7 + 1;
    *(&v69 + 1) = v3;
    *&v70 = v5;
    *(&v70 + 1) = v23;
    goto LABEL_50;
  }

LABEL_54:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4DC0D0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37[-v5];
  v7 = sub_1AE4EAB10();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = v0[6];
  if (!result)
  {
    v12 = v0[2];
    v13 = v0[3];
    v14 = v0[4];
    v15 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v12, v13, v14);
    if (v15)
    {
      v2 = sub_1AE4AEC7C(v15, v16);
      v1 = v19;

      sub_1AE4B0730(v2, v1);
      v20 = sub_1AE4AC6E0(1935897444, 0xE400000000000000, 0, v12, v13, v14);
      if (v20)
      {
        v1 = v20;
        v12 = sub_1AE4B9FBC(v20);
        v14 = v21;
        v13 = v22;

        v23 = sub_1AE4DBA6C(v12, v14, v13);

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v12 = v0;
          v13 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
          v25 = Strong;
          swift_beginAccess();
          sub_1AE4B441C(v25 + v13, v6, &qword_1EB5DD520, &qword_1AE4EDB98);

          v26 = sub_1AE4EAC50();
          if ((*(*(v26 - 8) + 48))(v6, 1, v26) != 1)
          {
            v27 = type metadata accessor for SharedCacheMapper(0);
            v28 = *(v27 + 48);
            v29 = *(v27 + 52);
            v30 = swift_allocObject();
            sub_1AE4D4348(v10, v23, v6);
            v31 = *(v12 + 48);
            *(v12 + 48) = v30;

            result = *(v12 + 48);
            if (result)
            {
              return result;
            }

LABEL_12:
            __break(1u);
            v32 = v17;
            v33 = v18;
            sub_1AE4C78AC();
            swift_allocError();
            *v34 = v2;
            *(v34 + 8) = v1;
            *(v34 + 16) = v32;
            *(v34 + 24) = v33;
            swift_unexpectedError();
            __break(1u);
            LOBYTE(v32) = v35;
            sub_1AE4C78AC();
            swift_allocError();
            *v36 = v12;
            *(v36 + 8) = v14;
            *(v36 + 16) = v13;
            *(v36 + 24) = v32;
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

LABEL_11:
          __break(1u);
          goto LABEL_12;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1AE4DC3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
    goto LABEL_71;
  }

  v10 = v6;
  v11 = a3;
  result = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v83 = MEMORY[0x1E69E7CC0];
    sub_1AE4EB0F0();
    v8 = 0;
    v69 = v11;
    v70 = OBJC_IVAR____TtCV4Dyld5Image4Impl_context;
    v9 = &v76;
    while (v11 != v8)
    {
      v13 = sub_1AE4B9974(v8, a1, a2, v11);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 64))();
      v7 = v15;
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v5 = v17 >> 62;
      v75 = v8;
      if ((v17 >> 62) > 1)
      {
        v68 = v10;
        if (v5 != 2)
        {
          goto LABEL_72;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        v23 = sub_1AE4EA990();
        if (v23)
        {
          v9 = v23;
          v24 = sub_1AE4EA9B0();
          if (__OFSUB__(v22, v24))
          {
            goto LABEL_69;
          }

          v8 = v9 + v22 - v24;
          v25 = __OFSUB__(v21, v22);
          v26 = v21 - v22;
          if (v25)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v8 = 0;
          v25 = __OFSUB__(v21, v22);
          v26 = v21 - v22;
          if (v25)
          {
            goto LABEL_61;
          }
        }

        v33 = sub_1AE4EA9A0();
        if (v33 >= v26)
        {
          v34 = v26;
        }

        else
        {
          v34 = v33;
        }

        v35 = &v8[v34];
        if (v8)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        v5 = v36 - v8;
        if (v8)
        {
          v37 = v5;
        }

        else
        {
          v37 = 0;
        }

        if (v37 < v7)
        {
          goto LABEL_63;
        }

        if (v7 < 0)
        {
          goto LABEL_65;
        }

        if (v37 <= v7)
        {
          goto LABEL_79;
        }

        v20 = v68;
        v11 = v69;
        if (!v8)
        {
          goto LABEL_78;
        }

        if (v5 <= v7)
        {
          goto LABEL_68;
        }

        v18 = v8[v7];
        *&v84 = v7 + 1;
        *(&v84 + 1) = v5;
        *&v85 = v8;
        *(&v85 + 1) = v35;
        v19 = v18;
      }

      else if (v5)
      {
        v27 = v10;
        v28 = v16;
        v29 = v16 >> 32;
        v30 = v29 - v28;
        if (v29 < v28)
        {
          goto LABEL_60;
        }

        v31 = sub_1AE4EA990();
        if (v31)
        {
          v9 = v31;
          v32 = sub_1AE4EA9B0();
          if (__OFSUB__(v28, v32))
          {
            goto LABEL_70;
          }

          v8 = v9 + v28 - v32;
        }

        else
        {
          v8 = 0;
        }

        v38 = sub_1AE4EA9A0();
        if (v38 >= v30)
        {
          v39 = v30;
        }

        else
        {
          v39 = v38;
        }

        v40 = &v8[v39];
        if (v8)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v5 = v41 - v8;
        if (v8)
        {
          v42 = v5;
        }

        else
        {
          v42 = 0;
        }

        if (v42 < v7)
        {
          goto LABEL_64;
        }

        if (v7 < 0)
        {
          goto LABEL_66;
        }

        if (v42 <= v7)
        {
          goto LABEL_76;
        }

        v11 = v69;
        if (!v8)
        {
          goto LABEL_75;
        }

        if (v5 <= v7)
        {
          goto LABEL_67;
        }

        v18 = v8[v7];
        *&v84 = v7 + 1;
        *(&v84 + 1) = v5;
        *&v85 = v8;
        *(&v85 + 1) = v40;
        v19 = v18;
        v20 = v27;
      }

      else
      {
        v76 = *(v13 + 16);
        v77 = v17;
        v78 = BYTE2(v17);
        v5 = HIDWORD(v17);
        v79 = BYTE3(v17);
        v80 = BYTE4(v17);
        v81 = BYTE5(v17);
        if (BYTE6(v17) < v15)
        {
          goto LABEL_59;
        }

        if (v15 < 0)
        {
          goto LABEL_62;
        }

        v8 = &v76 + BYTE6(v17);
        if (BYTE6(v17) <= v15)
        {
          goto LABEL_88;
        }

        v18 = *(&v76 + v15);
        *&v84 = v15 + 1;
        *(&v84 + 1) = BYTE6(v17);
        *&v85 = &v76;
        *(&v85 + 1) = &v76 + BYTE6(v17);
        v19 = v18;
        v20 = v10;
      }

      sub_1AE4A65CC(v19);
      v47 = v46;
      if (v20)
      {
        v54 = v43;
        v55 = v44;
        v56 = v45;
        sub_1AE4C78AC();
        v58 = swift_allocError();
        *v57 = v47;
        *(v57 + 8) = v54;
        goto LABEL_82;
      }

      v48 = v18 >> 4;
      if (v18 >> 4 != 13)
      {
        if (v48 <= 0xA && ((1 << v48) & 0x472) != 0)
        {
          *&v87 = 0;
          v86 = 6uLL;
          BYTE8(v87) = 0x80;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v58 = swift_allocError();
          *(v59 + 8) = 0;
          *(v59 + 16) = 0;
          *v59 = 6;
          *(v59 + 24) = 0x80;
        }

        else
        {
          sub_1AE4C78AC();
          v58 = swift_allocError();
          *(v60 + 8) = 0;
          *(v60 + 16) = 0;
          *v60 = 0;
          *(v60 + 24) = 0x80;
          swift_willThrow();
        }

        goto LABEL_90;
      }

      v10 = 0;
      v86 = v84;
      v87 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();
      v49 = v82;
      v8 = v75 + 1;
      v50 = *(a4 + v70);

      sub_1AE4CB988(&v84);
      type metadata accessor for Segment.Impl();
      v51 = swift_allocObject();
      *(v51 + 72) = 0u;
      *(v51 + 88) = 0u;
      *(v51 + 56) = 0u;
      v52 = v51 + 56;
      *(v51 + 104) = 0;
      *(v51 + 112) = 255;
      *(v51 + 120) = 0u;
      *(v51 + 136) = 0u;
      *(v51 + 152) = 0;
      *(v51 + 16) = v13;
      *(v51 + 24) = v49;
      *(v51 + 32) = v47;
      *(v51 + 40) = v50;
      *(v51 + 48) = a5;
      swift_beginAccess();
      sub_1AE4B06C8(&v84, v52, &qword_1EB5DD5B0, &qword_1AE4EDC10);
      swift_endAccess();

      sub_1AE4EB0D0();
      v7 = *(v83 + 16);
      sub_1AE4EB100();
      sub_1AE4EB110();
      sub_1AE4EB0E0();
      v9 = &v76;
      if (v11 == v75 + 1)
      {
        result = v83;
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
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
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    *(&v86 + 6) = 0;
    *&v86 = 0;
    if (v7 > 0)
    {
      __break(1u);
LABEL_88:
      v61 = v9 + v7;
      goto LABEL_89;
    }

    if (v7 < 0)
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      if (v8)
      {
        goto LABEL_91;
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      if (!v8)
      {
        __break(1u);
      }

      goto LABEL_91;
    }

    *&v84 = &v86;
    *(&v84 + 1) = &v86;
    v55 = 1;
    *&v85 = 1;
    v56 = 64;
    BYTE8(v85) = 64;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v58 = swift_allocError();
    *v57 = &v86;
    *(v57 + 8) = &v86;
LABEL_82:
    *(v57 + 16) = v55;
    *(v57 + 24) = v56;
    while (1)
    {
LABEL_90:
      v82 = v58;
      v63 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v64 = *(&v84 + 1);
      v8 = v84;
      v65 = v85;
      v66 = BYTE8(v85);
      v86 = v84;
      *&v87 = v85;
      BYTE8(v87) = BYTE8(v85);
      v7 = sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      swift_allocError();
      *v67 = v8;
      *(v67 + 8) = v64;
      *(v67 + 16) = v65;
      *(v67 + 24) = v66;
      swift_unexpectedError();
      __break(1u);
LABEL_91:
      v61 = &v8[v7];
      v8 += v5;
LABEL_89:
      *&v86 = v61;
      *(&v86 + 1) = v8;
      *&v87 = 1;
      BYTE8(v87) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v58 = swift_allocError();
      *v62 = v61;
      *(v62 + 8) = v8;
      *(v62 + 16) = 1;
      *(v62 + 24) = 64;
    }
  }

LABEL_57:
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1AE4DCB04(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v218 = *MEMORY[0x1E69E9840];
  v6 = v3 + *(type metadata accessor for MachOMapper(0) + 20);
  v209[2] = *v6;
  v210 = *(v6 + 8);
  v211 = 0;
  v197 = v3;

  v7 = sub_1AE4AE3BC();
  if (!v7)
  {
LABEL_217:
    sub_1AE4EB140();
    __break(1u);
    goto LABEL_218;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    v10 = *(v8 + 72);
    v11 = (*(v8 + 64))(v8);
    v12 = v11;
    v13 = *(v8 + 16);
    v14 = *(v8 + 24);
    v15 = v14 >> 62;
    v205 = v9;
    if ((v14 >> 62) <= 1)
    {
      if (!v15)
      {
        v208[0] = *(v8 + 16);
        LOWORD(v208[1]) = v14;
        BYTE2(v208[1]) = BYTE2(v14);
        BYTE3(v208[1]) = BYTE3(v14);
        BYTE4(v208[1]) = BYTE4(v14);
        BYTE5(v208[1]) = BYTE5(v14);
        if (BYTE6(v14) < v11)
        {
          goto LABEL_178;
        }

        v16 = v208 + BYTE6(v14);
        *&v212 = v11;
        *(&v212 + 1) = BYTE6(v14);
        *&v213 = v208;
        goto LABEL_35;
      }

      v26 = v13;
      v27 = v13 >> 32;
      v28 = v27 - v26;
      if (v27 < v26)
      {
        goto LABEL_176;
      }

      v19 = sub_1AE4EA990();
      if (v19)
      {
        v29 = sub_1AE4EA9B0();
        if (__OFSUB__(v26, v29))
        {
          goto LABEL_201;
        }

        v19 += v26 - v29;
      }

      v30 = sub_1AE4EA9A0();
      if (v30 >= v28)
      {
        v24 = v28;
      }

      else
      {
        v24 = v30;
      }

      if (v19)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (v25 < v12)
      {
        goto LABEL_181;
      }

LABEL_32:
      v16 = (v24 + v19);
      if (!v19)
      {
        v16 = 0;
      }

      *&v212 = v12;
      *(&v212 + 1) = v25;
      *&v213 = v19;
LABEL_35:
      *(&v213 + 1) = v16;
      goto LABEL_38;
    }

    if (v15 == 2)
    {
      v17 = *(v13 + 16);
      v18 = *(v13 + 24);
      v19 = sub_1AE4EA990();
      if (v19)
      {
        v20 = sub_1AE4EA9B0();
        if (__OFSUB__(v17, v20))
        {
          goto LABEL_200;
        }

        v19 += v17 - v20;
      }

      v21 = __OFSUB__(v18, v17);
      v22 = v18 - v17;
      if (v21)
      {
        goto LABEL_179;
      }

      v23 = sub_1AE4EA9A0();
      if (v23 >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v23;
      }

      if (v19)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (v25 < v12)
      {
        goto LABEL_180;
      }

      goto LABEL_32;
    }

    memset(v208, 0, 14);
    if (v11 > 0)
    {
      goto LABEL_177;
    }

    v212 = v11;
    *&v213 = v208;
    *(&v213 + 1) = v208;
LABEL_38:
    v31 = v5;
    sub_1AE4A5694();
    v36 = v32;
    if (v31)
    {
      goto LABEL_214;
    }

    sub_1AE4A65CC(v32);
    v38 = v37;
    v39 = sub_1AE4AC038(v36);
    if (v39 != 4)
    {
      if (v39 == 6)
      {
        sub_1AE4C78AC();
        v180 = swift_allocError();
        *(v182 + 8) = 0;
        *(v182 + 16) = 0;
        *v182 = 0;
        *(v182 + 24) = 0x80;
        swift_willThrow();
        goto LABEL_219;
      }

LABEL_218:
      *&v217 = 0;
      v216 = 6uLL;
      BYTE8(v217) = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v180 = swift_allocError();
      *(v183 + 8) = 0;
      *(v183 + 16) = 0;
      *v183 = 6;
      *(v183 + 24) = 0x80;
      while (1)
      {
LABEL_219:
        v209[0] = v180;
        v184 = v180;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
        swift_dynamicCast();
        v185 = v212;
        v186 = v213;
        v187 = BYTE8(v213);
        v216 = v212;
        *&v217 = v213;
        BYTE8(v217) = BYTE8(v213);
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();

        swift_allocError();
        *v188 = v185;
        *(v188 + 16) = v186;
        *(v188 + 24) = v187;
        swift_unexpectedError();
        __break(1u);
        v190 = v189;
        v192 = v191;
        v194 = v193;
        sub_1AE4C78AC();
        v170 = swift_allocError();
        *v195 = v180;
        *(v195 + 8) = v190;
        *(v195 + 16) = v192;
        *(v195 + 24) = v194;
LABEL_213:
        v209[0] = v170;
        v172 = v170;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
        swift_dynamicCast();
        v173 = v212;
        v174 = v213;
        v175 = BYTE8(v213);
        v216 = v212;
        *&v217 = v213;
        BYTE8(v217) = BYTE8(v213);
        v36 = sub_1AE4C78AC();
        swift_willThrowTypedImpl();

        swift_allocError();
        *v176 = v173;
        *(v176 + 16) = v174;
        *(v176 + 24) = v175;
        swift_unexpectedError();
        __break(1u);
LABEL_214:
        v177 = v33;
        v178 = v34;
        v179 = v35;
        sub_1AE4C78AC();
        v180 = swift_allocError();
        *v181 = v36;
        *(v181 + 8) = v177;
        *(v181 + 16) = v178;
        *(v181 + 24) = v179;
      }
    }

    v216 = v212;
    v217 = v213;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    sub_1AE4EB230();
    v40 = v209[0];
    v41 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v8, v209[0], v38);
    if (!v41)
    {
      goto LABEL_209;
    }

    v42 = v41;
    v43 = *(v41 + 72);
    v44 = (*(v41 + 64))();
    v45 = v44;
    v46 = *(v42 + 16);
    v47 = *(v42 + 24);
    v48 = v47 >> 62;
    v206 = v40;
    if ((v47 >> 62) > 1)
    {
      v202 = v38;
      if (v48 != 2)
      {
        *(&v216 + 6) = 0;
        *&v216 = 0;
        if (v44 > 0)
        {
          goto LABEL_182;
        }

        v212 = v44;
        *&v213 = &v216;
        *(&v213 + 1) = &v216;
        sub_1AE4A5694();
        v82 = v81;
        sub_1AE4A65CC(v81);
        v84 = v83;
        v85 = sub_1AE4AC038(v82);
        if (v85 == 6)
        {
LABEL_212:
          sub_1AE4C78AC();
          v170 = swift_allocError();
          *(v171 + 8) = 0;
          *(v171 + 16) = 0;
          *v171 = 0;
          *(v171 + 24) = 0x80;
          swift_willThrow();
          goto LABEL_213;
        }

        sub_1AE4AD198(v85, v84, v212, *(&v212 + 1), &v215, v209);

        v54 = v209[0];
        if ((v209[0] & 0x8000000000000000) != 0)
        {
          goto LABEL_172;
        }

        goto LABEL_82;
      }

      v56 = *(v46 + 16);
      v55 = *(v46 + 24);
      v57 = sub_1AE4EA990();
      if (v57)
      {
        v58 = sub_1AE4EA9B0();
        if (__OFSUB__(v56, v58))
        {
          goto LABEL_202;
        }

        v57 += v56 - v58;
      }

      v21 = __OFSUB__(v55, v56);
      v59 = v55 - v56;
      if (v21)
      {
        goto LABEL_185;
      }

      v60 = sub_1AE4EA9A0();
      if (v60 >= v59)
      {
        v61 = v59;
      }

      else
      {
        v61 = v60;
      }

      if (v57)
      {
        v62 = v61;
      }

      else
      {
        v62 = 0;
      }

      if (v62 < v45)
      {
        goto LABEL_186;
      }

      v63 = v61 + v57;
      if (!v57)
      {
        v63 = 0;
      }

      *&v212 = v45;
      *(&v212 + 1) = v62;
      *&v213 = v57;
      *(&v213 + 1) = v63;
      sub_1AE4A5694();
      v65 = v64;
      sub_1AE4A65CC(v64);
      v67 = v66;
      v38 = v202;
    }

    else
    {
      if (!v48)
      {
        *&v216 = *(v42 + 16);
        WORD4(v216) = v47;
        BYTE10(v216) = BYTE2(v47);
        BYTE11(v216) = BYTE3(v47);
        BYTE12(v216) = BYTE4(v47);
        BYTE13(v216) = BYTE5(v47);
        if (BYTE6(v47) < v44)
        {
          goto LABEL_184;
        }

        *&v212 = v44;
        *(&v212 + 1) = BYTE6(v47);
        *&v213 = &v216;
        *(&v213 + 1) = &v216 + BYTE6(v47);
        sub_1AE4A5694();
        v50 = v49;
        sub_1AE4A65CC(v49);
        v52 = v51;
        v53 = sub_1AE4AC038(v50);
        if (v53 == 6)
        {
          goto LABEL_212;
        }

        sub_1AE4AD198(v53, v52, v212, *(&v212 + 1), &v215, v209);

        v54 = v209[0];
        if ((v209[0] & 0x8000000000000000) != 0)
        {
          goto LABEL_172;
        }

        goto LABEL_82;
      }

      v199 = v8;
      v68 = v38;
      v69 = v46;
      v70 = v46 >> 32;
      v71 = v70 - v69;
      if (v70 < v69)
      {
        goto LABEL_183;
      }

      v72 = sub_1AE4EA990();
      if (v72)
      {
        v73 = sub_1AE4EA9B0();
        if (__OFSUB__(v69, v73))
        {
          goto LABEL_203;
        }

        v72 += v69 - v73;
      }

      v74 = sub_1AE4EA9A0();
      if (v74 >= v71)
      {
        v75 = v71;
      }

      else
      {
        v75 = v74;
      }

      if (v72)
      {
        v76 = v75;
      }

      else
      {
        v76 = 0;
      }

      if (v76 < v45)
      {
        goto LABEL_187;
      }

      v38 = v68;
      v77 = v75 + v72;
      if (!v72)
      {
        v77 = 0;
      }

      *&v212 = v45;
      *(&v212 + 1) = v76;
      *&v213 = v72;
      *(&v213 + 1) = v77;
      sub_1AE4A5694();
      v65 = v78;
      sub_1AE4A65CC(v78);
      v67 = v79;
      v8 = v199;
    }

    v40 = v206;
    v80 = sub_1AE4AC038(v65);
    if (v80 == 6)
    {
      goto LABEL_212;
    }

    sub_1AE4AD198(v80, v67, v212, *(&v212 + 1), &v215, &v216);

    v54 = v216;
    if ((v216 & 0x8000000000000000) != 0)
    {
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
    }

LABEL_82:
    v204 = v54;
    v86 = sub_1AE4AC6E0(1702523750, 0xE400000000000000, 0, v8, v40, v38);
    if (!v86)
    {
      goto LABEL_210;
    }

    v87 = v86;
    v88 = *(v86 + 72);
    v89 = (*(v86 + 64))();
    v90 = v89;
    v91 = *(v87 + 16);
    v92 = *(v87 + 24);
    v93 = v92 >> 62;
    if ((v92 >> 62) > 1)
    {
      if (v93 != 2)
      {
        *(&v216 + 6) = 0;
        *&v216 = 0;
        if (v89 > 0)
        {
          goto LABEL_189;
        }

        v212 = v89;
        *&v213 = &v216;
        *(&v213 + 1) = &v216;
        goto LABEL_120;
      }

      v203 = v38;
      v95 = *(v91 + 16);
      v94 = *(v91 + 24);
      v96 = sub_1AE4EA990();
      if (v96)
      {
        v97 = sub_1AE4EA9B0();
        if (__OFSUB__(v95, v97))
        {
          goto LABEL_204;
        }

        v96 += v95 - v97;
      }

      v21 = __OFSUB__(v94, v95);
      v98 = v94 - v95;
      if (v21)
      {
        goto LABEL_191;
      }

      v99 = sub_1AE4EA9A0();
      if (v99 >= v98)
      {
        v100 = v98;
      }

      else
      {
        v100 = v99;
      }

      if (v96)
      {
        v101 = v100;
      }

      else
      {
        v101 = 0;
      }

      if (v101 < v90)
      {
        goto LABEL_193;
      }

      v102 = v100 + v96;
      if (!v96)
      {
        v102 = 0;
      }

      *&v212 = v90;
      *(&v212 + 1) = v101;
      *&v213 = v96;
      *(&v213 + 1) = v102;
      sub_1AE4A5694();
      v104 = v103;
      sub_1AE4A65CC(v103);
      v106 = v105;
      v38 = v203;
LABEL_116:
      v40 = v206;
      v119 = sub_1AE4AC038(v104);
      if (v119 == 6)
      {
        goto LABEL_212;
      }

      sub_1AE4AD198(v119, v106, v212, *(&v212 + 1), &v215, &v216);

      v120 = v216;
      goto LABEL_122;
    }

    if (v93)
    {
      v200 = v8;
      v107 = v38;
      v108 = v91;
      v109 = v91 >> 32;
      v110 = v109 - v108;
      if (v109 < v108)
      {
        goto LABEL_190;
      }

      v111 = sub_1AE4EA990();
      if (v111)
      {
        v112 = sub_1AE4EA9B0();
        if (__OFSUB__(v108, v112))
        {
          goto LABEL_205;
        }

        v111 += v108 - v112;
      }

      v113 = sub_1AE4EA9A0();
      if (v113 >= v110)
      {
        v114 = v110;
      }

      else
      {
        v114 = v113;
      }

      if (v111)
      {
        v115 = v114;
      }

      else
      {
        v115 = 0;
      }

      if (v115 < v90)
      {
        goto LABEL_192;
      }

      v38 = v107;
      v116 = v114 + v111;
      if (!v111)
      {
        v116 = 0;
      }

      *&v212 = v90;
      *(&v212 + 1) = v115;
      *&v213 = v111;
      *(&v213 + 1) = v116;
      sub_1AE4A5694();
      v104 = v117;
      sub_1AE4A65CC(v117);
      v106 = v118;
      v8 = v200;
      goto LABEL_116;
    }

    *&v216 = *(v87 + 16);
    WORD4(v216) = v92;
    BYTE10(v216) = BYTE2(v92);
    BYTE11(v216) = BYTE3(v92);
    BYTE12(v216) = BYTE4(v92);
    BYTE13(v216) = BYTE5(v92);
    if (BYTE6(v92) < v89)
    {
      goto LABEL_188;
    }

    *&v212 = v89;
    *(&v212 + 1) = BYTE6(v92);
    *&v213 = &v216;
    *(&v213 + 1) = &v216 + BYTE6(v92);
LABEL_120:
    sub_1AE4A5694();
    v122 = v121;
    sub_1AE4A65CC(v121);
    v124 = v123;
    v125 = sub_1AE4AC038(v122);
    if (v125 == 6)
    {
      goto LABEL_212;
    }

    sub_1AE4AD198(v125, v124, v212, *(&v212 + 1), &v215, v209);

    v120 = v209[0];
LABEL_122:
    if ((v120 & 0x8000000000000000) != 0)
    {
      goto LABEL_173;
    }

    v126 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v8, v40, v38);
    if (!v126)
    {
      goto LABEL_211;
    }

    v127 = v126;
    v128 = *(v126 + 72);
    v129 = (*(v126 + 64))();
    v130 = v129;
    v131 = *(v127 + 16);
    v132 = *(v127 + 24);
    v133 = v132 >> 62;
    if ((v132 >> 62) > 1)
    {
      if (v133 != 2)
      {
        *(&v216 + 6) = 0;
        *&v216 = 0;
        v134 = v205;
        if (v129 > 0)
        {
          goto LABEL_195;
        }

        v212 = v129;
        *&v213 = &v216;
        *(&v213 + 1) = &v216;
        goto LABEL_161;
      }

      v207 = v120;
      v135 = *(v131 + 16);
      v136 = *(v131 + 24);
      v137 = sub_1AE4EA990();
      if (v137)
      {
        v138 = sub_1AE4EA9B0();
        if (__OFSUB__(v135, v138))
        {
          goto LABEL_206;
        }

        v137 += v135 - v138;
      }

      v21 = __OFSUB__(v136, v135);
      v139 = v136 - v135;
      if (v21)
      {
        goto LABEL_197;
      }

      v140 = sub_1AE4EA9A0();
      if (v140 >= v139)
      {
        v141 = v139;
      }

      else
      {
        v141 = v140;
      }

      if (v137)
      {
        v142 = v141;
      }

      else
      {
        v142 = 0;
      }

      if (v142 < v130)
      {
        goto LABEL_199;
      }

      v143 = v141 + v137;
      if (!v137)
      {
        v143 = 0;
      }

      *&v212 = v130;
      *(&v212 + 1) = v142;
      *&v213 = v137;
      *(&v213 + 1) = v143;
      sub_1AE4A5694();
      v145 = v144;
      sub_1AE4A65CC(v144);
      v147 = v146;
      v134 = v205;
LABEL_157:
      v120 = v207;
      v159 = sub_1AE4AC038(v145);
      if (v159 == 6)
      {
        goto LABEL_212;
      }

      sub_1AE4AD198(v159, v147, v212, *(&v212 + 1), &v215, &v216);
      v5 = 0;

      v160 = v216;
      goto LABEL_163;
    }

    if (v133)
    {
      v148 = v131;
      v149 = v131 >> 32;
      v150 = v149 - v148;
      if (v149 < v148)
      {
        goto LABEL_194;
      }

      v207 = v120;
      v151 = sub_1AE4EA990();
      if (v151)
      {
        v152 = sub_1AE4EA9B0();
        if (__OFSUB__(v148, v152))
        {
          goto LABEL_207;
        }

        v151 += v148 - v152;
      }

      v153 = sub_1AE4EA9A0();
      if (v153 >= v150)
      {
        v154 = v150;
      }

      else
      {
        v154 = v153;
      }

      if (v151)
      {
        v155 = v154;
      }

      else
      {
        v155 = 0;
      }

      v134 = v205;
      if (v155 < v130)
      {
        goto LABEL_198;
      }

      v156 = v154 + v151;
      if (!v151)
      {
        v156 = 0;
      }

      *&v212 = v130;
      *(&v212 + 1) = v155;
      *&v213 = v151;
      *(&v213 + 1) = v156;
      sub_1AE4A5694();
      v145 = v157;
      sub_1AE4A65CC(v157);
      v147 = v158;
      goto LABEL_157;
    }

    *&v216 = *(v127 + 16);
    WORD4(v216) = v132;
    BYTE10(v216) = BYTE2(v132);
    BYTE11(v216) = BYTE3(v132);
    BYTE12(v216) = BYTE4(v132);
    BYTE13(v216) = BYTE5(v132);
    v134 = v205;
    if (BYTE6(v132) < v129)
    {
      goto LABEL_196;
    }

    *&v212 = v129;
    *(&v212 + 1) = BYTE6(v132);
    *&v213 = &v216;
    *(&v213 + 1) = &v216 + BYTE6(v132);
LABEL_161:
    sub_1AE4A5694();
    v162 = v161;
    sub_1AE4A65CC(v161);
    v164 = v163;
    v165 = sub_1AE4AC038(v162);
    if (v165 == 6)
    {
      goto LABEL_212;
    }

    sub_1AE4AD198(v165, v164, v212, *(&v212 + 1), &v215, v209);
    v5 = 0;

    v160 = v209[0];
LABEL_163:
    if (__CFADD__(v134, v120))
    {
      goto LABEL_174;
    }

    if (__CFADD__(v160, v204))
    {
      goto LABEL_175;
    }

    if (v160 <= a1 && v160 + v204 >= a2)
    {
      break;
    }

    v8 = sub_1AE4AE3BC();
    v9 = v134 + v120;
    if (!v8)
    {
      goto LABEL_217;
    }
  }

  if (v204 < v120)
  {
    goto LABEL_208;
  }

  v166 = sub_1AE4D0034(v197, v134, v120, 0, v204 - v120);
  if (v167 >> 60 == 15)
  {
    v212 = 4uLL;
    v213 = 0uLL;
    v214 = -64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();

    *a3 = 4;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = -64;
  }

  else
  {
  }

  v168 = *MEMORY[0x1E69E9840];
  return v166;
}

uint64_t sub_1AE4DDCF4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 56);

    if (!v5)
    {
      return 0;
    }

    v6 = sub_1AE4AC6E0(1919181153, 0xE400000000000000, 0, v5[2], v5[3], v5[4]);
    if (v6)
    {
      v7 = sub_1AE4A6A00(v6);
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  else
  {
    __break(1u);
    v9 = v2;
    v10 = v3;
    v11 = v4;
    sub_1AE4C78AC();
    swift_allocError();
    *v12 = v0;
    *(v12 + 8) = v9;
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4DDE30(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v8 = sub_1AE4AC6E0(a2, 0xE400000000000000, 0, a1[2], a1[3], a1[4]);
  if (!v8)
  {
    goto LABEL_15;
  }

  v3 = sub_1AE4B9FBC(v8);
  v5 = v10;
  v4 = v11;

  v12 = a3(v3, v5, v4, a1);

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_12:

    return MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1AE4EB150();
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_4:
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AE4EB0F0();
  if (v13 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    v18 = v9;
    sub_1AE4C78AC();
    swift_allocError();
    *v19 = v3;
    *(v19 + 8) = v5;
    *(v19 + 16) = v4;
    *(v19 + 24) = v18;
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v14 = 0;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2701540](v14, v12);
    }

    else
    {
      v16 = *(v12 + 8 * v14 + 32);
    }

    ++v14;
    sub_1AE4EB0D0();
    v15 = *(v20 + 16);
    sub_1AE4EB100();
    sub_1AE4EB110();
    sub_1AE4EB0E0();
  }

  while (v13 != v14);

  return v20;
}

void (*sub_1AE4DE014(uint64_t a1, int a2, _OWORD *a3))(char *, void, uint64_t, uint64_t)
{
  v37 = a3;
  LODWORD(v38) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32 - v12;
  v14 = sub_1AE4EAB10();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = sub_1AE4EAC50();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v44 = a1;
  v35 = v17;
  v17(v9, a1, v15);
  v18 = *(v16 + 56);
  v18(v9, 0, 1, v15);
  if (qword_1EB5DD140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_1EB5DD188;

  os_unfair_lock_lock(v19 + 4);
  v20 = v39;
  sub_1AE4B0920(v13, &qword_1EB5DD170, v9, v38 & 1, v43);
  if (v20)
  {
    os_unfair_lock_unlock(v19 + 4);
    swift_endAccess();

    sub_1AE4B4558(v9, &qword_1EB5DD520, &qword_1AE4EDB98);
    sub_1AE4B4558(v13, &qword_1EB5DD4B8, "R3");
  }

  else
  {
    *&v38 = v18;
    v18 = v43[0];
    v34 = v43[1];
    v33 = v43[2];
    os_unfair_lock_unlock(v19 + 4);
    swift_endAccess();

    sub_1AE4B4558(v9, &qword_1EB5DD520, &qword_1AE4EDB98);
    sub_1AE4B4558(v13, &qword_1EB5DD4B8, "R3");
    *&v39 = v18;
    if (v18)
    {
      *(&v41 + 1) = &type metadata for Snapshot.DefaultDelegate;
      v42 = &off_1F240DAF0;
      v24 = type metadata accessor for Snapshot.DecoderContext(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      v27 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v40, &type metadata for Snapshot.DefaultDelegate);
      v27[5] = &type metadata for Snapshot.DefaultDelegate;
      v27[6] = &off_1F240DAF0;
      v27[7] = 0;
      v28 = v38;
      (v38)(v27 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath, 1, 1, v15);
      *(v27 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache) = 0;
      *(v27 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_privateSharedRegion) = 0;
      *(v27 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide) = 0;
      *(v27 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_pointerSize) = 8;
      __swift_destroy_boxed_opaque_existential_1(v40);
      v29 = v36;
      v30 = v44;
      v35(v36, v44, v15);
      v28(v29, 0, 1, v15);
      v31 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
      swift_beginAccess();

      sub_1AE4B06C8(v29, v27 + v31, &qword_1EB5DD520, &qword_1AE4EDB98);
      swift_endAccess();
      type metadata accessor for SharedCache.Impl();
      swift_allocObject();
      v18 = sub_1AE4B45DC(v39, v34, v33, v27);

      (*(v16 + 8))(v30, v15);
      return v18;
    }
  }

  v40[0] = 4;
  v40[1] = 0;
  v39 = 0u;
  v41 = 0u;
  LOBYTE(v42) = -64;
  sub_1AE4C9430();
  swift_willThrowTypedImpl();
  (*(v16 + 8))(v44, v15);
  v21 = v37;
  v22 = v39;
  *v37 = xmmword_1AE4EC800;
  v21[1] = v22;
  *(v21 + 32) = -64;
  return v18;
}

char *sub_1AE4DE568(uint64_t a1)
{
  v119 = a1;
  v114 = sub_1AE4EAB10();
  v1 = *(v114 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v114);
  v106 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v105 = &v104 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v110 = &v104 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD588, &qword_1AE4EDBF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v104 - v14;
  v16 = sub_1AE4EAC50();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v124 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v104 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v118 = &v104 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v104 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v104 - v29;
  v31 = 0;
  v127 = 0;
  v137 = *(v17 + 16);
  v138 = v17 + 16;
  v32 = (v17 + 8);
  v148 = MEMORY[0x1E69E7CD0];
  v117 = (v17 + 56);
  v130 = v17;
  v116 = (v17 + 48);
  v129 = "s a queue";
  v125 = "dyld_shared_cache_";
  v109 = v1 + 16;
  v108 = MEMORY[0x1E69E7CC0];
  v104 = v1;
  v112 = (v1 + 8);
  v126 = v15;
  v133 = v16;
  v136 = v23;
  v128 = &v104 - v29;
  v132 = (v17 + 8);
  do
  {
    v122 = v31;
    v33 = &unk_1F240C768 + 16 * v31;
    v34 = *(v33 + 4);
    v35 = *(v33 + 5);
    v137(v118, v119, v16);
    swift_bridgeObjectRetain_n();
    v121 = v35;
    sub_1AE4EAC30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD590, &qword_1AE4EDBF8);
    v36 = swift_allocObject();
    sub_1AE4EABC0();
    v37 = sub_1AE4EADA0();

    v38 = realpath_DARWIN_EXTSN((v37 + 32), (v36 + 17));

    if (v38)
    {
      v39 = sub_1AE4EADF0();
      MEMORY[0x1B27010F0](v39);
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v41 = *v32;
    (*v32)(v123, v16);
    (*v117)(v30, v40, 1, v16);
    swift_setDeallocating();
    swift_deallocClassInstance();
    if ((*v116)(v30, 1, v16) == 1)
    {

      sub_1AE4B4558(v30, &qword_1EB5DD520, &qword_1AE4EDB98);
      goto LABEL_3;
    }

    v42 = v30;
    v43 = sub_1AE4CF480();
    v41(v30, v16);
    if (!v43)
    {
      goto LABEL_49;
    }

    v46 = *&v43->d_reclen;
    if (!v46)
    {
      goto LABEL_48;
    }

    v47 = 0;
    v107 = v46 - 1;
    v134 = v43;
    v135 = v41;
    v131 = v46;
    while (2)
    {
      v48 = v47;
      while (1)
      {
        if (v48 >= *&v43->d_reclen)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          v101 = v44;
          v102 = v45;
          sub_1AE4C78AC();
          swift_allocError();
          *v103 = v42;
          *(v103 + 8) = v41;
LABEL_57:
          *(v103 + 16) = v101;
          *(v103 + 24) = v102;
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v49 = v43 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
        v50 = *(v130 + 72);
        v139 = v48;
        v51 = (v137)(v23, &v49[v50 * v48], v16);
        v42 = v23;
        MEMORY[0x1B2700FE0](v51);
        v52 = sub_1AE4EAC00();
        v53 = *(v52 - 8);
        v41 = *(v53 + 48);
        if ((v41)(v15, 1, v52) == 1)
        {
          goto LABEL_52;
        }

        sub_1AE4EABE0();
        v54 = *(v53 + 8);
        v54(v15, v52);
        v55 = sub_1AE4EAC40();
        v42 = v56;
        if ((sub_1AE4EAE10() & 1) == 0 && (sub_1AE4EAE10() & 1) == 0)
        {
          v41 = v135;
          v23 = v136;
          v32 = v132;
          v16 = v133;
          v135(v136, v133);

          goto LABEL_13;
        }

        if (!v42)
        {
          goto LABEL_27;
        }

        if (v55 != 0x6D706F6C65766564 || v42 != 0xEB00000000746E65)
        {
          break;
        }

        v15 = v126;
LABEL_22:
        v58 = v120;
        v42 = v136;
        MEMORY[0x1B2700FE0](v57);
        if ((v41)(v58, 1, v52) == 1)
        {
          goto LABEL_53;
        }

        v59 = sub_1AE4EABF0();
        v60 = v58;
        v61 = v59;
        v63 = v62;
        v54(v60, v52);
        v142 = v61;
        v143 = v63;
        v140 = 46;
        v141 = 0xE100000000000000;
        sub_1AE4DFC70();
        v64 = sub_1AE4EB030();

        v42 = *(v64 + 16);

        v41 = v135;
        if (v42 < 3)
        {
          goto LABEL_28;
        }

        v23 = v136;
        v32 = v132;
        v16 = v133;
        v135(v136, v133);
LABEL_13:
        v48 = v139 + 1;
        v30 = v128;
        v43 = v134;
        if (v131 == v139 + 1)
        {
          goto LABEL_48;
        }
      }

      if ((sub_1AE4EB190() & 1) == 0)
      {

        v41 = v135;
        v23 = v136;
        v32 = v132;
        v16 = v133;
        v135(v136, v133);
        goto LABEL_30;
      }

      v65 = sub_1AE4EB190();

      v15 = v126;
      if (v65)
      {
        goto LABEL_22;
      }

LABEL_27:

      v41 = v135;
LABEL_28:
      v66 = v124;
      v23 = v136;
      v16 = v133;
      v137(v124, v136, v133);
      v67 = v127;
      v68 = sub_1AE4DE014(v66, 0, &v144);
      v32 = v132;
      if (v67)
      {
        sub_1AE4DFB40(v144, *(&v144 + 1), v145, v146, v147);
        v41(v23, v16);
        v127 = 0;
LABEL_30:
        v15 = v126;
        goto LABEL_13;
      }

      v70 = v68;
      v71 = v69;
      v113 = v148;
      v72 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v68[2], v68[3], v68[4]);
      if (!v72)
      {
        goto LABEL_54;
      }

      v42 = sub_1AE4AEC7C(v72, v73);
      v75 = v74;
      v127 = 0;

      sub_1AE4B0730(v42, v75);
      if (v113[2])
      {
        v76 = v113;
        v77 = v113[5];
        sub_1AE4AA0A8(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
        v42 = v115;
        v78 = sub_1AE4EACE0();
        v79 = -1 << *(v76 + 32);
        v80 = v78 & ~v79;
        v111 = v76 + 7;
        if ((*(v76 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v80))
        {
          v81 = ~v79;
          v82 = *(v104 + 72);
          v83 = *(v104 + 16);
          while (1)
          {
            v84 = v110;
            v85 = v114;
            v83(v110, v113[6] + v82 * v80, v114);
            sub_1AE4AA0A8(&unk_1EB5DD148, MEMORY[0x1E69695A8]);
            v86 = sub_1AE4EAD20();
            v42 = *v112;
            (*v112)(v84, v85);
            if (v86)
            {
              break;
            }

            v80 = (v80 + 1) & v81;
            if (((*(v111 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          (v42)(v115, v114);
          v41 = v135;
          v23 = v136;
          v32 = v132;
          v16 = v133;
          v135(v136, v133);
          v15 = v126;
          goto LABEL_45;
        }
      }

LABEL_38:
      v41 = *v112;
      (*v112)(v115, v114);
      v87 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v70[2], v70[3], v70[4]);
      if (!v87)
      {
        goto LABEL_55;
      }

      v89 = v127;
      v92 = sub_1AE4AEC7C(v87, v88);
      v94 = v93;
      v32 = v132;
      if (v89)
      {
        v101 = v90;
        v102 = v91;
        sub_1AE4C78AC();
        swift_allocError();
        *v103 = v92;
        *(v103 + 8) = v94;
        goto LABEL_57;
      }

      v127 = 0;

      v95 = v106;
      sub_1AE4B0730(v92, v94);
      v96 = v105;
      sub_1AE4D8828(v105, v95);
      v41(v96, v114);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_1AE4E8CD4(0, *(v108 + 2) + 1, 1, v108);
      }

      v15 = v126;
      v16 = v133;
      v41 = v135;
      v23 = v136;
      v42 = *(v108 + 2);
      v97 = *(v108 + 3);
      if (v42 >= v97 >> 1)
      {
        v108 = sub_1AE4E8CD4((v97 > 1), v42 + 1, 1, v108);
      }

      v41(v23, v16);
      v98 = v108;
      *(v108 + 2) = v42 + 1;
      v99 = &v98[16 * v42];
      *(v99 + 4) = v70;
      *(v99 + 5) = v71;
LABEL_45:
      v47 = v139 + 1;
      v30 = v128;
      v43 = v134;
      if (v107 != v139)
      {
        continue;
      }

      break;
    }

LABEL_48:

LABEL_49:

LABEL_3:
    v31 = v122 + 1;
  }

  while (v122 != 16);

  return v108;
}

uint64_t sub_1AE4DF35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AE4EADA0();
  v6 = sub_1AE4EAB30();

  if (v6 < 0)
  {
    return 0;
  }

  v8 = (a4 + 48);
  v9 = *(a4 + 16) + 1;
  while (1)
  {
    if (!--v9)
    {
      close(v6);
      return 1;
    }

    v10 = *(v8 - 1);
    v11 = *(v8 - 2);
    if (((*v8 | v11 | v10) & 0x8000000000000000) != 0)
    {
      break;
    }

    v12 = mmap((a1 + v10), *v8, 1, 18, v6, v11);
    if (v12)
    {
      v13 = v12;
      v8 += 3;
      result = sub_1AE4EAB20();
      if (v13 != result)
      {
        continue;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD560, &qword_1AE4EDBC8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AE4ED4D0;
    MEMORY[0x1B2700FD0]();
    v15 = sub_1AE4EB180();
    MEMORY[0x1B2701270](v15);

    v16 = MEMORY[0x1B2701270](8250, 0xE200000000000000);
    v17 = MEMORY[0x1B2700FD0](v16);
    strerror(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD568, &qword_1AE4EDBD0);
    v18 = sub_1AE4EAD80();
    MEMORY[0x1B2701270](v18);

    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 32) = 0x206F6E727245;
    *(v14 + 40) = 0xE600000000000000;
    sub_1AE4EB240();

    close(v6);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4DF534(void *a1, const void *a2)
{
  v43 = a2;
  v46[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1AE4EAA30();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  address = 0;
  v6 = *MEMORY[0x1E69E9A60];
  v7 = a1[3];
  v8 = a1[4];
  v44 = a1[2];
  v9 = v7;
  v10 = v8;
  v11 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v44, v7, v8);
  if (!v11)
  {
LABEL_16:
    _Block_release(v43);
    __break(1u);
  }

  v12 = sub_1AE4A6A00(v11);

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (!vm_allocate(v6, &address, v12, 1))
  {
    v13 = address;
    v14 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v44, v9, v10);
    if (!v14)
    {
      _Block_release(v43);
      __break(1u);
      _Block_release(v43);
      __break(1u);
      goto LABEL_18;
    }

    v12 = sub_1AE4A6A00(v14);

    if ((v12 & 0x8000000000000000) == 0)
    {
      sub_1AE4D06AC(v13, v15, 0, v46);
      if (v13)
      {
        v18 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v44, v9, v10);
        if (v18)
        {
          v19 = sub_1AE4A6A00(v18);

          if ((v19 & 0x8000000000000000) == 0)
          {
            v20 = v40;
            (*(v41 + 104))(v40, *MEMORY[0x1E6969020], v42);
            v21 = sub_1AE4AB2E4(v13, v19, v20);
            v23 = v22;
            v24 = sub_1AE4EAA70();
            (*(v43 + 2))(v43, v24);

            sub_1AE4A41E8(v21, v23);
            result = 1;
            goto LABEL_8;
          }

          goto LABEL_15;
        }

LABEL_19:
        _Block_release(v43);
        __break(1u);
        v26 = v25;
        v28 = v27;
        v30 = v29;
        _Block_release(v43);
        sub_1AE4C78AC();
        swift_allocError();
        *v31 = v12;
        *(v31 + 8) = v26;
        *(v31 + 16) = v28;
        *(v31 + 24) = v30;
        while (1)
        {
          swift_unexpectedError();
          __break(1u);
          v33 = v32;
          v35 = v34;
          v37 = v36;
          _Block_release(v43);
          sub_1AE4C78AC();
          swift_allocError();
          *v38 = a1;
          *(v38 + 8) = v33;
          *(v38 + 16) = v35;
          *(v38 + 24) = v37;
        }
      }

LABEL_18:
      _Block_release(v43);
      __break(1u);
      goto LABEL_19;
    }

LABEL_14:
    __break(1u);
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = 0;
LABEL_8:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4DF97C(uint64_t *a1)
{
  result = sub_1AE4AC6E0(1937010529, 0xE400000000000000, 0, a1[6], a1[7], a1[8]);
  if (!result)
  {
    return result;
  }

  v2 = sub_1AE4B9FBC(result);
  v4 = v3;
  v6 = v5;

  v7 = sub_1AE4CAA28(v2, v4, v6);

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_12:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1AE4EB150();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_4:
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AE4EB0F0();
  if (v8 < 0)
  {
    __break(1u);
    v13 = v9;
    sub_1AE4C78AC();
    swift_allocError();
    *v14 = &v15;
    *(v14 + 8) = v4;
    *(v14 + 16) = v7;
    *(v14 + 24) = v13;
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B2701540](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      ++v10;
      sub_1AE4EB0D0();
      v11 = *(v15 + 16);
      sub_1AE4EB100();
      sub_1AE4EB110();
      sub_1AE4EB0E0();
    }

    while (v8 != v10);

    return v15;
  }

  return result;
}

uint64_t sub_1AE4DFB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a5 >> 6;
  if (v5 == 2)
  {
    return sub_1AE4DFB64(a1, a2, a3, a4, a5 & 0x3F);
  }

  if (v5 == 1)
  {
    return sub_1AE4DB684(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1AE4DFB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1AE4DFC70()
{
  result = qword_1EB5DD0A8;
  if (!qword_1EB5DD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD0A8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1AE4DFDF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    return sub_1AE4A41E8(a3, a4);
  }

  return result;
}

unint64_t sub_1AE4DFE10()
{
  result = qword_1EB5DD5C0;
  if (!qword_1EB5DD5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5DD5C0);
  }

  return result;
}

uint64_t sub_1AE4DFE88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_1AE4DFED4@<X0>(_DWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1AE4DFF44(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AE4BB6EC(result, a2, a3 & 1);
  }

  return result;
}

void sub_1AE4DFF84()
{
  type metadata accessor for FileIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_1AE4E0008();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AE4E0008()
{
  if (!qword_1EB5DCFA0[0])
  {
    v0 = type metadata accessor for BPList.UnsafeArray();
    if (!v1)
    {
      atomic_store(v0, qword_1EB5DCFA0);
    }
  }
}

uint64_t getEnumTagSinglePayload for MmapRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MmapRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_1AE4E011C()
{
  sub_1AE4EAB10();
  if (v0 <= 0x3F)
  {
    sub_1AE4E0198();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1AE4E0198()
{
  if (!qword_1EB5DD080)
  {
    sub_1AE4EAB10();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB5DD080);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_4Dyld15AARDecoderErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_4Dyld10AtlasErrorO(uint64_t a1)
{
  v1 = *(a1 + 32) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AE4E024C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 33))
  {
    return (*a1 + 29);
  }

  v3 = ((*(a1 + 32) >> 1) & 0x1C | (*(a1 + 32) >> 6)) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AE4E02A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 29;
    *(result + 8) = 0;
    if (a3 >= 0x1D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1AE4E030C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 32) = *(result + 32) & 7 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -64;
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

uint64_t sub_1AE4E03A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1AE4E03E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AE4E0444()
{
  result = qword_1EB5DD030;
  if (!qword_1EB5DD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD030);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BufferError(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for BufferError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BufferError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1AE4E05B4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE4E05D0(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1AE4E0638(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v7 * v8;
  if ((v11 * v8) >> 64 == result >> 63)
  {
    v12 = *(v2 + 16);
    if (v12)
    {
      v13 = *v2 + v12;
      if (v13)
      {
        sub_1AE4E0E00(result, v13, v4, v9);
        v14 = *(a2 + 24);
        sub_1AE4E078C(*(v2 + 32), v4);
        return (*(v5 + 8))(v9, v4);
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4E078C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a2);
  if (v3)
  {
    return sub_1AE4EB130();
  }

  else
  {
    return sub_1AE4EB120();
  }
}

__n128 sub_1AE4E0878@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1AE4E088C()
{
  v1 = *v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = v0[3] - v2;
  }

  else
  {
    v3 = 0;
  }

  if (v1 < 0 || v3 < v1)
  {
    __break(1u);
  }

  else
  {
    v4 = v0[1];
    if ((v4 & 0x8000000000000000) == 0 && v3 >= v4)
    {
      return v4 - v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4E08CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  result = sub_1AE4BA9B0(*v2, v8, v9, v10);
  if (result >= v6)
  {
    v13 = v9 + v7;
    if (v9)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      __break(1u);
    }

    else
    {
      sub_1AE4E0E00(0, v13, v5, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = *(a1 + 24);
      sub_1AE4E078C(*(v2 + 32), v5);
      (*(v20 + 8))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      *v2 = sub_1AE4A7CA4(v6, v7, v8, v9, v10);
      *(v2 + 8) = v16;
      *(v2 + 16) = v17;
      *(v2 + 24) = v18;
      return (*(v20 + 56))(a2, 0, 1, v5);
    }
  }

  else
  {
    v12 = *(v20 + 56);

    return v12(a2, 1, 1, v5);
  }

  return result;
}

uint64_t sub_1AE4E0AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AE4E088C();
  *a1 = result;
  return result;
}

void (*sub_1AE4E0ACC(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  *a1 = v7;
  v8 = *a2;
  v9 = *(v3 + 16);
  *v7 = *v3;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v3 + 32);
  *(v7 + 72) = sub_1AE4E0BB4((v7 + 40), v8, a3);
  return sub_1AE4E0B6C;
}

void sub_1AE4E0B6C(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 72))();

  free(v1);
}

void (*sub_1AE4E0BB4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  sub_1AE4E0638(a2, a3);
  return sub_1AE4C67D4;
}

double sub_1AE4E0C84@<D0>(uint64_t a1@<X8>)
{
  sub_1AE4E0878(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1AE4E0CC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE4E0D1C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  swift_getWitnessTable();
  return sub_1AE4E8690();
}

uint64_t sub_1AE4E0D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 32);
  return MEMORY[0x1B27012D0](a1, a2, a3, a4, a5);
}

unint64_t sub_1AE4E0DBC(uint64_t a1)
{
  result = sub_1AE4C94DC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE4E0E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = *(v8 + 80);
  if (((v15 + 1) & v15) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = *(v8 + 72);
  if (v15 > 0xF)
  {
    while (1)
    {
      v12 = swift_slowAlloc();
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      v22 = v12;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v12 = v22;
      if (isStackAllocationSafe)
      {
        goto LABEL_8;
      }
    }

    v16 = (a2 + a1);
    v17 = v12;
    memcpy(v12, v16, v9);
    (*(v8 + 16))(a4, v17, a3);

LABEL_15:
    JUMPOUT(0x1B27020A0);
  }

  if (v12 >= 1025)
  {
    goto LABEL_12;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v12);
  v19 = &v24 - v18;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  memcpy(&v24 - v18, (a2 + a1), v9);
  (*(v8 + 16))(v11, v19, a3);
  v20 = *(v8 + 32);
  v20(v14, v11, a3);
  return (v20)(a4, v14, a3);
}

BOOL sub_1AE4E1038(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    return (a8 & 1) != 0;
  }

  if (a8)
  {
    return 0;
  }

  if (!a1)
  {
    if (a5)
    {
      return 0;
    }

LABEL_12:
    if (a2)
    {
      result = 0;
      if (!a6 || a2 != a6)
      {
        return result;
      }
    }

    else if (a6)
    {
      return 0;
    }

    return a3 == a7;
  }

  result = 0;
  if (a5 && a1 == a5)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1AE4E109C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AE4E10E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Endian(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Endian(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AE4E12A0()
{
  result = qword_1EB5DD730;
  if (!qword_1EB5DD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD730);
  }

  return result;
}

uint64_t sub_1AE4E1300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 1919181153;
  v10 = sub_1AE4AC6E0(1919181176, 0xE400000000000000, 0, a1, a2, a3);
  if (!v10)
  {
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v16 = 0;
    v15 = 0xE400000000000000;
    v9 = 1919181176;
    v17 = 96;
    goto LABEL_7;
  }

  v11 = sub_1AE4A6A00(v10);
  if (v4)
  {
    v15 = v12;
    v16 = v13;
    v17 = v14;
    v9 = v11;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

LABEL_7:
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    *a4 = v9;
    *(a4 + 8) = v15;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = 64;
    return result;
  }

  v18 = sub_1AE4AC6E0(1919181153, 0xE400000000000000, 0, a1, a2, a3);
  if (!v18)
  {
    goto LABEL_8;
  }

  sub_1AE4A6A00(v18);
  v9 = 1702523745;

  v20 = sub_1AE4AC6E0(1702523745, 0xE400000000000000, 0, a1, a2, a3);
  if (!v20 || (sub_1AE4A6A00(v20), v9 = 2036689769, , (v21 = sub_1AE4AC6E0(2036689769, 0xE400000000000000, 0, a1, a2, a3)) == 0))
  {
LABEL_8:
    v17 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v16 = 0;
    v15 = 0xE400000000000000;
    goto LABEL_7;
  }

  v23 = sub_1AE4AEC7C(v21, v22);
  v25 = v24;

  return sub_1AE4A41E8(v23, v25);
}

uint64_t sub_1AE4E15F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, a1, a2, a3);
  if (!v9)
  {
    v36 = xmmword_1AE4EE350;
    v37 = xmmword_1AE4EC830;
    v38 = 64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    v17 = 0;
    v16 = 0xE400000000000000;
    v18 = 96;
    v15 = 1684632949;
    goto LABEL_39;
  }

  result = sub_1AE4AEC7C(v9, v10);
  v15 = result;
  v16 = v12;
  if (v4)
  {
    v17 = v13;
    v18 = v14;
    *&v36 = result;
    *(&v36 + 1) = v12;
    *&v37 = v13;
    *(&v37 + 1) = v14;
    v38 = 64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();

LABEL_39:
    *a4 = v15;
    *(a4 + 8) = v16;
    *(a4 + 16) = v17;
    *(a4 + 24) = v18;
    *(a4 + 32) = 64;
    return result;
  }

  v19 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_38;
    }

    v21 = *(result + 16);
    v20 = *(result + 24);
    v22 = __OFSUB__(v20, v21);
    v23 = v20 - v21;
    if (!v22)
    {
      if (v23 != 16)
      {
        goto LABEL_38;
      }

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!v19)
  {
    if (BYTE6(v12) != 16)
    {
      goto LABEL_38;
    }

    goto LABEL_15;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (HIDWORD(result) - result != 16)
  {
    goto LABEL_38;
  }

LABEL_15:
  sub_1AE4A41E8(result, v12);

  v24 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, a1, a2, a3);
  if (!v24)
  {
    v36 = xmmword_1AE4EE2C0;
    v37 = xmmword_1AE4EC830;
    v38 = 64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    v17 = 0;
    v16 = 0xE400000000000000;
    v18 = 96;
    v15 = 1919181168;
    goto LABEL_39;
  }

  sub_1AE4A6A00(v24);
  v15 = 1702521203;

  v25 = sub_1AE4AC6E0(1702523760, 0xE400000000000000, 0, a1, a2, a3);
  if (!v25)
  {
    v36 = xmmword_1AE4EE340;
    v37 = xmmword_1AE4EC830;
    v38 = 64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    v17 = 0;
    v15 = 1702523760;
LABEL_21:
    v16 = 0xE400000000000000;
    v18 = 96;
    goto LABEL_39;
  }

  sub_1AE4A6A00(v25);

  v26 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, a1, a2, a3);
  if (!v26)
  {
    v36 = xmmword_1AE4EE2E0;
    v37 = xmmword_1AE4EC830;
    v38 = 64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    v17 = 0;
    goto LABEL_21;
  }

  sub_1AE4A6A00(v26);

  v27 = sub_1AE4AC6E0(1701670515, 0xE400000000000000, 0, a1, a2, a3);
  if (v27)
  {
    sub_1AE4AF28C(v27);
  }

  v28 = sub_1AE4AC6E0(1684632947, 0xE400000000000000, 0, a1, a2, a3);
  if (!v28)
  {
    goto LABEL_30;
  }

  result = sub_1AE4AEC7C(v28, v29);
  v15 = result;
  v16 = v30;
  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_38;
    }

    v34 = *(result + 16);
    v33 = *(result + 24);
    v22 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (!v22)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  if (!v31)
  {
    v32 = BYTE6(v30);
    goto LABEL_36;
  }

  LODWORD(v32) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v32 = v32;
LABEL_36:
    if (v32 == 16)
    {

      sub_1AE4A41E8(v15, v16);
LABEL_30:
      sub_1AE4ADEE4(1936158057, 0xE400000000000000, 0, a1, a2, a3, &v35);
      return sub_1AE4B00A8(1937010529, 0xE400000000000000, 1, a1, a2, a3, &v35);
    }

LABEL_38:
    v36 = 7uLL;
    v18 = 128;
    *&v37 = 0;
    *(&v37 + 1) = 128;
    v38 = 64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();

    result = sub_1AE4A41E8(v15, v16);
    v16 = 0;
    v17 = 0;
    v15 = 7;
    goto LABEL_39;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1AE4E1B8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYSegment_impl);
  if (v6)
  {
    v4 = v6[2];
    v7 = v6[3];
    v5 = v6[4];

    v8 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, v4, v7, v5);
    if (v8)
    {
      v9 = sub_1AE4AF28C(v8);

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  v11 = a3;
  v12 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v13 = v5;
  *(v13 + 8) = v4;
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4E1E28(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____DYSegment_impl))
  {
    v2 = result;

    sub_1AE4CC184(v5);

    if (v6)
    {
LABEL_5:
      v4 = vextq_s8(v8, v8, 8uLL);
      *(v2 + 16) = v7;
      *(v2 + 32) = v4;
      *(v2 + 48) = v9;
      return sub_1AE4DFD48(v5);
    }

    if (v5[0])
    {
      v3 = v5[1] - v5[0];
      *v2 = v5[0];
      *(v2 + 8) = v3;
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4E2078()
{
  v1 = type metadata accessor for Image.Info(0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____DYImage_impl))
  {

    sub_1AE4B55F8(v5);
    v6 = &v5[*(v1 + 24)];
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = v6[16];
    sub_1AE4BA890(*v6, v8, v6[16]);
    sub_1AE4BA56C(v5);
    if (v9 == 255)
    {

      return 0;
    }

    else
    {
      v10 = sub_1AE4BB8CC(v7, v8, v9 & 1);

      sub_1AE4BA998(v7, v8, v9);
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AE4E24FC()
{
  if (*(v0 + OBJC_IVAR____DYImage_impl))
  {
    v1 = *(v0 + OBJC_IVAR____DYImage_impl);

    v2 = sub_1AE4BA5C8();
    v4 = v3;

    if (v2)
    {
      v5 = [objc_allocWithZone(_DYSharedCache) initWithInternal_];
      v6 = &v5[OBJC_IVAR____DYSharedCache_impl];
      v7 = *&v5[OBJC_IVAR____DYSharedCache_impl];
      v8 = *&v5[OBJC_IVAR____DYSharedCache_impl + 8];
      *v6 = v2;
      v6[1] = v4;
      v9 = v5;
      sub_1AE4B4990(v7);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AE4E2604()
{
  v1 = OBJC_IVAR____DYImage____lazy_storage___segments;
  if (*(v0 + OBJC_IVAR____DYImage____lazy_storage___segments))
  {
    v2 = *(v0 + OBJC_IVAR____DYImage____lazy_storage___segments);
  }

  else
  {
    v2 = sub_1AE4E268C(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1AE4E268C(uint64_t result)
{
  if (*(result + OBJC_IVAR____DYImage_impl))
  {
    v1 = *(result + OBJC_IVAR____DYImage_impl);

    v3 = sub_1AE4C9FD0(v2);

    v4 = *(v3 + 16);
    if (v4)
    {
      v11 = MEMORY[0x1E69E7CC0];
      sub_1AE4EB0F0();
      v5 = 32;
      do
      {
        v6 = *(v3 + v5);
        v7 = objc_allocWithZone(_DYSegment);

        v8 = [v7 initWithInternal_];
        v9 = *&v8[OBJC_IVAR____DYSegment_impl];
        *&v8[OBJC_IVAR____DYSegment_impl] = v6;

        sub_1AE4EB0D0();
        v10 = *(v11 + 16);
        sub_1AE4EB100();
        sub_1AE4EB110();
        sub_1AE4EB0E0();
        v5 += 8;
        --v4;
      }

      while (v4);

      return v11;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4E2854(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYEnvironment_impl);
  if (v6)
  {
    v7 = v6[2];
    v8 = v6[3];
    v9 = v6[4];

    v10 = sub_1AE4AC6E0(1953460082, 0xE400000000000000, 0, v7, v8, v9);
    if (v10)
    {
      v11 = sub_1AE4AF28C(v10);
    }

    else
    {
      v11 = 0;
    }

    return v11;
  }

  else
  {
    __break(1u);
    sub_1AE4C78AC();
    swift_allocError();
    *v15 = v4;
    *(v15 + 8) = v5;
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4E2A60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + OBJC_IVAR____DYAOTImage_impl);
  if (v5)
  {
    v4 = v5[2];
    v7 = v5[3];
    v8 = v5[4];

    v9 = sub_1AE4AC6E0(a1, 0xE400000000000000, 0, v4, v7, v8);
    if (v9)
    {
      v10 = sub_1AE4A6A00(v9);

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v15 = v4;
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4E2B8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + OBJC_IVAR____DYAOTImage_impl);
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v5[2];
  v6 = v5[3];
  v7 = v5[4];

  v8 = sub_1AE4AC6E0(1702523745, 0xE400000000000000, 0, v4, v6, v7);
  if (v8)
  {
    v4 = sub_1AE4A6A00(v8);

    if ((v4 & 0x8000000000000000) == 0)
    {
      return v4;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  v10 = a2;
  v11 = a3;
  v12 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v13 = v4;
  *(v13 + 8) = v10;
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4E2CF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYAOTImage_impl);
  if (v6)
  {
    v4 = v6[2];
    v7 = v6[3];
    v5 = v6[4];

    v8 = sub_1AE4AC6E0(2036689769, 0xE400000000000000, 0, v4, v7, v5);
    if (v8)
    {
      v10 = sub_1AE4AEC7C(v8, v9);

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  v12 = a3;
  v13 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v14 = v5;
  *(v14 + 8) = v4;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4E2FC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYSharedCache_impl);
  if (v6)
  {
    v7 = *(v4 + OBJC_IVAR____DYSharedCache_impl + 8);
    v8 = v6[2];
    v5 = v6[3];
    v9 = v6[4];

    v10 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v8, v5, v9);
    if (v10)
    {
      v11 = sub_1AE4A6A00(v10);

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  v13 = a2;
  v14 = a3;
  v15 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v16 = v5;
  *(v16 + 8) = v13;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4E329C@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v7 = v3 + OBJC_IVAR____DYSharedCache_impl;
  v8 = *(v3 + OBJC_IVAR____DYSharedCache_impl);
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v7 + 8);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_14:
    __break(1u);
    v20 = a1;
    v21 = a2;
    sub_1AE4C78AC();
    swift_allocError();
    *v22 = v4;
    *(v22 + 8) = v5;
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v11 = *(Strong + 56);
  sub_1AE4BD9A8(v8);

  if (v11)
  {
    v12 = sub_1AE4AC6E0(1684632929, 0xE400000000000000, 0, v11[2], v11[3], v11[4]);
    if (v12)
    {
      v14 = sub_1AE4AEC7C(v12, v13);
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xF000000000000000;
    }

    sub_1AE4CFDC8(v14, v16, a3);
  }

  else
  {

    v17 = sub_1AE4EAB10();
    v18 = *(*(v17 - 8) + 56);

    return v18(a3, 1, 1, v17);
  }
}

uint64_t sub_1AE4E3514()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v11 - v4;
  if (!*(v0 + OBJC_IVAR____DYSharedCache_impl))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(v0 + OBJC_IVAR____DYSharedCache_impl + 8);
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = result;

  sub_1AE4CFA6C(v7, v5);

  v8 = sub_1AE4EAC50();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {

    sub_1AE4B4558(v5, &qword_1EB5DD520, &qword_1AE4EDB98);
    return 0;
  }

  else
  {
    v10 = sub_1AE4EABC0();

    (*(v9 + 8))(v5, v8);
    return v10;
  }
}

uint64_t sub_1AE4E382C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void *a5)
{
  a4();
  v7 = sub_1AE4EAE80();
  v8 = *(a1 + *a5);
  *(a1 + *a5) = v7;
}

uint64_t sub_1AE4E3A80(uint64_t *a1, uint64_t (*a2)(uint64_t), Class *a3, void *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = sub_1AE4E3B04(v4, a2, a3, a4);
    v8 = *(v4 + v5);
    *(v4 + v5) = v7;
  }

  return v7;
}

uint64_t sub_1AE4E3B04(uint64_t result, uint64_t (*a2)(uint64_t), Class *a3, void *a4)
{
  v4 = *(result + OBJC_IVAR____DYSharedCache_impl);
  if (v4)
  {
    v8 = *(result + OBJC_IVAR____DYSharedCache_impl + 8);
    sub_1AE4BD9A8(*(result + OBJC_IVAR____DYSharedCache_impl));
    v9 = a2(v4);

    v10 = *(v9 + 16);
    if (v10)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1AE4EB0F0();
      v11 = 32;
      do
      {
        v12 = *(v9 + v11);
        v13 = objc_allocWithZone(*a3);

        v14 = [v13 initWithInternal_];
        v15 = *&v14[*a4];
        *&v14[*a4] = v12;

        sub_1AE4EB0D0();
        v16 = *(v17 + 16);
        sub_1AE4EB100();
        sub_1AE4EB110();
        sub_1AE4EB0E0();
        v11 += 8;
        --v10;
      }

      while (v10);

      return v17;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1AE4E3DA0(uint64_t a1, uint64_t a2)
{
  v6 = sub_1AE4EAC50();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 initWithInternal_];
  MEMORY[0x1B27010F0](a1, a2);
  v11 = sub_1AE4DE014(v9, 0, v22);
  if (v3)
  {
    v13 = v23;
    v20 = v22[1];
    v21 = v22[0];

    sub_1AE4C9430();
    swift_allocError();
    v14 = v20;
    *v15 = v21;
    *(v15 + 16) = v14;
    *(v15 + 32) = v13;
  }

  else
  {
    v16 = &v10[OBJC_IVAR____DYSharedCache_impl];
    v17 = *&v10[OBJC_IVAR____DYSharedCache_impl];
    v18 = *&v10[OBJC_IVAR____DYSharedCache_impl + 8];
    *v16 = v11;
    *(v16 + 1) = v12;
    sub_1AE4B4990(v17);
  }

  return v10;
}

uint64_t sub_1AE4E3F90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + OBJC_IVAR____DYSnapshot_impl);
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v4 + OBJC_IVAR____DYSnapshot_impl + 8);
  v4 = v5[6];
  v7 = v5[7];
  v8 = v5[8];

  v9 = sub_1AE4AC6E0(1668248176, 0xE400000000000000, 0, v4, v7, v8);
  if (v9)
  {
    v4 = sub_1AE4A6A00(v9);

    if (v4 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v4 <= 0x7FFFFFFF)
    {
      return v4;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  v11 = a2;
  v12 = a3;
  v13 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v14 = v4;
  *(v14 + 8) = v11;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1AE4E4118()
{
  v1 = v0 + OBJC_IVAR____DYSnapshot_impl;
  v2 = *(v0 + OBJC_IVAR____DYSnapshot_impl);
  if (v2)
  {
    v3 = *(v1 + 8);

    v4 = sub_1AE4DF97C(v2);

    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        v12 = MEMORY[0x1E69E7CC0];
        sub_1AE4EB0F0();
        v6 = 32;
        do
        {
          v7 = *(v4 + v6);
          v8 = objc_allocWithZone(_DYAOTImage);

          v9 = [v8 initWithInternal_];
          v10 = *&v9[OBJC_IVAR____DYAOTImage_impl];
          *&v9[OBJC_IVAR____DYAOTImage_impl] = v7;

          sub_1AE4EB0D0();
          v11 = *(v12 + 16);
          sub_1AE4EB100();
          sub_1AE4EB110();
          sub_1AE4EB0E0();
          v6 += 8;
          --v5;
        }

        while (v5);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

char *sub_1AE4E4358(uint64_t a1, unint64_t a2)
{
  v6 = [v2 initWithInternal_];
  v28[3] = &type metadata for Snapshot.DefaultDelegate;
  v28[4] = &off_1F240DAF0;
  sub_1AE4A6E5C(v28, v27);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v27[3]);
  v26[3] = &type metadata for Snapshot.DefaultDelegate;
  v26[4] = &off_1F240DAF0;
  v7 = type metadata accessor for Snapshot.DecoderContext(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v26, &type metadata for Snapshot.DefaultDelegate);
  *(v10 + 5) = &type metadata for Snapshot.DefaultDelegate;
  *(v10 + 6) = &off_1F240DAF0;
  *(v10 + 7) = 0;
  v11 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
  v12 = sub_1AE4EAC50();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache] = 0;
  v10[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_privateSharedRegion] = 0;
  *&v10[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide] = 0;
  *&v10[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_pointerSize] = 8;
  v13 = v6;
  sub_1AE4A6FD8(a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  type metadata accessor for Snapshot.Impl();
  swift_allocObject();

  v14 = sub_1AE4A423C(a1, a2, v10, v24);
  if (v3)
  {
    v15 = v25;
    v22 = v24[1];
    v23 = v24[0];

    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_1AE4C9430();
    swift_allocError();
    *v16 = v23;
    *(v16 + 16) = v22;
    *(v16 + 32) = v15;

    sub_1AE4A41E8(a1, a2);
  }

  else
  {
    v17 = v14;
    sub_1AE4A41E8(a1, a2);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v18 = &v13[OBJC_IVAR____DYSnapshot_impl];
    v19 = *&v13[OBJC_IVAR____DYSnapshot_impl];
    v20 = *&v13[OBJC_IVAR____DYSnapshot_impl + 8];
    *v18 = v17;
    v18[1] = v10;
    sub_1AE4B4990(v19);
  }

  return v13;
}

id _DYEventHandlerToken.init(value:)(int a1)
{
  v2 = v1 + OBJC_IVAR____DYEventHandlerToken__value;
  *v2 = a1;
  *(v2 + 4) = 0;
  v4.super_class = _DYEventHandlerToken;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1AE4E48E0(void *a1)
{
  v3 = OBJC_IVAR____DYProcess_impl;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    if (*(v5 + 64))
    {

      return swift_endAccess();
    }

    *(v5 + 64) = a1;
    if (a1)
    {
      v6 = qword_1EB5DD1C0;
      v7 = a1;
      if (v6 != -1)
      {
        swift_once();
      }

      sub_1AE4EAF90();

      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4E49B0()
{
  v0 = *MEMORY[0x1E69E9A60];
  type metadata accessor for Process.Impl();
  swift_allocObject();
  v1 = sub_1AE4A37D0(v0, 0);
  v2 = [objc_allocWithZone(_DYProcess) initWithInternal_];
  v3 = OBJC_IVAR____DYProcess_impl;
  swift_beginAccess();
  v4 = *&v2[v3];
  *&v2[v3] = v1;

  return swift_dynamicCastUnknownClassUnconditional();
}

void sub_1AE4E4AD8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v6 = [objc_allocWithZone(_DYImage) initWithInternal_];
  v7 = *&v6[OBJC_IVAR____DYImage_impl];
  *&v6[OBJC_IVAR____DYImage_impl] = a1;
  v8 = v6;

  a3(v8, a2);
}

id sub_1AE4E4F6C(char *a1, uint64_t a2, uint64_t a3, void *a4, objc_class **a5)
{
  *&a1[*a4] = 0;
  v5 = *a5;
  v7.receiver = a1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1AE4E4FE8()
{
  v0 = sub_1AE4EAC50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B2700FF0](47, 0xE100000000000000);
  v5 = sub_1AE4DE568(v4);
  (*(v1 + 8))(v4, v0);
  v6 = *(v5 + 2);
  if (v6)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AE4EB0F0();
    v7 = 32;
    do
    {
      v15 = *&v5[v7];
      v8 = objc_allocWithZone(_DYSharedCache);

      v9 = [v8 initWithInternal_];
      v10 = *&v9[OBJC_IVAR____DYSharedCache_impl];
      v11 = *&v9[OBJC_IVAR____DYSharedCache_impl + 8];
      *&v9[OBJC_IVAR____DYSharedCache_impl] = v15;
      v12 = v9;
      sub_1AE4B4990(v10);

      sub_1AE4EB0D0();
      v13 = *(v16 + 16);
      sub_1AE4EB100();
      sub_1AE4EB110();
      sub_1AE4EB0E0();
      v7 += 16;
      --v6;
    }

    while (v6);

    return v16;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1AE4E51C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE4EAC50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  MEMORY[0x1B27010F0](a1, a2);
  v9 = sub_1AE4DE568(v8);
  (*(v5 + 8))(v8, v4);
  v10 = *(v9 + 2);
  if (v10)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AE4EB0F0();
    v11 = 32;
    do
    {
      v19 = *&v9[v11];
      v12 = objc_allocWithZone(_DYSharedCache);

      v13 = [v12 initWithInternal_];
      v14 = *&v13[OBJC_IVAR____DYSharedCache_impl];
      v15 = *&v13[OBJC_IVAR____DYSharedCache_impl + 8];
      *&v13[OBJC_IVAR____DYSharedCache_impl] = v19;
      v16 = v13;
      sub_1AE4B4990(v14);

      sub_1AE4EB0D0();
      v17 = *(v20 + 16);
      sub_1AE4EB100();
      sub_1AE4EB110();
      sub_1AE4EB0E0();
      v11 += 16;
      --v10;
    }

    while (v10);

    return v20;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1AE4E53B0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_1AE4E5758(v5, v7) & 1;
}

uint64_t unwrapCompactInfo(_:size:)(_BYTE *a1, uint64_t *a2)
{
  v3 = *a2;
  if (v3 < 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = sub_1AE4E59B8(a1, v3);
  v7 = v6;
  sub_1AE4A6FD8(v5, v6);
  v47[6] = sub_1AE4A702C(v5, v7, v47);
  v47[7] = v8;
  v48 = v9;
  v49 = v10;
  v11 = sub_1AE4AA0F0(0x2E737365636F7270uLL, 0xED00006F666E6963, v47);
  if (v12 >> 60 == 15)
  {
    v14 = v48;
    v15 = v49;

    sub_1AE4A41E8(v14, v15);
    sub_1AE4A41E8(v5, v7);
    return 0;
  }

  v16 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v16)
    {
      __src = v11;
      v42 = v12;
      v43 = BYTE2(v12);
      v44 = BYTE3(v12);
      v45 = BYTE4(v12);
      v17 = BYTE6(v12);
      v46 = BYTE5(v12);
      v18 = v12;
      v19 = v11;
      memcpy(a1, &__src, BYTE6(v12));
      v11 = v19;
      v12 = v18;
LABEL_30:
      *a2 = v17;
      sub_1AE4ABE40(v11, v12);
      sub_1AE4A41E8(v5, v7);
      v39 = v48;
      v40 = v49;

      sub_1AE4A41E8(v39, v40);
      return 1;
    }

    v31 = v11;
    v32 = (v11 >> 32) - v11;
    if (v11 >> 32 >= v11)
    {
      v33 = v11;
      v23 = v12;
      v34 = sub_1AE4EA990();
      if (!v34)
      {
LABEL_38:
        result = sub_1AE4EA9A0();
        goto LABEL_39;
      }

      v35 = v34;
      v36 = sub_1AE4EA9B0();
      if (!__OFSUB__(v31, v36))
      {
        v37 = (v31 - v36 + v35);
        result = sub_1AE4EA9A0();
        if (!v37)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (result >= v32)
        {
          v38 = v32;
        }

        else
        {
          v38 = result;
        }

        memmove(a1, v37, v38);
        v11 = v33;
        if (!__OFSUB__(HIDWORD(v33), v33))
        {
          v17 = HIDWORD(v33) - v33;
          goto LABEL_27;
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v16 != 2)
  {
    goto LABEL_29;
  }

  v20 = *(v11 + 16);
  v21 = *(v11 + 24);
  v22 = v11;
  v23 = v12;
  v24 = sub_1AE4EA990();
  if (v24)
  {
    v25 = sub_1AE4EA9B0();
    if (__OFSUB__(v20, v25))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v24 += v20 - v25;
  }

  v26 = __OFSUB__(v21, v20);
  v27 = v21 - v20;
  if (v26)
  {
    goto LABEL_33;
  }

  result = sub_1AE4EA9A0();
  if (v24)
  {
    if (result >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = result;
    }

    memmove(a1, v24, v28);
    v30 = *(v22 + 16);
    v29 = *(v22 + 24);
    v17 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
      v11 = v22;
LABEL_27:
      v12 = v23;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_29:
      v17 = 0;
      goto LABEL_30;
    }

    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1AE4E5758(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 32);
  if (v4 <= 2)
  {
    if (!*(a1 + 32))
    {
      if (!a2[2].i8[0])
      {
        return a2->u8[0] == v3;
      }

      return 0;
    }

    if (v4 == 1)
    {
      if (a2[2].i8[0] != 1)
      {
        return 0;
      }
    }

    else if (a2[2].i8[0] != 2)
    {
      return 0;
    }

    return a2->i32[0] == v3;
  }

  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  if (v4 > 4)
  {
    if (v4 == 5)
    {
      if (a2[2].i8[0] != 5)
      {
        return 0;
      }

      if (v7)
      {
        if ((a2[1].i8[8] & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (a2[1].i8[8])
        {
          return 0;
        }

        v15 = a2->i64[0];
        v14 = a2->i64[1];
        if (v3)
        {
          if (!v15 || v3 != v15)
          {
            return 0;
          }
        }

        else if (v15)
        {
          return 0;
        }

        if (v5)
        {
          if (!v14 || v5 != v14)
          {
            return 0;
          }
        }

        else if (v14)
        {
          return 0;
        }

        if (v6 != a2[1].i64[0])
        {
          return 0;
        }
      }
    }

    else
    {
      v11 = v6 | v5;
      if (v11 | v3 | v7)
      {
        v12 = v11 | v7;
        if (v3 != 1 || v12)
        {
          if (v3 != 2 || v12)
          {
            if (v3 != 3 || v12)
            {
              if (v3 != 4 || v12)
              {
                if (a2[2].i8[0] != 6 || a2->i64[0] != 5)
                {
                  return 0;
                }
              }

              else if (a2[2].i8[0] != 6 || a2->i64[0] != 4)
              {
                return 0;
              }
            }

            else if (a2[2].i8[0] != 6 || a2->i64[0] != 3)
            {
              return 0;
            }
          }

          else if (a2[2].i8[0] != 6 || a2->i64[0] != 2)
          {
            return 0;
          }
        }

        else if (a2[2].i8[0] != 6 || a2->i64[0] != 1)
        {
          return 0;
        }

        if (a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
        {
          return 0;
        }
      }

      else
      {
        if (a2[2].i8[0] != 6)
        {
          return 0;
        }

        v13 = vorrq_s8(*a2, a2[1]);
        if (vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))
        {
          return 0;
        }
      }
    }

    return 1;
  }

  if (v4 == 3)
  {
    if (a2[2].i8[0] == 3)
    {
      if (v3 != a2->i64[0] || v5 != a2->i64[1])
      {
        return sub_1AE4EB190();
      }

      return 1;
    }

    return 0;
  }

  if (a2[2].i8[0] != 4 || v3 != a2->i64[0])
  {
    return 0;
  }

  v10 = v6 == a2[1].i64[0] && v7 == a2[1].i64[1];
  return v5 == a2->i64[1] && v10;
}

uint64_t sub_1AE4E59B8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1AE4C91C8(a1, &a1[a2]);
  }

  v3 = sub_1AE4EA9D0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1AE4EA980();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1AE4EAA40();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
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

unint64_t sub_1AE4E5A94(uint64_t a1)
{
  result = sub_1AE4C9530();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AE4E5AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 36) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1AE4E5B34(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = a1 + 32;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_1AE4E5B50(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 32);
    result += 32;
    v3 = (v2 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 38);
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 36) = 0x80;
  }

  return result;
}

uint64_t sub_1AE4E5BA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AE4E5BEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AE4E5C34(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AARDecoder.FileRecord(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AARDecoder.FileRecord(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 21) = v3;
  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AARDecoder.ValidationState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AARDecoder.ValidationState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1AE4E5D34(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE4E5D50(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1AE4E5DB0()
{
  v3 = *v0;
  sub_1AE4E617C();
  v1 = sub_1AE4EAE20();
  MEMORY[0x1B2701270](v1);

  return 30768;
}

unint64_t sub_1AE4E5E24()
{
  result = qword_1EB5DD7E0;
  if (!qword_1EB5DD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD7E0);
  }

  return result;
}

unint64_t sub_1AE4E5E94()
{
  result = qword_1EB5DD7E8;
  if (!qword_1EB5DD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD7E8);
  }

  return result;
}

unint64_t sub_1AE4E5F14()
{
  result = qword_1EB5DD7F0;
  if (!qword_1EB5DD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD7F0);
  }

  return result;
}

unint64_t sub_1AE4E5F68()
{
  result = qword_1EB5DD7F8;
  if (!qword_1EB5DD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD7F8);
  }

  return result;
}

unint64_t sub_1AE4E5FC0()
{
  result = qword_1EB5DD800;
  if (!qword_1EB5DD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD800);
  }

  return result;
}

unint64_t sub_1AE4E6018()
{
  result = qword_1EB5DD808;
  if (!qword_1EB5DD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD808);
  }

  return result;
}

uint64_t sub_1AE4E6098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AE4E60D4()
{
  result = qword_1EB5DD810;
  if (!qword_1EB5DD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD810);
  }

  return result;
}

unint64_t sub_1AE4E6128()
{
  result = qword_1EB5DD818;
  if (!qword_1EB5DD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD818);
  }

  return result;
}

unint64_t sub_1AE4E617C()
{
  result = qword_1EB5DD820;
  if (!qword_1EB5DD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD820);
  }

  return result;
}

uint64_t sub_1AE4E61F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(unsigned int *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  Command = type metadata accessor for MachO.LoadCommand();
  v51 = *(Command - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](Command);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v46 - v13;
  v52 = sub_1AE4EAB10();
  v14 = *(v52 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD828, &qword_1AE4EE9E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = (&v46 - v19);
  result = sub_1AE4E6D3C(a1, a2, a3 & 0x101, &v62);
  v22 = v62;
  v23 = v63;
  v24 = v64;
  v25 = v65;
  v67 = v66;
  v58 = v62;
  v59 = v63;
  v60 = v64;
  v61 = v65;
  v26 = v65 - v64;
  v27 = v64 == 0;
  if (v64)
  {
    v28 = v65 - v64;
  }

  else
  {
    v28 = 0;
  }

  if ((v62 & 0x8000000000000000) == 0 && v28 >= v62)
  {
    a3 = (v51 + 56);
    v49 = (v14 + 56);
    v51 = v14 + 32;
    while ((v23 & 0x8000000000000000) == 0 && v28 >= v23)
    {
      if ((v23 - v22) <= 3)
      {
        goto LABEL_64;
      }

      if (v27)
      {
        goto LABEL_90;
      }

      v29 = *(v24 + v22);
      v30 = bswap32(v29);
      if (v67)
      {
        v29 = v30;
      }

      v31 = v22 + 4;
      if (__OFADD__(v22, 4))
      {
        goto LABEL_70;
      }

      if (v26 < v31 || v26 < v23 || v26 < v22 || (v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }

      if (v23 < v31)
      {
        goto LABEL_72;
      }

      if (v31 < v22)
      {
        goto LABEL_73;
      }

      v58 = v22 + 4;
      v59 = v23;
      v32 = (v24 + v31);
      v60 = v24;
      v61 = v25;
      if ((v23 - v31) <= 3)
      {
        v53 = v24 + v31;
        v54 = v24 + v23;
        goto LABEL_67;
      }

      v33 = *v32;
      v34 = bswap32(*v32);
      if (v67)
      {
        v35 = v34;
      }

      else
      {
        v35 = v33;
      }

      v36 = v31 + 4;
      if (__OFADD__(v31, 4))
      {
        goto LABEL_74;
      }

      if ((v36 & 0x8000000000000000) != 0 || v26 < v36)
      {
        goto LABEL_75;
      }

      if (v23 < v36)
      {
        goto LABEL_76;
      }

      if (v36 < v31)
      {
        goto LABEL_77;
      }

      v58 = v31 + 4;
      v60 = v24;
      if (v29 == 27)
      {
        v37 = v48;
        sub_1AE4E6834(v57);
        v38 = v52;
        (*v49)(v37, 0, 1, v52);
        v39 = *v51;
        result = (*v51)(v50, v37, v38);
        if (v35 < 0x18)
        {
          goto LABEL_81;
        }

        v24 = v60;
        v25 = v61;
        v40 = v61 - v60;
        if (!v60)
        {
          v40 = 0;
        }

        if ((v58 & 0x8000000000000000) != 0 || v40 < v58)
        {
          goto LABEL_82;
        }

        v23 = v59;
        if ((v59 & 0x8000000000000000) != 0 || v40 < v59)
        {
          goto LABEL_83;
        }

        v41 = v35 - 24;
        if (v35 == 24 || (v59 - v58) < 0 || (v22 = v59, (v59 - v58) >= v41))
        {
          v22 = v58 + v41;
          if (__OFADD__(v58, v41))
          {
            goto LABEL_88;
          }

          if ((v22 & 0x8000000000000000) != 0 || v40 < v22)
          {
            goto LABEL_89;
          }

          if (v59 < v22)
          {
            goto LABEL_84;
          }
        }

        if (v22 < v58)
        {
          goto LABEL_85;
        }

        v39(v20, v50, v52);
      }

      else
      {
        v42 = v35 - 8;
        if (v35 < 8)
        {
          goto LABEL_78;
        }

        if (v35 == 8 || (v23 - v36) < 0 || (v22 = v23, (v23 - v36) >= v42))
        {
          v22 = v36 + v42;
          if (__OFADD__(v36, v42))
          {
            goto LABEL_86;
          }

          if ((v22 & 0x8000000000000000) != 0 || v26 < v22)
          {
            goto LABEL_87;
          }
        }

        if (v23 < v22)
        {
          goto LABEL_79;
        }

        if (v22 < v36)
        {
          goto LABEL_80;
        }

        *v20 = v29;
      }

      swift_storeEnumTagMultiPayload();
      (*a3)(v20, 0, 1, Command);
      sub_1AE4E6E10(v20, v10);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v44 = v52;
        v45 = v47;
        (*v51)(v47, v10, v52);
        return (*v49)(v45, 0, 1, v44);
      }

      result = sub_1AE4E6E74(v10);
      v26 = v25 - v24;
      v27 = v24 == 0;
      if (v24)
      {
        v28 = v25 - v24;
      }

      else
      {
        v28 = 0;
      }

      if (v28 < v22)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
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
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  if (v27)
  {
LABEL_91:
    __break(1u);
    return result;
  }

  v53 = v24 + v22;
  v54 = v24 + v23;
LABEL_67:
  v55 = 4;
  v56 = 0;
  sub_1AE4C94DC();
  swift_willThrowTypedImpl();
  v43 = v47;
  (*a3)(v20, 1, 1, Command);
  return (*v49)(v43, 1, 1, v52);
}

uint64_t sub_1AE4E6834(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  result = sub_1AE4BA9B0(*v1, v3, v5, v6);
  if (result <= 15)
  {
    if (v5)
    {
      sub_1AE4C94DC();
      result = swift_willThrowTypedImpl();
      *a1 = v5 + v4;
      *(a1 + 8) = v5 + v3;
      *(a1 + 16) = 16;
      *(a1 + 24) = 0;
      return result;
    }

    goto LABEL_17;
  }

  v8 = *(v5 + v4 + 7);
  v9 = *(v5 + v4 + 6);
  v10 = *(v5 + v4 + 5);
  v11 = *(v5 + v4 + 4);
  v12 = *(v5 + v4 + 3);
  v13 = *(v5 + v4 + 2);
  v14 = *(v5 + v4 + 1);
  v15 = *(v5 + v4);
  v18 = *(v5 + v4 + 8);
  result = sub_1AE4EAAF0();
  v16 = v4 + 16;
  if (__OFADD__(v4, 16))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v6 - v5;
  if (!v5)
  {
    v17 = 0;
  }

  if (v16 < 0 || v17 < v16)
  {
    goto LABEL_14;
  }

  if (v3 < v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 < v4)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  *v1 = v16;
  v1[1] = v3;
  v1[2] = v5;
  v1[3] = v6;
  return result;
}

uint64_t sub_1AE4E696C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  if (!v3)
  {
    goto LABEL_29;
  }

  v4 = v1[4];
  if (v4 >= bswap32(*(v3 + 4)))
  {
LABEL_11:
    v11 = 0;
    v12 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 2;
LABEL_19:
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v13;
    return result;
  }

  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v16 = *(v1 + 56);
  if (v16 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    result = sub_1AE4EB230();
    v10 = v17 + 8;
    if (!__OFADD__(v17, 8))
    {
      if ((v4 - 0x400000000000000) >> 59 == 31)
      {
        v11 = v10 + 32 * v4;
        if (!__OFADD__(v10, 32 * v4))
        {
          result = sub_1AE4EB230();
          v12 = v18;
          if (v18 >= v11)
          {
            if (v11 < v6 || v5 < v18)
            {
              __break(1u);
              goto LABEL_11;
            }

LABEL_18:
            v1[4] = v4 + 1;
            v13 = v16;
            goto LABEL_19;
          }

          goto LABEL_26;
        }

        goto LABEL_24;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
  result = sub_1AE4EB230();
  v14 = v17 + 8;
  if (__OFADD__(v17, 8))
  {
    goto LABEL_21;
  }

  v15 = 20 * v4;
  if ((v4 * 20) >> 64 != (20 * v4) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = sub_1AE4EB230();
  v12 = v18;
  if (v18 >= v11)
  {
    if (v11 >= v6 && v5 >= v18)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1AE4E6B5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2 - result;
  if (!result)
  {
    v4 = 0;
  }

  *a4 = 0;
  *(a4 + 8) = v4;
  *(a4 + 16) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = 0;
  *(a4 + 40) = v4;
  *(a4 + 48) = result;
  *(a4 + 56) = a2;
  *(a4 + 64) = 0;
  *(a4 + 72) = result;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return result;
}

unint64_t sub_1AE4E6B88()
{
  sub_1AE4E696C(v19);
  v1 = v20;
  if (v20 == 2)
  {
    return 0;
  }

  v2 = v19[0];
  v3 = v19[2];
  v5 = *v0;
  v4 = v0[1];
  v17 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
  result = sub_1AE4EB230();
  v7 = v18;
  if (v1)
  {
    if (!v3)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v8 = bswap64(*(v3 + v2 + 8));
    if ((v8 & 0x8000000000000000) != 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v7 = v18 + v8;
    if (__OFADD__(v18, v8))
    {
      goto LABEL_24;
    }

    v9 = bswap64(*(v3 + v2 + 16));
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v10 = bswap32(*(v3 + v2 + 8));
  v11 = __OFADD__(v7, v10);
  v7 += v10;
  if (v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = bswap32(*(v3 + v2 + 12));
LABEL_11:
  v11 = __OFADD__(v7, v9);
  v12 = v7 + v9;
  if (v11)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v12 < v7)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 < v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 < v12)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = v17 + v7;
  v14 = v17 + v12;
  if (v17)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v17)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  return sub_1AE4E6F38(v16, v15);
}

uint64_t type metadata accessor for MachO.LoadCommand()
{
  result = qword_1EB5DCF80;
  if (!qword_1EB5DCF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1AE4E6D3C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v6 = result;
  v8 = *(result + 20);
  v9 = bswap32(v8);
  if (a3)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  result = sub_1AE4BA9B0(0, v10, result, a2);
  v11 = v10;
  if ((a3 & 0x100) != 0)
  {
    if (result < 0x20)
    {
      goto LABEL_14;
    }

    if ((a2 - v6) < 32)
    {
      goto LABEL_18;
    }

    if (v10 >= 0x20)
    {
      v11 = 32;
      goto LABEL_14;
    }
  }

  else
  {
    if (result < 0x1C)
    {
LABEL_14:
      *a4 = v11;
      *(a4 + 8) = v10;
      *(a4 + 16) = v6;
      *(a4 + 24) = a2;
      *(a4 + 32) = a3 & 1;
      return result;
    }

    if ((a2 - v6) < 28)
    {
      goto LABEL_17;
    }

    if (v10 >= 0x1C)
    {
      v11 = 28;
      goto LABEL_14;
    }

    __break(1u);
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE4E6E10(uint64_t a1, uint64_t a2)
{
  Command = type metadata accessor for MachO.LoadCommand();
  (*(*(Command - 8) + 32))(a2, a1, Command);
  return a2;
}

uint64_t sub_1AE4E6E74(uint64_t a1)
{
  Command = type metadata accessor for MachO.LoadCommand();
  (*(*(Command - 8) + 8))(a1, Command);
  return a1;
}

uint64_t sub_1AE4E6ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AE4E6F38(unint64_t result, uint64_t a2)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = sub_1AE4C57EC(0);
  if (v2)
  {
    v6 = v2;
    sub_1AE4E709C();
    swift_willThrowTypedImpl();
    v7 = 0;
    return v7 | ((v6 != 0) << 32);
  }

  v8 = v5;
  if (v5 <= -17958195)
  {
    result = v4;
    if (v8 == -822415874 || v8 == -805638658)
    {
      return result;
    }

LABEL_13:
    v6 = 0;
    sub_1AE4E709C();
    swift_willThrowTypedImpl();
    v7 = v8;
    return v7 | ((v6 != 0) << 32);
  }

  result = v4;
  if (v8 != -17958194 && v8 != -17958193)
  {
    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1AE4E709C()
{
  result = qword_1EB5DD830[0];
  if (!qword_1EB5DD830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5DD830);
  }

  return result;
}

unint64_t sub_1AE4E70F0(unint64_t result, uint64_t a2)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = sub_1AE4C57EC(1);
    if (v2)
    {
      v6 = v2;
      sub_1AE4E709C();
      swift_willThrowTypedImpl();
      v7 = 0;
    }

    else
    {
      if (v5 == -889275714)
      {
        return v4;
      }

      if (v5 == -889275713)
      {
        return v4;
      }

      v6 = 0;
      v8 = v5;
      sub_1AE4E709C();
      swift_willThrowTypedImpl();
      v7 = v8;
    }

    return v7 | ((v6 != 0) << 32);
  }

  return result;
}

uint64_t sub_1AE4E7204(uint64_t result, uint64_t a2)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = sub_1AE4C57EC(0);
    if (v2)
    {
      sub_1AE4E709C();
      swift_willThrowTypedImpl();
      return 0x100000000;
    }

    else
    {
      v7 = v6;
      result = 0;
      if (v7 > -822415875)
      {
        if ((v7 + 17958194) < 2 || v7 == -805638658 || v7 == -822415874)
        {
          return sub_1AE4E6F38(v5, a2);
        }
      }

      else if ((v7 + 889275714) < 2 || v7 == -1095041334 || v7 == -1078264118)
      {
        return sub_1AE4E70F0(v5, a2);
      }
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MachO(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 18))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 16) & 0x3E00 | (*(a1 + 16) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 16) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MachO(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 16) = 0;
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_1AE4E746C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AE4E749C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x8000;
  }

  return result;
}

uint64_t sub_1AE4E74D8()
{
  result = sub_1AE4EAB10();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MachO.UniversalFile(uint64_t a1, unsigned int a2)
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
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MachO.UniversalFile(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MachO.File(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for MachO.File(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AE4E7700()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);

  sub_1AE4EACD0();
}

uint64_t sub_1AE4E77E0()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);

  v5 = sub_1AE4EACB0();

  return v5;
}

uint64_t sub_1AE4E78DC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);

  v8 = a1(v7, v4, v5, v6);

  return v8;
}

uint64_t sub_1AE4E798C()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);

  LOBYTE(v4) = MEMORY[0x1B2701150](v5, v2, v3, v4);

  return v4 & 1;
}

uint64_t sub_1AE4E7A1C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4E7AB8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  result = a1();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  return result;
}

void (*sub_1AE4E7AF0(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v11 = *(a3 + 80);
  v10 = *(a3 + 88);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[4] = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  v9[5] = v13;
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = v14;
  v9[6] = v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a2 + 16);
  v19 = *v3;
  v20 = sub_1AE4E7CF8(v9);
  v22 = v21;
  v9[7] = v20;
  (*(*(v11 - 8) + 16))(v15);
  (*(*(v10 - 8) + 16))(v15 + *(TupleTypeMetadata2 + 48), v22, v10);
  return sub_1AE4E7C80;
}

void sub_1AE4E7C80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1AE4E7CF8(uint64_t *a1))(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v6 = *(TupleTypeMetadata2 - 8);
  a1[1] = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  v8 = *(TupleTypeMetadata2 + 48);
  sub_1AE4E7700();
  return sub_1AE4C67D4;
}

uint64_t sub_1AE4E7E24(uint64_t a1, void *a2)
{
  v3 = a2[10];
  v2 = a2[11];
  v4 = a2[12];
  type metadata accessor for ReferencedDictionary();

  return sub_1AE4EAF50();
}

uint64_t sub_1AE4E7E88(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  type metadata accessor for ReferencedDictionary();

  return sub_1AE4EAF40();
}

void sub_1AE4E7F04(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[10];
  v4 = a3[11];
  v5 = a3[12];
  type metadata accessor for ReferencedDictionary();

  JUMPOUT(0x1B27013A0);
}

uint64_t sub_1AE4E7F78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[10];
  v5 = a4[11];
  v6 = a4[12];
  type metadata accessor for ReferencedDictionary();

  return sub_1AE4EAF00();
}

uint64_t sub_1AE4E7FF0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[10];
  v4 = a3[11];
  v5 = a3[12];
  type metadata accessor for ReferencedDictionary();

  return sub_1AE4EAF30();
}

uint64_t sub_1AE4E80AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for ReferencedDictionary();
  return sub_1AE4E84E0(a1, a2, v14, a4, a5, a6);
}

uint64_t sub_1AE4E811C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[10];
  v4 = a3[11];
  v5 = a3[12];
  type metadata accessor for ReferencedDictionary();

  return sub_1AE4E85C4();
}

uint64_t sub_1AE4E8180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *v2;
  result = sub_1AE4E77E0();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  return result;
}

uint64_t sub_1AE4E81C0(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *v1;
  v7 = sub_1AE4E77E0();
  v9 = v8;
  v11 = v10;
  result = sub_1AE4E847C(v3, v4, v5);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  return result;
}

uint64_t sub_1AE4E823C@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;

  v3 = sub_1AE4E78AC();
  v5 = v4;
  v7 = v6;

  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7 & 1;
  return result;
}

uint64_t sub_1AE4E82A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE4E82F4(void *a1)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  type metadata accessor for ReferencedDictionary();
  swift_getWitnessTable();
  v5 = sub_1AE4E8690();
  v6 = *v1;

  return v5;
}

void sub_1AE4E8360(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[10];
  v5 = a4[11];
  v6 = a4[12];
  type metadata accessor for ReferencedDictionary();

  JUMPOUT(0x1B27012D0);
}

uint64_t sub_1AE4E83D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[10];
  v5 = a4[11];
  v6 = a4[12];
  type metadata accessor for ReferencedDictionary();
  return sub_1AE4EAE50();
}

uint64_t sub_1AE4E847C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1AE4E84E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1AE4EAD10();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4E85C4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1AE4EAD10();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_1AE4EAF70() + 36);
  result = sub_1AE4EAD10();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4E8698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    sub_1AE4DAC10(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    v12 = sub_1AE4EAB10();
    result = (*(*(v12 - 8) + 8))(a4, v12);
    *v4 = v28;
  }

  else
  {
    v14 = *v4;
    v15 = sub_1AE4B4484(a4);
    if (v16)
    {
      v17 = v15;
      v18 = *v5;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v5;
      v29 = *v5;
      if (!v19)
      {
        sub_1AE4EA2DC();
        v20 = v29;
      }

      v21 = *(v20 + 48);
      v22 = sub_1AE4EAB10();
      v23 = *(v22 - 8);
      v24 = *(v23 + 8);
      v24(v21 + *(v23 + 72) * v17, v22);
      v25 = *(*(v20 + 56) + 24 * v17);

      sub_1AE4E938C(v17, v20);
      result = (v24)(a4, v22);
      *v5 = v20;
    }

    else
    {
      v26 = sub_1AE4EAB10();
      v27 = *(*(v26 - 8) + 8);

      return v27(a4, v26);
    }
  }

  return result;
}

uint64_t sub_1AE4E8870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    sub_1AE4DAA6C(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v23;
  }

  else
  {
    v15 = *v5;
    v16 = sub_1AE4E8FE4(a4, a5);
    LOBYTE(v15) = v17;

    if (v15)
    {
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v24 = *v6;
      if (!v19)
      {
        sub_1AE4EA154();
        v20 = v24;
      }

      v21 = *(*(v20 + 48) + 16 * v16 + 8);

      v22 = *(*(v20 + 56) + 24 * v16);

      result = sub_1AE4E91D0(v16, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t sub_1AE4E8988()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD8C0, &qword_1AE4EEC40);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EB5DD170 = MEMORY[0x1E69E7CC8];
  *algn_1EB5DD178 = MEMORY[0x1E69E7CC8];
  qword_1EB5DD180 = MEMORY[0x1E69E7CC0];
  qword_1EB5DD188 = result;
  return result;
}

char *sub_1AE4E89E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD8D8, &qword_1AE4EEC58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

size_t sub_1AE4E8AFC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD8D0, &qword_1AE4EEC50);
  v10 = *(sub_1AE4EAC50() - 8);
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
  v15 = *(sub_1AE4EAC50() - 8);
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

char *sub_1AE4E8CD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD8C8, &qword_1AE4EEC48);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AE4E8DE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD8B8, &qword_1AE4EEC38);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1AE4E8EEC(unsigned int a1)
{
  v3 = MEMORY[0x1B27016E0](*(v1 + 40), a1, 4);

  return sub_1AE4E96B0(a1, v3);
}

unint64_t sub_1AE4E8F34(uint64_t *a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  sub_1AE4EB260();
  sub_1AE4EADC0();
  MEMORY[0x1B2701710](v6);
  MEMORY[0x1B2701710](v7);
  MEMORY[0x1B2701710](v8);
  v9 = sub_1AE4EB290();

  return sub_1AE4E971C(a1, v9);
}

unint64_t sub_1AE4E8FE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1AE4EB260();
  sub_1AE4EADC0();
  v6 = sub_1AE4EB290();

  return sub_1AE4E983C(a1, a2, v6);
}

uint64_t sub_1AE4E905C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE4EB060() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x1B27016E0](*(a2 + 40), *v10, 4);
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

uint64_t sub_1AE4E91D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE4EB060() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1AE4EB260();

      sub_1AE4EADC0();
      v14 = sub_1AE4EB290();

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
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
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

unint64_t sub_1AE4E938C(int64_t a1, uint64_t a2)
{
  v44 = sub_1AE4EAB10();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = sub_1AE4EB060();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v41 = (v13 + 1) & v12;
    v42 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    v40 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v42(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1AE4A9918(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
      v26 = sub_1AE4EACE0();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 24 * a1;
          v33 = (v31 + 24 * v11);
          if (a1 != v11 || v32 >= v33 + 24)
          {
            v34 = *v33;
            *(v32 + 16) = *(v33 + 2);
            *v32 = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1AE4E96B0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AE4E971C(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[1];
    v10 = a1[2];
    v9 = a1[3];
    v11 = a1[4];
    v12 = *(v2 + 48);
    v27 = v12;
    do
    {
      v15 = (v12 + 40 * v5);
      v16 = *v15;
      v17 = v15[1];
      v19 = v15[2];
      v18 = v15[3];
      v20 = v15[4];
      if (v16 == v7 && v17 == v8)
      {
        if (v19 == v10 && v18 == v9 && v20 == v11)
        {
          return v5;
        }
      }

      else
      {
        v28 = v20;
        v22 = v9;
        v23 = sub_1AE4EB190();
        v12 = v27;
        v9 = v22;
        if (v23)
        {
          v24 = v19 == v10 && v18 == v22;
          if (v24 && v28 == v11)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AE4E983C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1AE4EB190())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1AE4E98F4()
{
  v1 = v0;
  v35 = sub_1AE4EAC50();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD610, &qword_1AE4EDC48);
  v4 = *v0;
  v5 = sub_1AE4EB160();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v16 = v35;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v23 = v34;
        (*(v37 + 16))(v34, *(v4 + 48) + v22, v16);
        v20 *= 24;
        v24 = *(v4 + 56) + v20;
        v25 = *v24;
        v39 = *(v24 + 8);
        v40 = v25;
        v38 = *(v24 + 16);
        v26 = *(v24 + 20);
        v27 = v36;
        result = (*(v21 + 32))(*(v36 + 48) + v22, v23, v16);
        v28 = *(v27 + 56) + v20;
        v29 = v39;
        *v28 = v40;
        *(v28 + 8) = v29;
        *(v28 + 16) = v38;
        *(v28 + 20) = v26;
        v14 = v41;
      }

      while (v41);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
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

void *sub_1AE4E9BBC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1AE4EB160();
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
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
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

void *sub_1AE4E9D08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD570, &qword_1AE4EDBD8);
  v2 = *v0;
  v3 = sub_1AE4EB160();
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
        v19 = *(v18 + 8);
        v20 = *(v18 + 32);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 40 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v19;
        *(v22 + 16) = v23;
        *(v22 + 32) = v20;
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

char *sub_1AE4E9E8C()
{
  v1 = v0;
  v35 = sub_1AE4EAC50();
  v39 = *(v35 - 8);
  v2 = v39[8];
  v3 = MEMORY[0x1EEE9AC00](v35);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD620, &qword_1AE4EDC50);
  v6 = *v0;
  v7 = sub_1AE4EB160();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
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

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
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

void *sub_1AE4EA154()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD530, &qword_1AE4EDBA8);
  v2 = *v0;
  v3 = sub_1AE4EB160();
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
        v24 = (*(v4 + 48) + v18);
        v25 = *(v22 + 8);
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v25;
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

char *sub_1AE4EA2DC()
{
  v1 = v0;
  v37 = sub_1AE4EAB10();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD528, &qword_1AE4EDBA0);
  v4 = *v0;
  v5 = sub_1AE4EB160();
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
    v38 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v35 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v39;
        v21 = *(v39 + 72) * v19;
        v23 = v36;
        v22 = v37;
        (*(v39 + 16))(v36, *(v4 + 48) + v21, v37);
        v24 = 24 * v19;
        v25 = (*(v4 + 56) + 24 * v19);
        v27 = *v25;
        v26 = v25[1];
        v40 = v25[2];
        v28 = v38;
        (*(v20 + 32))(*(v38 + 48) + v21, v23, v22);
        v29 = (*(v28 + 56) + v24);
        *v29 = v27;
        v29[1] = v26;
        v4 = v35;
        v29[2] = v40;

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

        v1 = v31;
        v6 = v38;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
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

uint64_t sub_1AE4EA5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr))
{
  result = sub_1AE4EA990();
  v12 = result;
  if (result)
  {
    result = sub_1AE4EA9B0();
    if (__OFSUB__(a1, result))
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v12 += a1 - result;
  }

  v13 = __OFSUB__(a2, a1);
  v14 = a2 - a1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_1AE4EA9A0();
  if (result >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = result;
  }

  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 < a4)
  {
    goto LABEL_19;
  }

  sub_1AE4A5694();
  v21 = v17;
  if (v6)
  {
    v22 = v18;
    v23 = v19;
    v24 = v20;
    sub_1AE4C78AC();
    swift_allocError();
    *v25 = v21;
    *(v25 + 8) = v22;
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
  }

  else
  {
    sub_1AE4A65CC(v17);
    if (sub_1AE4AC038(v21) != 6)
    {
      a6(&v27);

      return v27;
    }

    sub_1AE4C78AC();
    swift_allocError();
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *v26 = 0;
    *(v26 + 24) = 0x80;
    swift_willThrow();
  }
}