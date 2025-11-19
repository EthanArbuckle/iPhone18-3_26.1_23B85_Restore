void sub_1DB31953C()
{
  qword_1ECC67890 = 0x646E655265676170;
  *algn_1ECC67898 = 0xEA00000000007265;
  qword_1ECC678A0 = &unk_1F56EF428;
}

uint64_t sub_1DB319570(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E20, &unk_1DB50FB00);
  v36 = a2;
  result = sub_1DB50B600();
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
        sub_1DB30C200(v25, v37);
      }

      else
      {
        sub_1DB300B14(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      result = sub_1DB30C200(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1DB319828(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D10, &qword_1DB50F9E8);
  v36 = a2;
  result = sub_1DB50B600();
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
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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

uint64_t sub_1DB319AD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D98, &unk_1DB50FE90);
  v38 = a2;
  result = sub_1DB50B600();
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
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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

uint64_t sub_1DB319D74(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1DB50B560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D30, &qword_1DB50FA10);
  v43 = a2;
  result = sub_1DB50B600();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
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
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_1DB30C200((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_1DB300B14(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_1DB50A5C0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
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
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_1DB30C200(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
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

uint64_t sub_1DB31A114(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D38, &qword_1DB50FA18);
  v40 = a2;
  result = sub_1DB50B600();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        sub_1DB314BBC(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
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
        v41 = (v21 - 1) & v21;
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

uint64_t sub_1DB31A3F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DB8, &unk_1DB50FEA0);
  result = sub_1DB50B600();
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
        sub_1DB30C200((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1DB314C3C(v24, &v38);
        sub_1DB300B14(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1DB50B270();
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
      result = sub_1DB30C200(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1DB31A6AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DC8, &qword_1DB50FAA8);
  result = sub_1DB50B600();
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
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1DB30C200(v22, v33);
      }

      else
      {
        sub_1DB300B14(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_1DB50BCF0();
      MEMORY[0x1E12871F0](v21);
      result = sub_1DB50BD30();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1DB30C200(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((a2 & 1) == 0)
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

uint64_t sub_1DB31A940(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for JetPackAsset(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D18, &unk_1DB50F9F0);
  v44 = a2;
  result = sub_1DB50B600();
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
        sub_1DB314B58(v31, v45);
      }

      else
      {
        sub_1DB314AF4(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      result = sub_1DB314B58(v45, *(v12 + 56) + v30 * v20);
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

uint64_t sub_1DB31ACA4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = a2;
  result = sub_1DB50B600();
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v7 + 56) + 40 * v23);
      if (v38)
      {
        sub_1DB2FEA0C(v27, v39);
      }

      else
      {
        sub_1DB30BE90(v27, v39);
      }

      v28 = *(v10 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = sub_1DB2FEA0C(v39, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v38 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_36;
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

LABEL_36:
  *v5 = v10;
  return result;
}

uint64_t sub_1DB31AF60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DD8, &qword_1DB50FAB8);
  v33 = a2;
  result = sub_1DB50B600();
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
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1DB50BCF0();
      MEMORY[0x1E12871F0](v21);
      result = sub_1DB50BD30();
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

LABEL_37:
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DB31B1F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DB0, &unk_1DB50FA90);
  v36 = a2;
  result = sub_1DB50B600();
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
        sub_1DB2FEA0C(v25, v37);
      }

      else
      {
        sub_1DB30BE90(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      result = sub_1DB2FEA0C(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_1DB31B4B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D90, &unk_1DB50FA70);
  v40 = a2;
  result = sub_1DB50B600();
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
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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

uint64_t sub_1DB31B774(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D88, &unk_1DB50FE80);
  v37 = a2;
  result = sub_1DB50B600();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v38 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v39 = *(*(v5 + 56) + 16 * v20);
      if ((v37 & 1) == 0)
      {

        sub_1DB30C1AC(v39, *(&v39 + 1));
      }

      v22 = *(v8 + 40);
      sub_1DB50BCF0();
      MEMORY[0x1E12871F0](*(v21 + 16));
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = (v21 + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;

          sub_1DB50A740();

          v24 += 2;
          --v23;
        }

        while (v23);
      }

      result = sub_1DB50BD30();
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

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v39;
      ++*(v8 + 16);
      v5 = v36;
      v13 = v38;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_38;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_1DB31BA68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D80, &unk_1DB50FA60);
  v36 = a2;
  result = sub_1DB50B600();
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

        sub_1DB30C1AC(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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

uint64_t sub_1DB31BD24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D28, &qword_1DB50FA08);
  v38 = a2;
  result = sub_1DB50B600();
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
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      *(*(v8 + 56) + 4 * v16) = v25;
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

uint64_t sub_1DB31BFC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D50, &qword_1DB50FA30);
  result = sub_1DB50B600();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
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
        v27 = *(*(v5 + 56) + 8 * v23);
      }

      else
      {
        sub_1DB314C3C(v24, &v38);
        v27 = *(*(v5 + 56) + 8 * v23);
      }

      v28 = *(v8 + 40);
      result = sub_1DB50B270();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      *(*(v8 + 56) + 8 * v16) = v27;
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

    if ((a2 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DB31C274(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DD0, &qword_1DB50FAB0);
  v46 = a2;
  result = sub_1DB50B600();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
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
    v45 = result;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v51 = *v25;
      v27 = *(v5 + 56) + 48 * v24;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v48 = *(v27 + 24);
      v31 = *(v27 + 32);
      v47 = *(v27 + 40);
      if ((v46 & 1) == 0)
      {
      }

      v50 = v30;
      v32 = v29;
      v33 = v28;
      v34 = *(v45 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
      v8 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v17 = v50;
        v18 = v31;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v17 = v50;
      v18 = v31;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v45 + 48) + 16 * v16);
      *v19 = v51;
      v19[1] = v26;
      v20 = *(v45 + 56) + 48 * v16;
      *v20 = v33;
      *(v20 + 8) = v32;
      v13 = v49;
      *(v20 + 16) = v17;
      *(v20 + 24) = v48;
      *(v20 + 32) = v18;
      *(v20 + 40) = v47;
      ++*(v45 + 16);
      v5 = v44;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v49 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DB31C59C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D40, &qword_1DB50FA20);
  v38 = a2;
  result = sub_1DB50B600();
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
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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

uint64_t sub_1DB31C83C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DF8, &qword_1DB50FEB0);
  v40 = a2;
  result = sub_1DB50B600();
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
      v18 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v42 = v23[2];
      v27 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {

        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      sub_1DB50A740();
      result = sub_1DB50BD30();
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
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v13 = v41;
      v17[2] = v42;
      v17[3] = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v39;
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
        v41 = (v20 - 1) & v20;
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

uint64_t sub_1DB31CB14(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = sub_1DB50A1D0();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F48, &qword_1DB50FEB8);
  v44 = a2;
  result = sub_1DB50B600();
  v12 = result;
  if (*(v9 + 16))
  {
    v42[0] = v3;
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
    v42[1] = v6 + 16;
    v43 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v28 = v25 | (v13 << 6);
      v29 = *(v9 + 48) + 40 * v28;
      if (v44)
      {
        v30 = *v29;
        v31 = *(v29 + 16);
        v49 = *(v29 + 32);
        v47 = v30;
        v48 = v31;
        v32 = *(v43 + 72);
        (*(v43 + 32))(v45, *(v9 + 56) + v32 * v28, v46);
      }

      else
      {
        sub_1DB314C3C(v29, &v47);
        v32 = *(v43 + 72);
        (*(v43 + 16))(v45, *(v9 + 56) + v32 * v28, v46);
      }

      v33 = *(v12 + 40);
      result = sub_1DB50B270();
      v34 = -1 << *(v12 + 32);
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
      v22 = *(v12 + 48) + 40 * v21;
      v23 = v47;
      v24 = v48;
      *(v22 + 32) = v49;
      *v22 = v23;
      *(v22 + 16) = v24;
      result = (*v19)(*(v12 + 56) + v32 * v21, v45, v46);
      ++*(v12 + 16);
    }

    v26 = v13;
    while (1)
    {
      v13 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v27 = v14[v13];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v17 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42[0];
      goto LABEL_36;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v42[0];
    if (v41 >= 64)
    {
      bzero((v9 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DB31CEB4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_1DB50B600();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
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
      v24 = v21 | (v11 << 6);
      v25 = (*(v7 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v7 + 56) + 24 * v24;
      v42 = *v28;
      v29 = *(v28 + 16);
      if ((v41 & 1) == 0)
      {
      }

      v30 = *(v10 + 40);
      sub_1DB50BCF0();
      sub_1DB50A740();
      result = sub_1DB50BD30();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      v20 = *(v10 + 56) + 24 * v18;
      *v20 = v42;
      *(v20 + 16) = v29;
      ++*(v10 + 16);
      v7 = v40;
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

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

_OWORD *sub_1DB31D16C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DB306160(a2, a3);
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
      sub_1DB3112DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DB319570(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1DB306160(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1DB50BC20();
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

    return sub_1DB30C200(a1, v23);
  }

  else
  {
    sub_1DB31E700(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1DB31D2BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DB306160(a2, a3);
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
      sub_1DB319AD4(v16, a4 & 1);
      v20 = *v5;
      result = sub_1DB306160(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1DB3115E8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1DB31D420(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1DB306160(a4, a5);
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
      sub_1DB31A114(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_1DB306160(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1DB3119D4();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    v30 = *(v27 + 16);
    *(v27 + 16) = a3;

    return sub_1DB31EB94(v28, v29, v30);
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v32 = (v26[6] + 16 * v15);
  *v32 = a4;
  v32[1] = a5;
  v33 = v26[7] + 24 * v15;
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = a3;
  v34 = v26[2];
  v19 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v35;
}

_OWORD *sub_1DB31D5C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DB30EDA8(a2);
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
      sub_1DB311B6C();
      goto LABEL_7;
    }

    sub_1DB31A3F4(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1DB30EDA8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1DB314C3C(a2, v22);
      return sub_1DB31E82C(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1DB50BC20();
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
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1DB30C200(a1, v17);
}

uint64_t sub_1DB31D714(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DB306160(a2, a3);
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
      sub_1DB311E8C();
      goto LABEL_7;
    }

    sub_1DB31A940(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_1DB306160(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DB50BC20();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for JetPackAsset(0) - 8) + 72) * v12;

    return sub_1DB31EB30(a1, v20);
  }

LABEL_13:
  sub_1DB31E910(v12, a2, a3, a1, v18);
}

unint64_t sub_1DB31D878(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1DB30EE50(a2);
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
      sub_1DB31AF60(v14, a3 & 1);
      v18 = *v4;
      result = sub_1DB30EE50(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1DB31227C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
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

uint64_t sub_1DB31D9C4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DB306160(a2, a3);
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
      sub_1DB3123D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DB31B1F0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1DB306160(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1DB50BC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_1DB2FEA0C(a1, v23);
  }

  else
  {
    sub_1DB31E9A8(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1DB31DB18(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DB30EE50(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1DB311D10();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1DB31A6AC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1DB30EE50(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1DB50BC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v21);

    return sub_1DB30C200(a1, v21);
  }

  else
  {

    return sub_1DB31E8A8(v9, a2, a1, v20);
  }
}

uint64_t sub_1DB31DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DB306160(a3, a4);
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
      sub_1DB31B4B4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1DB306160(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DB312580();
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

uint64_t sub_1DB31DDCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DB30EFC0(a3);
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
      sub_1DB31B774(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DB30EFC0(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DB3126F8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = *v23;
    v25 = v23[1];
    *v23 = a1;
    v23[1] = a2;

    return sub_1DB30C158(v24, v25);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  *(v22[6] + 8 * v11) = a3;
  v27 = (v22[7] + 16 * v11);
  *v27 = a1;
  v27[1] = a2;
  v28 = v22[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v29;
}

uint64_t sub_1DB31DF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DB306160(a3, a4);
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
      sub_1DB31BA68(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1DB306160(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DB312874();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_1DB30C158(v26, v27);
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

uint64_t sub_1DB31E0C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DB30EDA8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1DB31BFC4(v13, a3 & 1);
      v20 = *v4;
      v21 = sub_1DB30EDA8(a2);
      if ((v14 & 1) != (v22 & 1))
      {
LABEL_17:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }

      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1DB312B60();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_1DB314C3C(a2, v29);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v23 = v16[6] + 40 * v10;
    v24 = v30;
    v25 = v29[1];
    *v23 = v29[0];
    *(v23 + 16) = v25;
    *(v23 + 32) = v24;
    *(v16[7] + 8 * v10) = a1;
    v26 = v16[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
      v16[2] = v28;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  v17 = v16[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
}

unint64_t sub_1DB31E24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1DB306160(a4, a5);
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
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1DB31CEB4(v20, a6 & 1, &qword_1ECC42D48, &qword_1DB50FA28);
      v24 = *v7;
      result = sub_1DB306160(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1DB312EBC();
      result = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * result);
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    return result;
  }

  v26[(result >> 6) + 8] |= 1 << result;
  v28 = (v26[6] + 16 * result);
  *v28 = a4;
  v28[1] = a5;
  v29 = (v26[7] + 24 * result);
  *v29 = a1;
  v29[1] = a2;
  v29[2] = a3;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26[2] = v31;
}

unint64_t sub_1DB31E3EC(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DB306160(a2, a3);
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
      sub_1DB31C59C(v16, a4 & 1);
      v20 = *v5;
      result = sub_1DB306160(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1DB312ED0();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1DB31E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1DB30ED08(a2, a3, a4, a5);
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
      sub_1DB31C83C(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_1DB30ED08(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_1DB50BC20();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v23 = v15;
      sub_1DB313038();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 32 * v15);
  *v29 = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

_OWORD *sub_1DB31E700(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DB30C200(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_1DB31E76C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DB50B560();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1DB30C200(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_1DB31E82C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1DB30C200(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_1DB31E8A8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1DB30C200(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1DB31E910(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for JetPackAsset(0);
  result = sub_1DB314B58(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

uint64_t sub_1DB31E9A8(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DB2FEA0C(a4, a5[7] + 40 * a1);
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

unint64_t sub_1DB31EA18(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 25) = *(a4 + 25);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DB31EA98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DB31EAE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB31EB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB31EB94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t decodeActionModel<A, B>(using:container:forKey:)@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = type metadata accessor for CodeByKind();
  sub_1DB50B7C0();
  swift_getWitnessTable();
  sub_1DB50B710();
  if (v2)
  {
    sub_1DB50B6D0();
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = sub_1DB50BDE0();
    sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v7, &v15);

    __swift_destroy_boxed_opaque_existential_0(v12);
    sub_1DB30C4B8(&v15, v12, &qword_1ECC42E48, &qword_1DB50FB90);
    v8 = v13;
    if (v13)
    {
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      MetatypeMetadata = swift_getMetatypeMetadata();
      (*(v9 + 8))(MetatypeMetadata, v2, v8, v9);

      sub_1DB30623C(&v15, &qword_1ECC42E48, &qword_1DB50FB90);
      result = __swift_destroy_boxed_opaque_existential_0(v12);
    }

    else
    {
      sub_1DB30623C(&v15, &qword_1ECC42E48, &qword_1DB50FB90);

      result = sub_1DB30623C(v12, &qword_1ECC42E48, &qword_1DB50FB90);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else if (*(&v16 + 1))
  {
    sub_1DB30BE90(&v15, a2);
    return (*(*(v5 - 8) + 8))(&v15, v5);
  }

  else
  {
    v11 = sub_1DB50B120();
    result = (*(*(v11 - 8) + 8))(&v15, v11);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB31EE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB50B560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1DB34A6A4(a1, a2, v10);
  if (*(a3 + 16) && (v11 = sub_1DB30EDEC(v10), (v12 & 1) != 0))
  {
    sub_1DB300B14(*(a3 + 56) + 32 * v11, v41);
    (*(v7 + 8))(v10, v6);
    sub_1DB300B14(v41, &v36);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v41);
      return LOBYTE(v39[0]);
    }

    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v14 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB50F8D0;
    v40 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001DB529860;
    v16._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F58, &unk_1DB50FF00);
    v39[0] = a1;
    v39[1] = a2;
    sub_1DB30C4B8(v39, v35, &qword_1ECC426B0, &qword_1DB50EEB0);
    v36 = 0u;
    v37 = 0u;

    sub_1DB301D4C(v35, &v36);
    v38 = 0;
    v17 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
      v40 = v17;
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v36;
    v22 = v37;
    v20[64] = v38;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v40 = v17;
    sub_1DB30623C(v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v23._countAndFlagsBits = 96;
    v23._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v15 + 32) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v24 = swift_allocObject();
    v34 = xmmword_1DB50EE90;
    *(v24 + 16) = xmmword_1DB50EE90;
    v25 = MEMORY[0x1E69E6158];
    *(&v37 + 1) = MEMORY[0x1E69E6158];
    *&v36 = 0xD000000000000027;
    *(&v36 + 1) = 0x80000001DB5295C0;
    *(v24 + 48) = 0u;
    *(v24 + 32) = 0u;
    sub_1DB301D4C(&v36, v24 + 32);
    *(v24 + 64) = 0;
    *(v15 + 40) = v24;
    v26 = sub_1DB50AF40();
    if (os_log_type_enabled(v14, v26))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v27 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v27[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v27 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v29 = swift_allocObject();
      *(v29 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v36 = v15;
      *(&v36 + 1) = sub_1DB31485C;
      *&v37 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v30 = sub_1DB50A5E0();
      v32 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v33 = swift_allocObject();
      *(v33 + 16) = v34;
      *(v33 + 56) = v25;
      *(v33 + 64) = sub_1DB31494C();
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      sub_1DB50A1E0();
    }

    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  return 2;
}

uint64_t sub_1DB31F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB50B560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1DB34A6B8(a1, a2, v10);
  if (*(a3 + 16) && (v11 = sub_1DB30EDEC(v10), (v12 & 1) != 0))
  {
    sub_1DB300B14(*(a3 + 56) + 32 * v11, v41);
    (*(v7 + 8))(v10, v6);
    sub_1DB300B14(v41, &v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E78, &unk_1DB50FF20);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v41);
      return v39[0];
    }

    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v14 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB50F8D0;
    v40 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001DB529860;
    v16._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E80, &unk_1DB5118E0);
    v39[0] = a1;
    v39[1] = a2;
    sub_1DB30C4B8(v39, v35, &qword_1ECC426B0, &qword_1DB50EEB0);
    v36 = 0u;
    v37 = 0u;

    sub_1DB301D4C(v35, &v36);
    v38 = 0;
    v17 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
      v40 = v17;
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v36;
    v22 = v37;
    v20[64] = v38;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v40 = v17;
    sub_1DB30623C(v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v23._countAndFlagsBits = 96;
    v23._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v15 + 32) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v24 = swift_allocObject();
    v34 = xmmword_1DB50EE90;
    *(v24 + 16) = xmmword_1DB50EE90;
    v25 = MEMORY[0x1E69E6158];
    *(&v37 + 1) = MEMORY[0x1E69E6158];
    *&v36 = 0xD000000000000027;
    *(&v36 + 1) = 0x80000001DB5295C0;
    *(v24 + 48) = 0u;
    *(v24 + 32) = 0u;
    sub_1DB301D4C(&v36, v24 + 32);
    *(v24 + 64) = 0;
    *(v15 + 40) = v24;
    v26 = sub_1DB50AF40();
    if (os_log_type_enabled(v14, v26))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v27 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v27[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v27 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v29 = swift_allocObject();
      *(v29 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v36 = v15;
      *(&v36 + 1) = sub_1DB314CB0;
      *&v37 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v30 = sub_1DB50A5E0();
      v32 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v33 = swift_allocObject();
      *(v33 + 16) = v34;
      *(v33 + 56) = v25;
      *(v33 + 64) = sub_1DB31494C();
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      sub_1DB50A1E0();
    }

    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  return 0;
}

double sub_1DB31F900@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1DB50B560();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1DB34A8D8(a1, a2, v12);
  if (*(a3 + 16) && (v13 = sub_1DB30EDEC(v12), (v14 & 1) != 0))
  {
    sub_1DB300B14(*(a3 + 56) + 32 * v13, v43);
    (*(v9 + 8))(v12, v8);
    sub_1DB300B14(v43, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E90, &unk_1DB50FF30);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v43);
      sub_1DB2FEA0C(&v39, a4);
      return result;
    }

    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1DB30623C(&v39, &qword_1ECC42E48, &qword_1DB50FB90);
    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v16 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DB50F8D0;
    v38 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v18._object = 0x80000001DB529860;
    v18._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E98, &unk_1DB50FB70);
    v42[0] = a1;
    v42[1] = a2;
    sub_1DB30C4B8(v42, v37, &qword_1ECC426B0, &qword_1DB50EEB0);
    v39 = 0u;
    v40 = 0u;

    sub_1DB301D4C(v37, &v39);
    LOBYTE(v41) = 0;
    v19 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
      v38 = v19;
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[40 * v21];
    v23 = v39;
    v24 = v40;
    v22[64] = v41;
    *(v22 + 2) = v23;
    *(v22 + 3) = v24;
    v38 = v19;
    sub_1DB30623C(v42, &qword_1ECC426B0, &qword_1DB50EEB0);
    v25._countAndFlagsBits = 96;
    v25._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v17 + 32) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v26 = swift_allocObject();
    v36 = xmmword_1DB50EE90;
    *(v26 + 16) = xmmword_1DB50EE90;
    v27 = MEMORY[0x1E69E6158];
    *(&v40 + 1) = MEMORY[0x1E69E6158];
    *&v39 = 0xD000000000000027;
    *(&v39 + 1) = 0x80000001DB5295C0;
    *(v26 + 48) = 0u;
    *(v26 + 32) = 0u;
    sub_1DB301D4C(&v39, v26 + 32);
    *(v26 + 64) = 0;
    *(v17 + 40) = v26;
    v28 = sub_1DB50AF40();
    if (os_log_type_enabled(v16, v28))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v29 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v29[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v29 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v31 = swift_allocObject();
      *(v31 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v39 = v17;
      *(&v39 + 1) = sub_1DB314CB0;
      *&v40 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v32 = sub_1DB50A5E0();
      v34 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v35 = swift_allocObject();
      *(v35 + 16) = v36;
      *(v35 + 56) = v27;
      *(v35 + 64) = sub_1DB31494C();
      *(v35 + 32) = v32;
      *(v35 + 40) = v34;
      sub_1DB50A1E0();
    }

    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1DB31FE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB50B560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1DB34A8EC(a1, a2, v10);
  if (*(a3 + 16) && (v11 = sub_1DB30EDEC(v10), (v12 & 1) != 0))
  {
    sub_1DB300B14(*(a3 + 56) + 32 * v11, v41);
    (*(v7 + 8))(v10, v6);
    sub_1DB300B14(v41, &v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E58, &unk_1DB50FF10);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v41);
      return v39[0];
    }

    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v14 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB50F8D0;
    v40 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v16._object = 0x80000001DB529860;
    v16._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E60, &qword_1DB50FB58);
    v39[0] = a1;
    v39[1] = a2;
    sub_1DB30C4B8(v39, v35, &qword_1ECC426B0, &qword_1DB50EEB0);
    v36 = 0u;
    v37 = 0u;

    sub_1DB301D4C(v35, &v36);
    v38 = 0;
    v17 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
      v40 = v17;
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[40 * v19];
    v21 = v36;
    v22 = v37;
    v20[64] = v38;
    *(v20 + 2) = v21;
    *(v20 + 3) = v22;
    v40 = v17;
    sub_1DB30623C(v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    v23._countAndFlagsBits = 96;
    v23._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v15 + 32) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v24 = swift_allocObject();
    v34 = xmmword_1DB50EE90;
    *(v24 + 16) = xmmword_1DB50EE90;
    v25 = MEMORY[0x1E69E6158];
    *(&v37 + 1) = MEMORY[0x1E69E6158];
    *&v36 = 0xD000000000000027;
    *(&v36 + 1) = 0x80000001DB5295C0;
    *(v24 + 48) = 0u;
    *(v24 + 32) = 0u;
    sub_1DB301D4C(&v36, v24 + 32);
    *(v24 + 64) = 0;
    *(v15 + 40) = v24;
    v26 = sub_1DB50AF40();
    if (os_log_type_enabled(v14, v26))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v27 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v27[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v27 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v29 = swift_allocObject();
      *(v29 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v36 = v15;
      *(&v36 + 1) = sub_1DB314CB0;
      *&v37 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v30 = sub_1DB50A5E0();
      v32 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v33 = swift_allocObject();
      *(v33 + 16) = v34;
      *(v33 + 56) = v25;
      *(v33 + 64) = sub_1DB31494C();
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      sub_1DB50A1E0();
    }

    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  return 0;
}

uint64_t encodeActionModel<A, B>(_:using:container:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DB30C4B8(a1, &v12, &qword_1ECC42F50, &unk_1DB513AE0);
  if (!v13)
  {
    return sub_1DB30623C(&v12, &qword_1ECC42F50, &unk_1DB513AE0);
  }

  sub_1DB2FEA0C(&v12, v14);
  sub_1DB30BE90(v14, v11);
  v8 = *(a7 + 8);
  CodeByKind.init(wrappedValue:)(v11, &v12);
  sub_1DB50B8C0();
  v9 = type metadata accessor for CodeByKind();
  swift_getWitnessTable();
  sub_1DB50B8A0();
  (*(*(v9 - 8) + 8))(&v12, v9);
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

unint64_t sub_1DB320524()
{
  result = sub_1DB3134B0(MEMORY[0x1E69E7CC0]);
  qword_1ECC678A8 = result;
  return result;
}

uint64_t sub_1DB32054C()
{
  if (qword_1ECC41FC8 != -1)
  {
    swift_once();
  }
}

ValueMetadata *actionTableFromUserInfo(_:)(uint64_t a1)
{
  result = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, a1);
  if (!result)
  {
    return &type metadata for EmptyActionKindTable;
  }

  return result;
}

uint64_t sub_1DB320608@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1DB3171C0(a1, &v10);
  v8[0] = v10;
  v8[1] = v11;
  v9 = v12;
  if (*(&v11 + 1))
  {
    v3 = __swift_project_boxed_opaque_existential_1(v8, *(&v11 + 1));
    sub_1DB300B14(v3, v7);
    sub_1DB315520();
    if (swift_dynamicCast())
    {

      result = __swift_destroy_boxed_opaque_existential_0(v8);
      v5 = 1;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v8);
      v5 = 0;
    }
  }

  else
  {
    result = sub_1DB30623C(v8, &qword_1ECC42E38, &qword_1DB50FB80);
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1DB3206E0(uint64_t a1, uint64_t a2)
{
  sub_1DB3171C0(a1, v4);

  return sub_1DB38E4D4(v4, a2);
}

double sub_1DB320744@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1DB3171C0(a1, v6);

  return sub_1DB38EA40(v6, a2, a3);
}

void *sub_1DB3207A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1DB3171C0(a1, v6);

  return sub_1DB38FEFC(v6, a2, a3);
}

double sub_1DB32080C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB3171C0(a1, v6);

  return sub_1DB38F7C8(v6, a2, a3);
}

uint64_t sub_1DB3208A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1DB30C4B8(a1, &v32, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!*(&v33 + 1))
  {
    sub_1DB3151CC(a1);

    v13 = &qword_1ECC42E38;
    v14 = &qword_1DB50FB80;
    v15 = &v32;
LABEL_5:
    sub_1DB30623C(v15, v13, v14);
    return MEMORY[0x1E69E7CC0];
  }

  v12 = __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  sub_1DB300B14(v12, &v28);
  sub_1DB315520();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(&v32);
    JSONObject.array.getter(&v28);
    if (*(&v29 + 1))
    {
      v32 = v28;
      v33 = v29;
      v34 = v30;
      v17 = sub_1DB315220(&v32, &v28);
      MEMORY[0x1EEE9AC00](v17);
      v27[2] = a2;
      v18 = *(&v29 + 1);
      v19 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
      v20 = (*(v19 + 56))(a3, v27, a4, v18, v19);

      sub_1DB3151CC(a1);
      sub_1DB314F08(&v32);
      sub_1DB314F08(&v28);
      return v20;
    }

    sub_1DB30623C(&v28, &qword_1ECC42E28, &qword_1DB50FB20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a2, &v32);

    sub_1DB30C4B8(&v32, &v28, &qword_1ECC42E48, &qword_1DB50FB90);
    v22 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
      v23 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
      sub_1DB315178();
      v24 = swift_allocError();
      v25 = MEMORY[0x1E69E7CC0];
      *v26 = v21;
      v26[1] = v25;
      v26[2] = 0;
      v26[3] = 0;
      (*(v23 + 8))(v21, v24, v22, v23);
      sub_1DB3151CC(a1);
      sub_1DB30623C(&v32, &qword_1ECC42E48, &qword_1DB50FB90);

      __swift_destroy_boxed_opaque_existential_0(&v28);
      return MEMORY[0x1E69E7CC0];
    }

    sub_1DB3151CC(a1);
    sub_1DB30623C(&v32, &qword_1ECC42E48, &qword_1DB50FB90);
    v15 = &v28;
    v13 = &qword_1ECC42E48;
    v14 = &qword_1DB50FB90;
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_0(&v32);
  sub_1DB3151CC(a1);

  return MEMORY[0x1E69E7CC0];
}

uint64_t MetricsData.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v19);
  sub_1DB30C4B8(v19, v17, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v18)
  {

    sub_1DB3151CC(v19);
    sub_1DB30623C(v17, &qword_1ECC42E38, &qword_1DB50FB80);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
LABEL_7:
    sub_1DB30623C(&v20, &qword_1ECC42EA0, &qword_1DB50FB88);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_1DB408B14(&v20);
  sub_1DB3151CC(v19);
  __swift_destroy_boxed_opaque_existential_0(v17);
  if (!*(&v21 + 1))
  {

    goto LABEL_7;
  }

  v6 = *__swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  v17[0] = 0;
  sub_1DB50A4A0();
  v7 = v17[0];
  if (v17[0])
  {
    sub_1DB317740(&v20);
    JSONObject.subscript.getter(0x6369706F74, 0xE500000000000000, &v20);
    v23 = JSONObject.string.getter();
    v16 = v8;
    sub_1DB3151CC(&v20);
    JSONObject.subscript.getter(0x6C46646C756F6873, 0xEB00000000687375, &v20);
    v15 = JSONObject.BOOL.getter();
    sub_1DB3151CC(&v20);
    JSONObject.subscript.getter(0x6E6964756C636E69, 0xEF73646C65694667, &v20);

    v9 = sub_1DB3208A0(&v20, v5, sub_1DB325AB0, &type metadata for MetricsFieldInclusionRequest, &qword_1ECC42FD0, &qword_1DB50FF70);
    v10 = sub_1DB324A54(v9, sub_1DB325A5C, &type metadata for MetricsFieldInclusionRequest, sub_1DB4B75FC);

    JSONObject.subscript.getter(0x6E6964756C637865, 0xEF73646C65694667, &v20);
    v11 = sub_1DB3208A0(&v20, v5, sub_1DB325A30, &type metadata for MetricsFieldExclusionRequest, &qword_1ECC42FA8, &qword_1DB50FF60);
    v12 = sub_1DB324A54(v11, sub_1DB3259DC, &type metadata for MetricsFieldExclusionRequest, sub_1DB4B75CC);

    result = sub_1DB3151CC(a1);
    *a3 = v23;
    *(a3 + 8) = v16;
    *(a3 + 16) = v15 & 1;
    *(a3 + 24) = v7;
    *(a3 + 32) = v10;
    *(a3 + 40) = v12;
    return result;
  }

  sub_1DB317740(&v20);
LABEL_8:
  sub_1DB315178();
  swift_allocError();
  *v14 = xmmword_1DB50FF40;
  *(v14 + 16) = 0x20000001F56F19C0uLL;
  *(v14 + 24) = 0;
  swift_willThrow();
  return sub_1DB3151CC(a1);
}

uint64_t MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t MetricsData.topic.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MetricsData.fields.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t MetricsData.includingFields.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t MetricsData.excludingFields.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t MetricsData.Configuration.init(defaultTopic:defaultIncludingFields:defaultExcludingFields:shouldFlush:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static MetricsData.makeMetricsBackClickData(fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2[1];
  v32 = *a2;
  v34 = a2[2];
  v35 = a2[3];
  v33 = a2[4];
  v30 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x79546E6F69746361;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 72) = v6;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = 1801675106;
  *(inited + 56) = 0xE400000000000000;

  v7 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = a1;
  sub_1DB314534(v7, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v36);

  v9 = v36;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1DB50F8D0;
  *(v10 + 32) = 0x6449746567726174;
  *(v10 + 40) = 0xE800000000000000;
  *(v10 + 48) = 1801675106;
  *(v10 + 56) = 0xE400000000000000;
  *(v10 + 72) = v6;
  *(v10 + 80) = 0x7954746567726174;
  *(v10 + 120) = v6;
  *(v10 + 88) = 0xEA00000000006570;
  *(v10 + 96) = 0x6E6F74747562;
  *(v10 + 104) = 0xE600000000000000;
  v11 = sub_1DB3135C0(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46BD0, &qword_1DB519760);
  swift_arrayDestroy();

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v9;
  sub_1DB314534(v11, sub_1DB313340, 0, v12, &v36);

  v13 = v36;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1DB50EE90;
  *(v14 + 32) = 0x707954746E657665;
  v15 = v14 + 32;
  *(v14 + 72) = v6;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = 0x6B63696C63;
  *(v14 + 56) = 0xE500000000000000;
  v16 = sub_1DB3135C0(v14);
  swift_setDeallocating();
  sub_1DB30623C(v15, &unk_1ECC46BD0, &qword_1DB519760);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v13;
  sub_1DB314534(v16, sub_1DB313340, 0, v17, &v36);

  v18 = v36;
  v19 = sub_1DB324C04(v9, v32);
  v21 = v20;
  if (v33)
  {
    v22 = v33(v9);
  }

  else
  {
    v22 = 0;
  }

  if (*(v34 + 16) && (v23 = sub_1DB314CBC(0x6B63696C63, 0xE500000000000000), (v24 & 1) != 0))
  {
    v25 = *(*(v34 + 56) + 8 * v23);

    if (!*(v35 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v25 = MEMORY[0x1E69E7CD0];
    if (!*(v35 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  v26 = sub_1DB314CBC(0x6B63696C63, 0xE500000000000000);
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

  v28 = *(*(v35 + 56) + 8 * v26);

LABEL_12:
  *a3 = v19;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v18;
  *(a3 + 32) = v25;
  *(a3 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsPageData(fields:timingMetrics:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[4];
  v9 = *(a2 + 40);
  v10 = a2[6];
  v11 = *(a2 + 56);
  v12 = a2[8];
  v13 = *(a2 + 72);
  v43 = a3[1];
  v44 = *a3;
  v46 = a3[2];
  v47 = a3[3];
  v45 = a3[4];
  v42 = a3[5];

  v14 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v51 = v14;
  if (v6)
  {
    v15 = v14;
    v50 = MEMORY[0x1E69E6158];
    *&v49 = v7;
    *(&v49 + 1) = v6;
    sub_1DB30C200(&v49, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v48, 0xD000000000000014, 0x80000001DB528AB0, isUniquelyReferenced_nonNull_native);
    v51 = v15;
  }

  else
  {
    sub_1DB30F708(0xD000000000000014, 0x80000001DB528AB0, &v49);
    sub_1DB30623C(&v49, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  v17 = MEMORY[0x1E69E63B0];
  if (v9)
  {
    sub_1DB30F708(0xD000000000000010, 0x80000001DB5298D0, &v49);
    sub_1DB30623C(&v49, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    v50 = MEMORY[0x1E69E63B0];
    *&v49 = v8;
    sub_1DB30C200(&v49, v48);
    v18 = v51;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v48, 0xD000000000000010, 0x80000001DB5298D0, v19);
    v51 = v18;
  }

  if (v11)
  {
    sub_1DB30F708(0xD000000000000011, 0x80000001DB5298F0, &v49);
    sub_1DB30623C(&v49, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    v50 = v17;
    *&v49 = v10;
    sub_1DB30C200(&v49, v48);
    v20 = v51;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v48, 0xD000000000000011, 0x80000001DB5298F0, v21);
    v51 = v20;
  }

  if (v13)
  {
    sub_1DB30F708(0x65736E6F70736572, 0xEF656D6954646E45, &v49);
    sub_1DB30623C(&v49, &qword_1ECC426B0, &qword_1DB50EEB0);
    v22 = v51;
  }

  else
  {
    v50 = v17;
    *&v49 = v12;
    sub_1DB30C200(&v49, v48);
    v22 = v51;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v48, 0x65736E6F70736572, 0xEF656D6954646E45, v23);
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v49 = a1;
  sub_1DB314534(v22, sub_1DB313340, 0, v24, &v49);

  v25 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = 0x707954746E657665;
  v27 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 1701273968;
  *(inited + 56) = 0xE400000000000000;
  v28 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(v27, &unk_1ECC46BD0, &qword_1DB519760);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v49 = v25;
  sub_1DB314534(v28, sub_1DB313340, 0, v29, &v49);

  v30 = v49;
  v31 = sub_1DB324C04(a1, v44);
  v33 = v32;
  if (v45)
  {
    v34 = v45(a1);
  }

  else
  {
    v34 = 0;
  }

  if (*(v46 + 16) && (v35 = sub_1DB314CBC(1701273968, 0xE400000000000000), (v36 & 1) != 0))
  {
    v37 = *(*(v46 + 56) + 8 * v35);

    if (!*(v47 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
    if (!*(v47 + 16))
    {
LABEL_23:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_24;
    }
  }

  v38 = sub_1DB314CBC(1701273968, 0xE400000000000000);
  if ((v39 & 1) == 0)
  {
    goto LABEL_23;
  }

  v40 = *(*(v47 + 56) + 8 * v38);

LABEL_24:
  *a4 = v31;
  *(a4 + 8) = v33;
  *(a4 + 16) = v34 & 1;
  *(a4 + 24) = v30;
  *(a4 + 32) = v37;
  *(a4 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsSearchData(term:targetType:actionType:actionURL:fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v45 = a11[1];
  v46 = *a11;
  v48 = a11[2];
  v49 = a11[3];
  v47 = a11[4];
  v43 = a11[5];
  v18 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v19 = MEMORY[0x1E69E6158];
  v52 = MEMORY[0x1E69E6158];
  *&v51 = a1;
  *(&v51 + 1) = a2;
  sub_1DB30C200(&v51, v50);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D16C(v50, 1836213620, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v52 = v19;
  *&v51 = a3;
  *(&v51 + 1) = a4;
  sub_1DB30C200(&v51, v50);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D16C(v50, 0x7954746567726174, 0xEA00000000006570, v21);
  v52 = v19;
  *&v51 = a5;
  *(&v51 + 1) = a6;
  sub_1DB30C200(&v51, v50);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D16C(v50, 0x79546E6F69746361, 0xEA00000000006570, v22);
  if (a8)
  {
    v52 = v19;
    *&v51 = a7;
    *(&v51 + 1) = a8;
    sub_1DB30C200(&v51, v50);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v50, 0x72556E6F69746361, 0xE90000000000006CLL, v23);
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v51 = a10;
  sub_1DB314534(v18, sub_1DB313340, 0, v24, &v51);

  v25 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x707954746E657665;
  v27 = inited + 32;
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 72) = v19;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x686372616573;
  *(inited + 56) = 0xE600000000000000;
  v28 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(v27, &unk_1ECC46BD0, &qword_1DB519760);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v51 = v25;
  sub_1DB314534(v28, sub_1DB313340, 0, v29, &v51);

  v30 = v51;
  v31 = sub_1DB324C04(a10, v46);
  v33 = v32;
  if (v47)
  {
    v34 = v47(a10);
  }

  else
  {
    v34 = 0;
  }

  if (*(v48 + 16) && (v35 = sub_1DB314CBC(0x686372616573, 0xE600000000000000), (v36 & 1) != 0))
  {
    v37 = *(*(v48 + 56) + 8 * v35);

    if (!*(v49 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
    if (!*(v49 + 16))
    {
LABEL_13:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_14;
    }
  }

  v38 = sub_1DB314CBC(0x686372616573, 0xE600000000000000);
  if ((v39 & 1) == 0)
  {
    goto LABEL_13;
  }

  v40 = *(*(v49 + 56) + 8 * v38);

LABEL_14:
  *a9 = v31;
  *(a9 + 8) = v33;
  *(a9 + 16) = v34 & 1;
  *(a9 + 24) = v30;
  *(a9 + 32) = v37;
  *(a9 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsImpressionsData(fields:configuration:impressionsEventVersion:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2[1];
  v31 = *a2;
  v32 = a2[2];
  v33 = a2[3];
  v7 = a2[4];
  v29 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6973736572706D69;
  *(inited + 16) = xmmword_1DB50F8D0;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEF65756575516E6FLL;
  strcpy((inited + 48), "data-metrics");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 72) = v9;
  strcpy((inited + 80), "eventVersion");
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = a3;
  v10 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46BD0, &qword_1DB519760);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = a1;
  sub_1DB314534(v10, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v34);

  v12 = v34;
  v13 = swift_initStackObject();
  *(v13 + 32) = 0x707954746E657665;
  v14 = v13 + 32;
  *(v13 + 16) = xmmword_1DB50EE90;
  *(v13 + 72) = v9;
  *(v13 + 40) = 0xE900000000000065;
  *(v13 + 48) = 0x6973736572706D69;
  *(v13 + 56) = 0xEB00000000736E6FLL;
  v15 = sub_1DB3135C0(v13);
  swift_setDeallocating();
  sub_1DB30623C(v14, &unk_1ECC46BD0, &qword_1DB519760);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v12;
  sub_1DB314534(v15, sub_1DB313340, 0, v16, &v34);

  v17 = v34;
  v18 = sub_1DB324C04(a1, v31);
  v20 = v19;
  if (v7)
  {
    v21 = v7(a1);
  }

  else
  {
    v21 = 0;
  }

  if (*(v32 + 16) && (v22 = sub_1DB314CBC(0x6973736572706D69, 0xEB00000000736E6FLL), (v23 & 1) != 0))
  {
    v24 = *(*(v32 + 56) + 8 * v22);

    if (!*(v33 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
    if (!*(v33 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  v25 = sub_1DB314CBC(0x6973736572706D69, 0xEB00000000736E6FLL);
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

  v27 = *(*(v33 + 56) + 8 * v25);

LABEL_12:
  *a4 = v18;
  *(a4 + 8) = v20;
  *(a4 + 16) = v21 & 1;
  *(a4 + 24) = v17;
  *(a4 + 32) = v24;
  *(a4 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsMediaData(fields:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v6 = a2[2];
  v28 = *a2;
  v29 = a2[3];
  v7 = a2[4];
  v27 = a2[5];
  v8 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = a1;
  sub_1DB314534(v8, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v30);

  v10 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = 0x707954746E657665;
  v12 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x616964656DLL;
  *(inited + 56) = 0xE500000000000000;
  v13 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(v12, &unk_1ECC46BD0, &qword_1DB519760);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v10;
  sub_1DB314534(v13, sub_1DB313340, 0, v14, &v30);

  v15 = v30;
  v16 = sub_1DB324C04(a1, v28);
  v18 = v17;
  if (v7)
  {
    v19 = v7(a1);
  }

  else
  {
    v19 = 0;
  }

  if (*(v6 + 16) && (v20 = sub_1DB314CBC(0x616964656DLL, 0xE500000000000000), (v21 & 1) != 0))
  {
    v22 = *(*(v6 + 56) + 8 * v20);

    if (!*(v29 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E7CD0];
    if (!*(v29 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  v23 = sub_1DB314CBC(0x616964656DLL, 0xE500000000000000);
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

  v25 = *(*(v29 + 56) + 8 * v23);

LABEL_12:
  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v22;
  *(a3 + 40) = result;
  return result;
}

uint64_t sub_1DB322494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a6[1];
  v36 = *a6;
  v38 = a6[2];
  v39 = a6[3];
  v37 = a6[4];
  v34 = a6[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50F8D0;
  *(inited + 32) = 0x6449746567726174;
  v14 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v14;
  *(inited + 80) = 0x7954746567726174;
  *(inited + 120) = v14;
  *(inited + 88) = 0xEA00000000006570;
  *(inited + 96) = a3;
  *(inited + 104) = a4;

  v15 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46BD0, &qword_1DB519760);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = a5;
  sub_1DB314534(v15, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v40);

  v17 = v40;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1DB50EE90;
  *(v18 + 32) = 0x707954746E657665;
  v19 = v18 + 32;
  *(v18 + 72) = v14;
  *(v18 + 40) = 0xE900000000000065;
  *(v18 + 48) = 0x6B63696C63;
  *(v18 + 56) = 0xE500000000000000;
  v20 = sub_1DB3135C0(v18);
  swift_setDeallocating();
  sub_1DB30623C(v19, &unk_1ECC46BD0, &qword_1DB519760);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v17;
  sub_1DB314534(v20, sub_1DB313340, 0, v21, &v40);

  v22 = v40;
  v23 = sub_1DB324C04(a5, v36);
  v25 = v24;
  if (v37)
  {
    v26 = v37(a5);
  }

  else
  {
    v26 = 0;
  }

  if (*(v38 + 16) && (v27 = sub_1DB314CBC(0x6B63696C63, 0xE500000000000000), (v28 & 1) != 0))
  {
    v29 = *(*(v38 + 56) + 8 * v27);

    if (!*(v39 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E7CD0];
    if (!*(v39 + 16))
    {
LABEL_11:
      result = MEMORY[0x1E69E7CD0];
      goto LABEL_12;
    }
  }

  v30 = sub_1DB314CBC(0x6B63696C63, 0xE500000000000000);
  if ((v31 & 1) == 0)
  {
    goto LABEL_11;
  }

  v32 = *(*(v39 + 56) + 8 * v30);

LABEL_12:
  *a7 = v23;
  *(a7 + 8) = v25;
  *(a7 + 16) = v26 & 1;
  *(a7 + 24) = v22;
  *(a7 + 32) = v29;
  *(a7 + 40) = result;
  return result;
}

uint64_t static MetricsData.makeMetricsPageRenderFields(timingMetrics:fields:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = a1[6];
  v10 = *(a1 + 56);
  v11 = a1[8];
  v12 = *(a1 + 73);
  v13 = a1[10];
  v36 = *(a1 + 72);
  v37 = *(a1 + 88);
  v14 = a1[12];
  v15 = MEMORY[0x1E69E6158];
  v38 = *(a1 + 104);
  *(&v41 + 1) = MEMORY[0x1E69E6158];
  *&v40 = 0x646E655265676170;
  *(&v40 + 1) = 0xEA00000000007265;
  sub_1DB30C200(&v40, v39);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D16C(v39, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v42 = a2;
  if (*(a2 + 16) && (v17 = sub_1DB306160(0x6C725565676170, 0xE700000000000000), (v18 & 1) != 0))
  {
    sub_1DB300B14(*(a2 + 56) + 32 * v17, &v40);
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    if (v5)
    {
      *(&v41 + 1) = v15;
      *&v40 = v6;
      *(&v40 + 1) = v5;
      sub_1DB30C200(&v40, v39);

      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DB31D16C(v39, 0x6C725565676170, 0xE700000000000000, v19);
      v42 = a2;
      goto LABEL_8;
    }

    sub_1DB30F708(0x6C725565676170, 0xE700000000000000, &v40);
  }

  sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
LABEL_8:
  if (v3)
  {
    *(&v41 + 1) = v15;
    *&v40 = v4;
    *(&v40 + 1) = v3;
    sub_1DB30C200(&v40, v39);

    v20 = v42;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000014, 0x80000001DB528AB0, v21);
    v42 = v20;
  }

  else
  {
    sub_1DB30F708(0xD000000000000014, 0x80000001DB528AB0, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  v22 = MEMORY[0x1E69E63B0];
  if (v8)
  {
    sub_1DB30F708(0xD000000000000018, 0x80000001DB529910, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    *(&v41 + 1) = MEMORY[0x1E69E63B0];
    *&v40 = v7;
    sub_1DB30C200(&v40, v39);
    v23 = v42;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000018, 0x80000001DB529910, v24);
    v42 = v23;
  }

  if (v10)
  {
    sub_1DB30F708(0xD000000000000019, 0x80000001DB529930, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v9;
    sub_1DB30C200(&v40, v39);
    v25 = v42;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000019, 0x80000001DB529930, v26);
    v42 = v25;
  }

  if (v36)
  {
    sub_1DB30F708(0xD000000000000017, 0x80000001DB529950, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v11;
    sub_1DB30C200(&v40, v39);
    v27 = v42;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000017, 0x80000001DB529950, v28);
    v42 = v27;
  }

  if (v12 == 2)
  {
    sub_1DB30F708(0xD000000000000019, 0x80000001DB529970, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    *(&v41 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v40) = v12 & 1;
    sub_1DB30C200(&v40, v39);
    v29 = v42;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000019, 0x80000001DB529970, v30);
    v42 = v29;
  }

  if (v37)
  {
    sub_1DB30F708(0xD00000000000001ALL, 0x80000001DB529990, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v13;
    sub_1DB30C200(&v40, v39);
    v31 = v42;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD00000000000001ALL, 0x80000001DB529990, v32);
    v42 = v31;
  }

  if (v38)
  {
    sub_1DB30F708(0xD000000000000018, 0x80000001DB5299B0, &v40);
    sub_1DB30623C(&v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    return v42;
  }

  else
  {
    *(&v41 + 1) = v22;
    *&v40 = v14;
    sub_1DB30C200(&v40, v39);
    v34 = v42;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DB31D16C(v39, 0xD000000000000018, 0x80000001DB5299B0, v35);
    return v34;
  }
}

uint64_t MetricsData._isEqual(to:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = *(v1 + 24);
  v9 = *(v1 + 32);
  v11 = *(v1 + 40);
  if (!v7)
  {
    v12 = 0;
    if (v2)
    {
      return v12 & 1;
    }

LABEL_10:
    if ((v3 ^ v8))
    {
      return v12 & 1;
    }

    goto LABEL_11;
  }

  if (!v2)
  {
LABEL_14:
    v12 = 0;
    return v12 & 1;
  }

  if (*v1 != *a1 || v7 != v2)
  {
    v13 = sub_1DB50BA30();
    v12 = 0;
    if ((v13 & 1) == 0)
    {
      return v12 & 1;
    }

    goto LABEL_10;
  }

  if (v3 != v8)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((sub_1DB404C28(v10, v5, 3uLL, 0) & 1) == 0 || (sub_1DB322E94(v9, v4) & 1) == 0)
  {
    goto LABEL_14;
  }

  v12 = sub_1DB322E94(v11, v6);
  return v12 & 1;
}

uint64_t sub_1DB322E94(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1DB50BCF0();

    sub_1DB50A740();
    v17 = sub_1DB50BD30();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1DB50BA30() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB32305C()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB32314C()
{
  *v0;
  *v0;
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB323228()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB323314@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DB325750();
  *a2 = result;
  return result;
}

void sub_1DB323344(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6369706F74;
  v5 = 0xE600000000000000;
  v6 = 0x73646C656966;
  v7 = 0x6E6964756C636E69;
  if (v2 != 3)
  {
    v7 = 0x6E6964756C637865;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xEF73646C65694667;
  }

  if (*v1)
  {
    v4 = 0x6C46646C756F6873;
    v3 = 0xEB00000000687375;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1DB3233F0()
{
  v1 = *v0;
  v2 = 0x6369706F74;
  v3 = 0x73646C656966;
  v4 = 0x6E6964756C636E69;
  if (v1 != 3)
  {
    v4 = 0x6E6964756C637865;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C46646C756F6873;
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

uint64_t sub_1DB323498@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB325750();
  *a1 = result;
  return result;
}

uint64_t sub_1DB3234CC(uint64_t a1)
{
  v2 = sub_1DB324CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB323508(uint64_t a1)
{
  v2 = sub_1DB324CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetricsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F68, &qword_1DB50FF50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB324CAC();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v31[0]) = 0;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
    LOBYTE(v28) = 0;
    sub_1DB32500C(&qword_1ECC42FE0);
    sub_1DB50B780();
    v12 = v31[0];
    v32 = v31[1];
  }

  else
  {
    v32 = 0;
    v12 = 0;
  }

  LOBYTE(v31[0]) = 1;
  if (sub_1DB50B7B0())
  {
    LOBYTE(v31[0]) = 1;
    v13 = sub_1DB50B750();
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v28) = 2;
  sub_1DB324D00();
  sub_1DB50B780();
  sub_1DB30C4B8(v31, v26, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v27)
  {
    sub_1DB30623C(v26, &qword_1ECC42E38, &qword_1DB50FB80);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_1DB408B14(&v28);
  __swift_destroy_boxed_opaque_existential_0(v26);
  if (!*(&v29 + 1))
  {
LABEL_15:
    sub_1DB30623C(&v28, &qword_1ECC42EA0, &qword_1DB50FB88);
    goto LABEL_16;
  }

  v14 = *__swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
  v26[0] = 0;
  sub_1DB50A4A0();
  v15 = v26[0];
  sub_1DB317740(&v28);
  if (!v15)
  {
LABEL_16:
    v25 = sub_1DB50B3E0();
    swift_allocError();
    v17 = v16;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v19 = sub_1DB50BDB0();
    sub_1DB324948(2, v19, &type metadata for MetricsData.CodingKeys, sub_1DB324CAC);

    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](96, 0xE100000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0xD000000000000018, 0x80000001DB5299D0);
    sub_1DB50B3C0();
    (*(*(v25 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8]);
    swift_willThrow();
    sub_1DB3151CC(v31);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v15;
  LOBYTE(v28) = 3;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42FB8, &qword_1DB50FF68);
    LOBYTE(v26[0]) = 3;
    sub_1DB324EB0();
    sub_1DB50B780();
    v24 = sub_1DB324A54(v28, sub_1DB325A5C, &type metadata for MetricsFieldInclusionRequest, sub_1DB4B75FC);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
  }

  LOBYTE(v28) = 4;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F90, &qword_1DB50FF58);
    LOBYTE(v26[0]) = 4;
    sub_1DB324D54();
    sub_1DB50B780();
    v23 = v28;
    v20 = sub_1DB324A54(v28, sub_1DB3259DC, &type metadata for MetricsFieldExclusionRequest, sub_1DB4B75CC);

    sub_1DB3151CC(v31);
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    sub_1DB3151CC(v31);
    (*(v6 + 8))(v9, v5);
    v20 = MEMORY[0x1E69E7CD0];
  }

  v21 = v32;
  *a2 = v12;
  *(a2 + 8) = v21;
  *(a2 + 16) = v13 & 1;
  v22 = v24;
  *(a2 + 24) = v25;
  *(a2 + 32) = v22;
  *(a2 + 40) = v20;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MetricsData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42FE8, &qword_1DB50FF78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = *v1;
  v9 = v1[1];
  LODWORD(v29) = *(v1 + 16);
  v10 = v1[3];
  v27 = v1[4];
  v28 = v10;
  v26 = v1[5];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB324CAC();

  sub_1DB50BE40();
  v32[0] = v8;
  v32[1] = v9;
  LOBYTE(v30) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
  sub_1DB32500C(&qword_1ECC42FF0);
  v12 = v34;
  sub_1DB50B8A0();
  if (v12)
  {

    return (*(v4 + 8))(v7, v3);
  }

  v14 = v27;
  v15 = v28;
  v16 = v4;

  LOBYTE(v32[0]) = 1;
  sub_1DB50B870();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  *&v30 = v15;
  v32[3] = &type metadata for FoundationValue;
  v33 = &off_1F56FB6B0;
  v32[0] = swift_allocObject();
  sub_1DB30C200(&v30, (v32[0] + 16));
  LOBYTE(v30) = 2;
  sub_1DB325078();

  sub_1DB50B8A0();
  sub_1DB3151CC(v32);
  v17 = v4;
  v18 = *(v14 + 16);
  if (v18)
  {
    v19 = v14;
    v20 = sub_1DB3241C0(*(v14 + 16), 0, &qword_1ECC430A8, &qword_1DB510248);
    v34 = sub_1DB3243C0(v32, v20 + 4, v18, v19);
    v29 = v33;

    result = sub_1DB2FEA60();
    if (v34 != v18)
    {
      __break(1u);
      goto LABEL_13;
    }

    v17 = v4;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v32[0] = v20;
  LOBYTE(v30) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42FB8, &qword_1DB50FF68);
  sub_1DB3250CC();
  sub_1DB50B8A0();

  v21 = v7;
  v22 = v26;
  v23 = *(v26 + 16);
  if (!v23)
  {
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v24 = sub_1DB3241C0(*(v26 + 16), 0, &qword_1ECC430A0, &qword_1DB510240);
  v34 = sub_1DB3243C0(v32, v24 + 4, v23, v22);
  v29 = v33;

  result = sub_1DB2FEA60();
  if (v34 == v23)
  {
    v17 = v16;
LABEL_11:
    v32[0] = v24;
    LOBYTE(v30) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F90, &qword_1DB50FF58);
    sub_1DB325228();
    sub_1DB50B8A0();

    return (*(v17 + 8))(v21, v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1DB3241C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

size_t sub_1DB32423C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A08, &qword_1DB50F4C0);
  v4 = *(type metadata accessor for JetPackAsset(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DB324338(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42940, &qword_1DB5112F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1DB3243C0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DB324518(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for JetPackAsset(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = *(v33 + 72);
      sub_1DB314AF4(v26 + v27 * (v25 | (v20 << 6)), v12);
      sub_1DB314B58(v12, v15);
      sub_1DB314B58(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1DB324740(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1DB324840(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  sub_1DB3184A4(a1, a2, a3 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = sub_1DB302510(0, a4[2] + 1, 1, a4);
  }

  v9 = a4[2];
  v8 = a4[3];
  if (v9 >= v8 >> 1)
  {
    a4 = sub_1DB302510((v8 > 1), v9 + 1, 1, a4);
  }

  v13 = &type metadata for OpenCodingKey;
  v14 = sub_1DB3053A8();
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = a3 & 1;
  a4[2] = v9 + 1;
  sub_1DB2FEA0C(&v11, &a4[5 * v9 + 4]);
  return a4;
}

void *sub_1DB324948(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a2 = sub_1DB302510(0, a2[2] + 1, 1, a2);
  }

  v9 = a2[2];
  v8 = a2[3];
  if (v9 >= v8 >> 1)
  {
    a2 = sub_1DB302510((v8 > 1), v9 + 1, 1, a2);
  }

  v12 = a3;
  v13 = a4();
  LOBYTE(v11) = a1;
  a2[2] = v9 + 1;
  sub_1DB2FEA0C(&v11, &a2[5 * v9 + 4]);
  return a2;
}

uint64_t sub_1DB324A54(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1E12862D0](v7, a3, v8);
  v14 = result;
  if (v7)
  {
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      a4(v13, v12, v11);

      v10 += 2;
      --v7;
    }

    while (v7);
    return v14;
  }

  return result;
}

uint64_t sub_1DB324AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DB3258A0();
  result = MEMORY[0x1E12862D0](v2, &type metadata for StartUpPerformanceEvent.RawCheckpoint, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1DB4B794C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DB324B6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12862D0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DB4B77FC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DB324C04(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = sub_1DB306160(0x6369706F74, 0xE500000000000000);
    if (v5)
    {
      sub_1DB300B14(*(a1 + 56) + 32 * v4, v8);
      if (swift_dynamicCast())
      {
        return v7;
      }
    }
  }

  return a2;
}

unint64_t sub_1DB324CAC()
{
  result = qword_1ECC42F70;
  if (!qword_1ECC42F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42F70);
  }

  return result;
}

unint64_t sub_1DB324D00()
{
  result = qword_1ECC42F78;
  if (!qword_1ECC42F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42F78);
  }

  return result;
}

unint64_t sub_1DB324D54()
{
  result = qword_1ECC42F98;
  if (!qword_1ECC42F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42F90, &qword_1DB50FF58);
    sub_1DB324DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42F98);
  }

  return result;
}

unint64_t sub_1DB324DD8()
{
  result = qword_1ECC42FA0;
  if (!qword_1ECC42FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FA8, &qword_1DB50FF60);
    sub_1DB324E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FA0);
  }

  return result;
}

unint64_t sub_1DB324E5C()
{
  result = qword_1ECC42FB0;
  if (!qword_1ECC42FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FB0);
  }

  return result;
}

unint64_t sub_1DB324EB0()
{
  result = qword_1ECC42FC0;
  if (!qword_1ECC42FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FB8, &qword_1DB50FF68);
    sub_1DB324F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FC0);
  }

  return result;
}

unint64_t sub_1DB324F34()
{
  result = qword_1ECC42FC8;
  if (!qword_1ECC42FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FD0, &qword_1DB50FF70);
    sub_1DB324FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FC8);
  }

  return result;
}

unint64_t sub_1DB324FB8()
{
  result = qword_1ECC42FD8;
  if (!qword_1ECC42FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FD8);
  }

  return result;
}

uint64_t sub_1DB32500C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC46C00, &qword_1DB516350);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB325078()
{
  result = qword_1ECC42FF8;
  if (!qword_1ECC42FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42FF8);
  }

  return result;
}

unint64_t sub_1DB3250CC()
{
  result = qword_1ECC43000;
  if (!qword_1ECC43000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FB8, &qword_1DB50FF68);
    sub_1DB325150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43000);
  }

  return result;
}

unint64_t sub_1DB325150()
{
  result = qword_1ECC43008;
  if (!qword_1ECC43008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FD0, &qword_1DB50FF70);
    sub_1DB3251D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43008);
  }

  return result;
}

unint64_t sub_1DB3251D4()
{
  result = qword_1ECC43010;
  if (!qword_1ECC43010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43010);
  }

  return result;
}

unint64_t sub_1DB325228()
{
  result = qword_1ECC43018;
  if (!qword_1ECC43018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42F90, &qword_1DB50FF58);
    sub_1DB3252AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43018);
  }

  return result;
}

unint64_t sub_1DB3252AC()
{
  result = qword_1ECC43020;
  if (!qword_1ECC43020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42FA8, &qword_1DB50FF60);
    sub_1DB325330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43020);
  }

  return result;
}

unint64_t sub_1DB325330()
{
  result = qword_1ECC43028;
  if (!qword_1ECC43028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43028);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DB325398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DB3253E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SDySSypGSbIeggd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB325454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB32549C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DB32564C()
{
  result = qword_1ECC43030;
  if (!qword_1ECC43030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43030);
  }

  return result;
}

unint64_t sub_1DB3256A4()
{
  result = qword_1ECC43038;
  if (!qword_1ECC43038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43038);
  }

  return result;
}

unint64_t sub_1DB3256FC()
{
  result = qword_1ECC43040;
  if (!qword_1ECC43040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43040);
  }

  return result;
}

uint64_t sub_1DB325750()
{
  v0 = sub_1DB50B680();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

double sub_1DB32579C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1DB3171C0(a1, v6);

  return sub_1DB38DB3C(v6, v4, a2);
}

unint64_t sub_1DB3257F8()
{
  result = qword_1ECC43058;
  if (!qword_1ECC43058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43058);
  }

  return result;
}

unint64_t sub_1DB3258A0()
{
  result = qword_1ECC43078;
  if (!qword_1ECC43078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43078);
  }

  return result;
}

unint64_t sub_1DB3258F4()
{
  result = qword_1ECC43080;
  if (!qword_1ECC43080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43080);
  }

  return result;
}

double sub_1DB325964@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1DB3171C0(a1, v6);

  return sub_1DB38D620(v6, v4, a2);
}

unint64_t sub_1DB3259DC()
{
  result = qword_1ECC430B0;
  if (!qword_1ECC430B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC430B0);
  }

  return result;
}

unint64_t sub_1DB325A5C()
{
  result = qword_1ECC430B8;
  if (!qword_1ECC430B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC430B8);
  }

  return result;
}

uint64_t sub_1DB325ADC(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  v4 = *(v2 + 16);
  sub_1DB3171C0(a1, v6);

  return a2(v6, v4);
}

uint64_t MetricsFieldsBuilder.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 24))(a3, a4);
  if (*(v6 + 16) && (v7 = sub_1DB306160(a1, a2), (v8 & 1) != 0))
  {
    sub_1DB300B14(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

{
  v6 = (*(a4 + 24))(a3, a4);
  if (*(v6 + 16) && (v7 = sub_1DB306160(a1, a2), (v8 & 1) != 0))
  {
    sub_1DB300B14(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 2;
  }
}

{
  v6 = (*(a4 + 24))(a3, a4);
  if (*(v6 + 16) && (v7 = sub_1DB306160(a1, a2), (v8 & 1) != 0))
  {
    sub_1DB300B14(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t MetricsFieldsBuilder.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a5);
  if (v8)
  {
    return sub_1DB50A920();
  }

  v10 = *(*(a4 - 8) + 56);

  return v10(a6, 1, 1, a4);
}

uint64_t MetricsFieldsBuilder.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 24))(a4, a6);
  if (*(v8 + 16) && (v9 = sub_1DB306160(a1, a2), (v10 & 1) != 0))
  {
    sub_1DB300B14(*(v8 + 56) + 32 * v9, v13);

    sub_1DB50AA60();
    if (swift_dynamicCast())
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t MetricsFieldsBuilder.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a4);
  if (v6)
  {
    sub_1DB509C60();
  }

  else
  {
    v8 = sub_1DB509CA0();
    v9 = *(*(v8 - 8) + 56);

    return v9(a5, 1, 1, v8);
  }
}

{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = sub_1DB509CA0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a4, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DB30623C(v13, &unk_1ECC42B20, &unk_1DB50F6A0);
    v19 = sub_1DB509A20();
    return (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_1DB509A00();
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t MetricsFieldsBuilder.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a4);
  if (v7)
  {
    sub_1DB301E30();
    v8 = sub_1DB50B180();
  }

  else
  {
    v8 = 0;
  }

  *a5 = v8;
  a5[1] = 0;
  return result;
}

uint64_t StandardMetricsFieldsBuilder.addValue(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB300B14(a1, v6);

  return sub_1DB30D454(v6, a2, a3);
}

Swift::Void __swiftcall StandardMetricsFieldsBuilder.removeValue(forField:)(Swift::String forField)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1DB306160(forField._countAndFlagsBits, forField._object);
  if (v5)
  {
    v6 = v4;
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DB3112DC();
      v9 = v11;
    }

    v10 = *(*(v9 + 48) + 16 * v6 + 8);

    sub_1DB30C200((*(v9 + 56) + 32 * v6), v12);
    sub_1DB30FD60(v6, v9);
    *v2 = v9;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_1DB30623C(v12, &qword_1ECC426B0, &qword_1DB50EEB0);
}

uint64_t StandardMetricsFieldsBuilder.merge(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id *, uint64_t *), uint64_t a3)
{

  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  *v3 = 0x8000000000000000;
  sub_1DB32649C(a1, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, a2, a3);
  v9 = *v3;

  *v3 = v11;
  return result;
}

uint64_t sub_1DB326438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB300B14(a1, v6);

  return sub_1DB30D454(v6, a2, a3);
}

void sub_1DB32649C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, id *, uint64_t *), uint64_t a6)
{
  v8 = v6;
  v50 = a6;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v43 = a1;
  v44 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v45 = v11;
  v46 = 0;
  v47 = v14 & v12;
  v48 = a2;
  v49 = a3;

  sub_1DB3AF664(&v41);
  v15 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
LABEL_5:
    sub_1DB2FEA60();

    return;
  }

  while (1)
  {
    v16 = v41;
    v39 = v41;
    v40 = v15;
    sub_1DB30C200(&v42, v38);
    v17 = *v8;
    v19 = sub_1DB306160(v16, v15);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1DB50BC20();
      __break(1u);
      goto LABEL_24;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      break;
    }

    if (a4)
    {
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1DB3112DC();
      if (v23)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v29 = *v8;
    *(*v8 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v30 = (v29[6] + 16 * v19);
    *v30 = v16;
    v30[1] = v15;
    sub_1DB30C200(v38, (v29[7] + 32 * v19));
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_22;
    }

    v29[2] = v33;
LABEL_6:
    sub_1DB3AF664(&v41);
    v15 = *(&v41 + 1);
    a4 = 1;
    if (!*(&v41 + 1))
    {
      goto LABEL_5;
    }
  }

  sub_1DB319570(v22, a4 & 1);
  v24 = *v8;
  v25 = sub_1DB306160(v16, v15);
  if ((v23 & 1) != (v26 & 1))
  {
    goto LABEL_23;
  }

  v19 = v25;
  if ((v23 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v27 = *v8;
  sub_1DB300B14(*(*v8 + 56) + 32 * v19, v36);
  a5(v37, v36, v38);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0(v36);
    __swift_destroy_boxed_opaque_existential_0(v38);

    v28 = (v27[7] + 32 * v19);
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_1DB30C200(v37, v28);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
  v36[0] = v7;
  v34 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0(v38);
    sub_1DB2FEA60();

    return;
  }

LABEL_24:
  *&v37[0] = 0;
  *(&v37[0] + 1) = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB529A10);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](39, 0xE100000000000000);
  sub_1DB50B580();
  __break(1u);
}

void sub_1DB3268A4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void (*a5)(__int128 *__return_ptr, id *, uint64_t *))
{
  v6 = a1;
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v56 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v58 = v11;
  v59 = v7;
  v60 = v6;
  while (1)
  {
    if (!v10)
    {
      v21 = v12;
      while (1)
      {
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v20 >= v11)
        {
          goto LABEL_27;
        }

        v19 = *(v7 + 8 * v20);
        ++v21;
        if (v19)
        {
          v63 = a4;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_1DB50BC20();
      __break(1u);
      goto LABEL_34;
    }

    v63 = a4;
    v19 = v10;
    v20 = v12;
LABEL_15:
    v22 = __clz(__rbit64(v19)) | (v20 << 6);
    v23 = (*(v6 + 48) + 16 * v22);
    v24 = v23[1];
    v25 = *(v6 + 56) + 24 * v22;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v25 + 16);
    v72 = *v23;
    v73 = v24;
    v74 = v27;
    v75 = v26;
    v76 = v28;

    sub_1DB314BBC(v27, v26, v28);
    a2(&v77, &v72);
    v29 = v74;
    v30 = v75;
    v31 = v76;

    sub_1DB31EB94(v29, v30, v31);
    if (!v78)
    {
LABEL_27:
      sub_1DB2FEA60();

      return;
    }

    v33 = v79;
    v34 = v80;
    v70 = v77;
    v32 = v77;
    v71 = v78;
    v35 = v81;
    v72 = v79;
    v73 = v80;
    LOBYTE(v74) = v81;
    v36 = *v82;
    v64 = v78;
    v38 = sub_1DB306160(v77, v78);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_31;
    }

    v42 = v37;
    if (v36[3] < v41)
    {
      break;
    }

    if (v63)
    {
      if (v37)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1DB3119D4();
      if (v42)
      {
        goto LABEL_23;
      }
    }

LABEL_5:
    v13 = *v82;
    v13[(v38 >> 6) + 8] |= 1 << v38;
    v14 = (v13[6] + 16 * v38);
    *v14 = v32;
    v14[1] = v64;
    v15 = v13[7] + 24 * v38;
    *v15 = v33;
    *(v15 + 8) = v34;
    *(v15 + 16) = v35;
    v16 = v13[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_32;
    }

    v13[2] = v18;
LABEL_7:
    v6 = v60;
    v11 = v58;
    v7 = v59;
    v10 = (v19 - 1) & v19;
    a4 = 1;
    v12 = v20;
  }

  v43 = v82;
  sub_1DB31A114(v41, v63 & 1);
  v44 = *v43;
  v45 = sub_1DB306160(v32, v64);
  if ((v42 & 1) != (v46 & 1))
  {
    goto LABEL_33;
  }

  v38 = v45;
  if ((v42 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  v47 = *v82;
  v48 = *(*v82 + 56) + 24 * v38;
  v49 = *(v48 + 8);
  v65 = *v48;
  v66 = v49;
  v67 = *(v48 + 16);
  sub_1DB314BBC(v65, v49, v67);
  a5(&v68, &v65, &v72);
  if (!v62)
  {
    sub_1DB31EB94(v65, v66, v67);
    sub_1DB31EB94(v72, v73, v74);

    v50 = *(v47 + 56) + 24 * v38;
    v51 = v69;
    v52 = *v50;
    v53 = *(v50 + 8);
    *v50 = v68;
    v54 = *(v50 + 16);
    *(v50 + 16) = v51;
    sub_1DB31EB94(v52, v53, v54);
    goto LABEL_7;
  }

  sub_1DB31EB94(v65, v66, v67);

  v65 = v62;
  v55 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DB31EB94(v72, v73, v74);
    sub_1DB2FEA60();

    return;
  }

LABEL_34:
  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB529A10);
  sub_1DB50B530();
  MEMORY[0x1E1285C70](39, 0xE100000000000000);
  sub_1DB50B580();
  __break(1u);
}

unint64_t JetPackAssetDiskCacheError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000022;
  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000021;
  if (!*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

unint64_t JetPackAssetDiskCacheError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DB50A650();
  *(inited + 40) = v4;
  v5 = "e default location";
  v6 = 0xD000000000000022;
  if (v1 == 3)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v5 = "Duplicate values for key: '";
  }

  if (v1 == 2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = v6;
  }

  if (v1 == 2)
  {
    v5 = "Unable to evict unsaved asset";
  }

  v8 = 0xD00000000000001DLL;
  v9 = "Asset file doesn't exist";
  if (v1)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v9 = "ve asset metadata";
  }

  if (v1 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v1 <= 1)
  {
    v5 = v9;
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v10;
  *(inited + 56) = v5 | 0x8000000000000000;
  v11 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);
  return v11;
}

uint64_t JetPackAssetDiskCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB326FF0()
{
  v1 = *v0;
  v2 = 0xD000000000000022;
  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000021;
  if (!*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB3270B4(uint64_t a1)
{
  v2 = sub_1DB32E638();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB3270F0(uint64_t a1)
{
  v2 = sub_1DB32E638();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t JetPackAssetDiskCache.DefaultLocation.assetsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t JetPackAssetDiskCache.DefaultLocation.databaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0) + 20);
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DB327218()
{
  v0 = sub_1DB50A270();
  __swift_allocate_value_buffer(v0, qword_1EE30E088);
  __swift_project_value_buffer(v0, qword_1EE30E088);
  return sub_1DB50A260();
}

uint64_t JetPackAssetDiskCache.__allocating_init(assetsURL:metadataStore:)(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_assetsURL;
  v9 = sub_1DB509CA0();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  sub_1DB2FEA0C(a2, v7 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  return v7;
}

uint64_t JetPackAssetDiskCache.init(assetsURL:metadataStore:)(uint64_t a1, __int128 *a2)
{
  v5 = OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_assetsURL;
  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  sub_1DB2FEA0C(a2, v2 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  return v2;
}

id JetPackAssetDiskCache.__allocating_init()()
{
  v27[2] = *MEMORY[0x1E69E9840];
  v26[0] = sub_1DB509B70();
  v0 = *(v26[0] - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v26[0]);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = [objc_opt_self() defaultManager];
  v27[0] = 0;
  v16 = [v15 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v27];

  v17 = v27[0];
  if (v16)
  {
    sub_1DB509C20();
    v18 = v17;

    strcpy(v27, "JetPackCache");
    BYTE5(v27[1]) = 0;
    HIWORD(v27[1]) = -5120;
    v19 = v26[0];
    (*(v0 + 104))(v3, *MEMORY[0x1E6968F70], v26[0]);
    sub_1DB301E30();
    sub_1DB509C80();
    (*(v0 + 8))(v3, v19);
    v20 = *(v5 + 8);
    v20(v11, v4);
    (*(v5 + 16))(v8, v14, v4);
    v21 = v26[1];
    v22 = v26[2];
    v23 = JetPackAssetDiskCache.__allocating_init(url:)(v8);
    if (!v22)
    {
      v21 = v23;
    }

    v20(v14, v4);
  }

  else
  {
    v21 = v27[0];
    sub_1DB509B20();

    swift_willThrow();
  }

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t JetPackAssetDiskCache.__allocating_init(url:)(uint64_t a1)
{
  v3 = sub_1DB509CA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static JetPackAssetDiskCache.prepareDefaultLocation(url:)(a1, v17);
  if (v1)
  {
    (*(v4 + 8))(a1, v3);
  }

  else
  {
    v33 = a1;
    v30 = v7;
    v18 = *(v4 + 16);
    v19 = v3;
    v18(v13, &v17[*(v14 + 20)], v3);
    v31 = type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
    v32 = swift_allocObject();
    v29 = v18;
    v18(v10, v13, v3);
    LOBYTE(v34) = 0;
    v20 = type metadata accessor for AssetSQLiteDatabase();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = AssetSQLiteDatabase.init(url:mode:)(v10, &v34);
    v24 = *(v4 + 8);
    v24(v13, v19);
    v25 = v32;
    *(v32 + 16) = v23;
    v29(v30, v17, v19);
    v35 = v31;
    v36 = &protocol witness table for JetPackAssetDiskCacheSQLiteMetadataStore;
    *&v34 = v25;
    v24(v33, v19);
    sub_1DB32DF10(v17);
    v26 = *(v37 + 48);
    v27 = *(v37 + 52);
    v3 = swift_allocObject();
    (*(v4 + 32))(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_assetsURL, v30, v19);
    sub_1DB2FEA0C(&v34, v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  }

  return v3;
}

uint64_t static JetPackAssetDiskCache.prepareDefaultLocation(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v61 = *MEMORY[0x1E69E9840];
  v3 = sub_1DB509B70();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1DB509CA0();
  v48 = *(v47 - 8);
  v8 = *(v48 + 64);
  v9 = MEMORY[0x1EEE9AC00](v47);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0x737465737361;
  v58 = 0xE600000000000000;
  v12 = *MEMORY[0x1E6968F70];
  v41 = v4[13];
  v41(v7, v12, v3, v9);
  v43 = sub_1DB301E30();
  v44 = a1;
  sub_1DB509C80();
  v42 = v4[1];
  v42(v7, v3);
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_1DB509BC0();
  v57 = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v57];

  v16 = v57;
  if (v15)
  {
    v57 = 0x62642E65726F7473;
    v58 = 0xE800000000000000;
    (v41)(v7, v12, v3);
    v17 = *(type metadata accessor for JetPackAssetDiskCache.DefaultLocation(0) + 20);
    v18 = v16;
    v19 = v45;
    sub_1DB509C80();
    v42(v7, v3);
    result = (*(v48 + 32))(v19, v11, v47);
  }

  else
  {
    v46 = v11;
    v21 = v47;
    v22 = v57;
    v23 = sub_1DB509B20();

    swift_willThrow();
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v24 = v59;
    v25 = v60;
    __swift_project_boxed_opaque_existential_1(&v57, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1DB50EE90;
    v51 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
    v27._object = 0x80000001DB529B20;
    v27._countAndFlagsBits = 0xD000000000000023;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    swift_getErrorValue();
    v28 = v49;
    v29 = v50;
    v56[3] = v50;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_0, v28, v29);
    sub_1DB301CDC(v56, v52);
    v53 = 0u;
    v54 = 0u;
    sub_1DB301D4C(v52, &v53);
    v55 = 0;
    v31 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
      v51 = v31;
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[40 * v33];
    v35 = v53;
    v36 = v54;
    v34[64] = v55;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    v51 = v31;
    sub_1DB30623C(v56, &qword_1ECC426B0, &qword_1DB50EEB0);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v26 + 32) = v51;
    Logger.error(_:)(v26, v24, v25);

    __swift_destroy_boxed_opaque_existential_0(&v57);
    sub_1DB32DF6C();
    swift_allocError();
    *v38 = 4;
    swift_willThrow();

    result = (*(v48 + 8))(v46, v21);
  }

  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t JetPackAssetDiskCache._cache(_:)(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3[167] = v2;
  v3[166] = a2;
  v3[165] = a1;
  v4 = sub_1DB509B70();
  v3[168] = v4;
  v5 = *(v4 - 8);
  v3[169] = v5;
  v6 = *(v5 + 64) + 15;
  v3[170] = swift_task_alloc();
  v7 = sub_1DB509CA0();
  v3[171] = v7;
  v8 = *(v7 - 8);
  v3[172] = v8;
  v9 = *(v8 + 64) + 15;
  v3[173] = swift_task_alloc();
  v10 = sub_1DB509E00();
  v3[174] = v10;
  v11 = *(v10 - 8);
  v3[175] = v11;
  v12 = *(v11 + 64) + 15;
  v3[176] = swift_task_alloc();
  v13 = sub_1DB50A230();
  v3[177] = v13;
  v14 = *(v13 - 8);
  v3[178] = v14;
  v15 = *(v14 + 64) + 15;
  v3[179] = swift_task_alloc();
  v3[180] = swift_task_alloc();
  v16 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DB32824C, 0, 0);
}

uint64_t sub_1DB32824C()
{
  v167 = v0;
  v166 = *MEMORY[0x1E69E9840];
  if (qword_1EE30E080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1440);
  v2 = sub_1DB50A270();
  __swift_project_value_buffer(v2, qword_1EE30E088);
  sub_1DB50A250();
  sub_1DB50A200();
  v3 = sub_1DB50A250();
  v4 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v5 = *(v0 + 1440);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v3, v4, v7, "Cache Asset", "", v6, 2u);
    MEMORY[0x1E1288220](v6, -1, -1);
  }

  v8 = (v0 + 776);
  v9 = *(v0 + 1440);
  v10 = *(v0 + 1432);
  v11 = *(v0 + 1424);
  v12 = *(v0 + 1416);

  (*(v11 + 16))(v10, v9, v12);
  v13 = sub_1DB50A2C0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v158 = sub_1DB50A2B0();
  *(v0 + 1448) = v158;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 1328);
  sub_1DB50BEB0();
  v17 = *(v0 + 520);
  v161 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1((v0 + 496), v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DB50EE90;
  *&v164[0] = sub_1DB301BC0(0, 30, 0, MEMORY[0x1E69E7CC0]);
  v19._countAndFlagsBits = 0xD00000000000001DLL;
  v19._object = 0x80000001DB529B50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v20 = type metadata accessor for JetPackAsset(0);
  *(v0 + 1456) = v20;
  v21 = (v16 + v20[7]);
  v22 = *v21;
  v23 = v21[1];
  *(v0 + 1048) = MEMORY[0x1E69E6158];
  *(v0 + 1024) = v22;
  *(v0 + 1032) = v23;
  sub_1DB301CDC(v0 + 1024, v0 + 960);
  *v8 = 0u;
  *(v0 + 792) = 0u;

  sub_1DB301D4C(v0 + 960, v0 + 776);
  *(v0 + 808) = 0;
  v24 = *&v164[0];
  v154 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1DB301BC0(0, *(*&v164[0] + 16) + 1, 1, *&v164[0]);
    *&v164[0] = v24;
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
  }

  v27 = *(v0 + 1328);
  *(v24 + 2) = v26 + 1;
  v28 = &v24[40 * v26];
  v29 = *v8;
  v30 = *(v0 + 792);
  v28[64] = *(v0 + 808);
  *(v28 + 2) = v29;
  *(v28 + 3) = v30;
  *&v164[0] = v24;
  sub_1DB30623C(v0 + 1024, &qword_1ECC426B0, &qword_1DB50EEB0);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  *(v18 + 32) = v24;
  Logger.info(_:)(v18, v17, v161);

  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  v32 = (v27 + v20[6]);
  if ((v32[1] & 1) == 0)
  {
    v48 = *v32;
    v49 = *(v0 + 1328);
    sub_1DB50BEB0();
    v50 = *(v0 + 560);
    v51 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1((v0 + 536), v50);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1DB50EE90;
    *(v0 + 1016) = MEMORY[0x1E69E6158];
    *(v0 + 992) = 0xD000000000000029;
    *(v0 + 1000) = 0x80000001DB529BB0;
    *(v53 + 48) = 0u;
    *(v53 + 32) = 0u;
    sub_1DB301D4C(v0 + 992, v53 + 32);
    *(v53 + 64) = 0;
    *(v52 + 32) = v53;
    Logger.info(_:)(v52, v50, v51);

    __swift_destroy_boxed_opaque_existential_0((v0 + 536));
    v54 = sub_1DB5098C0();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    sub_1DB5098B0();
    v57 = v20[5];
    type metadata accessor for JetPackAsset.Metadata(0);
    sub_1DB32E68C(&qword_1EE30DBC8);
    v63 = sub_1DB5098A0();
    v65 = v64;
    v66 = (*(v0 + 1336) + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
    v67 = v48;
    v69 = v66[3];
    v68 = v66[4];
    __swift_project_boxed_opaque_existential_1(v66, v69);
    v163 = *(v68 + 56);
    sub_1DB30C1AC(v63, v65);
    v163(v164, v67, v63, v65, v69, v68);
    v123 = *(v0 + 1328);
    v124 = *(v0 + 1320);
    v125 = v164[1];
    *(v0 + 216) = v164[0];
    *(v0 + 232) = v125;
    *(v0 + 248) = v164[2];
    *(v0 + 264) = v165;
    sub_1DB32DFF8(v0 + 216);
    sub_1DB30C158(v63, v65);

    sub_1DB30C158(v63, v65);
    sub_1DB314AF4(v123, v124);
    v126 = v158;
    goto LABEL_28;
  }

  v33 = *(v0 + 1408);
  v34 = *(v0 + 1400);
  v35 = *(v0 + 1392);
  v36 = *(v0 + 1336);
  v37 = *(v0 + 1328);
  sub_1DB329ABC(v154, v23);
  sub_1DB509DF0();
  v38 = sub_1DB509DE0();
  v40 = v39;
  (*(v34 + 8))(v33, v35);
  *(v0 + 1264) = 0x6B63617074656A2ELL;
  *(v0 + 1272) = 0xE800000000000000;
  *(v0 + 1248) = v38;
  *(v0 + 1256) = v40;
  *&v164[0] = sub_1DB50A860();
  *(&v164[0] + 1) = v41;
  sub_1DB50A770();
  v159 = v164[0];
  v42 = sub_1DB5098C0();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  *(v0 + 1464) = sub_1DB5098B0();
  v45 = v20[5];
  type metadata accessor for JetPackAsset.Metadata(0);
  sub_1DB32E68C(&qword_1EE30DBC8);
  v46 = sub_1DB5098A0();
  *(v0 + 1472) = v46;
  *(v0 + 1480) = v47;
  v58 = v46;
  v59 = v47;
  v60 = (*(v0 + 1336) + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v61 = v60[3];
  v62 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v61);
  *(v0 + 156) = 1;
  *(v0 + 160) = 0;
  *(v0 + 164) = 1;
  *(v0 + 168) = v154;
  *(v0 + 176) = v23;
  *(v0 + 184) = v159;
  *(v0 + 200) = v58;
  *(v0 + 208) = v59;
  v155 = *(v62 + 40);

  sub_1DB30C1AC(v58, v59);
  v155(v0 + 160, v61, v62);
  v150 = v58;
  v151 = v59;
  v76 = *(v0 + 1384);
  v77 = *(v0 + 1376);
  v152 = *(v0 + 1368);
  v78 = *(v0 + 1360);
  v79 = *(v0 + 1352);
  v80 = *(v0 + 1344);
  v81 = *(v0 + 1336);
  v156 = *(v0 + 1328);
  v82 = *(v0 + 176);
  *(v0 + 272) = *(v0 + 160);
  *(v0 + 288) = v82;
  *(v0 + 304) = *(v0 + 192);
  *(v0 + 320) = *(v0 + 208);
  sub_1DB32DFF8(v0 + 272);
  v83 = *(v0 + 400);
  *(v0 + 328) = *(v0 + 384);
  *(v0 + 344) = v83;
  *(v0 + 360) = *(v0 + 416);
  *(v0 + 376) = *(v0 + 432);
  *(v0 + 1280) = v159;
  (*(v79 + 104))(v78, *MEMORY[0x1E6968F70], v80);
  sub_1DB301E30();
  sub_1DB509C90();
  (*(v79 + 8))(v78, v80);

  v84 = sub_1DB509C30();
  v86 = v85;
  *(v0 + 1488) = v84;
  *(v0 + 1496) = v85;
  (*(v77 + 8))(v76, v152);
  sub_1DB30BE90(v156, v0 + 576);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  if (swift_dynamicCast())
  {
    v160 = v86;
    v157 = *(v0 + 896);
    v87 = *(v0 + 904);
    v88 = *(v0 + 920);

    sub_1DB50BEB0();
    v89 = *(v0 + 680);
    v90 = *(v0 + 688);
    __swift_project_boxed_opaque_existential_1((v0 + 656), v89);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1DB50EE90;
    *(v0 + 1112) = MEMORY[0x1E69E6158];
    *(v0 + 1088) = 0xD000000000000016;
    *(v0 + 1096) = 0x80000001DB529B90;
    *(v92 + 48) = 0u;
    *(v92 + 32) = 0u;
    sub_1DB301D4C(v0 + 1088, v92 + 32);
    *(v92 + 64) = 0;
    *(v91 + 32) = v92;
    Logger.info(_:)(v91, v89, v90);

    __swift_destroy_boxed_opaque_existential_0((v0 + 656));
    sub_1DB50BEB0();
    v93 = *(v0 + 720);
    v153 = *(v0 + 728);
    __swift_project_boxed_opaque_existential_1((v0 + 696), v93);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_1DB50EE90;
    *&v164[0] = sub_1DB301BC0(0, 15, 0, MEMORY[0x1E69E7CC0]);
    v95._countAndFlagsBits = 0x203A6D6F7266;
    v95._object = 0xE600000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v95);
    v96 = MEMORY[0x1E69E6158];
    *(v0 + 1144) = MEMORY[0x1E69E6158];
    *(v0 + 1120) = v157;
    *(v0 + 1128) = v87;
    sub_1DB301CDC(v0 + 1120, v0 + 1152);
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0u;

    sub_1DB301D4C(v0 + 1152, v0 + 816);
    *(v0 + 848) = 0;
    v97 = *&v164[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v97 = sub_1DB301BC0(0, *(*&v164[0] + 16) + 1, 1, *&v164[0]);
      *&v164[0] = v97;
    }

    v98 = (v0 + 856);
    v100 = *(v97 + 2);
    v99 = *(v97 + 3);
    if (v100 >= v99 >> 1)
    {
      v97 = sub_1DB301BC0((v99 > 1), v100 + 1, 1, v97);
    }

    *(v97 + 2) = v100 + 1;
    v101 = &v97[40 * v100];
    v102 = *(v0 + 816);
    v103 = *(v0 + 832);
    v101[64] = *(v0 + 848);
    *(v101 + 2) = v102;
    *(v101 + 3) = v103;
    *&v164[0] = v97;
    sub_1DB30623C(v0 + 1120, &qword_1ECC426B0, &qword_1DB50EEB0);
    v104._countAndFlagsBits = 0x203A6F74202C20;
    v104._object = 0xE700000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v104);
    *(v0 + 1208) = v96;
    *(v0 + 1184) = v84;
    *(v0 + 1192) = v160;
    sub_1DB301CDC(v0 + 1184, v0 + 1216);
    *v98 = 0u;
    *(v0 + 872) = 0u;

    sub_1DB301D4C(v0 + 1216, v0 + 856);
    *(v0 + 888) = 0;
    v105 = *&v164[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v105 = sub_1DB301BC0(0, *(*&v164[0] + 16) + 1, 1, *&v164[0]);
      *&v164[0] = v105;
    }

    v106 = (v0 + 1304);
    v108 = *(v105 + 2);
    v107 = *(v105 + 3);
    if (v108 >= v107 >> 1)
    {
      v105 = sub_1DB301BC0((v107 > 1), v108 + 1, 1, v105);
    }

    *(v105 + 2) = v108 + 1;
    v109 = &v105[40 * v108];
    v110 = *v98;
    v111 = *(v0 + 872);
    v109[64] = *(v0 + 888);
    *(v109 + 2) = v110;
    *(v109 + 3) = v111;
    *&v164[0] = v105;
    sub_1DB30623C(v0 + 1184, &qword_1ECC426B0, &qword_1DB50EEB0);
    v112._countAndFlagsBits = 0;
    v112._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v112);
    *(v94 + 32) = v105;
    Logger.info(_:)(v94, v93, v153);

    __swift_destroy_boxed_opaque_existential_0((v0 + 696));
    v113 = [objc_opt_self() defaultManager];
    v114 = sub_1DB50A620();

    v115 = sub_1DB50A620();

    *v106 = 0;
    v116 = [v113 copyItemAtPath:v114 toPath:v115 error:v0 + 1304];

    v117 = *v106;
    if (!v116)
    {
      v149 = v117;
      sub_1DB509B20();

      swift_willThrow();
      sub_1DB30C158(v150, v151);

      sub_1DB32DFF8(v0 + 328);
      sub_1DB32E04C(v158, "Cache Asset");

      v70 = *(v0 + 1432);
      v71 = *(v0 + 1408);
      v72 = *(v0 + 1384);
      v73 = *(v0 + 1360);
      (*(*(v0 + 1424) + 8))(*(v0 + 1440), *(v0 + 1416));

      v131 = *(v0 + 8);
      v74 = *MEMORY[0x1E69E9840];
      goto LABEL_14;
    }

    v118 = v117;
    sub_1DB30C158(v150, v151);

    v119 = *(v0 + 1456);
    v126 = *(v0 + 1448);
    v120 = *(v0 + 1320);
    sub_1DB314AF4(*(v0 + 1328), v120);
    sub_1DB32DFF8(v0 + 328);
    v121 = *(v0 + 332);
    v122 = v120 + *(v119 + 24);
    *v122 = *(v0 + 328);
    *(v122 + 4) = v121;
LABEL_28:
    sub_1DB32E04C(v126, "Cache Asset");

    v127 = *(v0 + 1432);
    v128 = *(v0 + 1408);
    v129 = *(v0 + 1384);
    v130 = *(v0 + 1360);
    (*(*(v0 + 1424) + 8))(*(v0 + 1440), *(v0 + 1416));

    v131 = *(v0 + 8);
    v132 = *MEMORY[0x1E69E9840];
LABEL_14:

    return v131();
  }

  sub_1DB50BEB0();
  v133 = *(v0 + 640);
  v162 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1((v0 + 616), v133);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_1DB50EE90;
  *&v164[0] = sub_1DB301BC0(0, 18, 0, MEMORY[0x1E69E7CC0]);
  v135._object = 0x80000001DB529B70;
  v135._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v135);
  *(v0 + 952) = MEMORY[0x1E69E6158];
  *(v0 + 928) = v84;
  *(v0 + 936) = v86;
  sub_1DB301CDC(v0 + 928, v0 + 1056);
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;

  sub_1DB301D4C(v0 + 1056, v0 + 736);
  *(v0 + 768) = 0;
  v136 = *&v164[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v136 = sub_1DB301BC0(0, *(*&v164[0] + 16) + 1, 1, *&v164[0]);
    *&v164[0] = v136;
  }

  v138 = *(v136 + 2);
  v137 = *(v136 + 3);
  if (v138 >= v137 >> 1)
  {
    v136 = sub_1DB301BC0((v137 > 1), v138 + 1, 1, v136);
  }

  v139 = *(v0 + 1328);
  *(v136 + 2) = v138 + 1;
  v140 = &v136[40 * v138];
  v141 = *(v0 + 736);
  v142 = *(v0 + 752);
  v140[64] = *(v0 + 768);
  *(v140 + 2) = v141;
  *(v140 + 3) = v142;
  *&v164[0] = v136;
  sub_1DB30623C(v0 + 928, &qword_1ECC426B0, &qword_1DB50EEB0);
  v143._countAndFlagsBits = 0;
  v143._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v143);
  *(v134 + 32) = v136;
  Logger.info(_:)(v134, v133, v162);

  __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  v144 = [objc_opt_self() defaultManager];
  v145 = sub_1DB50A620();
  [v144 createFileAtPath:v145 contents:0 attributes:0];

  v146 = v139[3];
  v147 = v139[4];
  __swift_project_boxed_opaque_existential_1(v139, v146);
  *(v0 + 1504) = (*(v147 + 8))(v146, v147);
  v148 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DB329480, 0, 0);
}

uint64_t sub_1DB329480()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1504);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1312;
  *(v0 + 24) = sub_1DB32957C;
  *(v0 + 80) = swift_continuation_init();
  *(v0 + 152) = 1;
  sub_1DB30828C(v0 + 80);
  sub_1DB30623C(v0 + 80, &unk_1ECC45030, &qword_1DB50F4D0);
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DB32957C()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1512) = v3;
  if (v3)
  {
    v4 = v1[187];

    swift_willThrow();
    v5 = sub_1DB329978;
  }

  else
  {
    v6 = v1[188];

    v1[190] = v1[164];
    v5 = sub_1DB3296DC;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB3296DC()
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1496);
  v3 = *(v0 + 1488);
  v4 = sub_1DB50A620();

  *(v0 + 1296) = 0;
  v5 = [v1 writeToFile:v4 blockSize:0x20000 error:v0 + 1296];

  v6 = *(v0 + 1296);
  v7 = *(v0 + 1520);
  v8 = *(v0 + 1480);
  v9 = *(v0 + 1472);
  v10 = *(v0 + 1464);
  if (v5)
  {
    v11 = v6;
    sub_1DB30C158(v9, v8);

    v12 = *(v0 + 1456);
    v13 = *(v0 + 1448);
    v14 = *(v0 + 1320);
    sub_1DB314AF4(*(v0 + 1328), v14);
    sub_1DB32DFF8(v0 + 328);
    v15 = *(v0 + 332);
    v16 = v14 + *(v12 + 24);
    *v16 = *(v0 + 328);
    *(v16 + 4) = v15;
    sub_1DB32E04C(v13, "Cache Asset");

    v17 = *(v0 + 1432);
    v18 = *(v0 + 1408);
    v19 = *(v0 + 1384);
    v20 = *(v0 + 1360);
  }

  else
  {
    v23 = *(v0 + 1448);
    v24 = v6;
    sub_1DB509B20();

    swift_willThrow();
    sub_1DB30C158(v9, v8);

    sub_1DB32DFF8(v0 + 328);
    sub_1DB32E04C(v23, "Cache Asset");

    v25 = *(v0 + 1432);
    v26 = *(v0 + 1408);
    v27 = *(v0 + 1384);
    v28 = *(v0 + 1360);
  }

  (*(*(v0 + 1424) + 8))(*(v0 + 1440), *(v0 + 1416));

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x1E69E9840];

  return v21();
}

uint64_t sub_1DB329978()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = v0[188];
  v2 = v0[185];
  v3 = v0[184];
  v4 = v0[183];
  v5 = v0[181];

  sub_1DB30C158(v3, v2);

  sub_1DB32DFF8((v0 + 41));
  sub_1DB32E04C(v5, "Cache Asset");

  v6 = v0[189];
  v7 = v0[179];
  v8 = v0[176];
  v9 = v0[173];
  v10 = v0[170];
  (*(v0[178] + 8))(v0[180], v0[177]);

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1DB329ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v6 = *(&v46 + 1);
  v38 = v47;
  __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  v50 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v8._object = 0x80000001DB529DC0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v40 = MEMORY[0x1E69E6158];
  v39[0] = a1;
  v39[1] = a2;
  sub_1DB301CDC(v39, v49);
  v41 = 0u;
  v42 = 0u;

  sub_1DB301D4C(v49, &v41);
  LOBYTE(v43) = 0;
  v9 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DB301BC0(0, *(v9 + 2) + 1, 1, v9);
    v50 = v9;
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  v13 = v41;
  v14 = v42;
  v12[64] = v43;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  v50 = v9;
  sub_1DB30623C(v39, &qword_1ECC426B0, &qword_1DB50EEB0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v7 + 32) = v50;
  Logger.info(_:)(v7, v6, v38);

  __swift_destroy_boxed_opaque_existential_0(&v45);
  v16 = *(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v17 = *(v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore), v16);
  v18 = (*(v17 + 32))(a1, a2, v16, v17);
  sub_1DB50BEB0();
  v19 = *(&v46 + 1);
  v20 = v47;
  __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DB50EE90;
  v50 = sub_1DB301BC0(0, 23, 0, MEMORY[0x1E69E7CC0]);
  v22._countAndFlagsBits = 0x20646E756F46;
  v22._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v23 = *(v18 + 16);
  v40 = MEMORY[0x1E69E6530];
  v39[0] = v23;
  sub_1DB301CDC(v39, v49);
  v41 = 0u;
  v42 = 0u;
  sub_1DB301D4C(v49, &v41);
  LOBYTE(v43) = 0;
  v24 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[40 * v26];
  v28 = v41;
  v29 = v42;
  v27[64] = v43;
  *(v27 + 2) = v28;
  *(v27 + 3) = v29;
  v50 = v24;
  sub_1DB30623C(v39, &qword_1ECC426B0, &qword_1DB50EEB0);
  v30._object = 0x80000001DB529C90;
  v30._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  *(v21 + 32) = v50;
  Logger.info(_:)(v21, v19, v20);

  __swift_destroy_boxed_opaque_existential_0(&v45);
  v31 = *(v18 + 16);
  if (v31)
  {
    v32 = v31 - 1;
    for (i = 32; ; i += 56)
    {
      v34 = *(v18 + i);
      v35 = *(v18 + i + 16);
      v36 = *(v18 + i + 32);
      v48 = *(v18 + i + 48);
      v46 = v35;
      v47 = v36;
      v45 = v34;
      v41 = *(v18 + i);
      v42 = *(v18 + i + 16);
      v43 = *(v18 + i + 32);
      v44 = *(v18 + i + 48);
      sub_1DB32E354(&v45, v39);
      sub_1DB32D488(&v41);
      sub_1DB32DFF8(&v45);
      if (!v32)
      {
        break;
      }

      --v32;
    }
  }
}

uint64_t JetPackAssetDiskCache._asset(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = sub_1DB50A230();
  v4[33] = v5;
  v6 = *(v5 - 8);
  v4[34] = v6;
  v7 = *(v6 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB32A2F4, 0, 0);
}

uint64_t sub_1DB32A2F4()
{
  v62 = v0;
  if (qword_1EE30E080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = sub_1DB50A270();
  __swift_project_value_buffer(v2, qword_1EE30E088);
  sub_1DB50A250();
  sub_1DB50A200();
  v3 = sub_1DB50A250();
  v4 = sub_1DB50B070();
  if (sub_1DB50B0E0())
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v3, v4, v7, "Retrieve Cached Asset", "", v6, 2u);
    MEMORY[0x1E1288220](v6, -1, -1);
  }

  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);

  (*(v11 + 16))(v9, v8, v10);
  v12 = sub_1DB50A2C0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v52 = sub_1DB50A2B0();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 248);
  sub_1DB50BEB0();
  v17 = *(v0 + 40);
  v51 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DB50EE90;
  v61[0] = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v19._object = 0x80000001DB529BF0;
  v19._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v15;
  *(v0 + 144) = v16;
  sub_1DB301CDC(v0 + 136, v0 + 168);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1DB301D4C(v0 + 168, v0 + 96);
  *(v0 + 128) = 0;
  v20 = v61[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1DB301BC0(0, *(v61[0] + 2) + 1, 1, v61[0]);
    v61[0] = v20;
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1DB301BC0((v21 > 1), v22 + 1, 1, v20);
  }

  v24 = *(v0 + 248);
  v23 = *(v0 + 256);
  v25 = *(v0 + 240);
  *(v20 + 2) = v22 + 1;
  v26 = &v20[40 * v22];
  v27 = *(v0 + 96);
  v28 = *(v0 + 112);
  v26[64] = *(v0 + 128);
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v61[0] = v20;
  sub_1DB30623C(v0 + 136, &qword_1ECC426B0, &qword_1DB50EEB0);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  *(v18 + 32) = v20;
  Logger.info(_:)(v18, v17, v51);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v30 = (v23 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore);
  v31 = *(v23 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 24);
  v32 = *(v23 + OBJC_IVAR____TtC7JetCore21JetPackAssetDiskCache_metadataStore + 32);
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v32 + 16))(&v53, v25, v24, v31, v32);
  v33 = v55;
  if (v55 == 1)
  {
    v34 = *(v0 + 232);
    sub_1DB50BEB0();
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v36);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1DB50EE90;
    *(v0 + 224) = MEMORY[0x1E69E6158];
    *(v0 + 200) = 0xD000000000000026;
    *(v0 + 208) = 0x80000001DB529C20;
    *(v38 + 48) = 0u;
    *(v38 + 32) = 0u;
    sub_1DB301D4C(v0 + 200, v38 + 32);
    *(v38 + 64) = 0;
    *(v37 + 32) = v38;
    Logger.info(_:)(v37, v36, v35);

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v39 = type metadata accessor for JetPackAsset(0);
    (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
  }

  else
  {
    v40 = *(v0 + 256);
    v41 = *(v0 + 232);
    v43 = v58;
    v42 = v59;
    v45 = v56;
    v44 = v57;
    v47 = v53;
    v46 = v54;
    v60 = BYTE4(v53) & 1;
    LODWORD(v61[0]) = v53;
    BYTE4(v61[0]) = BYTE4(v53) & 1;
    v61[1] = v54;
    v61[2] = v55;
    v61[3] = v56;
    v61[4] = v57;
    v61[5] = v58;
    v61[6] = v59;
    sub_1DB32A8F8(v61, v41);
    sub_1DB32E2DC(v47, v46, v33, v45, v44, v43, v42);
  }

  sub_1DB32E04C(v52, "Retrieve Cached Asset");

  v48 = *(v0 + 280);
  (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));

  v49 = *(v0 + 8);

  return v49();
}