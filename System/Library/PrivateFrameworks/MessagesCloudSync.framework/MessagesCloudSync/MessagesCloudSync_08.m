uint64_t sub_22B9D8A34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&qword_27D8D5990, &qword_22BA197A0);
  v39 = a2;
  result = sub_22BA10A7C();
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
      v26 = *(v5 + 56) + 48 * v22;
      v27 = *v26;
      v44 = *(v26 + 8);
      v43 = *(v26 + 16);
      v42 = *(v26 + 24);
      v41 = *(v26 + 32);
      v40 = *(v26 + 40);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
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
      v18 = *(v8 + 56) + 48 * v16;
      *v18 = v27;
      *(v18 + 8) = v44;
      *(v18 + 16) = v43;
      *(v18 + 24) = v42;
      *(v18 + 32) = v41;
      *(v18 + 40) = v40;
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

uint64_t sub_22B9D8D34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&unk_27D8D5790, &unk_22BA19790);
  result = sub_22BA10A7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v33 = *(*(v5 + 56) + 16 * v23);
      v25 = *(v8 + 40);
      sub_22BA10D3C();
      sub_22BA1008C();

      result = sub_22BA10D6C();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v16) >> 6;
        while (++v18 != v27 || (v26 & 1) == 0)
        {
          v28 = v18 == v27;
          if (v18 == v27)
          {
            v18 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v18);
          if (v29 != -1)
          {
            v19 = __clz(__rbit64(~v29)) + (v18 << 6);
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
      *(*(v8 + 56) + 16 * v19) = v33;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
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

uint64_t sub_22B9D9050(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&qword_27D8D5998, &qword_22BA197A8);
  result = sub_22BA10A7C();
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
      result = sub_22BA1071C();
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

uint64_t sub_22B9D92B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
  result = sub_22BA10A7C();
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
        sub_22B936C98((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_22B958068(v24, &v38);
        sub_22B936B20(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_22BA1084C();
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
      result = sub_22B936C98(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_22B9D956C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&unk_27D8D5970, &unk_22BA19770);
  v33 = a2;
  result = sub_22BA10A7C();
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
        swift_unknownObjectRetain();
      }

      v23 = *(v8 + 40);
      sub_22BA10D3C();
      MEMORY[0x23189A3B0](v21);
      result = sub_22BA10D6C();
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

uint64_t sub_22B9D97FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&qword_27D8D5808, qword_22BA18600);
  v40 = a2;
  result = sub_22BA10A7C();
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
      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
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

uint64_t sub_22B9D9ABC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&unk_27D8D5980, &unk_22BA19780);
  v38 = a2;
  result = sub_22BA10A7C();
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
      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
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

unint64_t sub_22B9D9D64(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_22B9D9DAC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

_OWORD *sub_22B9D9DF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22B936C98(a4, (a5[7] + 32 * a1));
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

unint64_t sub_22B9D9E60(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
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

unint64_t sub_22B9D9EBC(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

_OWORD *sub_22B9D9F04(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_22B936C98(a3, (a4[7] + 32 * a1));
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

unint64_t sub_22B9D9F80(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_22B9D9FC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_22B9DA034()
{
  v1 = sub_22B972028();
  if (!v1)
  {
    v1 = sub_22B9BBDDC(MEMORY[0x277D84F90]);
  }

  v2 = v1;
  v3 = *(v0 + 40);
  v75 = v0;
  swift_beginAccess();
  v74 = v3;
  v4 = *(v3 + 112);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v8 = -1;
  v9 = -1 << *(*(v3 + 112) + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & v5;
  v11 = (63 - v9) >> 6;
  v77 = *(v3 + 112);

  v12 = 0;
  while (v10)
  {
    v14 = v12;
LABEL_12:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(v77 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v77 + 56) + 8 * v16);
    v21 = v2[2];

    if (v21 && (v22 = sub_22B990A58(v19, v18), (v23 & 1) != 0))
    {
      v24 = *(v2[7] + 8 * v22);
      v25 = __OFADD__(v24, v20);
      v26 = v24 + v20;
      if (v25)
      {
        goto LABEL_49;
      }

      v76 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v18;
      v29 = isUniquelyReferenced_nonNull_native;
      v78 = v2;
      v30 = v19;
      v31 = v28;
      v32 = sub_22B990A58(v19, v28);
      v34 = v2[2];
      v35 = (v33 & 1) == 0;
      v25 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v25)
      {
        goto LABEL_50;
      }

      v37 = v33;
      if (v2[3] < v36)
      {
        sub_22B9D7F9C(v36, v29);
        v32 = sub_22B990A58(v30, v31);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_43;
        }

LABEL_31:
        if (v37)
        {
          goto LABEL_32;
        }

LABEL_34:
        v2 = v78;
        v78[(v32 >> 6) + 8] |= 1 << v32;
        v60 = (v78[6] + 16 * v32);
        *v60 = v30;
        v60[1] = v31;
        *(v78[7] + 8 * v32) = v76;
        v61 = v78[2];
        v25 = __OFADD__(v61, 1);
        v56 = v61 + 1;
        if (v25)
        {
          goto LABEL_51;
        }

        goto LABEL_35;
      }

      if (v29)
      {
        goto LABEL_31;
      }

      v59 = v32;
      sub_22B9EBAF4();
      v32 = v59;
      if ((v37 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_32:
      v57 = v32;

      v2 = v78;
      *(v78[7] + 8 * v57) = v76;
      v12 = v14;
    }

    else
    {
      v39 = v2;
      v40 = v11;
      v41 = v6;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v18;
      v44 = v42;
      v79 = v39;
      v45 = v19;
      v6 = v43;
      v46 = sub_22B990A58(v19, v43);
      v48 = v39[2];
      v49 = (v47 & 1) == 0;
      v25 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v25)
      {
        goto LABEL_47;
      }

      v51 = v47;
      if (v39[3] >= v50)
      {
        if ((v44 & 1) == 0)
        {
          v58 = v46;
          sub_22B9EBAF4();
          v46 = v58;
        }

        v52 = v6;
      }

      else
      {
        sub_22B9D7F9C(v50, v44);
        v52 = v6;
        v46 = sub_22B990A58(v45, v6);
        if ((v51 & 1) != (v53 & 1))
        {
LABEL_43:

          return sub_22BA10CBC();
        }
      }

      v6 = v41;
      v11 = v40;
      if (v51)
      {
        v13 = v46;

        v2 = v79;
        *(v79[7] + 8 * v13) = v20;
        v12 = v14;
      }

      else
      {
        v2 = v39;
        v39[(v46 >> 6) + 8] |= 1 << v46;
        v54 = (v39[6] + 16 * v46);
        *v54 = v45;
        v54[1] = v52;
        *(v39[7] + 8 * v46) = v20;
        v55 = v39[2];
        v25 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v25)
        {
          goto LABEL_48;
        }

LABEL_35:
        v2[2] = v56;
        v12 = v14;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      sub_22B9724B4(v2);
      v10 = v75;
      goto LABEL_40;
    }

    v10 = v6[v14];
    ++v12;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  swift_once();
  v62 = sub_22BA0FEFC();
  sub_22B936CA8(v62, qword_28141AD40);
  v63 = v6;
  v64 = sub_22BA0FEDC();
  v65 = sub_22BA1044C();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    v68 = v6;
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 4) = v69;
    *v67 = v69;
    _os_log_impl(&dword_22B92A000, v64, v65, "Failed to encode and write duplicates diagnostics file %@", v66, 0xCu);
    sub_22B95DEF0(v67);
    MEMORY[0x23189ADD0](v67, -1, -1);
    MEMORY[0x23189ADD0](v66, -1, -1);
  }

  else
  {
  }

LABEL_40:
  v70 = sub_22B9BBDDC(MEMORY[0x277D84F90]);
  v71 = *(v74 + 112);
  *(v74 + 112) = v70;

  v72 = *(v10 + 8);

  return v72();
}

uint64_t sub_22B9DA594(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 112) = a4;
  *(v5 + 96) = a3;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22B9DA5BC, v4, 0);
}

uint64_t sub_22B9DA5BC()
{
  v55 = v0;
  v1 = *(v0 + 88);
  if ((*(v0 + 112) & 1) == 0)
  {
    v19 = *(v0 + 96);
    sub_22BA106BC();
    v20 = sub_22B9C2E30();
    if (v20 > 3)
    {
      if ((v20 - 6) < 2 || v20 != 4)
      {
        goto LABEL_20;
      }

      v22 = "recoverableMessage";
    }

    else
    {
      if (v20 <= 1)
      {
        v21 = "ndPlayed";
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if (v20 != 2)
      {
        goto LABEL_20;
      }

      v22 = "MessageEncryptedV3";
    }

    v21 = (v22 - 32);
LABEL_18:
    if (0x800000022BA1B9C0 == (v21 | 0x8000000000000000))
    {

LABEL_21:
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v24 = sub_22BA0FEFC();
      sub_22B936CA8(v24, qword_28141AD40);
      v7 = sub_22BA0FEDC();
      v25 = sub_22BA1046C();
      if (!os_log_type_enabled(v7, v25))
      {
        goto LABEL_37;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B92A000, v7, v25, "Record id chat lock record, skipping", v9, 2u);
LABEL_36:
      MEMORY[0x23189ADD0](v9, -1, -1);
LABEL_37:

      goto LABEL_38;
    }

LABEL_20:
    v23 = sub_22BA10C6C();

    if (v23)
    {
      goto LABEL_21;
    }

    v26 = [v19 encryptedValues];
    v27 = sub_22BA0FFCC();
    v28 = [v26 objectForKey_];
    swift_unknownObjectRelease();

    if (!v28 || (*(v0 + 56) = v28, sub_22B9349C8(&unk_27D8D4F50, &unk_22BA17980), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v43 = sub_22BA0FEFC();
      sub_22B936CA8(v43, qword_28141AD40);
      v44 = v1;
      v7 = sub_22BA0FEDC();
      v45 = sub_22BA1044C();

      if (!os_log_type_enabled(v7, v45))
      {
        goto LABEL_37;
      }

      v9 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54 = v46;
      *v9 = 136315138;
      v47 = [v44 recordName];
      v48 = sub_22BA0FFFC();
      v50 = v49;

      v51 = sub_22B99153C(v48, v50, &v54);

      *(v9 + 4) = v51;
      _os_log_impl(&dword_22B92A000, v7, v45, "No GUID present for chat record %s", v9, 0xCu);
      sub_22B936C4C(v46);
      v18 = v46;
      goto LABEL_35;
    }

    v29 = *(v0 + 104);
    v31 = *(v0 + 16);
    v30 = *(v0 + 24);
    swift_beginAccess();
    v32 = *(v29 + 112);
    if (*(v32 + 16))
    {
      v33 = *(v29 + 112);

      v34 = sub_22B990A58(v31, v30);
      if (v35)
      {
        v36 = *(*(v32 + 56) + 8 * v34);

        v38 = __OFADD__(v36, 1);
        v39 = v36 + 1;
        if (v38)
        {
          __break(1u);
          return result;
        }

        swift_beginAccess();
        v40 = *(v29 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = *(v29 + 112);
        *(v29 + 112) = 0x8000000000000000;
        v42 = v39;
        goto LABEL_43;
      }
    }

    swift_beginAccess();
    v53 = *(v29 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v29 + 112);
    *(v29 + 112) = 0x8000000000000000;
    v42 = 1;
LABEL_43:
    sub_22B9BABE4(v42, v31, v30, isUniquelyReferenced_nonNull_native);

    *(v29 + 112) = v54;
    swift_endAccess();
    goto LABEL_38;
  }

  v2 = *(v0 + 88);
  if (qword_281414D30 != -1)
  {
    swift_once();
    v2 = *(v0 + 88);
  }

  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = sub_22BA0FEFC();
  sub_22B936CA8(v5, qword_28141AD40);
  sub_22B935B38(v4, v0 + 16);
  v6 = v1;
  v7 = sub_22BA0FEDC();
  v8 = sub_22BA1044C();
  sub_22B99E324(v2, v3, 1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v54 = v11;
    *v9 = 136315394;
    v12 = sub_22B9358B4((v0 + 16), *(v0 + 40));
    v13 = *v12;
    v14 = v12[1];

    sub_22B936C4C((v0 + 16));
    v15 = sub_22B99153C(v13, v14, &v54);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_22B92A000, v7, v8, "Read from %s encountered error: %@", v9, 0x16u);
    sub_22B95DEF0(v10);
    MEMORY[0x23189ADD0](v10, -1, -1);
    sub_22B936C4C(v11);
    v18 = v11;
LABEL_35:
    MEMORY[0x23189ADD0](v18, -1, -1);
    goto LABEL_36;
  }

  sub_22B936C4C((v0 + 16));
LABEL_38:
  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_22B9DAC98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22B9DACE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_22B9DAD3C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_22B9DAD68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_22B9DADB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B9DAE18(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v16 - v11;
  v13 = sub_22BA1030C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a1;
  a2 &= 1u;
  *(v14 + 56) = a2;

  sub_22B973C70(a1, a2);
  sub_22B989028(0, 0, v12, &unk_22BA19950, v14);
}

uint64_t sub_22B9DAF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 48) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  return MEMORY[0x2822009F8](sub_22B9DAF78, 0, 0);
}

uint64_t sub_22B9DAF78()
{
  sub_22BA102EC();
  *(v0 + 40) = sub_22BA102DC();
  v2 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9DB00C, v2, v1);
}

uint64_t sub_22B9DB00C()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v5(v3, v1 & 1);
  v6 = *(v0 + 8);

  return v6();
}

void sub_22B9DB08C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  if (a3)
  {
    v7 = sub_22BA0FB5C();
    LODWORD(a4) = [a4 wasMissingKeys_];

    if (!a4)
    {
      return;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  swift_beginAccess();
  *(a5 + 16) = v8;
}

uint64_t sub_22B9DB114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B9349C8(&qword_27D8D59A0, &unk_22BA19938);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - v12;
  (*(v9 + 16))(&v20 - v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  *(v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_22BA1060C();
  v16 = (a4 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  v17 = *(a4 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
  v18 = v16[4];
  sub_22B9358B4(v16, v17);
  return (*(v18 + 8))(a2, v17, v18);
}

uint64_t sub_22B9DB2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);
  sub_22B9349C8(&qword_27D8D59A0, &unk_22BA19938);
  return sub_22BA102BC();
}

uint64_t sub_22B9DB328(uint64_t a1, char a2)
{
  v5 = *(sub_22B9349C8(&qword_27D8D59A0, &unk_22BA19938) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22B9DB2C0(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_22B9DB3E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B943E68;

  return sub_22B9DAF50(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22B9DB4B8(void *a1, char a2)
{
  if (a2)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD40);
    v4 = a1;
    v5 = sub_22BA0FEDC();
    v6 = sub_22BA1044C();
    sub_22B9A7588(a1);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_22B92A000, v5, v6, "Query result for counts returned with error: %@", v7, 0xCu);
      sub_22B95DEF0(v8);
      MEMORY[0x23189ADD0](v8, -1, -1);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }
  }

  sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  return sub_22BA102BC();
}

void sub_22B9DB620()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86360], 0);
  if (!*MEMORY[0x277D86380])
  {
    __break(1u);
    goto LABEL_9;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863A0], 0);
  if (!*MEMORY[0x277D863A8])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863A8], 0);
  if (!*MEMORY[0x277D863B0])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863B0], 1);
  if (!*MEMORY[0x277D86398])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86398], 1);
  if (!*MEMORY[0x277D86390])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86390], 0);
  if (*MEMORY[0x277D86318])
  {
    xpc_dictionary_set_int64(v0, *MEMORY[0x277D86318], 750000000);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_22B9DB77C(int64_t a1, uint64_t a2, int64_t a3, char a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86288], a1);
  if ((a4 & 1) == 0)
  {
    if (*MEMORY[0x277D86298] >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = *MEMORY[0x277D86298];
    }

    xpc_dictionary_set_int64(v8, *MEMORY[0x277D86250], v9);
  }

  if ((a2 * 3600) >> 64 != (3600 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86270], 3600 * a2);
  if (!*MEMORY[0x277D86380])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D863A0], 0);
  if (!*MEMORY[0x277D863A8])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D863A8], 0);
  if (!*MEMORY[0x277D863B0])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D863B0], 1);
  if (!*MEMORY[0x277D86398])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86398], 1);
  if (*MEMORY[0x277D86390])
  {
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86390], 1);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_22B9DB944()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86360], 1);
  if (!*MEMORY[0x277D863B8])
  {
    __break(1u);
    goto LABEL_9;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863B8], 1);
  if (!*MEMORY[0x277D86380])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863A0], 0);
  if (!*MEMORY[0x277D863A8])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863A8], 0);
  if (!*MEMORY[0x277D863B0])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863B0], 0);
  if (!*MEMORY[0x277D86398])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86398], 1);
  if (*MEMORY[0x277D86390])
  {
    xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86390], 0);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_22B9DBAA8(char a1, char a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  if (!*MEMORY[0x277D86380])
  {
    __break(1u);
    goto LABEL_8;
  }

  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], a1 & 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D863A0], 0);
  if (!*MEMORY[0x277D863A8])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D863A8], 0);
  if (!*MEMORY[0x277D863B0])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D863B0], a1 & 1);
  if (!*MEMORY[0x277D86398])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);
  if (*MEMORY[0x277D86390])
  {
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86390], a2 & 1);
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_22B9DBBF0()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86360], 0);
  if (!*MEMORY[0x277D86390])
  {
    __break(1u);
    goto LABEL_6;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_int64(v0, *MEMORY[0x277D86250], *MEMORY[0x277D86298]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 0);
  if (!*MEMORY[0x277D863A8])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D863A8], 0);
  if (*MEMORY[0x277D86380])
  {
    xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86380], 1);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_22B9DBD04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return (sub_22B9DBF64)(a1, a2);
}

uint64_t sub_22B9DBDB8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B947814;

  return sub_22B9DC050(a1, a2, v6);
}

uint64_t sub_22B9DBE78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22B947A44;

  return sub_22B9E81AC(a1, a2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ImportStragglersStep.swift", 112, 2);
}

uint64_t sub_22B9DBF64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22B947CB8;

  return sub_22B9E81AC(a1, a2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ImportStragglersStep.swift", 112, 2);
}

uint64_t sub_22B9DC050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_22B9DC074, 0, 0);
}

uint64_t sub_22B9DC074()
{
  v27 = v0;
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
  if (v2)
  {
    v26[0] = 0x2E636E7973;
    v26[1] = 0xE500000000000000;
    v3 = *sub_22B9358B4((v1 + 16), *(v1 + 40));
    v4 = sub_22B9B580C();
    MEMORY[0x231899730](v4);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v5 = sub_22BA10C1C();
    MEMORY[0x231899730](v5);

    v6 = sub_22BA0FFCC();

    v7 = sub_22BA0FDAC();
    [v2 syncCoordinatorWaitingForImportToFinishWithName:v6 identifier:{v7, 0x2E636E7973, 0xE500000000000000}];
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v8 = v0[5];
  v9 = sub_22BA0FEFC();
  v0[8] = sub_22B936CA8(v9, qword_28141AD10);
  swift_unknownObjectRetain();
  v10 = sub_22BA0FEDC();
  v11 = sub_22BA1046C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315138;
    v15 = *sub_22B9358B4((v12 + 16), *(v12 + 40));
    v16 = sub_22B9B580C();
    v18 = sub_22B99153C(v16, v17, v26);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22B92A000, v10, v11, "Import Stragglers Step start for job: %s", v13, 0xCu);
    sub_22B936C4C(v14);
    MEMORY[0x23189ADD0](v14, -1, -1);
    MEMORY[0x23189ADD0](v13, -1, -1);
  }

  if (qword_2814157A8 != -1)
  {
    swift_once();
  }

  v19 = qword_28141AD98;
  v0[9] = qword_28141AD98;
  swift_beginAccess();
  v20 = *(v19 + 16);
  *(v19 + 16) = MEMORY[0x277D84F98];

  v21 = swift_task_alloc();
  v0[10] = v21;
  *v21 = v0;
  v21[1] = sub_22B9DC3A4;
  v22 = v0[6];
  v23 = v0[7];
  v24 = v0[5];

  return sub_22B9CB9CC(v24, v22);
}

uint64_t sub_22B9DC3A4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B9DC4D4, 0, 0);
  }
}

uint64_t sub_22B9DC4D4()
{
  v25 = v0;
  v1 = v0[8];
  v2 = v0[5];
  swift_unknownObjectRetain();
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315394;
    v9 = *sub_22B9358B4((v6 + 16), *(v6 + 40));
    v10 = sub_22B9B580C();
    v12 = sub_22B99153C(v10, v11, &v24);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = *(v5 + 16);

    v15 = sub_22B9C3040(v14);
    v17 = v16;

    v18 = sub_22B99153C(v15, v17, &v24);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_22B92A000, v3, v4, "Import Stragglers Step summary for job: %s, %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  v19 = *(v0[9] + 16);

  v21 = sub_22B9C3254(v20);

  v22 = v0[1];

  return v22(v21, 0);
}

uint64_t type metadata accessor for UnknownRecord()
{
  result = qword_281415C20;
  if (!qword_281415C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22B9DC72C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x614E64726F636572;
    v5 = 1684632935;
    if (a1 != 2)
    {
      v5 = 0x65636976726573;
    }

    if (a1)
    {
      v4 = 0x795464726F636572;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F697461657263;
    if (a1 != 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x615465676E616863;
    if (a1 != 4)
    {
      v2 = 0x656D614E656E6F7ALL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22B9DC858(void *a1)
{
  v3 = v1;
  v5 = sub_22B9349C8(&qword_27D8D59D8, &qword_22BA19AC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v31[-v9];
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9DDA80();
  sub_22BA10D9C();
  v12 = *v3;
  v13 = v3[1];
  v31[31] = 0;
  sub_22BA10B7C();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v31[30] = 1;
    sub_22BA10B7C();
    v16 = v3[4];
    v17 = v3[5];
    v31[29] = 2;
    sub_22BA10B7C();
    v18 = v3[6];
    v19 = v3[7];
    v31[28] = 3;
    sub_22BA10B7C();
    v20 = v3[8];
    v21 = v3[9];
    v31[27] = 4;
    sub_22BA10B7C();
    v22 = v3[10];
    v23 = v3[11];
    v31[26] = 5;
    sub_22BA10B7C();
    v24 = type metadata accessor for UnknownRecord();
    v25 = v24[10];
    v31[25] = 6;
    sub_22BA0FD8C();
    sub_22B9DDB94(&qword_27D8D5058, MEMORY[0x277CC9578]);
    sub_22BA10BAC();
    v26 = v24[11];
    v31[24] = 7;
    sub_22BA10BAC();
    v27 = (v3 + v24[12]);
    v28 = *v27;
    v29 = v27[1];
    v31[15] = 8;
    sub_22BA10B7C();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_22B9DCB58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v55 - v10;
  v12 = sub_22B9349C8(&qword_27D8D59C8, &qword_22BA19AC0);
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v55 - v15;
  v17 = type metadata accessor for UnknownRecord();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1[3];
  v22 = a1[4];
  v62 = a1;
  sub_22B9358B4(a1, v23);
  sub_22B9DDA80();
  v24 = v61;
  sub_22BA10D8C();
  if (v24)
  {
    return sub_22B936C4C(v62);
  }

  v25 = v8;
  v26 = v59;
  v27 = v60;
  v61 = v21;
  v71 = 0;
  v28 = v16;
  v29 = sub_22BA10ACC();
  v31 = v61;
  *v61 = v29;
  v31[1] = v32;
  v70 = 1;
  v31[2] = sub_22BA10ACC();
  v31[3] = v33;
  v69 = 2;
  v31[4] = sub_22BA10ACC();
  v31[5] = v34;
  v68 = 3;
  v31[6] = sub_22BA10ACC();
  v31[7] = v35;
  v67 = 4;
  v31[8] = sub_22BA10ACC();
  v31[9] = v36;
  v66 = 5;
  v31[10] = sub_22BA10ACC();
  v31[11] = v37;
  sub_22BA0FD8C();
  v65 = 6;
  v55[1] = sub_22B9DDB94(&unk_281416C00, MEMORY[0x277CC9578]);
  v56 = 0;
  sub_22BA10AFC();
  v57 = 0;
  v38 = v26;
  sub_22B935A74(v11, v31 + v17[10]);
  v64 = 7;
  v39 = v57;
  sub_22BA10AFC();
  v57 = v39;
  if (v39)
  {
    (*(v26 + 8))(v28, v27);
    v40 = 0;
    v41 = v61;
  }

  else
  {
    v41 = v61;
    sub_22B935A74(v25, v61 + v17[11]);
    v63 = 8;
    v42 = v57;
    v43 = sub_22BA10ACC();
    v57 = v42;
    if (!v42)
    {
      v52 = v43;
      v53 = v44;
      (*(v38 + 8))(v28, v27);
      v54 = (v41 + v17[12]);
      *v54 = v52;
      v54[1] = v53;
      sub_22B9DDAD4(v41, v58);
      sub_22B936C4C(v62);
      return sub_22B9DDB38(v41);
    }

    (*(v38 + 8))(v28, v27);
    v40 = 1;
  }

  v45 = v56;
  sub_22B936C4C(v62);
  v46 = v41[1];

  v47 = v41[3];

  v48 = v41[5];

  v49 = v41[7];

  v50 = v41[9];

  if (!v45)
  {
    v51 = v41[11];
  }

  result = sub_22B936BEC(v41 + v17[10], &unk_27D8D4A90, &qword_22BA126A0);
  if (v40)
  {
    return sub_22B936BEC(v41 + v17[11], &unk_27D8D4A90, &qword_22BA126A0);
  }

  return result;
}

uint64_t sub_22B9DD178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B9DDCF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B9DD1A0(uint64_t a1)
{
  v2 = sub_22B9DDA80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9DD1DC(uint64_t a1)
{
  v2 = sub_22B9DDA80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9DD218()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_22B9DD248()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_22B9DD2C8(uint64_t a1)
{
  *(a1 + 8) = sub_22B9DDB94(&qword_27D8D59A8, type metadata accessor for UnknownRecord);
  result = sub_22B9DDB94(&qword_27D8D59B0, type metadata accessor for UnknownRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B9DD34C(uint64_t *a1, void *a2)
{
  v4 = sub_22BA0FD8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v69[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v69[-v17];
  v19 = sub_22B9349C8(&qword_27D8D59B8, &qword_22BA19AB8);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v69[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v69[-v27];
  v29 = a1[1];
  v30 = a2[1];
  if (v29)
  {
    if (!v30)
    {
      return 0;
    }

    if (*a1 != *a2 || v29 != v30)
    {
      v31 = v26;
      v32 = *a1;
      v33 = sub_22BA10C6C();
      v26 = v31;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v30)
  {
    return 0;
  }

  v34 = a1[3];
  v35 = a2[3];
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v34 != v35)
    {
      v36 = v26;
      v37 = a1[2];
      v38 = sub_22BA10C6C();
      v26 = v36;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v35)
  {
    return 0;
  }

  v39 = a1[5];
  v40 = a2[5];
  if (v39)
  {
    if (!v40)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v39 != v40)
    {
      v41 = v26;
      v42 = a1[4];
      v43 = sub_22BA10C6C();
      v26 = v41;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  v44 = a1[7];
  v45 = a2[7];
  if (v44)
  {
    if (!v45)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v44 != v45)
    {
      v46 = v26;
      v47 = a1[6];
      v48 = sub_22BA10C6C();
      v26 = v46;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v45)
  {
    return 0;
  }

  v49 = a1[9];
  v50 = a2[9];
  if (v49)
  {
    if (!v50)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v49 != v50)
    {
      v51 = v26;
      v52 = a1[8];
      v53 = sub_22BA10C6C();
      v26 = v51;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v50)
  {
    return 0;
  }

  v54 = a1[11];
  v55 = a2[11];
  if (v54)
  {
    if (!v55)
    {
      return 0;
    }

    v75 = v26;
    if ((a1[10] != a2[10] || v54 != v55) && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v75 = v26;
    if (v55)
    {
      return 0;
    }
  }

  v72 = type metadata accessor for UnknownRecord();
  v74 = v72[10];
  v56 = *(v75 + 48);
  sub_22B94498C(v74 + a1, v28);
  v73 = v56;
  sub_22B94498C(v74 + a2, &v56[v28]);
  v74 = *(v5 + 48);
  if (v74(v28, 1, v4) == 1)
  {
    if (v74(&v73[v28], 1, v4) == 1)
    {
      v71 = v5 + 48;
      sub_22B936BEC(v28, &unk_27D8D4A90, &qword_22BA126A0);
      goto LABEL_50;
    }

LABEL_48:
    v57 = v28;
LABEL_56:
    sub_22B936BEC(v57, &qword_27D8D59B8, &qword_22BA19AB8);
    return 0;
  }

  sub_22B94498C(v28, v18);
  if (v74(&v73[v28], 1, v4) == 1)
  {
    (*(v5 + 8))(v18, v4);
    goto LABEL_48;
  }

  v71 = v5 + 48;
  (*(v5 + 32))(v9, &v73[v28], v4);
  sub_22B9DDB94(&qword_27D8D59C0, MEMORY[0x277CC9578]);
  v70 = sub_22BA0FFBC();
  v73 = *(v5 + 8);
  (v73)(v9, v4);
  (v73)(v18, v4);
  sub_22B936BEC(v28, &unk_27D8D4A90, &qword_22BA126A0);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v58 = v72[11];
  v59 = *(v75 + 48);
  sub_22B94498C(a1 + v58, v24);
  sub_22B94498C(a2 + v58, &v24[v59]);
  v60 = v74;
  if (v74(v24, 1, v4) != 1)
  {
    sub_22B94498C(v24, v15);
    if (v60(&v24[v59], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v24[v59], v4);
      sub_22B9DDB94(&qword_27D8D59C0, MEMORY[0x277CC9578]);
      v62 = sub_22BA0FFBC();
      v63 = *(v5 + 8);
      v63(v9, v4);
      v63(v15, v4);
      sub_22B936BEC(v24, &unk_27D8D4A90, &qword_22BA126A0);
      if ((v62 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_60;
    }

    (*(v5 + 8))(v15, v4);
    goto LABEL_55;
  }

  if (v60(&v24[v59], 1, v4) != 1)
  {
LABEL_55:
    v57 = v24;
    goto LABEL_56;
  }

  sub_22B936BEC(v24, &unk_27D8D4A90, &qword_22BA126A0);
LABEL_60:
  v64 = v72[12];
  v65 = (a1 + v64);
  v66 = *(a1 + v64 + 8);
  v67 = (a2 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (v68 && (*v65 == *v67 && v66 == v68 || (sub_22BA10C6C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v68)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_22B9DDA80()
{
  result = qword_27D8D59D0;
  if (!qword_27D8D59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D59D0);
  }

  return result;
}

uint64_t sub_22B9DDAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9DDB38(uint64_t a1)
{
  v2 = type metadata accessor for UnknownRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B9DDB94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B9DDBF0()
{
  result = qword_27D8D59E0;
  if (!qword_27D8D59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D59E0);
  }

  return result;
}

unint64_t sub_22B9DDC48()
{
  result = qword_27D8D59E8;
  if (!qword_27D8D59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D59E8);
  }

  return result;
}

unint64_t sub_22B9DDCA0()
{
  result = qword_27D8D59F0;
  if (!qword_27D8D59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D59F0);
  }

  return result;
}

uint64_t sub_22B9DDCF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_22BA10C6C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x795464726F636572 && a2 == 0xEA00000000006570 || (sub_22BA10C6C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (sub_22BA10C6C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x615465676E616863 && a2 == 0xE900000000000067 || (sub_22BA10C6C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000 || (sub_22BA10C6C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_22BA10C6C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1BAE0 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1BB00 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_22BA10C6C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22B9DDFF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4C5255656C6966;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xE900000000000065;
    if (a1 == 2)
    {
      v5 = 0x727574616E676973;
    }

    else
    {
      v5 = 1684632949;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 1702521203;
    }

    else
    {
      v5 = 0x4C5255656C6966;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x727574616E676973;
  v9 = 0xE900000000000065;
  if (a2 != 2)
  {
    v8 = 1684632949;
    v9 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 1702521203;
    v7 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22BA10C6C();
  }

  return v12 & 1;
}

uint64_t sub_22B9DE118(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE400000000000000;
    v11 = 0x615465676E616863;
    v12 = 0xE900000000000067;
    if (a1 != 2)
    {
      v11 = 0x614E64726F636572;
      v12 = 0xEA0000000000656DLL;
    }

    v13 = 6518387;
    if (a1)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v13 = 1684632935;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0x6E6F697461657263;
    v4 = 0xEC00000065746144;
    v5 = 0x800000022BA1BAE0;
    if (a1 != 7)
    {
      v5 = 0x800000022BA1BB00;
    }

    if (a1 != 6)
    {
      v3 = 0xD000000000000010;
      v4 = v5;
    }

    v6 = 0x795464726F636572;
    v7 = 0xEA00000000006570;
    if (a1 != 4)
    {
      v6 = 0x656D614E656E6F7ALL;
      v7 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE900000000000067;
        if (v8 != 0x615465676E616863)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xEA0000000000656DLL;
        if (v8 != 0x614E64726F636572)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE300000000000000;
      if (v8 != 6518387)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v8 != 1684632935)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xEA00000000006570;
      if (v8 != 0x795464726F636572)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE800000000000000;
      if (v8 != 0x656D614E656E6F7ALL)
      {
LABEL_52:
        v16 = sub_22BA10C6C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xEC00000065746144;
    if (v8 != 0x6E6F697461657263)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v14 = "modificationDate";
    }

    else
    {
      v14 = "modifiedByDevice";
    }

    v15 = (v14 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000010)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_22B9DE3E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000032;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000034;
  if (a1 == 2)
  {
    v5 = 0xE900000000000033;
  }

  else
  {
    v5 = 0xE900000000000034;
  }

  if (a1)
  {
    v3 = 0xE900000000000032;
  }

  if (a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 2)
  {
    v4 = 0xE900000000000033;
  }

  if (!a2)
  {
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  if (v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B9DE4A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7265646E6573;
    }

    else
    {
      v4 = 1701669236;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6469754772;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1682531172;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x444974616863;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7265646E6573;
    }

    else
    {
      v9 = 1701669236;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1682531172;
    if (a2 != 3)
    {
      v6 = 0x444974616863;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6469754772;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_22BA10C6C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_22B9DE600(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v5 = 0xD000000000000012;
    v6 = 0x800000022BA1B9F0;
    if (a1 == 1)
    {
      v5 = 0x72636E4574616863;
      v6 = 0xEF32766465747079;
    }

    if (a1)
    {
      v3 = v5;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0x800000022BA1B9C0;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v3 = 0x556567617373656DLL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 5)
    {
      v4 = 0xEF31566574616470;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 3)
  {
    v3 = 0x656D686361747461;
    v4 = 0xEA0000000000746ELL;
  }

  else
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000022BA1BA10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x72636E4574616863;
      }

      else
      {
        v8 = 0xD000000000000012;
      }

      if (a2 == 1)
      {
        v7 = 0xEF32766465747079;
      }

      else
      {
        v7 = 0x800000022BA1B9F0;
      }

      if (v3 != v8)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v9 = "chatLockRecordType";
    goto LABEL_39;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v7 = 0xEA0000000000746ELL;
      if (v3 != 0x656D686361747461)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v9 = "recoverableMessage";
LABEL_39:
    v7 = (v9 - 32) | 0x8000000000000000;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (a2 == 5)
  {
    v7 = 0xEF31566574616470;
    if (v3 != 0x556567617373656DLL)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_44:
      v10 = sub_22BA10C6C();
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v4 != v7)
  {
    goto LABEL_44;
  }

  v10 = 1;
LABEL_45:

  return v10 & 1;
}

uint64_t sub_22B9DE858(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064756F6C4369;
  v3 = 0x6D6F724664616572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x646574726F706D69;
    }

    if (v4 == 2)
    {
      v6 = 0x800000022BA1C230;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x546E657474697277;
    }

    else
    {
      v5 = 0x6D6F724664616572;
    }

    if (v4)
    {
      v6 = 0xEF64756F6C43696FLL;
    }

    else
    {
      v6 = 0xEE0064756F6C4369;
    }
  }

  v7 = 0xD000000000000011;
  v8 = 0x800000022BA1C230;
  if (a2 != 2)
  {
    v7 = 0x646574726F706D69;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x546E657474697277;
    v2 = 0xEF64756F6C43696FLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22BA10C6C();
  }

  return v11 & 1;
}

uint64_t sub_22B9DE9BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x7274656D656C6554;
    v12 = 0xE900000000000079;
    v13 = 0x6172745374736554;
    v14 = 0xEE007372656C6767;
    if (a1 != 8)
    {
      v13 = 1953719636;
      v14 = 0xE400000000000000;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0x6C6E4F746E756F43;
    v16 = 0xE900000000000079;
    if (a1 != 5)
    {
      v15 = 0x74696E4972657355;
      v16 = 0xED00006465746169;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE800000000000000;
    v5 = 0x6369646F69726550;
    v6 = 0xE600000000000000;
    v7 = 0x70756B636142;
    if (a1 != 3)
    {
      v7 = 0xD000000000000017;
      v6 = 0x800000022BA1BD10;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x6C6C69666B636142;
    if (a1)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v8 = 0x6C616974696E49;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x6C6C69666B636142)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x6C616974696E49)
        {
          goto LABEL_57;
        }
      }
    }

    else if (a2 == 2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x6369646F69726550)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 3)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x70756B636142)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0x800000022BA1BD10;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_57;
      }
    }

    goto LABEL_55;
  }

  if (a2 > 6u)
  {
    if (a2 != 7)
    {
      if (a2 == 8)
      {
        v17 = 0xEE007372656C6767;
        if (v9 != 0x6172745374736554)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE400000000000000;
        if (v9 != 1953719636)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_55;
    }

    v18 = 0x7274656D656C6554;
LABEL_46:
    v17 = 0xE900000000000079;
    if (v9 != v18)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  if (a2 == 5)
  {
    v18 = 0x6C6E4F746E756F43;
    goto LABEL_46;
  }

  v17 = 0xED00006465746169;
  if (v9 != 0x74696E4972657355)
  {
LABEL_57:
    v19 = sub_22BA10C6C();
    goto LABEL_58;
  }

LABEL_55:
  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v19 = 1;
LABEL_58:

  return v19 & 1;
}

uint64_t sub_22B9DECE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000636E79;
  v3 = 0x536C616974696E69;
  if (a1 <= 3u)
  {
    v4 = 0x6369646F69726570;
    v5 = 0xEC000000636E7953;
    if (a1 != 2)
    {
      v4 = 0x795370756B636162;
      v5 = 0xEA0000000000636ELL;
    }

    v8 = 0x6C6C69666B636162;
    v9 = 0xEC000000636E7953;
    if (!a1)
    {
      v8 = 0x536C616974696E69;
      v9 = 0xEB00000000636E79;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x74696E4972657375;
    v5 = 0xED00006465746169;
    v6 = 0x7274656D656C6574;
    v7 = 0xE900000000000079;
    if (a1 != 7)
    {
      v6 = 0x7361685074736574;
      v7 = 0xE900000000000065;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0xD000000000000017;
    v9 = 0x800000022BA1BB80;
    if (a1 != 4)
    {
      v8 = 0x6C6E4F746E756F63;
      v9 = 0xED0000636E795379;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x800000022BA1BB80;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      v14 = 0x6C6E4F746E756F63;
      v15 = 0x636E795379;
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v2 = 0xE900000000000079;
          if (v11 != 0x7274656D656C6574)
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

        v3 = 0x7361685074736574;
        v2 = 0xE900000000000065;
        goto LABEL_40;
      }

      v14 = 0x74696E4972657375;
      v15 = 0x6465746169;
    }

    v2 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v2 = 0xEA0000000000636ELL;
      if (v11 != 0x795370756B636162)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    v13 = 0x6369646F69726570;
    goto LABEL_31;
  }

  if (a2)
  {
    v13 = 0x6C6C69666B636162;
LABEL_31:
    v2 = 0xEC000000636E7953;
    if (v11 != v13)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (v11 != v3)
  {
LABEL_45:
    v16 = sub_22BA10C6C();
    goto LABEL_46;
  }

LABEL_41:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_22B9DEFE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x656D686361747461;
  v5 = 0xEB0000000073746ELL;
  v6 = 0xD000000000000013;
  v7 = 0x800000022BA1BBF0;
  if (a1 != 4)
  {
    v6 = 0x556567617373656DLL;
    v7 = 0xEE00736574616470;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x7374616863;
  if (a1 != 1)
  {
    v9 = 0x736567617373656DLL;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x73736572676F7270;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEB0000000073746ELL;
      if (v10 != 0x656D686361747461)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x800000022BA1BBF0;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00736574616470;
      if (v10 != 0x556567617373656DLL)
      {
LABEL_34:
        v13 = sub_22BA10C6C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7374616863)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x736567617373656DLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x73736572676F7270)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

id SyncResumer.init(delegate:syncStateManager:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___MCSSyncResumer_initialRestartDateKey];
  *v3 = 0xD000000000000014;
  *(v3 + 1) = 0x800000022BA1E5E0;
  *&v2[OBJC_IVAR___MCSSyncResumer_minTimeBetweenInitialRestarts] = 0x408C200000000000;
  v4 = &v2[OBJC_IVAR___MCSSyncResumer_backfillRestartDateKey];
  *v4 = 0xD000000000000012;
  *(v4 + 1) = 0x800000022BA1E600;
  *&v2[OBJC_IVAR___MCSSyncResumer_minTimeBetweenBackfillRestarts] = 0x40AC200000000000;
  *&v2[OBJC_IVAR___MCSSyncResumer_delegate] = a1;
  *&v2[OBJC_IVAR___MCSSyncResumer_syncStateManager] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SyncResumer();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_22B9DF490(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 57) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 56) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  sub_22BA102EC();
  v8 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9DF554, v8, v7);
}

uint64_t sub_22B9DF554()
{
  v1 = *(v0 + 57);
  v2 = *(*(v0 + 40) + OBJC_IVAR___MCSSyncResumer_delegate);
  if (v1 > 8)
  {
    v3 = 99;
  }

  else
  {
    v3 = aXyzCcC_0[v1];
  }

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22B9E0EB0;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *(v0 + 56);

  return sub_22B9BDBA8(v2, v7, v5, v8, v6, v3, 1);
}

uint64_t sub_22B9DF640(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 56) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  sub_22BA102EC();
  v7 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9DF700, v7, v6);
}

uint64_t sub_22B9DF700()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR___MCSSyncResumer_delegate);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_22B9DF7C8;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 56);

  return sub_22B9BDBA8(v1, v5, v3, v6, v4, 89, 1);
}

uint64_t sub_22B9DF7C8()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id SyncResumer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SyncResumer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncResumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B9DFC08()
{
  if (qword_281414B60 != -1)
  {
    swift_once();
  }

  v0 = qword_28141ACE8;
  if ([qword_28141ACE8 valueForKey_])
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      v1 = v4;
      goto LABEL_11;
    }
  }

  else
  {
    sub_22B936BEC(&v7, &unk_27D8D5A30, qword_22BA13390);
  }

  v1 = 0;
LABEL_11:
  if ([v0 valueForKey_])
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      v2 = v4;
      goto LABEL_19;
    }
  }

  else
  {
    sub_22B936BEC(&v7, &unk_27D8D5A30, qword_22BA13390);
  }

  v2 = 0;
LABEL_19:
  if ([v0 valueForKey_])
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      if (((v4 | v2) & 1) == 0)
      {
        return v1;
      }

      return 1;
    }
  }

  else
  {
    sub_22B936BEC(&v7, &unk_27D8D5A30, qword_22BA13390);
  }

  if (v2)
  {
    return 1;
  }

  return v1;
}

uint64_t sub_22B9DFE58(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v48[-v9];
  v11 = sub_22BA0FD8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v48[-v20];
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v48[-v23];
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v25 = qword_28141ACF0;
  v26 = sub_22BA0FFCC();
  v27 = [v25 valueForKey_];

  if (v27)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54[0] = v52;
  v54[1] = v53;
  if (!*(&v53 + 1))
  {
    sub_22B936BEC(v54, &unk_27D8D5A30, qword_22BA13390);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_19;
  }

  v28 = swift_dynamicCast();
  (*(v12 + 56))(v10, v28 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_19:
    sub_22B936BEC(v10, &unk_27D8D4A90, &qword_22BA126A0);
    return 1;
  }

  (*(v12 + 32))(v24, v10, v11);
  sub_22BA0FD7C();
  sub_22BA0FCCC();
  v30 = v29;
  sub_22BA0FCCC();
  v32 = v30 - v31;
  v51 = v32 >= a3;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v33 = sub_22BA0FEFC();
  sub_22B936CA8(v33, qword_28141AD40);
  (*(v12 + 16))(v17, v24, v11);

  v34 = sub_22BA0FEDC();
  v35 = sub_22BA1042C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v54[0] = v50;
    *v36 = 136315906;
    *(v36 + 4) = sub_22B99153C(a1, a2, v54);
    *(v36 + 12) = 2080;
    if (v32 < a3)
    {
      v37 = 28494;
    }

    else
    {
      v37 = 7562585;
    }

    v49 = v35;
    if (v32 < a3)
    {
      v38 = 0xE200000000000000;
    }

    else
    {
      v38 = 0xE300000000000000;
    }

    v39 = sub_22B99153C(v37, v38, v54);

    *(v36 + 14) = v39;
    *(v36 + 22) = 2048;
    *(v36 + 24) = v32;
    *(v36 + 32) = 2080;
    sub_22B9E0E58();
    v40 = sub_22BA10C1C();
    v42 = v41;
    v43 = *(v12 + 8);
    v43(v17, v11);
    v44 = sub_22B99153C(v40, v42, v54);

    *(v36 + 34) = v44;
    _os_log_impl(&dword_22B92A000, v34, v49, "Will restart %s %s. Has been %f secs since last restart %s", v36, 0x2Au);
    v45 = v50;
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v45, -1, -1);
    MEMORY[0x23189ADD0](v36, -1, -1);

    v43(v21, v11);
    v43(v24, v11);
    return v51;
  }

  else
  {

    v47 = *(v12 + 8);
    v47(v17, v11);
    v47(v21, v11);
    v47(v24, v11);
    return v51;
  }
}

void sub_22B9E03CC(uint64_t a1, unint64_t a2)
{
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v4 = qword_28141ACF0;
  v5 = sub_22BA0FFCC();
  v6 = [v4 stringForKey_];

  if (v6)
  {
    v7 = sub_22BA0FFFC();
    v9 = v8;

    if ((v9 & 0x2000000000000000) == 0)
    {
      if ((v7 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  if ((v9 & 0xF00000000000000) == 0)
  {
LABEL_12:

    v9 = 0xE800000000000000;
    v7 = 0x6C6C69466B636142;
    goto LABEL_13;
  }

LABEL_9:
  if (v7 == 0x6369646F69726550 && v9 == 0xE800000000000000 || (sub_22BA10C6C() & 1) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  type metadata accessor for SyncCoordinator();

  static SyncCoordinator.initiateSync(for:delegate:forceRunNow:)(v7, v9, 0, 0);

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v10 = sub_22BA0FEFC();
  sub_22B936CA8(v10, qword_28141AD40);

  oslog = sub_22BA0FEDC();
  v11 = sub_22BA1046C();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315650;

    v14 = sub_22B99153C(v7, v9, v20);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_22B99153C(a1, a2, v20);
    *(v12 + 22) = 2080;
    v15 = sub_22BA0FF7C();
    v17 = v16;

    v18 = sub_22B99153C(v15, v17, v20);

    *(v12 + 24) = v18;
    _os_log_impl(&dword_22B92A000, oslog, v11, "Resuming %s from key %s %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v13, -1, -1);
    MEMORY[0x23189ADD0](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22B9E095C(void *a1, const char *a2, uint64_t *a3)
{
  if (qword_281414B68 != -1)
  {
    v15 = a1;
    swift_once();
    a1 = v15;
  }

  v5 = qword_28141ACF0;
  v6 = *a1;
  result = [qword_28141ACF0 BOOLForKey_];
  if (result)
  {
    [v5 removeObjectForKey_];
    result = sub_22B92DA70(1u, 0);
    if (result)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v8 = sub_22BA0FEFC();
      sub_22B936CA8(v8, qword_28141AD40);
      v9 = sub_22BA0FEDC();
      v10 = sub_22BA1046C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_22B92A000, v9, v10, a2, v11, 2u);
        MEMORY[0x23189ADD0](v11, -1, -1);
      }

      v12 = *a3;
      v13 = sub_22BA0FFFC();
      sub_22B9E03CC(v13, v14);
    }
  }

  return result;
}

unint64_t sub_22B9E0AFC()
{
  result = qword_281414B30;
  if (!qword_281414B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414B30);
  }

  return result;
}

uint64_t sub_22B9E0B64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B943E68;

  return sub_22B9DF640(a1, a2, a3, a4, v10);
}

uint64_t sub_22B9E0C28(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9DF490(a1, a2, a3, a4, v10, v11);
}

unint64_t sub_22B9E0E58()
{
  result = qword_281416BF0;
  if (!qword_281416BF0)
  {
    sub_22BA0FD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416BF0);
  }

  return result;
}

uint64_t sub_22B9E0EBC(__int16 a1)
{
  v1 = HIBYTE(a1);
  BYTE8(v3) = 0;
  sub_22BA108FC();
  MEMORY[0x231899730](0x536B726F7774656ELL, 0xEF203D2065746174);
  sub_22BA10A2C();
  MEMORY[0x231899730](0x537265776F70202CLL, 0xEF203D2065746174);
  *&v3 = v1 & 1;
  sub_22BA10A2C();
  return *(&v3 + 1);
}

uint64_t sub_22B9E0FD8()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_22B9E0EBC(v1 | *v0);
}

uint64_t sub_22B9E0FF4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isDeviceOnWifi];
  v2 = [v0 isDeviceOnData];

  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v0 isDeviceCharging];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 256;
  }

  if (v1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3;
  }

  return v5 | v6;
}

uint64_t getEnumTagSinglePayload for DeviceState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B9E1228()
{
  result = qword_27D8D5AA0;
  if (!qword_27D8D5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AA0);
  }

  return result;
}

unint64_t sub_22B9E1280()
{
  result = qword_27D8D5AA8;
  if (!qword_27D8D5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AA8);
  }

  return result;
}

uint64_t sub_22B9E1370(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22BA0FEFC();
  sub_22B9C40C0(v3, a2);
  sub_22B936CA8(v3, a2);
  sub_22BA0FECC();
  return sub_22BA0FEEC();
}

unint64_t sub_22B9E13D8(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA153C0;
  result = *MEMORY[0x277D44030];
  if (!*MEMORY[0x277D44030])
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = sub_22BA0FFFC();
  v19 = MEMORY[0x277D849A8];
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  *(inited + 72) = v19;
  *(inited + 48) = a1;
  result = *MEMORY[0x277D44040];
  if (!*MEMORY[0x277D44040])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = sub_22BA0FFFC();
  v22 = MEMORY[0x277D83B88];
  *(inited + 80) = v21;
  *(inited + 88) = v23;
  *(inited + 120) = v22;
  *(inited + 96) = a2;
  result = *MEMORY[0x277D44080];
  if (!*MEMORY[0x277D44080])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(inited + 128) = sub_22BA0FFFC();
  *(inited + 136) = v24;
  *(inited + 168) = v22;
  *(inited + 144) = a3;
  result = *MEMORY[0x277D44010];
  if (!*MEMORY[0x277D44010])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 176) = sub_22BA0FFFC();
  *(inited + 184) = v25;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = a4 & 1;
  result = *MEMORY[0x277D44028];
  if (!*MEMORY[0x277D44028])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 224) = sub_22BA0FFFC();
  *(inited + 232) = v26;
  v27 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = a5;
  *(inited + 248) = a6;

  v28 = sub_22B9BBA8C(inited);
  swift_setDeallocating();
  sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
  swift_arrayDestroy();
  if (!a8)
  {
    return v28;
  }

  result = *MEMORY[0x277D44070];
  if (*MEMORY[0x277D44070])
  {
    v29 = sub_22BA0FFFC();
    v31 = v30;
    v35 = v27;
    *&v34 = a7;
    *(&v34 + 1) = a8;
    sub_22B936C98(&v34, v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B9BAE64(v33, v29, v31, isUniquelyReferenced_nonNull_native);

    return v28;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_22B9E15F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA13410;
  result = *MEMORY[0x277D44090];
  if (*MEMORY[0x277D44090])
  {
    *(inited + 32) = sub_22BA0FFFC();
    *(inited + 40) = v10;
    v11 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    result = *MEMORY[0x277D44098];
    if (*MEMORY[0x277D44098])
    {
      *(inited + 80) = sub_22BA0FFFC();
      *(inited + 88) = v12;
      *(inited + 120) = v11;
      *(inited + 96) = a3;
      *(inited + 104) = a4;

      v13 = sub_22B9BBA8C(inited);
      swift_setDeallocating();
      sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
      swift_arrayDestroy();
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22B9E1700(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    v7 = [v6 associatedMessageGuid];
    [v4 setAssociatedMessageGUID_];

    v8 = [v6 associatedMessageType];
    [v4 setAssociatedMessageType_];
    v9 = [v6 associatedMessageRangeLocation];
    v10 = [v6 associatedMessageRangeLength];

    [v4 setAssociatedMessageRange_];
    if (a2)
    {
      v11 = a2;
      if ([v11 hasAssociatedMessageEmoji])
      {
        v12 = [v11 associatedMessageEmoji];
        if (v12)
        {
          v13 = v12;
          sub_22BA0FFFC();

          osloga = sub_22BA0FFCC();

          v14 = osloga;
LABEL_12:
          [v4 setAssociatedMessageEmoji_];
          goto LABEL_13;
        }
      }
    }

    v14 = 0;
    goto LABEL_12;
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v17 = sub_22BA0FEFC();
  sub_22B936CA8(v17, qword_28141AD10);

  oslog = sub_22BA0FEDC();
  v18 = sub_22BA1044C();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_22B99153C(a3, a4, &v23);
    _os_log_impl(&dword_22B92A000, oslog, v18, "No Proto for IMAssociatedMessageItem %s", v19, 0xCu);
    sub_22B936C4C(v20);
    MEMORY[0x23189ADD0](v20, -1, -1);
    MEMORY[0x23189ADD0](v19, -1, -1);
  }

LABEL_13:
}

void sub_22B9E199C(uint64_t a1)
{
  v2 = type metadata accessor for MessageRecord();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22B9E1B48();
  sub_22B936918(a1, v7);
  v8 = sub_22B96631C(v7);
  v9 = a1 + *(v3 + 144);
  v10 = *v9;
  if (*v9 != 1)
  {
    v12 = *(v9 + 8);
    v11 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = v8;
    sub_22B9E1B94(v10, v12, v11, v13);
    v15 = [v14 guid];
    if (v15)
    {
      v16 = v15;
      v17 = sub_22BA0FFFC();
      v19 = v18;

      sub_22B966A88(v10, v12, v11, v13, v17, v19);

      v20 = [v14 guid];

      if (v20)
      {
        v21 = sub_22BA0FFFC();
        v23 = v22;

        sub_22B9E1700(v10, v13, v21, v23);

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

unint64_t sub_22B9E1B48()
{
  result = qword_27D8D5AB0;
  if (!qword_27D8D5AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8D5AB0);
  }

  return result;
}

id sub_22B9E1B94(id result, void *a2, void *a3, void *a4)
{
  if (result != 1)
  {
    v6 = result;
    v7 = a4;
    v8 = v6;
    v9 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_22B9E1BF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B9E1C88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_22B9E1C44();
}

unint64_t sub_22B9E1C94()
{
  result = qword_281414A18;
  if (!qword_281414A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414A18);
  }

  return result;
}

void sub_22B9E1CEC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 data];
  if (v4)
  {
    v24 = v4;
    sub_22B99C3C8(a1);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD10);
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22B92A000, v6, v7, "Unable to get domain model, returning .unknown", v8, 2u);
      MEMORY[0x23189ADD0](v8, -1, -1);
    }

    v9 = [v2 recordName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22BA0FFFC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = [v2 recordType];
    if (v14)
    {
      v15 = v14;
      v16 = sub_22BA0FFFC();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 16) = v16;
    *(a1 + 24) = v18;
    v19 = type metadata accessor for UnknownRecord();
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    v20 = v19[10];
    v21 = sub_22BA0FD8C();
    v22 = *(*(v21 - 8) + 56);
    v22(a1 + v20, 1, 1, v21);
    v22(a1 + v19[11], 1, 1, v21);
    v23 = (a1 + v19[12]);
    type metadata accessor for DatabaseRecord();
    *v23 = 0;
    v23[1] = 0;

    swift_storeEnumTagMultiPayload();
  }
}

uint64_t dispatch thunk of static IMDaemonCoreBridge.indexMessageGUIDs(_:lane:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22B945AC8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of static IMDaemonCoreBridge.indexChatGUIDs(_:lane:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22B943E68;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of static IMDaemonCoreBridge.syncReportDictionary(attemptCount:wasSuccessful:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v15 = (*(a4 + 312) + **(a4 + 312));
  v11 = *(*(a4 + 312) + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B9B1A0C;
  v13.n128_f64[0] = a5;

  return v15(a1, a2, a3, a4, v13);
}

unint64_t sub_22B9E2648()
{
  result = qword_27D8D5AB8;
  if (!qword_27D8D5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AB8);
  }

  return result;
}

unint64_t sub_22B9E269C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000012;
    v6 = 0xD000000000000018;
    if (a1 != 8)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000013;
    if (a1 == 5)
    {
      v7 = 0x656D686361747461;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x61746F5474616863;
    v2 = 0x546567617373656DLL;
    v3 = 0x4C6567617373656DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6576694C74616863;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22B9E280C(void *a1)
{
  v3 = v1;
  v5 = sub_22B9349C8(&qword_27D8D5AD0, &qword_22BA1A048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23[-v9];
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9E37CC();
  sub_22BA10D9C();
  v12 = *v3;
  v23[15] = 0;
  sub_22BA10BFC();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v13 = v3[1];
  v23[14] = 1;
  sub_22BA10BFC();
  v14 = v3[2];
  v23[13] = 2;
  sub_22BA10BFC();
  v15 = v3[3];
  v23[12] = 3;
  sub_22BA10BFC();
  v16 = v3[4];
  v23[11] = 4;
  sub_22BA10BFC();
  v17 = v3[5];
  v23[10] = 5;
  sub_22BA10BFC();
  v18 = v3[6];
  v23[9] = 6;
  sub_22BA10BFC();
  v19 = v3[7];
  v23[8] = 7;
  sub_22BA10BFC();
  v20 = v3[8];
  v23[7] = 8;
  sub_22BA10BFC();
  v22 = v3[9];
  v23[6] = 9;
  sub_22BA10BFC();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_22B9E2A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B9E31A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B9E2AC8(uint64_t a1)
{
  v2 = sub_22B9E37CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9E2B04(uint64_t a1)
{
  v2 = sub_22B9E37CC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_22B9E2B40@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22B9E34F8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_22B9E2BA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result)
  {
    if (!*(result + 16))
    {
      v15 = 0;
      v9 = 0;
      v6 = 0;
      v12 = 0;
      goto LABEL_23;
    }

    v4 = sub_22B990A58(0x616E614D74616863, 0xEF656E6F5A656574);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      if (*(v2 + 16))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = 0;
      if (*(v2 + 16))
      {
LABEL_5:
        v7 = sub_22B990A58(0xD000000000000012, 0x800000022BA1C0C0);
        if (v8)
        {
          v9 = *(*(v2 + 56) + 8 * v7);

          if (*(v2 + 16))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v9 = 0;
          if (*(v2 + 16))
          {
LABEL_7:
            v10 = sub_22B990A58(0xD000000000000015, 0x800000022BA1C0E0);
            if (v11)
            {
              v12 = *(*(v2 + 56) + 8 * v10);

              if (*(v2 + 16))
              {
LABEL_9:
                v13 = sub_22B990A58(0xD000000000000011, 0x800000022BA1C100);
                if (v14)
                {
                  v15 = *(*(v2 + 56) + 8 * v13);

                  if (!*(v2 + 16))
                  {
                    goto LABEL_23;
                  }
                }

                else
                {
                  v15 = 0;
                  if (!*(v2 + 16))
                  {
                    goto LABEL_23;
                  }
                }

                v26 = sub_22B990A58(0xD00000000000001CLL, 0x800000022BA1C120);
                if (v27)
                {
                  v28 = *(*(v2 + 56) + 8 * v26);

                  goto LABEL_24;
                }

LABEL_23:
                v28 = 0;
LABEL_24:

                if (!v6)
                {
                  v50 = 0;
                  v51 = 0;
                  if (v9)
                  {
                    goto LABEL_40;
                  }

                  goto LABEL_30;
                }

                if (*(v6 + 16))
                {
                  v29 = sub_22B990A58(0x65725F6C61746F74, 0xED00007364726F63);
                  if (v30)
                  {
                    v51 = *(*(v6 + 56) + 8 * v29);
                    if (!*(v6 + 16))
                    {
                      goto LABEL_38;
                    }
                  }

                  else
                  {
                    v51 = 0;
                    if (!*(v6 + 16))
                    {
                      goto LABEL_38;
                    }
                  }

                  v31 = sub_22B990A58(0x6365725F6576696CLL, 0xEC0000007364726FLL);
                  if (v32)
                  {
                    v50 = *(*(v6 + 56) + 8 * v31);
                    goto LABEL_39;
                  }
                }

                else
                {
                  v51 = 0;
                }

LABEL_38:
                v50 = 0;
LABEL_39:

                if (v9)
                {
LABEL_40:
                  if (*(v9 + 16))
                  {
                    v33 = sub_22B990A58(0x65725F6C61746F74, 0xED00007364726F63);
                    if (v34)
                    {
                      v49 = *(*(v9 + 56) + 8 * v33);
                      if (!*(v9 + 16))
                      {
                        goto LABEL_48;
                      }
                    }

                    else
                    {
                      v49 = 0;
                      if (!*(v9 + 16))
                      {
                        goto LABEL_48;
                      }
                    }

                    v35 = sub_22B990A58(0x6365725F6576696CLL, 0xEC0000007364726FLL);
                    if (v36)
                    {
                      v19 = *(*(v9 + 56) + 8 * v35);
                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    v49 = 0;
                  }

LABEL_48:
                  v19 = 0;
LABEL_49:

                  if (v12)
                  {
LABEL_50:
                    if (*(v12 + 16))
                    {
                      v37 = sub_22B990A58(0x65725F6C61746F74, 0xED00007364726F63);
                      if (v38)
                      {
                        v20 = *(*(v12 + 56) + 8 * v37);
                        if (!*(v12 + 16))
                        {
                          goto LABEL_58;
                        }
                      }

                      else
                      {
                        v20 = 0;
                        if (!*(v12 + 16))
                        {
                          goto LABEL_58;
                        }
                      }

                      v39 = sub_22B990A58(0x6365725F6576696CLL, 0xEC0000007364726FLL);
                      if (v40)
                      {
                        v21 = *(*(v12 + 56) + 8 * v39);
                        goto LABEL_59;
                      }
                    }

                    else
                    {
                      v20 = 0;
                    }

LABEL_58:
                    v21 = 0;
LABEL_59:

                    if (v15)
                    {
LABEL_60:
                      if (!*(v15 + 16))
                      {
                        v22 = 0;
                        goto LABEL_67;
                      }

                      v41 = sub_22B990A58(0x65725F6C61746F74, 0xED00007364726F63);
                      if (v42)
                      {
                        v22 = *(*(v15 + 56) + 8 * v41);
                        if (!*(v15 + 16))
                        {
                          goto LABEL_67;
                        }
                      }

                      else
                      {
                        v22 = 0;
                        if (!*(v15 + 16))
                        {
                          goto LABEL_67;
                        }
                      }

                      v43 = sub_22B990A58(0x6365725F6576696CLL, 0xEC0000007364726FLL);
                      if (v44)
                      {
                        v23 = *(*(v15 + 56) + 8 * v43);
                        goto LABEL_68;
                      }

LABEL_67:
                      v23 = 0;
LABEL_68:

                      if (v28)
                      {
LABEL_69:
                        if (*(v28 + 16))
                        {
                          v45 = sub_22B990A58(0x65725F6C61746F74, 0xED00007364726F63);
                          if (v46)
                          {
                            v24 = *(*(v28 + 56) + 8 * v45);
                            if (!*(v28 + 16))
                            {
                              goto LABEL_77;
                            }
                          }

                          else
                          {
                            v24 = 0;
                            if (!*(v28 + 16))
                            {
                              goto LABEL_77;
                            }
                          }

                          v47 = sub_22B990A58(0x6365725F6576696CLL, 0xEC0000007364726FLL);
                          if (v48)
                          {
                            v2 = *(*(v28 + 56) + 8 * v47);
LABEL_78:

                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          v24 = 0;
                        }

LABEL_77:
                        v2 = 0;
                        goto LABEL_78;
                      }

LABEL_33:
                      v24 = 0;
                      v2 = 0;
LABEL_79:
                      v25 = 0;
                      v17 = v50;
                      v16 = v51;
                      v18 = v49;
                      goto LABEL_80;
                    }

LABEL_32:
                    v22 = 0;
                    v23 = 0;
                    if (v28)
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_33;
                  }

LABEL_31:
                  v20 = 0;
                  v21 = 0;
                  if (v15)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_32;
                }

LABEL_30:
                v49 = 0;
                v19 = 0;
                if (v12)
                {
                  goto LABEL_50;
                }

                goto LABEL_31;
              }
            }

            else
            {
              v12 = 0;
              if (*(v2 + 16))
              {
                goto LABEL_9;
              }
            }

            v15 = 0;
            goto LABEL_23;
          }
        }

        v15 = 0;
        v12 = 0;
        goto LABEL_23;
      }
    }

    v15 = 0;
    v9 = 0;
    v12 = 0;
    goto LABEL_23;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 1;
LABEL_80:
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
  *(a2 + 64) = v24;
  *(a2 + 72) = v2;
  *(a2 + 80) = v25;
  return result;
}

__n128 sub_22B9E311C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_22B9E3138(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B9E3158(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_22B9E31A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746F5474616863 && a2 == 0xEA0000000000736CLL;
  if (v4 || (sub_22BA10C6C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576694C74616863 && a2 == 0xE900000000000073 || (sub_22BA10C6C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xED0000736C61746FLL || (sub_22BA10C6C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C6567617373656DLL && a2 == 0xEC00000073657669 || (sub_22BA10C6C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1E820 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEF736576694C746ELL || (sub_22BA10C6C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BA1E840 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022BA1E860 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022BA1E880 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022BA1E8A0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_22BA10C6C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_22B9E34F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D5AC0, &qword_22BA1A040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9E37CC();
  sub_22BA10D8C();
  if (v2)
  {
    return sub_22B936C4C(a1);
  }

  v37 = 0;
  v12 = sub_22BA10B4C();
  v36 = 1;
  v13 = sub_22BA10B4C();
  v35 = 2;
  v27 = sub_22BA10B4C();
  v34 = 3;
  v26 = sub_22BA10B4C();
  v33 = 4;
  v25 = sub_22BA10B4C();
  v32 = 5;
  v24 = sub_22BA10B4C();
  v31 = 6;
  v23 = sub_22BA10B4C();
  v30 = 7;
  v22 = sub_22BA10B4C();
  v29 = 8;
  v21 = sub_22BA10B4C();
  v28 = 9;
  v20 = sub_22BA10B4C();
  (*(v6 + 8))(v10, v5);
  result = sub_22B936C4C(a1);
  *a2 = v12;
  a2[1] = v13;
  v15 = v26;
  a2[2] = v27;
  a2[3] = v15;
  v16 = v24;
  a2[4] = v25;
  a2[5] = v16;
  v17 = v22;
  a2[6] = v23;
  a2[7] = v17;
  v18 = v20;
  a2[8] = v21;
  a2[9] = v18;
  return result;
}

unint64_t sub_22B9E37CC()
{
  result = qword_27D8D5AC8;
  if (!qword_27D8D5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AC8);
  }

  return result;
}

unint64_t sub_22B9E3834()
{
  result = qword_27D8D5AD8;
  if (!qword_27D8D5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AD8);
  }

  return result;
}

unint64_t sub_22B9E388C()
{
  result = qword_27D8D5AE0;
  if (!qword_27D8D5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AE0);
  }

  return result;
}

unint64_t sub_22B9E38E4()
{
  result = qword_27D8D5AE8;
  if (!qword_27D8D5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AE8);
  }

  return result;
}

uint64_t sub_22B9E3948()
{
  v0 = sub_22BA0F9BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22BA0F9AC();
  qword_27D8DE1D8 = result;
  return result;
}

uint64_t sub_22B9E3988(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return (sub_22B9E3A3C)(a1, a2);
}

uint64_t sub_22B9E3A3C(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = *(*(sub_22BA1003C() - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9E3ACC, 0, 0);
}

uint64_t sub_22B9E3ACC()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 152) = v1;
  return MEMORY[0x2822009F8](sub_22B9E3AFC, v1, 0);
}

uint64_t sub_22B9E3AFC()
{
  v1 = v0[19];
  swift_beginAccess();
  v2 = sub_22B9C537C(*(v1 + 192));
  if (v2 < 1)
  {
    v14 = v0[18];

    v15 = v0[1];

    return v15(0, 0);
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v7 = v4;
    sub_22B9349C8(&qword_27D8D5AF0, &qword_22BA1A208);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    v9 = "byteSizeExceeded";
    v11 = v7 & 1;
    v10 = (v7 & 1) == 0;
    v12 = 0xD000000000000010;
    if (v7)
    {
      v12 = 0xD000000000000011;
    }

    *(inited + 32) = v12;
    v13 = inited + 32;
    if (v10)
    {
      v9 = "h";
    }

    *(inited + 40) = v9 | 0x8000000000000000;
    *(inited + 48) = v5;
    *(inited + 56) = v6;
    *(inited + 64) = v11;
    v0[20] = sub_22B9BC02C(inited);
    swift_setDeallocating();
    sub_22B936BEC(v13, &qword_27D8D5AF8, &qword_22BA1A210);

    return MEMORY[0x2822009F8](sub_22B9E3C78, 0, 0);
  }
}

uint64_t sub_22B9E3C78()
{
  v29 = v0;
  if (qword_27D8D4990 != -1)
  {
    swift_once();
  }

  v0[14] = v0[20];
  sub_22B9E4290();
  v1 = sub_22BA0F99C();
  v0[21] = v1;
  v0[22] = v2;
  v3 = v1;
  v4 = v2;
  v5 = v0[18];
  sub_22BA1002C();
  v6 = sub_22BA1000C();
  v0[23] = v7;
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = v0[20];

    v11 = swift_task_alloc();
    v0[24] = v11;
    *v11 = v0;
    v11[1] = sub_22B9E4104;
    v13 = v0[16];
    v12 = v0[17];
    v35 = 98;
    v34 = 39;
    v33 = 2;
    v32 = 21;
    v31 = "performStep(context:)";

    return sub_22B9E81AC(v13, v12, v8, v9, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ReportRecordFailuresTelemetryStep.swift", 125, 2);
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v17 = v0[20];
    v18 = sub_22BA0FEFC();
    sub_22B936CA8(v18, qword_28141AD40);

    v19 = sub_22BA0FEDC();
    v20 = sub_22BA1044C();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[20];
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      v0[15] = v22;
      v25 = sub_22BA1005C();
      v27 = sub_22B99153C(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_22B92A000, v19, v20, "Failed to get json string for record failure report: %s", v23, 0xCu);
      sub_22B936C4C(v24);
      MEMORY[0x23189ADD0](v24, -1, -1);
      MEMORY[0x23189ADD0](v23, -1, -1);
      sub_22B9359BC(v3, v4);
    }

    else
    {
      sub_22B9359BC(v3, v4);
    }

    v15 = v0[18];

    v16 = v0[1];

    return v16(0, 0);
  }
}

uint64_t sub_22B9E4104()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B9E421C, 0, 0);
}

uint64_t sub_22B9E421C()
{
  sub_22B9359BC(v0[21], v0[22]);
  v1 = v0[18];

  v2 = v0[1];

  return v2(0, 0);
}

unint64_t sub_22B9E4290()
{
  result = qword_27D8D5B00;
  if (!qword_27D8D5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B00);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DevicePolicy(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DevicePolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
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

uint64_t storeEnumTagSinglePayload for DevicePolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_22B9E43A0(char a1, char a2, char a3)
{
  v6 = sub_22B9E0FF4();
  v7 = v6 & 0x1FF;
  v8 = sub_22B9E0EBC(v6 & 0x1FF);
  v10 = v9;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v11 = sub_22BA0FEFC();
  sub_22B936CA8(v11, qword_28141AD40);

  v12 = sub_22BA0FEDC();
  v13 = sub_22BA1046C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 67109890;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 1024;
    *(v14 + 10) = a2 & 1;
    *(v14 + 14) = 1024;
    *(v14 + 16) = a3 & 1;
    *(v14 + 20) = 2080;
    v16 = sub_22B99153C(v8, v10, &v21);

    *(v14 + 22) = v16;
    _os_log_impl(&dword_22B92A000, v12, v13, "[DevicePolicy]:\n    evaluateUserSyncOnly = %{BOOL}d\n    maintainWifi = %{BOOL}d\n    maintainCharging = %{BOOL}d\n    initialDeviceState = %s", v14, 0x1Eu);
    sub_22B936C4C(v15);
    MEMORY[0x23189ADD0](v15, -1, -1);
    MEMORY[0x23189ADD0](v14, -1, -1);
  }

  else
  {
  }

  v17 = 0x10000;
  if ((a3 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = v17 | (v7 << 24);
  v19 = 256;
  if ((a2 & 1) == 0)
  {
    v19 = 0;
  }

  return (v18 | v19) & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
}

uint64_t sub_22B9E457C()
{
  sub_22B936C4C((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22B9E45D8(unint64_t a1, unint64_t a2, char a3)
{
  sub_22B9A2EAC(a1, a2, a3 & 1);
  if (a3)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD40);
    oslog = sub_22BA0FEDC();
    v5 = sub_22BA1046C();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B92A000, oslog, v5, "Successfully nil'd out local store count from database", v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD40);
    oslog = sub_22BA0FEDC();
    v8 = sub_22BA1046C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_22BA1005C();
      v13 = sub_22B99153C(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_22B92A000, oslog, v8, "Successfully wrote to database our new local store count: %s", v9, 0xCu);
      sub_22B936C4C(v10);
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);

      return;
    }
  }
}

uint64_t sub_22B9E4824(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22B9E4848, 0, 0);
}

uint64_t sub_22B9E4848()
{
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  v8 = *(v0 + 24);
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v8;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_22B9349C8(&qword_27D8D5B18, &qword_22BA1A340);
  *v5 = v0;
  v5[1] = sub_22B9E4988;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000021, 0x800000022BA1E990, sub_22B9E57B0, v3, v6);
}

uint64_t sub_22B9E4988()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22B9E4AC8;
  }

  else
  {
    v5 = *(v2 + 48);
    v6 = *(v2 + 56);

    v4 = sub_22B9E4AAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9E4AC8()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

void sub_22B9E4B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22B9349C8(&qword_27D8D5B20, &qword_22BA1A348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &aBlock[-1] - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*(v6 + 16))(v10, a1, v5);
    v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v14 = swift_allocObject();
    (*(v6 + 32))(v14 + v13, v10, v5);
    aBlock[4] = sub_22B9E5810;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B9E4E3C;
    aBlock[3] = &unk_283F57BB0;
    v15 = _Block_copy(aBlock);

    [v12 setFetchRecordsCompletionBlock_];
    _Block_release(v15);
    v16 = (a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
    v17 = *(a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
    v18 = v16[4];
    sub_22B9358B4(v16, v17);
    (*(v18 + 8))(v12, v17, v18);
  }

  else
  {
    sub_22B9E57BC();
    v19 = swift_allocError();
    *v20 = 0;
    aBlock[0] = v19;
    sub_22BA102AC();
  }
}

uint64_t sub_22B9E4D88(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    sub_22B9349C8(&qword_27D8D5B20, &qword_22BA1A348);
    return sub_22BA102AC();
  }

  if (!a1)
  {
    sub_22B9E57BC();
    swift_allocError();
    *v4 = 1;
    goto LABEL_3;
  }

  sub_22B9349C8(&qword_27D8D5B20, &qword_22BA1A348);
  return sub_22BA102BC();
}

uint64_t sub_22B9E4E3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
    sub_22B951A54(0, &qword_281414A30, 0x277CBC5A0);
    sub_22B977228();
    v4 = sub_22BA0FF6C();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_22B9E4F0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v39 = a6;
  v41 = a1;
  v42 = a2;
  v8 = sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v38 - v12;
  v40 = *(v9 + 16);
  v40(&v38 - v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = *(v9 + 32);
  v16(v15 + v14, v13, v8);

  v17 = v42;
  sub_22BA105AC();
  v40(v13, v41, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v16(v18 + v14, v13, v8);

  sub_22BA1058C();
  swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    v19 = v38;
    v20 = *(v38 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
    v21 = *(v38 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 32);
    sub_22B9358B4((v38 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase), v20);
    (*(v21 + 8))(v17, v20, v21);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v22 = sub_22BA0FEFC();
    sub_22B936CA8(v22, qword_28141AD40);
    sub_22B935B38(v39, v46);
    swift_unknownObjectRetain();
    v23 = v17;
    v24 = sub_22BA0FEDC();
    v25 = sub_22BA1046C();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v26 = 136315650;
      v29 = sub_22B9358B4(v46, v46[3]);
      v30 = *v29;
      v31 = v29[1];

      sub_22B936C4C(v46);
      v32 = sub_22B99153C(v30, v31, &v45);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v43 = 0x2E636E7973;
      v44 = 0xE500000000000000;
      v33 = *sub_22B9358B4((v19 + 16), *(v19 + 40));
      v34 = sub_22B9B580C();
      MEMORY[0x231899730](v34);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v35 = sub_22BA10C1C();
      MEMORY[0x231899730](v35);

      v36 = sub_22B99153C(v43, v44, &v45);

      *(v26 + 14) = v36;
      *(v26 + 22) = 2112;
      *(v26 + 24) = v23;
      *v27 = v23;
      v37 = v23;
      _os_log_impl(&dword_22B92A000, v24, v25, "Added fetch operation for %s (sync: %s): %@", v26, 0x20u);
      sub_22B95DEF0(v27);
      MEMORY[0x23189ADD0](v27, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v28, -1, -1);
      MEMORY[0x23189ADD0](v26, -1, -1);
    }

    else
    {

      sub_22B936C4C(v46);
    }
  }
}

uint64_t sub_22B9E53C4(void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = sub_22B9349C8(&qword_27D8D5B10, &qword_22BA1A330);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v16 - v12;
  result = swift_beginAccess();
  if (*(a4 + 16) == 1)
  {
    v16[0] = a1;
    v16[1] = a2;
    v17 = (a3 & 1) != 0;
    v15 = a1;
    sub_22B930C44(a2);
    sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320);
    sub_22BA1033C();
    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

uint64_t sub_22B9E552C(void *a1, void *a2, char a3)
{
  v7 = *(*(sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320) - 8) + 80);
  v8 = *(v3 + 16);

  return sub_22B9E53C4(a1, a2, a3 & 1, v8);
}

uint64_t sub_22B9E55C4(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = 0;
  if (a2)
  {
    v6 = a1;
  }

  sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320);
  return sub_22BA1034C();
}

uint64_t sub_22B9E5650()
{
  v1 = sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B9E5720(void *a1, char a2)
{
  v5 = *(*(sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_22B9E55C4(a1, a2 & 1, v6);
}

unint64_t sub_22B9E57BC()
{
  result = qword_27D8D5B28;
  if (!qword_27D8D5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B28);
  }

  return result;
}

uint64_t sub_22B9E5810(uint64_t a1, void *a2)
{
  v4 = *(*(sub_22B9349C8(&qword_27D8D5B20, &qword_22BA1A348) - 8) + 80);

  return sub_22B9E4D88(a1, a2);
}

uint64_t sub_22B9E589C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B9E58D0(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22B9E5918(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_22B9E597C()
{
  result = qword_27D8D5B30;
  if (!qword_27D8D5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B30);
  }

  return result;
}

id SyncTelemetryReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_22B9E5A04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_22BA0FFFC();
    v4 = v3;
  }

  else
  {
    v4 = 0x800000022BA1EAF0;
    v2 = 0xD000000000000011;
  }

  qword_28141AED0 = v2;
  *algn_28141AED8 = v4;
}

id SyncTelemetryReporter.init()()
{
  ObjectType = swift_getObjectType();
  v58 = sub_22BA104FC();
  v0 = *(v58 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v58, v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BA0FF4C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_22BA0FF2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BA104EC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v57 = OBJC_IVAR___IMDSyncTelemetryReporterInternal_reportingQueue;
  sub_22B9E0AFC();
  sub_22BA104DC();
  (*(v9 + 104))(v13, *MEMORY[0x277D851A8], v8);
  sub_22BA1054C();
  (*(v9 + 8))(v13, v8);
  sub_22BA0FF3C();
  (*(v0 + 104))(v4, *MEMORY[0x277D85260], v58);
  *&v60[v57] = sub_22BA1053C();
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v17 = qword_28141ACF0;
  v18 = sub_22BA0FFCC();
  v19 = [v17 stringForKey_];

  if (v19)
  {
    v20 = sub_22BA0FFFC();
    v22 = v21;

    v23 = ObjectType;
    v24 = sub_22B9E758C();
    v26 = sub_22B9E13D8(38, 0, 0, 0, v24, v25, v20, v22);
  }

  else
  {
    v23 = ObjectType;
    v27 = sub_22B9E758C();
    v26 = sub_22B9E13D8(38, 0, 0, 0, v27, v28, 0, 0);
  }

  v29 = sub_22B9E758C();
  v31 = sub_22B9E15F4(v29, v30, 0x746C7561666544, 0xE700000000000000);

  if (qword_281414D10 != -1)
  {
    swift_once();
  }

  v32 = sub_22BA0FEFC();
  v33 = sub_22B936CA8(v32, qword_28141ACF8);

  v34 = sub_22BA0FEDC();
  v35 = sub_22BA1046C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v58 = v33;
    v38 = v37;
    v61 = v37;
    *v36 = 136315394;
    v39 = sub_22BA0FF7C();
    v41 = v40;

    v42 = sub_22B99153C(v39, v41, &v61);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    v43 = sub_22BA0FF7C();
    v45 = sub_22B99153C(v43, v44, &v61);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_22B92A000, v34, v35, "init RTCReporter with sessionInfo: %s, userInfo: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v38, -1, -1);
    v46 = v36;
    v23 = ObjectType;
    MEMORY[0x23189ADD0](v46, -1, -1);
  }

  else
  {
  }

  sub_22B98C248(v26);

  sub_22B98C248(v31);

  v47 = objc_allocWithZone(MEMORY[0x277D43FE0]);
  v48 = sub_22BA0FF5C();

  v49 = sub_22BA0FF5C();

  v50 = sub_22BA101DC();
  v51 = [v47 initWithSessionInfo:v48 userInfo:v49 frameworksToCheck:v50];

  *&v60[OBJC_IVAR___IMDSyncTelemetryReporterInternal_reporter] = v51;
  if (!v51)
  {
    v52 = sub_22BA0FEDC();
    v53 = sub_22BA1044C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_22B92A000, v52, v53, "RTCReporter fail to init and return nil", v54, 2u);
      MEMORY[0x23189ADD0](v54, -1, -1);
    }
  }

  v62.receiver = v60;
  v62.super_class = v23;
  return objc_msgSendSuper2(&v62, sel_init);
}

uint64_t sub_22B9E6220(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v60 = a7;
  v61 = a8;
  v59 = a6;
  v56 = a4;
  v57 = a5;
  v55 = a3;
  v14 = sub_22BA0FF4C();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v45[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v45[-v23];
  v25 = sub_22BA0FF1C();
  v62 = *(v25 - 8);
  v26 = *(v62 + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v45[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_22BA102BC();
  }

  v31 = Strong;
  v50 = a13;
  v49 = a12;
  v48 = a11;
  v47 = a10;
  v46 = a9;
  v32 = *(Strong + OBJC_IVAR___IMDSyncTelemetryReporterInternal_reportingQueue);
  v52 = v29;
  v53 = v32;
  sub_22BA0FF0C();
  (*(v20 + 16))(v24, a1, v19);
  v33 = *(v20 + 80);
  v54 = v25;
  v34 = (v33 + 88) & ~v33;
  v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = v14;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v55 & 1;
  v39 = v56;
  v38 = v57;
  *(v37 + 24) = v31;
  *(v37 + 32) = v39;
  *(v37 + 40) = v38;
  *(v37 + 48) = v59;
  v40 = v61;
  *(v37 + 56) = v60;
  *(v37 + 64) = v40;
  *(v37 + 72) = v46;
  *(v37 + 80) = v47;
  (*(v20 + 32))(v37 + v34, v24, v19);
  *(v37 + v35) = v48;
  *(v37 + v36) = v49;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
  aBlock[4] = sub_22B9E763C;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B9E6FC8;
  aBlock[3] = &unk_283F57DD8;
  v41 = _Block_copy(aBlock);
  v42 = v31;

  sub_22BA0FF3C();
  v43 = v52;
  MEMORY[0x231899B90](0, v18, v52, v41);
  _Block_release(v41);
  (*(v58 + 8))(v18, v51);
  (*(v62 + 8))(v43, v54);
}

void sub_22B9E6644(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v85 = a10;
  v88[2] = *MEMORY[0x277D85DE8];
  v14 = sub_22BA0FF1C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && !*(a2 + OBJC_IVAR___IMDSyncTelemetryReporterInternal_reporter))
  {
    if (qword_281414D10 == -1)
    {
LABEL_25:
      v68 = sub_22BA0FEFC();
      sub_22B936CA8(v68, qword_28141ACF8);
      v69 = sub_22BA0FEDC();
      v70 = sub_22BA1044C();
      if (os_log_type_enabled(v69, v70))
      {
        v84 = a9;
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v88[0] = v72;
        *v71 = 136315650;
        v73 = sub_22BA1091C();
        v75 = sub_22B99153C(v73, v74, v88);

        *(v71 + 4) = v75;
        *(v71 + 12) = 2080;
        v76 = sub_22BA1091C();
        v78 = sub_22B99153C(v76, v77, v88);

        *(v71 + 14) = v78;
        *(v71 + 22) = 2048;
        *(v71 + 24) = v84;
        _os_log_impl(&dword_22B92A000, v69, v70, "Reporter is not initialized during non-isolated dispatch. %s:%s:%lu", v71, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v72, -1, -1);
        MEMORY[0x23189ADD0](v71, -1, -1);
      }

      goto LABEL_28;
    }

LABEL_34:
    swift_once();
    goto LABEL_25;
  }

  v80 = v17;
  v81 = a2;
  LODWORD(v84) = a1;
  if (qword_281414D10 != -1)
  {
    swift_once();
  }

  v20 = sub_22BA0FEFC();
  sub_22B936CA8(v20, qword_28141ACF8);

  v21 = sub_22BA0FEDC();
  v22 = sub_22BA1046C();

  v23 = os_log_type_enabled(v21, v22);
  v82 = a11;
  v83 = a12;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v88[0] = v25;
    *v24 = 136315906;
    *(v24 + 4) = sub_22B99153C(0xD000000000000041, 0x800000022BA1EAA0, v88);
    *(v24 + 12) = 2080;
    v26 = sub_22BA0FF7C();
    v28 = sub_22B99153C(v26, v27, v88);

    *(v24 + 14) = v28;
    *(v24 + 22) = 2048;
    *(v24 + 24) = a12;
    *(v24 + 32) = 2048;
    *(v24 + 34) = 0;
    _os_log_impl(&dword_22B92A000, v21, v22, "[SyncTelemetryReporting:%s]: Sending payload to RTC: %s, category: %ld, event: %ld", v24, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v25, -1, -1);
    MEMORY[0x23189ADD0](v24, -1, -1);
  }

  type metadata accessor for SyncCoordinator();
  v29 = [objc_opt_self() isMainThread];
  v30 = v84;
  if (v29)
  {
    v31 = off_281416A80;
    swift_unknownObjectRetain();
    if (v31)
    {
LABEL_9:
      v32 = sub_22B9358B4((v31 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v31 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
      v33 = *(*v32 + 32);
      v34 = *(*v32 + 40);

      v35 = sub_22B9E758C();
      v37 = sub_22B9E13D8(38, 0, 0, 0, v35, v36, v33, v34);

      swift_unknownObjectRelease();
      goto LABEL_12;
    }
  }

  else
  {
    sub_22B9E0AFC();
    v38 = sub_22BA1050C();
    v39 = sub_22BA0FF0C();
    MEMORY[0x28223BE20](v39, v40);
    sub_22B9349C8(&qword_27D8D5B50, &qword_22BA1A4E0);
    sub_22BA1051C();

    (*(v80 + 8))(v19, v14);
    v31 = v88[0];
    if (v88[0])
    {
      goto LABEL_9;
    }
  }

  v41 = sub_22B9E758C();
  v37 = sub_22B9E13D8(38, 0, 0, 0, v41, v42, 0, 0);

LABEL_12:
  v43 = sub_22B9E758C();
  v45 = sub_22B9E15F4(v43, v44, 0x746C7561666544, 0xE700000000000000);

  if ((v30 & 1) == 0)
  {

    v54 = *(v81 + OBJC_IVAR___IMDSyncTelemetryReporterInternal_reporter);
    if (!v54)
    {
      goto LABEL_28;
    }

    v55 = v83;
    if ((v83 & 0x8000000000000000) == 0)
    {
      if (!(v83 >> 16))
      {
        sub_22B98C248(v82);
        v56 = sub_22BA0FF5C();

        v88[0] = 0;
        v57 = [v54 sendMessageWithCategory:v55 type:0 payload:v56 error:v88];

        v52 = v88[0];
        if (v57)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      goto LABEL_33;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v46 = objc_opt_self();
  sub_22B98C248(v37);

  v47 = sub_22BA0FF5C();

  sub_22B98C248(v45);

  v48 = sub_22BA0FF5C();

  v49 = v83;
  if ((v83 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v83 >> 16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_22B98C248(v82);
  v50 = sub_22BA0FF5C();

  v88[0] = 0;
  v51 = [v46 sendOneMessageWithSessionInfo:v47 userInfo:v48 category:v49 type:0 payload:v50 error:v88];

  v52 = v88[0];
  if (v51)
  {
LABEL_16:
    v53 = v52;
LABEL_28:
    sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0);
    sub_22BA102BC();
    goto LABEL_29;
  }

LABEL_21:
  v58 = v52;
  v59 = sub_22BA0FB6C();

  swift_willThrow();
  v60 = v59;
  v61 = sub_22BA0FEDC();
  v62 = sub_22BA1044C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v88[0] = v64;
    *v63 = 136315138;
    swift_getErrorValue();
    v65 = sub_22B9587B4(v86, v87);
    v67 = sub_22B99153C(v65, v66, v88);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_22B92A000, v61, v62, "Encountered error while trying to send payload to RTC: %s", v63, 0xCu);
    sub_22B936C4C(v64);
    MEMORY[0x23189ADD0](v64, -1, -1);
    MEMORY[0x23189ADD0](v63, -1, -1);
  }

  sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0);
  sub_22BA102BC();

LABEL_29:
  v79 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B9E6FC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t SyncTelemetryReporter.postMessage(payload:category:)(uint64_t a1, uint64_t a2)
{
  v21 = sub_22BA0FF4C();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v21, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BA0FF1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR___IMDSyncTelemetryReporterInternal_reportingQueue);
  sub_22BA0FF0C();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a1;
  aBlock[4] = sub_22B9E75F4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B9E6FC8;
  aBlock[3] = &unk_283F57D48;
  v18 = _Block_copy(aBlock);

  sub_22BA0FF3C();
  MEMORY[0x231899B90](0, v9, v15, v18);
  _Block_release(v18);
  (*(v5 + 8))(v9, v21);
  (*(v11 + 8))(v15, v10);
}

void sub_22B9E7288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_22B9E772C(a2, a3);
    }
  }
}

id SyncTelemetryReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B9E758C()
{
  if (qword_281416948 != -1)
  {
    swift_once();
  }

  v0 = qword_28141AED0;

  return v0;
}

uint64_t sub_22B9E7600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22B9E763C()
{
  v1 = *(sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_22B9E6644(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v0 + v2, *(v0 + v3), *(v0 + v4));
}

void sub_22B9E772C(uint64_t a1, uint64_t a2)
{
  v55[2] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v5 = sub_22BA0FF1C();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 1)
  {
    v51 = v9;
    v52 = v8;
    v54 = a1;
    if (qword_281414D10 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141ACF8);

    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1046C();

    v15 = os_log_type_enabled(v13, v14);
    v53 = a2;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v50 = v2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v55[0] = v18;
      *v17 = 136315906;
      *(v17 + 4) = sub_22B99153C(0xD00000000000002BLL, 0x800000022BA1EB10, v55);
      *(v17 + 12) = 2080;
      v19 = sub_22BA0FF7C();
      v21 = sub_22B99153C(v19, v20, v55);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2048;
      *(v17 + 24) = v54;
      *(v17 + 32) = 2048;
      *(v17 + 34) = 0;
      _os_log_impl(&dword_22B92A000, v13, v14, "[SyncTelemetryReporting:%s]: Sending payload to RTC: %s, category: %ld, event: %ld", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v18, -1, -1);
      MEMORY[0x23189ADD0](v17, -1, -1);
    }

    type metadata accessor for SyncCoordinator();
    if ([objc_opt_self() isMainThread])
    {
      v22 = off_281416A80;
      swift_unknownObjectRetain();
      v23 = v54;
      if (v22)
      {
LABEL_8:
        v24 = sub_22B9358B4(&v22[OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState], *&v22[OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24]);
        v25 = *(*v24 + 32);
        v26 = *(*v24 + 40);

        v27 = sub_22B9E758C();
        v29 = sub_22B9E13D8(38, 0, 0, 0, v27, v28, v25, v26);

        swift_unknownObjectRelease();
LABEL_15:
        v39 = sub_22B9E758C();
        v41 = sub_22B9E15F4(v39, v40, 0x746C7561666544, 0xE700000000000000);

        v42 = objc_opt_self();
        sub_22B98C248(v29);

        v43 = sub_22BA0FF5C();

        sub_22B98C248(v41);

        v44 = sub_22BA0FF5C();

        if (!(v23 >> 16))
        {
          sub_22B98C248(v53);
          v45 = sub_22BA0FF5C();

          v55[0] = 0;
          v46 = [v42 sendOneMessageWithSessionInfo:v43 userInfo:v44 category:v23 type:0 payload:v45 error:v55];

          if (v46)
          {
            v47 = v55[0];
          }

          else
          {
            v48 = v55[0];
            sub_22BA0FB6C();

            swift_willThrow();
          }

          goto LABEL_19;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      sub_22B9E0AFC();
      v34 = sub_22BA1050C();
      v35 = sub_22BA0FF0C();
      MEMORY[0x28223BE20](v35, v36);
      sub_22B9349C8(&qword_27D8D5B50, &qword_22BA1A4E0);
      sub_22BA1051C();

      (*(v51 + 8))(v11, v52);
      v22 = v55[0];
      v23 = v54;
      if (v55[0])
      {
        goto LABEL_8;
      }
    }

    v37 = sub_22B9E758C();
    v29 = sub_22B9E13D8(38, 0, 0, 0, v37, v38, 0, 0);

    goto LABEL_15;
  }

  if (qword_281414D10 != -1)
  {
LABEL_21:
    swift_once();
  }

  v30 = sub_22BA0FEFC();
  sub_22B936CA8(v30, qword_28141ACF8);
  v31 = sub_22BA0FEDC();
  v32 = sub_22BA1044C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_22B92A000, v31, v32, "RTCReporting reserves category==0, a value greater than 0 must be supplied.", v33, 2u);
    MEMORY[0x23189ADD0](v33, -1, -1);
  }

LABEL_19:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_22B9E7DF4(uint64_t *a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ActionRecord();
  v8 = (a1 + *(v7 + 68));
  if (v8[1])
  {
    v9 = *v8;
    v10 = sub_22BA0FFCC();
  }

  else
  {
    v10 = 0;
  }

  sub_22B94498C(a1 + *(v7 + 64), v6);
  v11 = sub_22BA0FD8C();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v6, 1, v11) != 1)
  {
    v13 = sub_22BA0FCFC();
    (*(v12 + 8))(v6, v11);
  }

  if (a1[1])
  {
    v14 = *a1;
    v15 = sub_22BA0FFCC();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSender:v10 time:v13 guid:v15 type:5];

  if (v16)
  {
    sub_22B9752A4(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_22B9E7FA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v4;
    [v3 setActionType_];
    v6 = [v5 originalMessageGuid];

    [v3 setOriginalMessageGUID_];
    sub_22B977794();
    if (v7)
    {
      osloga = sub_22BA0FFCC();

      [v3 setOtherHandle_];
    }

    else
    {
      [v3 setOtherHandle_];
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD10);

    oslog = sub_22BA0FEDC();
    v11 = sub_22BA1044C();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_22B99153C(a2, a3, &v16);
      _os_log_impl(&dword_22B92A000, oslog, v11, "No Proto for IMMessageActionItem %s", v12, 0xCu);
      sub_22B936C4C(v13);
      MEMORY[0x23189ADD0](v13, -1, -1);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }
  }
}

uint64_t sub_22B9E81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 1347) = v13;
  *(v8 + 1176) = v12;
  *(v8 + 1346) = v11;
  *(v8 + 1160) = v10;
  *(v8 + 1345) = a8;
  *(v8 + 1152) = a7;
  *(v8 + 1144) = a6;
  *(v8 + 1344) = a5;
  *(v8 + 1136) = a4;
  *(v8 + 1128) = a3;
  *(v8 + 1120) = a1;
  return MEMORY[0x2822009F8](sub_22B9E820C, 0, 0);
}

uint64_t sub_22B9E820C()
{
  v1 = v0[140];
  v2 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[148] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v3 = *sub_22B9358B4((v1 + v2), *(v1 + v2 + 24));
  if ((sub_22BA08808() & 1) != 0 || (v4 = *(v3 + 24), (sub_22B92DA70(1u, 0))) && (v5 = qword_28141ADC8, v0[149] = qword_28141ADC8, v5))
  {
    v6 = qword_28141ADD0;
    v0[150] = qword_28141ADD0;
    v0[151] = *(v6 + 296);
    v0[152] = (v6 + 296) & 0xFFFFFFFFFFFFLL | 0xDDD000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v8 = sub_22BA1029C();
    v0[153] = v8;
    v0[154] = v7;

    return MEMORY[0x2822009F8](sub_22B9E8364, v8, v7);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22B9E8364()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  *(v0 + 1348) = (*(v0 + 1208))() & 1;

  return MEMORY[0x2822009F8](sub_22B9E83E4, 0, 0);
}

uint64_t sub_22B9E83E4()
{
  if (*(v0 + 1348) == 1)
  {
    v1 = (v0 + 1112);
    v2 = *(v0 + 1347);
    v3 = sub_22B9ECB18();
    *(v0 + 1112) = v3;
    v4 = sub_22B9EB0F4(v2);
    v5 = MEMORY[0x277D837D0];
    *(v0 + 1088) = MEMORY[0x277D837D0];
    *(v0 + 1064) = v4;
    *(v0 + 1072) = v6;
    sub_22B9ECC48(v0 + 1064, v0 + 136);
    if (*(v0 + 160))
    {
      sub_22B936C98((v0 + 136), (v0 + 584));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 584), 0x6D614E70756F7267, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
      *v1 = v3;
    }

    else
    {
      sub_22B949698(v0 + 136);
      sub_22B9EB6F0(0x6D614E70756F7267, 0xE900000000000065, (v0 + 168));
      sub_22B949698(v0 + 168);
    }

    v10 = *(v0 + 1120);
    sub_22B949698(v0 + 1064);
    v11 = sub_22BA0FD9C();
    *(v0 + 224) = v5;
    *(v0 + 200) = v11;
    *(v0 + 208) = v12;
    sub_22B9ECC48(v0 + 200, v0 + 232);
    if (*(v0 + 256))
    {
      sub_22B936C98((v0 + 232), (v0 + 104));
      v13 = *v1;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 104), 0x73736553636E7973, 0xED000044496E6F69, v14);
      *v1 = v13;
    }

    else
    {
      sub_22B949698(v0 + 232);
      sub_22B9EB6F0(0x73736553636E7973, 0xED000044496E6F69, (v0 + 264));
      sub_22B949698(v0 + 264);
    }

    v15 = (*(v0 + 1120) + *(v0 + 1184));
    sub_22B949698(v0 + 200);
    v16 = sub_22B9358B4(v15, v15[3]);
    v17 = *(*v16 + 32);
    v18 = *(*v16 + 40);
    *(v0 + 320) = v5;
    *(v0 + 296) = v17;
    *(v0 + 304) = v18;
    sub_22B9ECC48(v0 + 296, v0 + 328);
    if (*(v0 + 352))
    {
      sub_22B936C98((v0 + 328), (v0 + 1032));

      v19 = *v1;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 1032), 0x4449656369766564, 0xE800000000000000, v20);
      *v1 = v19;
    }

    else
    {

      sub_22B949698(v0 + 328);
      sub_22B9EB6F0(0x4449656369766564, 0xE800000000000000, (v0 + 360));
      sub_22B949698(v0 + 360);
    }

    v21 = *(v0 + 1120);
    sub_22B949698(v0 + 296);
    v22 = qword_22BA1A500[*(*sub_22B9358B4((v21 + 16), *(v21 + 40)) + 17)];
    v23 = sub_22BA1039C();
    v24 = sub_22B937ED8();
    *(v0 + 416) = v24;
    *(v0 + 392) = v23;
    sub_22B9ECC48(v0 + 392, v0 + 424);
    if (*(v0 + 448))
    {
      sub_22B936C98((v0 + 424), (v0 + 1000));
      v25 = *v1;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 1000), 0x65707954636E7973, 0xE800000000000000, v26);
      *v1 = v25;
    }

    else
    {
      sub_22B949698(v0 + 424);
      sub_22B9EB6F0(0x65707954636E7973, 0xE800000000000000, (v0 + 456));
      sub_22B949698(v0 + 456);
    }

    v27 = *(v0 + 1120);
    sub_22B949698(v0 + 392);
    v28 = *(v27 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
    v29 = sub_22BA1039C();
    *(v0 + 512) = v24;
    *(v0 + 488) = v29;
    sub_22B9ECC48(v0 + 488, v0 + 520);
    if (*(v0 + 544))
    {
      sub_22B936C98((v0 + 520), (v0 + 968));
      v30 = *v1;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 968), 0x65747441636E7973, 0xEC0000007374706DLL, v31);
      *v1 = v30;
    }

    else
    {
      sub_22B949698(v0 + 520);
      sub_22B9EB6F0(0x65747441636E7973, 0xEC0000007374706DLL, (v0 + 552));
      sub_22B949698(v0 + 552);
    }

    sub_22B949698(v0 + 488);
    v32 = qword_28141ADC8;
    *(v0 + 1240) = qword_28141ADC8;
    if (v32)
    {
      v33 = qword_28141ADD0;
      *(v0 + 1248) = qword_28141ADD0;
      *(v0 + 1256) = *(v33 + 288);
      *(v0 + 1264) = (v33 + 288) & 0xFFFFFFFFFFFFLL | 0xAF0000000000000;
      v34 = *(v0 + 1232);
      v35 = *(v0 + 1224);

      return MEMORY[0x2822009F8](sub_22B9E8A60, v35, v34);
    }

    else
    {
      v36 = *(v0 + 1136);
      if (v36)
      {
        v37 = *(v0 + 1128);
        *(v0 + 96) = v5;
        *(v0 + 72) = v37;
        *(v0 + 80) = v36;
        sub_22B9ECC48(v0 + 72, v0 + 616);
        if (*(v0 + 640))
        {
          sub_22B936C98((v0 + 616), (v0 + 680));

          v38 = *v1;
          v39 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 680), 0x64616F6C796170, 0xE700000000000000, v39);
          *v1 = v38;
        }

        else
        {

          sub_22B949698(v0 + 616);
          sub_22B9EB6F0(0x64616F6C796170, 0xE700000000000000, (v0 + 648));
          sub_22B949698(v0 + 648);
        }

        sub_22B949698(v0 + 72);
      }

      v40 = *(v0 + 1176);
      v41 = *(v0 + 1346);
      v42 = *(v0 + 1168);
      v43 = *(v0 + 1160);
      v44 = *(v0 + 1345);
      v45 = *(v0 + 1152);
      v46 = *(v0 + 1144);
      v47 = sub_22B9358B4((*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
      v48 = *(v0 + 1112);
      *(v0 + 1328) = v48;
      *(v0 + 16) = v46;
      *(v0 + 24) = v45;
      *(v0 + 32) = v44;
      *(v0 + 40) = v43;
      *(v0 + 48) = v42;
      *(v0 + 56) = v41;
      *(v0 + 64) = v40;
      v49 = *v47;
      v50 = swift_task_alloc();
      *(v0 + 1336) = v50;
      *v50 = v0;
      v50[1] = sub_22B9E9124;
      v51 = *(v0 + 1344);
      v52 = *(v0 + 1347);

      return sub_22B9EA8E4(v52, v48, v51, v0 + 16);
    }
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22B9E8A60()
{
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  *(v0 + 1272) = (*(v0 + 1256))();
  *(v0 + 1280) = v4;

  return MEMORY[0x2822009F8](sub_22B9E8AE0, 0, 0);
}

uint64_t sub_22B9E8AE0()
{
  v1 = (v0 + 1112);
  v2 = *(v0 + 1280);
  v3 = *(v0 + 1272);
  v4 = MEMORY[0x277D837D0];
  *(v0 + 864) = MEMORY[0x277D837D0];
  *(v0 + 840) = v3;
  *(v0 + 848) = v2;
  sub_22B9ECC48(v0 + 840, v0 + 872);
  if (*(v0 + 896))
  {
    sub_22B936C98((v0 + 872), (v0 + 936));
    v5 = *(v0 + 1112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B9BAE64((v0 + 936), 0x7453656369766564, 0xEB00000000657461, isUniquelyReferenced_nonNull_native);
    *(v0 + 1112) = v5;
  }

  else
  {
    sub_22B949698(v0 + 872);
    sub_22B9EB6F0(0x7453656369766564, 0xEB00000000657461, (v0 + 904));
    sub_22B949698(v0 + 904);
  }

  sub_22B949698(v0 + 840);
  v7 = qword_28141ADC8;
  *(v0 + 1288) = qword_28141ADC8;
  if (v7)
  {
    v8 = qword_28141ADD0;
    *(v0 + 1296) = qword_28141ADD0;
    *(v0 + 1304) = *(v8 + 224);
    *(v0 + 1312) = (v8 + 224) & 0xFFFFFFFFFFFFLL | 0x1DF5000000000000;
    v9 = *(v0 + 1232);
    v10 = *(v0 + 1224);

    return MEMORY[0x2822009F8](sub_22B9E8DF8, v10, v9);
  }

  else
  {
    v11 = *(v0 + 1136);
    if (v11)
    {
      v12 = *(v0 + 1128);
      *(v0 + 96) = v4;
      *(v0 + 72) = v12;
      *(v0 + 80) = v11;
      sub_22B9ECC48(v0 + 72, v0 + 616);
      if (*(v0 + 640))
      {
        sub_22B936C98((v0 + 616), (v0 + 680));

        v13 = *v1;
        v14 = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAE64((v0 + 680), 0x64616F6C796170, 0xE700000000000000, v14);
        *v1 = v13;
      }

      else
      {

        sub_22B949698(v0 + 616);
        sub_22B9EB6F0(0x64616F6C796170, 0xE700000000000000, (v0 + 648));
        sub_22B949698(v0 + 648);
      }

      sub_22B949698(v0 + 72);
    }

    v15 = *(v0 + 1176);
    v16 = *(v0 + 1346);
    v17 = *(v0 + 1168);
    v18 = *(v0 + 1160);
    v19 = *(v0 + 1345);
    v20 = *(v0 + 1152);
    v21 = *(v0 + 1144);
    v22 = sub_22B9358B4((*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
    v23 = *(v0 + 1112);
    *(v0 + 1328) = v23;
    *(v0 + 16) = v21;
    *(v0 + 24) = v20;
    *(v0 + 32) = v19;
    *(v0 + 40) = v18;
    *(v0 + 48) = v17;
    *(v0 + 56) = v16;
    *(v0 + 64) = v15;
    v24 = *v22;
    v25 = swift_task_alloc();
    *(v0 + 1336) = v25;
    *v25 = v0;
    v25[1] = sub_22B9E9124;
    v26 = *(v0 + 1344);
    v27 = *(v0 + 1347);

    return sub_22B9EA8E4(v27, v23, v26, v0 + 16);
  }
}

uint64_t sub_22B9E8DF8()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1288);
  *(v0 + 1096) = (*(v0 + 1304))();
  *(v0 + 1104) = v4;
  *(v0 + 1320) = v4;

  return MEMORY[0x2822009F8](sub_22B9E8E7C, 0, 0);
}

uint64_t sub_22B9E8E7C()
{
  v1 = (v0 + 1112);
  v2 = *(v0 + 1320);
  v3 = MEMORY[0x277D837D0];
  if (v2)
  {
    v4 = *(v0 + 1096);
    *(v0 + 736) = MEMORY[0x277D837D0];
    *(v0 + 712) = v4;
    *(v0 + 720) = v2;
    sub_22B9ECC48(v0 + 712, v0 + 744);
    if (*(v0 + 768))
    {
      sub_22B936C98((v0 + 744), (v0 + 808));
      v5 = *v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 808), 0x437972746E756F63, 0xEB0000000065646FLL, isUniquelyReferenced_nonNull_native);
      *v1 = v5;
    }

    else
    {
      sub_22B949698(v0 + 744);
      sub_22B9EB6F0(0x437972746E756F63, 0xEB0000000065646FLL, (v0 + 776));
      sub_22B949698(v0 + 776);
    }

    sub_22B949698(v0 + 712);
  }

  v7 = *(v0 + 1136);
  if (v7)
  {
    v8 = *(v0 + 1128);
    *(v0 + 96) = v3;
    *(v0 + 72) = v8;
    *(v0 + 80) = v7;
    sub_22B9ECC48(v0 + 72, v0 + 616);
    if (*(v0 + 640))
    {
      sub_22B936C98((v0 + 616), (v0 + 680));

      v9 = *v1;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 680), 0x64616F6C796170, 0xE700000000000000, v10);
      *v1 = v9;
    }

    else
    {

      sub_22B949698(v0 + 616);
      sub_22B9EB6F0(0x64616F6C796170, 0xE700000000000000, (v0 + 648));
      sub_22B949698(v0 + 648);
    }

    sub_22B949698(v0 + 72);
  }

  v11 = *(v0 + 1176);
  v12 = *(v0 + 1346);
  v13 = *(v0 + 1168);
  v14 = *(v0 + 1160);
  v15 = *(v0 + 1345);
  v16 = *(v0 + 1152);
  v17 = *(v0 + 1144);
  v18 = sub_22B9358B4((*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
  v19 = *(v0 + 1112);
  *(v0 + 1328) = v19;
  *(v0 + 16) = v17;
  *(v0 + 24) = v16;
  *(v0 + 32) = v15;
  *(v0 + 40) = v14;
  *(v0 + 48) = v13;
  *(v0 + 56) = v12;
  *(v0 + 64) = v11;
  v20 = *v18;
  v21 = swift_task_alloc();
  *(v0 + 1336) = v21;
  *v21 = v0;
  v21[1] = sub_22B9E9124;
  v22 = *(v0 + 1344);
  v23 = *(v0 + 1347);

  return sub_22B9EA8E4(v23, v19, v22, v0 + 16);
}

uint64_t sub_22B9E9124()
{
  v1 = *(*v0 + 1336);
  v2 = *(*v0 + 1328);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B92BFF4, 0, 0);
}

uint64_t sub_22B9E923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 2380) = v20;
  *(v8 + 2152) = v19;
  *(v8 + 2379) = v18;
  *(v8 + 2136) = v17;
  *(v8 + 2378) = v16;
  *(v8 + 2120) = v15;
  *(v8 + 2377) = a8;
  *(v8 + 2112) = a7;
  *(v8 + 2376) = a6;
  *(v8 + 2104) = a3;
  *(v8 + 2096) = a1;
  v9 = *(*(sub_22BA1003C() - 8) + 64) + 15;
  *(v8 + 2160) = swift_task_alloc();
  v10 = sub_22BA0FD8C();
  *(v8 + 2168) = v10;
  v11 = *(v10 - 8);
  *(v8 + 2176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 2184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9E9374, 0, 0);
}

uint64_t sub_22B9E9374()
{
  v1 = v0[262];
  v2 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[274] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v3 = *sub_22B9358B4((v1 + v2), *(v1 + v2 + 24));
  if ((sub_22BA08808() & 1) != 0 || (v4 = *(v3 + 24), (sub_22B92DA70(1u, 0))) && (v5 = qword_28141ADC8, v0[275] = qword_28141ADC8, v5))
  {
    v6 = qword_28141ADD0;
    v0[276] = qword_28141ADD0;
    v0[277] = *(v6 + 296);
    v0[278] = (v6 + 296) & 0xFFFFFFFFFFFFLL | 0xDDD000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v8 = sub_22BA1029C();
    v0[279] = v8;
    v0[280] = v7;

    return MEMORY[0x2822009F8](sub_22B9E94E0, v8, v7);
  }

  else
  {
    v9 = v0[273];
    v10 = v0[270];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22B9E94E0()
{
  v1 = *(v0 + 2224);
  v2 = *(v0 + 2208);
  v3 = *(v0 + 2200);
  *(v0 + 2381) = (*(v0 + 2216))() & 1;

  return MEMORY[0x2822009F8](sub_22B9E9560, 0, 0);
}

uint64_t sub_22B9E9560()
{
  if (*(v0 + 2381) == 1)
  {
    v1 = (v0 + 2088);
    v2 = *(v0 + 2380);
    v3 = sub_22B9ECB18();
    *(v0 + 2088) = v3;
    v4 = sub_22B9EB0F4(v2);
    v5 = MEMORY[0x277D837D0];
    *(v0 + 1336) = MEMORY[0x277D837D0];
    *(v0 + 1312) = v4;
    *(v0 + 1320) = v6;
    sub_22B9ECC48(v0 + 1312, v0 + 1280);
    if (*(v0 + 1304))
    {
      sub_22B936C98((v0 + 1280), (v0 + 512));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 512), 0x6D614E70756F7267, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
      *v1 = v3;
    }

    else
    {
      sub_22B949698(v0 + 1280);
      sub_22B9EB6F0(0x6D614E70756F7267, 0xE900000000000065, (v0 + 1248));
      sub_22B949698(v0 + 1248);
    }

    v12 = *(v0 + 2104);
    sub_22B949698(v0 + 1312);
    v13 = sub_22BA1039C();
    v14 = sub_22B937ED8();
    *(v0 + 1240) = v14;
    *(v0 + 1216) = v13;
    sub_22B9ECC48(v0 + 1216, v0 + 1152);
    if (*(v0 + 1176))
    {
      sub_22B936C98((v0 + 1152), (v0 + 1696));
      v15 = *v1;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 1696), 0x65747441636E7973, 0xEC0000007374706DLL, v16);
      *v1 = v15;
    }

    else
    {
      sub_22B949698(v0 + 1152);
      sub_22B9EB6F0(0x65747441636E7973, 0xEC0000007374706DLL, (v0 + 2016));
      sub_22B949698(v0 + 2016);
    }

    v17 = *(v0 + 2376);
    sub_22B949698(v0 + 1216);
    v18 = v17 >> 6;
    if (v17 > 0x3F)
    {
      v19 = v0 + 576;
      v21 = sub_22BA1070C();
      *(v0 + 600) = v14;
      *(v0 + 576) = v21;
      sub_22B9ECC48(v0 + 576, v0 + 608);
      if (*(v0 + 632))
      {
        sub_22B936C98((v0 + 608), (v0 + 1888));
        v22 = *v1;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v22;
        v24 = (v0 + 1888);
LABEL_18:
        sub_22B9BAE64(v24, 0x63637553636E7973, 0xEB00000000737365, v23);
        *v1 = v55;
LABEL_22:
        sub_22B949698(v19);
        if (v18)
        {
          if (v18 == 1)
          {
            v28 = 0xE800000000000000;
            v29 = 0x6465727265666564;
          }

          else
          {
            v28 = 0xEB0000000064656CLL;
            v29 = 0x7564656863736572;
          }
        }

        else
        {
          v28 = 0xE800000000000000;
          v29 = 0x64656873696E6966;
        }

        *(v0 + 696) = v5;
        *(v0 + 672) = v29;
        *(v0 + 680) = v28;
        sub_22B9ECC48(v0 + 672, v0 + 704);
        if (*(v0 + 728))
        {
          sub_22B936C98((v0 + 704), (v0 + 1856));
          v30 = *v1;
          v31 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 1856), 0x74617453636E7973, 0xEA00000000007375, v31);
          *v1 = v30;
        }

        else
        {
          sub_22B949698(v0 + 704);
          sub_22B9EB6F0(0x74617453636E7973, 0xEA00000000007375, (v0 + 736));
          sub_22B949698(v0 + 736);
        }

        v32 = *(v0 + 2184);
        v33 = *(v0 + 2096);
        sub_22B949698(v0 + 672);
        sub_22BA0FD6C();
        sub_22BA0FCEC();
        v34 = sub_22BA1036C();
        *(v0 + 792) = v14;
        *(v0 + 768) = v34;
        sub_22B9ECC48(v0 + 768, v0 + 800);
        if (*(v0 + 824))
        {
          sub_22B936C98((v0 + 800), (v0 + 1824));
          v35 = *v1;
          v36 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 1824), 0x61727544636E7973, 0xEC0000006E6F6974, v36);
          *v1 = v35;
        }

        else
        {
          sub_22B949698(v0 + 800);
          sub_22B9EB6F0(0x61727544636E7973, 0xEC0000006E6F6974, (v0 + 832));
          sub_22B949698(v0 + 832);
        }

        v37 = *(v0 + 2096);
        sub_22B949698(v0 + 768);
        v38 = sub_22BA0FD9C();
        *(v0 + 888) = v5;
        *(v0 + 864) = v38;
        *(v0 + 872) = v39;
        sub_22B9ECC48(v0 + 864, v0 + 896);
        if (*(v0 + 920))
        {
          sub_22B936C98((v0 + 896), (v0 + 1792));
          v40 = *v1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 1792), 0x73736553636E7973, 0xED000044496E6F69, v41);
          *v1 = v40;
        }

        else
        {
          sub_22B949698(v0 + 896);
          sub_22B9EB6F0(0x73736553636E7973, 0xED000044496E6F69, (v0 + 928));
          sub_22B949698(v0 + 928);
        }

        v42 = (*(v0 + 2096) + *(v0 + 2192));
        sub_22B949698(v0 + 864);
        v43 = sub_22B9358B4(v42, v42[3]);
        v44 = *(*v43 + 32);
        v45 = *(*v43 + 40);
        *(v0 + 984) = v5;
        *(v0 + 960) = v44;
        *(v0 + 968) = v45;
        sub_22B9ECC48(v0 + 960, v0 + 992);
        if (*(v0 + 1016))
        {
          sub_22B936C98((v0 + 992), (v0 + 1760));

          v46 = *v1;
          v47 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 1760), 0x4449656369766564, 0xE800000000000000, v47);
          *v1 = v46;
        }

        else
        {

          sub_22B949698(v0 + 992);
          sub_22B9EB6F0(0x4449656369766564, 0xE800000000000000, (v0 + 1024));
          sub_22B949698(v0 + 1024);
        }

        v48 = *(v0 + 2096);
        sub_22B949698(v0 + 960);
        v49 = qword_22BA1A500[*(*sub_22B9358B4((v48 + 16), *(v48 + 40)) + 17)];
        v50 = sub_22BA1039C();
        *(v0 + 1080) = v14;
        *(v0 + 1056) = v50;
        sub_22B9ECC48(v0 + 1056, v0 + 1088);
        if (*(v0 + 1112))
        {
          sub_22B936C98((v0 + 1088), (v0 + 1728));
          v51 = *v1;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 1728), 0x65707954636E7973, 0xE800000000000000, v52);
          *v1 = v51;
        }

        else
        {
          sub_22B949698(v0 + 1088);
          sub_22B9EB6F0(0x65707954636E7973, 0xE800000000000000, (v0 + 1120));
          sub_22B949698(v0 + 1120);
        }

        v53 = *(v0 + 2096);
        sub_22B949698(v0 + 1056);
        v54 = *(v53 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
        *(v0 + 2248) = v54;

        return MEMORY[0x2822009F8](sub_22B9E9DB8, v54, 0);
      }

      sub_22B949698(v0 + 608);
      sub_22B9EB6F0(0x63637553636E7973, 0xEB00000000737365, (v0 + 640));
      v27 = v0 + 640;
    }

    else
    {
      v19 = v0 + 1920;
      v20 = *(v0 + 2112);
      if (*(v0 + 2376))
      {
        sub_22BA10C6C();
      }

      v25 = sub_22BA1070C();
      *(v0 + 1944) = v14;
      *(v0 + 1920) = v25;
      sub_22B9ECC48(v0 + 1920, v0 + 1952);
      if (*(v0 + 1976))
      {
        sub_22B936C98((v0 + 1952), (v0 + 544));
        v26 = *v1;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v26;
        v24 = (v0 + 544);
        goto LABEL_18;
      }

      sub_22B949698(v0 + 1952);
      sub_22B9EB6F0(0x63637553636E7973, 0xEB00000000737365, (v0 + 1984));
      v27 = v0 + 1984;
    }

    sub_22B949698(v27);
    goto LABEL_22;
  }

  v8 = *(v0 + 2184);
  v9 = *(v0 + 2160);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B9E9DB8()
{
  if (qword_281416A58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2248);
  swift_beginAccess();
  v2 = *(v1 + 128);
  *(v0 + 16) = *(v1 + 112);
  *(v0 + 32) = v2;
  v3 = *(v1 + 144);
  v4 = *(v1 + 160);
  v5 = *(v1 + 176);
  *(v0 + 96) = *(v1 + 192);
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 48) = v3;
  v7 = *(v1 + 160);
  v6 = *(v1 + 176);
  v8 = *(v1 + 144);
  *(v0 + 448) = *(v1 + 192);
  *(v0 + 416) = v7;
  *(v0 + 432) = v6;
  *(v0 + 400) = v8;
  v9 = *(v1 + 128);
  *(v0 + 368) = *(v1 + 112);
  *(v0 + 384) = v9;
  sub_22B964698(v0 + 16, v0 + 280);
  sub_22B9BF828();
  v10 = sub_22BA0F99C();
  v11 = *(v0 + 2160);
  v12 = *(v0 + 416);
  *(v0 + 136) = *(v0 + 400);
  *(v0 + 152) = v12;
  *(v0 + 168) = *(v0 + 432);
  *(v0 + 184) = *(v0 + 448);
  v13 = *(v0 + 384);
  *(v0 + 104) = *(v0 + 368);
  *(v0 + 120) = v13;
  v14 = v10;
  v16 = v15;
  sub_22B9646D0(v0 + 104);
  sub_22BA1002C();
  v17 = sub_22BA1000C();
  v19 = v18;
  sub_22B9359BC(v14, v16);
  if (!v19)
  {
    v19 = 0x800000022BA1DF60;
    v17 = 0xD00000000000001ALL;
  }

  *(v0 + 2264) = v19;
  *(v0 + 2256) = v17;

  return MEMORY[0x2822009F8](sub_22B9E9FA4, 0, 0);
}

uint64_t sub_22B9E9FA4()
{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);
  *(v0 + 1208) = MEMORY[0x277D837D0];
  *(v0 + 1184) = v2;
  *(v0 + 1192) = v1;
  sub_22B9ECC48(v0 + 1184, v0 + 1344);
  if (*(v0 + 1368))
  {
    sub_22B936C98((v0 + 1344), (v0 + 1664));
    v3 = *(v0 + 2088);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B9BAE64((v0 + 1664), 0x6E756F43636E7973, 0xEA00000000007374, isUniquelyReferenced_nonNull_native);
    *(v0 + 2088) = v3;
  }

  else
  {
    sub_22B949698(v0 + 1344);
    sub_22B9EB6F0(0x6E756F43636E7973, 0xEA00000000007374, (v0 + 1376));
    sub_22B949698(v0 + 1376);
  }

  sub_22B949698(v0 + 1184);
  v5 = qword_28141ADC8;
  *(v0 + 2272) = qword_28141ADC8;
  if (v5)
  {
    v6 = qword_28141ADD0;
    *(v0 + 2280) = qword_28141ADD0;
    *(v0 + 2288) = *(v6 + 288);
    *(v0 + 2296) = (v6 + 288) & 0xFFFFFFFFFFFFLL | 0xAF0000000000000;
    v7 = *(v0 + 2240);
    v8 = *(v0 + 2232);

    return MEMORY[0x2822009F8](sub_22B9EA1FC, v8, v7);
  }

  else
  {
    v9 = *(v0 + 2152);
    v10 = *(v0 + 2379);
    v11 = *(v0 + 2144);
    v12 = *(v0 + 2136);
    v13 = *(v0 + 2378);
    v14 = *(v0 + 2128);
    v15 = *(v0 + 2120);
    v16 = sub_22B9358B4((*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
    v17 = *(v0 + 2088);
    *(v0 + 2360) = v17;
    *(v0 + 456) = v15;
    *(v0 + 464) = v14;
    *(v0 + 472) = v13;
    *(v0 + 480) = v12;
    *(v0 + 488) = v11;
    *(v0 + 496) = v10;
    *(v0 + 504) = v9;
    v18 = *v16;
    v19 = swift_task_alloc();
    *(v0 + 2368) = v19;
    *v19 = v0;
    v19[1] = sub_22B9EA744;
    v20 = *(v0 + 2377);
    v21 = *(v0 + 2380);

    return sub_22B9EA8E4(v21, v17, v20, v0 + 456);
  }
}

uint64_t sub_22B9EA1FC()
{
  v1 = *(v0 + 2296);
  v2 = *(v0 + 2280);
  v3 = *(v0 + 2272);
  *(v0 + 2304) = (*(v0 + 2288))();
  *(v0 + 2312) = v4;

  return MEMORY[0x2822009F8](sub_22B9EA27C, 0, 0);
}

uint64_t sub_22B9EA27C()
{
  v1 = *(v0 + 2312);
  v2 = *(v0 + 2304);
  *(v0 + 1560) = MEMORY[0x277D837D0];
  *(v0 + 1536) = v2;
  *(v0 + 1544) = v1;
  sub_22B9ECC48(v0 + 1536, v0 + 1568);
  if (*(v0 + 1592))
  {
    sub_22B936C98((v0 + 1568), (v0 + 1632));
    v3 = *(v0 + 2088);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B9BAE64((v0 + 1632), 0x7453656369766564, 0xEB00000000657461, isUniquelyReferenced_nonNull_native);
    *(v0 + 2088) = v3;
  }

  else
  {
    sub_22B949698(v0 + 1568);
    sub_22B9EB6F0(0x7453656369766564, 0xEB00000000657461, (v0 + 1600));
    sub_22B949698(v0 + 1600);
  }

  sub_22B949698(v0 + 1536);
  v5 = qword_28141ADC8;
  *(v0 + 2320) = qword_28141ADC8;
  if (v5)
  {
    v6 = qword_28141ADD0;
    *(v0 + 2328) = qword_28141ADD0;
    *(v0 + 2336) = *(v6 + 224);
    *(v0 + 2344) = (v6 + 224) & 0xFFFFFFFFFFFFLL | 0x1DF5000000000000;
    v7 = *(v0 + 2240);
    v8 = *(v0 + 2232);

    return MEMORY[0x2822009F8](sub_22B9EA4D4, v8, v7);
  }

  else
  {
    v9 = *(v0 + 2152);
    v10 = *(v0 + 2379);
    v11 = *(v0 + 2144);
    v12 = *(v0 + 2136);
    v13 = *(v0 + 2378);
    v14 = *(v0 + 2128);
    v15 = *(v0 + 2120);
    v16 = sub_22B9358B4((*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
    v17 = *(v0 + 2088);
    *(v0 + 2360) = v17;
    *(v0 + 456) = v15;
    *(v0 + 464) = v14;
    *(v0 + 472) = v13;
    *(v0 + 480) = v12;
    *(v0 + 488) = v11;
    *(v0 + 496) = v10;
    *(v0 + 504) = v9;
    v18 = *v16;
    v19 = swift_task_alloc();
    *(v0 + 2368) = v19;
    *v19 = v0;
    v19[1] = sub_22B9EA744;
    v20 = *(v0 + 2377);
    v21 = *(v0 + 2380);

    return sub_22B9EA8E4(v21, v17, v20, v0 + 456);
  }
}

uint64_t sub_22B9EA4D4()
{
  v1 = *(v0 + 2344);
  v2 = *(v0 + 2328);
  v3 = *(v0 + 2320);
  *(v0 + 2072) = (*(v0 + 2336))();
  *(v0 + 2080) = v4;
  *(v0 + 2352) = v4;

  return MEMORY[0x2822009F8](sub_22B9EA558, 0, 0);
}

uint64_t sub_22B9EA558()
{
  v1 = *(v0 + 2352);
  if (v1)
  {
    v2 = (v0 + 2088);
    v3 = *(v0 + 2072);
    *(v0 + 1432) = MEMORY[0x277D837D0];
    *(v0 + 1408) = v3;
    *(v0 + 1416) = v1;
    sub_22B9ECC48(v0 + 1408, v0 + 1440);
    if (*(v0 + 1464))
    {
      sub_22B936C98((v0 + 1440), (v0 + 1504));
      v4 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 1504), 0x437972746E756F63, 0xEB0000000065646FLL, isUniquelyReferenced_nonNull_native);
      *v2 = v4;
    }

    else
    {
      sub_22B949698(v0 + 1440);
      sub_22B9EB6F0(0x437972746E756F63, 0xEB0000000065646FLL, (v0 + 1472));
      sub_22B949698(v0 + 1472);
    }

    sub_22B949698(v0 + 1408);
  }

  v6 = *(v0 + 2152);
  v7 = *(v0 + 2379);
  v8 = *(v0 + 2144);
  v9 = *(v0 + 2136);
  v10 = *(v0 + 2378);
  v11 = *(v0 + 2128);
  v12 = *(v0 + 2120);
  v13 = sub_22B9358B4((*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
  v14 = *(v0 + 2088);
  *(v0 + 2360) = v14;
  *(v0 + 456) = v12;
  *(v0 + 464) = v11;
  *(v0 + 472) = v10;
  *(v0 + 480) = v9;
  *(v0 + 488) = v8;
  *(v0 + 496) = v7;
  *(v0 + 504) = v6;
  v15 = *v13;
  v16 = swift_task_alloc();
  *(v0 + 2368) = v16;
  *v16 = v0;
  v16[1] = sub_22B9EA744;
  v17 = *(v0 + 2377);
  v18 = *(v0 + 2380);

  return sub_22B9EA8E4(v18, v14, v17, v0 + 456);
}

uint64_t sub_22B9EA744()
{
  v1 = *(*v0 + 2368);
  v2 = *(*v0 + 2360);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B9EA85C, 0, 0);
}

uint64_t sub_22B9EA85C()
{
  (*(v0[272] + 8))(v0[273], v0[271]);
  v1 = v0[273];
  v2 = v0[270];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B9EA8E4(char a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 105) = a3;
  *(v5 + 16) = a2;
  *(v5 + 104) = a1;
  *(v5 + 40) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22B9EA960, 0, 0);
}

uint64_t sub_22B9EA960()
{
  v26 = v0;
  v1 = qword_28141ADC8;
  v0[6] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[7] = qword_28141ADD0;
    v0[8] = *(v2 + 296);
    v0[9] = (v2 + 296) & 0xFFFFFFFFFFFFLL | 0xDDD000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v4 = sub_22BA1029C();

    return MEMORY[0x2822009F8](sub_22B9EABF8, v4, v3);
  }

  else
  {
    if (qword_281414D10 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141ACF8);
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[3];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315650;
      v11 = *v8;
      v12 = v8[1];
      v13 = *(v8 + 16);
      v14 = sub_22BA1091C();
      v16 = sub_22B99153C(v14, v15, &v25);

      *(v9 + 4) = v16;
      *(v9 + 12) = 2080;
      v17 = v8[3];
      v18 = v8[4];
      v19 = *(v8 + 40);
      v20 = sub_22BA1091C();
      v22 = sub_22B99153C(v20, v21, &v25);

      *(v9 + 14) = v22;
      *(v9 + 22) = 2048;
      *(v9 + 24) = v8[6];
      _os_log_impl(&dword_22B92A000, v6, v7, "Tried reporting to RTC but RTC is disabled [%s:%s:%lu]", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_22B9EABF8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  *(v0 + 106) = (*(v0 + 64))() & 1;

  return MEMORY[0x2822009F8](sub_22B9EAC70, 0, 0);
}

uint64_t sub_22B9EAC70()
{
  v40 = v0;
  if (*(v0 + 106) == 1)
  {
    v1 = *(v0 + 32);
    v35 = *(v0 + 105);
    v2 = *(v0 + 24);
    v37 = *(v0 + 16);
    v38 = *(v0 + 40);
    v3 = 2;
    if (*(v0 + 104) - 88 < 9)
    {
      v3 = 3;
    }

    v36 = v3;
    v4 = *v2;
    v5 = v2[1];
    v6 = *(v2 + 16);
    v7 = v2[3];
    v8 = v2[4];
    v9 = *(v2 + 40);
    v10 = v2[6];
    v11 = swift_allocObject();
    *(v0 + 80) = v11;
    swift_unknownObjectWeakInit();
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *(v12 + 16) = v11;
    *(v12 + 24) = v35;
    *(v12 + 32) = v4;
    *(v12 + 40) = v5;
    *(v12 + 48) = v6;
    *(v12 + 56) = v7;
    *(v12 + 64) = v8;
    *(v12 + 72) = v9;
    *(v12 + 80) = v10;
    *(v12 + 88) = v37;
    *(v12 + 96) = v36;
    *(v12 + 104) = v38;
    v13 = *(MEMORY[0x277D859E0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    *v14 = v0;
    v14[1] = sub_22B9EAFC0;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    if (qword_281414D10 != -1)
    {
      swift_once();
    }

    v15 = sub_22BA0FEFC();
    sub_22B936CA8(v15, qword_28141ACF8);
    v16 = sub_22BA0FEDC();
    v17 = sub_22BA1044C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 24);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      *v19 = 136315650;
      v21 = *v18;
      v22 = v18[1];
      v23 = *(v18 + 16);
      v24 = sub_22BA1091C();
      v26 = sub_22B99153C(v24, v25, &v39);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2080;
      v27 = v18[3];
      v28 = v18[4];
      v29 = *(v18 + 40);
      v30 = sub_22BA1091C();
      v32 = sub_22B99153C(v30, v31, &v39);

      *(v19 + 14) = v32;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v18[6];
      _os_log_impl(&dword_22B92A000, v16, v17, "Tried reporting to RTC but RTC is disabled [%s:%s:%lu]", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v20, -1, -1);
      MEMORY[0x23189ADD0](v19, -1, -1);
    }

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_22B9EAFC0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B92BFF4, 0, 0);
}

unint64_t sub_22B9EB0F4(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
    case 19:
    case 74:
    case 96:
      result = 0xD000000000000018;
      break;
    case 2:
    case 10:
    case 11:
    case 18:
    case 37:
    case 51:
    case 53:
    case 63:
    case 72:
    case 91:
    case 97:
      result = 0xD000000000000015;
      break;
    case 3:
    case 4:
    case 7:
    case 8:
    case 30:
    case 44:
    case 57:
    case 67:
    case 73:
    case 83:
    case 84:
    case 88:
      result = 0xD000000000000016;
      break;
    case 5:
    case 9:
    case 25:
    case 29:
    case 43:
    case 52:
    case 62:
    case 85:
      result = 0xD000000000000014;
      break;
    case 6:
    case 27:
    case 36:
    case 50:
    case 86:
    case 98:
      result = 0xD00000000000001ELL;
      break;
    case 12:
    case 15:
    case 17:
    case 28:
    case 42:
    case 93:
      result = 0xD000000000000013;
      break;
    case 13:
    case 24:
    case 92:
      result = 0xD00000000000001DLL;
      break;
    case 14:
    case 75:
      result = 0xD00000000000001BLL;
      break;
    case 16:
    case 41:
    case 82:
      result = 0xD000000000000012;
      break;
    case 20:
    case 26:
    case 35:
    case 49:
    case 81:
      result = 0xD000000000000020;
      break;
    case 21:
    case 32:
    case 38:
    case 46:
    case 60:
    case 70:
      result = 0xD000000000000021;
      break;
    case 22:
      result = 0xD000000000000029;
      break;
    case 23:
    case 39:
    case 61:
    case 71:
    case 94:
      result = 0xD00000000000001FLL;
      break;
    case 31:
    case 45:
    case 95:
      result = 0xD000000000000019;
      break;
    case 33:
    case 47:
    case 56:
    case 66:
    case 80:
      result = 0xD000000000000022;
      break;
    case 34:
    case 48:
      result = 0xD00000000000002ALL;
      break;
    case 40:
      result = 0xD000000000000011;
      break;
    case 54:
    case 64:
    case 77:
    case 89:
    case 90:
      result = 0xD000000000000017;
      break;
    case 55:
    case 65:
      result = 0xD00000000000001ALL;
      break;
    case 58:
    case 68:
    case 76:
      result = 0xD000000000000023;
      break;
    case 59:
    case 69:
      result = 0xD00000000000002BLL;
      break;
    case 78:
      result = 0xD000000000000024;
      break;
    case 79:
      result = 0xD00000000000002CLL;
      break;
    case 87:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

double sub_22B9EB6F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22B990A58(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22B9EBF40();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_22B936C98((*(v12 + 56) + 32 * v9), a3);
    sub_22B9EB794(v9, v12);
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

uint64_t sub_22B9EB794(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22BA107DC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22BA10D3C();

      sub_22BA1008C();
      v14 = sub_22BA10D6C();

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

uint64_t sub_22B9EB944(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22BA107DC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22BA10D3C();

      sub_22BA1008C();
      v13 = sub_22BA10D6C();

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

void *sub_22B9EBAF4()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D4BC0, &qword_22BA18560);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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