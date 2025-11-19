uint64_t sub_21BC7B8D8(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_21BE25B9C();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5890, &qword_21BE32988);
  v46 = a2;
  result = sub_21BE297CC();
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
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
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

uint64_t sub_21BC7BC58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5928, &qword_21BE32AF8);
  v41 = a2;
  result = sub_21BE297CC();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_21BBA3854(v28, &v42, &qword_27CDB8568, &unk_21BE3BF70);
      }

      v31 = *(v8 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21BC7BF38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5880, &qword_21BE3BF30);
  v40 = a2;
  result = sub_21BE297CC();
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
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
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

uint64_t sub_21BC7C1F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8550, &unk_21BE3BF20);
  v41 = a2;
  result = sub_21BE297CC();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
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
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v42 = *(v27 + 8);
      if ((v41 & 1) == 0)
      {

        v29 = v28;
      }

      v30 = *(v8 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v28;
      v19[1] = v42;
      ++*(v8 + 16);
      v5 = v40;
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

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21BC7C4B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5938, &qword_21BE32B08);
  v38 = a2;
  result = sub_21BE297CC();
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
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
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

uint64_t sub_21BC7C754(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5870, &unk_21BE3BF60);
  result = sub_21BE297CC();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      v26 = *(v8 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();

      result = sub_21BE29B0C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_19;
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

uint64_t sub_21BC7CADC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5868, &unk_21BE32960);
  result = sub_21BE297CC();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      v26 = *(v8 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();

      result = sub_21BE29B0C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_18;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v8;
  return result;
}

uint64_t sub_21BC7CFA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8560, &unk_21BE3BF40);
  v36 = a2;
  result = sub_21BE297CC();
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_21BB3D104(v25, v37);
      }

      else
      {
        sub_21BB3A35C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
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
      result = sub_21BB3D104(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_21BC7D26C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5858, &unk_21BE32950);
  result = sub_21BE297CC();
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
      v22 = *(*(v5 + 56) + v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_21BE293FC();
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
      *(*(v8 + 56) + v16) = v22;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21BC7D4D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5908, &qword_21BE32AB8);
  v36 = a2;
  result = sub_21BE297CC();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
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
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21BC7D788(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
  v36 = a2;
  result = sub_21BE297CC();
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
        sub_21BB414D0(v25, v37);
      }

      else
      {
        sub_21BB3DCD4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
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
      result = sub_21BB414D0(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_21BC7DA40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F8, &qword_21BE3BE50);
  result = sub_21BE297CC();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_21BB414D0((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_21BBB71DC(v24, &v38);
        sub_21BB3DCD4(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_21BE2956C();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_21BB414D0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
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

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21BC7DCF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58B8, &qword_21BE329B0);
  result = sub_21BE297CC();
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
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_21BE293FC();
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21BC7DF5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E8, &qword_21BE32A80);
  v38 = a2;
  result = sub_21BE297CC();
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
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
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

uint64_t sub_21BC7E204(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E0, &qword_21BE32A78);
  v38 = a2;
  result = sub_21BE297CC();
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
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      sub_21BE28A0C();
      sub_21BE29ACC();
      sub_21BE28ABC();
      v27 = sub_21BE29B0C();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
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
        v39 = (v19 - 1) & v19;
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

uint64_t sub_21BC7E4C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8558, &qword_21BE3BF38);
  v39 = a2;
  result = sub_21BE297CC();
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
      sub_21BE29ACC();
      sub_21BE28ABC();
      result = sub_21BE29B0C();
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

uint64_t sub_21BC7E76C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5860, &unk_21BE3BF50);
  v33 = a2;
  result = sub_21BE297CC();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_21BE29ACC();
      sub_21BE28ABC();

      result = sub_21BE29B0C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_21BC7EB04(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21BE29ACC();

      sub_21BE28ABC();
      v13 = sub_21BE29B0C();

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
      v19 = *(*(sub_21BE25B9C() - 8) + 72);
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

uint64_t sub_21BC7ECF0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21BE29ACC();

      sub_21BE28ABC();
      v13 = sub_21BE29B0C();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

uint64_t sub_21BC7EEA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_21BE29ACC();

      sub_21BE28ABC();
      v14 = sub_21BE29B0C();

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

uint64_t sub_21BC7F050(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      sub_21BBB71DC(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_21BE2956C();
      result = sub_21BBB7238(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_21BC7F1F4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_21BE28A0C();
      sub_21BE29ACC();
      v11 = v10;
      sub_21BE28ABC();
      v12 = sub_21BE29B0C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_21BC7F3BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21BE29ACC();

      sub_21BE28ABC();
      v13 = sub_21BE29B0C();

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

uint64_t sub_21BC7F56C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21BE294EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_21BE29ACC();
      sub_21BE28ABC();

      result = sub_21BE29B0C();
      v11 = result & v7;
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
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
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

uint64_t sub_21BC7F814(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21BBB3108(a2, a3);
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
      sub_21BC7BC58(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_21BBB3108(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21BC80CC4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    return sub_21BBFD920(a1, v22[7] + 40 * v11, &qword_27CDB8568, &unk_21BE3BF70);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v22[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v22[7] + 40 * v11;
  v26 = *a1;
  v27 = *(a1 + 16);
  *(v25 + 32) = *(a1 + 32);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v22[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v29;
}

uint64_t sub_21BC7F9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21BBB3108(a3, a4);
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
      sub_21BC7BF38(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_21BBB3108(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21BC80E88();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void sub_21BC7FB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21BBB3108(a3, a4);
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
      sub_21BC7C1F8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_21BBB3108(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        sub_21BE299FC();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_21BC81000();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * v13;
    v26 = *v25;
    *v25 = a1;
    *(v25 + 8) = a2;

    return;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v24[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v24[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v24[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;
}

unint64_t sub_21BC7FCB8(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21BBB3230(a2);
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_21BC812F0(&qword_27CDB5870, &unk_21BE3BF60);
    result = v17;
    goto LABEL_8;
  }

  sub_21BC7C754(v14, a3 & 1);
  v18 = *v4;
  result = sub_21BBB3230(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
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
  result = sub_21BE299FC();
  __break(1u);
  return result;
}

unint64_t sub_21BC7FDF0(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_21BBB31A4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_21BC7D26C(v13, a3 & 1);
      v17 = *v4;
      result = sub_21BBB31A4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_21BBE66D8();
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_21BC815D4();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + result) = a1 & 1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + result) = a1 & 1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

uint64_t sub_21BC7FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21BBB3108(a3, a4);
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
      sub_21BC7D4D0(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_21BBB3108(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21BC81730();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

_OWORD *sub_21BC800D4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21BBB3108(a2, a3);
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
      sub_21BC818B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21BC7D788(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_21BBB3108(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_21BE299FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_21BB414D0(a1, v23);
  }

  else
  {
    sub_21BC8095C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_21BC80224(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21BBB31E8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21BC81A54();
      goto LABEL_7;
    }

    sub_21BC7DA40(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_21BBB31E8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21BBB71DC(a2, v22);
      return sub_21BC809C8(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_21BE299FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_21BB414D0(a1, v17);
}

uint64_t sub_21BC80370(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21BBB3108(a2, a3);
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
      sub_21BC7DF5C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_21BBB3108(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21BC81D54();
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

id sub_21BC804EC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21BBB322C(a2);
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
      sub_21BC7E204(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_21BBB322C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for AIDAServiceType(0);
        sub_21BE299FC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_21BC81EC4();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_21BC80654(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21BBB3108(a2, a3);
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
      sub_21BC7E4C8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_21BBB3108(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_21BE299FC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_21BC82024();
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

unint64_t sub_21BC807CC(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21BBB3230(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_21BC7E76C(v14, a3 & 1);
      v18 = *v4;
      result = sub_21BBB3230(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_21BC82190();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_21BC80918(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
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

_OWORD *sub_21BC8095C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21BB414D0(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_21BC809C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21BB414D0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

char *sub_21BC80A44()
{
  v1 = v0;
  v36 = sub_21BE25B9C();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5890, &qword_21BE32988);
  v4 = *v0;
  v5 = sub_21BE297BC();
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

void *sub_21BC80CC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5928, &qword_21BE32AF8);
  v2 = *v0;
  v3 = sub_21BE297BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_21BBA3854(*(v2 + 56) + 40 * v17, v28, &qword_27CDB8568, &unk_21BE3BF70);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void *sub_21BC80E88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5880, &qword_21BE3BF30);
  v2 = *v0;
  v3 = sub_21BE297BC();
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

id sub_21BC81000()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8550, &unk_21BE3BF20);
  v2 = *v0;
  v3 = sub_21BE297BC();
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
        v21 = *(v2 + 56) + v17;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;

        result = v23;
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

void *sub_21BC81174()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5938, &qword_21BE32B08);
  v2 = *v0;
  v3 = sub_21BE297BC();
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

void *sub_21BC812F0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21BE297BC();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_21BC8142C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8560, &unk_21BE3BF40);
  v2 = *v0;
  v3 = sub_21BE297BC();
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
        sub_21BB3A35C(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21BB3D104(v25, *(v4 + 56) + v22);
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

id sub_21BC815D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5858, &unk_21BE32950);
  v2 = *v0;
  v3 = sub_21BE297BC();
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

void *sub_21BC81730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5908, &qword_21BE32AB8);
  v2 = *v0;
  v3 = sub_21BE297BC();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_21BC818B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
  v2 = *v0;
  v3 = sub_21BE297BC();
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
        sub_21BB3DCD4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21BB414D0(v25, (*(v4 + 56) + v22));
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

void *sub_21BC81A54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F8, &qword_21BE3BE50);
  v2 = *v0;
  v3 = sub_21BE297BC();
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
        sub_21BBB71DC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21BB3DCD4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_21BB414D0(v22, (*(v4 + 56) + v17));
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

id sub_21BC81BF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58B8, &qword_21BE329B0);
  v2 = *v0;
  v3 = sub_21BE297BC();
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

void *sub_21BC81D54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E8, &qword_21BE32A80);
  v2 = *v0;
  v3 = sub_21BE297BC();
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

id sub_21BC81EC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58E0, &qword_21BE32A78);
  v2 = *v0;
  v3 = sub_21BE297BC();
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

id sub_21BC82024()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8558, &qword_21BE3BF38);
  v2 = *v0;
  v3 = sub_21BE297BC();
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

void *sub_21BC82190()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5860, &unk_21BE3BF50);
  v2 = *v0;
  v3 = sub_21BE297BC();
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

void *sub_21BC822EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D8, &qword_21BE329E8);
  v2 = *v0;
  v3 = sub_21BE297BC();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

uint64_t sub_21BC82454()
{
  v0 = sub_21BE2980C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BC824A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8540, &qword_21BE3BF18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC82F90();
  sub_21BE29B4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v32 = 1;
  v11 = sub_21BE2982C();
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v29 = v16;
  v31 = 3;
  v17 = sub_21BE2982C();
  v26 = v14;
  v27 = v18;
  v28 = v17;
  if (v18)
  {
    v15 = v18;
  }

  v30 = 4;
  v19 = sub_21BE2982C();
  if (v27)
  {
    v21 = v28;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v28 = v22;
  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v24 = v28;
  v25 = v29;
  *a2 = v26;
  a2[1] = v25;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v24;
  a2[5] = v23;
  return result;
}

double sub_21BC82714@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  v39 = sub_21BE25D6C();
  v40 = *(v39 - 8);
  v3 = *(v40 + 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8518, &qword_21BE3BE60);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  KeyPath = swift_getKeyPath();
  v59 = 0;
  v44 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
  sub_21BE283EC();
  v69 = v49;
  v43 = v50;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC82D34();
  v12 = v42;
  sub_21BE29B4C();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v13 = v40;
    v42 = a1;
    v14 = KeyPath;
    LOBYTE(v48) = 0;
    v15 = sub_21BE2982C();
    v17 = v6;
    if (v16)
    {
      v36 = v15;
      v37 = v16;
    }

    else
    {
      sub_21BE25D5C();
      v36 = sub_21BE25D2C();
      v37 = v19;
      (*(v13 + 1))(v5, v39);
    }

    LOBYTE(v44) = 1;
    v20 = sub_21BE2982C();
    v40 = v9;
    *&v44 = v20;
    *(&v44 + 1) = v21;
    sub_21BE283EC();

    v22 = v48;
    v69 = v49;
    v23 = v50;
    v24 = v42[4];
    __swift_project_boxed_opaque_existential_1Tm(v42, v42[3]);
    sub_21BE29B2C();
    v39 = v22;
    v43 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v57, v57[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8528, &unk_21BE3BE98);
    sub_21BC82D88();
    sub_21BE2998C();
    v35 = v17;
    v25 = v36;
    v26 = v37;
    v60 = v36;
    v61 = v37;
    v62 = v14;
    LOBYTE(v24) = v59;
    v63 = v59;
    *v64 = *v58;
    *&v64[3] = *&v58[3];
    v65 = v48;
    v66 = v39;
    v27 = v69;
    v67 = v69;
    v68 = v43;
    v28 = v48;
    sub_21BC78A60();
    (*(v41 + 8))(v40, v35);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    *&v44 = v25;
    *(&v44 + 1) = v26;
    *&v45 = v14;
    BYTE8(v45) = v24;
    *(&v45 + 9) = *v58;
    HIDWORD(v45) = *&v58[3];
    *&v46 = v28;
    v29 = v39;
    *(&v46 + 1) = v39;
    *&v47 = v27;
    v30 = v43;
    *(&v47 + 1) = v43;
    sub_21BC7B244(&v44, &v48);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    v48 = v25;
    v49 = v26;
    v50 = v14;
    v51 = v24;
    *v52 = *v58;
    *&v52[3] = *&v58[3];
    v53 = v28;
    v54 = v29;
    v55 = v27;
    v56 = v30;
    sub_21BC82E3C(&v48);
    v31 = v45;
    v32 = v38;
    *v38 = v44;
    v32[1] = v31;
    result = *&v46;
    v33 = v47;
    v32[2] = v46;
    v32[3] = v33;
  }

  return result;
}

unint64_t sub_21BC82D34()
{
  result = qword_27CDB8520;
  if (!qword_27CDB8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8520);
  }

  return result;
}

unint64_t sub_21BC82D88()
{
  result = qword_27CDB8530;
  if (!qword_27CDB8530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8528, &unk_21BE3BE98);
    sub_21BC82E6C(&qword_27CDB8538, type metadata accessor for FARUIPersonPickerOptionElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8530);
  }

  return result;
}

uint64_t sub_21BC82E6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BC82EB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BC798EC(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_21BC82F90()
{
  result = qword_27CDB8548;
  if (!qword_27CDB8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8548);
  }

  return result;
}

unint64_t sub_21BC83028()
{
  result = qword_27CDB8570;
  if (!qword_27CDB8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8570);
  }

  return result;
}

unint64_t sub_21BC83080()
{
  result = qword_27CDB8578;
  if (!qword_27CDB8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8578);
  }

  return result;
}

unint64_t sub_21BC830D8()
{
  result = qword_27CDB8580;
  if (!qword_27CDB8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8580);
  }

  return result;
}

unint64_t sub_21BC83130()
{
  result = qword_27CDB8588;
  if (!qword_27CDB8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8588);
  }

  return result;
}

unint64_t sub_21BC83188()
{
  result = qword_27CDB8590;
  if (!qword_27CDB8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8590);
  }

  return result;
}

unint64_t sub_21BC831E0()
{
  result = qword_27CDB8598;
  if (!qword_27CDB8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8598);
  }

  return result;
}

unint64_t sub_21BC83238()
{
  result = qword_27CDB85A0;
  if (!qword_27CDB85A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB85A0);
  }

  return result;
}

unint64_t sub_21BC83290()
{
  result = qword_27CDB85A8;
  if (!qword_27CDB85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB85A8);
  }

  return result;
}

unint64_t sub_21BC832E8()
{
  result = qword_27CDB85B0;
  if (!qword_27CDB85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB85B0);
  }

  return result;
}

uint64_t sub_21BC8333C()
{
  v0 = sub_21BE2980C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BC83388()
{
  v0 = sub_21BE2980C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

id sub_21BC833E4()
{
  result = [objc_allocWithZone(type metadata accessor for FamilyInviteAnalytics()) init];
  qword_27CDB85B8 = result;
  return result;
}

id FamilyInviteAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FamilyInviteAnalytics.shared.getter()
{
  if (qword_27CDB4F20 != -1)
  {
    swift_once();
  }

  v1 = qword_27CDB85B8;

  return v1;
}

uint64_t sub_21BC83518()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2617C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "Organizer resent invitation event", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v12 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000021BE5A200;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v9 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v12, v9);
}

uint64_t sub_21BC8373C()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2617C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "Organizer cancelled invitation event", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v12 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000021BE5A220;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v9 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v12, v9);
}

id FamilyInviteAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyInviteAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FamilyInviteAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyInviteAnalytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BC83C2C()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2617C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "Organizer tapped pending member row event", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v12 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x800000021BE5A410;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v9 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v12, v9);
}

uint64_t sub_21BC83E50()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2617C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "Invite recipient tapped family row event", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v12 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x800000021BE5A3F0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v9 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v12, v9);
}

uint64_t sub_21BC842AC(uint64_t a1)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v5 = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 80) = &protocol witness table for Int;
  *(inited + 40) = 0x800000021BE5A310;
  *(inited + 48) = a1;

  v3 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v5, v3);
}

uint64_t sub_21BC843C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v16 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_21BE374D0;
  *(inited + 40) = 0x800000021BE5A330;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a3 & 1;
  *(inited + 88) = 0xD000000000000026;
  *(inited + 96) = 0x800000021BE5A350;
  v13 = MEMORY[0x277D83B88];
  *(inited + 128) = MEMORY[0x277D83B88];
  *(inited + 136) = &protocol witness table for Int;
  *(inited + 104) = a1;
  *(inited + 144) = 0xD000000000000022;
  *(inited + 152) = 0x800000021BE5A380;
  *(inited + 184) = v13;
  *(inited + 192) = &protocol witness table for Int;
  *(inited + 160) = a2;
  *(inited + 200) = 0xD000000000000012;
  *(inited + 208) = 0x800000021BE5A3B0;
  *(inited + 240) = v13;
  *(inited + 248) = &protocol witness table for Int;
  *(inited + 216) = a4;
  *(inited + 256) = 0xD000000000000014;
  *(inited + 264) = 0x800000021BE5A3D0;
  *(inited + 296) = MEMORY[0x277D837D0];
  *(inited + 304) = &protocol witness table for String;
  *(inited + 272) = a5;
  *(inited + 280) = a6;

  v14 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v16, v14);
}

uint64_t sub_21BC845C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v10 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  *(inited + 32) = 0x7254657469766E49;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF74726F70736E61;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v7 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xD000000000000018;
  *(inited + 96) = 0x800000021BE5A310;
  *(inited + 128) = v7;
  *(inited + 136) = &protocol witness table for Int;
  *(inited + 104) = a3;

  v8 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v10, v8);
}

uint64_t sub_21BC84750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v14 = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE362A0;
  strcpy((inited + 32), "ActionTapped");
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000021BE5A2F0;
  *(inited + 128) = v11;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = a3;
  *(inited + 112) = a4;
  *(inited + 144) = 0x7265766965636552;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = &protocol witness table for Bool;
  *(inited + 160) = a5 & 1;

  v12 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v14, v12);
}

uint64_t sub_21BC84918(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v9 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  strcpy((inited + 32), "UpdateStatusTo");
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 47) = -18;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 88) = 0x73736563637553;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = &protocol witness table for Bool;
  *(inited + 104) = a3 & 1;

  v7 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v9, v7);
}

uint64_t sub_21BC84D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v7 = a5;
  v29 = a5;
  v28[1] = a3;
  v28[2] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v32 = v28 - v14;
  v30 = sub_21BE26A1C();
  v15 = *(v30 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v30);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v15 + 56);
  v31(v6 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID, 1, 1);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v19 = v6 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_method;
  *v19 = a3;
  *(v19 + 8) = a4;
  *(v19 + 16) = v7;
  sub_21BC859EC();

  sub_21BE261DC();
  v33 = 0x74736F706E676973;
  v34 = 0xE90000000000002ELL;
  MEMORY[0x21CF03CA0](a1, a2);

  v20 = sub_21BE2945C();
  *(v6 + 32) = v20;
  v21 = v20;
  sub_21BE269FC();
  sub_21BE292FC();
  v22 = *(v6 + 32);
  sub_21BE269EC();

  v23 = v32;
  v24 = v30;
  (*(v15 + 32))(v32, v18, v30);
  v25 = v23;
  (v31)(v23, 0, 1, v24);
  v26 = OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID;
  swift_beginAccess();
  sub_21BC8597C(v25, v6 + v26);
  swift_endAccess();
  return v6;
}

uint64_t sub_21BC84FB8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v25[1] = a3;
  v26 = sub_21BE26A4C();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE26A1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v25 - v16;
  v18 = OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID;
  swift_beginAccess();
  sub_21BC8590C(v4 + v18, v17);
  LODWORD(v18) = (*(v10 + 48))(v17, 1, v9);
  sub_21BC856BC(v17);
  if (v18 == 1)
  {
    sub_21BE2614C();

    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FDC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_21BB3D81C(v4[2], v4[3], &v27);
      _os_log_impl(&dword_21BB35000, v19, v20, "Attempt to log event w/o signpost: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    return (*(v5 + 8))(v8, v26);
  }

  else
  {
    sub_21BE2930C();
    v24 = v4[4];
    sub_21BE26A0C();
    sub_21BE269EC();
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_21BC852D8()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v14 = sub_21BE26A1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID;
  swift_beginAccess();
  sub_21BC8590C(v1 + v19, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21BC856BC(v13);
    sub_21BE2614C();

    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FFC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_21BB3D81C(v1[2], v1[3], v29);
      _os_log_impl(&dword_21BB35000, v20, v21, "Attempt to end already ended signpost: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x21CF05C50](v23, -1, -1);
      MEMORY[0x21CF05C50](v22, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_21BC84FB8("completed", 9, 2);
    sub_21BE292EC();
    v25 = v1[4];
    v26 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_method);
    v27 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_method + 8);
    v28 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_method + 16);
    sub_21BE269EC();
    (*(v15 + 8))(v18, v14);
    (*(v15 + 56))(v11, 1, 1, v14);
    swift_beginAccess();
    sub_21BC8597C(v11, v1 + v19);
    return swift_endAccess();
  }
}

uint64_t FamilySignpost.deinit()
{
  v1 = *(v0 + 24);

  sub_21BC856BC(v0 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID);
  return v0;
}

uint64_t sub_21BC856BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FamilySignpost.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  sub_21BC856BC(v0 + OBJC_IVAR____TtC14FamilyCircleUI14FamilySignpost_signpostID);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FamilySignpost()
{
  result = qword_280BD7B10;
  if (!qword_280BD7B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC857EC()
{
  sub_21BC858B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21BC858B4()
{
  if (!qword_280BD6B00)
  {
    sub_21BE26A1C();
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD6B00);
    }
  }
}

uint64_t sub_21BC8590C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC8597C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85C0, &qword_21BE3C408);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BC859EC()
{
  result = qword_280BD68C0;
  if (!qword_280BD68C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD68C0);
  }

  return result;
}

uint64_t sub_21BC85A38()
{
  v1 = v0;
  v2 = sub_21BE25B9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v66 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v57 - v11;
  v13 = sub_21BBB541C(MEMORY[0x277D84F90]);
  v14 = sub_21BE289CC();
  v15 = [v1 propertiesForDataclass_];
  if (!v15 || (v65 = v12, v16 = v15, v17 = sub_21BE2890C(), v16, v18 = sub_21BD52A2C(v17), , !v18))
  {

    return v13;
  }

  v57[0] = v14;
  v59 = v10;
  v19 = 0;
  v20 = v18 + 64;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 64);
  v24 = (v21 + 63) >> 6;
  v63 = (v3 + 48);
  v64 = (v3 + 56);
  v61 = v18;
  v62 = (v3 + 32);
  v57[1] = (v3 + 40);
  v58 = v2;
  v60 = v3;
  while (v23)
  {
LABEL_14:
    v28 = __clz(__rbit64(v23)) | (v19 << 6);
    v29 = (*(v18 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(*(v18 + 56) + 8 * v28);
    v70 = v32;
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v33 = swift_dynamicCast();
    v67 = v32;
    v68 = v31;
    if (v33)
    {

      v34 = v65;
      sub_21BE25B7C();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v34 = v65;
      (*v64)(v65, 1, 1, v2);
    }

    v23 &= v23 - 1;
    if ((*v63)(v34, 1, v2) == 1)
    {
      sub_21BC12FE4(v34);
      v35 = sub_21BBB3108(v30, v68);
      v37 = v36;

      if (v37)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v13;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_21BC80A44();
          v13 = v69;
        }

        v39 = *(v13[6] + 16 * v35 + 8);

        v26 = v59;
        (*(v3 + 32))(v59, v13[7] + *(v3 + 72) * v35, v2);
        sub_21BC7EB04(v35, v13);
        swift_unknownObjectRelease();

        v25 = 0;
      }

      else
      {
        swift_unknownObjectRelease();

        v25 = 1;
        v26 = v59;
      }

      (*v64)(v26, v25, 1, v2);
      sub_21BC12FE4(v26);
      v18 = v61;
    }

    else
    {
      v40 = *v62;
      (*v62)(v66, v34, v2);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v69 = v13;
      v42 = v30;
      v44 = sub_21BBB3108(v30, v68);
      v45 = v13[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_36;
      }

      v48 = v43;
      if (v13[3] >= v47)
      {
        if (v41)
        {
          if ((v43 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_21BC80A44();
          if ((v48 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

LABEL_29:

        v13 = v69;
        v3 = v60;
        v2 = v58;
        (*(v60 + 40))(v69[7] + *(v60 + 72) * v44, v66, v58);
        swift_unknownObjectRelease();

        v18 = v61;
      }

      else
      {
        sub_21BC7B8D8(v47, v41);
        v49 = sub_21BBB3108(v42, v68);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_38;
        }

        v44 = v49;
        if (v48)
        {
          goto LABEL_29;
        }

LABEL_31:
        v51 = v68;
        v13 = v69;
        v69[(v44 >> 6) + 8] |= 1 << v44;
        v52 = (v13[6] + 16 * v44);
        *v52 = v42;
        v52[1] = v51;
        v2 = v58;
        v40((v13[7] + *(v60 + 72) * v44), v66, v58);
        swift_unknownObjectRelease();

        v53 = v13[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_37;
        }

        v13[2] = v55;
        v3 = v60;
        v18 = v61;
      }
    }
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v13;
    }

    v23 = *(v20 + 8 * v27);
    ++v19;
    if (v23)
    {
      v19 = v27;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_21BE299FC();
  __break(1u);
  return result;
}

uint64_t sub_21BC86024@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ParentalControlCell();
  sub_21BC872D4(a1, a3 + v6[6], type metadata accessor for ParentalControlDataItem);
  sub_21BC1D414(6);
  v7 = *a1;
  v8 = *&a1[*(type metadata accessor for ParentalControlDataItem(0) + 24)];
  *a3 = sub_21BD6F92C();
  a3[1] = v9;
  sub_21BC1D414(6);
  a3[2] = sub_21BD6FB28(v8);
  a3[3] = v10;
  *(a3 + v6[7]) = a2;
  type metadata accessor for AgeBasedPresetFlow();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = v8;
  result = sub_21BC1E0A8(a1);
  *(a3 + v6[8]) = v11;
  return result;
}

uint64_t type metadata accessor for ParentalControlCell()
{
  result = qword_27CDB85C8;
  if (!qword_27CDB85C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BC861B8()
{
  result = type metadata accessor for ParentalControlDataItem(319);
  if (v1 <= 0x3F)
  {
    result = sub_21BBC8F58();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AgeBasedPresetFlow();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21BC86280()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_21BE25D1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + *(type metadata accessor for ParentalControlCell() + 24);
  v11 = type metadata accessor for ParentalControlDataItem(0);
  sub_21BBA3854(v10 + *(v11 + 20), v4, &qword_27CDB9720, &unk_21BE39F00);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21BB3A4CC(v4, &qword_27CDB9720, &unk_21BE39F00);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21BE32770;
    v14 = sub_21BC422F8();
    v16 = v15;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_21BBBEFE8();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = objc_opt_self();

    v19 = [v18 bundleForClass_];
    sub_21BE2599C();

    v20 = sub_21BE289DC();

    (*(v6 + 8))(v9, v5);
    return v20;
  }
}

uint64_t sub_21BC86568(void *a1)
{
  v2 = type metadata accessor for ParentalControlCell();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FCC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29[0] = v9;
    v18 = a1;
    v19 = v3;
    v20 = v17;
    *v17 = 0;
    _os_log_impl(&dword_21BB35000, v15, v16, "ParentalControlCell pushing a nav action", v17, 2u);
    v21 = v20;
    v3 = v19;
    a1 = v18;
    v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = v29[0];
    MEMORY[0x21CF05C50](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v22 = sub_21BE28DAC();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_21BC872D4(v29[1], v5, type metadata accessor for ParentalControlCell);
  sub_21BE28D7C();
  v23 = a1;
  v24 = sub_21BE28D6C();
  v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  sub_21BC8733C(v5, v26 + v25);
  *(v26 + ((v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_21BBA932C(0, 0, v9, &unk_21BE3C518, v26);
}

uint64_t sub_21BC8688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21BC86924, v7, v6);
}

uint64_t sub_21BC86924()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + *(type metadata accessor for ParentalControlCell() + 32));
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  }

  v0[7] = v4;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_21BBDBDA0;

  return sub_21BCE3F54(v4);
}

uint64_t sub_21BC86A04@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ParentalControlCell();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BC872D4(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ParentalControlCell);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BC8733C(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[1] = v8;
  result = sub_21BE283EC();
  v10 = v11[3];
  *a1 = v11[2];
  a1[1] = v10;
  a1[2] = sub_21BC873A0;
  a1[3] = v7;
  return result;
}

double sub_21BC86B6C@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ParentalControlCell();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(MEMORY[0x28223BE20](v6) + 24);
  sub_21BC1D414(6);
  if (*(a2 + v10))
  {
    if (sub_21BC1D414(6))
    {
      if (sub_21BC1D414(6))
      {
        v11 = *a2;
        v61 = a2[1];
        v62 = v11;

        v12 = sub_21BC86280();
        v59 = v13;
        v60 = v12;
        v14 = a2[3];
        v58 = a2[2];
        v15 = *(a2 + *(v6 + 28));
        sub_21BC872D4(a2, &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ParentalControlCell);
        v16 = *(v7 + 80);
        v63 = a3;
        v17 = (v16 + 16) & ~v16;
        v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
        v19 = swift_allocObject();
        sub_21BC8733C(v9, v19 + v17);
        *(v19 + v18) = a1;
        type metadata accessor for ConfirmChildAgeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v21 = objc_opt_self();
        v22 = a1;

        v23 = v15;
        v24 = [v21 bundleForClass_];
        v25 = sub_21BE2599C();
        v27 = v26;

        v68[3] = type metadata accessor for ParentalControlDataItem(0);
        v68[4] = sub_21BC87420();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
        sub_21BC872D4(a2 + v10, boxed_opaque_existential_1, type metadata accessor for ParentalControlDataItem);
        v67[0] = v62;
        v67[1] = v61;
        v67[2] = v60;
        v67[3] = v59;
        v67[4] = v58;
        v67[5] = v14;
        v67[6] = v23;
        v67[7] = sub_21BC879B0;
        v67[8] = v19;
        v67[9] = v25;
        v67[10] = v27;
        sub_21BC8777C(v67, v64);
        v66 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85E0, &unk_21BE3C500);
        sub_21BC87478();
        sub_21BC87504();
        sub_21BE2784C();
        sub_21BC877D8(v67);
      }

      else
      {
        result = 0.0;
        *(a3 + 96) = 0u;
        *(a3 + 112) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 80) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 128) = -256;
      }
    }

    else
    {
      v62 = *a2;
      v63 = a3;
      v46 = a2[1];

      v47 = sub_21BC86280();
      v60 = v48;
      v61 = v47;
      v49 = a2[2];
      v50 = a2[3];
      v58 = *(a2 + *(v6 + 28));
      v59 = v49;
      sub_21BC872D4(a2, &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ParentalControlCell);
      v51 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v52 = swift_allocObject();
      sub_21BC8733C(v9, v52 + v51);
      *(v52 + ((v8 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
      v80 = type metadata accessor for ParentalControlDataItem(0);
      v81 = sub_21BC87420();
      v53 = __swift_allocate_boxed_opaque_existential_1(v79);
      sub_21BC872D4(a2 + v10, v53, type metadata accessor for ParentalControlDataItem);
      v69 = v62;
      v70 = v46;
      v71 = v61;
      v72 = v60;
      v73 = v59;
      v74 = v50;
      v54 = v58;
      v75 = v58;
      v76 = sub_21BC87558;
      v77 = v52;
      v78 = 0;
      v82 = 0;
      sub_21BBC7A18(&v69, v64);
      v65 = 1;
      sub_21BBC2528();
      sub_21BBC24D4();
      v55 = a1;

      v56 = v54;
      sub_21BE2784C();
      sub_21BBA3854(v67, v64, &qword_27CDB85E0, &unk_21BE3C500);
      v66 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85E0, &unk_21BE3C500);
      sub_21BC87478();
      sub_21BC87504();
      sub_21BE2784C();
      sub_21BB3A4CC(v67, &qword_27CDB85E0, &unk_21BE3C500);
      sub_21BBC7A74(&v69);
    }
  }

  else
  {
    v30 = *a2;
    v60 = v10;
    v31 = a2[1];
    v61 = a2[2];
    v62 = v30;
    v32 = a2[3];
    v33 = *(v6 + 28);
    v63 = a3;
    v34 = *(a2 + v33);
    sub_21BC872D4(a2, &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ParentalControlCell);
    v35 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v36 = swift_allocObject();
    sub_21BC8733C(v9, v36 + v35);
    *(v36 + ((v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    type metadata accessor for ConfirmChildAgeViewModel();
    v37 = swift_getObjCClassFromMetadata();
    v38 = objc_opt_self();
    v39 = a1;

    v40 = v34;
    v41 = [v38 bundleForClass_];
    v42 = sub_21BE2599C();
    v44 = v43;

    v80 = type metadata accessor for ParentalControlDataItem(0);
    v81 = sub_21BC87420();
    v45 = __swift_allocate_boxed_opaque_existential_1(v79);
    sub_21BC872D4(a2 + v60, v45, type metadata accessor for ParentalControlDataItem);
    v69 = v62;
    v70 = v31;
    v71 = v61;
    v72 = v32;
    v73 = v40;
    v74 = sub_21BC879B0;
    v75 = v36;
    v76 = v42;
    v77 = v44;
    v78 = 0;
    v82 = 0;
    sub_21BBC7968(&v69, v64);
    v65 = 0;
    sub_21BBC2528();
    sub_21BBC24D4();
    sub_21BE2784C();
    sub_21BBA3854(v67, v64, &qword_27CDB85E0, &unk_21BE3C500);
    v66 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB85E0, &unk_21BE3C500);
    sub_21BC87478();
    sub_21BC87504();
    sub_21BE2784C();
    sub_21BB3A4CC(v67, &qword_27CDB85E0, &unk_21BE3C500);
    sub_21BBC79C4(&v69);
  }

  return result;
}

uint64_t sub_21BC872D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BC8733C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParentalControlCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21BC873A0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ParentalControlCell() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BC86B6C(a1, v6, a2);
}

unint64_t sub_21BC87420()
{
  result = qword_27CDB85D8;
  if (!qword_27CDB85D8)
  {
    type metadata accessor for ParentalControlDataItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB85D8);
  }

  return result;
}

unint64_t sub_21BC87478()
{
  result = qword_27CDB85E8;
  if (!qword_27CDB85E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB85E0, &unk_21BE3C500);
    sub_21BBC2528();
    sub_21BBC24D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB85E8);
  }

  return result;
}

unint64_t sub_21BC87504()
{
  result = qword_27CDB85F0;
  if (!qword_27CDB85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB85F0);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for ParentalControlCell();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = *(v0 + v2 + 8);

  v5 = *(v0 + v2 + 24);

  v6 = v0 + v2 + v1[6];
  v7 = type metadata accessor for ParentalControlDataItem(0);
  v8 = *(v7 + 20);
  v9 = sub_21BE25D1C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v3 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_21BC8782C(uint64_t a1)
{
  v4 = *(type metadata accessor for ParentalControlCell() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BC8688C(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_21BC8794C()
{
  result = qword_27CDB85F8;
  if (!qword_27CDB85F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8600, &unk_21BE3C520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB85F8);
  }

  return result;
}

uint64_t type metadata accessor for CommLimitsView()
{
  result = qword_27CDB8608;
  if (!qword_27CDB8608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC87A28()
{
  result = type metadata accessor for CommLimitsItem(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21BC87AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = sub_21BE25D1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CommLimitsItem(0);
  sub_21BBA3854(v0 + *(v10 + 20), v4, &qword_27CDB9720, &unk_21BE39F00);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21BB3A4CC(v4, &qword_27CDB9720, &unk_21BE39F00);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21BE32770;
    v13 = sub_21BC422F8();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_21BBBEFE8();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = objc_opt_self();

    v18 = [v17 bundleForClass_];
    sub_21BE2599C();

    v19 = sub_21BE289DC();

    (*(v6 + 8))(v9, v5);
    return v19;
  }
}

uint64_t sub_21BC87D88()
{
  v1 = *(v0 + *(type metadata accessor for CommLimitsItem(0) + 28));
  switch(v1)
  {
    case 0:
      return 1;
    case 2:
      return 0;
    case 1:
      return 2;
  }

  return 3;
}

uint64_t sub_21BC87DDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CommLimitsManagedCell();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8618, &qword_21BE3C598);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v119 - v10;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8620, &qword_21BE3C5A0);
  v12 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  *&v132 = &v119 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8628, &qword_21BE3C5A8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v119 - v16;
  v131 = type metadata accessor for CommLimitsNotManagedCell();
  v18 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CommLimitsItem(0);
  v22 = *(v2 + *(v21 + 28));
  switch(v22)
  {
    case 0:
      v126 = v8;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v125 = v4;
      v121 = v90;
      v91 = swift_allocObject();
      v122 = xmmword_21BE32770;
      *(v91 + 16) = xmmword_21BE32770;
      v92 = *(v21 + 24);
      v129 = a1;
      v93 = *(v2 + v92);
      v94 = sub_21BE2917C();
      v127 = v11;
      v96 = v95;
      *(v91 + 56) = MEMORY[0x277D837D0];
      v97 = sub_21BBBEFE8();
      v128 = v14;
      v98 = v97;
      *(v91 + 64) = v97;
      *(v91 + 32) = v94;
      *(v91 + 40) = v96;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v100 = objc_opt_self();

      v101 = [v100 bundleForClass_];
      v124 = v17;
      v102 = v101;
      sub_21BE2599C();
      v123 = v2;

      v103 = sub_21BE289DC();
      v105 = v104;

      v106 = swift_allocObject();
      *(v106 + 16) = v122;
      v107 = sub_21BE2917C();
      *(v106 + 56) = MEMORY[0x277D837D0];
      *(v106 + 64) = v98;
      *(v106 + 32) = v107;
      *(v106 + 40) = v108;

      v109 = [v100 bundleForClass_];
      sub_21BE2599C();

      v110 = sub_21BE289DC();
      v112 = v111;

      sub_21BC88FB4(v123, &v20[*(v131 + 32)], type metadata accessor for CommLimitsItem);
      type metadata accessor for ChecklistStateVars();
      sub_21BC88F6C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
      *v20 = sub_21BE26E9C();
      v20[8] = v113 & 1;
      sub_21BBDAF04();
      sub_21BC88F6C(&qword_280BD8A20, sub_21BBDAF04);
      *(v20 + 2) = sub_21BE2727C();
      *(v20 + 3) = v114;
      *(v20 + 4) = v103;
      *(v20 + 5) = v105;
      *(v20 + 6) = v110;
      *(v20 + 7) = v112;
      sub_21BC88FB4(v20, v132, type metadata accessor for CommLimitsNotManagedCell);
      swift_storeEnumTagMultiPayload();
      sub_21BC88F6C(&qword_27CDB8640, type metadata accessor for CommLimitsNotManagedCell);
      sub_21BC88F6C(&qword_27CDB8648, type metadata accessor for CommLimitsManagedCell);
      v115 = v124;
      sub_21BE2784C();
      sub_21BBA3854(v115, v127, &qword_27CDB8628, &qword_21BE3C5A8);
      swift_storeEnumTagMultiPayload();
      sub_21BC88E80();
      v52 = v129;
      sub_21BE2784C();
      sub_21BB3A4CC(v115, &qword_27CDB8628, &qword_21BE3C5A8);
      v53 = type metadata accessor for CommLimitsNotManagedCell;
      v54 = v20;
      goto LABEL_7;
    case 1:
      v127 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v55 = swift_allocObject();
      v125 = v4;
      v56 = v55;
      v132 = xmmword_21BE32770;
      *(v55 + 16) = xmmword_21BE32770;
      v57 = *(v21 + 24);
      v129 = a1;
      v58 = *(v2 + v57);
      v59 = sub_21BE2917C();
      v128 = v14;
      v60 = v59;
      v126 = v8;
      v62 = v61;
      v56[7] = MEMORY[0x277D837D0];
      v63 = sub_21BBBEFE8();
      v56[8] = v63;
      v56[4] = v60;
      v56[5] = v62;
      type metadata accessor for ConfirmChildAgeViewModel();
      v64 = swift_getObjCClassFromMetadata();
      v65 = objc_opt_self();
      v123 = v2;
      v66 = v65;

      v67 = [v66 &selRef:v64 :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
      sub_21BE2599C();

      v68 = sub_21BE289DC();
      v130 = v69;
      v131 = v68;

      v70 = swift_allocObject();
      *(v70 + 16) = v132;
      v71 = sub_21BE2917C();
      *(v70 + 56) = MEMORY[0x277D837D0];
      *(v70 + 64) = v63;
      *(v70 + 32) = v71;
      *(v70 + 40) = v72;

      v73 = [v66 bundleForClass_];
      sub_21BE2599C();

      v74 = sub_21BE289DC();
      v124 = v75;

      v76 = swift_allocObject();
      *(v76 + 16) = v132;
      v77 = sub_21BE2917C();
      *(v76 + 56) = MEMORY[0x277D837D0];
      *(v76 + 64) = v63;
      *(v76 + 32) = v77;
      *(v76 + 40) = v78;

      v79 = [v66 bundleForClass_];
      sub_21BE2599C();

      v80 = sub_21BE289DC();
      v82 = v81;

      sub_21BC88FB4(v123, &v7[*(v125 + 36)], type metadata accessor for CommLimitsItem);
      sub_21BBDAF04();
      sub_21BC88F6C(&qword_280BD8A20, sub_21BBDAF04);
      *v7 = sub_21BE2727C();
      *(v7 + 1) = v83;
      type metadata accessor for ChecklistStateVars();
      sub_21BC88F6C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
      *(v7 + 2) = sub_21BE26E9C();
      v7[24] = v84 & 1;
      v85 = v130;
      *(v7 + 4) = v131;
      *(v7 + 5) = v85;
      v86 = v124;
      *(v7 + 6) = v74;
      *(v7 + 7) = v86;
      *(v7 + 8) = v80;
      *(v7 + 9) = v82;
      sub_21BC88FB4(v7, v127, type metadata accessor for CommLimitsManagedCell);
      swift_storeEnumTagMultiPayload();
      sub_21BC88E80();
      sub_21BC88F6C(&qword_27CDB8648, type metadata accessor for CommLimitsManagedCell);
      v87 = v129;
      sub_21BE2784C();
      sub_21BC8901C(v7, type metadata accessor for CommLimitsManagedCell);
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8630, &qword_21BE3C5B0);
      return (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    case 2:
      v124 = v17;
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v23 = swift_allocObject();
      v126 = v8;
      v24 = v23;
      v119 = xmmword_21BE32770;
      *(v23 + 16) = xmmword_21BE32770;
      v25 = *(v21 + 24);
      v127 = v11;
      v26 = *(v2 + v25);
      v129 = a1;
      v27 = sub_21BE2917C();
      v125 = v4;
      v29 = v28;
      v24[7] = MEMORY[0x277D837D0];
      v30 = sub_21BBBEFE8();
      v24[8] = v30;
      v24[4] = v27;
      v24[5] = v29;
      type metadata accessor for ConfirmChildAgeViewModel();
      v31 = swift_getObjCClassFromMetadata();
      v32 = objc_opt_self();
      v128 = v14;
      v33 = v32;

      v34 = [v33 &selRef:v31 :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
      sub_21BE2599C();

      v121 = sub_21BE289DC();
      v123 = v35;

      v36 = v2;
      v37 = sub_21BC87AB0();
      *&v122 = v38;
      v39 = swift_allocObject();
      *(v39 + 16) = v119;
      v40 = sub_21BE2917C();
      *(v39 + 56) = MEMORY[0x277D837D0];
      *(v39 + 64) = v30;
      *(v39 + 32) = v40;
      *(v39 + 40) = v41;

      v42 = [v33 bundleForClass_];
      sub_21BE2599C();

      v43 = sub_21BE289DC();
      v45 = v44;

      sub_21BC88FB4(v36, &v7[*(v125 + 36)], type metadata accessor for CommLimitsItem);
      sub_21BBDAF04();
      sub_21BC88F6C(&qword_280BD8A20, sub_21BBDAF04);
      *v7 = sub_21BE2727C();
      *(v7 + 1) = v46;
      type metadata accessor for ChecklistStateVars();
      sub_21BC88F6C(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
      *(v7 + 2) = sub_21BE26E9C();
      v7[24] = v47 & 1;
      v48 = v123;
      *(v7 + 4) = v121;
      *(v7 + 5) = v48;
      v49 = v122;
      *(v7 + 6) = v37;
      *(v7 + 7) = v49;
      *(v7 + 8) = v43;
      *(v7 + 9) = v45;
      sub_21BC88FB4(v7, v132, type metadata accessor for CommLimitsManagedCell);
      swift_storeEnumTagMultiPayload();
      sub_21BC88F6C(&qword_27CDB8640, type metadata accessor for CommLimitsNotManagedCell);
      sub_21BC88F6C(&qword_27CDB8648, type metadata accessor for CommLimitsManagedCell);
      v50 = v124;
      sub_21BE2784C();
      v51 = v50;
      sub_21BBA3854(v50, v127, &qword_27CDB8628, &qword_21BE3C5A8);
      swift_storeEnumTagMultiPayload();
      sub_21BC88E80();
      v52 = v129;
      sub_21BE2784C();
      sub_21BB3A4CC(v51, &qword_27CDB8628, &qword_21BE3C5A8);
      v53 = type metadata accessor for CommLimitsManagedCell;
      v54 = v7;
LABEL_7:
      sub_21BC8901C(v54, v53);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8630, &qword_21BE3C5B0);
      return (*(*(v116 - 8) + 56))(v52, 0, 1, v116);
  }

  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8630, &qword_21BE3C5B0);
  v118 = *(*(v117 - 8) + 56);

  return v118(a1, 1, 1, v117);
}

unint64_t sub_21BC88E80()
{
  result = qword_27CDB8638;
  if (!qword_27CDB8638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8628, &qword_21BE3C5A8);
    sub_21BC88F6C(&qword_27CDB8640, type metadata accessor for CommLimitsNotManagedCell);
    sub_21BC88F6C(&qword_27CDB8648, type metadata accessor for CommLimitsManagedCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8638);
  }

  return result;
}

uint64_t sub_21BC88F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BC88FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BC8901C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21BC8907C()
{
  result = qword_27CDB8650;
  if (!qword_27CDB8650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8658, qword_21BE3C5B8);
    sub_21BC89100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8650);
  }

  return result;
}

unint64_t sub_21BC89100()
{
  result = qword_27CDB8660;
  if (!qword_27CDB8660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8630, &qword_21BE3C5B0);
    sub_21BC88E80();
    sub_21BC88F6C(&qword_27CDB8648, type metadata accessor for CommLimitsManagedCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8660);
  }

  return result;
}

uint64_t sub_21BC891D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21BC89218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC89264()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](0);
  sub_21BE2941C();
  return sub_21BE29B0C();
}

uint64_t sub_21BC892B8()
{
  v1 = *v0;
  MEMORY[0x21CF04C80](0);
  return sub_21BE2941C();
}

uint64_t sub_21BC892FC()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](0);
  sub_21BE2941C();
  return sub_21BE29B0C();
}

uint64_t sub_21BC8934C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21BC893E8();
  return sub_21BE2940C() & 1;
}

unint64_t sub_21BC89394()
{
  result = qword_27CDB8668[0];
  if (!qword_27CDB8668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB8668);
  }

  return result;
}

unint64_t sub_21BC893E8()
{
  result = qword_27CDB6730;
  if (!qword_27CDB6730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB6730);
  }

  return result;
}

uint64_t sub_21BC89434()
{
  v4 = *v0;
  v5 = *(v0 + 16);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v3, v1);
  return v3;
}

uint64_t sub_21BC8948C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  return sub_21BE2854C();
}

uint64_t sub_21BC894E8(uint64_t a1)
{
  v2 = v1;
  sub_21BE28D7C();
  v4 = *(*(a1 - 8) + 16);
  v4(&v19, v1, a1);
  v5 = sub_21BE28D6C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  v10 = v1[5];
  *(v6 + 112) = v1[4];
  *(v6 + 128) = v10;
  *(v6 + 144) = v1[6];
  v11 = v1[1];
  *(v6 + 48) = *v1;
  *(v6 + 64) = v11;
  v12 = v1[3];
  *(v6 + 80) = v1[2];
  *(v6 + 96) = v12;
  v4(&v19, v1, a1);
  v13 = sub_21BE28D6C();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v7;
  *(v14 + 32) = v8;
  *(v14 + 40) = v9;
  v15 = v2[5];
  *(v14 + 112) = v2[4];
  *(v14 + 128) = v15;
  *(v14 + 144) = v2[6];
  v16 = v2[1];
  *(v14 + 48) = *v2;
  *(v14 + 64) = v16;
  v17 = v2[3];
  *(v14 + 80) = v2[2];
  *(v14 + 96) = v17;
  sub_21BE2857C();
  return v19;
}

uint64_t sub_21BC8966C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *(a4 + 4);
  v6 = (*(a4 + 3))(*a1);
  v9 = a4[6];
  v8 = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v10 = a4[6];
  sub_21BE283FC();
  v11 = a4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB70A0, qword_21BE36778);
  if (v8 == 1)
  {
    return sub_21BE2840C();
  }

  sub_21BE2840C();
  v12 = *a4;
  v13 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  return sub_21BE2854C();
}

uint64_t sub_21BC897AC()
{
  v3 = v0[5];
  v4 = *(&v3 + 1);
  v5 = v0[5];
  sub_21BC8A054(&v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB70A0, qword_21BE36778);
  sub_21BE283FC();
  if (v2[0] != 2)
  {
    v5 = *v0;
    v6 = *(v0 + 16);
    v2[0] &= 1u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
    v5 = v3;
    v2[0] = 2;
    sub_21BE2840C();
  }

  return sub_21BC8A0C4(&v3);
}

uint64_t sub_21BC89894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = sub_21BE284DC();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  WitnessTable = swift_getWitnessTable();
  v44 = v7;
  v45 = WitnessTable;
  v34 = MEMORY[0x277CDEDA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DF8, &qword_21BE3B850);
  v14 = sub_21BE2719C();
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v30 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v33 = &v29 - v18;
  sub_21BC894E8(a1);
  v19 = *(v3 + 40);
  v20 = *(v3 + 48);
  sub_21BE284AC();
  v46 = *(v3 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v39 = v6;
  v40 = v5;
  v41 = v3;
  v21 = WitnessTable;
  sub_21BE280DC();

  (*(v37 + 8))(v10, v7);
  [*(v3 + 72) isOrganizer];
  v44 = v7;
  v45 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v30;
  v24 = OpaqueTypeMetadata2;
  sub_21BE2818C();
  (*(v35 + 8))(v13, v24);
  v25 = sub_21BC89FC0();
  v42 = OpaqueTypeConformance2;
  v43 = v25;
  swift_getWitnessTable();
  v26 = v33;
  sub_21BD37338(v23);
  v27 = *(v36 + 8);
  v27(v23, v14);
  sub_21BD37338(v26);
  return (v27)(v26, v14);
}

uint64_t (*sub_21BC89C94(_OWORD *a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v7;
  *(v6 + 128) = a1[6];
  v8 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v8;
  v9 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v9;
  v10 = type metadata accessor for ToggleWithConfirmation();
  (*(*(v10 - 8) + 16))(&v12, a1, v10);
  return sub_21BC8A024;
}

uint64_t sub_21BC89D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_21BC89894(a1, a2);
}

uint64_t sub_21BC89DB0()
{
  sub_21BB41FA4();

  return sub_21BE27DBC();
}

uint64_t sub_21BC89E04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_21BC89E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_21BC89EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC89F64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = *(v3 + 56);
  v4 = *(v3 + 64);
  v6 = sub_21BC89C94(v3, v1, v2);
  v5(v6);
}

unint64_t sub_21BC89FC0()
{
  result = qword_27CDBC560;
  if (!qword_27CDBC560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC560);
  }

  return result;
}

uint64_t sub_21BC8A024()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for ToggleWithConfirmation();
  return sub_21BC897AC();
}

uint64_t sub_21BC8A054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDB86F0, &unk_21BE3C7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC8A0C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB70A0, qword_21BE36778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21BC8A12C@<X0>(_BYTE *a1@<X8>)
{
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  result = MEMORY[0x21CF036E0](&v5, v3);
  *a1 = v5;
  return result;
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 136);

  v8 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_21BC8A204(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_21BC8966C(a1, *(v1 + 16), *(v1 + 24), (v1 + 48));
}

uint64_t sub_21BC8A28C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BC8A2C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21BC8A310(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21BC8A3BC()
{
  v1 = *(v0 + 24);
  v5 = *(v0 + 8);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC360, &qword_21BE4A2E0);
  MEMORY[0x21CF036E0](&v4, v2);
  return v4;
}

uint64_t sub_21BC8A410()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC360, &qword_21BE4A2E0);
  return sub_21BE2854C();
}

double sub_21BC8A468()
{
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8798, &qword_21BE3C8D0);
  sub_21BE283FC();
  return v2;
}

uint64_t sub_21BC8A4C0()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8798, &qword_21BE3C8D0);
  return sub_21BE2840C();
}

uint64_t sub_21BC8A51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v32 = type metadata accessor for PersonPickerCell();
  v37 = v32;
  WitnessTable = swift_getWitnessTable();
  v34 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v33 = &v31 - v13;
  v14 = sub_21BC8A3BC();
  v16 = v15;
  v17 = (*(v7 + 32))(v6, v7);
  if (v16)
  {
    if (v14 == v17 && v16 == v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_21BE2995C();
    }
  }

  else
  {
    v20 = 0;
  }

  swift_unknownObjectRetain();
  v21 = *(v7 + 8);
  *&v42 = sub_21BE270CC();
  *(&v42 + 1) = v22;
  *&v43 = 0x4000000000000000;
  BYTE8(v43) = v20 & 1;
  v44 = xmmword_21BE3C7B0;
  v39 = v42;
  v40 = v43;
  v41 = xmmword_21BE3C7B0;
  v23 = swift_allocObject();
  *(v23 + 16) = v6;
  *(v23 + 24) = v7;
  v24 = v3[1];
  *(v23 + 32) = *v3;
  *(v23 + 48) = v24;
  v25 = v3[3];
  *(v23 + 64) = v3[2];
  *(v23 + 80) = v25;
  *(v23 + 96) = a1;
  swift_unknownObjectRetain();
  (*(*(a2 - 8) + 16))(&v37, v3, a2);
  v26 = swift_checkMetadataState();
  v27 = v34;
  sub_21BE27F4C();

  (*(*(v26 - 8) + 8))(&v42, v26);
  v37 = v26;
  WitnessTable = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_21BD37338(v12);
  v29 = *(v35 + 8);
  v29(v12, OpaqueTypeMetadata2);
  sub_21BD37338(v28);
  return (v29)(v28, OpaqueTypeMetadata2);
}

uint64_t sub_21BC8A8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 32))(a3, a4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC360, &qword_21BE4A2E0);
  return sub_21BE2854C();
}

uint64_t sub_21BC8A940(uint64_t a1)
{
  v3 = swift_allocObject();
  v4 = *(a1 + 24);
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 24) = v4;
  v5 = v1[1];
  *(v3 + 32) = *v1;
  *(v3 + 48) = v5;
  v6 = v1[3];
  *(v3 + 64) = v1[2];
  *(v3 + 80) = v6;
  (*(*(a1 - 8) + 16))(&v42, v1, a1);
  v7 = sub_21BE28CBC();
  v8 = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for PersonPickerCell();
  WitnessTable = swift_getWitnessTable();
  *&v42 = v10;
  *(&v42 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v42 = v7;
  *(&v42 + 1) = AssociatedTypeWitness;
  *&v43 = OpaqueTypeMetadata2;
  *(&v43 + 1) = v13;
  *&v44 = AssociatedConformanceWitness;
  sub_21BE285DC();
  *&v42 = v10;
  *(&v42 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_21BE2848C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8778, &qword_21BE3C8C0);
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8780, &qword_21BE3C8C8);
  sub_21BE2719C();
  v34 = swift_getWitnessTable();
  v35 = sub_21BB3B038(&qword_27CDB8788, &qword_27CDB8778, &qword_21BE3C8C0);
  v32 = swift_getWitnessTable();
  v33 = sub_21BB3B038(&qword_27CDB8790, &qword_27CDB8780, &qword_21BE3C8C8);
  swift_getWitnessTable();
  sub_21BE26E2C();
  v15 = sub_21BE2719C();
  v30 = swift_getWitnessTable();
  v31 = MEMORY[0x277CDF678];
  v16 = swift_getWitnessTable();
  *&v42 = v15;
  *(&v42 + 1) = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  *&v42 = v15;
  *(&v42 + 1) = v16;
  v18 = swift_getOpaqueTypeConformance2();
  *&v42 = v17;
  *(&v42 + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  v19 = sub_21BE2719C();
  *&v42 = v17;
  *(&v42 + 1) = v18;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = MEMORY[0x277CDFB28];
  v20 = swift_getWitnessTable();
  *&v42 = v19;
  *(&v42 + 1) = v20;
  swift_getOpaqueTypeMetadata2();
  *&v42 = v19;
  *(&v42 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  sub_21BE2704C();
  sub_21BC8A468();
  sub_21BE2869C();
  sub_21BE2705C();
  swift_getWitnessTable();
  sub_21BE2811C();

  v41[0] = v42;
  v41[1] = v43;
  v41[2] = v44;
  v41[3] = v45;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v45;
  v21 = sub_21BE2719C();
  swift_getWitnessTable();
  sub_21BD37338(&v24);
  v22 = *(*(v21 - 8) + 8);
  v22(v41, v21);
  v42 = v37;
  v43 = v38;
  v44 = v39;
  v45 = v40;
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  sub_21BD37338(&v24);
  return v22(&v42, v21);
}

uint64_t sub_21BC8AF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a2;
  v41 = a1;
  v42 = a5;
  sub_21BE28CBC();
  v7 = *(a4 + 16);
  v39 = a4;
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PersonPickerCell();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_21BE285DC();
  v55 = v8;
  v56 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_21BE2848C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8778, &qword_21BE3C8C0);
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8780, &qword_21BE3C8C8);
  v10 = sub_21BE2719C();
  v52 = swift_getWitnessTable();
  v53 = sub_21BB3B038(&qword_27CDB8788, &qword_27CDB8778, &qword_21BE3C8C0);
  v50 = swift_getWitnessTable();
  v51 = sub_21BB3B038(&qword_27CDB8790, &qword_27CDB8780, &qword_21BE3C8C8);
  v37 = v10;
  v36 = swift_getWitnessTable();
  v11 = sub_21BE26E2C();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - v13;
  v15 = sub_21BE2719C();
  v48 = swift_getWitnessTable();
  v49 = MEMORY[0x277CDF678];
  v16 = swift_getWitnessTable();
  v55 = v15;
  v56 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v55 = v15;
  v56 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v55 = v17;
  v56 = v18;
  swift_getOpaqueTypeMetadata2();
  v19 = sub_21BE2719C();
  v35 = *(v19 - 8);
  v20 = *(v35 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v34 - v21;
  v55 = v17;
  v56 = v18;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = MEMORY[0x277CDFB28];
  v23 = swift_getWitnessTable();
  v55 = v19;
  v56 = v23;
  v34[1] = MEMORY[0x277CDEA30];
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v34 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v34 - v30;
  sub_21BE27B3C();
  v43 = a3;
  v44 = v39;
  v45 = v40;
  sub_21BE26E3C();
  sub_21BC8A468();
  sub_21BE26F6C();
  sub_21BC8C2F8(v11, v22);
  (*(v38 + 8))(v14, v11);
  sub_21BE2801C();
  (*(v35 + 8))(v22, v19);
  v55 = v19;
  v56 = v23;
  swift_getOpaqueTypeConformance2();
  sub_21BD37338(v29);
  v32 = *(v25 + 8);
  v32(v29, v24);
  sub_21BD37338(v31);
  return (v32)(v31, v24);
}

uint64_t sub_21BC8B618@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  sub_21BE28CBC();
  v7 = *(a3 + 16);
  v34 = a3;
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PersonPickerCell();
  WitnessTable = swift_getWitnessTable();
  v44[2] = swift_getOpaqueTypeMetadata2();
  v44[3] = swift_getWitnessTable();
  v44[4] = swift_getAssociatedConformanceWitness();
  sub_21BE285DC();
  v44[0] = v8;
  v44[1] = WitnessTable;
  v44[8] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v10 = sub_21BE2848C();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8778, &qword_21BE3C8C0);
  v32[1] = sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8780, &qword_21BE3C8C8);
  v14 = sub_21BE2719C();
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v32 - v19;
  v21 = v34;
  v37 = a2;
  v38 = v34;
  v39 = a1;
  sub_21BE275DC();
  sub_21BE2847C();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v21;
  v23 = a1[1];
  *(v22 + 32) = *a1;
  *(v22 + 48) = v23;
  v24 = a1[3];
  *(v22 + 64) = a1[2];
  *(v22 + 80) = v24;
  v25 = type metadata accessor for PersonPickerView();
  (*(*(v25 - 8) + 16))(v44, a1, v25);
  v26 = swift_getWitnessTable();
  sub_21BC8C064(sub_21BC8E244, v22, v26, v18);

  (*(v33 + 8))(v13, v10);
  v27 = sub_21BB3B038(&qword_27CDB8788, &qword_27CDB8778, &qword_21BE3C8C0);
  v42 = v26;
  v43 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_21BB3B038(&qword_27CDB8790, &qword_27CDB8780, &qword_21BE3C8C8);
  v40 = v28;
  v41 = v29;
  swift_getWitnessTable();
  sub_21BD37338(v18);
  v30 = *(v35 + 8);
  v30(v18, v14);
  sub_21BD37338(v20);
  return (v30)(v20, v14);
}

uint64_t sub_21BC8BB2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = sub_21BE28CBC();
  v25 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PersonPickerCell();
  WitnessTable = swift_getWitnessTable();
  v29 = MEMORY[0x277CE0CA8];
  v30 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = swift_getWitnessTable();
  v33 = v7;
  v34 = AssociatedTypeWitness;
  v35 = OpaqueTypeMetadata2;
  v36 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_21BE285DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v38 = *a1;
  v39 = v38;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = *(a1 + 1);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v19;
  v20 = *(a1 + 3);
  *(v18 + 64) = *(a1 + 2);
  *(v18 + 80) = v20;
  (*(*(v7 - 8) + 16))(&v33, &v39, v7);
  v21 = type metadata accessor for PersonPickerView();
  (*(*(v21 - 8) + 16))(&v33, a1, v21);
  v33 = v8;
  v34 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21BE285CC();
  v32 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_21BD37338(v15);
  v23 = *(v11 + 8);
  v23(v15, v10);
  sub_21BD37338(v17);
  return (v23)(v17, v10);
}

uint64_t sub_21BC8BE8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v4 = type metadata accessor for PersonPickerCell();
  WitnessTable = swift_getWitnessTable();
  v19 = v4;
  v20 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v14 = *a1;
  v15 = type metadata accessor for PersonPickerView();
  sub_21BC8A51C(v14, v15, v11);
  v19 = v4;
  v20 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_21BD37338(v11);
  v16 = *(v7 + 8);
  v16(v11, OpaqueTypeMetadata2);
  sub_21BD37338(v13);
  return (v16)(v13, OpaqueTypeMetadata2);
}

uint64_t sub_21BC8C064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v16 = a1;
  v17 = a2;
  v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8778, &qword_21BE3C8C0);
  v5 = sub_21BE2719C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v21 = sub_21BC8E2B0;
  v22 = 0;
  sub_21BE2869C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB87A8, &unk_21BE3C8E0);
  sub_21BB3B038(&qword_27CDB87B0, &qword_27CDB87A8, &unk_21BE3C8E0);
  v10 = a3;
  sub_21BE27E9C();
  v11 = swift_allocObject();
  v12 = v17;
  *(v11 + 16) = v16;
  *(v11 + 24) = v12;
  v13 = sub_21BB3B038(&qword_27CDB8788, &qword_27CDB8778, &qword_21BE3C8C0);
  v19 = v10;
  v20 = v13;

  swift_getWitnessTable();
  sub_21BC8E31C();
  sub_21BC8E498(qword_27CDB87C0, type metadata accessor for CGSize);
  sub_21BE2800C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21BC8C2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_21BE279FC();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v6 = sub_21BE2719C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  WitnessTable = swift_getWitnessTable();
  v39 = MEMORY[0x277CDF678];
  v11 = swift_getWitnessTable();
  v36 = v6;
  v37 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v27 - v14;
  v36 = v6;
  v37 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = OpaqueTypeMetadata2;
  v37 = OpaqueTypeConformance2;
  v29 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeMetadata2();
  v30 = *(v17 - 8);
  v31 = v17;
  v18 = *(v30 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v27 - v19;
  sub_21BE2869C();
  sub_21BE2811C();
  v21 = v28;
  sub_21BE27F7C();
  (*(v7 + 8))(v10, v6);
  sub_21BE279EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB87A0, &qword_21BE3C8D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  LOBYTE(v7) = sub_21BE27B5C();
  *(inited + 32) = v7;
  v23 = sub_21BE27B3C();
  *(inited + 33) = v23;
  sub_21BE27B4C();
  sub_21BE27B4C();
  if (sub_21BE27B4C() != v7)
  {
    sub_21BE27B4C();
  }

  sub_21BE27B4C();
  if (sub_21BE27B4C() != v23)
  {
    sub_21BE27B4C();
  }

  v24 = v29;
  sub_21BE27FCC();
  (*(v33 + 8))(v21, v34);
  (*(v32 + 8))(v15, OpaqueTypeMetadata2);
  v36 = OpaqueTypeMetadata2;
  v37 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v31;
  sub_21BE281DC();
  return (*(v30 + 8))(v20, v25);
}

uint64_t sub_21BC8C7E4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_21BC8A940(a1);
}

uint64_t sub_21BC8C850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB88B8, &qword_21BE3CA48);
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v7 = (&v43 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - v10;
  v12 = sub_21BE27CEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8898, &qword_21BE3CA30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v43 - v19);
  if ((*(a2 + 64))(a1, a2))
  {
    v21 = [objc_opt_self() secondarySystemFillColor];
    v44 = sub_21BE2826C();
    v22 = sub_21BE2869C();
    v43 = v23;
    v24 = (v20 + *(v17 + 36));
    v25 = sub_21BE2837C();
    v26 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB88C0, &qword_21BE3CA50) + 36);
    sub_21BE270EC();
    *v24 = v25;
    (*(v13 + 104))(v16, *MEMORY[0x277CE0A50], v12);
    v27 = sub_21BE27C1C();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    v28 = sub_21BE27C6C();
    sub_21BB3A4CC(v11, &qword_27CDB8858, &qword_21BE3CA18);
    (*(v13 + 8))(v16, v12);
    KeyPath = swift_getKeyPath();
    v30 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB88C8, &qword_21BE3CA88) + 36));
    *v30 = KeyPath;
    v30[1] = v28;
    LOBYTE(v28) = sub_21BE27B7C();
    sub_21BE26E0C();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDB88D0, &qword_21BE3CA90) + 36);
    *v39 = v28;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB88A8, &qword_21BE3CA38) + 36));
    v41 = v43;
    *v40 = v22;
    v40[1] = v41;
    *v20 = v44;
    sub_21BBA3854(v20, v7, &qword_27CDB8898, &qword_21BE3CA30);
    swift_storeEnumTagMultiPayload();
    sub_21BC8E740();
    sub_21BC8E7F8();
    sub_21BE2784C();
    return sub_21BB3A4CC(v20, &qword_27CDB8898, &qword_21BE3CA30);
  }

  else
  {
    *v7 = (*(a2 + 24))(a1, a2);
    swift_storeEnumTagMultiPayload();
    sub_21BC8E740();
    sub_21BC8E7F8();
    return sub_21BE2784C();
  }
}

uint64_t sub_21BC8CCD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21BE2838C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v8 = *v1;
    sub_21BE2836C();
  }

  else
  {
    sub_21BE2837C();
  }

  (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
  v9 = sub_21BE283CC();

  result = (*(v4 + 8))(v7, v3);
  *a1 = v9;
  return result;
}

uint64_t sub_21BC8CE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_21BE276EC();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE27A2C();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v41 = *(a1 + 24);
  type metadata accessor for PersonPickerCell.SelectionView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8848, &qword_21BE3CA08);
  swift_getTupleTypeMetadata2();
  sub_21BE286EC();
  swift_getWitnessTable();
  sub_21BE2851C();
  v57 = sub_21BE2719C();
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8850, &qword_21BE3CA10);
  v59 = MEMORY[0x277CE0BD8];
  v60 = v58;
  v61 = MEMORY[0x277CE0BD8];
  swift_getTupleTypeMetadata();
  sub_21BE286EC();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_21BE284FC();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v37 - v12;
  v14 = swift_getWitnessTable();
  v57 = v10;
  v58 = v14;
  v37[1] = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v37 - v17;
  sub_21BE27AEC();
  v19 = sub_21BE2719C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v38 = v37 - v26;
  MEMORY[0x28223BE20](v25);
  v43 = v37 - v27;
  v52 = v9;
  v53 = v41;
  v28 = v45;
  v54 = v45;
  sub_21BE2770C();
  sub_21BE284EC();
  v29 = v44;
  sub_21BE27A0C();
  sub_21BE2805C();
  (*(v46 + 8))(v29, v47);
  (*(v42 + 8))(v13, v10);
  v57 = v10;
  v58 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21BE2809C();
  (*(v40 + 8))(v18, OpaqueTypeMetadata2);
  v31 = v48;
  if (*(v28 + 24))
  {
    sub_21BE276BC();
  }

  else
  {
    sub_21BE276CC();
  }

  v32 = v38;
  sub_21BE2718C();
  (*(v49 + 8))(v31, v50);
  v33 = *(v20 + 8);
  v33(v24, v19);
  v34 = sub_21BC8E498(&qword_27CDB6790, MEMORY[0x277CDE470]);
  v55 = OpaqueTypeConformance2;
  v56 = v34;
  swift_getWitnessTable();
  v35 = v43;
  sub_21BD37338(v32);
  v33(v32, v19);
  sub_21BD37338(v35);
  return (v33)(v35, v19);
}

uint64_t sub_21BC8D4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a2;
  v86 = a1;
  v96 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = &v73 - v7;
  v99 = sub_21BE27CEC();
  v87 = *(v99 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = a3;
  v98 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  type metadata accessor for PersonPickerCell.SelectionView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8848, &qword_21BE3CA08);
  swift_getTupleTypeMetadata2();
  sub_21BE286EC();
  swift_getWitnessTable();
  v11 = sub_21BE2851C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  v16 = sub_21BE2719C();
  v103 = *(v16 - 8);
  v17 = *(v103 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v73 - v21;
  v105 = v104;
  v106 = v10;
  v22 = v86;
  v107 = v86;
  sub_21BE2869C();
  sub_21BE2850C();
  v23 = *(v22 + 16);
  v24 = v22;
  WitnessTable = swift_getWitnessTable();
  sub_21BE2815C();
  (*(v12 + 8))(v15, v11);
  v147[8] = WitnessTable;
  v147[9] = MEMORY[0x277CDF918];
  v92 = v16;
  v93 = swift_getWitnessTable();
  v101 = v20;
  sub_21BD37338(v20);
  v26 = *(v103 + 8);
  v94 = v103 + 8;
  v95 = v26;
  v26(v20, v16);
  sub_21BE2869C();
  sub_21BE26F2C();
  v88 = v147[10];
  v89 = v149;
  v90 = v152;
  v91 = v151;
  v164 = 1;
  v162 = v148;
  v160 = v150;
  v27 = v104;
  v28 = v97;
  type metadata accessor for PersonPickerCell();
  v79 = *(v24 + 8);
  v29 = v28;
  v30 = *(v28 + 40);
  swift_unknownObjectRetain();
  v137 = v30(v27, v29);
  v138 = v31;
  v78 = sub_21BB41FA4();
  v83 = sub_21BE27DBC();
  v33 = v32;
  v35 = v34;
  v36 = *MEMORY[0x277CE0A68];
  v37 = v87;
  v77 = *(v87 + 104);
  v38 = v98;
  v39 = v99;
  v77(v98, v36, v99);
  v75 = sub_21BE27C1C();
  v40 = *(v75 - 8);
  v74 = *(v40 + 56);
  v76 = v40 + 56;
  v41 = v100;
  v74(v100, 1, 1, v75);
  sub_21BE27C6C();
  sub_21BB3A4CC(v41, &qword_27CDB8858, &qword_21BE3CA18);
  v73 = *(v37 + 8);
  v73(v38, v39);
  v42 = v83;
  v43 = sub_21BE27D9C();
  v84 = v44;
  v85 = v43;
  LODWORD(v86) = v45;
  v87 = v46;

  sub_21BBC7C7C(v42, v33, v35 & 1);

  sub_21BE2869C();
  sub_21BE26F2C();
  v80 = v153;
  v81 = v155;
  v82 = v158;
  v83 = v157;
  v170 = 1;
  v168 = v154;
  v166 = v156;
  v47 = (*(v97 + 48))(v104);
  v49 = v48;
  swift_unknownObjectRelease();
  v137 = v47;
  v138 = v49;
  v50 = sub_21BE27DBC();
  v52 = v51;
  LOBYTE(v39) = v53;
  v55 = v98;
  v54 = v99;
  v77(v98, *MEMORY[0x277CE0AB0], v99);
  v56 = v100;
  v74(v100, 1, 1, v75);
  sub_21BE27C6C();
  sub_21BB3A4CC(v56, &qword_27CDB8858, &qword_21BE3CA18);
  v73(v55, v54);
  v57 = sub_21BE27D9C();
  v59 = v58;
  LOBYTE(v37) = v60;

  sub_21BBC7C7C(v50, v52, v39 & 1);

  sub_21BE2833C();
  v61 = sub_21BE27D4C();
  v63 = v62;
  LOBYTE(v52) = v64;
  v66 = v65;

  sub_21BBC7C7C(v57, v59, v37 & 1);

  v67 = v101;
  v68 = v92;
  (*(v103 + 16))(v101, v102, v92);
  v137 = 0;
  LOBYTE(v138) = v164;
  *(&v138 + 1) = *v163;
  HIDWORD(v138) = *&v163[3];
  v139 = v88;
  v140 = v162;
  *v141 = *v161;
  *&v141[3] = *&v161[3];
  v142 = v89;
  v143 = v160;
  *v144 = *v159;
  *&v144[3] = *&v159[3];
  v145 = v91;
  v146 = v90;
  v147[0] = v67;
  v147[1] = &v137;
  v70 = v84;
  v69 = v85;
  v133 = v85;
  v134 = v84;
  LOBYTE(v67) = v86 & 1;
  v135 = v86 & 1;
  v136 = v87;
  v122 = 0;
  v123 = v170;
  *v124 = *v169;
  *&v124[3] = *&v169[3];
  v125 = v80;
  v126 = v168;
  *v127 = *v167;
  *&v127[3] = *&v167[3];
  v128 = v81;
  v129 = v166;
  *&v130[3] = *&v165[3];
  *v130 = *v165;
  v131 = v83;
  v132 = v82;
  v147[2] = &v133;
  v147[3] = &v122;
  v118 = v61;
  v119 = v63;
  LOBYTE(v52) = v52 & 1;
  v120 = v52;
  v121 = v66;
  v147[4] = &v118;
  sub_21BBA4A38(v85, v84, v86 & 1);

  sub_21BBA4A38(v61, v63, v52);

  v113 = v68;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8850, &qword_21BE3CA10);
  v115 = MEMORY[0x277CE0BD8];
  v116 = v114;
  v117 = MEMORY[0x277CE0BD8];
  v108 = v93;
  v109 = sub_21BC8E4EC();
  v110 = MEMORY[0x277CE0BC8];
  v111 = v109;
  v112 = MEMORY[0x277CE0BC8];
  sub_21BDFE148(v147, 5uLL, &v113);
  sub_21BBC7C7C(v61, v63, v52);

  sub_21BBC7C7C(v69, v70, v67);

  v71 = v95;
  v95(v102, v68);
  sub_21BBC7C7C(v118, v119, v120);

  sub_21BBC7C7C(v133, v134, v135);

  return v71(v101, v68);
}

uint64_t sub_21BC8DE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8848, &qword_21BE3CA08);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  v14 = *(a1 + 24);
  type metadata accessor for PersonPickerCell();
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  LOBYTE(v31) = v14;
  *(&v31 + 1) = v15 + 10.0;
  *&v32 = v16;
  v17 = type metadata accessor for PersonPickerCell.SelectionView();
  WitnessTable = swift_getWitnessTable();
  sub_21BD37338(&v31);
  v19 = *(a1 + 8);
  swift_unknownObjectRetain();
  sub_21BC8C850(a2, a3, v13);
  swift_unknownObjectRelease();
  v20 = *(a1 + 40);
  sub_21BE2869C();
  sub_21BE26F2C();
  v21 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8868, &qword_21BE3CA20) + 36)];
  v22 = v32;
  *v21 = v31;
  *(v21 + 1) = v22;
  *(v21 + 2) = v33;
  *&v13[*(v7 + 36)] = 256;
  v26 = v29;
  v27 = v30;
  v28[0] = &v26;
  sub_21BBA3854(v13, v11, &qword_27CDB8848, &qword_21BE3CA08);
  v28[1] = v11;
  v25[0] = v17;
  v25[1] = v7;
  v24[1] = WitnessTable;
  v24[2] = sub_21BC8E570();
  sub_21BDFE148(v28, 2uLL, v25);
  sub_21BB3A4CC(v13, &qword_27CDB8848, &qword_21BE3CA08);
  return sub_21BB3A4CC(v11, &qword_27CDB8848, &qword_21BE3CA08);
}

double sub_21BC8E0E0@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = sub_21BE2829C();
  }

  else
  {
    v3 = sub_21BE282DC();
  }

  v4 = v3;
  sub_21BE26ECC();
  v5 = sub_21BE2869C();
  v7 = v6;
  sub_21BE2869C();
  sub_21BE26F2C();
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v4;
  *(a2 + 48) = 256;
  *(a2 + 56) = v5;
  *(a2 + 64) = v7;
  *(a2 + 72) = v9;
  *(a2 + 88) = v10;
  result = *&v11;
  *(a2 + 104) = v11;
  return result;
}

double sub_21BC8E1E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  return sub_21BC8E0E0(*v2, a2);
}

uint64_t sub_21BC8E1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_21BC8CE24(a1, a2);
}

uint64_t sub_21BC8E244()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8798, &qword_21BE3C8D0);
  return sub_21BE2840C();
}

uint64_t sub_21BC8E2B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21BE282DC();
  result = sub_21BE26F6C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_21BC8E2F0(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_21BC8E31C()
{
  result = qword_27CDB87B8;
  if (!qword_27CDB87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB87B8);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_21BC8E3C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_21BC8BE8C(a1, v2 + 32, a2);
}

uint64_t sub_21BC8E3F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BC8E498(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BC8E4EC()
{
  result = qword_27CDB8860;
  if (!qword_27CDB8860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8850, &qword_21BE3CA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8860);
  }

  return result;
}

unint64_t sub_21BC8E570()
{
  result = qword_27CDB8870;
  if (!qword_27CDB8870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8848, &qword_21BE3CA08);
    sub_21BC8E628();
    sub_21BB3B038(&qword_280BD6A38, qword_27CDB7740, &qword_21BE3CA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8870);
  }

  return result;
}

unint64_t sub_21BC8E628()
{
  result = qword_27CDB8878;
  if (!qword_27CDB8878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8868, &qword_21BE3CA20);
    sub_21BC8E6B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8878);
  }

  return result;
}

unint64_t sub_21BC8E6B4()
{
  result = qword_27CDB8880;
  if (!qword_27CDB8880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8888, &qword_21BE3CA28);
    sub_21BC8E740();
    sub_21BC8E7F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8880);
  }

  return result;
}

unint64_t sub_21BC8E740()
{
  result = qword_27CDB8890;
  if (!qword_27CDB8890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8898, &qword_21BE3CA30);
    sub_21BB3B038(&qword_27CDB88A0, &qword_27CDB88A8, &qword_21BE3CA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8890);
  }

  return result;
}

unint64_t sub_21BC8E7F8()
{
  result = qword_27CDB88B0;
  if (!qword_27CDB88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB88B0);
  }

  return result;
}

uint64_t sub_21BC8E85C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BC8E898(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21BC8E8EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21BC8E990()
{
  result = qword_27CDB8958;
  if (!qword_27CDB8958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8960, &qword_21BE3CBC8);
    sub_21BB3B038(&qword_27CDB8968, &qword_27CDB8970, &qword_21BE3CBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8958);
  }

  return result;
}

uint64_t String.localized.getter()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE2599C();

  return v2;
}

uint64_t String.rebrand.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_21BE263EC();
  v10 = v4;
  v11 = sub_21BC8EC98();
  v5 = __swift_allocate_boxed_opaque_existential_1(&v8);
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D08030], v4);
  LOBYTE(v4) = sub_21BE2651C();
  __swift_destroy_boxed_opaque_existential_0Tm(&v8);
  if ((v4 & 1) != 0 && (v8 = a1, v9 = a2, sub_21BB41FA4(), (sub_21BE294AC() & 1) == 0))
  {
    v8 = 0x444E41524245525FLL;
    v9 = 0xE800000000000000;

    v7 = sub_21BE28B8C();
    sub_21BE28AEC();
    return v7;
  }

  else
  {
  }

  return a1;
}

Swift::String __swiftcall String.localized(in:)(NSBundle in)
{
  v1 = sub_21BE2599C();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

unint64_t sub_21BC8EC98()
{
  result = qword_27CDB8978;
  if (!qword_27CDB8978)
  {
    sub_21BE263EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8978);
  }

  return result;
}

uint64_t String.localizedWith(_:bundle:)()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  v2 = sub_21BE289DC();

  return v2;
}

uint64_t sub_21BC8EE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21BBA6A64;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21BC8EFA0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 80);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return v9(a1, a2);
}

uint64_t sub_21BC8F0B8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89B0, &qword_21BE3CC78) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC8F190, 0, 0);
}

uint64_t sub_21BC8F190()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  v4 = sub_21BE2688C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_user;
  swift_beginAccess();
  sub_21BBFD920(v1, v2 + v6, &qword_27CDB89B0, &qword_21BE3CC78);
  swift_endAccess();
  v7 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore + 24);
  v8 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v2 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore), v7);
  v9 = *(MEMORY[0x277D4BCE8] + 4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_21BC8F320;
  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[9];

  return MEMORY[0x2821AC038](v11, v12, v13, v7, v8);
}

uint64_t sub_21BC8F320()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_21BC8F530;
  }

  else
  {
    v3 = sub_21BC8F434;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BC8F434()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = sub_21BE266DC();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  swift_beginAccess();
  sub_21BBFD920(v1, v3 + v5, &qword_27CDB7AC8, &qword_21BE3CC70);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BC8F530()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_21BC8F59C()
{
  v1[8] = v0;
  v2 = sub_21BE26A4C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89B0, &qword_21BE3CC78) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = sub_21BE2688C();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v10 = sub_21BE266DC();
  v1[18] = v10;
  v11 = *(v10 - 8);
  v1[19] = v11;
  v12 = *(v11 + 64) + 15;
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC8F790, 0, 0);
}

uint64_t sub_21BC8F790()
{
  v49 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  swift_beginAccess();
  sub_21BBA3854(v4 + v5, v3, &qword_27CDB7AC8, &qword_21BE3CC70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[11];
    sub_21BB3A4CC(v0[17], &qword_27CDB7AC8, &qword_21BE3CC70);
    sub_21BE2614C();
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FDC();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v48 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_21BB3D81C(0x292865766173, 0xE600000000000000, &v48);
      _os_log_impl(&dword_21BB35000, v7, v8, "ParentalControlStore.%s settings is unxpectedly nil", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x21CF05C50](v14, -1, -1);
      MEMORY[0x21CF05C50](v13, -1, -1);
    }

    (*(v11 + 8))(v10, v12);
    goto LABEL_12;
  }

  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[13];
  v18 = v0[8];
  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v19 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_user;
  swift_beginAccess();
  sub_21BBA3854(v18 + v19, v17, &qword_27CDB89B0, &qword_21BE3CC78);
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    v20 = v0[12];
    sub_21BB3A4CC(v0[13], &qword_27CDB89B0, &qword_21BE3CC78);
    sub_21BE2614C();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FDC();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[19];
    v24 = v0[20];
    v26 = v0[18];
    v27 = v0[12];
    v29 = v0[9];
    v28 = v0[10];
    if (v23)
    {
      v47 = v0[20];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_21BB3D81C(0x292865766173, 0xE600000000000000, &v48);
      _os_log_impl(&dword_21BB35000, v21, v22, "ParentalControlStore.%s user is unxpectedly nil. Like because load() hasn't been called", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x21CF05C50](v31, -1, -1);
      MEMORY[0x21CF05C50](v30, -1, -1);

      (*(v28 + 8))(v27, v29);
      (*(v25 + 8))(v47, v26);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
      (*(v25 + 8))(v24, v26);
    }

LABEL_12:
    v39 = v0[20];
    v40 = v0[16];
    v41 = v0[17];
    v43 = v0[12];
    v42 = v0[13];
    v44 = v0[11];

    v45 = v0[1];

    return v45();
  }

  v32 = v0[8];
  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  v33 = *(v32 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore + 24);
  v34 = *(v32 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore + 32);
  __swift_project_boxed_opaque_existential_1Tm((v32 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore), v33);
  v35 = *(MEMORY[0x277D4BCF0] + 4);
  v36 = swift_task_alloc();
  v0[21] = v36;
  *v36 = v0;
  v36[1] = sub_21BC8FC40;
  v37 = v0[20];
  v38 = v0[16];

  return MEMORY[0x2821AC040](v37, v38, v33, v34);
}