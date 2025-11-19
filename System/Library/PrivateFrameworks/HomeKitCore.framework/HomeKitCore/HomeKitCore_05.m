uint64_t sub_25312D684(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822A8, &qword_253151118);
  v40 = a2;
  result = sub_2531495C4();
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
      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
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

uint64_t sub_25312D944(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822C0, &qword_253151130);
  result = sub_2531495C4();
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
      v34 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
        v23 = v34;
      }

      v24 = *(v8 + 40);
      result = sub_253149184();
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
      *(*(v8 + 56) + 16 * v16) = v34;
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

uint64_t sub_25312DBC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822B8, &qword_253151128);
  result = sub_2531495C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_253149184();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
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
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25312DE2C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5822D0, &qword_253151140);
  v42 = a2;
  result = sub_2531495C4();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
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
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_253131220(v28, v9);
      }

      else
      {
        sub_2530FBB74(v28, v9);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_253149184();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_253131220(v9, *(v13 + 56) + v27 * v21);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_25312E138(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581A08, &qword_25314F1F8);
  v36 = a2;
  result = sub_2531495C4();
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
        sub_2530C02F4(v25, v37);
      }

      else
      {
        sub_2530C0304(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
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
      result = sub_2530C02F4(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_25312E3F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822B0, &qword_253151120);
  v36 = a2;
  result = sub_2531495C4();
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

        sub_2530CAA1C(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
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

unint64_t *sub_25312E6AC(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_253130B94(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

double sub_25312E748@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25311D834(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25312B8AC(&qword_27F580728, &qword_25314C488, sub_2530BDB14);
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_253148944();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_2530BDB14((*(v11 + 56) + 40 * v8), a2);
    sub_25312ED18(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_25312E850(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25311DB04(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25312C0C0();
      v11 = v12;
    }

    *a2 = *(*(v11 + 56) + 16 * v8);
    sub_25312F03C(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void sub_25312E8E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25311DB04(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25312C244();
      v11 = v12;
    }

    *a2 = *(*(v11 + 56) + 8 * v8);
    sub_25312F1C8(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t sub_25312E980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25311DB04(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25312C3A4();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
    v20 = *(v13 - 8);
    sub_253131220(v12 + *(v20 + 72) * v8, a2);
    sub_25312F354(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_25312EAD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25311D908(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25312C5B4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2530C02F4((*(v12 + 56) + 32 * v9), a3);
    sub_25312F51C(v9, v12);
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

uint64_t sub_25312EB78(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253149274() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + v6);
      sub_253149814();
      MEMORY[0x259BFD420](v12);
      result = sub_253149844();
      v13 = result & v7;
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
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v3;
        v19 = (v17 + 40 * v6);
        if (v3 != v6 || v18 >= v19 + 40)
        {
          v9 = *v19;
          v10 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v9;
          *(v18 + 16) = v10;
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

  return result;
}

unint64_t sub_25312ED18(int64_t a1, uint64_t a2)
{
  v45 = sub_253148944();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = sub_253149274();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2531311D8(&qword_27F580560, MEMORY[0x277CC95F0]);
      v26 = sub_253148B04();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

void sub_25312F03C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253149274() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_253149184();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
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
}

void sub_25312F1C8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253149274() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_253149184();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
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
}

void sub_25312F354(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253149274() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_253149184();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

uint64_t sub_25312F51C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253149274() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_253149814();

      sub_253148BB4();
      v14 = sub_253149844();

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

uint64_t sub_25312F6CC(__int128 *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25311D9C4(a2);
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
      sub_25312B704();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25312C904(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_25311D9C4(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_253149784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_0(v21);

    return sub_2530BDB14(a1, v21);
  }

  else
  {

    return sub_2531304AC(v9, a2, a1, v20);
  }
}

uint64_t sub_25312F7FC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_253148944();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25311D834(a2);
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
      sub_25312B8AC(&qword_27F580728, &qword_25314C488, sub_2530BDB14);
      goto LABEL_7;
    }

    sub_25312CBCC(v18, a3 & 1, &qword_27F580728, &qword_25314C488, sub_2530BDB14);
    v24 = *v4;
    v25 = sub_25311D834(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_253130518(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_253149784();
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
  v22 = (v21[7] + 40 * v15);
  __swift_destroy_boxed_opaque_existential_0(v22);

  return sub_2530BDB14(a1, v22);
}

void sub_25312FA20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v32 = a1;
  v33 = a2;
  v10 = sub_253148534();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_25311DA30(a4);
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
      sub_25312BB44();
      goto LABEL_9;
    }

    sub_25312CFC8(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_25311DA30(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    sub_253149784();
    __break(1u);
    return;
  }

LABEL_9:
  v26 = v33;
  v27 = *v6;
  if (v21)
  {
    v28 = v27[7] + 24 * v17;
    v29 = *v28;
    v30 = *(v28 + 8);
    v33 = *(v28 + 16);
    *v28 = v32;
    *(v28 + 8) = v26;
    *(v28 + 16) = a3;

    v31 = v33;
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    sub_2531305DC(v17, v14, v32, v26, a3, v27);
  }
}

void sub_25312FC20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25311D908(a2, a3);
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
      sub_25312D3E0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25311D908(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_253149784();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_25312BDDC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
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

uint64_t sub_25312FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25311D908(a3, a4);
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
      sub_25312D684(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_25311D908(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_253149784();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25312BF48();
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

void sub_25312FF20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_25311DB04(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_25312D944(v15, a4 & 1);
      v19 = *v5;
      v10 = sub_25311DB04(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_25311E418();
        sub_253149784();
        __break(1u);
_objc_retain_x1:
        MEMORY[0x2821F9840]();
        return;
      }
    }

    else
    {
      v18 = v10;
      sub_25312C0C0();
      v10 = v18;
    }
  }

  v21 = *v5;
  if ((v16 & 1) == 0)
  {
    v21[(v10 >> 6) + 8] |= 1 << v10;
    *(v21[6] + 8 * v10) = a3;
    v24 = (v21[7] + 16 * v10);
    *v24 = a1;
    v24[1] = a2;
    v25 = v21[2];
    v14 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v14)
    {
      v21[2] = v26;

      goto _objc_retain_x1;
    }

    goto LABEL_17;
  }

  v22 = v21[7] + 16 * v10;
  v23 = *(v22 + 8);
  v28 = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
}

void sub_2531300A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25311DB04(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_25312DBC4(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_25311DB04(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_25311E418();
        sub_253149784();
        __break(1u);
_objc_retain_x1:
        MEMORY[0x2821F9840]();
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_25312C244();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    *(v19[7] + 8 * v8) = a1;
    v22 = v19[2];
    v12 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v12)
    {
      v19[2] = v23;

      goto _objc_retain_x1;
    }

    goto LABEL_17;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v8);
  *(v20 + 8 * v8) = a1;
}

id sub_253130208(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_25311DB04(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_25312C3A4();
      goto LABEL_7;
    }

    sub_25312DE2C(v12, a3 & 1);
    v19 = *v4;
    v20 = sub_25311DB04(a2);
    if ((v13 & 1) == (v21 & 1))
    {
      v9 = v20;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_25311E418();
    result = sub_253149784();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete() - 8) + 72) * v9;

    return sub_253131284(a1, v17);
  }

LABEL_13:
  sub_2531306B0(v9, a2, a1, v15);

  return a2;
}

_OWORD *sub_25313035C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25311D908(a2, a3);
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
      sub_25312C5B4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25312E138(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25311D908(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_253149784();
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

    return sub_2530C02F4(a1, v23);
  }

  else
  {
    sub_253130744(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2531304AC(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_2530BDB14(a3, a4[7] + 40 * a1);
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

uint64_t sub_253130518(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_253148944();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_2530BDB14(a3, a4[7] + 40 * a1);
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

uint64_t sub_2531305DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_253148534();
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

uint64_t sub_2531306B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
  result = sub_253131220(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_253130744(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2530C02F4(a4, (a5[7] + 32 * a1));
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

uint64_t sub_2531307D8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(_BYTE *, unint64_t))
{
  v52 = a7;
  v13 = sub_253148944();
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v47 = v44 - v18;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_2531495D4();
  v20 = result;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v44[2] = v50 + 16;
  v45 = result;
  v23 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v50 + 32;
  while (v21)
  {
    v24 = v17;
    v25 = __clz(__rbit64(v21));
    v48 = (v21 - 1) & v21;
LABEL_16:
    v28 = v25 | (v22 << 6);
    v29 = a4[6];
    v31 = v50;
    v30 = v51;
    v49 = *(v50 + 72);
    v32 = v47;
    (*(v50 + 16))(v47, v29 + v49 * v28, v51);
    sub_2530C25FC(a4[7] + 40 * v28, v54);
    v33 = *(v31 + 32);
    v17 = v24;
    v33(v24, v32, v30);
    v52(v54, v53);
    v20 = v45;
    v34 = *(v45 + 40);
    sub_2531311D8(&qword_27F580560, MEMORY[0x277CC95F0]);
    result = sub_253148B04();
    v35 = -1 << *(v20 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v23 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a1 = v46;
LABEL_26:
    *(v23 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v33((*(v20 + 48) + v38 * v49), v17, v51);
    result = v52(v53, *(v20 + 56) + 40 * v38);
    ++*(v20 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v21 = v48;
    if (!a3)
    {
      return v20;
    }
  }

  v26 = v22;
  while (1)
  {
    v22 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      return v20;
    }

    v27 = a1[v22];
    ++v26;
    if (v27)
    {
      v24 = v17;
      v25 = __clz(__rbit64(v27));
      v48 = (v27 - 1) & v27;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_253130B94(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a2;
  v43 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D00, &qword_253150318);
  v6 = *(*(v59 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v59);
  v55 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v41 - v9;
  v10 = sub_253148944();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v54 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v15 = 0;
  v51 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v45 = (v19 + 63) >> 6;
  v48 = v13 + 16;
  v49 = v13;
  v47 = (v13 + 8);
  v50 = result;
  while (v21)
  {
    v27 = __clz(__rbit64(v21));
    v52 = (v21 - 1) & v21;
LABEL_13:
    v30 = v27 | (v15 << 6);
    v31 = v51;
    v32 = *(v49 + 16);
    v33 = v54;
    v32(v54, v51[6] + *(v49 + 72) * v30, v10);
    v34 = v31[7];
    v46 = v30;
    sub_2530C25FC(v34 + 40 * v30, v58);
    v35 = v53;
    v32(v53, v33, v10);
    sub_2530C25FC(v58, v35 + *(v59 + 48));
    v36 = v35;
    v37 = v55;
    sub_253131168(v36, v55);
    if (*(a4 + 16) && (v38 = sub_25311D834(v37), (v39 & 1) != 0))
    {
      sub_2530C25FC(*(a4 + 56) + 40 * v38, v56);
      sub_2530CD33C(v53, &qword_27F581D00, &qword_253150318);
      v22 = 1;
    }

    else
    {
      sub_2530CD33C(v53, &qword_27F581D00, &qword_253150318);
      v22 = 0;
      memset(v56, 0, sizeof(v56));
      v57 = 0;
    }

    v23 = *(v59 + 48);
    sub_2530CD33C(v56, &qword_27F581370, &qword_25314D908);
    v24 = v55;
    __swift_destroy_boxed_opaque_existential_0((v55 + v23));
    v25 = *v47;
    v26 = v24;
    v10 = v50;
    (*v47)(v26, v50);
    __swift_destroy_boxed_opaque_existential_0(v58);
    result = v25(v54, v10);
    v21 = v52;
    if (v22)
    {
      *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v44++, 1))
      {
        __break(1u);
        return sub_2531307D8(v43, v42, v44, v51, &qword_27F580728, &qword_25314C488, sub_2530BDB14);
      }
    }
  }

  v28 = v15;
  while (1)
  {
    v15 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v15 >= v45)
    {
      return sub_2531307D8(v43, v42, v44, v51, &qword_27F580728, &qword_25314C488, sub_2530BDB14);
    }

    v29 = v17[v15];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v52 = (v29 - 1) & v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_253130FA8(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_25312E6AC(v13, v7, a1, a2);
      MEMORY[0x259BFDC60](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_253130B94((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_253131168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D00, &qword_253150318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2531311D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_253131220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_253131284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2531312E8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_25313142C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 104)));
  (*(*(v3 - 8) + 8))(v0 + *(*v0 + 112), v3);
  return v0;
}

uint64_t sub_253131590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = dynamic_cast_existential_2_conditional(a1);
  if (v8)
  {
    v11 = v8;
    v12 = v9;
    v13 = *(*v3 + 104);
    v23 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815E8, &qword_25314E3B0);
    v22 = a3;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25314D290;
    *(inited + 32) = sub_2530EB040();
    *(inited + 40) = v15;
    v24 = *(*v3 + 96);
    sub_2530C25FC(v3 + v13, v25);
    v16 = swift_allocObject();
    v16[2] = *(v7 + 80);
    v16[3] = a2;
    v16[4] = *(v7 + 88);
    v16[5] = v22;
    sub_2530BDB14(v25, (v16 + 6));
    v16[11] = v11;
    v16[12] = v12;
    v16[13] = v23;
    v17 = _s5ProxyCMa();
    v18 = sub_253148D64();
    WitnessTable = swift_getWitnessTable();
    sub_253146CC4(inited, v3 + v24, sub_2531329B0, v16, v17, v18, WitnessTable);

    swift_setDeallocating();
    result = sub_2530DAA9C(inited + 32);
    if (!v4)
    {
      return v26;
    }
  }

  else
  {
    sub_2530F5D8C();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2531317D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = dynamic_cast_existential_2_conditional(a1);
  if (v10)
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
    v28 = a2;
    v16 = *(*v4 + 104);
    v17 = sub_2530EB040();
    v26 = v18;
    v27 = v17;
    v25 = *(*v4 + 96);
    sub_2530C25FC(v4 + v16, v29);
    v19 = swift_allocObject();
    v19[2] = *(v9 + 80);
    v19[3] = a3;
    v19[4] = *(v9 + 88);
    v19[5] = a4;
    sub_2530BDB14(v29, (v19 + 6));
    v19[11] = v13;
    v19[12] = v14;
    v19[13] = v15;
    v20 = _s5ProxyCMa();
    v21 = sub_253148D64();
    WitnessTable = swift_getWitnessTable();
    sub_253146AE8(v27, v26, v4 + v25, v28, sub_25313296C, v19, v20, v21, WitnessTable);

    if (v5)
    {
    }

    else
    {

      return v30;
    }
  }

  else
  {
    sub_2530F5D8C();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_2531319E8(uint64_t a1)
{
  v31 = *v1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v3++;
      v5 = v6;
      if (v6 > 3)
      {
        if (v5 > 5)
        {
          if (v5 == 6)
          {
            v7 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
            v8 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
            v9 = &qword_27F5806F0;
          }

          else
          {
            v7 = type metadata accessor for HomesStore.User.SharedSettings();
            v8 = type metadata accessor for HomesStore.User.SharedSettings;
            v9 = &unk_27F5806E8;
          }
        }

        else if (v5 == 4)
        {
          v7 = type metadata accessor for HomesStore.User();
          v8 = type metadata accessor for HomesStore.User;
          v9 = &qword_27F580700;
        }

        else
        {
          v7 = type metadata accessor for HomesStore.Zone();
          v8 = type metadata accessor for HomesStore.Zone;
          v9 = &unk_27F5806F8;
        }
      }

      else if (v5 > 1)
      {
        if (v5 == 2)
        {
          v7 = type metadata accessor for HomesStore.Home();
          v8 = type metadata accessor for HomesStore.Home;
          v9 = &qword_27F580710;
        }

        else
        {
          v7 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
          v8 = type metadata accessor for HomesStore.HomesRelationshipModel;
          v9 = &unk_27F580708;
        }
      }

      else if (v5)
      {
        v7 = type metadata accessor for HomesStore.Room();
        v8 = type metadata accessor for HomesStore.Room;
        v9 = &qword_27F580718;
      }

      else
      {
        v7 = type metadata accessor for HomesStore.Accessory();
        v8 = type metadata accessor for HomesStore.Accessory;
        v9 = &qword_27F580720;
      }

      v10 = sub_2530F5D1C(v9, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2530F4904(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v4 = sub_2530F4904((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v13;
      v14 = &v4[16 * v12];
      *(v14 + 4) = v7;
      *(v14 + 5) = v10;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    v15 = MEMORY[0x277D84F90];
    if (!v13)
    {
      goto LABEL_36;
    }
  }

  v15 = MEMORY[0x277D84F90];
  v16 = 32;
  do
  {
    v18 = *&v4[v16];
    if (swift_conformsToProtocol2())
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = sub_2530EB040();
      v22 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2530F459C(0, *(v15 + 2) + 1, 1, v15);
      }

      v24 = *(v15 + 2);
      v23 = *(v15 + 3);
      if (v24 >= v23 >> 1)
      {
        v15 = sub_2530F459C((v23 > 1), v24 + 1, 1, v15);
      }

      *(v15 + 2) = v24 + 1;
      v17 = &v15[16 * v24];
      *(v17 + 4) = v20;
      *(v17 + 5) = v22;
    }

    v16 += 16;
    --v13;
  }

  while (v13);
LABEL_36:

  v25 = *(*v32 + 96);
  sub_2530C25FC(v32 + *(*v32 + 104), v34);
  v26 = swift_allocObject();
  *(v26 + 16) = *(v31 + 80);
  *(v26 + 24) = *(v31 + 88);
  sub_2530BDB14(v34, v26 + 32);
  v27 = _s5ProxyCMa();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815E0, &qword_25314E3A8);
  WitnessTable = swift_getWitnessTable();
  sub_253146CC4(v15, v32 + v25, sub_25313294C, v26, v27, v28, WitnessTable);

  if (v33)
  {
  }

  return v35;
}

uint64_t sub_253131F2C@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_253148D64();
  swift_getWitnessTable();
  result = sub_253148C34();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_253131FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_project_boxed_opaque_existential_1(a2, v12);
  v15 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  result = (*(v13 + 40))(v11, a3, a3, a4, v12, v13);
  if (!v6)
  {
    v17 = swift_dynamicCast();
    return (*(*(a5 - 8) + 56))(a6, v17 ^ 1u, 1, a5);
  }

  return result;
}

uint64_t sub_253132138@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v45 = a2;
  v39 = a3;
  v44 = sub_253148944();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_253148D44();
  if (!result)
  {
    v12 = MEMORY[0x277D84F98];
LABEL_23:
    *v39 = v12;
    return result;
  }

  v11 = 0;
  v40 = v6 + 16;
  v41 = v6;
  v43 = (v6 + 8);
  v12 = MEMORY[0x277D84F98];
  v42 = AssociatedTypeWitness;
  while (1)
  {
    v14 = sub_253148CF4();
    sub_253148CC4();
    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = *(a1 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_25;
    }

LABEL_7:
    v17 = v45[3];
    v18 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v17);
    (*(v18 + 32))(v49, v15, v17, v18);
    if (v4)
    {

      return swift_unknownObjectRelease();
    }

    v46 = 0;
    v19 = a1;
    v20 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v21 = *(v20 + 32);
    v22 = v47;
    sub_2531493D4();
    sub_2530C25FC(v49, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v12;
    v25 = sub_25311D834(v22);
    v26 = v12[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_26;
    }

    v29 = v24;
    if (v12[3] >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v12 = v50;
        if (v24)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_25312B6DC();
        v12 = v50;
        if (v29)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_25312C8DC(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_25311D834(v47);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_28;
      }

      v25 = v30;
      v12 = v50;
      if (v29)
      {
LABEL_3:
        v13 = (v12[7] + 40 * v25);
        __swift_destroy_boxed_opaque_existential_0(v13);
        sub_2530BDB14(v48, v13);
        swift_unknownObjectRelease();
        (*v43)(v47, v44);
        goto LABEL_4;
      }
    }

    v12[(v25 >> 6) + 8] |= 1 << v25;
    v32 = v41;
    v33 = v47;
    v34 = v44;
    (*(v41 + 16))(v12[6] + *(v41 + 72) * v25, v47, v44);
    sub_2530BDB14(v48, v12[7] + 40 * v25);
    swift_unknownObjectRelease();
    (*(v32 + 8))(v33, v34);
    v35 = v12[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_27;
    }

    v12[2] = v37;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v49);
    a1 = v19;
    result = sub_253148D44();
    ++v11;
    v4 = v46;
    if (v16 == result)
    {
      goto LABEL_23;
    }
  }

  v15 = sub_2531493F4();
  v16 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_7;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_253149784();
  __break(1u);
  return result;
}

uint64_t sub_25313252C()
{
  sub_25313142C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_253132630(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *sub_25313266C(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v19 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v19 - v14;
  v16 = *(v4 + 112);
  v17 = *(v12 + 16);
  v17(&v3[v16], v21, v6);
  v17(v15, &v3[v16], v6);
  (*(v5 + 56))(v6, v5);
  (*(v12 + 8))(v15, v6);
  (*(v7 + 32))(&v3[*(*v3 + 96)], v11, AssociatedTypeWitness);
  sub_2530BDB14(v22, &v3[*(*v3 + 104)]);
  return v3;
}

char *sub_2531328F8(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = _s5ProxyCMa();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_25313266C(a1, a2);
}

uint64_t sub_25313294C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_253132138(a1, v2 + 4, a2);
}

uint64_t sub_2531329DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v9 = v1[5];
  return sub_253131F2C(a1);
}

uint64_t sub_253132A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 72);
  v7 = *(v2 + 40);
  return sub_253131FF8(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 24), a2);
}

uint64_t HomesStore.Zone.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomesStore.Zone.name.getter()
{
  v1 = (v0 + *(type metadata accessor for HomesStore.Zone() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for HomesStore.Zone()
{
  result = qword_27F5823B0;
  if (!qword_27F5823B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static HomesStore.Zone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HomesStore.Zone() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_253149734();
}

uint64_t sub_253132BE0(uint64_t a1)
{
  v2 = sub_253132E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253132C1C(uint64_t a1)
{
  v2 = sub_253132E14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.Zone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582360, &qword_2531511D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253132E14();
  sub_253149894();
  v15[15] = 0;
  sub_253148944();
  sub_2531338A0(&qword_27F580630, MEMORY[0x277CC95F0]);
  sub_2531496D4();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for HomesStore.Zone() + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_2531496B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_253132E14()
{
  result = qword_27F582368;
  if (!qword_27F582368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582368);
  }

  return result;
}

uint64_t HomesStore.Zone.hash(into:)()
{
  sub_253148944();
  sub_2531338A0(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = (v0 + *(type metadata accessor for HomesStore.Zone() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_253148BB4();
}

uint64_t HomesStore.Zone.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_2531338A0(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = (v0 + *(type metadata accessor for HomesStore.Zone() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_253148BB4();
  return sub_253149844();
}

uint64_t HomesStore.Zone.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_253148944();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582370, &qword_2531511E0);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for HomesStore.Zone();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253132E14();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_2531338A0(&qword_27F5805E8, MEMORY[0x277CC95F0]);
  v18 = v30;
  sub_253149664();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_253149644();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_253133500(v23, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_253133564(v23);
}

uint64_t sub_253133318(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_2531338A0(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_2531333C0(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_2531338A0(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_253148BB4();
}

uint64_t sub_25313345C(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_2531338A0(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_253133500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Zone();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253133564(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.Zone();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PartialModelRelationshipDescriptor<>.zone.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582378, &qword_2531511E8);

  return MEMORY[0x2821FEAF0](v0, &unk_27F580418);
}

uint64_t sub_253133600()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5823D8, &qword_253151478);
  swift_allocObject();

  v1 = sub_2531432E4(v0);

  qword_27F582358 = v1;
  return result;
}

uint64_t sub_2531336CC(void *a1)
{
  a1[1] = sub_2531338A0(&qword_27F582380, type metadata accessor for HomesStore.Zone);
  a1[2] = sub_2531338A0(&qword_27F582388, type metadata accessor for HomesStore.Zone);
  a1[3] = sub_2531338A0(&qword_27F582390, type metadata accessor for HomesStore.Zone);
  a1[4] = sub_2531338A0(&qword_27F582398, type metadata accessor for HomesStore.Zone);
  result = sub_2531338A0(&qword_27F5823A0, type metadata accessor for HomesStore.Zone);
  a1[5] = result;
  return result;
}

uint64_t sub_2531338A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_253133924()
{
  result = qword_27F5823C0;
  if (!qword_27F5823C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5823C0);
  }

  return result;
}

unint64_t sub_25313397C()
{
  result = qword_27F5823C8;
  if (!qword_27F5823C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5823C8);
  }

  return result;
}

unint64_t sub_2531339D4()
{
  result = qword_27F5823D0;
  if (!qword_27F5823D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5823D0);
  }

  return result;
}

uint64_t Array<A>.subscript.getter()
{
  sub_253148D64();
  swift_getWitnessTable();
  return sub_253148C44();
}

uint64_t sub_253133AC0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t ComposableModelDescriptor.id.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 32))(a1, a2);
  v9 = *(swift_getAssociatedConformanceWitness() + 32);
  sub_2531493D4();
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_253133C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_253148944();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 32);
  sub_2531493D4();
  LOBYTE(a4) = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
  (*(v6 + 8))(v9, v5);
  return a4 & 1;
}

uint64_t sub_253133DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v17 - v8;
  v10 = sub_253148944();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2530CD26C(a1, v9, a3, a4);
  (*(v11 + 32))(v14, v9, v10);
  v15 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
  (*(v11 + 8))(v14, v10);
  return v15 & 1;
}

uint64_t sub_253133F40@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v18 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v18 = v9;
    v19 = v8;
    v20 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_2530CD26C(v13, v11, &qword_27F5816A0, &qword_253151500);
      v15 = a1(v11);
      if (v3)
      {
        return sub_2530CD33C(v11, &qword_27F5816A0, &qword_253151500);
      }

      if (v15)
      {
        break;
      }

      sub_2530CD33C(v11, &qword_27F5816A0, &qword_253151500);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    sub_2530CD2D4(v11, v20, &qword_27F5816A0, &qword_253151500);
    v16 = 0;
LABEL_10:
    v9 = v18;
    v8 = v19;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

uint64_t sub_25313410C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v24 = a5;
  v11 = *(a3(0) - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v22 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v22 = v13;
    v23 = a6;
    v17 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    while (1)
    {
      sub_25313A0D4(v17, v15, a4);
      v19 = a1(v15);
      if (v6)
      {
        return sub_25313A13C(v15, a4);
      }

      if (v19)
      {
        break;
      }

      sub_25313A13C(v15, a4);
      v17 += v18;
      if (!--v16)
      {
        v20 = 1;
        a6 = v23;
        goto LABEL_10;
      }
    }

    a6 = v23;
    sub_25313C0D0(v15, v23, v24);
    v20 = 0;
LABEL_10:
    v13 = v22;
  }

  else
  {
    v20 = 1;
  }

  return (*(v11 + 56))(a6, v20, 1, v13);
}

uint64_t HomesStore.HomesRelationshipModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_25313437C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v64 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  v63 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v65 = *(v63 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x28223BE20](v63);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v61 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v16 = *(*(v61 - 1) + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v51 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_30:
    v50 = 0;
    return v50 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v50 = 1;
    return v50 & 1;
  }

  v24 = 0;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = a1 + v25;
  v54 = *(a1 + 16);
  v55 = a2 + v25;
  v27 = *(v20 + 72);
  v57 = &v51 - v21;
  v58 = v19;
  v52 = v27;
  v53 = a1 + v25;
  while (1)
  {
    v28 = v27 * v24;
    result = sub_25313A0D4(v26 + v27 * v24, v22, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    if (v24 == v23)
    {
      break;
    }

    v56 = v24;
    sub_25313A0D4(v55 + v28, v19, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    result = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
    if ((result & 1) == 0 || (v30 = v61[5], v31 = *&v57[v30], v32 = *&v58[v30], v33 = *(v31 + 16), v33 != *(v32 + 16)))
    {
LABEL_29:
      sub_25313A13C(v58, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      sub_25313A13C(v57, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      goto LABEL_30;
    }

    if (v33 && v31 != v32)
    {
      v34 = 0;
      v35 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v62 = v31 + v35;
      v60 = v32 + v35;
      while (v34 < *(v31 + 16))
      {
        v36 = *(v65 + 72) * v34;
        result = sub_25313A0D4(v62 + v36, v15, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        if (v34 >= *(v32 + 16))
        {
          goto LABEL_35;
        }

        sub_25313A0D4(v60 + v36, v13, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
        {
          sub_25313A13C(v13, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
          sub_25313A13C(v15, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
          goto LABEL_29;
        }

        v37 = *(v63 + 20);
        v38 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
        sub_25313A13C(v13, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        result = sub_25313A13C(v15, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        if ((v38 & 1) == 0)
        {
          goto LABEL_29;
        }

        if (v33 == ++v34)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_34;
    }

LABEL_16:
    v39 = v61[6];
    v40 = *&v57[v39];
    v41 = *&v58[v39];
    v42 = *(v41 + 16);
    v62 = *(v40 + 16);
    if (v62 != v42)
    {
      goto LABEL_29;
    }

    if (v62 && v40 != v41)
    {
      v43 = 0;
      v44 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v59 = v41 + v44;
      v60 = v40 + v44;
      while (v43 < *(v40 + 16))
      {
        v45 = *(v66 + 72) * v43;
        result = sub_2530CD26C(v60 + v45, v9, &qword_27F5816A0, &qword_253151500);
        if (v43 >= *(v41 + 16))
        {
          goto LABEL_33;
        }

        v46 = v9;
        v47 = v64;
        sub_2530CD26C(v59 + v45, v64, &qword_27F5816A0, &qword_253151500);
        v48 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
        v49 = v47;
        v9 = v46;
        sub_2530CD33C(v49, &qword_27F5816A0, &qword_253151500);
        result = sub_2530CD33C(v46, &qword_27F5816A0, &qword_253151500);
        if ((v48 & 1) == 0)
        {
          goto LABEL_29;
        }

        if (v62 == ++v43)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

LABEL_24:
    v22 = v57;
    v19 = v58;
    v50 = sub_253134D24(*&v57[v61[7]], *&v58[v61[7]]);
    sub_25313A13C(v19, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    sub_25313A13C(v22, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    if (v50)
    {
      v24 = v56 + 1;
      v26 = v53;
      v23 = v54;
      v27 = v52;
      if (v56 + 1 != v54)
      {
        continue;
      }
    }

    return v50 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_253134964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_25313A0D4(v14, v11, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      sub_25313A0D4(v15, v8, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 20);
      v18 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
      sub_25313A13C(v8, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      sub_25313A13C(v11, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_25313A13C(v8, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
    sub_25313A13C(v11, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
    goto LABEL_11;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_253134B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_2530CD26C(v14, v11, &qword_27F5816A0, &qword_253151500);
        sub_2530CD26C(v15, v8, &qword_27F5816A0, &qword_253151500);
        v17 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
        sub_2530CD33C(v8, &qword_27F5816A0, &qword_253151500);
        sub_2530CD33C(v11, &qword_27F5816A0, &qword_253151500);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_253134D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v20 = &v35 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v35 = v5;
  v36 = v21;
  v22 = 0;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v37 = v17;
  v38 = a2 + v23;
  v39 = *(v18 + 72);
  v40 = a1 + v23;
  v41 = &v35 - v19;
  v42 = v16;
  while (1)
  {
    v25 = v39 * v22;
    result = sub_25313A0D4(v40 + v39 * v22, v20, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    if (v22 == v21)
    {
      break;
    }

    sub_25313A0D4(v38 + v25, v16, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_16;
    }

    v26 = *(v37 + 20);
    v27 = *&v41[v26];
    v28 = *&v42[v26];
    v29 = *(v27 + 16);
    if (v29 != *(v28 + 16))
    {
      goto LABEL_16;
    }

    if (v29 && v27 != v28)
    {
      v30 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v31 = v27 + v30;
      v32 = v28 + v30;
      v33 = *(v35 + 72);
      while (1)
      {
        sub_2530CD26C(v31, v11, &qword_27F5816A0, &qword_253151500);
        sub_2530CD26C(v32, v9, &qword_27F5816A0, &qword_253151500);
        v34 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
        sub_2530CD33C(v9, &qword_27F5816A0, &qword_253151500);
        sub_2530CD33C(v11, &qword_27F5816A0, &qword_253151500);
        if ((v34 & 1) == 0)
        {
          break;
        }

        v32 += v33;
        v31 += v33;
        if (!--v29)
        {
          goto LABEL_5;
        }
      }

LABEL_16:
      sub_25313A13C(v42, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
      sub_25313A13C(v41, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
      return 0;
    }

LABEL_5:
    ++v22;
    v16 = v42;
    sub_25313A13C(v42, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    v20 = v41;
    sub_25313A13C(v41, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    result = 1;
    v21 = v36;
    if (v22 == v36)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2531350A8()
{
  if (*v0)
  {
    result = 0x73656D6F68;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_2531350D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656D6F68 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_2531351A4(uint64_t a1)
{
  v2 = sub_253135400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531351E0(uint64_t a1)
{
  v2 = sub_253135400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.HomesRelationshipModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5823E0, &qword_2531514E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253135400();
  sub_253149894();
  v14 = 0;
  sub_253148944();
  sub_253135508(&qword_27F580630, MEMORY[0x277CC95F0]);
  sub_2531496D4();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for HomesStore.HomesRelationshipModel(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5823F0, &qword_2531514E8);
    sub_253135454();
    sub_2531496D4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_253135400()
{
  result = qword_27F5823E8;
  if (!qword_27F5823E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5823E8);
  }

  return result;
}

unint64_t sub_253135454()
{
  result = qword_27F5823F8;
  if (!qword_27F5823F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5823F0, &qword_2531514E8);
    sub_253135508(&qword_27F582400, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5823F8);
  }

  return result;
}

uint64_t sub_253135508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HomesStore.HomesRelationshipModel.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v3 = *(v1 + *(type metadata accessor for HomesStore.HomesRelationshipModel(0) + 20));

  return sub_2531399C4(a1, v3);
}

uint64_t HomesStore.HomesRelationshipModel.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
  sub_2531399C4(v3, *(v0 + *(v1 + 20)));
  return sub_253149844();
}

uint64_t HomesStore.HomesRelationshipModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_253148944();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582408, &qword_2531514F0);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253135400();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_253135508(&qword_27F5805E8, MEMORY[0x277CC95F0]);
  v19 = v30;
  v20 = v28;
  sub_253149664();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5823F0, &qword_2531514E8);
  v32 = 1;
  sub_253139FAC();
  sub_253149664();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_25313A0D4(v22, v26, type metadata accessor for HomesStore.HomesRelationshipModel);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25313A13C(v22, type metadata accessor for HomesStore.HomesRelationshipModel);
}

uint64_t sub_253135A6C(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  sub_2531399C4(v4, *(v1 + *(a1 + 20)));
  return sub_253149844();
}

uint64_t sub_253135B10(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v5 = *(v2 + *(a2 + 20));

  return sub_2531399C4(a1, v5);
}

uint64_t sub_253135BA8(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  sub_2531399C4(v5, *(v2 + *(a2 + 20)));
  return sub_253149844();
}

uint64_t static HomesStore.HomesRelationshipModel.Accessory.== infix(_:_:)()
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0) + 20);

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t sub_253135D38()
{
  if (*v0)
  {
    result = 1836019570;
  }

  else
  {
    result = 0x6373654465736162;
  }

  *v0;
  return result;
}

uint64_t sub_253135D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6373654465736162 && a2 == 0xEE00726F74706972;
  if (v6 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1836019570 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_253135E5C(uint64_t a1)
{
  v2 = sub_25313A080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253135E98(uint64_t a1)
{
  v2 = sub_25313A080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.HomesRelationshipModel.Accessory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582428, &qword_253151508);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A080();
  sub_253149894();
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582420, &qword_2531514F8);
  sub_25313B148(&qword_27F582438, &qword_27F582420, &qword_2531514F8);
  sub_2531496D4();
  if (!v1)
  {
    v9 = *(type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0) + 20);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
    sub_25313B148(&qword_27F582440, &qword_27F5816A0, &qword_253151500);
    sub_2531496D4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t HomesStore.HomesRelationshipModel.Accessory.hash(into:)()
{
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = v0 + *(type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0) + 20);
  return sub_253148B14();
}

uint64_t HomesStore.HomesRelationshipModel.Accessory.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = v0 + *(type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0) + 20);
  sub_253148B14();
  return sub_253149844();
}

uint64_t HomesStore.HomesRelationshipModel.Accessory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v22 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582420, &qword_2531514F8);
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v28 = &v22 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582448, &qword_253151510);
  v26 = *(v29 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v22 - v10;
  v12 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A080();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = a1;
  v17 = v26;
  v18 = v15;
  v31 = 0;
  sub_25313B148(&qword_27F582450, &qword_27F582420, &qword_2531514F8);
  v19 = v28;
  v20 = v29;
  sub_253149664();
  sub_2530CD2D4(v19, v18, &qword_27F582420, &qword_2531514F8);
  v30 = 1;
  sub_25313B148(&qword_27F582458, &qword_27F5816A0, &qword_253151500);
  sub_253149664();
  (*(v17 + 8))(v11, v20);
  sub_2530CD2D4(v6, v18 + *(v12 + 20), &qword_27F5816A0, &qword_253151500);
  sub_25313A0D4(v18, v24, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return sub_25313A13C(v18, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
}

uint64_t sub_253136668(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v3 = v1 + *(a1 + 20);
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_253136718(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = v2 + *(a2 + 20);
  return sub_253148B14();
}

uint64_t sub_2531367B8(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v4 = v2 + *(a2 + 20);
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_253136864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t sub_253136914(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
}

uint64_t sub_25313697C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return a4(v8, v9);
}

uint64_t sub_253136A08()
{
  if (*v0)
  {
    result = 0x736D6F6F72;
  }

  else
  {
    result = 0x6373654465736162;
  }

  *v0;
  return result;
}

uint64_t sub_253136A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6373654465736162 && a2 == 0xEE00726F74706972;
  if (v6 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_253136B2C(uint64_t a1)
{
  v2 = sub_25313A1BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253136B68(uint64_t a1)
{
  v2 = sub_25313A1BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.HomesRelationshipModel.Zone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582468, &qword_253151520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A1BC();
  sub_253149894();
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582460, &qword_253151518);
  sub_25313B148(&qword_27F582478, &qword_27F582460, &qword_253151518);
  sub_2531496D4();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582480, &qword_253151528);
    sub_25313A210(&qword_27F582488, &qword_27F582440);
    sub_2531496D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HomesStore.HomesRelationshipModel.Zone.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v11 - v4;
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v6 = *(v0 + *(type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0) + 20));
  result = MEMORY[0x259BFD420](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_2530CD26C(v9, v5, &qword_27F5816A0, &qword_253151500);
      sub_253148B14();
      result = sub_2530CD33C(v5, &qword_27F5816A0, &qword_253151500);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t HomesStore.HomesRelationshipModel.Zone.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582460, &qword_253151518);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582490, &qword_253151530);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A1BC();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v14;
  v17 = v22;
  v27 = 0;
  sub_25313B148(&qword_27F582498, &qword_27F582460, &qword_253151518);
  v18 = v23;
  sub_253149664();
  sub_2530CD2D4(v24, v16, &qword_27F582460, &qword_253151518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582480, &qword_253151528);
  v26 = 1;
  sub_25313A210(&qword_27F5824A0, &qword_27F582458);
  sub_253149664();
  (*(v17 + 8))(v10, v18);
  *(v16 + *(v11 + 20)) = v25;
  sub_25313A0D4(v16, v21, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25313A13C(v16, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
}

uint64_t sub_253137328@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  sub_2530CD26C(v3, &v13 - v9, a1, a2);
  v11 = sub_253148944();
  return (*(*(v11 - 8) + 32))(a3, v10, v11);
}

uint64_t sub_253137474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return a5(v9, v10);
}

uint64_t HomesStore.HomesRelationshipModel.Home.rooms.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomesStore.HomesRelationshipModel.Home(0) + 24));
}

uint64_t HomesStore.HomesRelationshipModel.Home.zones.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomesStore.HomesRelationshipModel.Home(0) + 28));
}

uint64_t sub_2531375A8()
{
  v1 = 0x6373654465736162;
  v2 = 0x736D6F6F72;
  if (*v0 != 2)
  {
    v2 = 0x73656E6F7ALL;
  }

  if (*v0)
  {
    v1 = 0x726F737365636361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_253137630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25313BF08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_253137658(uint64_t a1)
{
  v2 = sub_25313A600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253137694(uint64_t a1)
{
  v2 = sub_25313A600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.HomesRelationshipModel.Home.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824B0, &qword_253151540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A600();
  sub_253149894();
  LOBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824A8, &qword_253151538);
  sub_25313B148(&qword_27F5824C0, &qword_27F5824A8, &qword_253151538);
  sub_2531496D4();
  if (!v2)
  {
    v11 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
    v14 = *(v3 + v11[5]);
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824C8, &qword_253151548);
    sub_25313A654();
    sub_2531496D4();
    v14 = *(v3 + v11[6]);
    HIBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582480, &qword_253151528);
    sub_25313A210(&qword_27F582488, &qword_27F582440);
    sub_2531496D4();
    v14 = *(v3 + v11[7]);
    HIBYTE(v13) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824E0, &qword_253151550);
    sub_25313A708();
    sub_2531496D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HomesStore.HomesRelationshipModel.Home.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v22 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v23 = v1;
  v12 = *(v1 + v22[5]);
  MEMORY[0x259BFD420](*(v12 + 16));
  v13 = *(v12 + 16);
  if (v13)
  {
    v24 = *(v7 + 20);
    v14 = v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    do
    {
      sub_25313A0D4(v14, v11, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      sub_253148B14();
      sub_253148B14();
      sub_25313A13C(v11, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  v16 = *(v23 + v22[6]);
  MEMORY[0x259BFD420](*(v16 + 16));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v19 = *(v21 + 72);
    do
    {
      sub_2530CD26C(v18, v6, &qword_27F5816A0, &qword_253151500);
      sub_253148B14();
      sub_2530CD33C(v6, &qword_27F5816A0, &qword_253151500);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return sub_25313A2A8(a1, *(v23 + v22[7]));
}

uint64_t sub_253137C98(void (*a1)(_BYTE *))
{
  sub_253149814();
  a1(v3);
  return sub_253149844();
}

uint64_t HomesStore.HomesRelationshipModel.Home.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824A8, &qword_253151538);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824F8, &qword_253151558);
  v21 = *(v23 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v9 = &v20 - v8;
  v10 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A600();
  v24 = v9;
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = v21;
  v16 = v13;
  LOBYTE(v26) = 0;
  sub_25313B148(&qword_27F582500, &qword_27F5824A8, &qword_253151538);
  v18 = v22;
  v17 = v23;
  sub_253149664();
  sub_2530CD2D4(v18, v16, &qword_27F5824A8, &qword_253151538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824C8, &qword_253151548);
  v25 = 1;
  sub_25313A7BC();
  sub_253149664();
  *(v16 + v10[5]) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582480, &qword_253151528);
  v25 = 2;
  sub_25313A210(&qword_27F5824A0, &qword_27F582458);
  sub_253149664();
  *(v16 + v10[6]) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824E0, &qword_253151550);
  v25 = 3;
  sub_25313A870();
  sub_253149664();
  (*(v15 + 8))(v24, v17);
  *(v16 + v10[7]) = v26;
  sub_25313A0D4(v16, v20, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25313A13C(v16, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
}

uint64_t sub_253138218(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_253149814();
  a3(v5);
  return sub_253149844();
}

uint64_t sub_25313827C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_253149814();
  a4(v6);
  return sub_253149844();
}

uint64_t HomesStore.HomesRelationshipModel.visitKeyPaths<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v6 = *(a3 + 48);
  v7 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v8 = sub_253135508(&qword_27F582528, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
  v6(KeyPath, v7, &protocol witness table for HomesStore.HomesRelationshipModel.Home, v8, a2, a3);
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824A8, &qword_253151538);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_253148944();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v39 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v12;
  v13 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v32 = *(v13 - 8);
  v14 = *(v32 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v43 = *(a3 + 72);
  v38 = sub_253135508(&qword_27F582528, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
  v41 = a3;
  (v43)(KeyPath, v13);

  result = type metadata accessor for HomesStore.HomesRelationshipModel(0);
  v19 = *(v44 + *(result + 20));
  v20 = *(v19 + 16);
  if (v20)
  {
    v34 = *(v41 + 64);
    v35 = v41 + 64;
    v21 = v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v32 = *(v32 + 72);
    v33 = (v42 + 32);
    v36 = v16;
    v37 = v9;
    do
    {
      v43 = type metadata accessor for HomesStore.HomesRelationshipModel.Home;
      v44 = v20;
      sub_25313A0D4(v21, v16, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      v42 = swift_getKeyPath();
      sub_2530CD26C(v16, v9, &qword_27F5824A8, &qword_253151538);
      v22 = a1;
      v23 = a2;
      v24 = *v33;
      v25 = v13;
      v26 = v39;
      v27 = (*v33)(v39, v9, v10);
      MEMORY[0x28223BE20](v27);
      v29 = v26;
      v13 = v25;
      v24(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v10);
      a2 = v23;
      a1 = v22;
      v30 = swift_getKeyPath();
      v9 = v37;
      v34(v42, v30, v25, &protocol witness table for HomesStore.HomesRelationshipModel.Home, v38, a2, v41);

      v16 = v36;

      result = sub_25313A13C(v16, v43);
      v21 += v32;
      v20 = v44 - 1;
    }

    while (v44 != 1);
  }

  return result;
}

uint64_t sub_25313875C()
{
  sub_253148944();
  sub_253135508(&qword_27F580C40, MEMORY[0x277CC95F0]);
  return sub_253148B44() & 1;
}

uint64_t HomesStore.HomesRelationshipModel.Accessory.visitKeyPaths<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v6 = *(a3 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v8 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500);
  v6(KeyPath, v7, v8, a2, a3);
}

{
  KeyPath = swift_getKeyPath();
  v6 = *(a3 + 32);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v8 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500);
  v6(KeyPath, v7, v8, a2, a3);
}

uint64_t HomesStore.HomesRelationshipModel.Zone.visitKeyPaths<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v6 = *(a3 + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v8 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500);
  v6(KeyPath, v7, v8, a2, a3);
}

{
  v37 = sub_253148944();
  v29 = *(v37 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = v6;
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v35 = &v28 - v10;
  KeyPath = swift_getKeyPath();
  v12 = *(a3 + 72);
  v34 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500);
  v38 = a2;
  v39 = a3;
  v12(KeyPath, v8);

  result = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v14 = *(v33 + *(result + 20));
  v15 = *(v14 + 16);
  if (v15)
  {
    v32 = *(v39 + 56);
    v33 = v39 + 56;
    v16 = v14 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v30 = *(v30 + 72);
    v31 = (v29 + 16);
    v29 += 32;
    do
    {
      v17 = v35;
      sub_2530CD26C(v16, v35, &qword_27F5816A0, &qword_253151500);
      v18 = swift_getKeyPath();
      v19 = v7;
      v20 = v8;
      v21 = v7;
      v22 = v37;
      (*v31)(v19, v17, v37);
      v23 = sub_2530CD33C(v17, &qword_27F5816A0, &qword_253151500);
      MEMORY[0x28223BE20](v23);
      v25 = v21;
      v26 = v22;
      v7 = v21;
      v8 = v20;
      (*v29)(&v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
      v27 = swift_getKeyPath();
      v32(v18, v27, v20, v34, v38, v39);

      v16 += v30;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t HomesStore.HomesRelationshipModel.Home.visitKeyPaths<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v6 = *(a3 + 48);
  v7 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v8 = sub_253135508(&qword_27F582538, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
  v6(KeyPath, v7, &protocol witness table for HomesStore.HomesRelationshipModel.Accessory, v8, a2, a3);

  v9 = swift_getKeyPath();
  v10 = *(a3 + 40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v12 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500);
  v10(v9, v11, v12, a2, a3);

  v13 = swift_getKeyPath();
  v14 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v15 = sub_253135508(&qword_27F582540, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
  v6(v13, v14, &protocol witness table for HomesStore.HomesRelationshipModel.Zone, v15, a2, a3);
}

{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582460, &qword_253151518);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v74 - v10;
  v90 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v76 = *(v90 - 8);
  v11 = *(v76 + 64);
  MEMORY[0x28223BE20](v90);
  v95 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v75 = *(v89 - 1);
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v89);
  v77 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582420, &qword_2531514F8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v74 - v17;
  v98 = sub_253148944();
  v78 = *(v98 - 8);
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v20;
  v21 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v93 = *(v21 - 8);
  v22 = *(v93 + 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v26 = *(a3 + 72);
  v88 = sub_253135508(&qword_27F582538, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
  v99 = a1;
  v100 = a3;
  v80 = v26;
  v81 = a3 + 72;
  (v26)(KeyPath, v21);

  v79 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v27 = v79[5];
  v82 = v4;
  v28 = *(v4 + v27);
  v29 = v24;
  v30 = *(v28 + 16);
  v94 = a2;
  if (v30)
  {
    v86 = *(v100 + 64);
    v87 = v100 + 64;
    v31 = v28 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v84 = v18;
    v85 = (v78 + 32);
    v83 = *(v93 + 9);
    do
    {
      v93 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory;
      sub_25313A0D4(v31, v29, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      v92 = swift_getKeyPath();
      sub_2530CD26C(v29, v18, &qword_27F582420, &qword_2531514F8);
      v32 = *v85;
      v33 = v21;
      v34 = v96;
      v35 = v29;
      v36 = v98;
      v37 = (*v85)(v96, v18, v98);
      MEMORY[0x28223BE20](v37);
      v39 = v34;
      v21 = v33;
      v40 = v36;
      v29 = v35;
      v32(&v74 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v40);
      v41 = swift_getKeyPath();
      v18 = v84;
      a2 = v94;
      (v86)(v92, v41, v33, &protocol witness table for HomesStore.HomesRelationshipModel.Accessory, v88, v94, v100);

      sub_25313A13C(v35, v93);
      v31 += v83;
      --v30;
    }

    while (v30);
  }

  v42 = swift_getKeyPath();
  v43 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500);
  v80(v42, v89, v43, a2, v100);

  v44 = *(v82 + v79[6]);
  v45 = *(v44 + 16);
  v46 = v77;
  if (v45)
  {
    v92 = *(v100 + 56);
    v93 = (v100 + 56);
    v47 = v44 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v87 = *(v75 + 72);
    v88 = (v78 + 16);
    v86 = (v78 + 32);
    v48 = v96;
    do
    {
      sub_2530CD26C(v47, v46, &qword_27F5816A0, &qword_253151500);
      v49 = swift_getKeyPath();
      v50 = v43;
      v51 = v98;
      (*v88)(v48, v46, v98);
      v52 = sub_2530CD33C(v46, &qword_27F5816A0, &qword_253151500);
      MEMORY[0x28223BE20](v52);
      v54 = v51;
      v43 = v50;
      (*v86)(&v74 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v54);
      v55 = swift_getKeyPath();
      v92(v49, v55, v89, v50, a2, v100);

      v47 += v87;
      --v45;
    }

    while (v45);
  }

  v56 = swift_getKeyPath();
  v57 = sub_253135508(&qword_27F582540, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
  v80(v56, v90, v57, a2, v100);

  v59 = *(v82 + v79[7]);
  v60 = *(v59 + 16);
  v61 = v91;
  v62 = v95;
  if (v60)
  {
    v89 = *(v100 + 64);
    v92 = (v100 + 64);
    v63 = v59 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v87 = *(v76 + 72);
    v88 = (v78 + 32);
    do
    {
      v93 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone;
      sub_25313A0D4(v63, v62, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
      v64 = swift_getKeyPath();
      sub_2530CD26C(v95, v61, &qword_27F582460, &qword_253151518);
      v65 = *v88;
      v66 = v96;
      v67 = v61;
      v68 = v57;
      v69 = v98;
      v70 = (*v88)(v96, v67, v98);
      MEMORY[0x28223BE20](v70);
      v72 = v69;
      v57 = v68;
      v65(&v74 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0), v66, v72);
      v73 = swift_getKeyPath();
      (v89)(v64, v73, v90, &protocol witness table for HomesStore.HomesRelationshipModel.Zone, v68, v94, v100);
      v61 = v91;
      v62 = v95;

      result = sub_25313A13C(v62, v93);
      v63 += v87;
      --v60;
    }

    while (v60);
  }

  return result;
}

uint64_t sub_2531399C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v46 - v13;
  v14 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v14);
  v66 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 16);
  result = MEMORY[0x259BFD420](v22);
  v55 = v22;
  if (v22)
  {
    v24 = 0;
    v25 = v17[5];
    v53 = v17[6];
    v54 = v25;
    v26 = v17[7];
    v51 = a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v52 = v26;
    v50 = *(v18 + 72);
    v63 = v7;
    v57 = v21;
    do
    {
      v56 = v24;
      sub_25313A0D4(v51 + v50 * v24, v21, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      sub_253148944();
      sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
      sub_253148B14();
      v27 = *&v21[v54];
      MEMORY[0x259BFD420](*(v27 + 16));
      v28 = a1;
      v29 = *(v27 + 16);
      v30 = v66;
      if (v29)
      {
        v64 = *(v47 + 20);
        v31 = v27 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        v62 = *(v46 + 72);
        do
        {
          sub_25313A0D4(v31, v30, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
          sub_253148B14();
          sub_253148B14();
          v30 = v66;
          sub_25313A13C(v66, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
          v31 += v62;
          --v29;
        }

        while (v29);
      }

      v32 = *&v57[v53];
      MEMORY[0x259BFD420](*(v32 + 16));
      v33 = *(v32 + 16);
      v34 = v65;
      if (v33)
      {
        v35 = v32 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
        v36 = *(v58 + 72);
        do
        {
          sub_2530CD26C(v35, v34, &qword_27F5816A0, &qword_253151500);
          sub_253148B14();
          v34 = v65;
          sub_2530CD33C(v65, &qword_27F5816A0, &qword_253151500);
          v35 += v36;
          --v33;
        }

        while (v33);
      }

      v37 = *&v57[v52];
      MEMORY[0x259BFD420](*(v37 + 16));
      a1 = v28;
      v38 = v63;
      v62 = *(v37 + 16);
      if (v62)
      {
        v39 = 0;
        v40 = *(v49 + 20);
        v60 = v37 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        v61 = v40;
        v59 = *(v48 + 72);
        do
        {
          v64 = v39;
          sub_25313A0D4(v60 + v59 * v39, v38, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
          sub_253148B14();
          v41 = *(v38 + v61);
          MEMORY[0x259BFD420](*(v41 + 16));
          v42 = a1;
          v43 = *(v41 + 16);
          if (v43)
          {
            v44 = v41 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
            v45 = *(v58 + 72);
            do
            {
              sub_2530CD26C(v44, v12, &qword_27F5816A0, &qword_253151500);
              sub_253148B14();
              sub_2530CD33C(v12, &qword_27F5816A0, &qword_253151500);
              v44 += v45;
              --v43;
            }

            while (v43);
          }

          v38 = v63;
          v39 = v64 + 1;
          sub_25313A13C(v63, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
          a1 = v42;
        }

        while (v39 != v62);
      }

      v21 = v57;
      v24 = v56 + 1;
      result = sub_25313A13C(v57, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    }

    while (v24 != v55);
  }

  return result;
}

unint64_t sub_253139FAC()
{
  result = qword_27F582410;
  if (!qword_27F582410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5823F0, &qword_2531514E8);
    sub_253135508(&qword_27F582418, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582410);
  }

  return result;
}

unint64_t sub_25313A080()
{
  result = qword_27F582430;
  if (!qword_27F582430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582430);
  }

  return result;
}

uint64_t sub_25313A0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25313A13C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25313A1BC()
{
  result = qword_27F582470;
  if (!qword_27F582470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582470);
  }

  return result;
}

uint64_t sub_25313A210(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F582480, &qword_253151528);
    sub_25313B148(a2, &qword_27F5816A0, &qword_253151500);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25313A2A8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  result = MEMORY[0x259BFD420](v12);
  v26 = v12;
  if (v12)
  {
    v14 = 0;
    v15 = *(v7 + 20);
    v23 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v24 = v15;
    v22 = *(v8 + 72);
    v25 = v11;
    do
    {
      v27 = v14;
      sub_25313A0D4(v23 + v22 * v14, v11, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
      sub_253148944();
      sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
      sub_253148B14();
      v16 = *&v11[v24];
      MEMORY[0x259BFD420](*(v16 + 16));
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v19 = *(v21 + 72);
        do
        {
          sub_2530CD26C(v18, v6, &qword_27F5816A0, &qword_253151500);
          sub_253148B14();
          sub_2530CD33C(v6, &qword_27F5816A0, &qword_253151500);
          v18 += v19;
          --v17;
        }

        while (v17);
      }

      v14 = v27 + 1;
      v11 = v25;
      result = sub_25313A13C(v25, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    }

    while (v14 != v26);
  }

  return result;
}

uint64_t _s11HomeKitCore10HomesStoreC0D17RelationshipModelV0A0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  if ((sub_253134964(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (sub_253134B6C(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_253134D24(v6, v7);
}

unint64_t sub_25313A600()
{
  result = qword_27F5824B8;
  if (!qword_27F5824B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5824B8);
  }

  return result;
}

unint64_t sub_25313A654()
{
  result = qword_27F5824D0;
  if (!qword_27F5824D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5824C8, &qword_253151548);
    sub_253135508(&qword_27F5824D8, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5824D0);
  }

  return result;
}

unint64_t sub_25313A708()
{
  result = qword_27F5824E8;
  if (!qword_27F5824E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5824E0, &qword_253151550);
    sub_253135508(&qword_27F5824F0, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5824E8);
  }

  return result;
}

unint64_t sub_25313A7BC()
{
  result = qword_27F582508;
  if (!qword_27F582508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5824C8, &qword_253151548);
    sub_253135508(&qword_27F582510, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582508);
  }

  return result;
}

unint64_t sub_25313A870()
{
  result = qword_27F582518;
  if (!qword_27F582518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5824E0, &qword_253151550);
    sub_253135508(&qword_27F582520, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582518);
  }

  return result;
}

uint64_t sub_25313A924()
{
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0]);
  return sub_253148B24();
}

unint64_t keypath_get_arg_layoutTm()
{
  v0 = *(sub_253148944() - 8);
  result = (*(v0 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v0 + 80) & 0xF8 | 7;
  return result;
}

uint64_t keypath_copyTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t keypath_arg_initTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25313AB20(uint64_t a1)
{
  result = sub_253135508(&qword_27F580708, type metadata accessor for HomesStore.HomesRelationshipModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25313AB78(void *a1)
{
  a1[1] = sub_253135508(&qword_27F582548, type metadata accessor for HomesStore.HomesRelationshipModel);
  a1[2] = sub_253135508(&qword_27F582550, type metadata accessor for HomesStore.HomesRelationshipModel);
  a1[3] = sub_253135508(&qword_27F582558, type metadata accessor for HomesStore.HomesRelationshipModel);
  a1[4] = sub_253135508(&qword_27F582560, type metadata accessor for HomesStore.HomesRelationshipModel);
  result = sub_253135508(&qword_27F582568, type metadata accessor for HomesStore.HomesRelationshipModel);
  a1[5] = result;
  return result;
}

uint64_t sub_25313AD48(uint64_t a1)
{
  result = sub_253135508(&qword_27F582538, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25313ADE8(void *a1)
{
  a1[1] = sub_253135508(&qword_27F582510, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
  a1[2] = sub_253135508(&qword_27F5824D8, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
  a1[3] = sub_253135508(&qword_27F582580, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
  result = sub_253135508(&qword_27F582588, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
  a1[4] = result;
  return result;
}

uint64_t sub_25313AF48(uint64_t a1)
{
  result = sub_253135508(&qword_27F582540, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25313AFE8(void *a1)
{
  a1[1] = sub_253135508(&qword_27F582520, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
  a1[2] = sub_253135508(&qword_27F5824F0, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
  a1[3] = sub_253135508(&qword_27F5825A0, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
  result = sub_253135508(&qword_27F5825A8, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
  a1[4] = result;
  return result;
}

uint64_t sub_25313B148(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25313B190(uint64_t a1)
{
  result = sub_253135508(&qword_27F582528, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25313B230(void *a1)
{
  a1[1] = sub_253135508(&qword_27F582418, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
  a1[2] = sub_253135508(&qword_27F582400, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
  a1[3] = sub_253135508(&qword_27F5825C0, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
  result = sub_253135508(&qword_27F5825C8, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
  a1[4] = result;
  return result;
}

void sub_25313B374()
{
  sub_253148944();
  if (v0 <= 0x3F)
  {
    sub_25313B914(319, &qword_27F5825E8, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25313B468()
{
  if (!qword_27F582600)
  {
    type metadata accessor for HomesStore.Accessory();
    sub_253135508(&qword_27F580720, type metadata accessor for HomesStore.Accessory);
    v0 = type metadata accessor for ModelIdentifierDescriptor();
    if (!v1)
    {
      atomic_store(v0, &qword_27F582600);
    }
  }
}

void sub_25313B4FC()
{
  if (!qword_27F582608)
  {
    type metadata accessor for HomesStore.Room();
    sub_253135508(&qword_27F580718, type metadata accessor for HomesStore.Room);
    v0 = type metadata accessor for ModelIdentifierDescriptor();
    if (!v1)
    {
      atomic_store(v0, &qword_27F582608);
    }
  }
}

uint64_t sub_25313B5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25313B674()
{
  if (!qword_27F582620)
  {
    type metadata accessor for HomesStore.Zone();
    sub_253135508(&qword_27F5806F8, type metadata accessor for HomesStore.Zone);
    v0 = type metadata accessor for ModelIdentifierDescriptor();
    if (!v1)
    {
      atomic_store(v0, &qword_27F582620);
    }
  }
}

void sub_25313B708()
{
  if (!qword_27F582628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5816A0, &qword_253151500);
    v0 = sub_253148D64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F582628);
    }
  }
}

void sub_25313B794()
{
  sub_25313B880();
  if (v0 <= 0x3F)
  {
    sub_25313B914(319, &qword_27F582648, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
    if (v1 <= 0x3F)
    {
      sub_25313B708();
      if (v2 <= 0x3F)
      {
        sub_25313B914(319, &qword_27F582650, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25313B880()
{
  if (!qword_27F582640)
  {
    type metadata accessor for HomesStore.Home();
    sub_253135508(&qword_27F580710, type metadata accessor for HomesStore.Home);
    v0 = type metadata accessor for ModelIdentifierDescriptor();
    if (!v1)
    {
      atomic_store(v0, &qword_27F582640);
    }
  }
}

void sub_25313B914(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_253148D64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s22HomesRelationshipModelV4HomeV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s22HomesRelationshipModelV4HomeV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25313BAEC()
{
  result = qword_27F582658;
  if (!qword_27F582658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582658);
  }

  return result;
}

unint64_t sub_25313BB44()
{
  result = qword_27F582660;
  if (!qword_27F582660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582660);
  }

  return result;
}

unint64_t sub_25313BB9C()
{
  result = qword_27F582668;
  if (!qword_27F582668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582668);
  }

  return result;
}

unint64_t sub_25313BBF4()
{
  result = qword_27F582670;
  if (!qword_27F582670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582670);
  }

  return result;
}

unint64_t sub_25313BC4C()
{
  result = qword_27F582678;
  if (!qword_27F582678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582678);
  }

  return result;
}

unint64_t sub_25313BCA4()
{
  result = qword_27F582680;
  if (!qword_27F582680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582680);
  }

  return result;
}

unint64_t sub_25313BCFC()
{
  result = qword_27F582688;
  if (!qword_27F582688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582688);
  }

  return result;
}

unint64_t sub_25313BD54()
{
  result = qword_27F582690;
  if (!qword_27F582690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582690);
  }

  return result;
}

unint64_t sub_25313BDAC()
{
  result = qword_27F582698;
  if (!qword_27F582698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582698);
  }

  return result;
}

unint64_t sub_25313BE04()
{
  result = qword_27F5826A0;
  if (!qword_27F5826A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5826A0);
  }

  return result;
}

unint64_t sub_25313BE5C()
{
  result = qword_27F5826A8;
  if (!qword_27F5826A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5826A8);
  }

  return result;
}

unint64_t sub_25313BEB4()
{
  result = qword_27F5826B0[0];
  if (!qword_27F5826B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5826B0);
  }

  return result;
}

uint64_t sub_25313BF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6373654465736162 && a2 == 0xEE00726F74706972;
  if (v4 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000736569 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000 || (sub_253149734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_253149734();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_25313C0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25313C170(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25313C204()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_25313C37C(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, unint64_t *a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_25313C954(a4, 255, a5);
  v11 = sub_253148F74();

  *a6 = v11;
}

void sub_25313C45C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), SEL *a8)
{
  v11 = *a1;
  v12 = *a2;
  a5(0);
  sub_25313C954(a6, 255, a7);
  v13 = sub_253148F64();
  [v12 *a8];
}

id HMCDRoomModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDRoomModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDRoomModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDRoomModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDRoomModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_25313C6A0(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25313C710(v2);
  return sub_2530D0B14;
}

void (*sub_25313C710(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

uint64_t sub_25313C8B0(uint64_t a1, uint64_t a2)
{
  result = sub_25313C954(qword_27F582738, a2, type metadata accessor for HMCDRoomModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25313C908@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for HMCDRoomModel();
  result = sub_2531493E4();
  *a1 = result;
  return result;
}

uint64_t sub_25313C954(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RelationshipResolver.ModelProxy.id.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(*(a1 + 40) + 32);
  return sub_2531493D4();
}

uint64_t RelationshipResolver.ModelProxy.underlyingModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 40);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_25313CA70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a1;
  v45 = a7;
  v12 = sub_253148944();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v42 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_2531491F4();
  v39 = *(v16 - 8);
  v40 = v16;
  v17 = *(v39 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v38 - v23;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v25 = type metadata accessor for RelationshipResolver.ModelProxy();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v38 - v28;
  v30 = a2[3];
  v46 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v30);
  v41 = a6;
  sub_25313DCDC(v47, &type metadata for ModelProvider, a4, &off_2864ECFE0, a6, v20);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v39 + 8))(v20, v40);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD000000000000039, 0x800000025314BA20);
    v34 = v42;
    v35 = *(v41 + 32);
    sub_2531493D4();
    sub_2530C2A80(&qword_27F5807B8);
    v36 = v44;
    v37 = sub_2531496F4();
    MEMORY[0x259BFC7D0](v37);

    (*(v43 + 8))(v34, v36);
    result = sub_253149594();
    __break(1u);
  }

  else
  {
    v31 = *(v21 + 32);
    v31(v24, v20, AssociatedTypeWitness);
    (*(*(a4 - 8) + 32))(v29, v47, a4);
    v31(&v29[*(v25 + 52)], v24, AssociatedTypeWitness);
    v32 = v46;
    sub_2530C25FC(v46, &v29[*(v25 + 56)]);
    (*(v26 + 32))(v45, v29, v25);
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  return result;
}

uint64_t RelationshipResolver.ModelProxy.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19[-1] - v15;
  swift_getAtKeyPath();
  (*(v10 + 16))(v14, v16, v9);
  sub_2530C25FC(v5 + *(a2 + 56), v19);
  sub_25313CA70(v14, v19, *(a2 + 16), v9, *(a2 + 32), a3, a4);
  return (*(v10 + 8))(v16, v9);
}

uint64_t RelationshipResolver.ModelProxy.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_getAtKeyPath();
  v24 = v20;
  v7 = *(a2 + 32);
  v15 = *(a2 + 16);
  v8 = *(v6 + *MEMORY[0x277D84DE8] + 8);
  v16 = *(v8 + 16);
  v17 = v7;
  v18 = a3;
  v19 = v3;
  v20 = v15;
  v21 = v16;
  v22 = v7;
  v23 = a3;
  v9 = type metadata accessor for RelationshipResolver.ModelProxy();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_253146F4C(sub_25313D2E4, &v14, v8, v9, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  return v12;
}

uint64_t sub_25313D1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v19 = &v24[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a6;
  v24[3] = a7;
  v21 = type metadata accessor for RelationshipResolver.ModelProxy();
  sub_2530C25FC(a2 + *(v21 + 56), v24);
  return sub_25313CA70(v19, v24, a3, a5, a6, a8, a9);
}

uint64_t static RelationshipResolver.ModelProxy.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_253148944();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - v16;
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v18 = type metadata accessor for RelationshipResolver.ModelProxy();
  v19 = *(v18 + 24);
  v20 = *(*(v18 + 40) + 32);
  sub_2531493D4();
  sub_2531493D4();
  LOBYTE(a6) = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
  v21 = *(v11 + 8);
  v21(v15, v10);
  v21(v17, v10);
  return a6 & 1;
}

uint64_t RelationshipResolver.ModelProxy.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_253148944();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 24);
  v9 = *(*(a2 + 40) + 32);
  sub_2531493D4();
  sub_2530C2A80(&qword_27F580560);
  sub_253148B14();
  return (*(v4 + 8))(v7, v3);
}

uint64_t RelationshipResolver.ModelProxy.hashValue.getter(uint64_t a1)
{
  sub_253149814();
  RelationshipResolver.ModelProxy.hash(into:)(v3, a1);
  return sub_253149844();
}

uint64_t sub_25313D614(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  RelationshipResolver.ModelProxy.hash(into:)(v4, a2);
  return sub_253149844();
}

unint64_t sub_25313D684(uint64_t a1)
{
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 40);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      AssociatedTypeWitness = sub_25313DC78();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_25313D748(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + v12;
  v15 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  if (v13 >= a2)
  {
    goto LABEL_29;
  }

  v16 = ((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 40;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v13 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v13)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }

  else
  {
    v26 = (a1 + v14) & ~v12;
    if (v11 == v13)
    {
      v27 = *(v10 + 48);

      return v27(v26);
    }

    else
    {
      v28 = *(((v15 + v26) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }
  }
}

double sub_25313D9B8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = *(a4 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  if (v14 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = *(v8 + 64) + v15;
  v18 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  v19 = ((v18 + (v17 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v18 + (v17 & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v20 = a3 - v16 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v16 < a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 > v16)
  {
    if (((v18 + (v17 & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v24 = a2 - v16;
    }

    else
    {
      v24 = 1;
    }

    if (((v18 + (v17 & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v25 = ~v16 + a2;
      bzero(a1, ((v18 + (v17 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v25;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        *(a1 + v19) = v24;
      }

      else
      {
        *(a1 + v19) = v24;
      }
    }

    else if (v23)
    {
      *(a1 + v19) = v24;
    }

    return result;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(a1 + v19) = 0;
  }

  else if (v23)
  {
    *(a1 + v19) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v9 == v16)
  {
    v26 = *(v30 + 56);

    v26(a1, a2, v9, v7);
  }

  else
  {
    v27 = (a1 + v17) & ~v15;
    if (v14 == v16)
    {
      v28 = *(v13 + 56);

      v28(v27, a2);
    }

    else
    {
      v29 = (v18 + v27) & 0xFFFFFFFFFFFFFFF8;
      if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(v29 + 8) = 0u;
        *(v29 + 24) = 0u;
        *v29 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v29 + 24) = (a2 - 1);
      }
    }
  }

  return result;
}

unint64_t sub_25313DC78()
{
  result = qword_27F5827C0;
  if (!qword_27F5827C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F5827C0);
  }

  return result;
}

uint64_t sub_25313DCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15[3] = a3;
  v15[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  (*(a4 + 8))(v16, v15, a2, a4);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806E0, &qword_25314D900);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a6, v13 ^ 1u, 1, AssociatedTypeWitness);
}

unint64_t sub_25313DE28()
{
  result = qword_27F580950;
  if (!qword_27F580950)
  {
    type metadata accessor for HMCDZoneModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580950);
  }

  return result;
}

uint64_t sub_25313DE8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v8 modelID];
  sub_253148924();

  v12 = [a1 name];
  v13 = sub_253148B64();
  v15 = v14;

  v16 = &v10[*(a2 + 20)];
  *v16 = v13;
  v16[1] = v15;
  sub_25313E108(v10, a3);
  return (*(v6 + 56))(a3, 0, 1, a2);
}

uint64_t sub_25313DFC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314E1C0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D0B0 = v1;
  return result;
}

uint64_t sub_25313E0AC()
{
  if (qword_27F580328 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25313E108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Zone();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25313E170()
{
  result = qword_27F580948;
  if (!qword_27F580948)
  {
    type metadata accessor for HMCDAppleMediaDeviceModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580948);
  }

  return result;
}

uint64_t sub_25313E1D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 modelID];
  sub_253148924();

  v8[*(v4 + 20)] = [a1 isCurrentDevice];
  v10 = [a1 idsDestination];
  if (v10)
  {
    v11 = v10;
    v12 = sub_253148B64();
    v14 = v13;
  }

  else
  {

    v12 = 0;
    v14 = 0;
  }

  v15 = &v8[*(v4 + 24)];
  *v15 = v12;
  v15[1] = v14;
  sub_25313E4D4(v8, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_25313E34C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253152480;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x6E65727275437369;
  *(inited + 72) = 0xEF65636976654474;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "idsDestination");
  *(inited + 103) = -18;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D0B8 = v1;
  return result;
}

uint64_t sub_25313E478()
{
  if (qword_27F580330 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25313E4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25313E538()
{
  v1 = OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_changes;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_id;
  v6 = sub_253148944();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for XPCSubscription()
{
  result = qword_27F5827D0;
  if (!qword_27F5827D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25313E6C0()
{
  sub_25313E7FC(319, &qword_27F5827E0, MEMORY[0x277D858B0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_25313E7FC(319, &qword_27F581BD0, MEMORY[0x277D858D8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_253148944();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_25313E7FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyModelStateChange(255);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580730, &qword_25314F190);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_25313E880@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_id;
  v5 = sub_253148944();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_25313E8FC(uint64_t a1)
{
  v72[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D08, &qword_253150320);
  v56 = *(v2 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v55 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5821E0, &qword_253150FF8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for XPCModelStateChange();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v70 = &v55 - v18;
  v69 = type metadata accessor for AnyModelStateChange(0);
  v19 = *(*(v69 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v69);
  v61 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v57 = &v55 - v24;
  v58 = v23;
  v25 = *(a1 + 16);
  v55 = v26;
  if (v25)
  {
    v68 = *MEMORY[0x277CCA308];
    v64 = (v11 + 48);
    v59 = (v23 + 56);
    v60 = (v23 + 48);
    v27 = (a1 + 40);
    v66 = v5;
    v67 = MEMORY[0x277D84F90];
    v65 = v2;
    while (1)
    {
      v71 = v25;
      v29 = v10;
      v30 = v9;
      v32 = *(v27 - 1);
      v31 = *v27;
      v33 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
      sub_2530CAA1C(v32, v31);
      sub_2530CAA1C(v32, v31);
      v34 = sub_2531488A4();
      v72[0] = 0;
      v35 = [v33 initForReadingFromData:v34 error:v72];

      if (!v35)
      {
        v51 = v72[0];
        sub_2530C2478(v32, v31);
        v52 = sub_253148844();

        swift_willThrow();
        sub_2530C2478(v32, v31);
        goto LABEL_21;
      }

      v36 = v72[0];
      sub_2530C2478(v32, v31);
      sub_253148B64();
      sub_25313F108(&qword_27F5827E8, type metadata accessor for XPCModelStateChange);
      v9 = v30;
      v10 = v29;
      sub_2531490E4();

      if ((*v64)(v9, 1, v29) == 1)
      {
        sub_2530C2478(v32, v31);
        sub_2530CD33C(v9, &qword_27F5821E0, &qword_253150FF8);
        v28 = v70;
        (*v59)(v70, 1, 1, v69);
      }

      else
      {
        v37 = v62;
        sub_25313F1AC(v9, v62, type metadata accessor for XPCModelStateChange);
        v38 = v63;
        sub_2530C24CC(v37, v63, type metadata accessor for XPCModelStateChange);
        v28 = v70;
        sub_2530C1D94(v38, v70);
        sub_2530C2478(v32, v31);
        sub_25313F150(v37);
        if ((*v60)(v28, 1, v69) != 1)
        {
          v39 = v57;
          sub_25313F1AC(v28, v57, type metadata accessor for AnyModelStateChange);
          sub_25313F1AC(v39, v61, type metadata accessor for AnyModelStateChange);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v40 = v67;
          }

          else
          {
            v40 = sub_2530F46D0(0, v67[2] + 1, 1, v67);
          }

          v42 = v40[2];
          v41 = v40[3];
          if (v42 >= v41 >> 1)
          {
            v40 = sub_2530F46D0(v41 > 1, v42 + 1, 1, v40);
          }

          v40[2] = v42 + 1;
          v43 = (*(v58 + 80) + 32) & ~*(v58 + 80);
          v67 = v40;
          sub_25313F1AC(v61, v40 + v43 + *(v58 + 72) * v42, type metadata accessor for AnyModelStateChange);
          goto LABEL_5;
        }
      }

      sub_2530CD33C(v28, &qword_27F5807B0, &qword_25314D460);
LABEL_5:
      v2 = v65;
      v5 = v66;
      v27 += 2;
      v25 = v71 - 1;
      if (v71 == 1)
      {
        goto LABEL_16;
      }
    }
  }

  v67 = MEMORY[0x277D84F90];
LABEL_16:
  v44 = v67[2];
  if (v44)
  {
    v45 = v5;
    v46 = v2;
    v47 = v67 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v48 = *(v58 + 72);
    v49 = (v56 + 8);
    v50 = v55;
    do
    {
      sub_2530C24CC(v47, v50, type metadata accessor for AnyModelStateChange);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
      sub_253148EE4();
      (*v49)(v45, v46);
      v47 += v48;
      --v44;
    }

    while (v44);
  }

LABEL_21:

  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25313F108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25313F150(uint64_t a1)
{
  v2 = type metadata accessor for XPCModelStateChange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25313F1AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

uint64_t sub_25313F230(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && a1[24])
  {
    return (*a1 + 249);
  }

  v3 = *a1;
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25313F274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t sub_25313F2C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582800, &qword_253152670);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v13[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313F820();
  sub_253149894();
  LOBYTE(v14) = v8;
  v16 = 0;
  sub_2530C2AC4();
  v11 = v13[1];
  sub_2531496D4();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v9;
    v16 = 1;
    sub_2530CAA1C(v13[0], v9);
    sub_2530C2B18();
    sub_2531496D4();
    sub_2530C2478(v14, v15);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25313F478@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5827F0, &qword_253152668);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313F820();
  sub_253149884();
  if (!v2)
  {
    v15 = 0;
    sub_2530C2930();
    sub_253149664();
    v11 = v14;
    v15 = 1;
    sub_2530C29D8();
    sub_253149664();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25313F650()
{
  if (*v0)
  {
    result = 0x7461446C65646F6DLL;
  }

  else
  {
    result = 0x7079546C65646F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_25313F690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x7079546C65646F6DLL && a2 == 0xE900000000000065 || (sub_253149734() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461446C65646F6DLL && a2 == 0xE900000000000061)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_253149734();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_25313F778(uint64_t a1)
{
  v2 = sub_25313F820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25313F7B4(uint64_t a1)
{
  v2 = sub_25313F820();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25313F820()
{
  result = qword_27F5827F8;
  if (!qword_27F5827F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5827F8);
  }

  return result;
}

unint64_t sub_25313F888()
{
  result = qword_27F582808;
  if (!qword_27F582808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582808);
  }

  return result;
}

unint64_t sub_25313F8E0()
{
  result = qword_27F582810;
  if (!qword_27F582810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582810);
  }

  return result;
}

unint64_t sub_25313F938()
{
  result = qword_27F582818[0];
  if (!qword_27F582818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F582818);
  }

  return result;
}

uint64_t sub_25313F98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v7 = sub_2531491F4();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v50 - v13;
  v54 = *(a2 - 8);
  v15 = *(v54 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v51 = &v50 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  v23 = type metadata accessor for AnyModelStateChange(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ModelStateChange();
  v55 = *(v27 - 8);
  v56 = v27;
  v28 = *(v55 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v50 - v29);
  sub_253119048(a1, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_253140790(a1);
      sub_2531407EC(v26, v30);
      v33 = v56;
      goto LABEL_10;
    }

    sub_253140790(a1);
    v34 = *(v26 + 1);
    v59 = *v26;
    v60 = v34;
    v61 = *(v26 + 4);
    sub_2530BDB14(&v59, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
    v35 = swift_dynamicCast();
    v36 = v54;
    v37 = *(v54 + 56);
    if (v35)
    {
      v37(v11, 0, 1, a2);
      v38 = *(v36 + 32);
      v38(v18, v11, a2);
      v39 = v51;
      v38(v51, v18, a2);
      v38(v30, v39, a2);
      v33 = v56;
      goto LABEL_10;
    }

    v37(v11, 1, 1, a2);
    (*(v52 + 8))(v11, v53);
LABEL_13:
    v48 = 1;
    v33 = v56;
    v47 = v57;
    v46 = v55;
    return (*(v46 + 56))(v47, v48, 1, v33);
  }

  if (EnumCaseMultiPayload)
  {
    sub_253140790(a1);
    v40 = *(v26 + 1);
    v59 = *v26;
    v60 = v40;
    v61 = *(v26 + 4);
    sub_2530BDB14(&v59, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
    v41 = swift_dynamicCast();
    v42 = v54;
    v43 = *(v54 + 56);
    if (v41)
    {
      v43(v14, 0, 1, a2);
      v44 = *(v42 + 32);
      v44(v22, v14, a2);
      v45 = v51;
      v44(v51, v22, a2);
      v44(v30, v45, a2);
      v33 = v56;
      goto LABEL_10;
    }

    v43(v14, 1, 1, a2);
    (*(v52 + 8))(v14, v53);
    goto LABEL_13;
  }

  *&v59 = *v26;
  MEMORY[0x28223BE20](EnumCaseMultiPayload);
  *(&v50 - 2) = a2;
  *(&v50 - 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582920, &qword_253152800);
  type metadata accessor for ModelState();
  sub_253140AFC();
  v32 = sub_253148C34();
  sub_253140790(a1);

  *v30 = v32;
  v33 = v56;
LABEL_10:
  swift_storeEnumTagMultiPayload();
  v46 = v55;
  v47 = v57;
  (*(v55 + 32))(v57, v30, v33);
  v48 = 0;
  return (*(v46 + 56))(v47, v48, 1, v33);
}

uint64_t sub_25313FFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25314001C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_25314015C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_25314037C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for ModelState();
  v5 = v4;
  result = sub_253148D64();
  if (v7 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      result = type metadata accessor for AnyModelStateChange.Tombstone(319);
      if (v8 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_253140428(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(sub_253148944() - 8) + 64);
  if (v5 <= v6 + 1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = 8;
  if (v7 > 8)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_28;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 252) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 < 2)
    {
LABEL_28:
      v15 = *(a1 + v8);
      if (v15 >= 4)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_17:
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

  return (v9 | v14) + 253;
}

void sub_253140590(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(sub_253148944() - 8) + 64);
  if (v7 <= v8 + 1)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v7;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFD)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 252) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFC)
  {
    v12 = a2 - 253;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_42:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v9] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_27;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_253140790(uint64_t a1)
{
  v2 = type metadata accessor for AnyModelStateChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2531407EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyModelStateChange.Tombstone(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_253140850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v26 = a3;
  v7 = sub_2531491F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27[-v11 - 8];
  v13 = *(a2 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v15);
  v19 = &v27[-v18 - 8];
  sub_2530C25FC(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
  v20 = swift_dynamicCast();
  v21 = v13[7];
  if (v20)
  {
    v21(v12, 0, 1, a2);
    v22 = v13[4];
    v22(v19, v12, a2);
    v22(v17, v19, a2);
    v22(a4, v17, a2);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v21(v12, 1, 1, a2);
    (*(v8 + 8))(v12, v7);
  }

  v24 = type metadata accessor for ModelState();
  return (*(*(v24 - 8) + 56))(a4, v23, 1, v24);
}

unint64_t sub_253140AFC()
{
  result = qword_27F582928;
  if (!qword_27F582928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F582920, &qword_253152800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582928);
  }

  return result;
}

uint64_t HomesStore.User.SharedSettings.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for HomesStore.User.SharedSettings()
{
  result = qword_27F582988;
  if (!qword_27F582988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253140CFC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000018;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0xD000000000000021;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000013;
    if (v1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_253140DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_253144280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_253140E18(uint64_t a1)
{
  v2 = sub_253143C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253140E54(uint64_t a1)
{
  v2 = sub_253143C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.User.SharedSettings.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582938, &qword_253152808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253143C48();
  sub_253149894();
  v19[15] = 0;
  sub_253148944();
  sub_253143F30(&qword_27F580630, MEMORY[0x277CC95F0]);
  sub_2531496D4();
  if (!v2)
  {
    v11 = type metadata accessor for HomesStore.User.SharedSettings();
    v12 = *(v3 + v11[5]);
    v19[14] = 1;
    sub_2531496C4();
    v13 = *(v3 + v11[6]);
    v19[13] = 2;
    sub_2531496C4();
    v14 = *(v3 + v11[7]);
    v19[12] = 3;
    sub_2531496C4();
    v15 = *(v3 + v11[8]);
    v19[11] = 4;
    sub_2531496C4();
    v16 = *(v3 + v11[9]);
    v19[10] = 5;
    sub_2531496C4();
    v17 = *(v3 + v11[10]);
    v19[9] = 6;
    sub_2531496C4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HomesStore.User.SharedSettings.hash(into:)()
{
  sub_253148944();
  sub_253143F30(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v1 = type metadata accessor for HomesStore.User.SharedSettings();
  v2 = *(v0 + v1[5]);
  sub_253149834();
  v3 = *(v0 + v1[6]);
  sub_253149834();
  v4 = *(v0 + v1[7]);
  sub_253149834();
  v5 = *(v0 + v1[8]);
  sub_253149834();
  v6 = *(v0 + v1[9]);
  sub_253149834();
  v7 = *(v0 + v1[10]);
  return sub_253149834();
}

uint64_t HomesStore.User.SharedSettings.hashValue.getter()
{
  sub_253149814();
  HomesStore.User.SharedSettings.hash(into:)();
  return sub_253149844();
}

uint64_t HomesStore.User.SharedSettings.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_253148944();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582948, &qword_253152810);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v21 - v8;
  v10 = type metadata accessor for HomesStore.User.SharedSettings();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253143C48();
  v26 = v9;
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = v22;
  v16 = v23;
  v33 = 0;
  sub_253143F30(&qword_27F5805E8, MEMORY[0x277CC95F0]);
  v17 = v24;
  sub_253149664();
  (*(v16 + 32))(v13, v25, v4);
  v32 = 1;
  v18 = sub_253149654();
  v25 = v10;
  v13[*(v10 + 20)] = v18 & 1;
  v31 = 2;
  v13[v25[6]] = sub_253149654() & 1;
  v30 = 3;
  v13[v25[7]] = sub_253149654() & 1;
  v29 = 4;
  v13[v25[8]] = sub_253149654() & 1;
  v28 = 5;
  v13[v25[9]] = sub_253149654() & 1;
  v27 = 6;
  v19 = sub_253149654();
  (*(v15 + 8))(v26, v17);
  v13[v25[10]] = v19 & 1;
  sub_253143C9C(v13, v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_253143D00(v13);
}

uint64_t sub_253141698()
{
  sub_253149814();
  HomesStore.User.SharedSettings.hash(into:)();
  return sub_253149844();
}

uint64_t sub_2531416DC()
{
  sub_253149814();
  HomesStore.User.SharedSettings.hash(into:)();
  return sub_253149844();
}

uint64_t sub_25314175C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5829B0, &qword_253152AD8);
  swift_allocObject();

  v1 = sub_253143734(v0);

  qword_27F582930 = v1;
  return result;
}

uint64_t sub_2531418B0(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDAppleMediaDeviceModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](0xD000000000000010, 0x800000025314AB30);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0xD000000000000013, 0x800000025314BC30);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0xD00000000000002ALL;
      v20 = 0x800000025314BBA0;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v19 = 0x44496C65646F6D2ELL;
      v20 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v19, v20);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](0xD000000000000010, 0x800000025314AB30);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0xD000000000000013, 0x800000025314BC30);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_253141D10(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDUserModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](1919251285, 0xE400000000000000);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0xD000000000000018, 0x800000025314BC10);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0xD00000000000002ALL;
      v20 = 0x800000025314BBA0;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v19 = 0x44496C65646F6D2ELL;
      v20 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v19, v20);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](1919251285, 0xE400000000000000);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0xD000000000000018, 0x800000025314BC10);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_253142134(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDAccessoryModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](1701670728, 0xE400000000000000);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0x800000025314BBA0;
      v20 = 0xD00000000000002ALL;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v20 = 0x44496C65646F6D2ELL;
      v19 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v20, v19);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](1701670728, 0xE400000000000000);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_25314255C(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDAccessoryModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0x6C616E6F6974704FLL, 0xEE003E6D6F6F523CLL);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0x800000025314BBA0;
      v20 = 0xD00000000000002ALL;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v20 = 0x44496C65646F6D2ELL;
      v19 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v20, v19);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0x6C616E6F6974704FLL, 0xEE003E6D6F6F523CLL);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_2531429AC(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDAccessoryModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0xD00000000000001ALL, 0x800000025314BBF0);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0xD00000000000002ALL;
      v20 = 0x800000025314BBA0;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v19 = 0x44496C65646F6D2ELL;
      v20 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v19, v20);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0xD00000000000001ALL, 0x800000025314BBF0);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_253142E0C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  if (!a1)
  {
    v24 = 0xED00004025203D3DLL;
    v25 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v4 + 16) = v25;
    *(v4 + 24) = v24;
    return v4;
  }

  a2(0);
  v6 = [swift_getObjCClassFromMetadata() entity];
  v7 = [v6 relationshipsByName];
  sub_2530DFADC();
  v8 = sub_253148AD4();

  v9 = sub_253149234();
  v11 = v10;

  if (!v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v8 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v12 = sub_25311D908(v9, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](a3, 0xE400000000000000);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0xD000000000000010, 0x800000025314BBD0);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v15 = *(*(v8 + 56) + 8 * v12);

  v16 = [v15 inverseRelationship];
  if (v16)
  {
    v17 = v16;
    if ([v16 isToMany])
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v18 = [v17 name];
      v19 = sub_253148B64();
      v21 = v20;

      MEMORY[0x259BFC7D0](v19, v21);

      v22 = 0xD00000000000002ALL;
      v23 = 0x800000025314BBA0;
    }

    else
    {
      sub_2531493C4();

      v26 = [v17 name];
      v27 = sub_253148B64();
      v29 = v28;

      v31 = v27;
      v32 = v29;
      v22 = 0x44496C65646F6D2ELL;
      v23 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v22, v23);

    v25 = v31;
    v24 = v32;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](a3, 0xE400000000000000);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0xD000000000000010, 0x800000025314BBD0);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_253143320(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (!a1)
  {
    v28 = 0xED00004025203D3DLL;
    v29 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v6 + 16) = v29;
    *(v6 + 24) = v28;
    return v6;
  }

  a2(0);
  v10 = [swift_getObjCClassFromMetadata() entity];
  v11 = [v10 relationshipsByName];
  sub_2530DFADC();
  v12 = sub_253148AD4();

  v13 = sub_253149234();
  v15 = v14;

  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v12 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v16 = sub_25311D908(v13, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](a3, 0xE400000000000000);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](a4, a5);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v19 = *(*(v12 + 56) + 8 * v16);

  v20 = [v19 inverseRelationship];
  if (v20)
  {
    v21 = v20;
    if ([v20 isToMany])
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v22 = [v21 name];
      v23 = sub_253148B64();
      v25 = v24;

      MEMORY[0x259BFC7D0](v23, v25);

      v26 = 0x800000025314BBA0;
      v27 = 0xD00000000000002ALL;
    }

    else
    {
      sub_2531493C4();

      v30 = [v21 name];
      v31 = sub_253148B64();
      v33 = v32;

      v35 = v31;
      v36 = v33;
      v27 = 0x44496C65646F6D2ELL;
      v26 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v27, v26);

    v29 = v35;
    v28 = v36;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](a3, 0xE400000000000000);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](a4, a5);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_253143734(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDUserSharedSettingsModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](0x6553646572616853, 0xEE0073676E697474);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0x6C616E6F6974704FLL, 0xEE003E726573553CLL);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0x800000025314BBA0;
      v20 = 0xD00000000000002ALL;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v20 = 0x44496C65646F6D2ELL;
      v19 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v20, v19);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](0x6553646572616853, 0xEE0073676E697474);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0x6C616E6F6974704FLL, 0xEE003E726573553CLL);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t _s11HomeKitCore10HomesStoreC4UserV14SharedSettingsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) != 0 && (v4 = type metadata accessor for HomesStore.User.SharedSettings(), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    v5 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_253143C48()
{
  result = qword_27F582940;
  if (!qword_27F582940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582940);
  }

  return result;
}

uint64_t sub_253143C9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.User.SharedSettings();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253143D00(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.User.SharedSettings();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253143D5C(void *a1)
{
  a1[1] = sub_253143F30(&qword_27F582958, type metadata accessor for HomesStore.User.SharedSettings);
  a1[2] = sub_253143F30(&qword_27F582960, type metadata accessor for HomesStore.User.SharedSettings);
  a1[3] = sub_253143F30(&qword_27F582968, type metadata accessor for HomesStore.User.SharedSettings);
  a1[4] = sub_253143F30(&qword_27F582970, type metadata accessor for HomesStore.User.SharedSettings);
  result = sub_253143F30(&qword_27F582978, type metadata accessor for HomesStore.User.SharedSettings);
  a1[5] = result;
  return result;
}

uint64_t sub_253143F30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_253143FA0()
{
  result = sub_253148944();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s14SharedSettingsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14SharedSettingsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25314417C()
{
  result = qword_27F582998;
  if (!qword_27F582998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582998);
  }

  return result;
}

unint64_t sub_2531441D4()
{
  result = qword_27F5829A0;
  if (!qword_27F5829A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5829A0);
  }

  return result;
}

unint64_t sub_25314422C()
{
  result = qword_27F5829A8;
  if (!qword_27F5829A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5829A8);
  }

  return result;
}

uint64_t sub_253144280(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025314ABB0 == a2 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025314ABD0 == a2 || (sub_253149734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025314ABF0 == a2 || (sub_253149734() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025314AC10 == a2 || (sub_253149734() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x800000025314BAB0 == a2 || (sub_253149734() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025314AC50 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_253149734();

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

uint64_t sub_2531444C0()
{
  v1 = v0;
  v80 = *MEMORY[0x277D85DE8];
  v70 = sub_253148884();
  v2 = *(v70 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2531488E4();
  v5 = *(v68 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_253148944();
  v8 = *(v73 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v1;
  v11 = [v1 entity];
  v12 = [v11 attributesByName];

  sub_2530CF970(0, &qword_27F5829D0, 0x277CBE358);
  v13 = sub_253148AD4();

  v14 = v13;
  v15 = 0;
  v16 = v14 + 64;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 64);
  v20 = (v17 + 63) >> 6;
  v71 = (v8 + 8);
  v66 = (v2 + 8);
  v65 = (v5 + 8);
  v21 = &off_279719000;
  v22 = &off_279719000;
  v23 = &off_279719000;
  v75 = v14;
  while (v19)
  {
LABEL_9:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = *(*(v75 + 56) + ((v15 << 9) | (8 * v25)));
    v27 = [v26 v21[177]];
    if (v27 > 799)
    {
      if (v27 > 1199)
      {
        if (v27 != 1200)
        {
          goto LABEL_42;
        }

        v42 = v22;
        v43 = v72;
        sub_253148934();
        sub_2531488F4();
        (*v71)(v43, v73);
        v44 = v69;
        sub_253148854();

        v45 = sub_253148864();
        v46 = v44;
        v22 = v42;
        (*v66)(v46, v70);
        v47 = [v26 v42 + 3064];
        if (!v47)
        {
          sub_253148B64();
          v47 = sub_253148B54();
          v23 = &off_279719000;
        }

        [v74 v23[178]];

        v21 = &off_279719000;
      }

      else if (v27 > 999)
      {
        if (v27 != 1000)
        {
          if (v27 == 1100)
          {
            v35 = v22;
            v36 = v72;
            sub_253148934();
            v28 = sub_253148904();
            v37 = v36;
            v22 = v35;
            (*v71)(v37, v73);
            v29 = [v26 v35 + 3064];
            goto LABEL_56;
          }

          goto LABEL_42;
        }

        v48 = sub_253148434();
        v49 = *(v48 + 48);
        v50 = *(v48 + 52);
        swift_allocObject();
        v51 = sub_253148424() | 0x4000000000000000;
        v78 = 0;
        v79 = v51;
        v52 = 32;
        do
        {
          v77[0] = 0;
          MEMORY[0x259BFDC80](v77, 8);
          v54 = v77[0];
          if (v79 >> 62 == 2)
          {
            v55 = *(v78 + 24);
          }

          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5829D8, &qword_253152B38);
          v77[3] = v53;
          v77[4] = sub_2531451C8();
          LOBYTE(v77[0]) = v54;
          v76 = *__swift_project_boxed_opaque_existential_1(v77, v53);
          sub_253148894();
          __swift_destroy_boxed_opaque_existential_0(v77);
          --v52;
        }

        while (v52);
        v56 = v78;
        v57 = v79;
        v58 = sub_2531488A4();
        v59 = [v26 v22[36]];
        if (v59)
        {
          v60 = v59;
        }

        else
        {
          sub_253148B64();
          v60 = sub_253148B54();

          v56 = v78;
          v57 = v79;
        }

        [v74 setValue:v58 forKey:v60];

        v61 = v57;
        v23 = &off_279719000;
        sub_2530C2478(v56, v61);
        v21 = &off_279719000;
        v22 = &off_279719000;
      }

      else
      {
        if (v27 == 800)
        {
          v77[0] = 0;
          MEMORY[0x259BFDC80](v77, 8);
          v28 = sub_253148D74();
          v29 = [v26 v22[36]];
          goto LABEL_56;
        }

        if (v27 == 900)
        {
          do
          {
            v77[0] = 0;
            MEMORY[0x259BFDC80](v77, 8);
          }

          while ((0x20000000000001 * v77[0]) < 0x1FFFFFFFFFF801);
          v30 = v22;
          v31 = v67;
          sub_2531488D4();
          v28 = sub_2531488C4();
          (*v65)(v31, v68);
          v22 = v30;
          v29 = [v26 v30 + 3064];
          goto LABEL_56;
        }

LABEL_42:
      }
    }

    else
    {
      if (v27 <= 399)
      {
        if (v27 > 199)
        {
          if (v27 == 200)
          {
            v77[0] = 0;
            MEMORY[0x259BFDC80](v77, 8);
            v28 = sub_2531497E4();
            v29 = [v26 v22[36]];
LABEL_56:
            v41 = v29;
            if (!v41)
            {
              sub_253148B64();
              v41 = sub_253148B54();
              v23 = &off_279719000;
            }

            goto LABEL_58;
          }

          if (v27 == 300)
          {
            v77[0] = 0;
            MEMORY[0x259BFDC80](v77, 8);
            v28 = sub_2531497F4();
            v29 = [v26 v22[36]];
            goto LABEL_56;
          }
        }

        else if (v27 == 100)
        {
          v77[0] = 0;
          MEMORY[0x259BFDC80](v77, 8);
          v28 = sub_2531497D4();
          v29 = [v26 v22[36]];
          goto LABEL_56;
        }

        goto LABEL_42;
      }

      if (v27 <= 599)
      {
        if (v27 == 400)
        {
          do
          {
            v77[0] = 0;
            v32 = MEMORY[0x259BFDC80](v77, 8);
          }

          while ((0x20000000000001 * v77[0]) < 0x1FFFFFFFFFF801);
          v34 = (v77[0] * 0x20000000000001uLL) >> 64;
          v33.n128_f64[0] = vcvtd_n_f64_u64(v34, 0x35uLL) * 100.0 + 0.0;
          if (v34 == 0x20000000000000)
          {
            v33.n128_f64[0] = 100.0;
          }

          MEMORY[0x259BFCDC0](v32, v33);
          v28 = sub_2531491B4();
          v29 = [v26 v22[36]];
          goto LABEL_56;
        }

        if (v27 == 500)
        {
          do
          {
            v77[0] = 0;
            MEMORY[0x259BFDC80](v77, 8);
          }

          while ((0x20000000000001 * v77[0]) < 0x1FFFFFFFFFF801);
          v28 = sub_253148F44();
          v29 = [v26 v22[36]];
          goto LABEL_56;
        }

        goto LABEL_42;
      }

      if (v27 == 600)
      {
        v77[0] = 0;
        MEMORY[0x259BFDC80](v77, 8);
        while ((16777217 * LODWORD(v77[0])) < 0xFFFF01)
        {
          v77[0] = 0;
          MEMORY[0x259BFDC80](v77, 8);
        }

        v28 = sub_253148F54();
        v29 = [v26 v22[36]];
        goto LABEL_56;
      }

      if (v27 != 700)
      {
        goto LABEL_42;
      }

      v38 = v22;
      v39 = v72;
      sub_253148934();
      sub_2531488F4();
      v40 = v39;
      v22 = v38;
      (*v71)(v40, v73);
      v28 = sub_253148B54();

      v41 = [v26 v38 + 3064];
      if (!v41)
      {
        sub_253148B64();
        v41 = sub_253148B54();
      }

      v23 = &off_279719000;
LABEL_58:
      [v74 v23[178]];
    }
  }

  while (1)
  {
    v24 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
    }

    if (v24 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v24);
    ++v15;
    if (v19)
    {
      v15 = v24;
      goto LABEL_9;
    }
  }

  v63 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_253144F3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_2530CF970(0, &qword_27F580EA8, 0x277CBE438);
  v6 = v5;
  v7 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v7 ^ 1u, 1, a1);
}

id sub_25314500C()
{
  v1 = [*(v0 + 16) entity];

  return v1;
}

id sub_253145044@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) managedObjectContext];
  *a1 = result;
  return result;
}

uint64_t sub_253145084()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_253148B64();

  return v2;
}

unint64_t sub_2531450E4()
{
  result = qword_27F5829B8;
  if (!qword_27F5829B8)
  {
    sub_2530CF970(255, &qword_27F5829C0, 0x277CBE440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5829B8);
  }

  return result;
}

unint64_t sub_25314514C(uint64_t a1)
{
  result = sub_253145174();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_253145174()
{
  result = qword_27F5829C8;
  if (!qword_27F5829C8)
  {
    _s5ProxyCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5829C8);
  }

  return result;
}

unint64_t sub_2531451C8()
{
  result = qword_27F5829E0;
  if (!qword_27F5829E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5829D8, &qword_253152B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5829E0);
  }

  return result;
}

void *sub_253145238(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2531492E4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_2530F4DD0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x259BFD000](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_2530F4DD0((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = _s5ProxyCMa_0();
        v15 = sub_253145174();
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_2530BDB14(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_2530F4DD0((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = _s5ProxyCMa_0();
        v15 = sub_253145174();
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_2530BDB14(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_2531453E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2531492E4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2530F4ED8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259BFD000](i, a1);
        sub_2530FC2B4();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2530F4ED8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2530C02F4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2530FC2B4();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2530F4ED8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2530C02F4(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_2531455B4(unint64_t a1)
{
  v2 = *v1;
  sub_2531453E8(a1);
  v3 = sub_253148C84();

  v4 = [v2 currentPersistentHistoryTokenFromStores_];

  return v4;
}

id static HMCDModel.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A00, &qword_253152B88);
  v0 = [swift_getObjCClassFromMetadata() entityName];
  sub_253148B64();

  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return sub_253146440();
}

void HMCDModel.legacyUniqueIdentifier.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_253148944();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v3 managedObjectContext];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v14 = [v12 persistentStoreCoordinator];

  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = [v14 persistentStores];

  sub_2530CF970(0, &qword_27F581398, 0x277CBE4D0);
  v16 = sub_253148C94();

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_15;
  }

  if (!sub_2531492E4())
  {
    goto LABEL_11;
  }

LABEL_5:
  v26[0] = v7;
  v26[1] = a3;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = a1;
    v18 = MEMORY[0x259BFD000](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v17 = a1;
    v18 = *(v16 + 32);
  }

  v19 = v18;

  sub_253145A04(&v27);
  v20 = *(&v27 + 1);
  if (*(&v27 + 1) >> 60 != 15)
  {
    v21 = v27;
    v22 = objc_opt_self();
    (*(a2 + 16))(v17, a2);
    v23 = sub_253148904();
    (*(v8 + 8))(v11, v26[0]);
    v24 = sub_2531488A4();
    v25 = [v22 hmf:v23 UUIDWithNamespace:v24 data:0 salts:?];

    sub_253148924();
    sub_2530FC300(v21, v20);

    return;
  }

LABEL_15:
  sub_253149594();
  __break(1u);
}

uint64_t sub_253145A04@<X0>(_OWORD *a1@<X8>)
{
  result = [v1 metadata];
  if (result)
  {
    v4 = result;
    v5 = sub_253148AD4();

    if (*(v5 + 16) && (v6 = sub_25311D908(0xD000000000000032, 0x800000025314A550), (v7 & 1) != 0))
    {
      sub_2530C0304(*(v5 + 56) + 32 * v6, v8);
    }

    else
    {

      memset(v8, 0, sizeof(v8));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818A0, &qword_25314E9C0);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a1 = xmmword_253152B70;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_253145B14()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5829E8);
  __swift_project_value_buffer(v0, qword_27F5829E8);
  return sub_253148A84();
}

uint64_t static HMCDModel.fetch(withModelID:in:)()
{
  v0 = sub_253148944();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A00, &qword_253152B88);
  v2 = [swift_getObjCClassFromMetadata() entityName];
  sub_253148B64();

  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_253146440();
  sub_2530CF970(0, &qword_27F581968, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A08, "hR");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25314D290;
  v6 = sub_253148904();
  *(v5 + 56) = sub_2530CF970(0, &qword_27F582A10, 0x277CCAD78);
  *(v5 + 64) = sub_253146054();
  *(v5 + 32) = v6;
  v7 = sub_253149084();
  [v4 setPredicate_];

  [v4 setFetchBatchSize_];
  sub_253149154();
  sub_253148D64();
  swift_getWitnessTable();
  sub_253149034();

  return v9;
}

unint64_t sub_253146054()
{
  result = qword_27F582A18;
  if (!qword_27F582A18)
  {
    sub_2530CF970(255, &qword_27F582A10, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582A18);
  }

  return result;
}

uint64_t static HMCDModel.fetch(in:)()
{
  v0 = static HMCDModel.fetchRequest()();
  v1 = sub_253149154();

  return v1;
}

void HMCDModel.updateProperty<A>(at:newValue:)(void *a1, uint64_t a2)
{
  v4 = *(*a1 + *MEMORY[0x277D84568] + 8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - v7;
  v13 = v2;
  v9 = v2;
  swift_getAtKeyPath();

  v10 = sub_253148B44();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    (*(v5 + 16))(v8, a2, v4);
    v13 = v9;
    v11 = v9;
    swift_setAtReferenceWritableKeyPath();
  }
}

id sub_253146440()
{
  v1 = sub_253148B54();

  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_253146498(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_253146564(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2530C0304(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_253146564(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_253146670(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_253149464();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_253146670(uint64_t a1, unint64_t a2)
{
  v4 = sub_2531466BC(a1, a2);
  sub_2531467EC(&unk_2864E9AB8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2531466BC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2531468D8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_253149464();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_253148BE4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2531468D8(v10, 0);
        result = sub_2531493B4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2531467EC(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25314694C(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2531468D8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A20, &qword_253152BA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25314694C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A20, &qword_253152BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_253146A40()
{
  result = qword_27F5807B8;
  if (!qword_27F5807B8)
  {
    sub_253148944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5807B8);
  }

  return result;
}

uint64_t sub_253146AE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a5;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a4;
  v18 = 1;
  v19 = 0;
  v11 = *(a9 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 32);
  v14 = a4;

  v15 = swift_checkMetadataState();
  v13(v17, v15, AssociatedConformanceWitness);
  if (v9)
  {
  }

  else
  {
    v20();
  }
}

uint64_t sub_253146CC4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v11 = sub_253148AA4();
  v24 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v20 = a3;
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = *(AssociatedConformanceWitness + 32);
    v15 = (a1 + 40);
    while (1)
    {
      v16 = *v15;
      v21[0] = *(v15 - 1);
      v21[1] = v16;
      v21[2] = 0;
      v22 = 1;
      v23 = 0;

      v17 = swift_checkMetadataState();
      v14(v21, v17, AssociatedConformanceWitness);
      if (v7)
      {
        break;
      }

      sub_253148D04();

      v15 += 2;
      if (!--v12)
      {
        v18 = v24;
        a3 = v20;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v18 = v11;
LABEL_7:
    a3(v18);
  }
}

unint64_t sub_253146EF8()
{
  result = qword_27F582A28[0];
  if (!qword_27F582A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F582A28);
  }

  return result;
}

uint64_t sub_253146F4C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_253149014();
  if (!v26)
  {
    return sub_253148CE4();
  }

  v48 = v26;
  v52 = sub_253149504();
  v39 = sub_253149514();
  sub_2531494B4();
  result = sub_253149004();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_253149054();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2531494F4();
      result = sub_253149024();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RelationshipResolver.model<A>(at:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v30 = a4;
  v8 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v30 - v12;
  v14 = *(v8 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v11);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  swift_getAtKeyPath();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    (*(v9 + 8))(v13, v8);
    v22 = *(a2 + 24);
    v31 = *(a2 + 16);
    v32 = v14;
    v33 = v22;
    v34 = a3;
    v23 = type metadata accessor for RelationshipResolver.ModelProxy();
    v24 = 1;
    v25 = v30;
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    (*(v15 + 16))(v19, v21, v14);
    sub_2530C25FC(v5 + *(a2 + 36), &v31);
    v27 = *(a2 + 16);
    v26 = *(a2 + 24);
    v28 = v30;
    sub_25313CA70(v19, &v31, v27, v14, v26, a3, v30);
    (*(v15 + 8))(v21, v14);
    v31 = v27;
    v32 = v14;
    v33 = v26;
    v34 = a3;
    v23 = type metadata accessor for RelationshipResolver.ModelProxy();
    v24 = 0;
    v25 = v28;
  }

  return (*(*(v23 - 8) + 56))(v25, v24, 1);
}

uint64_t RelationshipResolver.models<A>(at:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_253147A6C(a1, a2, a3, sub_2531481F0);
}

{
  v4 = v3;
  v7 = *a1;
  v8 = swift_getAtKeyPath();
  if (!v22)
  {
    return 0;
  }

  v26 = v22;
  MEMORY[0x28223BE20](v8);
  v9 = *(a2 + 24);
  v17 = *(a2 + 16);
  v10 = *(*(v7 + *MEMORY[0x277D84DE8] + 8) + 16);
  v18 = *(v10 + 16);
  v19 = v9;
  v20 = a3;
  v21 = v4;
  v22 = v17;
  v23 = v18;
  v24 = v9;
  v25 = a3;
  v11 = type metadata accessor for RelationshipResolver.ModelProxy();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_253146F4C(sub_253147890, &v16, v10, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  return v14;
}

uint64_t sub_2531477CC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for RelationshipResolver() + 36);

  return sub_2530BDB14(a2, v6);
}

uint64_t _s11HomeKitCore20RelationshipResolverV5model2atAC10ModelProxyVyx_qd__Gs7KeyPathCyxqd__G_tAA0H10DescriptorRd__lF_0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19[-1] - v15;
  swift_getAtKeyPath();
  (*(v10 + 16))(v14, v16, v9);
  sub_2530C25FC(v5 + *(a2 + 36), v19);
  sub_25313CA70(v14, v19, *(a2 + 16), v9, *(a2 + 24), a3, a4);
  return (*(v10 + 8))(v16, v9);
}

uint64_t sub_253147A6C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *))
{
  v8 = *a1;
  swift_getAtKeyPath();
  v26 = v22;
  v9 = *(a2 + 24);
  v17 = *(a2 + 16);
  v10 = *(v8 + *MEMORY[0x277D84DE8] + 8);
  v18 = *(v10 + 16);
  v19 = v9;
  v20 = a3;
  v21 = v4;
  v22 = v17;
  v23 = v18;
  v24 = v9;
  v25 = a3;
  v11 = type metadata accessor for RelationshipResolver.ModelProxy();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_253146F4C(a4, &v16, v10, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  return v14;
}

uint64_t sub_253147B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = type metadata accessor for RelationshipResolver();
  sub_2530C25FC(a2 + *(v17 + 36), v20);
  return sub_25313CA70(v15, v20, a3, a4, a5, a6, a7);
}

unint64_t sub_253147CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_25313DC78();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_253147D34(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_253147E70(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_25314804C(uint64_t a1)
{
  result = sub_253148944();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_2531480F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25314815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t ModelRelationshipDescriptor.predicate(for:)()
{
  sub_2530CF970(0, &qword_27F581968, 0x277CCAC30);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A08, "hR");
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25314D290;
  v4 = sub_253148904();
  *(v3 + 56) = sub_2530CF970(0, &qword_27F582A10, 0x277CCAD78);
  *(v3 + 64) = sub_253146054();
  *(v3 + 32) = v4;
  return sub_253149084();
}

uint64_t ModelRelationshipDescriptor.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ModelRelationshipDescriptor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}