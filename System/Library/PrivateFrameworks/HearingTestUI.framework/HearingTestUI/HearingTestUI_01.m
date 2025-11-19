uint64_t sub_20CD8A080(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_20CD8AEE8(0, &qword_27C812368);
  v38 = a2;
  result = sub_20CE141F4();
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
      sub_20CE14384();
      sub_20CE139C4();
      result = sub_20CE143B4();
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

uint64_t sub_20CD8A324(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_20CD8ABA4();
  v39 = a2;
  result = sub_20CE141F4();
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
      sub_20CE14384();
      sub_20CE139C4();
      result = sub_20CE143B4();
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

unint64_t sub_20CD8A5BC(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20CD8A624(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20CE14284())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20CD8A6DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_20CE13954();
      v9 = v8;
      if (v7 == sub_20CE13954() && v9 == v10)
      {
        break;
      }

      v12 = sub_20CE14284();

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

void *sub_20CD8A7E0()
{
  v1 = v0;
  sub_20CD8AF8C();
  v2 = *v0;
  v3 = sub_20CE141E4();
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

void sub_20CD8A930()
{
  if (!qword_27C812348)
  {
    v0 = sub_20CE13C64();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812348);
    }
  }
}

uint64_t sub_20CD8A98C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_20CD8A9E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_20CD8A9F8()
{
  v1 = v0;
  sub_20CD8AEE8(0, &qword_27C812350);
  v2 = *v0;
  v3 = sub_20CE141E4();
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
        sub_20CD8A98C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20CD8A9E8(v25, (*(v4 + 56) + v22));
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

void sub_20CD8ABA4()
{
  if (!qword_27C812358)
  {
    sub_20CD83128(255, &qword_27C813590, 0x277D82BB8);
    v0 = sub_20CE14214();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812358);
    }
  }
}

void *sub_20CD8AC1C()
{
  v1 = v0;
  sub_20CD8AEE8(0, &qword_27C812368);
  v2 = *v0;
  v3 = sub_20CE141E4();
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

id sub_20CD8AD88()
{
  v1 = v0;
  sub_20CD8ABA4();
  v2 = *v0;
  v3 = sub_20CE141E4();
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

void sub_20CD8AEE8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20CE14214();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_20CD8AF40(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20CE14264();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_20CD8AF8C()
{
  if (!qword_27C812370)
  {
    sub_20CD8B088(255, &qword_27C812378, MEMORY[0x277D12CA8], MEMORY[0x277D83940]);
    v0 = sub_20CE14214();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812370);
    }
  }
}

uint64_t sub_20CD8B024(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_20CD8B030()
{
  result = qword_27C812380;
  if (!qword_27C812380)
  {
    sub_20CE12924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812380);
  }

  return result;
}

void sub_20CD8B088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_20CD8B0F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE13104();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD8C3B0(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for BothEarsClassificationView();
  sub_20CD8C838(v1 + *(v12 + 20), v11, sub_20CD8C3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20CE12FA4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20CE13CC4();
    v16 = sub_20CE13294();
    sub_20CE12C84();

    sub_20CE130F4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

__n128 BothEarsClassificationView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for BothEarsClassificationView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_20CD8C3B0(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t type metadata accessor for BothEarsClassificationView()
{
  result = qword_27C812410;
  if (!qword_27C812410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BothEarsClassificationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  sub_20CD8C3E4();
  v25 = v1;
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD8C598(0, &qword_27C8123D0, sub_20CD8C61C, sub_20CD8C3E4, MEMORY[0x277CE0330]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  sub_20CD8C61C(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20CE12FA4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD8B0F0(v17);
  v18 = sub_20CD8B86C();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    *v12 = sub_20CE131B4();
    *(v12 + 1) = 0x4024000000000000;
    v12[16] = 0;
    sub_20CE13B84();
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20CD8C7D0(0, &qword_27C812400);
    sub_20CD8BB58(&v12[*(v19 + 44)]);

    sub_20CD8C838(v12, v8, sub_20CD8C61C);
    swift_storeEnumTagMultiPayload();
    sub_20CD8C6D8(&qword_27C8123E8, sub_20CD8C61C);
    sub_20CD8C720();
    sub_20CE13214();
    v20 = sub_20CD8C61C;
    v21 = v12;
  }

  else
  {
    *v4 = sub_20CE13114();
    *(v4 + 1) = 0x4024000000000000;
    v4[16] = 0;
    sub_20CE13B84();
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20CD8C7D0(0, &qword_27C8123E0);
    sub_20CD8BB58(&v4[*(v22 + 44)]);

    *&v4[*(v25 + 36)] = 256;
    sub_20CD8C838(v4, v8, sub_20CD8C3E4);
    swift_storeEnumTagMultiPayload();
    sub_20CD8C6D8(&qword_27C8123E8, sub_20CD8C61C);
    sub_20CD8C720();
    sub_20CE13214();
    v20 = sub_20CD8C3E4;
    v21 = v4;
  }

  return sub_20CD8C8A0(v21, v20);
}

uint64_t sub_20CD8B86C()
{
  v1 = sub_20CE12FA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  v13 = v6 == *MEMORY[0x277CDF9F8] || v6 == *MEMORY[0x277CDF9E0] || v6 == *MEMORY[0x277CDF9E8] || v6 == *MEMORY[0x277CDF9D8] || v6 == *MEMORY[0x277CDF9F0] || v6 == *MEMORY[0x277CDFA00] || v6 == *MEMORY[0x277CDFA10] || v6 == *MEMORY[0x277CDF988];
  v14 = v13;
  if (!v13)
  {
    v15 = v6 == *MEMORY[0x277CDF998] || v6 == *MEMORY[0x277CDF9A8];
    v16 = v15 || v6 == *MEMORY[0x277CDF9B8];
    if (!v16 && v6 != *MEMORY[0x277CDF9D0])
    {
      if (qword_27C811D00 != -1)
      {
        swift_once();
      }

      v18 = sub_20CE12CB4();
      __swift_project_value_buffer(v18, qword_27C817768);
      v19 = sub_20CE12C94();
      v20 = sub_20CE13CB4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v25 = v22;
        *v21 = 136446210;
        *(v21 + 4) = sub_20CD96DCC(0x5463696D616E7944, 0xEF657A6953657079, &v25);
        _os_log_impl(&dword_20CD70000, v19, v20, "[%{public}s] Unhandled new DynamicTypeSize case.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x20F314110](v22, -1, -1);
        MEMORY[0x20F314110](v21, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
    }
  }

  return v14 ^ 1u;
}

uint64_t sub_20CD8BB58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v64 = type metadata accessor for SingleEarClassificationView();
  v3 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v5 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD8C598(0, &qword_27C8123C0, type metadata accessor for SingleEarClassificationView, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v53 - v10;
  sub_20CD8C4FC();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v59 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v53 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v57 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v65 = &v53 - v20;
  v21 = v1[1];
  v62 = v8;
  v63 = v7;
  v61 = v11;
  if (v21)
  {
    v23 = v2[5];
    v55 = v2[4];
    v22 = v55;
    v56 = v23;
    v24 = v2[2];
    v25 = *v2;
    v53 = v2[3];
    v54 = v25;
    *(v5 + *(v64 + 20)) = swift_getKeyPath();
    sub_20CD8CBD4(0, &qword_27C812430, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *v5 = v25;
    v5[1] = v21;
    v26 = v53;
    v5[2] = v24;
    v5[3] = v26;
    v5[4] = v22;
    v5[5] = v23;
    v27 = v2[12];
    v28 = v2[13];
    sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_20CE16360;
    *(v29 + 32) = v27;
    *(v29 + 40) = v28;
    v30 = v65;
    *(v29 + 48) = 0x7261457466654CLL;
    *(v29 + 56) = 0xE700000000000000;
    v66 = v29;
    v31 = v61;
    sub_20CD8CC38(v54, v21);
    sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
    sub_20CD81F60();

    sub_20CE138C4();

    sub_20CD8C6D8(&qword_27C812438, type metadata accessor for SingleEarClassificationView);
    v7 = v63;
    sub_20CE134A4();
    v32 = v62;

    sub_20CD8C8A0(v5, type metadata accessor for SingleEarClassificationView);
    sub_20CD8CC88(v31, v30);
    v33 = *(v32 + 56);
    v33(v30, 0, 1, v7);
  }

  else
  {
    v33 = *(v8 + 56);
    v33(v65, 1, 1, v7);
  }

  v34 = v2[7];
  if (v34)
  {
    v35 = v2[10];
    v36 = v2[11];
    v37 = v2[9];
    v55 = v2[8];
    v38 = v55;
    v39 = v2[6];
    KeyPath = swift_getKeyPath();
    v56 = v33;
    *(v5 + *(v64 + 20)) = KeyPath;
    sub_20CD8CBD4(0, &qword_27C812430, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *v5 = v39;
    v5[1] = v34;
    v5[2] = v38;
    v5[3] = v37;
    v5[4] = v35;
    v5[5] = v36;
    v41 = v2[12];
    v42 = v2[13];
    sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_20CE16360;
    *(v43 + 32) = v41;
    *(v43 + 40) = v42;
    *(v43 + 48) = 0x7261457468676952;
    *(v43 + 56) = 0xE800000000000000;
    v66 = v43;
    sub_20CD8CC38(v39, v34);
    sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
    sub_20CD81F60();
    v33 = v56;

    sub_20CE138C4();

    sub_20CD8C6D8(&qword_27C812438, type metadata accessor for SingleEarClassificationView);
    v44 = v61;
    v7 = v63;
    sub_20CE134A4();

    sub_20CD8C8A0(v5, type metadata accessor for SingleEarClassificationView);
    v45 = v57;
    sub_20CD8CC88(v44, v57);
    v46 = 0;
  }

  else
  {
    v46 = 1;
    v45 = v57;
  }

  v33(v45, v46, 1, v7);
  v47 = v65;
  v48 = v58;
  sub_20CD8C838(v65, v58, sub_20CD8C4FC);
  v49 = v59;
  sub_20CD8C838(v45, v59, sub_20CD8C4FC);
  v50 = v60;
  sub_20CD8C838(v48, v60, sub_20CD8C4FC);
  sub_20CD8C498();
  sub_20CD8C838(v49, v50 + *(v51 + 48), sub_20CD8C4FC);
  sub_20CD8C8A0(v45, sub_20CD8C4FC);
  sub_20CD8C8A0(v47, sub_20CD8C4FC);
  sub_20CD8C8A0(v49, sub_20CD8C4FC);
  return sub_20CD8C8A0(v48, sub_20CD8C4FC);
}

__n128 BothEarsClassificationView.Model.init(leftEar:rightEar:automationIdBase:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v5;
  v6 = *a2;
  v7 = a2[1];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v6;
  result = a2[2];
  *(a5 + 64) = v7;
  *(a5 + 80) = result;
  *(a5 + 96) = a3;
  *(a5 + 104) = a4;
  return result;
}

uint64_t sub_20CD8C2E8(uint64_t a1)
{
  v2 = sub_20CE12FA4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20CE13044();
}

void sub_20CD8C3E4()
{
  if (!qword_27C812398)
  {
    sub_20CD8C444(255);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812398);
    }
  }
}

void sub_20CD8C498()
{
  if (!qword_27C8123B0)
  {
    sub_20CD8C4FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8123B0);
    }
  }
}

void sub_20CD8C4FC()
{
  if (!qword_27C8123B8)
  {
    sub_20CD8C598(255, &qword_27C8123C0, type metadata accessor for SingleEarClassificationView, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v0 = sub_20CE13F44();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8123B8);
    }
  }
}

void sub_20CD8C598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_20CD8C63C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_20CD8C464(255);
    v7 = v6;
    v8 = sub_20CD8C6D8(&qword_27C8123C8, sub_20CD8C464);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_20CD8C6D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CD8C720()
{
  result = qword_27C8123F0;
  if (!qword_27C8123F0)
  {
    sub_20CD8C3E4();
    sub_20CD8C6D8(&qword_27C8123F8, sub_20CD8C444);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8123F0);
  }

  return result;
}

void sub_20CD8C7D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_20CD8C464(255);
    v3 = sub_20CE12F54();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_20CD8C838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CD8C8A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20CD8C944()
{
  sub_20CD8CBD4(319, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t get_enum_tag_for_layout_string_13HearingTestUI27SingleEarClassificationViewV5ModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_20CD8CA2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CD8CA74(uint64_t result, int a2, int a3)
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
      *(result + 104) = (a2 - 1);
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

unint64_t sub_20CD8CAE0()
{
  result = qword_27C812420;
  if (!qword_27C812420)
  {
    sub_20CD8C598(255, &qword_27C812428, sub_20CD8C61C, sub_20CD8C3E4, MEMORY[0x277CE0338]);
    sub_20CD8C6D8(&qword_27C8123E8, sub_20CD8C61C);
    sub_20CD8C720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812420);
  }

  return result;
}

void sub_20CD8CBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_20CD8CC38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_20CD8CC88(uint64_t a1, uint64_t a2)
{
  sub_20CD8C598(0, &qword_27C8123C0, type metadata accessor for SingleEarClassificationView, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20CD8CD40(uint64_t a1, uint64_t a2)
{
  sub_20CD8CF38(a1, v9);
  if (v9[3])
  {
    sub_20CD8D04C();
    if (swift_dynamicCast())
    {
      [v8 presentViewController:a2 animated:1 completion:0];

      return;
    }
  }

  else
  {
    sub_20CD8CFF0(v9);
  }

  if (qword_27C811D28 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C8177E0);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CB4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_20CD96DCC(0xD00000000000001FLL, 0x800000020CE16AA0, v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20CD96DCC(0xD000000000000028, 0x800000020CE1C010, v9);
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] %s aborting as the sender is not a UIViewController.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }
}

uint64_t sub_20CD8CF38(uint64_t a1, uint64_t a2)
{
  sub_20CD8CF9C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CD8CF9C()
{
  if (!qword_27C812D30)
  {
    v0 = sub_20CE13F44();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812D30);
    }
  }
}

uint64_t sub_20CD8CFF0(uint64_t a1)
{
  sub_20CD8CF9C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CD8D04C()
{
  result = qword_27C812440;
  if (!qword_27C812440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812440);
  }

  return result;
}

uint64_t sub_20CD8D098()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_20CD8D0F4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_20CD8D164(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_20CD8D1EC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 32))(v1, v2);
}

void sub_20CD8D244()
{
  v1 = v0;
  v2 = sub_20CE137B4();
  v113 = *(v2 - 8);
  v114 = v2;
  v3 = *(v113 + 64);
  MEMORY[0x28223BE20](v2);
  v112 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD8DC24();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE12CB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *MEMORY[0x277CCE000];
  v15 = sub_20CE13954();
  v17 = v16;
  v18 = MEMORY[0x277D839B0];
  v118 = MEMORY[0x277D839B0];
  LOBYTE(v117) = 1;
  sub_20CD8A9E8(&v117, v116);
  v19 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v115 = v19;
  sub_20CE09150(v116, v15, v17, isUniquelyReferenced_nonNull_native);

  v21 = v115;
  v22 = *(v1 + 16);
  if (v22 != 2)
  {
    v23 = *MEMORY[0x277CCE008];
    v24 = sub_20CE13954();
    v26 = v25;
    v118 = v18;
    LOBYTE(v117) = v22;
    sub_20CD8A9E8(&v117, v116);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v21;
    sub_20CE09150(v116, v24, v26, v27);

    v21 = v115;
  }

  v28 = *(v1 + 17);
  if (v28 != 2)
  {
    v29 = *MEMORY[0x277CCE018];
    v30 = sub_20CE13954();
    v32 = v31;
    v118 = v18;
    LOBYTE(v117) = v28;
    sub_20CD8A9E8(&v117, v116);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v21;
    sub_20CE09150(v116, v30, v32, v33);

    v21 = v115;
  }

  v110 = v21;
  v111 = v1;
  v34 = *v1;
  v35 = v1[1];
  if (qword_27C811D28 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v9, qword_27C8177E0);
  v37 = [objc_allocWithZone(MEMORY[0x277CCD438]) initWithFeatureIdentifier:*MEMORY[0x277CCC058] healthStore:v34];
  v38 = *(v10 + 16);
  v38(v13, v36, v9);
  v39 = type metadata accessor for HearingTestPairedDeviceFeatureAttributesDataSource(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();

  sub_20CDC3488(v37, v35, v13);

  sub_20CD8E6E4();
  v38(v13, v36, v9);
  v42 = sub_20CE137E4();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();

  sub_20CE137D4();

  v45 = v112;
  sub_20CE137C4();
  sub_20CE137A4();
  (*(v113 + 8))(v45, v114);
  v46 = sub_20CE13774();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v8, 1, v46) != 1)
  {
    v48 = sub_20CE13764();
    (*(v47 + 8))(v8, v46);
    v49 = [v48 featureVersion];
    v50 = sub_20CE13954();
    v52 = v51;

    v53 = HIBYTE(v52) & 0xF;
    v54 = v50 & 0xFFFFFFFFFFFFLL;
    if ((v52 & 0x2000000000000000) != 0)
    {
      v55 = HIBYTE(v52) & 0xF;
    }

    else
    {
      v55 = v50 & 0xFFFFFFFFFFFFLL;
    }

    if (!v55)
    {

LABEL_72:

      goto LABEL_73;
    }

    if ((v52 & 0x1000000000000000) != 0)
    {
      LOBYTE(v116[0]) = 0;
      v58 = sub_20CD8DCE4(v50, v52, 10);
      v76 = v109;
LABEL_71:

      if ((v76 & 1) == 0)
      {
        v79 = *MEMORY[0x277CCE0D0];
        v80 = sub_20CE13954();
        v82 = v81;
        v83 = [v48 updateVersion];
        v84 = sub_20CE13954();
        v86 = v85;

        v118 = MEMORY[0x277D837D0];
        *&v117 = v84;
        *(&v117 + 1) = v86;
        sub_20CD8A9E8(&v117, v116);
        v87 = v110;
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v115 = v87;
        sub_20CE09150(v116, v80, v82, v88);

        v89 = v115;
        v90 = *MEMORY[0x277CCC428];
        v91 = sub_20CE13954();
        v93 = v92;
        v118 = MEMORY[0x277D83B88];
        *&v117 = v58;
        sub_20CD8A9E8(&v117, v116);
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v115 = v89;
        sub_20CE09150(v116, v91, v93, v94);

        v78 = v115;
        v77 = v111;
        goto LABEL_75;
      }

      goto LABEL_72;
    }

    if ((v52 & 0x2000000000000000) != 0)
    {
      *&v117 = v50;
      *(&v117 + 1) = v52 & 0xFFFFFFFFFFFFFFLL;
      if (v50 == 43)
      {
        if (v53)
        {
          if (--v53)
          {
            v58 = 0;
            v68 = &v117 + 1;
            while (1)
            {
              v69 = *v68 - 48;
              if (v69 > 9)
              {
                break;
              }

              v70 = 10 * v58;
              if ((v58 * 10) >> 64 != (10 * v58) >> 63)
              {
                break;
              }

              v58 = v70 + v69;
              if (__OFADD__(v70, v69))
              {
                break;
              }

              ++v68;
              if (!--v53)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_86:
        __break(1u);
        return;
      }

      if (v50 != 45)
      {
        if (v53)
        {
          v58 = 0;
          v73 = &v117;
          while (1)
          {
            v74 = *v73 - 48;
            if (v74 > 9)
            {
              break;
            }

            v75 = 10 * v58;
            if ((v58 * 10) >> 64 != (10 * v58) >> 63)
            {
              break;
            }

            v58 = v75 + v74;
            if (__OFADD__(v75, v74))
            {
              break;
            }

            ++v73;
            if (!--v53)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v53)
      {
        if (--v53)
        {
          v58 = 0;
          v62 = &v117 + 1;
          while (1)
          {
            v63 = *v62 - 48;
            if (v63 > 9)
            {
              break;
            }

            v64 = 10 * v58;
            if ((v58 * 10) >> 64 != (10 * v58) >> 63)
            {
              break;
            }

            v58 = v64 - v63;
            if (__OFSUB__(v64, v63))
            {
              break;
            }

            ++v62;
            if (!--v53)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v50 & 0x1000000000000000) != 0)
      {
        v56 = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v56 = sub_20CE14124();
      }

      v57 = *v56;
      if (v57 == 43)
      {
        if (v54 >= 1)
        {
          v53 = v54 - 1;
          if (v54 != 1)
          {
            v58 = 0;
            if (v56)
            {
              v65 = v56 + 1;
              while (1)
              {
                v66 = *v65 - 48;
                if (v66 > 9)
                {
                  goto LABEL_69;
                }

                v67 = 10 * v58;
                if ((v58 * 10) >> 64 != (10 * v58) >> 63)
                {
                  goto LABEL_69;
                }

                v58 = v67 + v66;
                if (__OFADD__(v67, v66))
                {
                  goto LABEL_69;
                }

                ++v65;
                if (!--v53)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_85;
      }

      if (v57 != 45)
      {
        if (v54)
        {
          v58 = 0;
          if (v56)
          {
            while (1)
            {
              v71 = *v56 - 48;
              if (v71 > 9)
              {
                goto LABEL_69;
              }

              v72 = 10 * v58;
              if ((v58 * 10) >> 64 != (10 * v58) >> 63)
              {
                goto LABEL_69;
              }

              v58 = v72 + v71;
              if (__OFADD__(v72, v71))
              {
                goto LABEL_69;
              }

              ++v56;
              if (!--v54)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v58 = 0;
        LOBYTE(v53) = 1;
        goto LABEL_70;
      }

      if (v54 >= 1)
      {
        v53 = v54 - 1;
        if (v54 != 1)
        {
          v58 = 0;
          if (v56)
          {
            v59 = v56 + 1;
            while (1)
            {
              v60 = *v59 - 48;
              if (v60 > 9)
              {
                goto LABEL_69;
              }

              v61 = 10 * v58;
              if ((v58 * 10) >> 64 != (10 * v58) >> 63)
              {
                goto LABEL_69;
              }

              v58 = v61 - v60;
              if (__OFSUB__(v61, v60))
              {
                goto LABEL_69;
              }

              ++v59;
              if (!--v53)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v53) = 0;
LABEL_70:
          LOBYTE(v116[0]) = v53;
          v76 = v53;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  sub_20CD8E73C(v8);
LABEL_73:
  v78 = v110;
  v77 = v111;
LABEL_75:
  if ((v77[4] & 1) == 0)
  {
    v95 = v77[3];
    v96 = *MEMORY[0x277CCE010];
    v97 = sub_20CE13954();
    v99 = v98;
    v100 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v118 = sub_20CD8E798();
    *&v117 = v100;
    sub_20CD8A9E8(&v117, v116);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v78;
    sub_20CE09150(v116, v97, v99, v101);

    v78 = v115;
  }

  if ((v77[6] & 1) == 0)
  {
    v102 = v77[5];
    v103 = *MEMORY[0x277CCE020];
    v104 = sub_20CE13954();
    v106 = v105;
    v107 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v118 = sub_20CD8E798();
    *&v117 = v107;
    sub_20CD8A9E8(&v117, v116);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v78;
    sub_20CE09150(v116, v104, v106, v108);
  }
}

void sub_20CD8DC24()
{
  if (!qword_27C812448)
  {
    sub_20CE13774();
    v0 = sub_20CE13F44();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812448);
    }
  }
}

void *sub_20CD8DC7C(uint64_t a1, uint64_t a2)
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

  sub_20CD8E7E4();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_20CD8DCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_20CE13A64();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_20CD8E270();
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
      result = sub_20CE14124();
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

uint64_t sub_20CD8E270()
{
  v0 = sub_20CE13A74();
  v4 = sub_20CD8E2F0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_20CD8E2F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_20CE139B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_20CE13F54();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_20CD8DC7C(v9, 0);
  v12 = sub_20CD8E448(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_20CE139B4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_20CE14124();
LABEL_4:

  return sub_20CE139B4();
}

unint64_t sub_20CD8E448(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_20CD8E668(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_20CE13A34();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_20CE14124();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_20CD8E668(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_20CE13A14();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_20CD8E668(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_20CE13A44();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x20F312F30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_20CD8E6E4()
{
  result = qword_27C812450;
  if (!qword_27C812450)
  {
    type metadata accessor for HearingTestPairedDeviceFeatureAttributesDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812450);
  }

  return result;
}

uint64_t sub_20CD8E73C(uint64_t a1)
{
  sub_20CD8DC24();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CD8E798()
{
  result = qword_27C812458;
  if (!qword_27C812458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812458);
  }

  return result;
}

void sub_20CD8E7E4()
{
  if (!qword_27C812460)
  {
    v0 = sub_20CE14264();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812460);
    }
  }
}

id sub_20CD8E834()
{
  v1 = v0;
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    sub_20CE13954();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v1 productName];
  if (v6)
  {
    v7 = v6;
    sub_20CE13954();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v1 hardwareVersion];
  if (v10)
  {
    v11 = v10;
    sub_20CE13954();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v1 firmwareVersion];
  if (v14)
  {
    v15 = v14;
    sub_20CE13954();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v1 identifier];
  if (v18)
  {
    v19 = v18;
    sub_20CE13954();
    v21 = v20;

    if (v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
    if (v5)
    {
LABEL_15:
      v22 = sub_20CE13914();

      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  v22 = 0;
  if (v9)
  {
LABEL_16:
    v23 = sub_20CE13914();

    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_22:
  v23 = 0;
  if (v13)
  {
LABEL_17:
    v24 = sub_20CE13914();

    if (v17)
    {
      goto LABEL_18;
    }

LABEL_24:
    v25 = 0;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_25:
    v26 = 0;
    goto LABEL_26;
  }

LABEL_23:
  v24 = 0;
  if (!v17)
  {
    goto LABEL_24;
  }

LABEL_18:
  v25 = sub_20CE13914();

  if (!v21)
  {
    goto LABEL_25;
  }

LABEL_19:
  v26 = sub_20CE13914();

LABEL_26:
  v27 = [objc_allocWithZone(MEMORY[0x277CCD2E8]) initWithName:v22 manufacturer:0 model:v23 hardwareVersion:v24 firmwareVersion:v25 softwareVersion:0 localIdentifier:v26 UDIDeviceIdentifier:0];

  return v27;
}

uint64_t HearingTestFlowAnalyticsData.__allocating_init(entryPoint:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  HearingTestFlowAnalyticsData.init(entryPoint:)(a1);
  return v5;
}

uint64_t HearingTestFlowAnalyticsData.init(entryPoint:)(uint64_t a1)
{
  v3 = sub_20CE125B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 1;
  v8 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_flowStartTime;
  v9 = sub_20CE124E4();
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v11 = (v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_pairedHeadPhoneProductType);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_airPodsFirmware);
  *v12 = 0;
  v12[1] = 0;
  v10(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousTestCompleteDate, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasCongestionSelected) = 2;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasLoudEnvironmentExposureSelected) = 2;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_isOlderThanMinimumAge) = 2;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram) = 0;
  v13 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_leftNoiseMetrics;
  v14 = sub_20CE12984();
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v15(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_rightNoiseMetrics, 1, 1, v14);
  v16 = v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreLeft;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreRight;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreLeft;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreRight;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_stationaryNoiseCount) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_instantaneousNoiseCount) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalNoiseCount) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_interruptionCount) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalInterruptionDuration) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_endReason) = 5;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousSubmissions) = MEMORY[0x277D84FA0];
  v20 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_calendar;
  v21 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  sub_20CE12574();

  (*(v4 + 32))(v1 + v20, v7, v3);
  *(v1 + 16) = a1;
  return v1;
}

void sub_20CD8EDF0(_BYTE *a1)
{
  v2 = *v1;
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_endReason) == 5)
  {
    *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_endReason) = *a1;
  }

  else
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v3 = sub_20CE12CB4();
    __swift_project_value_buffer(v3, qword_27C817780);
    oslog = sub_20CE12C94();
    v4 = sub_20CE13CC4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v17 = v6;
      *v5 = 136446722;
      v7 = sub_20CE14414();
      v9 = sub_20CD96DCC(v7, v8, &v17);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      v10 = sub_20CE13974();
      v12 = sub_20CD96DCC(v10, v11, &v17);

      *(v5 + 14) = v12;
      *(v5 + 22) = 2080;
      v13 = sub_20CE13974();
      v15 = sub_20CD96DCC(v13, v14, &v17);

      *(v5 + 24) = v15;
      _os_log_impl(&dword_20CD70000, oslog, v4, "[%{public}s] Attempt to set endReason again. There should be one endReason per flow. current endReason %s new endReason %s", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v6, -1, -1);
      MEMORY[0x20F314110](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_20CD8F034(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  v6 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_instantaneousNoiseCount);
  if (__OFADD__(v6, result & 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_instantaneousNoiseCount) = v6 + (result & 1);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  result = (*(v8 + 16))(v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_stationaryNoiseCount);
  if (__OFADD__(v9, result & 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_stationaryNoiseCount) = v9 + (result & 1);
  v10 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalNoiseCount);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (!v11)
  {
    *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalNoiseCount) = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_20CD8F120(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v147 = sub_20CE12984();
  v148 = *(v147 - 8);
  v6 = *(v148 + 64);
  MEMORY[0x28223BE20](v147);
  v144 = &v112[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CD90ED8(0, &qword_27C8124A8, MEMORY[0x277D12D30]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v137 = &v112[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v143 = &v112[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v127 = &v112[-v15];
  MEMORY[0x28223BE20](v14);
  v124 = &v112[-v16];
  v17 = sub_20CE124E4();
  v146 = *(v17 - 8);
  v18 = *(v146 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v129 = &v112[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v128 = &v112[-v21];
  v22 = MEMORY[0x277CC9578];
  sub_20CD90ED8(0, &qword_281111770, MEMORY[0x277CC9578]);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v112[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v112[-v29];
  MEMORY[0x28223BE20](v28);
  v32 = &v112[-v31];
  v33 = *a1;
  LODWORD(a1) = *a2;
  v34 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousSubmissions;
  swift_beginAccess();
  v35 = *(v3 + v34);
  v140 = a1;
  v139 = v33;
  v36 = v33 | (a1 << 8);

  v37 = sub_20CD900D4(v36, v35);

  swift_beginAccess();
  sub_20CDD5CA4(v149, v36);
  swift_endAccess();
  v38 = *(v3 + 24);
  v135 = *(v3 + 16);
  v134 = v38;
  v136 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_endReason);
  v39 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_pairedHeadPhoneProductType + 8);
  *&v133 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_pairedHeadPhoneProductType);
  v40 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_airPodsFirmware + 8);
  *&v131 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_airPodsFirmware);
  v132 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasCongestionSelected);
  v130 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasLoudEnvironmentExposureSelected);
  v41 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_flowStartTime;
  swift_beginAccess();
  v141 = v32;
  sub_20CD911AC(v3 + v41, v32, &qword_281111770, v22);
  v142 = v30;
  v42 = v30;
  v43 = v146;
  sub_20CD911AC(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousTestCompleteDate, v42, &qword_281111770, v22);
  sub_20CD911AC(v3 + v41, v27, &qword_281111770, v22);
  v44 = *(v43 + 48);
  v145 = v17;
  LODWORD(v126) = v44(v27, 1, v17);
  if (v126 == 1)
  {

    v45 = 0;
  }

  else
  {
    v46 = v128;
    v47 = v145;
    (*(v43 + 32))(v128, v27, v145);

    v48 = v129;
    sub_20CE124D4();
    sub_20CE12494();
    v45 = v49;
    v50 = *(v43 + 8);
    v50(v48, v47);
    v50(v46, v47);
  }

  v51 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_interruptionCount);
  v52 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalInterruptionDuration);
  v53 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram;
  v54 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram);
  v55 = v148;
  v138 = v37;
  *(&v133 + 1) = v39;
  *(&v131 + 1) = v40;
  v129 = v51;
  v128 = v52;
  v125 = v54;
  if (!v54)
  {
    v123 = 0;
    goto LABEL_10;
  }

  result = [v54 leftEarDiagnostic];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v57 = result;
  v58 = *(v3 + v53);
  v123 = v57;
  if (!v58)
  {
LABEL_10:
    v122 = 0;
    v121 = 1;
    v59 = v147;
    goto LABEL_11;
  }

  result = [v58 rightEarDiagnostic];
  v59 = v147;
  if (result < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v122 = result;
  v121 = 0;
LABEL_11:
  v120 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_instantaneousNoiseCount);
  v119 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_stationaryNoiseCount);
  v118 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalNoiseCount);
  v60 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_leftNoiseMetrics;
  swift_beginAccess();
  v61 = v124;
  sub_20CD911AC(v3 + v60, v124, &qword_27C8124A8, MEMORY[0x277D12D30]);
  v62 = *(v55 + 48);
  v63 = v62(v61, 1, v59);
  v64 = v127;
  v117 = v63;
  if (v63)
  {
    sub_20CD90E7C(v61, &qword_27C8124A8, MEMORY[0x277D12D30]);
    v65 = 0;
  }

  else
  {
    v66 = v144;
    (*(v55 + 16))(v144, v61, v59);
    sub_20CD90E7C(v61, &qword_27C8124A8, MEMORY[0x277D12D30]);
    sub_20CE126B4();
    v59 = v147;
    v65 = v67;
    (*(v55 + 8))(v66, v147);
  }

  v68 = v143;
  v69 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_rightNoiseMetrics;
  swift_beginAccess();
  sub_20CD911AC(v3 + v69, v64, &qword_27C8124A8, MEMORY[0x277D12D30]);
  v70 = v62(v64, 1, v59);
  if (v70)
  {
    sub_20CD90E7C(v64, &qword_27C8124A8, MEMORY[0x277D12D30]);
    v71 = 0;
  }

  else
  {
    v72 = v148;
    v73 = v144;
    (*(v148 + 16))(v144, v64, v59);
    sub_20CD90E7C(v64, &qword_27C8124A8, MEMORY[0x277D12D30]);
    sub_20CE126B4();
    v59 = v147;
    v71 = v74;
    v75 = v72;
    v68 = v143;
    (*(v75 + 8))(v73, v147);
  }

  sub_20CD911AC(v3 + v60, v68, &qword_27C8124A8, MEMORY[0x277D12D30]);
  v76 = v62(v68, 1, v59);
  if (v76)
  {
    sub_20CD90E7C(v68, &qword_27C8124A8, MEMORY[0x277D12D30]);
    v77 = 0;
  }

  else
  {
    v78 = v148;
    v79 = v144;
    (*(v148 + 16))(v144, v68, v59);
    sub_20CD90E7C(v68, &qword_27C8124A8, MEMORY[0x277D12D30]);
    sub_20CE12704();
    v59 = v147;
    v77 = v80;
    (*(v78 + 8))(v79, v147);
  }

  v81 = v3 + v69;
  v82 = v137;
  sub_20CD911AC(v81, v137, &qword_27C8124A8, MEMORY[0x277D12D30]);
  v83 = v62(v82, 1, v59);
  if (v83)
  {
    sub_20CD90E7C(v82, &qword_27C8124A8, MEMORY[0x277D12D30]);
    v84 = 0;
  }

  else
  {
    v85 = v148;
    v86 = v144;
    (*(v148 + 16))(v144, v82, v59);
    sub_20CD90E7C(v82, &qword_27C8124A8, MEMORY[0x277D12D30]);
    sub_20CE12704();
    v84 = v87;
    (*(v85 + 8))(v86, v59);
  }

  LODWORD(v148) = v83 != 0;
  LODWORD(v147) = v76 != 0;
  v116 = v70 != 0;
  v115 = v117 != 0;
  v114 = v125 == 0;
  v113 = v126 == 1;
  v144 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreLeft);
  LODWORD(v143) = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreLeft + 8);
  v137 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreRight);
  LODWORD(v127) = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreRight + 8);
  v126 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreLeft);
  LODWORD(v125) = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreLeft + 8);
  v124 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreRight);
  v117 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreRight + 8);
  v88 = type metadata accessor for HearingTestFlowMetric();
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  v91 = swift_allocObject();
  *(v91 + 40) = 16;
  *(v91 + 48) = 0;
  *(v91 + 56) = 0;
  *(v91 + 64) = 5;
  *(v91 + 72) = 0;
  *(v91 + 80) = 0;
  *(v91 + 104) = 514;
  *(v91 + 106) = 2;
  v92 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime;
  v93 = *(v146 + 56);
  v94 = v145;
  v93(v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime, 1, 1, v145);
  v95 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate;
  v93(v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate, 1, 1, v94);
  v96 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration;
  *v96 = 0;
  *(v96 + 8) = 1;
  v97 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration;
  *v97 = 0;
  *(v97 + 8) = 1;
  v98 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalDuration;
  *v98 = 0;
  *(v98 + 8) = 1;
  v99 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalInterruptionDuration;
  *v99 = 0;
  *(v99 + 8) = 1;
  v100 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftEarClassification;
  *v100 = 0;
  *(v100 + 8) = 1;
  v101 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightEarClassification;
  *v101 = 0;
  *(v101 + 8) = 1;
  *(v91 + 16) = v139;
  v102 = v134;
  *(v91 + 24) = v135;
  *(v91 + 32) = v102;
  *(v91 + 40) = v140;
  *(v91 + 48) = 0;
  *(v91 + 56) = 0;
  *(v91 + 64) = v136;
  v103 = v133;
  *(v91 + 88) = v131;
  *(v91 + 72) = v103;
  *(v91 + 104) = (v138 & 1) == 0;
  *(v91 + 105) = v132;
  *(v91 + 106) = v130;
  swift_beginAccess();
  sub_20CD83094(v141, v91 + v92);
  swift_endAccess();
  swift_beginAccess();
  sub_20CD83094(v142, v91 + v95);
  swift_endAccess();
  *v96 = 0;
  *(v96 + 8) = 1;
  *v97 = 0;
  *(v97 + 8) = 1;
  *v98 = v45;
  *(v98 + 8) = v113;
  *(v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_interruptionCount) = v129;
  *v99 = v128;
  *(v99 + 8) = 0;
  *v100 = v123;
  *(v100 + 8) = v114;
  *v101 = v122;
  *(v101 + 8) = v121;
  *(v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_instantaneousNoiseCount) = v120;
  *(v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stationaryNoiseCount) = v119;
  *(v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalNoiseCount) = v118;
  v104 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftInstNoise;
  *v104 = v65;
  *(v104 + 8) = v115;
  v105 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightInstNoise;
  *v105 = v71;
  *(v105 + 8) = v116;
  v106 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftStatNoise;
  *v106 = v77;
  *(v106 + 8) = v147;
  v107 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightStatNoise;
  *v107 = v84;
  *(v107 + 8) = v148;
  v108 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreLeft;
  *v108 = v144;
  *(v108 + 8) = v143;
  v109 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreRight;
  *v109 = v137;
  *(v109 + 8) = v127;
  v110 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreLeft;
  *v110 = v126;
  *(v110 + 8) = v125;
  v111 = v91 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreRight;
  *v111 = v124;
  *(v111 + 8) = v117;
  return v91;
}

uint64_t sub_20CD900D4(__int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = HIBYTE(a1);
  v5 = *(a2 + 40);
  sub_20CE14384();
  HearingTestFlowAnalyticsStep.rawValue.getter();
  sub_20CE139C4();

  sub_20CE143A4();
  if (v4 != 16)
  {
    HearingTestFlowActionType.rawValue.getter();
    sub_20CE139C4();
  }

  v7 = sub_20CE143B4();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v23 = ~v8;
  while (2)
  {
    v10 = (*(a2 + 48) + 2 * v9);
    v11 = v10[1];
    v12 = 0xEF64657472617453;
    v13 = 0x20676E6974746547;
    switch(*v10)
    {
      case 1:
        v13 = 0xD00000000000001DLL;
        v12 = 0x800000020CE1A690;
        break;
      case 2:
        v13 = 0xD00000000000001ELL;
        v12 = 0x800000020CE1A6B0;
        break;
      case 3:
        break;
      case 4:
        v13 = 0xD000000000000013;
        v12 = 0x800000020CE1A6E0;
        break;
      case 5:
        v13 = 0xD000000000000011;
        v12 = 0x800000020CE1A700;
        break;
      case 6:
        v13 = 0xD000000000000026;
        v12 = 0x800000020CE1A720;
        break;
      case 7:
        v13 = 0xD000000000000026;
        v12 = 0x800000020CE1A750;
        break;
      case 8:
        v13 = 0xD000000000000026;
        v12 = 0x800000020CE1A780;
        break;
      case 9:
        v13 = 0xD000000000000026;
        v12 = 0x800000020CE1A7B0;
        break;
      case 0xA:
        v12 = 0xEA00000000006E6FLL;
        v13 = 0x697461756C617645;
        break;
      case 0xB:
        v13 = 0xD00000000000002FLL;
        v12 = 0x800000020CE1A7F0;
        break;
      case 0xC:
        v12 = 0xE700000000000000;
        v13 = 0x73746C75736552;
        break;
      case 0xD:
        v13 = 0xD000000000000010;
        v12 = 0x800000020CE1A830;
        break;
      case 0xE:
        v13 = 0x7075727265746E49;
        v12 = 0xEC0000006E6F6974;
        break;
      case 0xF:
        v13 = 0xD000000000000014;
        v12 = 0x800000020CE1A850;
        break;
      default:
        v13 = 0xD000000000000013;
        v12 = 0x800000020CE1A670;
        break;
    }

    v14 = 0x20676E6974746547;
    v15 = 0xEF64657472617453;
    switch(v3)
    {
      case 1:
        v15 = 0x800000020CE1A690;
        if (v13 != 0xD00000000000001DLL)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 2:
        v15 = 0x800000020CE1A6B0;
        if (v13 != 0xD00000000000001ELL)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 3:
        goto LABEL_54;
      case 4:
        v15 = 0x800000020CE1A6E0;
        if (v13 != 0xD000000000000013)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 5:
        v15 = 0x800000020CE1A700;
        if (v13 != 0xD000000000000011)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 6:
        v15 = 0x800000020CE1A720;
        if (v13 != 0xD000000000000026)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 7:
        v15 = 0x800000020CE1A750;
        if (v13 != 0xD000000000000026)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 8:
        v15 = 0x800000020CE1A780;
        if (v13 != 0xD000000000000026)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 9:
        v15 = 0x800000020CE1A7B0;
        if (v13 != 0xD000000000000026)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 10:
        v15 = 0xEA00000000006E6FLL;
        v14 = 0x697461756C617645;
LABEL_54:
        if (v13 == v14)
        {
          goto LABEL_55;
        }

        goto LABEL_58;
      case 11:
        v15 = 0x800000020CE1A7F0;
        if (v13 != 0xD00000000000002FLL)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 12:
        v15 = 0xE700000000000000;
        if (v13 != 0x73746C75736552)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 13:
        v15 = 0x800000020CE1A830;
        if (v13 != 0xD000000000000010)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 14:
        v15 = 0xEC0000006E6F6974;
        if (v13 != 0x7075727265746E49)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 15:
        v15 = 0x800000020CE1A850;
        if (v13 != 0xD000000000000014)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      default:
        v15 = 0x800000020CE1A670;
        if (v13 != 0xD000000000000013)
        {
          goto LABEL_58;
        }

LABEL_55:
        if (v12 == v15)
        {
        }

        else
        {
LABEL_58:
          v16 = sub_20CE14284();

          if ((v16 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v17 = v4;
        v18 = 0xEA00000000007265;
        v19 = 0x746E452070657453;
        switch(v11)
        {
          case 0:
            goto LABEL_75;
          case 1:
            v17 = 107;
            v18 = 0xE900000000000074;
            v19 = 0x78654E2065766F4DLL;
            goto LABEL_75;
          case 2:
            v18 = 0xE90000000000006BLL;
            v19 = 0x6361422065766F4DLL;
            goto LABEL_75;
          case 3:
            v18 = 0xE400000000000000;
            v19 = 1701736260;
            goto LABEL_75;
          case 4:
            v19 = 0x46206C65636E6143;
            v18 = 0xEB00000000776F6CLL;
            goto LABEL_75;
          case 5:
            v19 = 0x764F207472617453;
            goto LABEL_75;
          case 6:
            v17 = 38;
            v19 = 0xD000000000000010;
            v18 = 0x800000020CE1A8A0;
            goto LABEL_75;
          case 7:
            v17 = 38;
            v19 = 0xD000000000000014;
            v18 = 0x800000020CE1A8C0;
            goto LABEL_75;
          case 8:
            v18 = 0xE700000000000000;
            v19 = 0x73736563637553;
            goto LABEL_75;
          case 9:
            v18 = 0xE700000000000000;
            v19 = 0x6572756C696146;
            goto LABEL_75;
          case 10:
            v19 = 0x74654420776F6853;
            v18 = 0xEC000000736C6961;
            goto LABEL_75;
          case 11:
            v19 = 0x74724120776F6853;
            v18 = 0xEC000000656C6369;
            goto LABEL_75;
          case 12:
            v17 = 38;
            v19 = 0xD000000000000015;
            v18 = 0x800000020CE1A900;
            goto LABEL_75;
          case 13:
            v17 = 38;
            v19 = 0xD00000000000001CLL;
            v18 = 0x800000020CE1A920;
            goto LABEL_75;
          case 14:
            v17 = 38;
            v19 = 0xD000000000000010;
            v18 = 0x800000020CE1A940;
            goto LABEL_75;
          case 15:
            v17 = 38;
            v19 = 0xD000000000000012;
            v18 = 0x800000020CE1A960;
            break;
          default:
            if (v4 != 16)
            {
              goto LABEL_9;
            }

            return 1;
        }

        break;
    }

LABEL_75:
    v20 = 0x746E452070657453;
    v21 = 0xEA00000000007265;
    switch(v17)
    {
      case 0:
        goto LABEL_103;
      case 1:
        v21 = 0xE900000000000074;
        if (v19 != 0x78654E2065766F4DLL)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 2:
        v21 = 0xE90000000000006BLL;
        if (v19 != 0x6361422065766F4DLL)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 3:
        v21 = 0xE400000000000000;
        if (v19 != 1701736260)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 4:
        v21 = 0xEB00000000776F6CLL;
        if (v19 != 0x46206C65636E6143)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 5:
        if (v19 != 0x764F207472617453)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 6:
        v21 = 0x800000020CE1A8A0;
        if (v19 != 0xD000000000000010)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 7:
        v21 = 0x800000020CE1A8C0;
        if (v19 != 0xD000000000000014)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 8:
        v21 = 0xE700000000000000;
        if (v19 != 0x73736563637553)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 9:
        v21 = 0xE700000000000000;
        if (v19 != 0x6572756C696146)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 10:
        v20 = 0x74654420776F6853;
        v21 = 0xEC000000736C6961;
LABEL_103:
        if (v19 == v20)
        {
          goto LABEL_104;
        }

        goto LABEL_105;
      case 11:
        v21 = 0xEC000000656C6369;
        if (v19 != 0x74724120776F6853)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 12:
        v21 = 0x800000020CE1A900;
        if (v19 != 0xD000000000000015)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 13:
        v21 = 0x800000020CE1A920;
        if (v19 != 0xD00000000000001CLL)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 14:
        v21 = 0x800000020CE1A940;
        if (v19 != 0xD000000000000010)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 15:
        v21 = 0x800000020CE1A960;
        if (v19 != 0xD000000000000012)
        {
          goto LABEL_105;
        }

LABEL_104:
        if (v18 != v21)
        {
LABEL_105:
          v22 = sub_20CE14284();

          if (v22)
          {
            return 1;
          }

LABEL_9:
          v9 = (v9 + 1) & v23;
          if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      default:
        goto LABEL_9;
    }
  }
}

void sub_20CD90B28()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C817780);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CD4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446466;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20CD96DCC(0xD00000000000001BLL, 0x800000020CE1C220, &v12);
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] %s called.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_endReason) = 5;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasCongestionSelected) = 2;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasLoudEnvironmentExposureSelected) = 2;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_isOlderThanMinimumAge) = 2;
  v11 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram);
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram) = 0;
}

uint64_t HearingTestFlowAnalyticsData.deinit()
{
  v1 = MEMORY[0x277CC9578];
  sub_20CD90E7C(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_flowStartTime, &qword_281111770, MEMORY[0x277CC9578]);
  v2 = *(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_pairedHeadPhoneProductType + 8);

  v3 = *(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_airPodsFirmware + 8);

  sub_20CD90E7C(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousTestCompleteDate, &qword_281111770, v1);

  v4 = MEMORY[0x277D12D30];
  sub_20CD90E7C(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_leftNoiseMetrics, &qword_27C8124A8, MEMORY[0x277D12D30]);
  sub_20CD90E7C(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_rightNoiseMetrics, &qword_27C8124A8, v4);
  v5 = *(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousSubmissions);

  v6 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_calendar;
  v7 = sub_20CE125B4();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_20CD90E7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_20CD90ED8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_20CD90ED8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t HearingTestFlowAnalyticsData.__deallocating_deinit()
{
  HearingTestFlowAnalyticsData.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HearingTestFlowAnalyticsData()
{
  result = qword_27C8124B0;
  if (!qword_27C8124B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CD90FD8()
{
  sub_20CD90ED8(319, &qword_281111770, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_20CD90ED8(319, &qword_27C8124A8, MEMORY[0x277D12D30]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_20CE125B4();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20CD911AC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_20CD90ED8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CD91218()
{
  v0 = *MEMORY[0x277D12788];
  v3 = sub_20CE13954();
  v4 = v1;
  result = MEMORY[0x20F312EF0](0x676E69726165482ELL, 0xEC00000074736554);
  qword_27C817868 = v3;
  unk_27C817870 = v4;
  return result;
}

uint64_t sub_20CD91284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE13104();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF3E0];
  v9 = MEMORY[0x277CDF458];
  sub_20CD93AF0(0, &qword_27C812430, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for SingleEarClassificationView();
  sub_20CD93964(v1 + *(v14 + 20), v13, &qword_27C812430, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_20CE12EB4();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_20CE13CC4();
    v18 = sub_20CE13294();
    sub_20CE12C84();

    sub_20CE130F4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t SingleEarClassificationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = sub_20CE13244();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2);
  v67 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = sub_20CE12EB4();
  v5 = *(v66 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v66);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CD9273C(0, &qword_27C8124C0, sub_20CD91D8C, sub_20CD922F4);
  v76 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v62[-v11];
  sub_20CD923D0();
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v13);
  v69 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CD9273C(0, &qword_27C812590, sub_20CD923D0, MEMORY[0x277CDE470]);
  v74 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v77 = &v62[-v18];
  v65 = sub_20CE13114();
  v94 = 0;
  v68 = v1;
  sub_20CD927B0(v1, &v79);
  v107 = v91;
  v108[0] = v92[0];
  *(v108 + 9) = *(v92 + 9);
  v103 = v87;
  v104 = v88;
  v105 = v89;
  v106 = v90;
  v99 = v83;
  v100 = v84;
  v101 = v85;
  v102 = v86;
  v95 = v79;
  v96 = v80;
  v97 = v81;
  v98 = v82;
  v109[11] = v90;
  v109[12] = v91;
  v110[0] = v92[0];
  *(v110 + 9) = *(v92 + 9);
  v109[8] = v87;
  v109[9] = v88;
  v109[10] = v89;
  v109[4] = v83;
  v109[5] = v84;
  v109[6] = v85;
  v109[7] = v86;
  v109[0] = v79;
  v109[1] = v80;
  v109[2] = v81;
  v109[3] = v82;
  v19 = MEMORY[0x277CE14B8];
  sub_20CD93964(&v95, v78, &qword_27C8124E0, sub_20CD91EF8, MEMORY[0x277CE14B8]);
  sub_20CD939D4(v109, &qword_27C8124E0, sub_20CD91EF8, v19);
  *(&v93[11] + 7) = v106;
  *(&v93[12] + 7) = v107;
  *(&v93[13] + 7) = v108[0];
  v93[14] = *(v108 + 9);
  *(&v93[7] + 7) = v102;
  *(&v93[8] + 7) = v103;
  *(&v93[9] + 7) = v104;
  *(&v93[10] + 7) = v105;
  *(&v93[3] + 7) = v98;
  *(&v93[4] + 7) = v99;
  *(&v93[5] + 7) = v100;
  *(&v93[6] + 7) = v101;
  *(v93 + 7) = v95;
  *(&v93[1] + 7) = v96;
  *(&v93[2] + 7) = v97;
  v63 = v94;
  v20 = sub_20CE132A4();
  v78[0] = 0;
  v64 = sub_20CE135F4();
  v22 = v21;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = v68;
  sub_20CD91284(v8);
  v24 = sub_20CD93330(v8);
  (*(v5 + 8))(v8, v66);

  v25 = &v12[*(v76 + 36)];
  v26 = *(sub_20CE12FE4() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_20CE13174();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #16.0 }

  *v25 = _Q0;
  sub_20CD922F4();
  *&v25[*(v34 + 36)] = 256;
  v35 = v93[10];
  *(v12 + 193) = v93[11];
  v36 = v93[13];
  *(v12 + 209) = v93[12];
  *(v12 + 225) = v36;
  *(v12 + 241) = v93[14];
  v37 = v93[6];
  *(v12 + 129) = v93[7];
  v38 = v93[9];
  *(v12 + 145) = v93[8];
  *(v12 + 161) = v38;
  *(v12 + 177) = v35;
  v39 = v93[2];
  *(v12 + 65) = v93[3];
  v40 = v93[5];
  *(v12 + 81) = v93[4];
  *(v12 + 97) = v40;
  *(v12 + 113) = v37;
  v41 = v93[1];
  *(v12 + 17) = v93[0];
  *(v12 + 33) = v41;
  *v12 = v65;
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = v63;
  *(v12 + 49) = v39;
  v12[264] = v20;
  *(v12 + 17) = xmmword_20CE16C10;
  *(v12 + 18) = xmmword_20CE16C10;
  v12[304] = 0;
  v42 = v64;
  *(v12 + 39) = v24;
  *(v12 + 40) = v42;
  *(v12 + 41) = v22;
  v43 = v67;
  sub_20CE13234();
  v44 = sub_20CD92484();
  v45 = v69;
  sub_20CE13494();
  (*(v70 + 8))(v43, v71);
  sub_20CD93BEC(v12, &qword_27C8124C0, sub_20CD91D8C, sub_20CD922F4, sub_20CD9273C);
  v46 = v23[1];
  *&v79 = *v23;
  *(&v79 + 1) = v46;
  sub_20CD935CC();

  v47 = sub_20CE13414();
  v49 = v48;
  v51 = v50;
  *&v79 = v76;
  *(&v79 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v52 = v73;
  sub_20CE13464();
  sub_20CD93620(v47, v49, v51 & 1);

  (*(v72 + 8))(v45, v52);
  v53 = v23[5];
  *&v79 = v23[4];
  *(&v79 + 1) = v53;

  MEMORY[0x20F312EF0](8236, 0xE200000000000000);
  v55 = v23[2];
  v54 = v23[3];

  MEMORY[0x20F312EF0](v55, v54);

  v56 = sub_20CE13414();
  v58 = v57;
  LOBYTE(v45) = v59;
  v60 = v77;
  sub_20CE12FB4();
  sub_20CD93620(v56, v58, v45 & 1);

  return sub_20CD72D30(v60);
}

void sub_20CD91D8C()
{
  if (!qword_27C8124C8)
  {
    sub_20CD92128(255, &qword_27C8124D0, sub_20CD91E44);
    sub_20CD922A0(255, &qword_27C812540, MEMORY[0x277CE0F78], MEMORY[0x277CE0F70], MEMORY[0x277CE0318]);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8124C8);
    }
  }
}

void sub_20CD91E44()
{
  if (!qword_27C8124D8)
  {
    sub_20CD93AF0(255, &qword_27C8124E0, sub_20CD91EF8, MEMORY[0x277CE14B8]);
    sub_20CD9223C(&qword_27C812538, &qword_27C8124E0, sub_20CD91EF8);
    v0 = sub_20CE13574();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8124D8);
    }
  }
}

void sub_20CD91EF8()
{
  if (!qword_27C8124E8)
  {
    sub_20CD91F60();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8124E8);
    }
  }
}

void sub_20CD91F60()
{
  if (!qword_27C8124F0)
  {
    sub_20CD93AF0(255, &qword_27C8124F8, sub_20CD92014, MEMORY[0x277CE14B8]);
    sub_20CD9223C(&qword_27C812530, &qword_27C8124F8, sub_20CD92014);
    v0 = sub_20CE13584();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8124F0);
    }
  }
}

void sub_20CD92014()
{
  if (!qword_27C812500)
  {
    v0 = MEMORY[0x277CE0BD8];
    v1 = MEMORY[0x277CDFAB8];
    sub_20CD922A0(255, &qword_27C812508, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    v2 = MEMORY[0x277CDFC50];
    sub_20CD92128(255, &qword_27C812510, sub_20CD9218C);
    sub_20CD922A0(255, &qword_27C812528, v0, v2, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, &qword_27C812500);
    }
  }
}

void sub_20CD92128(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE12FD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CD9218C()
{
  if (!qword_27C812518)
  {
    sub_20CD921EC();
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812518);
    }
  }
}

void sub_20CD921EC()
{
  if (!qword_27C812520)
  {
    v0 = sub_20CE13254();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812520);
    }
  }
}

uint64_t sub_20CD9223C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_20CD93AF0(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CD922A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_20CD922F4()
{
  if (!qword_27C812548)
  {
    sub_20CE12FE4();
    sub_20CD92388(&qword_27C812550, MEMORY[0x277CDFC08]);
    v0 = sub_20CE12ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812548);
    }
  }
}

uint64_t sub_20CD92388(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20CD923D0()
{
  if (!qword_27C812558)
  {
    sub_20CD9273C(255, &qword_27C8124C0, sub_20CD91D8C, sub_20CD922F4);
    sub_20CD92484();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C812558);
    }
  }
}

unint64_t sub_20CD92484()
{
  result = qword_27C812560;
  if (!qword_27C812560)
  {
    sub_20CD9273C(255, &qword_27C8124C0, sub_20CD91D8C, sub_20CD922F4);
    sub_20CD92564();
    sub_20CD92388(&qword_27C812588, sub_20CD922F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812560);
  }

  return result;
}

unint64_t sub_20CD92564()
{
  result = qword_27C812568;
  if (!qword_27C812568)
  {
    sub_20CD91D8C();
    sub_20CD925E4();
    sub_20CD926B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812568);
  }

  return result;
}

unint64_t sub_20CD925E4()
{
  result = qword_27C812570;
  if (!qword_27C812570)
  {
    sub_20CD92128(255, &qword_27C8124D0, sub_20CD91E44);
    sub_20CD92388(&qword_27C812578, sub_20CD91E44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812570);
  }

  return result;
}

unint64_t sub_20CD926B8()
{
  result = qword_27C812580;
  if (!qword_27C812580)
  {
    sub_20CD922A0(255, &qword_27C812540, MEMORY[0x277CE0F78], MEMORY[0x277CE0F70], MEMORY[0x277CE0318]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812580);
  }

  return result;
}

void sub_20CD9273C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_20CE12FD4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_20CD927B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_20CE131C4();
  LOBYTE(v43[0]) = 1;
  sub_20CD92B04(a1, &v45);
  v38 = v55;
  v39 = v56;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  v28 = v45;
  v29 = v46;
  v41[10] = v55;
  v41[11] = v56;
  v41[6] = v51;
  v41[7] = v52;
  v41[8] = v53;
  v41[9] = v54;
  v41[2] = v47;
  v41[3] = v48;
  v41[4] = v49;
  v41[5] = v50;
  v40 = v57[0];
  v42 = v57[0];
  v41[0] = v45;
  v41[1] = v46;
  v5 = MEMORY[0x277CE14B8];
  sub_20CD93964(&v28, v58, &qword_27C8124F8, sub_20CD92014, MEMORY[0x277CE14B8]);
  sub_20CD939D4(v41, &qword_27C8124F8, sub_20CD92014, v5);
  *(&v27[9] + 7) = v37;
  *(&v27[10] + 7) = v38;
  *(&v27[11] + 7) = v39;
  *(&v27[12] + 7) = v40;
  *(&v27[5] + 7) = v33;
  *(&v27[6] + 7) = v34;
  *(&v27[7] + 7) = v35;
  *(&v27[8] + 7) = v36;
  *(&v27[1] + 7) = v29;
  *(&v27[2] + 7) = v30;
  *(&v27[3] + 7) = v31;
  *(&v27[4] + 7) = v32;
  *(v27 + 7) = v28;
  v6 = v43[0];
  v43[0] = v4;
  v43[1] = 0;
  LOBYTE(v44[0]) = v6;
  v7 = v27[8];
  *(&v44[9] + 1) = v27[9];
  v8 = v27[9];
  *(&v44[10] + 1) = v27[10];
  v9 = v27[10];
  *(&v44[11] + 1) = v27[11];
  *(&v44[11] + 10) = *(&v27[11] + 9);
  v10 = v27[4];
  *(&v44[5] + 1) = v27[5];
  v11 = v27[5];
  *(&v44[6] + 1) = v27[6];
  v12 = v27[6];
  *(&v44[7] + 1) = v27[7];
  v13 = v27[7];
  *(&v44[8] + 1) = v27[8];
  v14 = v27[0];
  *(&v44[1] + 1) = v27[1];
  v15 = v27[1];
  *(&v44[2] + 1) = v27[2];
  v16 = v27[2];
  *(&v44[3] + 1) = v27[3];
  v17 = v27[3];
  *(&v44[4] + 1) = v27[4];
  *(v44 + 1) = v27[0];
  v55 = v44[9];
  v56 = v44[10];
  v57[0] = v44[11];
  *(v57 + 10) = *(&v27[11] + 9);
  v51 = v44[5];
  v52 = v44[6];
  v53 = v44[7];
  v54 = v44[8];
  v47 = v44[1];
  v48 = v44[2];
  v49 = v44[3];
  v50 = v44[4];
  v45 = v4;
  v46 = v44[0];
  v18 = v44[10];
  *(a2 + 160) = v44[9];
  *(a2 + 176) = v18;
  v19 = v57[1];
  *(a2 + 192) = v57[0];
  *(a2 + 208) = v19;
  v20 = v52;
  *(a2 + 96) = v51;
  *(a2 + 112) = v20;
  v21 = v54;
  *(a2 + 128) = v53;
  *(a2 + 144) = v21;
  v22 = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v22;
  v23 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v23;
  v24 = v46;
  *a2 = v45;
  *(a2 + 16) = v24;
  v69 = v8;
  v70 = v9;
  v71[0] = v27[11];
  *(v71 + 9) = *(&v27[11] + 9);
  v65 = v11;
  v66 = v12;
  v67 = v13;
  v68 = v7;
  v61 = v15;
  v62 = v16;
  v63 = v17;
  v64 = v10;
  v26[224] = 1;
  *(a2 + 224) = 0;
  *(a2 + 232) = 1;
  v58[0] = v4;
  v58[1] = 0;
  v59 = v6;
  v60 = v14;
  sub_20CD93A30(v43, v26);
  sub_20CD93A94(v58);
}

uint64_t sub_20CD92B04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v95 = a2;
  sub_20CD93AF0(0, &qword_27C8125C0, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  KeyPath = &v84 - v5;
  v97 = sub_20CE13354();
  v87 = *(v97 - 8);
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v97);
  v86 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  v96 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1[1];
  v120 = *a1;
  v121 = v8;
  v100 = sub_20CD935CC();

  v9 = sub_20CE13414();
  v11 = v10;
  v13 = v12;
  sub_20CE132C4();
  sub_20CE13314();
  sub_20CE13344();

  v14 = sub_20CE133E4();
  v16 = v15;
  v18 = v17;
  v99 = a1;

  sub_20CD93620(v9, v11, v13 & 1);

  LODWORD(v120) = sub_20CE13224();
  v19 = sub_20CE133C4();
  v93 = v20;
  v94 = v19;
  v101 = v21;
  v92 = v22;
  sub_20CD93620(v14, v16, v18 & 1);

  sub_20CE135F4();
  sub_20CE12F04();
  v90 = v122;
  v91 = v120;
  v88 = v125;
  v89 = v124;
  v109 = 1;
  v108 = v121;
  v107 = v123;
  v23 = v99[5];
  v112 = v99[4];
  v113 = v23;

  v24 = sub_20CE13414();
  v26 = v25;
  v28 = v27;
  sub_20CE13324();
  v30 = v86;
  v29 = v87;
  v31 = v97;
  (*(v87 + 104))(v86, *MEMORY[0x277CE0A10], v97);
  sub_20CE13374();

  (*(v29 + 8))(v30, v31);
  v32 = sub_20CE133E4();
  v34 = v33;
  v36 = v35;

  sub_20CD93620(v24, v26, v28 & 1);

  sub_20CE13314();
  v37 = sub_20CE133A4();
  v39 = v38;
  LOBYTE(v9) = v40;
  v97 = v41;
  sub_20CD93620(v32, v34, v36 & 1);

  v42 = *MEMORY[0x277CE09A0];
  v43 = sub_20CE132F4();
  v44 = *(v43 - 8);
  v45 = KeyPath;
  (*(v44 + 104))(KeyPath, v42, v43);
  (*(v44 + 56))(v45, 0, 1, v43);
  v46 = sub_20CE13394();
  v48 = v47;
  LOBYTE(v42) = v49;
  sub_20CD93620(v37, v39, v9 & 1);

  sub_20CD939D4(v45, &qword_27C8125C0, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  sub_20CE13504();
  v50 = sub_20CE133B4();
  v85 = v51;
  v86 = v50;
  LOBYTE(v39) = v52;
  v87 = v53;

  sub_20CD93620(v46, v48, v42 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v97) = v39 & 1;
  LOBYTE(v112) = v39 & 1;
  v54 = v99[3];
  v112 = v99[2];
  v113 = v54;

  v55 = sub_20CE13414();
  v57 = v56;
  LOBYTE(v43) = v58;
  sub_20CE132C4();
  v59 = sub_20CE133E4();
  v61 = v60;
  LOBYTE(v30) = v62;

  sub_20CD93620(v55, v57, v43 & 1);

  LODWORD(v112) = sub_20CE13224();
  v63 = sub_20CE133C4();
  v65 = v64;
  LOBYTE(v55) = v66;
  v68 = v67;
  sub_20CD93620(v59, v61, v30 & 1);

  v69 = v92 & 1;
  v105 = v92 & 1;
  v70 = v109;
  v71 = v108;
  v72 = v107;
  v104 = v92 & 1;
  v73 = v85;
  v74 = v86;
  *&v110 = v86;
  *(&v110 + 1) = v85;
  v111[0] = v97;
  *&v111[1] = v106[0];
  *&v111[4] = *(v106 + 3);
  v75 = v87;
  *&v111[8] = v87;
  *&v111[16] = KeyPath;
  *&v111[24] = 0;
  v111[26] = 1;
  v103 = 0;
  LOBYTE(v43) = v55 & 1;
  v102 = v55 & 1;
  v76 = v55 & 1;
  v78 = v94;
  v77 = v95;
  v79 = v101;
  *v95 = v94;
  v77[1] = v79;
  *(v77 + 16) = v69;
  v77[3] = v93;
  v77[4] = 0;
  *(v77 + 40) = v70;
  v77[6] = v91;
  *(v77 + 56) = v71;
  v80 = v89;
  v77[8] = v90;
  *(v77 + 72) = v72;
  v77[10] = v80;
  v77[11] = v88;
  v81 = v110;
  v82 = *v111;
  *(v77 + 123) = *&v111[11];
  *(v77 + 6) = v81;
  *(v77 + 7) = v82;
  v77[18] = 0x4010000000000000;
  *(v77 + 152) = 0;
  v77[20] = v63;
  v77[21] = v65;
  *(v77 + 176) = v76;
  v77[23] = v68;
  *(v77 + 96) = 256;
  sub_20CD93B54(v78, v79, v69);

  sub_20CD93B64(&v110, &v112);
  sub_20CD93B54(v63, v65, v43);

  sub_20CD93620(v63, v65, v43);

  v112 = v74;
  v113 = v73;
  v114 = v97;
  *v115 = v106[0];
  *&v115[3] = *(v106 + 3);
  v116 = v75;
  v117 = KeyPath;
  v118 = 0;
  v119 = 1;
  sub_20CD93BEC(&v112, &qword_27C812510, sub_20CD9218C, MEMORY[0x277CDFC50], sub_20CD92128);
  sub_20CD93620(v78, v101, v105);
}

void __swiftcall SingleEarClassificationView.Model.init(title:classification:sensitivity:)(HearingTestUI::SingleEarClassificationView::Model *__return_ptr retstr, Swift::String title, Swift::String classification, Swift::String sensitivity)
{
  retstr->title = title;
  retstr->classification = classification;
  retstr->sensitivity = sensitivity;
}

uint64_t sub_20CD93330(uint64_t a1)
{
  v2 = sub_20CE12EB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CDF3D0] || v7 == *MEMORY[0x277CDF3C0])
  {
    sub_20CE134C4();
    v8 = sub_20CE134F4();
  }

  else
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v9 = sub_20CE12CB4();
    __swift_project_value_buffer(v9, qword_27C817768);
    v10 = sub_20CE12C94();
    v11 = sub_20CE13CB4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_20CD96DCC(0x746E6174736E6F43, 0xE900000000000073, &v16);
      _os_log_impl(&dword_20CD70000, v10, v11, "[%{public}s] Missing adoption for new case of ColorScheme.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x20F314110](v13, -1, -1);
      MEMORY[0x20F314110](v12, -1, -1);
    }

    sub_20CE134C4();
    v8 = sub_20CE134F4();

    (*(v3 + 8))(v6, v2);
  }

  return v8;
}

unint64_t sub_20CD935CC()
{
  result = qword_27C813560;
  if (!qword_27C813560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813560);
  }

  return result;
}

uint64_t sub_20CD93620(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t type metadata accessor for SingleEarClassificationView()
{
  result = qword_27C8125A0;
  if (!qword_27C8125A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CD936C0()
{
  sub_20CD93AF0(319, &qword_27C812598, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
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

uint64_t sub_20CD93780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20CD937C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_20CD93824()
{
  result = qword_27C8125B0;
  if (!qword_27C8125B0)
  {
    sub_20CD9273C(255, &qword_27C812590, sub_20CD923D0, MEMORY[0x277CDE470]);
    sub_20CD9273C(255, &qword_27C8124C0, sub_20CD91D8C, sub_20CD922F4);
    sub_20CD92484();
    swift_getOpaqueTypeConformance2();
    sub_20CD92388(&qword_27C8125B8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8125B0);
  }

  return result;
}

uint64_t sub_20CD93964(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_20CD93AF0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_20CD939D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_20CD93AF0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_20CD93A30(uint64_t a1, uint64_t a2)
{
  sub_20CD91F60();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD93A94(uint64_t a1)
{
  sub_20CD91F60();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CD93AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_20CD93B54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20CD93B64(uint64_t a1, uint64_t a2)
{
  sub_20CD92128(0, &qword_27C812510, sub_20CD9218C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD93BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_20CD93C4C(uint64_t a1, uint64_t *a2)
{
  sub_20CD849AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD7DC78(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_20CD93D04@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  swift_beginAccess();
  return sub_20CD7DC78(v1 + v3, a1);
}

uint64_t sub_20CD93D5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20CD93E20(void *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  v7 = sub_20CE124E4();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_axIdBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v9 = &v3[v8];
  v10 = unk_27C817870;
  *v9 = qword_27C817868;
  *(v9 + 1) = v10;
  *&v3[OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager] = a1;

  v11 = a1;
  NoResultsViewController.Mode.title.getter();
  v12 = sub_20CE13914();

  v19 = v5;
  sub_20CD940C8();
  v13 = sub_20CE13914();

  v18.receiver = v3;
  v18.super_class = type metadata accessor for NoResultsViewController();
  v14 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, 0, 2);

  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setHidesBackButton_];

  return v15;
}

uint64_t NoResultsViewController.Mode.title.getter()
{
  if (*v0)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_6;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CD940C8()
{
  if (*v0)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_6;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_20CE12354();
}

void sub_20CD941CC()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for NoResultsViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  sub_20CD94BCC();
  v2 = [v0 headerView];
  [v2 setTitleStyle_];

  v3 = *&v1[OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager];
  v4 = *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer);
  sub_20CE12864();
  v5 = *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_requirementStatusManager);
  sub_20CE12A14();
  v6 = [objc_opt_self() boldButton];
  sub_20CD94340(v6, v1);
  v7 = [objc_opt_self() linkButton];
  sub_20CD94594(v7, v1);
  v8 = [v1 buttonTray];
  [v8 addButton_];

  v9 = [v1 buttonTray];
  [v9 addButton_];
}

void sub_20CD94340(void *a1, uint64_t a2)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v4 = sub_20CE13914();

  [a1 setTitle:v4 forState:{0, 0xE000000000000000}];

  [a1 addTarget:a2 action:sel_didTapRestart forControlEvents:64];
  v6 = *(a2 + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_axIdBase);
  v5 = *(a2 + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_axIdBase + 8);
  v7 = MEMORY[0x277D837D0];
  sub_20CD95440(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CE16360;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  strcpy((v8 + 48), "RestartButton");
  *(v8 + 62) = -4864;
  sub_20CD95440(0, &qword_27C8121F0, v7, MEMORY[0x277D83940]);
  sub_20CD95490(&qword_27C813740, &qword_27C8121F0, v7);

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [a1 setAccessibilityIdentifier_];
}

void sub_20CD94594(void *a1, uint64_t a2)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v4 = sub_20CE13914();

  [a1 setTitle:v4 forState:{0, 0xE000000000000000}];

  [a1 addTarget:a2 action:sel_didTapEnd forControlEvents:64];
  v6 = *(a2 + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_axIdBase);
  v5 = *(a2 + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_axIdBase + 8);
  v7 = MEMORY[0x277D837D0];
  sub_20CD95440(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CE16360;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = 0x6F74747542646E45;
  *(v8 + 56) = 0xE90000000000006ELL;
  sub_20CD95440(0, &qword_27C8121F0, v7, MEMORY[0x277D83940]);
  sub_20CD95490(&qword_27C813740, &qword_27C8121F0, v7);

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [a1 setAccessibilityIdentifier_];
}

uint64_t NoResultsViewController.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

uint64_t sub_20CD94BCC()
{
  sub_20CD849AC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_20CE124C4();
  v5 = sub_20CE124E4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v4, v0 + v6);
  swift_endAccess();
  v7 = (*(v0 + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v8 = *v7;
  v9 = v7[1];
  ObjectType = swift_getObjectType();
  v14[0] = 0;
  v11 = *(v9 + 48);
  swift_unknownObjectRetain();
  v11(v14, v0, &protocol witness table for NoResultsViewController, ObjectType, v9);
  return swift_unknownObjectRelease();
}

id NoResultsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20CE13914();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20CE13914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20CE13914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id NoResultsViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20CE13914();

  if (a4)
  {
    v12 = sub_20CE13914();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

uint64_t sub_20CD94F44()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id NoResultsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoResultsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NoResultsViewController()
{
  result = qword_27C8125F0;
  if (!qword_27C8125F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CD950E8()
{
  result = qword_27C8125D0;
  if (!qword_27C8125D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8125D0);
  }

  return result;
}

void sub_20CD95188()
{
  sub_20CD849AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for NoResultsViewController.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NoResultsViewController.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_20CD95440(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20CD95490(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_20CD95440(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_20CD954E8@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result isAppleInternalInstall];

  if (v4)
  {
    v5 = [objc_opt_self() defaultWorkspace];
    if (v5)
    {
      v6 = v5;
      v7 = sub_20CE13914();
      v8 = [v6 applicationIsInstalled_];

      if (v8)
      {
        static AirWaveDeepLinkBuilder.makeDeepLinkURL()(a1);

LABEL_13:
        v9 = 0;
        goto LABEL_14;
      }
    }

    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v10 = sub_20CE12CB4();
    __swift_project_value_buffer(v10, qword_27C817768);
    v11 = sub_20CE12C94();
    v12 = sub_20CE13CD4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_20CD96DCC(5001813, 0xE300000000000000, &v17);
      _os_log_impl(&dword_20CD70000, v11, v12, "[%{public}s] AirWave is not installed; falling back to Tap-To-Radar", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x20F314110](v14, -1, -1);
      MEMORY[0x20F314110](v13, -1, -1);
    }

    sub_20CD95740();
    goto LABEL_13;
  }

  v9 = 1;
LABEL_14:
  v15 = sub_20CE12474();
  v16 = *(*(v15 - 8) + 56);

  return v16(a1, v9, 1, v15);
}

void sub_20CD95740()
{
  v0 = objc_opt_self();
  v1 = sub_20CE13914();
  v2 = sub_20CE13914();
  v3 = [v0 hk:0 tapToRadarURLForBundleID:1568147 component:v1 title:v2 description:0 classification:0 reproducibility:0 keywords:2 autoDiagnostics:0 attachments:0 collaborationContactHandles:2 diagnosticExtensionOptions:?];

  sub_20CE12454();
}

void sub_20CD95834(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_20CD9589C()
{
  swift_getObjectType();
  sub_20CD96354();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedBehavior];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isAppleInternalInstall];

    if (v6)
    {
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v7 = sub_20CE12CB4();
      __swift_project_value_buffer(v7, qword_27C817780);
      v8 = sub_20CE12C94();
      v9 = sub_20CE13CD4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v21 = v11;
        *v10 = 136446210;
        v12 = sub_20CE14414();
        v14 = sub_20CD96DCC(v12, v13, &v21);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_20CD70000, v8, v9, "[%{public}s] User tapped to create a Radar.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x20F314110](v11, -1, -1);
        MEMORY[0x20F314110](v10, -1, -1);
      }

      sub_20CD954E8(v3);
      v15 = sub_20CE12474();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v3, 1, v15) == 1)
      {
        sub_20CD963AC(v3);
      }

      else
      {
        v17 = [objc_opt_self() defaultWorkspace];
        if (v17)
        {
          v18 = v17;
          v19 = sub_20CE12444();
          [v18 openSensitiveURL:v19 withOptions:0];
        }

        (*(v16 + 8))(v3, v15);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CD95B70(void *a1)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_20CD9589C();
}

void sub_20CD95C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = sub_20CE13914();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_20CE13914();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v10 = sub_20CE13914();

  v12 = [objc_opt_self() actionWithTitle:v10 style:0 handler:{0, 0xE000000000000000}];

  [v9 addAction_];
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = v5;
  }

  [v11 presentViewController:v9 animated:1 completion:0];
}

void sub_20CD95DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v6 = sub_20CE13914();

  v23 = [objc_opt_self() alertControllerWithTitle:0 message:v6 preferredStyle:{0, 0xE000000000000000}];

  sub_20CE12354();

  v7 = sub_20CE13914();

  v29 = a3;
  v30 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_20CD95834;
  v28 = &block_descriptor;
  v8 = _Block_copy(&aBlock);

  v20 = objc_opt_self();
  v9 = [v20 actionWithTitle:v7 style:0 handler:{v8, 0xE000000000000000}];
  _Block_release(v8);

  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v10 = qword_27C817868;
  v11 = unk_27C817870;
  v19 = qword_27C817868;
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20CE16360;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  *(v12 + 48) = 0xD000000000000010;
  *(v12 + 56) = 0x800000020CE1C5A0;
  aBlock = v12;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v13 = sub_20CE13914();

  [v9 setAccessibilityIdentifier_];

  sub_20CE12354();

  v14 = sub_20CE13914();

  v29 = a1;
  v30 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_20CD95834;
  v28 = &block_descriptor_3;
  v15 = _Block_copy(&aBlock);

  v16 = [v20 actionWithTitle:v14 style:2 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20CE16360;
  *(v17 + 32) = v19;
  *(v17 + 40) = v11;
  strcpy((v17 + 48), "Alert.Cancel");
  *(v17 + 61) = 0;
  *(v17 + 62) = -5120;
  aBlock = v17;

  sub_20CE138C4();

  v18 = sub_20CE13914();

  [v16 setAccessibilityIdentifier_];

  [v23 addAction_];
  [v23 addAction_];
  [v24 presentViewController:v23 animated:1 completion:0];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CD96354()
{
  if (!qword_27C812600)
  {
    sub_20CE12474();
    v0 = sub_20CE13F44();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812600);
    }
  }
}

uint64_t sub_20CD963AC(uint64_t a1)
{
  sub_20CD96354();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD96410(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_20CE126A4();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_20CE13B84();
  v3[10] = sub_20CE13B74();
  v8 = sub_20CE13B24();
  v3[11] = v8;
  v3[12] = v7;

  return MEMORY[0x2822009F8](sub_20CD9653C, v8, v7);
}

uint64_t sub_20CD9653C()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_20CD96670;
  v7 = v0[9];
  v8 = v0[3];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_20CD96670()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_20CD96790, v4, v3);
}

uint64_t sub_20CD96790()
{
  v41 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  (*(v4 + 16))(v3, v2, v5);
  v6 = (*(v4 + 88))(v3, v5);
  v7 = v6;
  if (v6 == *MEMORY[0x277D12C78])
  {
    (*(v0[7] + 96))(v0[8], v0[6]);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v8 = sub_20CE12CB4();
    __swift_project_value_buffer(v8, qword_27C817768);
    v9 = sub_20CE12C94();
    v10 = sub_20CE13CD4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[5];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v40 = v13;
      *v12 = 136446210;
      v14 = sub_20CE14414();
      v16 = sub_20CD96DCC(v14, v15, &v40);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] Real results are being ignored. Forcing inconclusive results.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x20F314110](v13, -1, -1);
      MEMORY[0x20F314110](v12, -1, -1);
    }

    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[6];
    v20 = v0[7];
    v21 = v0[2];
    sub_20CD7C52C();
    v23 = *(v22 + 48);
    v24 = *MEMORY[0x277D12C88];
    v25 = sub_20CE12724();
    (*(*(v25 - 8) + 104))(v21, v24, v25);
    sub_20CD7C2DC();
    swift_storeEnumTagMultiPayload();
    sub_20CE127D4();
    (*(v20 + 8))(v18, v19);
    (*(v20 + 104))(v21, v7, v19);
    v26 = sub_20CE127E4();
    (*(*(v26 - 8) + 8))(v17 + v23, v26);
    sub_20CD96BB0(v17);
  }

  else
  {
    v27 = v0[8];
    v28 = v0[9];
    v29 = v0[6];
    v30 = v0[7];
    v31 = v0[2];
    if (v6 == *MEMORY[0x277D12C70])
    {
      (*(v30 + 96))(v0[8], v0[6]);
      sub_20CD7C468();
      v33 = *(v32 + 64);
      (*(v30 + 32))(v31, v28, v29);
      v34 = sub_20CE12744();
      (*(*(v34 - 8) + 8))(v27 + v33, v34);
      v35 = sub_20CE12714();
      (*(*(v35 - 8) + 8))(v27, v35);
    }

    else
    {
      (*(v30 + 32))(v0[2], v0[9], v0[6]);
      (*(v30 + 8))(v27, v29);
    }
  }

  v37 = v0[8];
  v36 = v0[9];

  v38 = v0[1];

  return v38();
}

uint64_t sub_20CD96BB0(uint64_t a1)
{
  sub_20CD7C2DC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD96C0C(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t InconclusiveSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_20CD96CC0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CD7C660;

  return sub_20CD96410(a1, a2);
}

uint64_t sub_20CD96D6C(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_20CD96DCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20CD96E98(v11, 0, 0, 1, a1, a2);
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
    sub_20CD8A98C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_20CD96E98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20CD96FA4(a5, a6);
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
    result = sub_20CE14124();
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

uint64_t sub_20CD96FA4(uint64_t a1, unint64_t a2)
{
  v4 = sub_20CD96FF0(a1, a2);
  sub_20CD97120(&unk_2823BADC0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20CD96FF0(uint64_t a1, unint64_t a2)
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

  v6 = sub_20CD8DC7C(v5, 0);
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

  result = sub_20CE14124();
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
        v10 = sub_20CE13A04();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CD8DC7C(v10, 0);
        result = sub_20CE140C4();
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

uint64_t sub_20CD97120(uint64_t result)
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

  result = sub_20CD9720C(result, v12, 1, v3);
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

char *sub_20CD9720C(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CD8E7E4();
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

uint64_t dispatch thunk of InconclusiveSession.hearingTestStatusWithAverageNoise(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20CD7C660;

  return v10(a1, a2);
}

uint64_t sub_20CD97480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for InconclusiveSession();
  v7 = swift_allocObject();
  sub_20CD75924(&v9, v7 + 16);
  return v7;
}

uint64_t sub_20CD9750C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CE12914();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE12934();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v2, v9);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277D12CF8])
  {
    (*(v10 + 96))(v13, v9);
    v15 = *(v5 + 32);
    v15(v8, v13, v4);
    *(a1 + 24) = v4;
    *(a1 + 32) = &protocol witness table for HTEnviNoiseData;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    result = (v15)(boxed_opaque_existential_1, v8, v4);
    *(a1 + 40) = 0;
  }

  else if (v14 == *MEMORY[0x277D12D08])
  {
    (*(v10 + 96))(v13, v9);
    v18 = *(v5 + 32);
    v18(v8, v13, v4);
    *(a1 + 24) = v4;
    *(a1 + 32) = &protocol witness table for HTEnviNoiseData;
    v19 = __swift_allocate_boxed_opaque_existential_1(a1);
    result = (v18)(v19, v8, v4);
    *(a1 + 40) = 1;
  }

  else if (v14 == *MEMORY[0x277D12D00])
  {
    (*(v10 + 96))(v13, v9);
    v20 = *(v5 + 32);
    v20(v8, v13, v4);
    *(a1 + 24) = v4;
    *(a1 + 32) = &protocol witness table for HTEnviNoiseData;
    v21 = __swift_allocate_boxed_opaque_existential_1(a1);
    result = (v20)(v21, v8, v4);
    *(a1 + 40) = 2;
  }

  else
  {
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v22 = sub_20CE12CB4();
    __swift_project_value_buffer(v22, qword_27C8177B0);
    v23 = sub_20CE12C94();
    v24 = sub_20CE13CC4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_20CD96DCC(0xD000000000000011, 0x800000020CE1C670, &v29);
      _os_log_impl(&dword_20CD70000, v23, v24, "[%{public}s] Unknown case of HTEnviNoiseStatus.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x20F314110](v26, -1, -1);
      MEMORY[0x20F314110](v25, -1, -1);
    }

    v27 = MEMORY[0x277D84F90];
    *(a1 + 24) = &type metadata for EmptyNoiseData;
    *(a1 + 32) = &off_2823BC360;
    *a1 = v27;
    *(a1 + 8) = 0;
    *(a1 + 40) = 0;
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_20CD9797C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_20CD979C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HKHealthStore.latestAudiogramForHearingTestInitialData()()
{
  v1[6] = v0;
  v1[7] = swift_getObjectType();
  sub_20CD98BB0(0, &qword_27C812608, MEMORY[0x277CCB610]);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_20CE124E4();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = sub_20CE125A4();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v11 = sub_20CE125B4();
  v1[17] = v11;
  v12 = *(v11 - 8);
  v1[18] = v12;
  v13 = *(v12 + 64) + 15;
  v1[19] = swift_task_alloc();
  sub_20CD849AC();
  v15 = *(*(v14 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD97C48, 0, 0);
}

uint64_t sub_20CD97C48()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  sub_20CE12594();
  v5 = (*(v3 + 104))(v2, *MEMORY[0x277CC9988], v4);
  if (__OFSUB__(0, *MEMORY[0x277D11270]))
  {
    __break(1u);
  }

  else
  {
    v7 = v0[21];
    v46 = v0[20];
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[16];
    v45 = v0[17];
    v11 = v0[15];
    v44 = v0[14];
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[11];
    sub_20CE124D4();
    sub_20CE12584();
    v15 = v13;
    v16 = *(v12 + 8);
    v16(v15, v14);
    (*(v11 + 8))(v10, v44);
    (*(v9 + 8))(v8, v45);
    sub_20CD7DC78(v7, v46);
    if ((*(v12 + 48))(v46, 1, v14) == 1)
    {
      v17 = 0;
    }

    else
    {
      v18 = v0[20];
      v19 = v0[11];
      v17 = sub_20CE124A4();
      v16(v18, v19);
    }

    v20 = v0[10];
    v21 = objc_opt_self();
    v22 = [v21 predicateForSamplesWithStartDate:v17 endDate:0 options:0];
    v0[22] = v22;

    v23 = [v21 predicateForObjectsWithMetadataKey_];
    v0[23] = v23;
    sub_20CD98B04();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_20CE16F10;
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;
    sub_20CD83128(0, &qword_27C812618, 0x277CCAC30);
    v25 = v22;
    v26 = v23;
    v27 = sub_20CE13AA4();

    v28 = [objc_opt_self() andPredicateWithSubpredicates_];
    v0[24] = v28;

    v29 = MEMORY[0x277CCB570];
    sub_20CD98B58(0, &qword_27C812620, &qword_27C812628, MEMORY[0x277CCB570]);
    sub_20CD98BB0(0, &qword_27C812628, v29);
    v31 = *(*(v30 - 8) + 72);
    v32 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
    *(swift_allocObject() + 16) = xmmword_20CE16370;
    sub_20CD83128(0, &qword_27C812630, 0x277CCD038);
    v33 = [swift_getObjCClassFromMetadata() audiogramSampleType];
    sub_20CD83128(0, &qword_27C812610, 0x277CCD8A8);
    v34 = v28;
    sub_20CE13834();

    v35 = MEMORY[0x277CC89F0];
    sub_20CD98B58(0, &qword_27C812638, &qword_27C812640, MEMORY[0x277CC89F0]);
    sub_20CD98BB0(0, &qword_27C812640, v35);
    v37 = *(*(v36 - 8) + 72);
    v38 = (*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80);
    *(swift_allocObject() + 16) = xmmword_20CE16370;
    KeyPath = swift_getKeyPath();
    MEMORY[0x20F3117D0](KeyPath, 1);
    sub_20CE13844();
    v40 = *(MEMORY[0x277CCB608] + 4);
    v41 = swift_task_alloc();
    v0[25] = v41;
    *v41 = v0;
    v41[1] = sub_20CD9815C;
    v42 = v0[10];
    v6 = v0[8];
    v5 = v0[6];
  }

  return MEMORY[0x282120380](v5, v6);
}

uint64_t sub_20CD9815C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_20CD98744;
  }

  else
  {
    v5 = sub_20CD98270;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD98270()
{
  v66 = v0;
  v1 = v0[26];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[26];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v30 = sub_20CE12CB4();
    __swift_project_value_buffer(v30, qword_27C817780);
    v31 = sub_20CE12C94();
    v32 = sub_20CE13CD4();
    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[23];
    v34 = v0[24];
    v36 = v0[21];
    v37 = v0[22];
    v38 = v0[9];
    v39 = v0[10];
    v40 = v0[8];
    if (v33)
    {
      v64 = v0[10];
      v41 = v0[7];
      v62 = v0[21];
      v42 = swift_slowAlloc();
      v60 = v40;
      v43 = swift_slowAlloc();
      v65 = v43;
      *v42 = 136446210;
      v44 = sub_20CE14414();
      v58 = v37;
      v46 = sub_20CD96DCC(v44, v45, &v65);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_20CD70000, v31, v32, "[%{public}s] Could not find Hearing Test generated audiogram sample for hearing test initial data", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x20F314110](v43, -1, -1);
      MEMORY[0x20F314110](v42, -1, -1);

      (*(v38 + 8))(v64, v60);
      v47 = v62;
    }

    else
    {

      (*(v38 + 8))(v39, v40);
      v47 = v36;
    }

    sub_20CD85070(v47);
    v1 = 0;
    goto LABEL_23;
  }

LABEL_29:
  v2 = sub_20CE141C4();
  v3 = v0[26];
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v3 + 32;
  while (1)
  {
    if (v5)
    {
      v8 = MEMORY[0x20F313610](v4, v0[26]);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_28;
      }

      v8 = *(v7 + 8 * v4);
    }

    v9 = v8;
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v1 = v11;
      if ([v11 isFirstPartyHearingTestResult])
      {
        break;
      }
    }

    ++v4;
    if (v10 == v2)
    {
      v29 = v0[26];
      goto LABEL_17;
    }
  }

  v12 = v0[26];

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v13 = sub_20CE12CB4();
  __swift_project_value_buffer(v13, qword_27C817780);
  v14 = sub_20CE12C94();
  v15 = sub_20CE13CD4();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[24];
  v63 = v0[23];
  v18 = v0[21];
  v19 = v0[22];
  v20 = v0[9];
  v21 = v0[10];
  v22 = v0[8];
  if (v16)
  {
    v61 = v0[8];
    v23 = v0[7];
    v59 = v0[10];
    v24 = swift_slowAlloc();
    v57 = v19;
    v25 = swift_slowAlloc();
    v65 = v25;
    *v24 = 136446210;
    v26 = sub_20CE14414();
    v56 = v18;
    v28 = sub_20CD96DCC(v26, v27, &v65);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_20CD70000, v14, v15, "[%{public}s] Found a compatible sample", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x20F314110](v25, -1, -1);
    MEMORY[0x20F314110](v24, -1, -1);

    (*(v20 + 8))(v59, v61);
    sub_20CD85070(v56);
  }

  else
  {

    (*(v20 + 8))(v21, v22);
    sub_20CD85070(v18);
  }

LABEL_23:
  v49 = v0[20];
  v48 = v0[21];
  v50 = v0[19];
  v51 = v0[16];
  v52 = v0[13];
  v53 = v0[10];

  v54 = v0[1];

  return v54(v1);
}

uint64_t sub_20CD98744()
{
  v44 = v0;
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = v1;
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CB4();

  v42 = v5;
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  if (v6)
  {
    v40 = v0[24];
    v15 = v0[7];
    v41 = v0[22];
    v16 = swift_slowAlloc();
    v39 = v8;
    v17 = swift_slowAlloc();
    v43 = v17;
    *v16 = 136446466;
    v18 = sub_20CE14414();
    v38 = v10;
    v20 = sub_20CD96DCC(v18, v19, &v43);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[2];
    v37 = v14;
    v22 = *(v0[3] - 8);
    v23 = *(v22 + 64) + 15;
    swift_task_alloc();
    (*(v22 + 16))();
    v24 = sub_20CE13984();
    v26 = v25;

    v27 = sub_20CD96DCC(v24, v26, &v43);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_20CD70000, v4, v42, "[%{public}s] Failed to fetch latest audiogram: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v17, -1, -1);
    MEMORY[0x20F314110](v16, -1, -1);

    (*(v13 + 8))(v12, v37);
    v28 = v38;
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v28 = v10;
  }

  sub_20CD85070(v28);
  v30 = v0[20];
  v29 = v0[21];
  v31 = v0[19];
  v32 = v0[16];
  v33 = v0[13];
  v34 = v0[10];

  v35 = v0[1];

  return v35(0);
}

void sub_20CD98AA4(id *a1)
{
  v1 = [*a1 startDate];
  sub_20CE124B4();
}

void sub_20CD98B04()
{
  if (!qword_27C812230)
  {
    v0 = sub_20CE14264();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812230);
    }
  }
}

void sub_20CD98B58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_20CD98BB0(255, a3, a4);
    v5 = sub_20CE14264();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CD98BB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_20CD83128(255, &qword_27C812610, 0x277CCD8A8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_20CD98C2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_20CE12924() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_20CE12714();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD98D18, 0, 0);
}

uint64_t sub_20CD98D18()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  sub_20CE12704();
  sub_20CE126E4();
  sub_20CE126C4();
  sub_20CE126F4();
  v7 = *(v6 + 24);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_20CD98E98;
  v10 = v0[7];

  return v12(v10, v5, v6);
}

uint64_t sub_20CD98E98()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD99050, 0, 0);
  }

  else
  {
    v7 = v6[7];
    v8 = v6[4];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_20CD99050()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_20CD990E4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CD7C660;

  return sub_20CD98C2C(a1);
}

uint64_t sub_20CD9917C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20CD991C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CD99210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_20CD99234, 0, 0);
}

uint64_t sub_20CD99234()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 24);
  v3 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 0;
    if (!v3)
    {
      v5 = *(v1 + 16);
      v6 = *(v0 + 48);
      swift_beginAccess();
      v7 = *(v6 + 32);

      sub_20CD996F0(v5, v2);
      v8 = [v5 productName];
      if (v8)
      {
        v9 = v8;
        v10 = sub_20CE13954();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v14 = (v7 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_pairedHeadPhoneProductType);
      v15 = *(v7 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_pairedHeadPhoneProductType + 8);
      *v14 = v10;
      v14[1] = v12;

      v16 = *(v6 + 32);

      v17 = [v5 firmwareVersion];
      if (v17)
      {
        v18 = v17;
        v19 = sub_20CE13954();
        v21 = v20;
        sub_20CD99704(v5, v2);
      }

      else
      {
        sub_20CD99704(v5, v2);
        v19 = 0;
        v21 = 0;
      }

      v22 = (v16 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_airPodsFirmware);
      v23 = *(v16 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_airPodsFirmware + 8);
      *v22 = v19;
      v22[1] = v21;

      v13 = *(v0 + 8);
      goto LABEL_12;
    }
  }

  **(v0 + 56) = v4;
  type metadata accessor for PreTestError();
  swift_storeEnumTagMultiPayload();
  sub_20CD99698();
  swift_willThrowTypedImpl();
  v13 = *(v0 + 8);
LABEL_12:

  return v13();
}

uint64_t sub_20CD99438(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(type metadata accessor for PreTestError() - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v2[3] = v4;
  v6 = *v1;
  v5 = v1[1];
  v7 = swift_task_alloc();
  v2[4] = v7;
  *v7 = v2;
  v7[1] = sub_20CD99510;

  return sub_20CD99210(v6, v5, v4);
}

uint64_t sub_20CD99510()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    sub_20CD99634(*(v2 + 24), *(v2 + 16));
  }

  else
  {
    v6 = *(v2 + 24);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_20CD99634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreTestError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CD99698()
{
  result = qword_27C812648;
  if (!qword_27C812648)
  {
    type metadata accessor for PreTestError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812648);
  }

  return result;
}

uint64_t sub_20CD996F0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xBFu)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_20CD99704(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xBFu)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for ClassificationInfoView()
{
  result = qword_27C812650;
  if (!qword_27C812650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CD9978C()
{
  sub_20CD9AFE8(319, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20CD9AFE8(319, &qword_27C812598, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_20CD998BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CD99904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CD99998@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_20CD9AB60(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = type metadata accessor for BothEarsClassificationView();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD9AB38(0);
  v45 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD9AB10(0);
  v46 = v17;
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v44 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v44 - v25;
  sub_20CE13B84();
  v47 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = a1[5];
  v54 = a1[4];
  v55 = v27;
  v56 = a1[6];
  v28 = a1[2];
  v53 = a1[3];
  v52 = v28;
  v29 = *a1;
  v51 = a1[1];
  v50 = v29;
  v30 = *(v9 + 20);
  *(v12 + v30) = swift_getKeyPath();
  sub_20CD9AFE8(0, &qword_27C812390, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v31 = v55;
  v12[4] = v54;
  v12[5] = v31;
  v12[6] = v56;
  v32 = v51;
  *v12 = v50;
  v12[1] = v32;
  v33 = v53;
  v12[2] = v52;
  v12[3] = v33;
  sub_20CD9B04C(&v50, v57);
  sub_20CE135F4();
  sub_20CE12FF4();
  sub_20CD9B0A8(v12, v16, type metadata accessor for BothEarsClassificationView);
  v34 = &v16[*(v45 + 36)];
  v35 = v57[5];
  *(v34 + 4) = v57[4];
  *(v34 + 5) = v35;
  *(v34 + 6) = v57[6];
  v36 = v57[1];
  *v34 = v57[0];
  *(v34 + 1) = v36;
  v37 = v57[3];
  *(v34 + 2) = v57[2];
  *(v34 + 3) = v37;
  LOBYTE(v30) = sub_20CE132A4();
  sub_20CD9B0A8(v16, v24, sub_20CD9AB38);
  v38 = &v24[*(v46 + 36)];
  *v38 = v30;
  *(v38 + 8) = xmmword_20CE17020;
  *(v38 + 24) = xmmword_20CE17020;
  v38[40] = 0;
  sub_20CD9B0A8(v24, v26, sub_20CD9AB10);
  sub_20CD99ED8(a1, v8);
  sub_20CD9B110(v26, v21, sub_20CD9AB10);
  v39 = v49;
  sub_20CD9B110(v8, v49, sub_20CD9AB60);
  v40 = v48;
  sub_20CD9B110(v21, v48, sub_20CD9AB10);
  sub_20CD9AA98();
  v42 = v40 + *(v41 + 48);
  *v42 = 0x402C000000000000;
  *(v42 + 8) = 0;
  sub_20CD9B110(v39, v40 + *(v41 + 64), sub_20CD9AB60);
  sub_20CD9B1E4(v8, sub_20CD9AB60);
  sub_20CD9B1E4(v26, sub_20CD9AB10);
  sub_20CD9B1E4(v39, sub_20CD9AB60);
  sub_20CD9B1E4(v21, sub_20CD9AB10);
}

uint64_t sub_20CD99ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  sub_20CD9AD40();
  v45 = v3;
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v41 - v7;
  v8 = sub_20CE135B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v51 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  sub_20CD9AC58();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v50 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  sub_20CE13B84();
  v49 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v20 = sub_20CE13114();
  *(v20 + 1) = 0;
  v20[16] = 0;
  sub_20CD9B178(0, &qword_27C8126F8, sub_20CD9ACEC);
  sub_20CD9A424(a1, &v20[*(v21 + 44)]);
  sub_20CE135A4();
  v56 = sub_20CDAD1C4(0, *(*(a1 + 160) + 16), *(a1 + 160));
  swift_getKeyPath();
  sub_20CD9AE08(0);
  sub_20CD9AEA4(0);
  v44 = v14;
  sub_20CD9B2D8(&qword_27C8126F0, sub_20CD9AE08);
  v46 = v20;
  sub_20CD9B2D8(&qword_27C812700, sub_20CD9AEA4);
  v22 = v52;
  sub_20CE135C4();
  v23 = v50;
  sub_20CD9B110(v20, v50, sub_20CD9AC58);
  v55 = 0;
  v42 = *(v9 + 16);
  v42(v51, v14, v8);
  v54 = 0;
  v24 = v48;
  v25 = v8;
  v43 = *(v48 + 16);
  v26 = v53;
  v27 = v22;
  v28 = v45;
  v43(v53, v27, v45);
  v29 = v47;
  sub_20CD9B110(v23, v47, sub_20CD9AC58);
  sub_20CD9ABC8();
  v31 = v30;
  v32 = v29 + *(v30 + 48);
  v33 = v55;
  v34 = v9;
  *v32 = 0x4034000000000000;
  *(v32 + 8) = v33;
  v35 = v51;
  v42((v29 + *(v30 + 64)), v51, v25);
  v36 = v29 + *(v31 + 80);
  v37 = v54;
  *v36 = 0x4034000000000000;
  *(v36 + 8) = v37;
  v43((v29 + *(v31 + 96)), v26, v28);
  v38 = *(v24 + 8);
  v38(v52, v28);
  v39 = *(v34 + 8);
  v39(v44, v25);
  sub_20CD9B1E4(v46, sub_20CD9AC58);
  v38(v53, v28);
  v39(v35, v25);
  sub_20CD9B1E4(v50, sub_20CD9AC58);
}

uint64_t sub_20CD9A424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ClassificationDescriptionView();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a1 + 120);
  v12 = *(a1 + 128);
  v13 = *(a1 + 152);
  *v10 = *(a1 + 112);
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  v18 = *(a1 + 136);
  *(v10 + 24) = v18;
  *(v10 + 5) = v13;
  v14 = *(v4 + 20);
  *&v10[v14] = swift_getKeyPath();
  sub_20CD9AFE8(0, &qword_27C812390, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_20CD9B110(v10, v8, type metadata accessor for ClassificationDescriptionView);
  sub_20CD9B110(v8, a2, type metadata accessor for ClassificationDescriptionView);
  sub_20CD9AD20(0);
  v16 = a2 + *(v15 + 48);
  *v16 = 0;
  *(v16 + 8) = 1;

  sub_20CD9B1E4(v10, type metadata accessor for ClassificationDescriptionView);
  sub_20CD9B1E4(v8, type metadata accessor for ClassificationDescriptionView);
}

uint64_t sub_20CD9A64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  sub_20CD9AE3C();
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ClassificationHighlightView(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD9AF5C(0);
  v12 = v11;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  sub_20CE13B84();
  v33 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CD9B110(v32, v6, sub_20CD9AE3C);
  sub_20CD9B0A8(&v6[*(v3 + 48)], v10, type metadata accessor for ClassificationHighlightView.Model);
  v22 = *(v7 + 20);
  *&v10[v22] = swift_getKeyPath();
  sub_20CD9AFE8(0, &qword_27C812390, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_20CE135F4();
  sub_20CE12FF4();
  sub_20CD9B0A8(v10, v19, type metadata accessor for ClassificationHighlightView);
  v23 = &v19[*(v12 + 36)];
  v24 = v40;
  *(v23 + 4) = v39;
  *(v23 + 5) = v24;
  *(v23 + 6) = v41;
  v25 = v36;
  *v23 = v35;
  *(v23 + 1) = v25;
  v26 = v38;
  *(v23 + 2) = v37;
  *(v23 + 3) = v26;
  sub_20CD9B0A8(v19, v21, sub_20CD9AF5C);
  sub_20CD9B110(v21, v16, sub_20CD9AF5C);
  v27 = v34;
  sub_20CD9B110(v16, v34, sub_20CD9AF5C);
  sub_20CD9AED8(0);
  v29 = v27 + *(v28 + 48);
  *v29 = 0x4038000000000000;
  *(v29 + 8) = 0;
  sub_20CD9B1E4(v21, sub_20CD9AF5C);
  sub_20CD9B1E4(v16, sub_20CD9AF5C);
}

uint64_t sub_20CD9A9F4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20CE131B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_20CD9B178(0, &qword_27C812660, sub_20CD9AA64);
  return sub_20CD99998(v1, a1 + *(v3 + 44));
}

void sub_20CD9AA98()
{
  if (!qword_27C812670)
  {
    sub_20CD9AB10(255);
    sub_20CD9AB60(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C812670);
    }
  }
}

void sub_20CD9ABC8()
{
  if (!qword_27C812698)
  {
    sub_20CD9AC58();
    sub_20CE135B4();
    sub_20CD9AD40();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27C812698);
    }
  }
}

void sub_20CD9AC58()
{
  if (!qword_27C8126A0)
  {
    sub_20CD9ACEC(255);
    sub_20CD9B2D8(&qword_27C8126B8, sub_20CD9ACEC);
    v0 = sub_20CE13574();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8126A0);
    }
  }
}

void sub_20CD9AD40()
{
  if (!qword_27C8126C0)
  {
    sub_20CD9AE08(255);
    sub_20CD9AEA4(255);
    sub_20CD9B2D8(&qword_27C8126F0, sub_20CD9AE08);
    v0 = sub_20CE135D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8126C0);
    }
  }
}

void sub_20CD9AE3C()
{
  if (!qword_27C8126D0)
  {
    type metadata accessor for ClassificationHighlightView.Model(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8126D0);
    }
  }
}

void sub_20CD9AEF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_20CD9AF84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE12FD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CD9AFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_20CD9B0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CD9B110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_20CD9B178(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE12F54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CD9B1E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20CD9B244()
{
  if (!qword_27C812710)
  {
    sub_20CD9AA64(255);
    sub_20CD9B2D8(&qword_27C812718, sub_20CD9AA64);
    v0 = sub_20CE13584();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812710);
    }
  }
}

uint64_t sub_20CD9B2D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CD9B320()
{
  v1 = sub_20CE12FA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 != *MEMORY[0x277CDF9F8] && v6 != *MEMORY[0x277CDF9E0] && v6 != *MEMORY[0x277CDF9E8] && v6 != *MEMORY[0x277CDF9D8] && v6 != *MEMORY[0x277CDF9F0] && v6 != *MEMORY[0x277CDFA00] && v6 != *MEMORY[0x277CDFA10] && v6 != *MEMORY[0x277CDF988])
  {
    if (v6 == *MEMORY[0x277CDF998] || v6 == *MEMORY[0x277CDF9A8] || v6 == *MEMORY[0x277CDF9B8] || v6 == *MEMORY[0x277CDF9D0])
    {
      return 1;
    }

    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v18 = sub_20CE12CB4();
    __swift_project_value_buffer(v18, qword_27C817768);
    v19 = sub_20CE12C94();
    v20 = sub_20CE13CB4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_20CD96DCC(0x5463696D616E7944, 0xEF657A6953657079, &v24);
      _os_log_impl(&dword_20CD70000, v19, v20, "[%{public}s] Unhandled new DynamicTypeSize case.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x20F314110](v22, -1, -1);
      MEMORY[0x20F314110](v21, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  return 0;
}

id sub_20CD9B610()
{
  v0 = sub_20CE13EB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CE13E74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CE13F14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  sub_20CE13EF4();
  (*(v6 + 104))(v9, *MEMORY[0x277D74FD8], v5);
  sub_20CE13E84();
  (*(v1 + 104))(v4, *MEMORY[0x277D75020], v0);
  sub_20CE13E64();
  sub_20CE13EA4();
  sub_20CD83128(0, &qword_27C8127E0, 0x277D75220);
  (*(v11 + 16))(v15, v17, v10);
  v18 = sub_20CE13F24();
  if (qword_27C811D50 != -1)
  {
    swift_once();
  }

  [v18 setTintColor_];
  if (qword_27C811D58 != -1)
  {
    swift_once();
  }

  [v18 setTitleColor:qword_27C817898 forState:0];
  v19 = [v18 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 setTextAlignment_];
  }

  v21 = qword_27C811D38;
  v22 = v18;
  if (v21 != -1)
  {
    swift_once();
  }

  v24 = qword_27C812720;
  v23 = *algn_27C812728;
  v25 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20CE16360;
  *(v26 + 32) = v24;
  *(v26 + 40) = v23;
  strcpy((v26 + 48), "ActionButton");
  *(v26 + 61) = 0;
  *(v26 + 62) = -5120;
  v29[1] = v26;
  sub_20CDA1464(0, &qword_27C8121F0, v25, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v27 = sub_20CE13914();

  [v22 setAccessibilityIdentifier_];

  (*(v11 + 8))(v17, v10);
  return v22;
}

uint64_t sub_20CD9BADC()
{
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v1 = qword_27C817868;
  v0 = unk_27C817870;
  v2 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CE16360;
  *(v3 + 32) = v1;
  *(v3 + 40) = v0;
  *(v3 + 48) = 0x697461756C617645;
  *(v3 + 56) = 0xEA00000000006E6FLL;
  sub_20CDA1464(0, &qword_27C8121F0, v2, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v4 = sub_20CE138C4();
  v6 = v5;

  qword_27C812720 = v4;
  *algn_27C812728 = v6;
  return result;
}

id sub_20CD9BC2C()
{
  v1 = sub_20CE13384();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LabelledProgressView();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView;
  v12 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView);
  }

  else
  {
    v14 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_progressViewModel);
    v25 = *(v8 + 20);
    v26 = 0x4008000000000000;
    v15 = *(v2 + 104);
    v16 = v8;
    v15(v5, *MEMORY[0x277CE0AA0], v1);
    sub_20CDA1354();

    sub_20CE12EE4();
    v17 = *(v16 + 24);
    v26 = 0x4020000000000000;
    v15(v5, *MEMORY[0x277CE0A90], v1);
    sub_20CE12EE4();
    *v10 = v14;
    sub_20CDA13A8();
    v19 = objc_allocWithZone(v18);
    v20 = v0;
    v21 = sub_20CE12F84();
    v22 = *(v0 + v11);
    *(v20 + v11) = v21;
    v13 = v21;

    v12 = 0;
  }

  v23 = v12;
  return v13;
}

void sub_20CD9BE44(void *a1)
{
  [a1 setNumberOfLines_];
  [a1 setTextAlignment_];
  [a1 setAdjustsFontSizeToFitWidth_];
  sub_20CD83128(0, &qword_27C812758, 0x277D74300);
  v2 = *MEMORY[0x277D76A08];
  v3 = *MEMORY[0x277D74420];
  v4 = sub_20CE13E04();
  [a1 setFont_];

  if (qword_27C811D40 != -1)
  {
    swift_once();
  }

  [a1 setTextColor_];
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v5 = sub_20CE13914();

  [a1 setText_];

  if (qword_27C811D38 != -1)
  {
    swift_once();
  }

  v7 = qword_27C812720;
  v6 = *algn_27C812728;
  v8 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CE16360;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = 0x65636E6164697547;
  *(v9 + 56) = 0xE800000000000000;
  sub_20CDA1464(0, &qword_27C8121F0, v8, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v10 = sub_20CE13914();

  [a1 setAccessibilityIdentifier_];
}

id HTUIEvaluationViewController.View.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HTUIEvaluationViewController.View.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_didTapHearHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton;
  *&v5[v11] = sub_20CD9B610();
  *&v5[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView] = 0;
  v12 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_metalAnimation;
  *&v5[v12] = [objc_allocWithZone(type metadata accessor for EvaluationVFXView()) init];
  v13 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageTitle;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTextAlignment_];
  [v14 setAdjustsFontSizeToFitWidth_];
  if (qword_27C811D40 != -1)
  {
    swift_once();
  }

  v56 = qword_27C817880;
  [v14 setTextColor_];
  sub_20CD83128(0, &qword_27C812758, 0x277D74300);
  v15 = *MEMORY[0x277D74420];
  v55 = *MEMORY[0x277D76A08];
  v16 = sub_20CE13E04();
  [v14 setFont_];

  if (qword_27C811D38 != -1)
  {
    swift_once();
  }

  v18 = qword_27C812720;
  v17 = *algn_27C812728;
  v19 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20CE16360;
  v57 = v18;
  *(v20 + 32) = v18;
  *(v20 + 40) = v17;
  *(v20 + 48) = 0x656C746954;
  *(v20 + 56) = 0xE500000000000000;
  v59 = v20;
  sub_20CDA1464(0, &qword_27C8121F0, v19, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v21 = sub_20CE13914();

  [v14 setAccessibilityIdentifier_];

  *&v5[v13] = v14;
  v22 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageBody;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_27C811D48 != -1)
  {
    swift_once();
  }

  [v23 setTextColor_];
  [v23 setNumberOfLines_];
  [v23 setTextAlignment_];
  [v23 setAdjustsFontSizeToFitWidth_];
  v24 = *MEMORY[0x277D76A28];
  v25 = sub_20CE13E04();
  [v23 setFont_];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20CE16360;
  *(v26 + 32) = v18;
  *(v26 + 40) = v17;
  *(v26 + 48) = 2036625218;
  *(v26 + 56) = 0xE400000000000000;
  v59 = v26;

  sub_20CE138C4();

  v27 = sub_20CE13914();

  [v23 setAccessibilityIdentifier_];

  *&v5[v22] = v23;
  v28 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageStack;
  v29 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v29 setSpacing_];
  [v29 setAxis_];
  [v29 setAlignment_];
  *&v5[v28] = v29;
  v30 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_guidanceTitle;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_20CD9BE44(v31);
  *&v5[v30] = v31;
  v54 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_completionLabel;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v32 setTextAlignment_];
  [v32 setNumberOfLines_];
  [v32 setAdjustsFontSizeToFitWidth_];
  [v32 setTextColor_];
  v33 = sub_20CE13E04();
  [v32 setFont_];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v34 = sub_20CE12354();
  sub_20CE0B9C8(v34, v35);

  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20CE16360;
  *(v36 + 32) = v18;
  *(v36 + 40) = v17;
  strcpy((v36 + 48), "CompletionText");
  *(v36 + 63) = -18;
  v59 = v36;

  sub_20CE138C4();

  v37 = sub_20CE13914();

  [v32 setAccessibilityIdentifier_];

  *&v5[v54] = v32;
  v38 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_captionLabel;
  v39 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v39 setNumberOfLines_];
  [v39 setTextAlignment_];
  [v39 setTextColor_];
  v40 = *MEMORY[0x277D76938];
  v41 = sub_20CE13E04();
  [v39 setFont_];

  sub_20CE12354();
  v42 = sub_20CE13914();

  [v39 setText_];

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20CE16360;
  *(v43 + 32) = v57;
  *(v43 + 40) = v17;
  *(v43 + 48) = 0x6E6F6974706143;
  *(v43 + 56) = 0xE700000000000000;
  v59 = v43;

  sub_20CE138C4();

  v44 = sub_20CE13914();

  [v39 setAccessibilityIdentifier_];

  *&v5[v38] = v39;
  v45 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_progressViewModel;
  v46 = type metadata accessor for LabelledProgressView.Model();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v49 = swift_allocObject();
  *(v49 + 32) = 0;
  *(v49 + 40) = 0;
  *(v49 + 56) = 1;
  sub_20CE12B24();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0xE000000000000000;
  v50 = *(v49 + 40);

  *(v49 + 64) = 0;
  *(v49 + 40) = 0;
  *(v49 + 48) = 0;
  *(v49 + 32) = 0;
  *&v5[v45] = v49;
  v51 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_tapHearButton;
  *&v5[v51] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v5[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state] = 2;
  *&v5[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_marginDependentConstraints] = MEMORY[0x277D84F90];
  v58.receiver = v5;
  v58.super_class = type metadata accessor for HTUIEvaluationViewController.View();
  v52 = objc_msgSendSuper2(&v58, sel_initWithFrame_, a1, a2, a3, a4);
  sub_20CD9CD14();
  [v52 setupSubviews];
  sub_20CD9D190();

  return v52;
}

uint64_t sub_20CD9CD14()
{
  swift_getObjectType();
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_20CDA14B4;
  *(v3 + 24) = v2;
  v11[4] = sub_20CDA14BC;
  v11[5] = v3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_20CD9D01C;
  v11[3] = &block_descriptor_91;
  v4 = _Block_copy(v11);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = [objc_opt_self() systemBackgroundColor];
    [v5 setBackgroundColor_];

    [*&v5[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_tapHearButton] addTarget:v5 action:sel_didTapHear forControlEvents:64];
    sub_20CDA14E4();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20CE16370;
    v9 = sub_20CE12D34();
    v10 = MEMORY[0x277D74DB8];
    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    sub_20CE13E14();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CD9CF60(uint64_t a1)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);
  sub_20CD9EDC8(&v3);
}

id sub_20CD9D044()
{
  v1 = *&v0[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageStack];
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  [v0 addSubview_];
  v2 = sub_20CD9BC2C();
  [v0 addSubview_];

  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_tapHearButton];

  return [v0 addSubview_];
}

void sub_20CD9D190()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_20CDA05FC();
  v5 = sub_20CD9BC2C();
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView;
  v7 = [*&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView] leadingAnchor];
  v8 = [v1 safeAreaLayoutGuide];
  v9 = [v8 &selRef_initWithName_manufacturer_model_hardwareVersion_firmwareVersion_softwareVersion_localIdentifier_UDIDeviceIdentifier_ + 1];

  v10 = [v7 constraintEqualToAnchor_];
  [v10 setActive_];

  v11 = [*&v1[v6] trailingAnchor];
  v12 = [v1 safeAreaLayoutGuide];
  v13 = [v12 &selRef_mediaAssistEnabled + 4];

  v14 = [v11 &selRef_class + 5];
  [v14 &selRef:1 worldWithURL:? options:? error:?];

  v15 = [*&v1[v6] topAnchor];
  v16 = [v1 safeAreaLayoutGuide];
  v17 = [v16 &selRef_handleTap];

  v18 = [v15 constraintEqualToAnchor:v17 constant:14.0];
  [v18 &selRef:1 worldWithURL:? options:? error:?];

  v19 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_metalAnimation];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [v19 &selRef_handleTap];
  v21 = [v1 &selRef_handleTap];
  v22 = [v20 &selRef_class + 5];

  [v22 &selRef:1 worldWithURL:? options:? error:?];
  v23 = [v19 bottomAnchor];
  v24 = [v1 &selRef_healthDataSource + 5];
  v25 = [v23 &selRef_class + 5];

  [v25 &selRef:1 worldWithURL:? options:? error:?];
  v26 = [v19 leadingAnchor];
  v27 = [v1 leadingAnchor];
  v28 = [v26 &selRef_class + 5];

  [v28 &selRef:1 worldWithURL:? options:? error:?];
  v29 = [v19 &selRef_mediaAssistEnabled + 4];
  v30 = [v1 &selRef_mediaAssistEnabled + 4];
  v31 = [v29 &selRef_class + 5];

  [v31 &selRef:1 worldWithURL:? options:? error:?];
  v32 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v1 addLayoutGuide_];
  v33 = [v32 &selRef_handleTap];
  v34 = [v1 &selRef_handleTap];
  v35 = [v33 &selRef_class + 5];

  [v35 &selRef:1 worldWithURL:? options:? error:?];
  v36 = [v32 heightAnchor];
  v37 = [v1 &selRef_initWithFrame_ + 2];
  v38 = [v36 constraintEqualToAnchor:v37 multiplier:0.47];

  [v38 &selRef:1 worldWithURL:? options:? error:?];
  v39 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageStack];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = [v39 centerXAnchor];
  v41 = [v1 safeAreaLayoutGuide];
  v42 = [v41 &selRef_zone + 2];

  v43 = [v40 &selRef_class + 5];
  [v43 &selRef:1 worldWithURL:? options:? error:?];

  v44 = [v39 centerYAnchor];
  v162 = v32;
  v45 = [v32 bottomAnchor];
  v46 = [v44 &selRef_class + 5];

  [v46 &selRef:1 worldWithURL:? options:? error:?];
  sub_20CDA1464(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CE16F10;
  v48 = [v39 leadingAnchor];
  v49 = [v1 safeAreaLayoutGuide];
  v50 = [v49 leadingAnchor];

  v51 = [v48 constraintGreaterThanOrEqualToAnchor:v50 constant:v4];
  *(inited + 32) = v51;
  v52 = [v39 trailingAnchor];
  v53 = [v1 safeAreaLayoutGuide];
  v54 = [v53 trailingAnchor];

  v55 = [v52 constraintLessThanOrEqualToAnchor:v54 constant:-v4];
  *(inited + 40) = v55;
  v164 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_marginDependentConstraints;
  swift_beginAccess();
  sub_20CDE528C(inited);
  swift_endAccess();
  v56 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v1 addLayoutGuide_];
  v57 = [v56 topAnchor];
  v58 = [v1 safeAreaLayoutGuide];
  v59 = [v58 topAnchor];

  v60 = [v57 constraintEqualToAnchor_];
  [v60 &selRef:1 worldWithURL:? options:? error:?];

  v61 = [v56 heightAnchor];
  v62 = [v1 safeAreaLayoutGuide];
  v63 = [v62 heightAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 multiplier:0.82];
  [v64 &selRef:1 worldWithURL:? options:? error:?];

  v65 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v1 addLayoutGuide_];
  v163 = v65;
  v66 = [v65 topAnchor];
  v67 = [v1 safeAreaLayoutGuide];
  v68 = [v67 topAnchor];

  v69 = [v66 constraintEqualToAnchor_];
  [v69 &selRef:1 worldWithURL:? options:? error:?];

  v70 = [v65 heightAnchor];
  v71 = [v1 safeAreaLayoutGuide];
  v72 = [v71 heightAnchor];

  v73 = [v70 constraintEqualToAnchor:v72 multiplier:0.94];
  [v73 &selRef:1 worldWithURL:? options:? error:?];

  v74 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_guidanceTitle];
  [v74 setTranslatesAutoresizingMaskIntoConstraints_];
  v75 = [v74 centerXAnchor];
  v76 = [v1 safeAreaLayoutGuide];
  v77 = [v76 centerXAnchor];

  v78 = [v75 constraintEqualToAnchor_];
  [v78 &selRef:1 worldWithURL:? options:? error:?];

  v79 = [v74 centerYAnchor];
  v161 = v56;
  v80 = [v56 bottomAnchor];
  v81 = [v79 &selRef_class + 5];

  [v81 &selRef:1 worldWithURL:? options:? error:?];
  v82 = swift_initStackObject();
  *(v82 + 16) = xmmword_20CE16350;
  v83 = [v74 bottomAnchor];
  v84 = [v1 safeAreaLayoutGuide];
  v85 = [v84 bottomAnchor];

  v86 = [v83 constraintLessThanOrEqualToAnchor:v85 constant:-v4];
  *(v82 + 32) = v86;
  v87 = [v74 leadingAnchor];
  v88 = [v1 &off_277DAD130 + 2];
  v89 = [v88 leadingAnchor];

  v90 = [v87 constraintGreaterThanOrEqualToAnchor:v89 constant:v4];
  *(v82 + 40) = v90;
  v91 = [v74 trailingAnchor];
  v92 = [v1 &off_277DAD130 + 2];
  v93 = [v92 trailingAnchor];

  v94 = [v91 constraintLessThanOrEqualToAnchor:v93 constant:-v4];
  *(v82 + 48) = v94;
  swift_beginAccess();
  sub_20CDE528C(v82);
  swift_endAccess();
  v95 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_completionLabel];
  [v95 setTranslatesAutoresizingMaskIntoConstraints_];
  v96 = [v95 centerXAnchor];
  v97 = [v1 &off_277DAD130 + 2];
  v98 = [v97 centerXAnchor];

  v99 = [v96 constraintEqualToAnchor_];
  [v99 setActive_];

  v100 = [v95 bottomAnchor];
  v101 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_captionLabel];
  v102 = [v101 topAnchor];
  v103 = [v100 constraintLessThanOrEqualToAnchor:v102 constant:-v4];

  [v103 setActive_];
  v104 = [v95 centerYAnchor];
  v105 = [*&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageTitle] centerYAnchor];
  v106 = [v104 constraintEqualToAnchor_];

  LODWORD(v107) = 1144750080;
  [v106 setPriority_];
  v160 = v106;
  [v106 setActive_];
  v108 = swift_initStackObject();
  *(v108 + 16) = xmmword_20CE16F10;
  v109 = [v95 leadingAnchor];
  v110 = [v1 safeAreaLayoutGuide];
  v111 = [v110 leadingAnchor];

  v112 = [v109 constraintGreaterThanOrEqualToAnchor:v111 constant:v4];
  *(v108 + 32) = v112;
  v113 = [v95 trailingAnchor];
  v114 = [v1 safeAreaLayoutGuide];
  v115 = [v114 trailingAnchor];

  v116 = [v113 constraintLessThanOrEqualToAnchor:v115 constant:-v4];
  *(v108 + 40) = v116;
  swift_beginAccess();
  sub_20CDE528C(v108);
  swift_endAccess();
  [v101 setTranslatesAutoresizingMaskIntoConstraints_];
  v117 = [v101 centerXAnchor];
  v118 = [v1 safeAreaLayoutGuide];
  v119 = [v118 centerXAnchor];

  v120 = [v117 constraintEqualToAnchor_];
  [v120 setActive_];

  v121 = swift_initStackObject();
  *(v121 + 16) = xmmword_20CE16350;
  v122 = [v101 bottomAnchor];
  v123 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton];
  v124 = [v123 topAnchor];
  v125 = [v122 constraintEqualToAnchor:v124 constant:v4 * -0.5];

  *(v121 + 32) = v125;
  v126 = [v101 leadingAnchor];
  v127 = [v1 &off_277DAD130 + 2];
  v128 = [v127 leadingAnchor];

  v129 = [v126 constraintGreaterThanOrEqualToAnchor:v128 constant:v4];
  *(v121 + 40) = v129;
  v130 = [v101 trailingAnchor];
  v131 = [v1 &off_277DAD130 + 2];
  v132 = [v131 trailingAnchor];

  v133 = [v130 constraintLessThanOrEqualToAnchor:v132 constant:-v4];
  *(v121 + 48) = v133;
  swift_beginAccess();
  sub_20CDE528C(v121);
  swift_endAccess();
  [v123 setTranslatesAutoresizingMaskIntoConstraints_];
  v134 = [v123 bottomAnchor];
  v135 = [v163 bottomAnchor];
  v136 = [v134 constraintEqualToAnchor_];

  [v136 setActive_];
  v137 = [v123 centerXAnchor];
  v138 = [v1 safeAreaLayoutGuide];
  v139 = [v138 centerXAnchor];

  v140 = [v137 constraintEqualToAnchor_];
  [v140 setActive_];

  v141 = [v123 widthAnchor];
  v142 = [v141 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v143) = 1144750080;
  [v142 setPriority_];
  [v142 setActive_];

  v144 = swift_initStackObject();
  *(v144 + 16) = xmmword_20CE16F10;
  v145 = [v123 leadingAnchor];
  v146 = [v1 safeAreaLayoutGuide];
  v147 = [v146 leadingAnchor];

  v148 = [v145 constraintGreaterThanOrEqualToAnchor:v147 constant:v4];
  *(v144 + 32) = v148;
  v149 = [v123 &selRef_mediaAssistEnabled + 4];
  v150 = [v1 safeAreaLayoutGuide];
  v151 = [v150 &selRef_mediaAssistEnabled + 4];

  v152 = [v149 constraintLessThanOrEqualToAnchor:v151 constant:-v4];
  *(v144 + 40) = v152;
  swift_beginAccess();
  sub_20CDE528C(v144);
  swift_endAccess();
  v153 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_tapHearButton];
  [v153 setTranslatesAutoresizingMaskIntoConstraints_];
  [v153 hk:v1 alignConstraintsWithView:?];
  v154 = *&v1[v164];
  if (v154 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20CE141C4())
  {

    if (!i)
    {
      break;
    }

    v156 = 0;
    while (1)
    {
      if ((v154 & 0xC000000000000001) != 0)
      {
        v157 = MEMORY[0x20F313610](v156, v154);
      }

      else
      {
        if (v156 >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v157 = *(v154 + 8 * v156 + 32);
      }

      v158 = v157;
      v159 = v156 + 1;
      if (__OFADD__(v156, 1))
      {
        break;
      }

      sub_20CE13B84();
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v158 setActive_];

      ++v156;
      if (v159 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_13:
}

void sub_20CD9E86C()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for HTUIEvaluationViewController.View();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_metalAnimation];
  [v0 bounds];
  v2 = CGRectGetWidth(v16) * 0.5;
  [*&v0[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_guidanceTitle] frame];
  MinY = CGRectGetMinY(v17);
  v4 = sub_20CD9BC2C();
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  MaxY = CGRectGetMaxY(v18);
  v14 = v1 + OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_cameraPosition;
  *v14 = v2;
  *(v14 + 8) = (MinY + MaxY) * 0.5;
  *(v14 + 16) = 0;
  sub_20CDA57FC();
}

id sub_20CD9E994()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_20CDA05FC();
  v5 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_marginDependentConstraints;
  swift_beginAccess();
  v15 = v1;
  v6 = *&v1[v5];
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20CE141C4())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x20F313610](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_20CE13B84();
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v12 constant];
      if (v9 <= 0.0)
      {
        v10 = -v4;
      }

      else
      {
        v10 = v4;
      }

      [v12 setConstant_];

      ++v8;
      if (v13 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_16:

  v16.receiver = v15;
  v16.super_class = type metadata accessor for HTUIEvaluationViewController.View();
  return objc_msgSendSuper2(&v16, sel_updateConstraints);
}

uint64_t sub_20CD9EBB4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);
  v2 = v1 - 2;
  if (v1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (v2 < 3)
  {
    v3 = v2;
  }

  v5 = v3;
  return sub_20CD9EDC8(&v5);
}

void sub_20CD9EC1C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_20CD9EDC8(char *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *a1;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12CB4();
  __swift_project_value_buffer(v5, qword_27C817768);
  v6 = sub_20CE12C94();
  v7 = sub_20CE13CD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock = v9;
    *v8 = 136446466;
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, &aBlock);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v42[0] = v4;
    v13 = sub_20CE13974();
    v15 = sub_20CD96DCC(v13, v14, &aBlock);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] Transitioning to %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  v16 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state;
  *(v2 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state) = v4;
  sub_20CD9F384();
  sub_20CD9F6A4();
  sub_20CD9FB1C();
  v17 = *(v2 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_metalAnimation);
  sub_20CDA6B08(*(v2 + v16) - 2 < 3);
  v18 = *(v2 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_guidanceTitle);
  v19 = *(v2 + v16) - 2 < 3;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20CDA1600;
  *(v23 + 24) = v21;
  v47 = sub_20CDA1604;
  v48 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_20CDB3E40;
  v46 = &block_descriptor_58;
  v24 = _Block_copy(&aBlock);

  [v22 animateWithDuration:v24 animations:0.2];

  _Block_release(v24);
  v25 = *(v2 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_completionLabel);
  v26 = *(v2 + v16) != 4;
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_20CDA1600;
  *(v29 + 24) = v28;
  v47 = sub_20CDA1604;
  v48 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_20CDB3E40;
  v46 = &block_descriptor_70;
  v30 = _Block_copy(&aBlock);

  [v22 animateWithDuration:v30 animations:0.2];

  _Block_release(v30);
  v31 = *(v2 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_captionLabel);
  LOBYTE(v30) = *(v2 + v16) != 4;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v30;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20CDA1600;
  *(v34 + 24) = v33;
  v47 = sub_20CDA1604;
  v48 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_20CDB3E40;
  v46 = &block_descriptor_82;
  v35 = _Block_copy(&aBlock);

  [v22 animateWithDuration:v35 animations:0.2];

  _Block_release(v35);
  v36 = *(v2 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_tapHearButton);
  v37 = *(v2 + v16);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = 1.0;
    if ((v37 - 2) < 3)
    {
      v39 = 0.0;
    }

    v40 = Strong;
    [Strong setAlpha_];
  }

  return MEMORY[0x20F3141E0](v42);
}

void sub_20CD9F384()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state;
  v3 = v0[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state];
  if ((v3 - 2) >= 3)
  {
    v4 = *&v0[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_progressViewModel];
    if (v3)
    {
      if (qword_27C811DC8 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_27C811DC8 == -1)
    {
LABEL_6:
      v5 = sub_20CE12354();
      sub_20CDB5D50(v5, v6);
      v16 = 0xE000000000000000;
      v7 = sub_20CE12354();
      sub_20CDB5EB0(v7, v8);
      goto LABEL_7;
    }

    swift_once();
    goto LABEL_6;
  }

LABEL_7:
  [v1 updateProgressTo:1 immediately:{0.0, v16}];
  v9 = sub_20CD9BC2C();
  v10 = v1[v2] - 2 < 3;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20CDA1600;
  *(v14 + 24) = v12;
  aBlock[4] = sub_20CDA1604;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_46;
  v15 = _Block_copy(aBlock);

  [v13 animateWithDuration:v15 animations:0.2];

  _Block_release(v15);
}

void sub_20CD9F6A4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);
  v2 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageTitle);
  if (v1 == 3)
  {
    if (qword_27C811DC8 == -1)
    {
      goto LABEL_6;
    }

LABEL_9:
    swift_once();
    goto LABEL_6;
  }

  if (v1 != 2)
  {
    v6 = sub_20CE13914();
    [v2 setText_];

    v7 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageBody);
    v5 = sub_20CE13914();
    [v7 setText_];
    goto LABEL_8;
  }

  if (qword_27C811DC8 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_20CE12354();
  v3 = sub_20CE13914();

  [v2 setText_];

  v4 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageBody);
  sub_20CE12354();
  v5 = sub_20CE13914();

  [v4 setText_];
LABEL_8:

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_20CDA09BC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_34;
  v10 = _Block_copy(aBlock);

  [v8 animateWithDuration:v10 animations:0.2];
  _Block_release(v10);
}

void sub_20CD9FA1C()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state) & 0xFE;
    v3 = *(Strong + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageStack);
    if (v2 == 2)
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }

    [v3 setAlpha_];
  }

  else
  {
  }
}

void sub_20CD9FB1C()
{
  v1 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state;
  v2 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);
  if (v2 == 4)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton);
    if (qword_27C811DC8 == -1)
    {
LABEL_6:
      sub_20CE12354();
      v4 = sub_20CE13914();

      [v3 setTitle:v4 forState:{0, 0xE000000000000000}];

      goto LABEL_7;
    }

LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  if (v2 == 3)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton);
    if (qword_27C811DC8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

LABEL_7:
  [*(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton) setUserInteractionEnabled_];
  v5 = *(v0 + v1) - 5 < 0xFFFFFFFE;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20CDA0990;
  *(v9 + 24) = v7;
  aBlock[4] = sub_20CDA099C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_0;
  v10 = _Block_copy(aBlock);

  [v8 animateWithDuration:v10 animations:0.2];

  _Block_release(v10);
}

uint64_t HTUIEvaluationViewController.View.State.Ear.hashValue.getter()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

BOOL static HTUIEvaluationViewController.View.State.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_20CD9FFF8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

void sub_20CDA0080()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C8179E8;
  v1 = sub_20CE13914();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  qword_27C817888 = v2;
}

void sub_20CDA0160(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v4 = qword_27C8179E8;
  v5 = sub_20CE13914();
  v6 = [objc_opt_self() colorNamed:v5 inBundle:v4 compatibleWithTraitCollection:0];

  *a3 = v6;
}

void sub_20CDA0224()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C8179E8;
  v1 = sub_20CE13914();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  qword_27C817898 = v2;
}

id HTUIEvaluationViewController.View.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HTUIEvaluationViewController.View();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_20CDA0440(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F313610](a2, a3);
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
    *v3 = v4;
    return sub_20CDA1608;
  }

  __break(1u);
  return result;
}

void (*sub_20CDA04C0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F313610](a2, a3);
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
    *v3 = v4;
    return sub_20CDA0540;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CDA0548(void *a1)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 updateConstraints];
  [a1 setNeedsLayout];
}

double sub_20CDA05FC()
{
  v0 = *MEMORY[0x277D767F8];
  v1 = sub_20CE13954();
  v3 = v2;
  if (v1 == sub_20CE13954() && v3 == v4)
  {
    goto LABEL_13;
  }

  v6 = sub_20CE14284();

  result = 16.0;
  if (v6)
  {
    return result;
  }

  v8 = *MEMORY[0x277D767F0];
  v9 = sub_20CE13954();
  v11 = v10;
  if (v9 == sub_20CE13954() && v11 == v12)
  {
    goto LABEL_13;
  }

  v14 = sub_20CE14284();

  if (v14)
  {
    return 16.0;
  }

  v15 = *MEMORY[0x277D767E8];
  v16 = sub_20CE13954();
  v18 = v17;
  if (v16 == sub_20CE13954() && v18 == v19)
  {
LABEL_13:

    return 16.0;
  }

  v20 = sub_20CE14284();

  result = 32.0;
  if (v20)
  {
    return 16.0;
  }

  return result;
}