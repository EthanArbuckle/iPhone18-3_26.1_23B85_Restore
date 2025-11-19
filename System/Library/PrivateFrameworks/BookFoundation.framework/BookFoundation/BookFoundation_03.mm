uint64_t sub_241CC6640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v6 = *MEMORY[0x277D84DE8];
  v21 = *a1;
  v7 = *(v21 + v6);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for ContentDataSource();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v19 - v15;
  (*(a3 + 40))(a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      (*(*(*(*(v21 + *MEMORY[0x277D84DE8] + 8) + 16) - 8) + 56))(v22, 1, 1);
      return (*(v20 + 8))(v12, v8);
    }
  }

  else
  {
  }

  (*(v13 + 32))(v16, v12, v7);
  swift_getAtKeyPath();
  return (*(v13 + 8))(v16, v7);
}

uint64_t sub_241CC68E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v6 = *MEMORY[0x277D84DE8];
  v22 = *a1;
  v7 = *(v22 + v6);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for ContentDataSource();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v20 - v15;
  (*(a3 + 40))(a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      (*(*(*(v22 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(v23, 1, 1);
      return (*(v21 + 8))(v12, v8);
    }
  }

  else
  {
  }

  (*(v13 + 32))(v16, v12, v7);
  v19 = v23;
  swift_getAtKeyPath();
  (*(v13 + 8))(v16, v7);
  return (*(*(*(v22 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(v19, 0, 1);
}

uint64_t sub_241CC6BD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_241C93918(&qword_27EC6A440, "\ba");
  v33 = a2;
  result = sub_241CF97F8();
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_241CF9998();
      sub_241CF99B8();
      if (v21 != 6)
      {
        MEMORY[0x245CFE100](v21);
      }

      result = sub_241CF99C8();
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

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_39;
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
      goto LABEL_37;
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

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_241CC6E98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_241C93918(&qword_27EC6A4A8, &qword_241CFD330);
  v38 = a2;
  result = sub_241CF97F8();
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
      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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

uint64_t sub_241CC7138(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_241C93918(&qword_27EC6A4A0, &qword_241CFD328);
  result = sub_241CF97F8();
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_241C8E30C(v22, v33);
      }

      else
      {
        sub_241C93664(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_241CF9998();
      MEMORY[0x245CFE100](v21);
      result = sub_241CF99C8();
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
      *(*(v8 + 48) + v16) = v21;
      result = sub_241C8E30C(v33, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_241CC73CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_241C93918(&qword_27EC6A498, &qword_241CFD320);
  v38 = a2;
  result = sub_241CF97F8();
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
      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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

uint64_t sub_241CC7688(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_241C93918(&qword_27EC6A488, &unk_241CFD308);
  v40 = a2;
  result = sub_241CF97F8();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v26 = *(v5 + 56) + (v22 << 6);
      if (v40)
      {
        v41 = *(v26 + 8);
        v46 = *(v26 + 16);
        v42 = *(v26 + 24);
        v43 = *v26;
        v44 = *(v26 + 32);
        v45 = *(v26 + 48);
      }

      else
      {
        v27 = *v26;
        v28 = *(v26 + 16);
        v29 = *(v26 + 48);
        v48 = *(v26 + 32);
        v49 = v29;
        v47[0] = v27;
        v47[1] = v28;
        v44 = v48;
        v45 = v29;
        v42 = *(&v28 + 1);
        v46 = v28;
        v41 = *(&v27 + 1);
        v43 = v27;

        sub_241CC5AB0(v47, v50);
      }

      v30 = *(v8 + 40);
      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 6);
      *v18 = v43;
      *(v18 + 8) = v41;
      *(v18 + 16) = v46;
      *(v18 + 24) = v42;
      *(v18 + 32) = v44;
      *(v18 + 48) = v45;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_241CC79AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
  v38 = a2;
  result = sub_241CF97F8();
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
      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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

uint64_t sub_241CC7CB0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_241C93918(a3, a4);
  v41 = a2;
  result = sub_241CF97F8();
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
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

uint64_t sub_241CC7F4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_241C93918(&qword_27EC6A450, &qword_241CFD2C8);
  v34 = a2;
  result = sub_241CF97F8();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = (*(v5 + 48) + 16 * (v18 | (v9 << 6)));
      v22 = *v21;
      v23 = v21[1];
      if ((v34 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v22;
      v17[1] = v23;
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

uint64_t sub_241CC81F0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_241C93918(a3, a4);
  v40 = a2;
  result = sub_241CF97F8();
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
      v27 = *(*(v7 + 56) + v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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
      *(*(v10 + 56) + v18) = v27;
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

void *sub_241CC849C()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A4A8, &qword_241CFD330);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_241CC8604()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A4A0, &qword_241CFD328);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        sub_241C93664(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_241C8E30C(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_241CC8780()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A498, &qword_241CFD320);
  v2 = *v0;
  v3 = sub_241CF97E8();
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

void *sub_241CC88F0()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A490, &qword_241CFD318);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        sub_241CBE164(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_241C93664(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_241C8E30C(v22, (*(v4 + 56) + v17));
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

void *sub_241CC8AA8()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A488, &unk_241CFD308);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_241CC5AB0(&v32, &v31);
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

void *sub_241CC8C48()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

id sub_241CC8E14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_241C93918(a1, a2);
  v4 = *v2;
  v5 = sub_241CF97E8();
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

void *sub_241CC8F70()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A450, &qword_241CFD2C8);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_241CC90E0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_241C93918(a1, a2);
  v4 = *v2;
  v5 = sub_241CF97E8();
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
        v22 = *v20;
        v21 = v20[1];
        LOBYTE(v20) = *(*(v4 + 56) + v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + v19) = v20;
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

uint64_t sub_241CC928C(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC6A438, &qword_241CFD278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSManagedObjectContext.executeAndMergeChanges(using:)(NSBatchDeleteRequest using)
{
  v23 = *MEMORY[0x277D85DE8];
  [(objc_class *)using.super.super.isa setResultType:1];
  *&v21 = 0;
  v3 = [v1 executeRequest:using.super.super.isa error:&v21];
  v4 = v21;
  if (v3)
  {
    v5 = v3;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v7 = v4;
    if (!v6)
    {
    }

    sub_241C93918(&qword_27EC6A4B0, &qword_241CFD338);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241CFAAF0;
    v10 = *MEMORY[0x277CBE150];
    *&v21 = sub_241CF9038();
    *(&v21 + 1) = v11;
    sub_241CF9668();
    if (v6)
    {
      if ([v6 result])
      {
        sub_241CF95F8();
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      v21 = v19;
      v22 = v20;
      if (*(&v20 + 1))
      {
        sub_241C93918(&qword_27EC6A4B8, &unk_241CFD340);
        if (swift_dynamicCast())
        {
          v12 = v19;
          *(inited + 96) = sub_241C93918(&qword_27EC6A4B8, &unk_241CFD340);
          if (v19)
          {
LABEL_18:
            *(inited + 72) = v12;
            sub_241CE0808(inited);
            swift_setDeallocating();
            sub_241C8EA54(inited + 32, &qword_27EC6A4C0, &unk_241CFEDA0);
            v13 = objc_opt_self();
            v14 = sub_241CF8EE8();

            sub_241C93918(&qword_27EC6A0A0, &qword_241CFC458);
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_241CFBC10;
            *(v15 + 32) = v1;
            sub_241CC9658();
            v16 = v1;
            v17 = sub_241CF9288();

            [v13 mergeChangesFromRemoteContextSave:v14 intoContexts:v17];

            goto LABEL_19;
          }

LABEL_17:
          v12 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }

LABEL_16:
        *(inited + 96) = sub_241C93918(&qword_27EC6A4B8, &unk_241CFD340);
        goto LABEL_17;
      }
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    sub_241C8EA54(&v21, &qword_27EC6A0B0, &qword_241CFE350);
    goto LABEL_16;
  }

  v8 = v21;
  sub_241CF8C58();

  swift_willThrow();
LABEL_19:
  v18 = *MEMORY[0x277D85DE8];
}

unint64_t sub_241CC9658()
{
  result = qword_27EC6A4C8;
  if (!qword_27EC6A4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC6A4C8);
  }

  return result;
}

uint64_t AssetInfo.sequenceNumber.getter(uint64_t a1, uint64_t a2)
{
  AssetInfo.seriesOrdering.getter(a1, a2, &v8);
  if (v8 != 2)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v4);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v6 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v6, a1, *(a2 + 8), &v8);

  return v8;
}

uint64_t AssetInfo.releaseDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_241CC6184(KeyPath, v7, a1, *(a2 + 8), a3);
}

uint64_t sub_241CC9940(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v5, a1, *(a2 + 8), &v7);

  return v7;
}

uint64_t AssetType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F6F626F69647561;
  }

  if (a1 == 1)
  {
    return 1802465122;
  }

  return 6710384;
}

uint64_t sub_241CC9A68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1802465122;
  if (v2 != 1)
  {
    v4 = 6710384;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F6F626F69647561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE90000000000006BLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1802465122;
  if (*a2 != 1)
  {
    v8 = 6710384;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F6F626F69647561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE90000000000006BLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_241CF98C8();
  }

  return v11 & 1;
}

uint64_t sub_241CC9B4C()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CC9BE4()
{
  *v0;
  *v0;
  sub_241CF90B8();
}

uint64_t sub_241CC9C68()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CC9CFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s14BookFoundation9AssetTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_241CC9D2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006BLL;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  if (v2 != 1)
  {
    v5 = 6710384;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6F626F69647561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FinishedDateKind.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

uint64_t sub_241CC9E6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 16);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v10;
  return result;
}

char *AssetInfo.authors.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for ContentDataSource();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v35 - v8);
  (*(v3 + 40))(a1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 8))(v9, v5);
      return 0;
    }

    v11 = *v9;
  }

  else
  {
    v11 = *(v9 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(AssociatedTypeWitness - 8) + 8))(v9, AssociatedTypeWitness);
  }

  v12 = sub_241CA8158(@"authors");

  if (!v12)
  {
    return 0;
  }

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_23:

    return MEMORY[0x277D84F90];
  }

  v13 = sub_241CF97D8();
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_9:
  v36 = MEMORY[0x277D84F90];
  result = sub_241C945F4(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = v36;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        v17 = MEMORY[0x245CFDE40](v16, v12);
        v19 = *(v17 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
        v18 = *(v17 + OBJC_IVAR____TtC14BookFoundation9MResource_id + 8);
        v21 = *(v17 + OBJC_IVAR____TtC14BookFoundation7MAuthor_name);
        v20 = *(v17 + OBJC_IVAR____TtC14BookFoundation7MAuthor_name + 8);

        swift_unknownObjectRelease();
        v36 = v15;
        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_241C945F4((v22 > 1), v23 + 1, 1);
          v15 = v36;
        }

        ++v16;
        *(v15 + 16) = v23 + 1;
        v24 = (v15 + 32 * v23);
        v24[4] = v19;
        v24[5] = v18;
        v24[6] = v21;
        v24[7] = v20;
      }

      while (v13 != v16);
    }

    else
    {
      v25 = (v12 + 32);
      v35 = v12;
      do
      {
        v26 = (*v25 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
        v28 = *v26;
        v27 = v26[1];
        v29 = (*v25 + OBJC_IVAR____TtC14BookFoundation7MAuthor_name);
        v31 = *v29;
        v30 = v29[1];
        v36 = v15;
        v33 = *(v15 + 16);
        v32 = *(v15 + 24);

        if (v33 >= v32 >> 1)
        {
          sub_241C945F4((v32 > 1), v33 + 1, 1);
          v15 = v36;
        }

        *(v15 + 16) = v33 + 1;
        v34 = (v15 + 32 * v33);
        v34[4] = v28;
        v34[5] = v27;
        v34[6] = v31;
        v34[7] = v30;
        ++v25;
        --v13;
      }

      while (v13);
    }

    return v15;
  }

  __break(1u);
  return result;
}

void AssetInfo.coverAspectRatio.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = *(a2 + 8);
  sub_241CC40F0(KeyPath, a1, v5, &v9);

  if (v10 & 1) != 0 || (MEMORY[0x28223BE20](v6), v7 = swift_getKeyPath(), sub_241CC40F0(v7, a1, v5, &v9), v6 = , (v10))
  {
    MEMORY[0x28223BE20](v6);
    v8 = swift_getKeyPath();
    sub_241CC6640(v8, a1, v5, &v9);

    if (v10)
    {
      AssetInfo.defaultCoverAspectRatio.getter(a1, a2);
    }
  }
}

uint64_t sub_241CCA44C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 24);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  *(a3 + 8) = v10 & 1;
  return result;
}

double AssetInfo.defaultCoverAspectRatio.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24))())
  {
    v2 = sub_241CF98C8();

    result = 0.641025641;
    if (v2)
    {
      return 1.0;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}

uint64_t sub_241CCA5C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 32);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_241CCA694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(*(a2 + a3 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 40);
  v7 = swift_checkMetadataState();
  return v6(v7, AssociatedConformanceWitness);
}

void *AssetInfo.featuredEditions.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for ContentDataSource();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v30 - v8);
  (*(v3 + 40))(a1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 8))(v9, v5);
      return 0;
    }

    v11 = *v9;
  }

  else
  {
    v11 = *(v9 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(AssociatedTypeWitness - 8) + 8))(v9, AssociatedTypeWitness);
  }

  v12 = sub_241CA8140(@"featured-editions");

  if (!v12)
  {
    return 0;
  }

  if (v12 >> 62)
  {
    goto LABEL_29;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_9:
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x245CFDE40](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v13 = sub_241CF97D8();
        if (!v13)
        {
          goto LABEL_30;
        }

        goto LABEL_9;
      }

      type metadata accessor for MBook();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        break;
      }

      type metadata accessor for MAudiobook();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = v24;
        v26 = type metadata accessor for AudiobookInfo();
        *(&v31 + 1) = v26;
        v32 = sub_241CA86F4(&qword_27EC69ED0, type metadata accessor for AudiobookInfo);
        v22 = sub_241CA8DEC(&v30);
        *v22 = v25;
        sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
        swift_storeEnumTagMultiPayload();
        *(v22 + *(v26 + 20)) = 0;
        v23 = (v26 + 24);
        goto LABEL_20;
      }

      v34 = type metadata accessor for MAsset();
      *&v33 = v17;
      sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
      sub_241CBC000(&v33);
      sub_241C8EEE8(&v33);
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
      sub_241C8EA54(&v30, &qword_27EC69EC8, &qword_241CFD7D0);
LABEL_11:
      ++v14;
      if (v18 == v13)
      {
        goto LABEL_31;
      }
    }

    v20 = v19;
    v21 = type metadata accessor for BookInfo();
    *(&v31 + 1) = v21;
    v32 = sub_241CA86F4(&qword_27EC69EE0, type metadata accessor for BookInfo);
    v22 = sub_241CA8DEC(&v30);
    *v22 = v20;
    sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
    swift_storeEnumTagMultiPayload();
    v23 = (v21 + 20);
LABEL_20:
    *(v22 + *v23) = 1;
    sub_241C914E4(&v30, &v33);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_241CBFD98(0, v15[2] + 1, 1, v15);
    }

    v28 = v15[2];
    v27 = v15[3];
    if (v28 >= v27 >> 1)
    {
      v15 = sub_241CBFD98((v27 > 1), v28 + 1, 1, v15);
    }

    v15[2] = v28 + 1;
    sub_241C914E4(&v33, &v15[5 * v28 + 4]);
    goto LABEL_11;
  }

LABEL_30:
  v15 = MEMORY[0x277D84F90];
LABEL_31:

  return v15;
}

uint64_t AssetInfo.finishedDateKind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_241CC6640(KeyPath, a1, *(a2 + 8), a3);
}

void *sub_241CCACA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 64);
  v8 = swift_checkMetadataState();
  result = v7(&v10, v8, AssociatedConformanceWitness);
  *a3 = v10;
  return result;
}

uint64_t sub_241CCAD68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 72);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCAE2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 88);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCAEE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 96);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t AssetInfo.isFree.getter(uint64_t a1, uint64_t a2)
{
  v2 = (AssetInfo.price.getter(a1, a2) & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v3)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_241CCAFE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  swift_getKeyPath();
  v6 = *(a2 + 8);
  a4(&v8);

  return v8;
}

uint64_t sub_241CCB068@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 144);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCB124@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 120);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCB1E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 128);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCB2A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 136);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCB360(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC68E4(KeyPath, a1, *(a2 + 8), &v6);

  return v6;
}

uint64_t sub_241CCB3C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 152);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCB494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(*(a2 + a3 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 168);
  v7 = swift_checkMetadataState();
  return v6(v7, AssociatedConformanceWitness);
}

double AssetInfo.readingProgress.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC68E4(KeyPath, a1, *(a2 + 8), &v6);

  result = v6;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

void sub_241CCB5F0(uint64_t a1@<X1>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 184);
  v8 = swift_checkMetadataState();
  *a3 = v7(v8, AssociatedConformanceWitness);
}

uint64_t sub_241CCB69C@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t sub_241CCB754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(*(a2 + a3 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 192);
  v7 = swift_checkMetadataState();
  return v6(v7, AssociatedConformanceWitness);
}

uint64_t AssetInfo.supportsUnifiedProductPage.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC5F00(KeyPath, a1, *(a2 + 8), &v6);

  return v6 & 1;
}

void AssetInfo.seriesOrdering.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = a2;
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v33 - v9;
  v37 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ContentDataSource();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v33 - v15);
  v17 = *(v6 + 40);
  v38 = v3;
  v17(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v36 + 8))(v16, v10);
      goto LABEL_13;
    }

    v34 = a3;
    v19 = *v16;
  }

  else
  {
    v34 = a3;
    v19 = *(v16 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v40 + 8))(v16, AssociatedTypeWitness);
  }

  v20 = *((*MEMORY[0x277D85000] & *v19) + 0x140);
  v21 = v19;
  if (v20())
  {

    a3 = v34;
  }

  else
  {
    type metadata accessor for MBook();
    v28 = swift_dynamicCastClass();

    a3 = v34;
    if (v28)
    {

LABEL_26:
      *a3 = 1;
      return;
    }
  }

  v22 = MAsset.seriesResource.getter();

  if (v22)
  {
    v23 = v22[OBJC_IVAR____TtC14BookFoundation7MSeries_isOrdered];

    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = 3;
    }

    *a3 = v24;
    return;
  }

LABEL_13:
  v17(a1, v6);
  v25 = swift_getEnumCaseMultiPayload();
  if (v25)
  {
    v26 = v39;
    v27 = v40;
    if (v25 != 1)
    {
      (*(v36 + 8))(v14, v10);
LABEL_28:
      *a3 = 0;
      return;
    }
  }

  else
  {

    v26 = v39;
    v27 = v40;
  }

  (*(v27 + 32))(v26, v14, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (((*(AssociatedConformanceWitness + 120))(AssociatedTypeWitness, AssociatedConformanceWitness) & 1) == 0)
  {
    (*(v27 + 8))(v26, AssociatedTypeWitness);
    goto LABEL_26;
  }

  (*(AssociatedConformanceWitness + 216))(&v41, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v27 + 8))(v26, AssociatedTypeWitness);
  if (!v42)
  {
    sub_241C8EA54(&v41, &qword_27EC69E58, &qword_241CFB200);
    goto LABEL_28;
  }

  sub_241C914E4(&v41, v43);
  v30 = v44;
  v31 = v45;
  sub_241C97000(v43, v44);
  if ((*(v31 + 72))(v30, v31))
  {
    v32 = 2;
  }

  else
  {
    v32 = 3;
  }

  *a3 = v32;
  sub_241C8EEE8(v43);
}

uint64_t sub_241CCBD48(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC5F00(KeyPath, a1, *(a2 + 8), &v6);

  return v6;
}

uint64_t sub_241CCBDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(*(a2 + a3 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 216);
  v7 = swift_checkMetadataState();
  return v6(v7, AssociatedConformanceWitness);
}

uint64_t sub_241CCBE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  sub_241CA22A4(a1, v11);
  v6 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 224);
  v9 = swift_checkMetadataState();
  return v8(v11, v9, AssociatedConformanceWitness);
}

uint64_t AssetInfo.sequenceLabel.getter(uint64_t a1, uint64_t a2)
{
  AssetInfo.seriesOrdering.getter(a1, a2, &v8);
  if (v8 != 2)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v4);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v6 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v6, a1, *(a2 + 8), &v8);

  return v8;
}

uint64_t sub_241CCC028@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 200);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_241CCC0D4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*((*MEMORY[0x277D85000] & **a1) + 0x140))();
  v4 = sub_241CAF20C(1, v3);
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 20) = BYTE4(v8) & 1;
  return result;
}

uint64_t sub_241CCC178@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 208);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 20) = v12 & 1;
  return result;
}

uint64_t sub_241CCC230@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 240);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  *(a3 + 8) = v10 & 1;
  return result;
}

uint64_t sub_241CCC310(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v8 = *(a2 + 8);
  a4(KeyPath, a1);
}

uint64_t sub_241CCC384@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 64);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_241CCC440(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC40F0(KeyPath, a1, *(a2 + 8), &v6);

  return v6;
}

void sub_241CCC4A4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_241CF9038();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void AssetInfo.enrich(with:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a1;
  v120 = a4;
  v118 = a3;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v112 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v114 = &v110 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v113 = &v110 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v115 = &v110 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v110 - v18;
  v20 = swift_getAssociatedTypeWitness();
  v121 = AssociatedTypeWitness;
  v117 = v20;
  v21 = type metadata accessor for ContentDataSource();
  v116 = *(v21 - 8);
  v22 = *(v116 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = (&v110 - v26);
  v28 = *(v6 + 40);
  v123 = v4;
  v28(a2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v119 = a2;
  if (!EnumCaseMultiPayload)
  {
    v30 = v121;
    v110 = *(v27 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v8 + 32))(v19, v27, v30);
    v31 = v122[3];
    v32 = v122[4];
    sub_241C97000(v122, v31);
    v33 = ContentInfo.storeData.getter(v31, v32[1]);
    if (v33)
    {
      v34 = v33;
      v111 = v8;
      v35 = v110;
      v36 = MAsset.enrichIfNeeded(with:)();

      if (v36)
      {
        v37 = v121;
        v128 = v121;
        v39 = v118;
        v38 = v119;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v40 = sub_241CA8DEC(&v127);
        v41 = v111;
        v42 = v19;
        (*(v111 + 16))(v40, v19, v37);
        v43 = v36;
        static ContentInfoUtilities.assetInfo(libraryAssetInfo:storeAsset:)(&v127, v36, v130);

        sub_241C8EA54(&v127, &qword_27EC69F10, &qword_241CFB960);
        if (v131)
        {
          (*(v41 + 8))(v42, v37);

LABEL_12:
          v51 = v130;
LABEL_31:
          sub_241C914E4(v51, v120);
          return;
        }

        v98 = v120;
        v120[3] = v38;
        v98[4] = v39;
        v99 = sub_241CA8DEC(v98);
        (*(*(v38 - 8) + 16))(v99, v123, v38);

        (*(v41 + 8))(v42, v37);
LABEL_35:
        if (v131)
        {
          sub_241C8EA54(v130, &qword_27EC69EC8, &qword_241CFD7D0);
        }

        return;
      }

      v8 = v111;
      (*(v111 + 8))(v19, v121);
    }

    else
    {
      (*(v8 + 8))(v19, v30);
    }

LABEL_17:
    a2 = v119;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v111 = v8;
    v44 = *v27;
    v45 = v122[3];
    v46 = v122[4];
    sub_241C97000(v122, v45);
    v47 = ContentInfo.storeData.getter(v45, v46[1]);
    if (!v47)
    {

      v8 = v111;
      goto LABEL_18;
    }

    v48 = v47;
    v49 = v44;
    v50 = MAsset.enrichIfNeeded(with:)();

    if (v50)
    {
      static ContentInfoUtilities.assetInfo(storeAsset:)(v50, v130);
      if (v131)
      {

        goto LABEL_12;
      }

      v101 = v119;
      v100 = v120;
      v102 = v118;
      v120[3] = v119;
      v100[4] = v102;
      v103 = sub_241CA8DEC(v100);
      (*(*(v101 - 8) + 16))(v103, v123, v101);

      goto LABEL_35;
    }

    v8 = v111;
    goto LABEL_17;
  }

  (*(v116 + 8))(v27, v21);
LABEL_18:
  v28(a2, v6);
  v52 = swift_getEnumCaseMultiPayload();
  if (v52)
  {
    if (v52 != 1)
    {
      (*(v116 + 8))(v25, v21);
      goto LABEL_25;
    }

    v53 = v121;
    (*(v8 + 32))(v114, v25, v121);
    v54 = v122[3];
    v55 = v122[4];
    sub_241C97000(v122, v54);
    v56 = v8;
    v57 = v55[1];
    v58 = swift_getAssociatedTypeWitness();
    v59 = sub_241CF9598();
    v122 = &v110;
    v60 = *(v59 - 8);
    v61 = *(v60 + 64);
    MEMORY[0x28223BE20](v59);
    v63 = &v110 - v62;
    ContentInfo.libraryData.getter(v54, v57, &v110 - v62);
    v64 = *(v58 - 8);
    if ((*(v64 + 48))(v63, 1, v58) == 1)
    {
      (*(v60 + 8))(v63, v59);
      (*(v56 + 8))(v114, v53);
      a2 = v119;
LABEL_25:
      v77 = v118;
      v78 = v120;
      v120[3] = a2;
      v78[4] = v77;
      v79 = sub_241CA8DEC(v78);
      (*(*(a2 - 8) + 16))(v79, v123, a2);
      return;
    }

    v128 = v58;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v80 = sub_241CA8DEC(&v127);
    (*(v64 + 32))(v80, v63, v58);
    sub_241C914E4(&v127, v130);
    v82 = v118;
    v81 = v119;
    v83 = swift_getAssociatedConformanceWitness();
    v84 = v112;
    v85 = v114;
    LibraryAssetInfo.enriched(with:)(v130, v53, v83, v112);
    v125 = v53;
    v126 = v83;
    v86 = sub_241CA8DEC(v124);
    (*(v56 + 16))(v86, v84, v53);
    static ContentInfoUtilities.assetInfo(libraryAssetInfo:)(v124, &v127);
    sub_241C8EEE8(v124);
    if (v128)
    {
      v87 = *(v56 + 8);
      v87(v84, v53);
      sub_241C8EEE8(v130);
      v87(v85, v53);
LABEL_30:
      v51 = &v127;
      goto LABEL_31;
    }

    v104 = v120;
    v120[3] = v81;
    v104[4] = v82;
    v105 = sub_241CA8DEC(v104);
    (*(*(v81 - 8) + 16))(v105, v123, v81);
    v106 = *(v56 + 8);
    v106(v84, v53);
    sub_241C8EEE8(v130);
    v106(v85, v53);
  }

  else
  {
    v65 = v121;
    v117 = *&v25[*(swift_getTupleTypeMetadata2() + 48)];
    (*(v8 + 32))(v115, v25, v65);
    v66 = v122[3];
    v67 = v122[4];
    sub_241C97000(v122, v66);
    v68 = v67[1];
    v69 = swift_getAssociatedTypeWitness();
    v70 = v8;
    v71 = sub_241CF9598();
    v122 = &v110;
    v72 = *(v71 - 8);
    v73 = *(v72 + 64);
    MEMORY[0x28223BE20](v71);
    v75 = &v110 - v74;
    ContentInfo.libraryData.getter(v66, v68, &v110 - v74);
    v76 = *(v69 - 8);
    if ((*(v76 + 48))(v75, 1, v69) == 1)
    {

      (*(v72 + 8))(v75, v71);
      (*(v70 + 8))(v115, v65);
      a2 = v119;
      goto LABEL_25;
    }

    v128 = v69;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v88 = sub_241CA8DEC(&v127);
    (*(v76 + 32))(v88, v75, v69);
    sub_241C914E4(&v127, v130);
    v90 = v118;
    v89 = v119;
    v91 = swift_getAssociatedConformanceWitness();
    v92 = v113;
    v93 = v115;
    LibraryAssetInfo.enriched(with:)(v130, v65, v91, v113);
    v125 = v65;
    v126 = v91;
    v94 = sub_241CA8DEC(v124);
    (*(v70 + 16))(v94, v92, v65);
    v95 = v117;
    v96 = v117;
    static ContentInfoUtilities.assetInfo(libraryAssetInfo:storeAsset:)(v124, v95, &v127);

    sub_241C8EA54(v124, &qword_27EC69F10, &qword_241CFB960);
    if (v128)
    {

      v97 = *(v70 + 8);
      v97(v92, v65);
      sub_241C8EEE8(v130);
      v97(v93, v65);
      goto LABEL_30;
    }

    v107 = v120;
    v120[3] = v89;
    v107[4] = v90;
    v108 = sub_241CA8DEC(v107);
    (*(*(v89 - 8) + 16))(v108, v123, v89);

    v109 = *(v70 + 8);
    v109(v92, v65);
    sub_241C8EEE8(v130);
    v109(v93, v65);
  }

  if (v128)
  {
    sub_241C8EA54(&v127, &qword_27EC69EC8, &qword_241CFD7D0);
  }
}

uint64_t _s14BookFoundation9AssetTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_241CF9838();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_241CCD2F4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2();
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

unint64_t sub_241CCD384()
{
  result = qword_27EC6A4D0;
  if (!qword_27EC6A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A4D0);
  }

  return result;
}

unint64_t sub_241CCD3DC()
{
  result = qword_27EC6A4D8;
  if (!qword_27EC6A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A4D8);
  }

  return result;
}

unint64_t sub_241CCD434()
{
  result = qword_27EC6A4E0;
  if (!qword_27EC6A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A4E0);
  }

  return result;
}

unint64_t sub_241CCD48C()
{
  result = qword_27EC6A4E8;
  if (!qword_27EC6A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A4E8);
  }

  return result;
}

unint64_t sub_241CCD548()
{
  result = qword_27EC6A4F0;
  if (!qword_27EC6A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A4F0);
  }

  return result;
}

uint64_t sub_241CCD5B8()
{
  v0 = sub_241CF8DA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_241CF8E08();
  sub_241CA20B4(v5, qword_2810D5890);
  sub_241C936C0(v5, qword_2810D5890);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9830], v0);
  sub_241CF8DB8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static Calendar.gregorian.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2810D5888 != -1)
  {
    swift_once();
  }

  v2 = sub_241CF8E08();
  v3 = sub_241C936C0(v2, qword_2810D5890);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_241CCD784()
{

  v0 = sub_241CF9118();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_241CF9118();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_241CF98C8();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_241CF9118();
      v3 = v5;
    }

    while (v5);
  }

  sub_241CF9118();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t _s14BookFoundation23LocaleLanguageDirectionV5isRTLSbvgZ_0()
{
  v29[2] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultBag];
  v1 = [v0 languageTag];
  if (([v0 isExpired] & 1) == 0 && objc_msgSend(v1, sel_isLoaded))
  {
    v29[0] = 0;
    v2 = [v1 valueWithError_];
    v3 = v29[0];
    if (!v2)
    {
      v19 = v29[0];
      swift_arrayDestroy();
      v20 = sub_241CF8C58();

      swift_willThrow();
      if (qword_27EC69A90 != -1)
      {
        swift_once();
      }

      v21 = sub_241CF8E88();
      sub_241C936C0(v21, qword_27EC69DF8);
      v22 = v20;
      v23 = sub_241CF8E68();
      v24 = sub_241CF9508();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v20;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_241C8C000, v23, v24, "Failed to retreive locale: %@", v25, 0xCu);
        sub_241CCDC9C(v26);
        MEMORY[0x245CFE970](v26, -1, -1);
        MEMORY[0x245CFE970](v25, -1, -1);
      }

      else
      {
      }

      goto LABEL_17;
    }

    v4 = v2;
    sub_241CF9038();
    v5 = v3;
  }

  v6 = sub_241CF9068();
  v8 = v7;

  v9 = &unk_2853DB8B8;
  v10 = 13;
  while (--v10)
  {
    v11 = *(v9 - 1);
    v12 = *v9;
    v13 = v6 == v11 && v8 == v12;
    if (v13 || (v14 = *(v9 - 1), v15 = *v9, (sub_241CF98C8() & 1) != 0))
    {

      goto LABEL_15;
    }

    v9 += 2;
    v29[0] = v11;
    v29[1] = v12;
    swift_bridgeObjectRetain_n();
    MEMORY[0x245CFD860](45, 0xE100000000000000);
    v16 = sub_241CCD784();

    if (v16)
    {

LABEL_15:
      swift_arrayDestroy();
      result = 1;
      goto LABEL_18;
    }
  }

  swift_arrayDestroy();
LABEL_17:
  result = 0;
LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_241CCDC9C(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69F08, &qword_241CFB958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241CCDD04()
{
  v1 = type metadata accessor for LibraryAudiobookInfo();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v12 - v7);
  sub_241C8E174(v0, &v12 - v7, &qword_27EC69ED8, &unk_241CFB550);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *(v8 + *(sub_241C93918(&qword_27EC6A258, &unk_241CFCB88) + 48));
    sub_241CCEB44(v8, type metadata accessor for LibraryAudiobookInfo);
LABEL_6:
    v12 = v10;
    swift_getAtKeyPath();

    return v13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v10 = *v8;
    goto LABEL_6;
  }

  sub_241CCEBA4(v8, v4, type metadata accessor for LibraryAudiobookInfo);
  swift_getAtKeyPath();
  sub_241CCEB44(v4, type metadata accessor for LibraryAudiobookInfo);
  return v13;
}

void sub_241CCDEC4()
{
  v1 = type metadata accessor for LibraryBookInfo();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v11 - v7);
  sub_241C8E174(v0, v11 - v7, &qword_27EC69EE8, &unk_241CFCBA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_241CCEBA4(v8, v4, type metadata accessor for LibraryBookInfo);
      swift_getAtKeyPath();
      sub_241CCEB44(v4, type metadata accessor for LibraryBookInfo);
      return;
    }

    v10 = *v8;
  }

  else
  {
    v10 = *(v8 + *(sub_241C93918(&qword_27EC6A260, &qword_241CFCB98) + 48));
    sub_241CCEB44(v8, type metadata accessor for LibraryBookInfo);
  }

  v11[1] = v10;
  swift_getAtKeyPath();
}

void sub_241CCE08C()
{
  v1 = type metadata accessor for LibraryBookSeriesInfo();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v11 - v7);
  sub_241C8E174(v0, v11 - v7, &qword_27EC6A2A0, &unk_241CFCBD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_241CCEBA4(v8, v4, type metadata accessor for LibraryBookSeriesInfo);
      swift_getAtKeyPath();
      sub_241CCEB44(v4, type metadata accessor for LibraryBookSeriesInfo);
      return;
    }

    v10 = *v8;
  }

  else
  {
    v10 = *(v8 + *(sub_241C93918(&qword_27EC6A298, &qword_241CFCBC8) + 48));
    sub_241CCEB44(v8, type metadata accessor for LibraryBookSeriesInfo);
  }

  v11[1] = v10;
  swift_getAtKeyPath();
}

uint64_t AudiobookInfo.init(dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudiobookInfo();
  *(a2 + *(v4 + 20)) = 0;
  *(a2 + *(v4 + 24)) = 1;

  return sub_241CCE2F8(a1, a2);
}

uint64_t type metadata accessor for AudiobookInfo()
{
  result = qword_27EC6A510;
  if (!qword_27EC6A510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CCE2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AudiobookInfo.assetType.setter(char a1)
{
  result = type metadata accessor for AudiobookInfo();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t AudiobookInfo.contentKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudiobookInfo();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AudiobookInfo.contentKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AudiobookInfo();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_241CCE510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 24);
  *(a3 + *(a2 + 20)) = 0;
  *(a3 + v3) = 1;
  return sub_241CCE2F8(a1, a3);
}

uint64_t AudiobookInfo.duration.getter()
{
  v1 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - v3);
  sub_241C8E174(v0, &v9 - v3, &qword_27EC69ED8, &unk_241CFB550);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = *(v4 + *(sub_241C93918(&qword_27EC6A258, &unk_241CFCB88) + 48));
    sub_241CCEB44(v4, type metadata accessor for LibraryAudiobookInfo);
LABEL_6:
    v6 = MAsset.duration.getter();

    return v6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v7 = *v4;
    goto LABEL_6;
  }

  sub_241CCE650(v4);
  return 0;
}

uint64_t sub_241CCE650(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AudiobookInfo.isSG.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_241CCDD04();

  return v0 & 1;
}

uint64_t AudiobookInfo.narrator.getter()
{
  v1 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - v3);
  sub_241C8E174(v0, &v9 - v3, &qword_27EC69ED8, &unk_241CFB550);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = *(v4 + *(sub_241C93918(&qword_27EC6A258, &unk_241CFCB88) + 48));
    sub_241CCEB44(v4, type metadata accessor for LibraryAudiobookInfo);
LABEL_6:
    v6 = MAudiobook.narrator.getter();

    return v6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v7 = *v4;
    goto LABEL_6;
  }

  sub_241CCE650(v4);
  return 0;
}

uint64_t sub_241CCE898(uint64_t a1)
{
  result = sub_241CCE9E8(&qword_27EC6A4F8, type metadata accessor for AudiobookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CCE938(uint64_t a1)
{
  result = sub_241CCE9E8(&qword_27EC6A500, type metadata accessor for AudiobookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CCE990(uint64_t a1)
{
  result = sub_241CCE9E8(&qword_27EC6A508, type metadata accessor for AudiobookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CCE9E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_241CCEA58()
{
  sub_241CCEADC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_241CCEADC()
{
  if (!qword_27EC6A520)
  {
    type metadata accessor for LibraryAudiobookInfo();
    type metadata accessor for MAudiobook();
    v0 = type metadata accessor for ContentDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27EC6A520);
    }
  }
}

uint64_t sub_241CCEB44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_241CCEBA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MRequestMetadata.fileID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MRequestMetadata.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_241CCEC50()
{
  if (*v0)
  {
    result = 1701734764;
  }

  else
  {
    result = 0x4449656C6966;
  }

  *v0;
  return result;
}

uint64_t sub_241CCEC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C6966 && a2 == 0xE600000000000000;
  if (v6 || (sub_241CF98C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701734764 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_241CF98C8();

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

uint64_t sub_241CCED70(uint64_t a1)
{
  v2 = sub_241CCEF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241CCEDAC(uint64_t a1)
{
  v2 = sub_241CCEF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MRequestMetadata.encode(to:)(void *a1)
{
  v3 = sub_241C93918(&qword_27EC6A528, &qword_241CFE140);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 4);
  v10 = a1[4];
  sub_241C97000(a1, a1[3]);
  sub_241CCEF7C();
  sub_241CF9A28();
  v16 = 0;
  v11 = v13[1];
  sub_241CF9878();
  if (!v11)
  {
    v15 = 1;
    sub_241CF9888();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_241CCEF7C()
{
  result = qword_27EC6A530;
  if (!qword_27EC6A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A530);
  }

  return result;
}

uint64_t MRequestMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_241C93918(&qword_27EC6A538, &qword_241CFE148);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_241C97000(a1, a1[3]);
  sub_241CCEF7C();
  sub_241CF9A18();
  if (v2)
  {
    return sub_241C8EEE8(a1);
  }

  v19 = 0;
  v11 = sub_241CF9858();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_241CF9868();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  sub_241C8EEE8(a1);
}

id BFMRequestMetadata.init(fileID:line:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3 + OBJC_IVAR___BFMRequestMetadata_impl;
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  v6.super_class = BFMRequestMetadata;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t BFMRequestMetadata.fileID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BFMRequestMetadata_impl);
  v2 = *(v0 + OBJC_IVAR___BFMRequestMetadata_impl + 8);

  return v1;
}

void __swiftcall BFMRequestMetadata.init()(BFMRequestMetadata *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void __swiftcall MRequestMetadata._bridgeToObjectiveC()(BFMRequestMetadata *__return_ptr retstr)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  v5 = objc_allocWithZone(BFMRequestMetadata);
  v6 = sub_241CF9008();
  [v5 initWithFileID:v6 line:v4];
}

uint64_t static MRequestMetadata._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);

  v5 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 8);
  v6 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 16);
  *a2 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl);
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
}

uint64_t static MRequestMetadata._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);

  v5 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 8);
  v6 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 16);
  *a2 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl);
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;

  return 1;
}

uint64_t static MRequestMetadata._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1 + OBJC_IVAR___BFMRequestMetadata_impl;
    v5 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl);
    v4 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 8);
    LODWORD(v3) = *(v3 + 16);
    *a2 = v5;
    *(a2 + 8) = v4;
    *(a2 + 16) = v3;
  }

  else
  {
    sub_241CF96C8();

    type metadata accessor for BFMRequestMetadata();
    v7 = sub_241CF9A58();
    MEMORY[0x245CFD860](v7);

    MEMORY[0x245CFD860](544175136, 0xE400000000000000);
    MEMORY[0x245CFD860](0xD000000000000010, 0x8000000241CFE130);
    result = sub_241CF9798();
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for BFMRequestMetadata()
{
  result = qword_27EC6A548;
  if (!qword_27EC6A548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC6A548);
  }

  return result;
}

id sub_241CCF6E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = objc_allocWithZone(BFMRequestMetadata);
  v5 = sub_241CF9008();
  v6 = [v4 initWithFileID:v5 line:v3];

  return v6;
}

uint64_t sub_241CCF758(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);

  v5 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 8);
  v6 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 16);
  *a2 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl);
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
}

uint64_t sub_241CCF7B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);

  v5 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 8);
  v6 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 16);
  *a2 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl);
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;

  return 1;
}

__n128 sub_241CCF804(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_241CCF818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_241CCF860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_241CCF8C4()
{
  result = qword_27EC6A550;
  if (!qword_27EC6A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A550);
  }

  return result;
}

unint64_t sub_241CCF91C()
{
  result = qword_27EC6A558;
  if (!qword_27EC6A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A558);
  }

  return result;
}

unint64_t sub_241CCF974()
{
  result = qword_27EC6A560;
  if (!qword_27EC6A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A560);
  }

  return result;
}

uint64_t Dictionary<>.BOOLValue(key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_241C8E1DC(a1, a2);
    if (v5)
    {
      sub_241C93664(*(a3 + 56) + 32 * v4, v10);
      sub_241C8E30C(v10, v11);
      sub_241C93664(v11, v10);
      if (swift_dynamicCast())
      {
        sub_241C8EEE8(v11);
        v6 = v8;
LABEL_15:
        sub_241C8EEE8(v10);
        return v6 & 1;
      }

      if (swift_dynamicCast())
      {
        sub_241C8EEE8(v11);
        v6 = v8 != 0;
        goto LABEL_15;
      }

      if (swift_dynamicCast())
      {
        if (v8 == 1702195828 && v9 == 0xE400000000000000)
        {

          v6 = 1;
        }

        else
        {
          v6 = sub_241CF98C8();
        }

        sub_241C8EEE8(v11);
        goto LABEL_15;
      }

      sub_241C8EEE8(v11);
      sub_241C8EEE8(v10);
    }
  }

  v6 = 0;
  return v6 & 1;
}

unsigned __int8 *Dictionary<>.intValue(key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_241C8E1DC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_241C93664(*(a3 + 56) + 32 * v4, v36);
  sub_241C8E30C(v36, v37);
  sub_241C93664(v37, v36);
  if (swift_dynamicCast())
  {
    sub_241C8EEE8(v37);
    sub_241C8EEE8(v36);
    return v34;
  }

  if (!swift_dynamicCast())
  {
    sub_241C8EEE8(v37);
    sub_241C8EEE8(v36);
    return 0;
  }

  result = v34;
  v7 = HIBYTE(v35) & 0xF;
  v8 = v34 & 0xFFFFFFFFFFFFLL;
  if ((v35 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v35) & 0xF;
  }

  else
  {
    v9 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    sub_241C8EEE8(v37);

    v30 = 0;
LABEL_73:
    sub_241C8EEE8(v36);
    return v30;
  }

  if ((v35 & 0x1000000000000000) != 0)
  {
    v11 = sub_241CD0074(v34, v35, 10);
    v29 = v31;
LABEL_70:
    sub_241C8EEE8(v37);

    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v11;
    }

    goto LABEL_73;
  }

  if ((v35 & 0x2000000000000000) == 0)
  {
    if ((v34 & 0x1000000000000000) != 0)
    {
      result = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_241CF9708();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v18 = result + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_68;
              }

              v20 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_68;
              }

              v11 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_68;
              }

              ++v18;
              if (!--v7)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_68;
      }

      goto LABEL_79;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        v11 = 0;
        if (result)
        {
          while (1)
          {
            v24 = *result - 48;
            if (v24 > 9)
            {
              goto LABEL_68;
            }

            v25 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_68;
            }

            v11 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v8)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_68:
      v11 = 0;
      LOBYTE(v7) = 1;
      goto LABEL_69;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v11 = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_68;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_68;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_68;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_60:
        LOBYTE(v7) = 0;
LABEL_69:
        v33 = v7;
        v29 = v7;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v32[0] = v34;
  v32[1] = v35 & 0xFFFFFFFFFFFFFFLL;
  if (v34 != 43)
  {
    if (v34 != 45)
    {
      if (v7)
      {
        v11 = 0;
        v26 = v32;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v7)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v7)
    {
      if (--v7)
      {
        v11 = 0;
        v15 = v32 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_78;
  }

  if (v7)
  {
    if (--v7)
    {
      v11 = 0;
      v21 = v32 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v11;
        if ((v11 * 10) >> 64 != (10 * v11) >> 63)
        {
          break;
        }

        v11 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t Dictionary<>.doubleValue(key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_241C8E1DC(a1, a2);
    if (v5)
    {
      sub_241C93664(*(a3 + 56) + 32 * v4, v10);
      sub_241C8E30C(v10, v11);
      sub_241C93664(v11, v10);
      if (swift_dynamicCast())
      {
        sub_241C8EEE8(v11);
        v6 = *&v8;
LABEL_5:
        sub_241C8EEE8(v10);
        return *&v6;
      }

      if (swift_dynamicCast())
      {
        sub_241CD0600(v8, v9);

        sub_241C8EEE8(v11);
        sub_241C8EEE8(v10);
        return 0;
      }

      sub_241C8EEE8(v11);
      if (swift_dynamicCast())
      {
        v6 = v8;
        goto LABEL_5;
      }

      sub_241C8EEE8(v10);
    }
  }

  return 0;
}

unsigned __int8 *sub_241CD0074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_241CF91A8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_241C954AC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_241CF9708();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

BOOL sub_241CD0600(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_241CF96B8();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_241CD06F8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t static Notificationable.Name.getter()
{
  swift_getMetatypeMetadata();
  sub_241CF9078();
  v0 = sub_241CF9008();

  return v0;
}

uint64_t Notificationable.init(notification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_241CF8AF8();
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = sub_241CBD364(v12);

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = objc_opt_self();
  v15 = sub_241CF8EE8();

  v33[0] = 0;
  v16 = [v14 dataWithJSONObject:v15 options:1 error:v33];

  v17 = v33[0];
  if (!v16)
  {
    v25 = v17;
    v26 = sub_241CF8C58();

    swift_willThrow();
LABEL_6:
    v27 = sub_241CF8B08();
    (*(*(v27 - 8) + 8))(a1, v27);
    v31 = 1;
    goto LABEL_7;
  }

  v18 = sub_241CF8D18();
  v20 = v19;

  v21 = sub_241CF8A58();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_241CF8A48();
  v24 = *(a3 + 8);
  sub_241CF8A38();
  v30 = sub_241CF8B08();
  (*(*(v30 - 8) + 8))(a1, v30);

  sub_241CD0B1C(v18, v20);
  (*(v8 + 32))(a4, v11, a2);
  v31 = 0;
LABEL_7:
  result = (*(v8 + 56))(a4, v31, 1, a2);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_241CD0B1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Notificationable.toNotification(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = sub_241CF8A88();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_241CF8A78();
  v11 = *(a3 + 16);
  v12 = sub_241CF8A68();
  v14 = v13;

  v15 = objc_opt_self();
  v16 = sub_241CF8D08();
  v26[0] = 0;
  v17 = [v15 JSONObjectWithData:v16 options:4 error:v26];

  v18 = v26[0];
  if (v17)
  {
    sub_241CF95F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v18;
    v20 = sub_241CF8C58();

    swift_willThrow();
    memset(v27, 0, sizeof(v27));
  }

  sub_241CD0ED4(v27, v26);
  if (!v26[3])
  {
    sub_241C8DA14(v27);
    sub_241CD0B1C(v12, v14);
    sub_241C8DA14(v26);
LABEL_9:
    v23 = sub_241CF8B08();
    result = (*(*(v23 - 8) + 56))(a4, 1, 1, v23);
    goto LABEL_10;
  }

  sub_241C93918(&qword_27EC6A568, &qword_241CFE358);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_241C8DA14(v27);
    sub_241CD0B1C(v12, v14);
    goto LABEL_9;
  }

  (*(a3 + 24))(a2, a3);
  sub_241CD0ED4(a1, v26);
  sub_241CD0F44(v25);

  sub_241CF8AE8();
  sub_241CD0B1C(v12, v14);
  sub_241C8DA14(v27);
  v21 = sub_241CF8B08();
  result = (*(*(v21 - 8) + 56))(a4, 0, 1, v21);
LABEL_10:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_241CD0ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0B0, &qword_241CFE350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CD0F44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_241C93918(&qword_27EC6A490, &qword_241CFD318);
    v2 = sub_241CF9808();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_241C93664(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_241C8E30C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_241C8E30C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_241C8E30C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_241CF9648();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_241C8E30C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_241CD1248(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
    v2 = sub_241CF9808();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_241C93918(&qword_27EC69BE8, "vE");
        swift_dynamicCast();
        result = sub_241C8E1DC(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          *(v2[7] + v11) = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          *(v2[7] + result) = v24;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t MCatalogRequest.fetch()()
{
  v2 = sub_241CF8CF8();
  *(v1 + 488) = v2;
  v3 = *(v2 - 8);
  *(v1 + 496) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 504) = swift_task_alloc();
  v5 = *(v0 + 16);
  *(v1 + 512) = *v0;
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  *(v1 + 80) = v5;
  *(v1 + 96) = v6;
  v8 = *(v0 + 64);
  *(v1 + 112) = v7;
  *(v1 + 128) = v8;
  *(v1 + 528) = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_241CD1538, 0, 0);
}

uint64_t sub_241CD1538()
{
  v1 = [*(v0 + 528) isBooksStoreEnabled];
  *(v0 + 536) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 464;
  *(v0 + 24) = sub_241CD1670;
  v2 = swift_continuation_init();
  *(v0 + 200) = sub_241C93918(&qword_27EC6A570, &qword_241CFE3A0);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_241CD2564;
  *(v0 + 168) = &unk_2853DE0C0;
  *(v0 + 176) = v2;
  [v1 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_241CD1670()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 544) = v2;
  if (v2)
  {
    v3 = sub_241CD18D0;
  }

  else
  {
    v3 = sub_241CD1780;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241CD1780()
{
  v1 = *(v0 + 464);

  v2 = [v1 BOOLValue];
  if (v2)
  {
    v3 = *(v0 + 96);
    *(v0 + 208) = *(v0 + 80);
    *(v0 + 224) = v3;
    v4 = *(v0 + 128);
    *(v0 + 240) = *(v0 + 112);
    *(v0 + 256) = v4;
    sub_241C9300C(v0 + 80, v0 + 272);
    v5 = swift_task_alloc();
    *(v0 + 552) = v5;
    *v5 = v0;
    v5[1] = sub_241CD194C;
    v6 = *(v0 + 504);

    return MCatalogRequestURLBuilder.build()(v6);
  }

  else
  {
    sub_241CD265C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = *(v0 + 504);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_241CD18D0()
{
  v1 = v0[68];
  v2 = v0[67];
  swift_willThrow();

  v3 = v0[68];
  v4 = v0[63];

  v5 = v0[1];

  return v5();
}

uint64_t sub_241CD194C()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v9 = *v1;
  *(*v1 + 560) = v0;

  v4 = v2[13];
  v5 = v2[14];
  v6 = v2[16];
  if (v0)
  {
    v2[23] = v2[15];
    v2[24] = v6;
    v2[21] = v4;
    v2[22] = v5;
    sub_241C93068((v2 + 21));
    v7 = sub_241CD1D08;
  }

  else
  {
    v2[27] = v2[15];
    v2[28] = v6;
    v2[25] = v4;
    v2[26] = v5;
    sub_241C93068((v2 + 25));
    v7 = sub_241CD1A90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_241CD1A90()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = sub_241CF8C98();
  v5 = [v3 requestWithURL_];
  v0[71] = v5;

  v6 = [v1 dataTaskPromiseWithRequestPromise_];
  v0[72] = v6;
  v7 = swift_task_alloc();
  v0[73] = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[74] = v9;
  v10 = sub_241CD26B8();
  *v9 = v0;
  v9[1] = sub_241CD1BEC;

  return MEMORY[0x2822008A0](v0 + 60, 0, 0, 0x727028636E797361, 0xEF293A6573696D6FLL, sub_241CD26B0, v7, v10);
}

uint64_t sub_241CD1BEC()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v7 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = sub_241CD1E40;
  }

  else
  {
    v5 = *(v2 + 584);

    v4 = sub_241CD1D6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241CD1D08()
{
  v1 = v0[70];
  v2 = v0[63];

  v3 = v0[1];

  return v3();
}

uint64_t sub_241CD1D6C()
{
  v1 = v0[72];
  v2 = v0[71];
  v4 = v0[62];
  v3 = v0[63];
  v6 = v0[60];
  v5 = v0[61];
  v7 = [objc_allocWithZone(MEMORY[0x277CEE568]) initWithResult_];

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_241CD1E40()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v5 = v0[62];
  v4 = v0[63];
  v6 = v0[61];

  (*(v5 + 8))(v4, v6);
  v7 = v0[75];
  v8 = v0[63];

  v9 = v0[1];

  return v9();
}

__n128 MCatalogRequest.init(with:config:bag:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  *(a4 + 80) = a3;
  v9 = objc_opt_self();
  v10 = a3;
  v11 = [v9 defaultSessionConfiguration];
  v12 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];

  *(a4 + 8) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v14 = v10;
  v15 = v12;
  v16 = sub_241CF9008();

  v17 = [v13 initWithClientIdentifier:v16 bag:v14];

  v18 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
  [v15 setProtocolHandler_];

  v19 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v17 bag:v14];
  *a4 = v19;
  v20 = v19;
  [v20 setAccount_];

  v21 = [objc_opt_self() currentProcess];
  [v20 setClientInfo_];

  v22 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v22;
  result = *(a1 + 32);
  v24 = *(a1 + 48);
  *(a4 + 48) = result;
  *(a4 + 64) = v24;
  return result;
}

unint64_t MCatalogRequest.RequestError.description.getter()
{
  result = 0xD000000000000019;
  if (!*v0)
  {
    return 0xD000000000000036;
  }

  if (*v0 != 1)
  {
    sub_241CF96C8();

    swift_getErrorValue();
    v2 = sub_241CF9948();
    MEMORY[0x245CFD860](v2);

    return 0xD000000000000020;
  }

  return result;
}

void sub_241CD2250(uint64_t a1, void *a2)
{
  v4 = sub_241C93918(&qword_27EC6A588, &qword_241CFE4F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_241CD28D8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241CD24D8;
  aBlock[3] = &unk_2853DE228;
  v11 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v11);
}

uint64_t sub_241CD2400(void *a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
    sub_241C93918(&qword_27EC6A588, &qword_241CFE4F0);
    return sub_241CF9368();
  }

  else
  {
    if (a2)
    {
      sub_241CD265C();
      swift_allocError();
      *v5 = a2;
      v6 = a2;
    }

    else
    {
      sub_241CD265C();
      swift_allocError();
      *v7 = 1;
    }

    sub_241C93918(&qword_27EC6A588, &qword_241CFE4F0);
    return sub_241CF9358();
  }
}

void sub_241CD24D8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_241CD2564(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_241C97000((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

unint64_t sub_241CD265C()
{
  result = qword_27EC6A578;
  if (!qword_27EC6A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A578);
  }

  return result;
}

unint64_t sub_241CD26B8()
{
  result = qword_27EC6A580;
  if (!qword_27EC6A580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC6A580);
  }

  return result;
}

__n128 sub_241CD2704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_241CD2728(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_241CD2770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241CD27D4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_241CD27F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241CD284C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_241CD28A8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_241CD28D8(void *a1, void *a2)
{
  v4 = *(*(sub_241C93918(&qword_27EC6A588, &qword_241CFE4F0) - 8) + 80);

  return sub_241CD2400(a1, a2);
}

uint64_t sub_241CD2964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241CD2988(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A410, &qword_241CFD140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryBookSeriesInfo.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LibraryBookSeriesInfo();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for LibraryBookSeriesInfo()
{
  result = qword_27EC6A5B0;
  if (!qword_27EC6A5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryBookSeriesInfo.init(commonInfo:kind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_241CD2AB4(a1, a3);
  result = type metadata accessor for LibraryBookSeriesInfo();
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_241CD2AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A410, &qword_241CFD140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CD2B6C(uint64_t a1)
{
  result = sub_241CD2CD8(&qword_27EC6A590, type metadata accessor for LibraryBookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD2BD0(uint64_t a1)
{
  result = sub_241CD2CD8(&qword_27EC6A598, type metadata accessor for LibraryBookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD2C28(uint64_t a1)
{
  result = sub_241CD2CD8(&qword_27EC6A5A0, type metadata accessor for LibraryBookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD2C80(uint64_t a1)
{
  result = sub_241CD2CD8(&qword_27EC6A5A8, type metadata accessor for LibraryBookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD2CD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_241CD2D4C()
{
  sub_241CD2DC0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_241CD2DC0()
{
  if (!qword_27EC6A5C0)
  {
    type metadata accessor for LibraryBookInfo();
    sub_241CD2CD8(&qword_27EC69F38, type metadata accessor for LibraryBookInfo);
    v0 = type metadata accessor for CommonLibrarySeriesInfo();
    if (!v1)
    {
      atomic_store(v0, &qword_27EC6A5C0);
    }
  }
}

uint64_t BookInfo.init(dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for BookInfo() + 20)) = 1;

  return sub_241CD2EF0(a1, a2);
}

uint64_t type metadata accessor for BookInfo()
{
  result = qword_27EC6A5E0;
  if (!qword_27EC6A5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CD2EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CD2F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BookInfo.assetType.setter(char a1)
{
  result = type metadata accessor for BookInfo();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t BookInfo.contentKind.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_241CCDEC4();
}

uint64_t sub_241CD30EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_241CCDEC4();
}

uint64_t BookInfo.isIBA.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LibraryBookInfo();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v22 - v11);
  sub_241CD2F6C(v1, &v22 - v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v15 = *(v12 + *(sub_241C93918(&qword_27EC6A260, &qword_241CFCB98) + 48));
    sub_241CD346C(v12);
LABEL_8:
    v16 = sub_241CF1C04(0);
    v17 = sub_241CB033C(13, v16);

    return v17 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v15 = *v12;
    goto LABEL_8;
  }

  sub_241CD33A0(v12);
  sub_241CD2F6C(v1, v10);
  v14 = swift_getEnumCaseMultiPayload();
  if (v14)
  {
    if (v14 != 1)
    {
      sub_241CD33A0(v10);
LABEL_13:
      v17 = 0;
      return v17 & 1;
    }
  }

  else
  {
  }

  sub_241CD3408(v10, v5);
  v18 = &v5[*(v2 + 28)];
  v19 = *v18;
  v20 = v18[1];
  sub_241CA9034(*v18, v20);
  sub_241CD346C(v5);
  if (v20 != 1)
  {
    sub_241CD34C8(v19, v20);
    goto LABEL_13;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_241CD33A0(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241CD3408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryBookInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CD346C(uint64_t a1)
{
  v2 = type metadata accessor for LibraryBookInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241CD34C8(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

id BookInfo.isRTL.getter()
{
  v1 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - v3);
  sub_241CD2F6C(v0, &v9 - v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = *(v4 + *(sub_241C93918(&qword_27EC6A260, &qword_241CFCB98) + 48));
    sub_241CD346C(v4);
LABEL_6:
    v6 = [v7 pagesAreRTL];

    return v6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v7 = *v4;
    goto LABEL_6;
  }

  sub_241CD33A0(v4);
  return 0;
}

uint64_t BookInfo.pageCount.getter()
{
  v1 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - v3);
  sub_241CD2F6C(v0, &v9 - v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = *(v4 + *(sub_241C93918(&qword_27EC6A260, &qword_241CFCB98) + 48));
    sub_241CD346C(v4);
LABEL_6:
    v6 = MBook.pageCount.getter();

    return v6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v7 = *v4;
    goto LABEL_6;
  }

  sub_241CD33A0(v4);
  return 0;
}

uint64_t sub_241CD3718(uint64_t a1)
{
  result = sub_241CD3868(&qword_27EC6A5C8, type metadata accessor for BookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD37B8(uint64_t a1)
{
  result = sub_241CD3868(&qword_27EC6A5D0, type metadata accessor for BookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD3810(uint64_t a1)
{
  result = sub_241CD3868(&qword_27EC6A5D8, type metadata accessor for BookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD3868(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_241CD38D8()
{
  sub_241CD394C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_241CD394C()
{
  if (!qword_27EC6A5F0[0])
  {
    type metadata accessor for LibraryBookInfo();
    type metadata accessor for MBook();
    v0 = type metadata accessor for ContentDataSource();
    if (!v1)
    {
      atomic_store(v0, qword_27EC6A5F0);
    }
  }
}

uint64_t sub_241CD3A00()
{
  v0 = sub_241CF9838();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_241CD3A4C(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 1717924456;
}

uint64_t sub_241CD3A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_241CD3AFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_241CD3B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_241CD3BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_241CD3C48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  result = sub_241CD3A00();
  *a3 = result;
  return result;
}

uint64_t sub_241CD3C80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  result = sub_241CD3A4C(*v2);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t MSparseResource.id.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MSparseResource.href.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_241CD3D1C(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(*v2 + 80);
  type metadata accessor for MSparseResource.Keys();

  swift_getWitnessTable();
  sub_241CD7154(a1, MEMORY[0x277D837D0], &v28);
  v8 = v29;
  if (v29)
  {
    v9 = v28;
    v10 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v10 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v10 && (v27 = v5, sub_241CD7154(a1, MEMORY[0x277D837D0], &v28), (v11 = v29) != 0))
    {
      v26 = v28;
      sub_241CD7154(a1, MEMORY[0x277D837D0], &v28);

      v12 = v29;
      if (v29)
      {
        v13 = v28;

        sub_241CF6C94(v13, v12, &v28);
        v14 = v28;
        if (v28 == 6)
        {
        }

        else
        {
          v15 = static MResourceType.classType(for:)(v13, v12);

          if (v15 && swift_dynamicCastMetatype())
          {
            *(v3 + 40) = v9;
            *(v3 + 48) = v8;
            *(v3 + 56) = v14;
            *(v3 + 64) = v26;
            *(v3 + 72) = v11;
            *(v3 + 16) = a1;
            *(v3 + 24) = v27;
            *(v3 + 32) = v6;
            return v3;
          }
        }
      }
    }

    else
    {
    }
  }

  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v16 = sub_241CF8E88();
  sub_241C936C0(v16, qword_27EC69E28);

  v17 = sub_241CF8E68();
  v18 = sub_241CF9508();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v21 = sub_241CF8F08();
    v23 = v22;

    v24 = sub_241CB3A88(v21, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_241C8C000, v17, v18, "Invalid data for sparse resource: %s", v19, 0xCu);
    sub_241C8EEE8(v20);
    MEMORY[0x245CFE970](v20, -1, -1);
    MEMORY[0x245CFE970](v19, -1, -1);
  }

  else
  {
  }

  type metadata accessor for MSparseResource();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t MSparseResource.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  return v0;
}

uint64_t MSparseResource.__deallocating_deinit()
{
  MSparseResource.deinit();

  return swift_deallocClassInstance();
}

void sub_241CD4268(void *a1)
{
  if (qword_2810D56C8 != -1)
  {
    swift_once();
  }

  v2 = qword_2810D56D0;
  v3 = sub_241CF9008();
  v4 = [a1 BOOLForKey_];

  [v2 setBKMenuOnLeft_];
  v5 = sub_241CF9008();
  v6 = [a1 BOOLForKey_];

  [v2 setBKSettingFilterBrightImages_];
  v7 = sub_241CF9008();
  [a1 removeObjectForKey_];

  v8 = sub_241CF9008();
  [a1 removeObjectForKey_];
}

uint64_t OSAllocatedUnfairLock.valueWithLock.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_241CD4648(a1, a2);
  v5 = *(*(a3 - 8) + 8);

  return v5(a1, a3);
}

void (*OSAllocatedUnfairLock.valueWithLock.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = a3;
  v9 = *(a3 - 8);
  v7[2] = v9;
  v10 = *(v9 + 64);
  if (v6)
  {
    v7[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v8[4] = v11;
  OSAllocatedUnfairLock.valueWithLock.getter(a2, v11);
  return sub_241CD455C;
}

void sub_241CD455C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_241CD4648(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_241CD4648((*a1)[4], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_241CD4648(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  sub_241CD46E0(a2 + v3);
  os_unfair_lock_unlock((a2 + v4));
}

uint64_t sub_241CD46E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t MAsset.__sequenceNumber.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x140))();
  sub_241CAF20C(1, v1);
  v3 = v2;

  if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return sub_241CF9568();
  }
}

uint64_t MAsset.__genres.getter()
{
  v0 = sub_241CA8170(@"genres");
  v1 = v0;
  if (v0)
  {
    if (v0 >> 62)
    {
      sub_241C93918(&unk_27EC6A700, &qword_241CFC8C8);
      v3 = sub_241CF97A8();

      return v3;
    }

    else
    {

      sub_241CF98D8();
    }
  }

  return v1;
}

uint64_t MAsset.__price.getter()
{
  swift_getObjectType();
  v1 = [v0 offer];
  if (v1)
  {
    v2 = v1;
    v3 = sub_241CF8EF8();
  }

  else
  {
    v3 = 0;
  }

  sub_241CB48F4();
  sub_241CD7154(v3, MEMORY[0x277D839F8], &v5);

  if (v6)
  {
    return 0;
  }

  else
  {
    return sub_241CF8E48();
  }
}

id sub_241CD4B90(char *a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  v11 = a3;
  v5 = *&a1[OBJC_IVAR____TtC14BookFoundation6MAsset_artwork];
  sub_241CB499C();
  v6 = a1;
  v7 = sub_241CD73D8(&v11, v5);
  if (v7)
  {
    v8 = v7;
    [v7 doubleValue];

    v9 = sub_241CF8E48();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_241CD4C78(char a1)
{
  swift_getObjectType();
  v6 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC14BookFoundation6MAsset_artwork);
  sub_241CB499C();
  result = sub_241CD73D8(&v6, v3);
  if (result)
  {
    v5 = result;
    [result doubleValue];

    return sub_241CF8E48();
  }

  return result;
}

unint64_t MAsset.__seriesResource.getter()
{
  result = sub_241CB3890();
  if (!result)
  {
    return result;
  }

  result = sub_241CF1840();
  if (!result)
  {
LABEL_11:

    return 0;
  }

  v1 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_241CF97D8();
    result = v4;
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x245CFDE40](0);
    goto LABEL_8;
  }

  if (*(v1 + 16))
  {
    v2 = *(result + 32);
LABEL_8:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t MClientIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x736B6F6F6269;
  v3 = 0xD000000000000015;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

BookFoundation::MClientIdentifier_optional __swiftcall MClientIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241CF9838();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_241CD4F48()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CD5034()
{
  *v0;
  *v0;
  *v0;
  sub_241CF90B8();
}

uint64_t sub_241CD510C()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

void sub_241CD5200(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736B6F6F6269;
  v5 = 0x8000000241D00150;
  v6 = 0x8000000241D00170;
  v7 = 0xD000000000000015;
  if (v2 == 3)
  {
    v7 = 0xD00000000000001ELL;
  }

  else
  {
    v6 = 0x8000000241D00190;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000241D00130;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

void *MCatalogServiceConfig.account.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

unint64_t sub_241CD5300()
{
  result = qword_27EC6A718;
  if (!qword_27EC6A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A718);
  }

  return result;
}

unint64_t sub_241CD5358()
{
  result = qword_27EC6A720;
  if (!qword_27EC6A720)
  {
    sub_241C9452C(&qword_27EC6A728, &qword_241CFE8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A720);
  }

  return result;
}

uint64_t CGSize.isInfinite.getter(double a1, double a2)
{
  v2 = fabs(a1);
  v3 = (~*&a2 & 0x7FF0000000000000) == 0 && (*&a2 & 0xFFFFFFFFFFFFFLL) == 0;
  return v2 == INFINITY || v3;
}

CGSize __swiftcall CGSize.scaledToFit(in:times:horizontally:)(CGSize in, Swift::Int times, Swift::Bool horizontally)
{
  if (horizontally)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (!horizontally)
  {
    in.width = in.height;
  }

  v6 = in.width / (v5 * times);
  v7 = floor(v6 * v3);
  v8 = floor(v6 * v4);
  result.height = v8;
  result.width = v7;
  return result;
}

uint64_t MAudiobookSeries.narratorCount.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CD557C();
  sub_241CD7154(v0, v1, &v4);

  v2 = v4;
  sub_241CD55D0();
  sub_241CD7154(v2, MEMORY[0x277D83B88], &v4);

  return v4;
}

unint64_t sub_241CD557C()
{
  result = qword_27EC6A730;
  if (!qword_27EC6A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A730);
  }

  return result;
}

unint64_t sub_241CD55D0()
{
  result = qword_27EC6A738;
  if (!qword_27EC6A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A738);
  }

  return result;
}

uint64_t MAudiobookSeries.narratorNames.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CD557C();
  sub_241CD7154(v0, v1, &v5);

  v2 = v5;
  v3 = sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
  sub_241CD55D0();
  sub_241CD7154(v2, v3, &v5);

  return v5;
}

uint64_t sub_241CD5724(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = "com.apple.iBooks.xros";
  }

  else
  {
    v5 = "hasUniqueNarrators";
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "hasUniqueNarrators";
  }

  else
  {
    v7 = "com.apple.iBooks.xros";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_241CF98C8();
  }

  return v9 & 1;
}

uint64_t sub_241CD57CC()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CD5848()
{
  *v0;
  sub_241CF90B8();
}

uint64_t sub_241CD58B0()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

void sub_241CD5934(unint64_t *a1@<X8>)
{
  v2 = "hasUniqueNarrators";
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = "com.apple.iBooks.xros";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

id MAudiobookSeries.init(with:config:)(uint64_t a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *a2;
  v7 = *(a2 + 1);
  v24 = 0;

  v8 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB443C();
  sub_241CD7154(a1, v8, v23);

  v9 = v23[0];
  if (v23[0])
  {
    v24 = 0;
    sub_241CD557C();
    sub_241CD7154(v9, MEMORY[0x277D839B0], v23);

    v10 = v23[0];
    if (LOBYTE(v23[0]) == 2)
    {
      v10 = 0;
    }

    *(v3 + OBJC_IVAR____TtC14BookFoundation16MAudiobookSeries_hasUniqueNarrators) = v10;
    LOBYTE(v23[0]) = v6;
    v23[1] = v7;
    return MSeries.init(with:config:)(a1, v23);
  }

  else
  {

    if (qword_2810D5778 != -1)
    {
      swift_once();
    }

    if (qword_27EC69AA0 != -1)
    {
      swift_once();
    }

    v12 = sub_241CF8E88();
    sub_241C936C0(v12, qword_27EC69E28);

    v13 = sub_241CF8E68();
    v14 = sub_241CF9508();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_241CB3A88(0xD000000000000011, 0x8000000241D008F0, v23);
      *(v15 + 12) = 2080;
      v17 = sub_241CF8F08();
      v19 = v18;

      v20 = sub_241CB3A88(v17, v19, v23);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_241C8C000, v13, v14, "Invalid data for %s: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CFE970](v16, -1, -1);
      MEMORY[0x245CFE970](v15, -1, -1);
    }

    else
    {
    }

    v21 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v22 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id MAudiobookSeries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_241CD5D58(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x73656D616ELL;
  }

  else
  {
    v2 = 0x746E756F63;
  }

  if (*a2)
  {
    v3 = 0x73656D616ELL;
  }

  else
  {
    v3 = 0x746E756F63;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_241CF98C8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_241CD5DD8()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CD5E48()
{
  *v0;
  sub_241CF90B8();
}

uint64_t sub_241CD5E9C()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CD5F14@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_241CF9838();

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

void sub_241CD5F70(uint64_t *a1@<X8>)
{
  v2 = 0x746E756F63;
  if (*v1)
  {
    v2 = 0x73656D616ELL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t type metadata accessor for MAudiobookSeries()
{
  result = qword_27EC6A740;
  if (!qword_27EC6A740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_241CD605C()
{
  result = qword_27EC6A750;
  if (!qword_27EC6A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A750);
  }

  return result;
}

unint64_t sub_241CD60B4()
{
  result = qword_27EC6A758;
  if (!qword_27EC6A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A758);
  }

  return result;
}

uint64_t DateInterval.distance(_:calendar:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v25[1] = a1;
  v29 = sub_241CF8D88();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v29);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = sub_241CF8C48();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C93918(&qword_27EC6A760, &qword_241CFEB30);
  v14 = sub_241CF8DF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_241CFAAF0;
  (*(v15 + 16))(v18 + v17, a1, v14);
  sub_241CD63F8(v18);
  swift_setDeallocating();
  (*(v15 + 8))(v18 + v17, v14);
  swift_deallocClassInstance();
  sub_241CF8AD8();
  sub_241CF8AC8();
  sub_241CF8DC8();

  v19 = *(v3 + 8);
  v20 = v29;
  v19(v7, v29);
  v19(v9, v20);
  v21 = sub_241CF8C18();
  LOBYTE(v19) = v22;
  result = (*(v26 + 8))(v13, v27);
  if (v19)
  {
    return v21;
  }

  if (!__OFADD__(v21++, 1))
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_241CD63F8(uint64_t a1)
{
  v2 = sub_241CF8DF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_241C93918(&qword_27EC6A768, &qword_241CFEB38);
    v10 = sub_241CF9698();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_241CD66F0(&qword_27EC6A770);
      v18 = sub_241CF8F88();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_241CD66F0(&qword_27EC6A778);
          v25 = sub_241CF8FF8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_241CD66F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_241CF8DF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id UserDefault.mock(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v17 = a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v10 = *(v3 + 1);
  (*(v6 + 16))(v9, &v3[*(v12 + 32)], v5);
  *a3 = v11;
  *(a3 + 1) = v10;
  *(a3 + 2) = v17;
  v13 = type metadata accessor for UserDefault();
  (*(v6 + 32))(&a3[*(v13 + 32)], v9, v5);

  v14 = v17;

  return v14;
}

uint64_t sub_241CD6864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.setter(v6, v8);
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  sub_241C93918(&qword_27EC6A780, &qword_241CFEB40);
  if (swift_dynamicCast())
  {
    sub_241C914E4(v21, v23);
    v9 = v24;
    v10 = v25;
    sub_241C97000(v23, v24);
    if ((*(v10 + 8))(v9, v10))
    {
      v11 = v2[1];
      v12 = v2[2];
      v13 = *v3;
      v14 = sub_241CF9008();
      [v12 removeObjectForKey_];

      (*(v6 + 8))(a1, v5);
      return sub_241C8EEE8(v23);
    }

    sub_241C8EEE8(v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_241C8EA54(v21, &qword_27EC6A788, &qword_241CFEB48);
  }

  v16 = v2[2];
  v17 = sub_241CF98B8();
  v18 = *v3;
  v19 = v3[1];
  v20 = sub_241CF9008();
  [v16 setObject:v17 forKey:v20];
  swift_unknownObjectRelease();

  return (*(v6 + 8))(a1, v5);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefault.wrappedValue.getter(a2, v11);
  return sub_241CD6C5C;
}

void sub_241CD6C5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_241CD6D70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_241CD6EFC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_241CD7154@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_241CF9598();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v18 - v9;
  if (a1)
  {
    _sSY14BookFoundation12FeatureFlags0cD3Key8RawValueRpzrlE3keyAEvg_0();
    v18[0] = v20;
    sub_241CF9668();
    if (*(a1 + 16) && (v11 = sub_241CF45AC(v19), (v12 & 1) != 0))
    {
      sub_241C93664(*(a1 + 56) + 32 * v11, v18);
      sub_241C93610(v19);
    }

    else
    {
      sub_241C93610(v19);
      memset(v18, 0, sizeof(v18));
    }

    sub_241C93918(&qword_27EC6A0B0, &qword_241CFE350);
    v13 = swift_dynamicCast();
    v14 = *(a2 - 8);
    v15 = *(v14 + 56);
    if (v13)
    {
      v16 = *(a2 - 8);
      v15(v10, 0, 1, a2);
      (*(v16 + 32))(a3, v10, a2);
      return (v15)(a3, 0, 1, a2);
    }

    v15(v10, 1, 1, a2);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v14 = *(a2 - 8);
  }

  return (*(v14 + 56))(a3, 1, 1, a2);
}

id sub_241CD73D8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  _sSY14BookFoundation12FeatureFlags0cD3Key8RawValueRpzrlE3keyAEvg_0();
  v36[0] = *&v37[5];
  sub_241CF9668();
  if (!*(a2 + 16) || (v3 = sub_241CF45AC(v37), (v4 & 1) == 0))
  {
    sub_241C93610(v37);
    return 0;
  }

  sub_241C93664(*(a2 + 56) + 32 * v3, v36);
  sub_241C93610(v37);
  sub_241C8E30C(v36, v38);
  sub_241C93664(v38, v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_69;
  }

  result = *(&v36[0] + 1);
  v6 = HIBYTE(*(&v36[0] + 1)) & 0xFLL;
  v7 = *&v36[0] & 0xFFFFFFFFFFFFLL;
  if ((*(&v36[0] + 1) & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(*(&v36[0] + 1)) & 0xFLL;
  }

  else
  {
    v8 = *&v36[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    goto LABEL_69;
  }

  if ((*(&v36[0] + 1) & 0x1000000000000000) != 0)
  {
    v12 = sub_241CD0074(*&v36[0], *(&v36[0] + 1), 10);
    v33 = v32;

    if ((v33 & 1) == 0)
    {
LABEL_73:
      v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_241C8EEE8(v38);
      return v34;
    }

LABEL_69:
    sub_241C8E30C(v38, v37);
    sub_241CD7804();
    if (swift_dynamicCast())
    {
      return *&v36[0];
    }

    return 0;
  }

  if ((*(&v36[0] + 1) & 0x2000000000000000) == 0)
  {
    if ((*&v36[0] & 0x1000000000000000) != 0)
    {
      v9 = ((*(&v36[0] + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v35 = *(&v36[0] + 1);
      v9 = sub_241CF9708();
      result = v35;
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v7 != 1)
        {
          v12 = 0;
          if (!v9)
          {
            goto LABEL_68;
          }

          v20 = v9 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v19)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

      goto LABEL_77;
    }

    if (v10 == 45)
    {
      if (v7 >= 1)
      {
        v11 = v7 - 1;
        if (v7 != 1)
        {
          v12 = 0;
          if (!v9)
          {
            goto LABEL_68;
          }

          v13 = v9 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            ++v13;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

      __break(1u);
      goto LABEL_76;
    }

    if (v7)
    {
      v12 = 0;
      if (!v9)
      {
        goto LABEL_68;
      }

      while (1)
      {
        v26 = *v9 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v12;
        if ((v12 * 10) >> 64 != (10 * v12) >> 63)
        {
          break;
        }

        v12 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v9;
        if (!--v7)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_67;
  }

  v37[0] = *&v36[0];
  v37[1] = *(&v36[0] + 1) & 0xFFFFFFFFFFFFFFLL;
  if (LOBYTE(v36[0]) != 43)
  {
    if (LOBYTE(v36[0]) == 45)
    {
      if (!v6)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v9 = (v6 - 1);
      if (v6 != 1)
      {
        v12 = 0;
        v16 = v37 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v9)
          {
            goto LABEL_68;
          }
        }
      }
    }

    else if (v6)
    {
      v12 = 0;
      v28 = v37;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        v30 = 10 * v12;
        if ((v12 * 10) >> 64 != (10 * v12) >> 63)
        {
          break;
        }

        v12 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          break;
        }

        ++v28;
        if (!--v6)
        {
LABEL_66:
          LOBYTE(v9) = 0;
          goto LABEL_68;
        }
      }
    }

LABEL_67:
    v12 = 0;
    LOBYTE(v9) = 1;
LABEL_68:
    LOBYTE(v36[0]) = v9;
    v31 = v9;

    if (v31)
    {
      goto LABEL_69;
    }

    goto LABEL_73;
  }

  if (v6)
  {
    v9 = (v6 - 1);
    if (v6 != 1)
    {
      v12 = 0;
      v23 = v37 + 1;
      while (1)
      {
        v24 = *v23 - 48;
        if (v24 > 9)
        {
          break;
        }

        v25 = 10 * v12;
        if ((v12 * 10) >> 64 != (10 * v12) >> 63)
        {
          break;
        }

        v12 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        ++v23;
        if (!--v9)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_78:
  __break(1u);
  return result;
}

unint64_t sub_241CD7804()
{
  result = qword_2810D56A8;
  if (!qword_2810D56A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810D56A8);
  }

  return result;
}

void sub_241CD7850(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, unsigned __int8 *a6@<X5>, void *a7@<X8>)
{
  v15 = sub_241C93918(&qword_27EC69FA0, &qword_241CFEBC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v78 - v17;
  v93 = sub_241CF8B38();
  v18 = *(v93 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v93);
  v81 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v79 = &v78 - v22;
  if (*(a1 + 16))
  {
    v84 = *a6;
    if (a2)
    {
      v23 = a2;
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    if (a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    if (!a4)
    {
      a4 = sub_241CDE940(MEMORY[0x277D84F90]);
    }

    v86 = a7;
    v87 = v7;
    v88 = a5;
    v25 = *(v23 + 16);
    v85 = a1;
    v80 = v18;
    if (v25)
    {
      v91 = a4;
      v94 = MEMORY[0x277D84F90];
      sub_241C94488(0, v25, 0);
      v26 = 32;
      v27 = v94;
      do
      {
        v28 = *(v23 + v26);
        v29 = sub_241CF9038();
        v31 = v30;
        v94 = v27;
        v33 = *(v27 + 16);
        v32 = *(v27 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_241C94488((v32 > 1), v33 + 1, 1);
          v27 = v94;
        }

        *(v27 + 16) = v33 + 1;
        v34 = v27 + 16 * v33;
        *(v34 + 32) = v29;
        *(v34 + 40) = v31;
        v26 += 8;
        --v25;
      }

      while (v25);

      a4 = v91;
      v18 = v80;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    v83 = sub_241CDE8A8(v27);

    v36 = *(v24 + 16);
    if (v36)
    {
      v94 = MEMORY[0x277D84F90];
      sub_241C94488(0, v36, 0);
      v37 = 32;
      v38 = v94;
      do
      {
        v39 = *(v24 + v37);
        v40 = sub_241CF9038();
        v94 = v38;
        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        if (v43 >= v42 >> 1)
        {
          v91 = v40;
          v45 = a4;
          v46 = v41;
          sub_241C94488((v42 > 1), v43 + 1, 1);
          v41 = v46;
          a4 = v45;
          v18 = v80;
          v40 = v91;
          v38 = v94;
        }

        *(v38 + 16) = v43 + 1;
        v44 = v38 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        v37 += 8;
        --v36;
      }

      while (v36);
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    v82 = sub_241CDE8A8(v38);

    v47 = a4 + 64;
    v48 = 1 << *(a4 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(a4 + 64);
    v51 = (v48 + 63) >> 6;
    v90 = (v18 + 48);
    v91 = (v18 + 56);
    v78 = (v18 + 32);

    v52 = 0;
    v89 = MEMORY[0x277D84F90];
LABEL_28:
    v53 = v52;
    if (!v50)
    {
      goto LABEL_30;
    }

    do
    {
      v52 = v53;
LABEL_33:
      v54 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v55 = (v52 << 10) | (16 * v54);
      v56 = a4;
      v57 = (*(a4 + 48) + v55);
      v58 = *v57;
      v59 = v57[1];
      v60 = (*(a4 + 56) + v55);
      v62 = *v60;
      v61 = v60[1];

      v63 = v92;
      sub_241CF8B18();
      v64 = v93;
      (*v91)(v63, 0, 1, v93);

      if ((*v90)(v63, 1, v64) != 1)
      {
        v65 = v79;
        v66 = v63;
        v67 = v93;
        v68 = *v78;
        (*v78)(v79, v66, v93);
        v69 = v67;
        v70 = v68;
        v68(v81, v65, v69);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_241CBF9B0(0, *(v89 + 2) + 1, 1, v89);
        }

        v72 = *(v89 + 2);
        v71 = *(v89 + 3);
        if (v72 >= v71 >> 1)
        {
          v89 = sub_241CBF9B0(v71 > 1, v72 + 1, 1, v89);
        }

        v73 = v89;
        *(v89 + 2) = v72 + 1;
        v70(&v73[((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v72], v81, v93);
        a4 = v56;
        goto LABEL_28;
      }

      sub_241C8EA54(v63, &qword_27EC69FA0, &qword_241CFEBC0);
      v53 = v52;
      a4 = v56;
    }

    while (v50);
LABEL_30:
    while (1)
    {
      v52 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v52 >= v51)
      {

        v74 = v86;
        v75 = v82;
        v76 = v83;
        *v86 = v85;
        v74[1] = v76;
        v74[2] = v75;
        v77 = v88;
        v74[3] = v89;
        v74[4] = v77;
        *(v74 + 40) = v84;
        v74[6] = 0;
        v74[7] = 0;
        return;
      }

      v50 = *(v47 + 8 * v52);
      ++v53;
      if (v50)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {

    sub_241CE04A0();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
  }
}

uint64_t sub_241CD7E7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_241CF9628();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 7;
  }

  else
  {
    result = sub_241CDE7AC(result, *(a1 + 36), a1, &v7);
    v6 = v7;
  }

  *a2 = v6;
  return result;
}

_BYTE *sub_241CD7EF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_241CF9628();
  if (v5 == 1 << *(a1 + 32))
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    result = sub_241CDE850(v7, v5, *(a1 + 36), 0, a1);
    *a2 = v7[0];
  }

  a2[1] = result;
  return result;
}

uint64_t MCatalogRequestURLBuilder.init(href:additionalParameters:bag:clientIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, void *a6@<X8>)
{
  v13 = sub_241C93918(&qword_27EC69FA0, &qword_241CFEBC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - v15;
  v64 = sub_241CF8B38();
  v17 = *(v64 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v64);
  v51 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = &v48 - v21;
  v55 = *a5;
  v54 = sub_241CE0390(MEMORY[0x277D84F90]);
  v59 = a2;
  v60 = v6;
  v57 = a6;
  v58 = a4;
  v56 = a1;
  if (!a3)
  {
    a3 = sub_241CDE940(MEMORY[0x277D84F90]);
  }

  v22 = MEMORY[0x277D84F90];
  v53 = sub_241CDE8A8(MEMORY[0x277D84F90]);
  v61 = v22;
  v52 = sub_241CDE8A8(v22);
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a3 + 64);
  v26 = (v23 + 63) >> 6;
  v62 = (v17 + 48);
  v63 = (v17 + 56);
  v48 = v17;
  v49 = (v17 + 32);

  v28 = 0;
  while (1)
  {
    v29 = v28;
    if (!v25)
    {
      break;
    }

LABEL_10:
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = (v28 << 10) | (16 * v30);
    v32 = (*(a3 + 48) + v31);
    v33 = *v32;
    v34 = v32[1];
    v35 = (*(a3 + 56) + v31);
    v36 = *v35;
    v37 = v35[1];

    sub_241CF8B18();
    v38 = v64;
    (*v63)(v16, 0, 1, v64);

    if ((*v62)(v16, 1, v38) == 1)
    {
      result = sub_241C8EA54(v16, &qword_27EC69FA0, &qword_241CFEBC0);
    }

    else
    {
      v39 = *v49;
      v40 = v64;
      (*v49)(v50, v16, v64);
      v39(v51, v50, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_241CBF9B0(0, v61[2] + 1, 1, v61);
      }

      v42 = v61[2];
      v41 = v61[3];
      if (v42 >= v41 >> 1)
      {
        v61 = sub_241CBF9B0(v41 > 1, v42 + 1, 1, v61);
      }

      v43 = v61;
      v61[2] = v42 + 1;
      result = (v39)(v43 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v42, v51, v64);
    }
  }

  while (1)
  {
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      v44 = v57;
      v45 = v53;
      *v57 = v54;
      v44[1] = v45;
      v46 = v61;
      v44[2] = v52;
      v44[3] = v46;
      v44[4] = v58;
      *(v44 + 40) = v55;
      v47 = v59;
      v44[6] = v56;
      v44[7] = v47;
      return result;
    }

    v25 = *(a3 + 64 + 8 * v28);
    ++v29;
    if (v25)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241CD8394(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_241CBF9B0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_241CF8B38();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_241CD84C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_241CF97D8();
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

  v15 = sub_241CF97D8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_241CDE568(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_241CDE608(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t MCatalogRequestURLBuilder.build()(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  v3 = *(*(sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20) - 8) + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  v4 = *(*(sub_241C93918(&qword_27EC6A790, &qword_241CFEBD8) - 8) + 64) + 15;
  *(v2 + 280) = swift_task_alloc();
  v5 = sub_241CF8BC8();
  *(v2 + 288) = v5;
  v6 = *(v5 - 8);
  *(v2 + 296) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 304) = swift_task_alloc();
  v8 = v1[1];
  *(v2 + 208) = *v1;
  *(v2 + 224) = v8;
  v9 = v1[3];
  *(v2 + 240) = v1[2];
  *(v2 + 312) = v9;

  return MEMORY[0x2822009F8](sub_241CD86F8, 0, 0);
}

uint64_t sub_241CD86F8()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 312);
    v2 = *(v0 + 288);
    v3 = *(v0 + 296);
    v4 = *(v0 + 280);
    sub_241CF8BA8();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_241C8EA54(*(v0 + 280), &qword_27EC6A790, &qword_241CFEBD8);
      sub_241CE04A0();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
      v6 = *(v0 + 304);
      v8 = *(v0 + 272);
      v7 = *(v0 + 280);

      v9 = *(v0 + 8);

      return v9();
    }

    else
    {
      (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
      v17 = *(v0 + 224);
      *(v0 + 80) = *(v0 + 208);
      *(v0 + 96) = v17;
      v18 = *(v0 + 312);
      *(v0 + 112) = *(v0 + 240);
      *(v0 + 128) = v18;
      v19 = swift_task_alloc();
      *(v0 + 360) = v19;
      *v19 = v0;
      v19[1] = sub_241CD8B08;

      return sub_241CD97F4();
    }
  }

  else
  {
    v11 = *(v0 + 304);
    v12 = *(v0 + 312);
    v13 = *(v0 + 264);
    sub_241CF8BB8();
    v14 = *v13;
    v15 = v13[2];
    *(v0 + 32) = v13[1];
    *(v0 + 48) = v15;
    *(v0 + 16) = v14;
    *(v0 + 64) = v12;
    *(v0 + 72) = 0;
    v16 = swift_task_alloc();
    *(v0 + 328) = v16;
    *v16 = v0;
    v16[1] = sub_241CD8920;

    return sub_241CD9308();
  }
}