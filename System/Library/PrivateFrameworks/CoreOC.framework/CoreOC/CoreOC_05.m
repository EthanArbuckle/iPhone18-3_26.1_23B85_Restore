char *sub_245FF809C(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_245FF81A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A530, &qword_2460983A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_245FF82A8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_245F8E624(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_245FF83A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A5D0, &qword_246098428);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

unint64_t sub_245FF84C0(unsigned __int8 a1)
{
  v2 = *(v1 + 40);
  sub_245FFE988();
  v3 = sub_246091B84();
  return sub_245FF85CC(a1, v3);
}

unint64_t sub_245FF8528(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_246092504();
  MEMORY[0x24C196E90](a1);
  v4 = sub_246092544();
  return sub_245FF8694(a1, v4);
}

unint64_t sub_245FF8590(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2460924F4();
  return sub_245FF8694(a1, v4);
}

unint64_t sub_245FF85CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_245FFE9DC();
    do
    {
      v7 = *(*(v2 + 48) + v4);
      if (sub_246091BB4())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_245FF8694(uint64_t a1, uint64_t a2)
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

uint64_t sub_245FF8700(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A610, &unk_246098470);
  result = sub_246092374();
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
      v22 = *(*(v5 + 56) + 4 * v20);
      v23 = *(v8 + 40);
      result = sub_2460924F4();
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
      *(*(v8 + 56) + 4 * v16) = v22;
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

uint64_t sub_245FF8964(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PhotogrammetrySession.Request(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_245F8E624(&qword_27EE3A588, &qword_2460983F8);
  v40 = a2;
  result = sub_246092374();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
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
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + 8 * v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_245FFE800(v27, v41, type metadata accessor for PhotogrammetrySession.Request);
      }

      else
      {
        sub_245FFE868(v27, v41, type metadata accessor for PhotogrammetrySession.Request);
      }

      v28 = *(v12 + 40);
      sub_246092504();
      MEMORY[0x24C196E90](v25);
      result = sub_246092544();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = sub_245FFE800(v41, *(v12 + 56) + v26 * v20, type metadata accessor for PhotogrammetrySession.Request);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_245FF8CC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A518, &qword_246098388);
  result = sub_246092374();
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
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 8 * v22);
      v24 = (*(v5 + 56) + 32 * v22);
      if (a2)
      {
        v25 = v24[1];
        v36 = *v24;
        v37 = v25;
      }

      else
      {
        sub_245F8E7A4(v24, &v36, &unk_27EE3AA00, &qword_246098380);
      }

      v26 = *(v8 + 40);
      result = sub_2460924F4();
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
      *(*(v8 + 48) + 8 * v16) = v23;
      v17 = (*(v8 + 56) + 32 * v16);
      v18 = v37;
      *v17 = v36;
      v17[1] = v18;
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

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_245FF8F4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A520, &qword_246098390);
  result = sub_246092374();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
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
      v22 = *(v5 + 56) + (v21 << 6);
      v23 = *(*(v5 + 48) + 8 * v21);
      v24 = *(v22 + 48);
      v25 = *(v22 + 32);
      v26 = *(v22 + 40);
      v39 = *(v22 + 16);
      v40 = *v22;
      v27 = *(v8 + 40);
      result = sub_2460924F4();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v23;
      v17 = *(v8 + 56) + (v16 << 6);
      *v17 = v40;
      *(v17 + 16) = v39;
      *(v17 + 32) = v25;
      *(v17 + 40) = v26;
      *(v17 + 48) = v24;
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
        goto LABEL_17;
      }
    }

    if (v36)
    {
      v35 = 1 << *(v5 + 32);
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

    v3 = v37;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_245FF91D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A528, &qword_246098398);
  result = sub_246092374();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 80 * v21;
      v36 = *(v23 + 32);
      v37 = *(v23 + 48);
      v38 = *(v23 + 64);
      v34 = *v23;
      v35 = *(v23 + 16);
      v24 = *(v8 + 40);
      result = sub_2460924F4();
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

LABEL_34:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 80 * v16;
      *(v17 + 32) = v36;
      *(v17 + 48) = v37;
      *(v17 + 64) = v38;
      *v17 = v34;
      *(v17 + 16) = v35;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_34;
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

    if (v33)
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
  }

  *v3 = v8;
  return result;
}

uint64_t sub_245FF9474(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A5D8, &qword_246098430);
  result = sub_246092374();
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
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + (v21 << 6));
      v36 = v23[2];
      v37 = v23[3];
      v34 = *v23;
      v35 = v23[1];
      v24 = *(v8 + 40);
      result = sub_2460924F4();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + (v16 << 6));
      *v17 = v34;
      v17[1] = v35;
      v17[2] = v36;
      v17[3] = v37;
      ++*(v8 + 16);
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

unint64_t sub_245FF96F0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2460921C4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_246092504();
      MEMORY[0x24C196E90](v10);
      result = sub_246092544();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v3);
      v14 = (v12 + 8 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for PhotogrammetrySession.Request(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
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

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

uint64_t sub_245FF98C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2460921C4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      v13 = *v12;
      result = sub_2460924F4();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v11 + 8 * v3);
          if (v3 != v6 || v17 >= v12 + 1)
          {
            *v17 = *v12;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 32 * v3);
          v20 = (v18 + 32 * v6);
          if (v3 != v6 || v19 >= v20 + 2)
          {
            v9 = v20[1];
            *v19 = *v20;
            v19[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
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

  return result;
}

uint64_t sub_245FF9A30(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_245FF8528(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_245FFA164();
      goto LABEL_7;
    }

    sub_245FF8964(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_245FF8528(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for PhotogrammetrySession.Request(0) - 8) + 72) * v10;

    return sub_245FFE924(a1, v18);
  }

LABEL_13:

  return sub_245FF9F70(v10, a2, a1, v16);
}

unint64_t sub_245FF9B7C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_245FF8590(a2);
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
    sub_245FFA398();
    result = v17;
    goto LABEL_8;
  }

  sub_245FF8CC0(v14, a3 & 1);
  v18 = *v4;
  result = sub_245FF8590(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      return sub_245F97BAC(a1, v20[7] + 32 * result, &unk_27EE3AA00, &qword_246098380);
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    v21 = (v20[7] + 32 * result);
    v22 = a1[1];
    *v21 = *a1;
    v21[1] = v22;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

unint64_t sub_245FF9CC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_245FF8590(a2);
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
    sub_245FFA524();
    result = v17;
    goto LABEL_8;
  }

  sub_245FF8F4C(v14, a3 & 1);
  v18 = *v4;
  result = sub_245FF8590(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7] + (result << 6);
      v22 = *(a1 + 16);
      *v21 = *a1;
      *(v21 + 16) = v22;
      *(v21 + 32) = *(a1 + 32);
      *(v21 + 48) = *(a1 + 48);
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    v23 = v20[7] + (result << 6);
    v24 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 16) = v24;
    *(v23 + 32) = *(a1 + 32);
    *(v23 + 48) = *(a1 + 48);
    v25 = v20[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v20[2] = v26;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

unint64_t sub_245FF9E14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_245FF8590(a2);
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
    sub_245FFA68C();
    result = v17;
    goto LABEL_8;
  }

  sub_245FF91D8(v14, a3 & 1);
  v18 = *v4;
  result = sub_245FF8590(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7] + 80 * result;
      v22 = *(a1 + 48);
      *(v21 + 32) = *(a1 + 32);
      *(v21 + 48) = v22;
      *(v21 + 64) = *(a1 + 64);
      v23 = *(a1 + 16);
      *v21 = *a1;
      *(v21 + 16) = v23;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    v24 = v20[7] + 80 * result;
    *(v24 + 64) = *(a1 + 64);
    v25 = *(a1 + 48);
    *(v24 + 32) = *(a1 + 32);
    *(v24 + 48) = v25;
    v26 = *(a1 + 16);
    *v24 = *a1;
    *(v24 + 16) = v26;
    v27 = v20[2];
    v13 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v13)
    {
      v20[2] = v28;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_245FF9F70(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for PhotogrammetrySession.Request(0);
  result = sub_245FFE800(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for PhotogrammetrySession.Request);
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

void *sub_245FFA018()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A610, &unk_246098470);
  v2 = *v0;
  v3 = sub_246092364();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
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

void *sub_245FFA164()
{
  v1 = v0;
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A588, &qword_2460983F8);
  v6 = *v0;
  v7 = sub_246092364();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_245FFE868(*(v6 + 56) + v23, v5, type metadata accessor for PhotogrammetrySession.Request);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_245FFE800(v5, *(v8 + 56) + v23, type metadata accessor for PhotogrammetrySession.Request);
      }

      while (v16);
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

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_245FFA398()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A518, &qword_246098388);
  v2 = *v0;
  v3 = sub_246092364();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        result = sub_245F8E7A4(*(v2 + 56) + 32 * v17, v21, &unk_27EE3AA00, &qword_246098380);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + 32 * v17);
        v20 = v21[1];
        *v19 = v21[0];
        v19[1] = v20;
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

void *sub_245FFA524()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A520, &qword_246098390);
  v2 = *v0;
  v3 = sub_246092364();
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
    for (i = (v9 + 63) >> 6; v11; *(v22 + 48) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + (v14 << 6);
      v18 = *(v17 + 48);
      v19 = *v17;
      v20 = *(v17 + 16);
      v21 = *(v17 + 32);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v22 = *(v4 + 56) + (v14 << 6);
      *v22 = v19;
      *(v22 + 16) = v20;
      *(v22 + 32) = v21;
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

void *sub_245FFA68C()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A528, &qword_246098398);
  v2 = *v0;
  v3 = sub_246092364();
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
    for (i = (v9 + 63) >> 6; v11; *(v23 + 16) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 80 * v14;
      v18 = *(v17 + 32);
      v19 = *(v17 + 48);
      v20 = *(v17 + 64);
      v22 = *v17;
      v21 = *(v17 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v23 = *(v4 + 56) + 80 * v14;
      *(v23 + 64) = v20;
      *(v23 + 32) = v18;
      *(v23 + 48) = v19;
      *v23 = v22;
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

void *sub_245FFA800()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A5D8, &qword_246098430);
  v2 = *v0;
  v3 = sub_246092364();
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
    for (i = (v9 + 63) >> 6; v11; v22[3] = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + (v14 << 6));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v22 = (*(v4 + 56) + (v14 << 6));
      *v22 = v18;
      v22[1] = v19;
      v22[2] = v20;
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

uint64_t sub_245FFA960(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_245FFF308(&qword_27EE3A5E0, MEMORY[0x277CC9260]);
  v36 = a2;
  v13 = sub_246091B84();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_245FFF308(&qword_27EE3A5E8, MEMORY[0x277CC9260]);
      v23 = sub_246091BB4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_245FFAF9C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_245FFAC40(uint64_t a1)
{
  v2 = v1;
  v41 = sub_246091704();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A5F0, &qword_246098438);
  result = sub_246092244();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_245FFF308(&qword_27EE3A5E0, MEMORY[0x277CC9260]);
      result = sub_246091B84();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_245FFAF9C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_245FFAC40(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_245FFB240();
      goto LABEL_12;
    }

    sub_245FFB478(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_245FFF308(&qword_27EE3A5E0, MEMORY[0x277CC9260]);
  v15 = sub_246091B84();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_245FFF308(&qword_27EE3A5E8, MEMORY[0x277CC9260]);
      v23 = sub_246091BB4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_246092414();
  __break(1u);
  return result;
}

void *sub_245FFB240()
{
  v1 = v0;
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A5F0, &qword_246098438);
  v7 = *v0;
  v8 = sub_246092234();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

uint64_t sub_245FFB478(uint64_t a1)
{
  v2 = v1;
  v37 = sub_246091704();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A5F0, &qword_246098438);
  v10 = sub_246092244();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_245FFF308(&qword_27EE3A5E0, MEMORY[0x277CC9260]);
      result = sub_246091B84();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_245FFB794@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_245FF8590(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_245FF8CC0(v17, isUniquelyReferenced_nonNull_native);
    result = sub_245FF8590(a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = sub_246092424();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = result;
    sub_245FFA398();
    result = v23;
    v19 = v11;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v19 = v11;
  if (v4)
  {
LABEL_7:
    v20 = (v19[7] + 32 * result);
    v21 = v20[1];
    *a3 = *v20;
    *(a3 + 16) = v21;
    v22 = a1[1];
    *v20 = *a1;
    v20[1] = v22;
LABEL_12:
    *v5 = v19;
    return result;
  }

LABEL_10:
  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  v24 = (v19[7] + 32 * result);
  v25 = a1[1];
  *v24 = *a1;
  v24[1] = v25;
  v26 = v19[2];
  v16 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v16)
  {
    v19[2] = v27;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_245FFB8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_245FF8590(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_245FF8F4C(v17, isUniquelyReferenced_nonNull_native);
    result = sub_245FF8590(a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = sub_246092424();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v27 = result;
    sub_245FFA524();
    result = v27;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v19 = v11;
    v20 = v11[7] + (result << 6);
    v21 = *v20;
    v22 = *(v20 + 16);
    v23 = *(v20 + 32);
    v24 = *(v20 + 48);
    v25 = *(a1 + 16);
    *v20 = *a1;
    *(v20 + 16) = v25;
    *(v20 + 32) = *(a1 + 32);
    *(v20 + 48) = *(a1 + 48);
    v26 = 0;
LABEL_12:
    *v5 = v19;
    *a3 = v21;
    *(a3 + 16) = v22;
    *(a3 + 32) = v23;
    *(a3 + 48) = v24;
    *(a3 + 49) = v26;
    return result;
  }

LABEL_10:
  v19 = v11;
  v26 = 1;
  v11[(result >> 6) + 8] |= 1 << result;
  *(v11[6] + 8 * result) = a2;
  v28 = v11[7] + (result << 6);
  v29 = *(a1 + 16);
  *v28 = *a1;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a1 + 32);
  *(v28 + 48) = *(a1 + 48);
  v30 = v11[2];
  v31 = v30 + 1;
  if (!__OFADD__(v30, 1))
  {
    v24 = 0;
    v11[2] = v31;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_245FFBAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_245FF8590(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_245FF91D8(v17, isUniquelyReferenced_nonNull_native);
    result = sub_245FF8590(a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    result = sub_246092424();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v29 = result;
    sub_245FFA68C();
    result = v29;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v19 = 0;
    v20 = v11;
    v21 = v11[7] + 80 * result;
    v22 = *(v21 + 64);
    *(v21 + 64) = *(a1 + 64);
    v23 = *v21;
    v24 = *(v21 + 16);
    v25 = *(v21 + 32);
    v26 = *(v21 + 48);
    v27 = *(a1 + 48);
    *(v21 + 32) = *(a1 + 32);
    *(v21 + 48) = v27;
    v28 = *(a1 + 16);
    *v21 = *a1;
    *(v21 + 16) = v28;
LABEL_12:
    *v5 = v20;
    *a3 = v23;
    *(a3 + 16) = v24;
    *(a3 + 32) = v25;
    *(a3 + 48) = v26;
    *(a3 + 64) = v22;
    *(a3 + 65) = v19;
    return result;
  }

LABEL_10:
  v20 = v11;
  v19 = 1;
  v11[(result >> 6) + 8] |= 1 << result;
  *(v11[6] + 8 * result) = a2;
  v30 = v11[7] + 80 * result;
  *(v30 + 64) = *(a1 + 64);
  v31 = *(a1 + 48);
  *(v30 + 32) = *(a1 + 32);
  *(v30 + 48) = v31;
  v32 = *(a1 + 16);
  *v30 = *a1;
  *(v30 + 16) = v32;
  v33 = v11[2];
  v34 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    v22 = 0;
    v11[2] = v34;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_245FFBC68(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  result = 0;
  v10 = a1 ^ a5;
  if (!HIDWORD(v10) && (v10 & 1) == 0 && a2 == a6)
  {
    result = 0;
    if (a3)
    {
      if (!a7 || a3 != a7)
      {
        return result;
      }
    }

    else if (a7)
    {
      return result;
    }

    if (((a4 ^ a8) & 1) == 0)
    {
      return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
    }
  }

  return result;
}

unint64_t sub_245FFBCC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A5B0, &qword_246098410);
    v3 = sub_246092384();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_245FF84C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFBDAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_245F8E624(a2, a3);
    v5 = sub_246092384();
    for (i = (a1 + 40); ; i += 4)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_245FF8590(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + 4 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFBE84()
{
  result = qword_27EE3A490;
  if (!qword_27EE3A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A490);
  }

  return result;
}

unint64_t sub_245FFBED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_245F8E624(&qword_27EE3A528, &qword_246098398);
  v3 = sub_246092384();
  v4 = *(a1 + 32);
  v16 = *(a1 + 80);
  v17 = *(a1 + 96);
  v18 = *(a1 + 112);
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  result = sub_245FF8590(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v7 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v8 = v3[7] + 80 * result;
    *(v8 + 64) = v18;
    *(v8 + 32) = v16;
    *(v8 + 48) = v17;
    *v8 = v14;
    *(v8 + 16) = v15;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v12 = v7 + 6;
    v4 = *(v7 - 2);
    v16 = v7[2];
    v17 = v7[3];
    v18 = *(v7 + 64);
    v14 = *v7;
    v15 = v7[1];
    result = sub_245FF8590(v4);
    v7 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_245FFC018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A520, &qword_246098390);
    v3 = sub_246092384();
    for (i = (a1 + 96); ; i += 80)
    {
      v5 = *(i - 8);
      v15 = *(i - 2);
      v16 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_245FF8590(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = v3[7] + (result << 6);
      *v11 = v16;
      *(v11 + 16) = v15;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFC124(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A518, &qword_246098388);
    v3 = sub_246092384();
    for (i = a1 + 32; ; i += 40)
    {
      sub_245F8E7A4(i, &v13, &qword_27EE3A600, &unk_246098458);
      v5 = v13;
      result = sub_245FF8590(v13);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFC244(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A5F8, &qword_246098450);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&qword_27EE3A588, &qword_2460983F8);
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_245F8E7A4(v10, v6, &qword_27EE3A5F8, &qword_246098450);
      v12 = *v6;
      result = sub_245FF8528(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for PhotogrammetrySession.Request(0);
      result = sub_245FFE800(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for PhotogrammetrySession.Request);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFC41C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A4F0, &qword_246098350);
    v3 = sub_246092384();
    v4 = a1 + 32;

    while (1)
    {
      sub_245F8E7A4(v4, v13, &qword_27EE3A4F8, &qword_246098358);
      result = sub_245FCB8AC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_245F8E6C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_245FFC558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A5D8, &qword_246098430);
    v3 = sub_246092384();
    for (i = (a1 + 96); ; i += 5)
    {
      v5 = *(i - 8);
      v14 = *(i - 2);
      v15 = *(i - 3);
      v12 = *i;
      v13 = *(i - 1);
      result = sub_245FF8590(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + (result << 6));
      *v8 = v15;
      v8[1] = v14;
      v8[2] = v13;
      v8[3] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_245FFC654()
{
  v51 = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v49 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v49 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v49 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v49 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v49 - v18;
  type metadata accessor for ObjectCaptureImageFolderReader(0);
  v49[0] = sub_245FA7AB0();
  if (!CPGSessionOptionsCreate())
  {
    v24 = sub_245FA31EC();
    (*(v1 + 16))(v5, v24, v0);
    v25 = sub_2460918D4();
    v26 = sub_246091FB4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_245F8A000, v25, v26, "Failed to create session options!", v27, 2u);
      MEMORY[0x24C1989D0](v27, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    goto LABEL_23;
  }

  if (CPGSessionOptionsSetAutoMaskingEnabled())
  {
    v20 = sub_245FA31EC();
    (*(v1 + 16))(v8, v20, v0);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_245F8A000, v21, v22, "Failed to enable auto masking in session options!", v23, 2u);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    (*(v1 + 8))(v8, v0);
  }

  else
  {
    if (*sub_24601FCF0() == 1)
    {
      v28 = CPGSessionOptionsSetReconstructionPowerSetting();
      v29 = sub_245FA31EC();
      v30 = *(v1 + 16);
      if (v28)
      {
        v30(v17, v29, v0);
        v31 = sub_2460918D4();
        v32 = sub_246091FB4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_245F8A000, v31, v32, "Failed to set reconstruction power setting in session options!", v33, 2u);
          MEMORY[0x24C1989D0](v33, -1, -1);
        }

        (*(v1 + 8))(v17, v0);
        goto LABEL_23;
      }

      v30(v19, v29, v0);
      v34 = sub_2460918D4();
      v35 = sub_246091FC4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_245F8A000, v34, v35, "Use low power mode to reconstruct on iPhones.", v36, 2u);
        MEMORY[0x24C1989D0](v36, -1, -1);
      }

      (*(v1 + 8))(v19, v0);
    }

    v50 = 0;
    if (CPGRequestCreateWithDetail() || !v50)
    {
      v37 = sub_245FA31EC();
      (*(v1 + 16))(v11, v37, v0);
      v38 = sub_2460918D4();
      v39 = sub_246091FB4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_245F8A000, v38, v39, "Failed to create request with detail level!", v40, 2u);
        MEMORY[0x24C1989D0](v40, -1, -1);
      }

      (*(v1 + 8))(v11, v0);
    }

    else
    {
      CPGSessionGetEstimatedProcessingTimeByNumberOfPixels();
      if (v43 > 0.0)
      {
        v44 = v43;
        CPGRequestRelease();
        CPGSessionOptionsRelease();
        result = *&v44;
        goto LABEL_24;
      }

      v45 = sub_245FA31EC();
      (*(v1 + 16))(v14, v45, v0);
      v46 = sub_2460918D4();
      v47 = sub_246091FB4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_245F8A000, v46, v47, "Failed to get estimated processing time by number of pixels!", v48, 2u);
        MEMORY[0x24C1989D0](v48, -1, -1);
      }

      (*(v1 + 8))(v14, v0);
    }

    CPGRequestRelease();
  }

LABEL_23:
  CPGSessionOptionsRelease();
  result = 0;
LABEL_24:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245FFCCA4()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CPGSessionOptionsSetAutoMaskingEnabled())
  {
    sub_245FFCF7C();
    swift_allocError();
    v6 = "iguration completed";
    v7 = 0xD00000000000002DLL;
  }

  else
  {
    v8 = sub_24601FCF0();
    if (*v8 == 1)
    {
      if (CPGSessionOptionsSetReconstructionPowerSetting())
      {
        sub_245FFCF7C();
        swift_allocError();
        v6 = "sSetAutoMaskingEnabled failed";
        v7 = 0xD000000000000035;
        goto LABEL_11;
      }

      v9 = sub_245FA31EC();
      (*(v1 + 16))(v4, v9, v0);
      v14 = sub_2460918D4();
      v13 = sub_246091FC4();
      if (os_log_type_enabled(v14, v13))
      {
        v10 = swift_slowAlloc();
        v12 = v10;
        *v10 = 0;
        _os_log_impl(&dword_245F8A000, v14, v13, "Using low power mode for reconstruction on iPhones", v10, 2u);
        MEMORY[0x24C1989D0](v12, -1, -1);
      }

      (*(v1 + 8))(v4, v0);
    }

    CPGSfmOptionsSetSampleOrdering();
    CPGSfmOptionsSetFeatureSensitivity();
    CPGSfmOptionsSetProcessingMode();
    CPGSfmOptionsSetUsePriors();
    *v8;
    CPGSfmOptionsSetPowerSetting();
    result = CPGSessionOptionsSetSfmOptions();
    if (!result)
    {
      return result;
    }

    v7 = 0xD000000000000026;
    sub_245FFCF7C();
    swift_allocError();
    v6 = "CPGSfmOptionsCreate failed";
  }

LABEL_11:
  *v5 = v7;
  *(v5 + 8) = v6 | 0x8000000000000000;
  *(v5 + 16) = 1;
  return swift_willThrow();
}

unint64_t sub_245FFCF7C()
{
  result = qword_27EE3A4A0;
  if (!qword_27EE3A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A4A0);
  }

  return result;
}

uint64_t sub_245FFCFD0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_245FFD008()
{
  v1 = sub_246091704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 26, v3 | 7);
}

uint64_t sub_245FFD0D8()
{
  v1 = *(sub_246091704() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v3 + 2);
  v5 = v3[24];
  v6 = *(v3 + 2);
  v7 = *v3 | (*(v3 + 1) << 32);
  if (v3[25])
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  return sub_245FD5F50(*(v0 + 16), (v0 + v2), v7, v6, v4, v8 | v5);
}

uint64_t type metadata accessor for PGManager()
{
  result = qword_27EE3C3F0;
  if (!qword_27EE3C3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_245FFD204()
{
  result = qword_27EE3A4C0;
  if (!qword_27EE3A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A4C0);
  }

  return result;
}

uint64_t sub_245FFD274(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245FFD28C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_245F9135C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245FFD2EC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t sub_245FFD33C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_245FFD394()
{
  v1 = type metadata accessor for PhotogrammetrySample();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 232);
  if (v8 != 1)
  {
  }

  v9 = v1[19];
  v10 = sub_2460917D4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[20];
  v13 = sub_246091834();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = *(v6 + v1[22] + 8);

  v16 = *(v6 + v1[24]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_245FFD5D0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PhotogrammetrySample() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_245FFD65C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_245FFD6B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_245FFD6EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_245FF5848();
}

uint64_t sub_245FFD6FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_245FFD734()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_245FF7548();
}

void sub_245FFD74C()
{
  sub_245FFD91C(319, &qword_27EE3A4C8, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_245FFD91C(319, &qword_27EE3A4D0, type metadata accessor for PhotogrammetrySession.Request);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_245FFD91C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2460920F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_245FFD97C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_245FFD9C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

__n128 sub_245FFDA20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_245FFDA34(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[26])
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

uint64_t sub_245FFDA88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraTrackingState.Reason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CameraTrackingState.Reason(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_245FFDC70()
{
  result = qword_27EE3C580[0];
  if (!qword_27EE3C580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE3C580);
  }

  return result;
}

uint64_t sub_245FFDCC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_245FFDCD4(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = sub_245FA31EC();
    (*(v3 + 16))(v7, v8, v2);
    v9 = sub_2460918D4();
    v10 = sub_246091FC4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245F8A000, v9, v10, "Processing warning generated.", v11, 2u);
      MEMORY[0x24C1989D0](v11, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_245FFDE2C(uint64_t a1)
{
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_245FFF308(&qword_27EE3A5E0, MEMORY[0x277CC9260]);
  result = MEMORY[0x24C1968D0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_245FFA960(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_245FFDFC8(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  SfmMap = CPGOutputGetSfmMap();
  if (!SfmMap)
  {
    v33 = sub_245FA31EC();
    (*(v3 + 16))(v7, v33, v2);
    v34 = sub_2460918D4();
    v35 = sub_246091FB4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = a1;
      v62 = v37;
      *v36 = 136446210;
      v38 = sub_246091C54();
      v40 = sub_245F8D3C0(v38, v39, &v62);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_245F8A000, v34, v35, "Can't get SfM map from native output %{public}s", v36, 0xCu);
      sub_245F8E6F4(v37);
      MEMORY[0x24C1989D0](v37, -1, -1);
      MEMORY[0x24C1989D0](v36, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return MEMORY[0x277D84F90];
  }

  v17 = SfmMap;
  v18 = CPGSfmMapCopyAllSampleIDs();
  if (!v18)
  {
    v41 = sub_245FA31EC();
    (*(v3 + 16))(v10, v41, v2);
    v42 = sub_2460918D4();
    v43 = sub_246091FB4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = v17;
      v62 = v45;
      *v44 = 136446210;
      v46 = sub_246091C54();
      v48 = sub_245F8D3C0(v46, v47, &v62);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_245F8A000, v42, v43, "Can't get sample ids from SfM map %{public}s", v44, 0xCu);
      sub_245F8E6F4(v45);
      MEMORY[0x24C1989D0](v45, -1, -1);
      MEMORY[0x24C1989D0](v44, -1, -1);
    }

    (*(v3 + 8))(v10, v2);
    return MEMORY[0x277D84F90];
  }

  v19 = v18;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_24;
  }

  v62 = 0;
  sub_246091DC4();

  v21 = v62;
  if (!v62)
  {
LABEL_24:
    v49 = sub_245FA31EC();
    (*(v3 + 16))(v13, v49, v2);
    v50 = sub_2460918D4();
    v51 = sub_246091FB4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v19;
      v62 = v53;
      *v52 = 136446210;
      sub_245F8E624(&qword_27EE3A500, &qword_246098360);
      v54 = sub_246091C54();
      v56 = sub_245F8D3C0(v54, v55, &v62);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_245F8A000, v50, v51, "Can't convert sample ids array: %{public}s", v52, 0xCu);
      sub_245F8E6F4(v53);
      MEMORY[0x24C1989D0](v53, -1, -1);
      MEMORY[0x24C1989D0](v52, -1, -1);
    }

    (*(v3 + 8))(v13, v2);
    return MEMORY[0x277D84F90];
  }

  v22 = v62[2];
  if (v22)
  {
    v59 = (v3 + 16);
    v60 = v2;
    v23 = MEMORY[0x277D84F90];
    v58 = (v3 + 8);
    v24 = 32;
    *&v20 = 134349056;
    v57 = v20;
    while (1)
    {
      v25 = *(v21 + v24);
      if ((CPGSfmMapIsSampleRegistered() & 1) == 0)
      {
        v26 = sub_245FA31EC();
        (*v59)(v15, v26, v60);
        v27 = sub_2460918D4();
        v28 = sub_246091FA4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = v57;
          *(v29 + 4) = v25;
          _os_log_impl(&dword_245F8A000, v27, v28, "Adding low quality sample: id=%{public}llu...", v29, 0xCu);
          MEMORY[0x24C1989D0](v29, -1, -1);
        }

        result = (*v58)(v15, v60);
        if (v25 < 0)
        {
          __break(1u);
          return result;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_245FF82A8(0, *(v23 + 2) + 1, 1, v23, &qword_27EE3A0E8, &qword_24609ADA0);
        }

        v32 = *(v23 + 2);
        v31 = *(v23 + 3);
        if (v32 >= v31 >> 1)
        {
          v23 = sub_245FF82A8((v31 > 1), v32 + 1, 1, v23, &qword_27EE3A0E8, &qword_24609ADA0);
        }

        *(v23 + 2) = v32 + 1;
        *&v23[8 * v32 + 32] = v25;
      }

      v24 += 8;
      if (!--v22)
      {

        return v23;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_245FFE618()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Properties = CPGOutputGetProperties();
  if (Properties)
  {
    v6 = Properties;
    Copy = CFDictionaryCreateCopy(0, v6);

    if (Copy)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v14 = 0;
        sub_246091B54();

        result = v14;
        if (v14)
        {
          return result;
        }
      }

      else
      {
      }
    }
  }

  v9 = sub_245FA31EC();
  (*(v1 + 16))(v4, v9, v0);
  v10 = sub_2460918D4();
  v11 = sub_246091FB4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_245F8A000, v10, v11, "Can't convert backend properties dict to [AnyHashable: Any]!", v12, 2u);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_245FFC41C(MEMORY[0x277D84F90]);
}

uint64_t sub_245FFE800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_245FFE868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_245FFE8D0()
{
  result = qword_27EE3A580;
  if (!qword_27EE3A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A580);
  }

  return result;
}

uint64_t sub_245FFE924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_245FFE988()
{
  result = qword_27EE3A5A0;
  if (!qword_27EE3A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A5A0);
  }

  return result;
}

unint64_t sub_245FFE9DC()
{
  result = qword_27EE3A5A8;
  if (!qword_27EE3A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A5A8);
  }

  return result;
}

uint64_t sub_245FFEA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245FFEAFC()
{
  v1 = sub_246091704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 24);

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v12 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  if (!(*(*(v12 - 8) + 48))(v0 + v8, 3, v12))
  {
    v11(v0 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_245FFECD0()
{
  v1 = sub_246091704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);

  v11 = *(v0 + 24);

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v13 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  if (!(*(*(v13 - 8) + 48))(v0 + v8, 3, v13))
  {
    v12(v0 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_245FFEE80(uint64_t (*a1)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_246091704() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v6, v7, v1 + v3, v8);
}

uint64_t sub_245FFEF64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_245FFEFA4()
{
  if (*(v0 + 49))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_245FD8C80(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32), *(v0 + 32), *(v0 + 40), v1 | *(v0 + 48), *(v0 + 56));
}

uint64_t sub_245FFEFEC()
{
  v1 = *(sub_245F8E624(&qword_27EE3A498, &unk_246097EB8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_246091704();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  v10 = (*(v6 + 48))(v0 + v3, 1, v5);
  v11 = *(v6 + 8);
  if (!v10)
  {
    v11(v0 + v3, v5);
  }

  v12 = (v3 + v4 + v7) & ~v7;
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v13 + 26, v2 | v7 | 7);
}

uint64_t sub_245FFF16C()
{
  v1 = *(sub_245F8E624(&qword_27EE3A498, &unk_246097EB8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_246091704() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v6 + 2);
  v8 = v6[24];
  v9 = *(v6 + 2);
  v10 = *v6 | (*(v6 + 1) << 32);
  if (v6[25])
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return sub_245FD75F8(*(v0 + 16), v0 + v2, v0 + v5, v10, v9, v7, v11 | v8);
}

uint64_t sub_245FFF298(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FFF308(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_245FFF468@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24600A110(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_245FFF4B4(__CVBuffer *a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CVBufferCopyAttachment(a1, *MEMORY[0x277CD3410], 0);
  v8 = v7;
  if (v7)
  {
    v16 = v7;
    swift_dynamicCast();
    v9 = v15[3];
  }

  else
  {
    v10 = sub_245FA3174();
    (*(v3 + 16))(v6, v10, v2);
    v11 = sub_2460918D4();
    v12 = sub_246091FB4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_245F8A000, v11, v12, "Couldn't find the orientation image property attachment!", v13, 2u);
      MEMORY[0x24C1989D0](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

void *sub_245FFF67C(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_245F8E498(MEMORY[0x277D84F90]);
  v63 = v10;
  v11 = *MEMORY[0x277CD3038];
  if (CVBufferHasAttachment(a1, *MEMORY[0x277CD3038]))
  {
    v12 = CVBufferCopyAttachment(a1, v11, 0);
    if (v12)
    {
      *&v61 = v12;
      v13 = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      if (swift_dynamicCast())
      {
        v14 = sub_246091C04();
        v16 = v15;
        ObjectType = v13;
        *&v61 = *&v60[0];
        sub_245F8E6C0(&v61, v60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_246008DF4(v60, v14, v16, isUniquelyReferenced_nonNull_native);

        v63 = v10;
      }
    }
  }

  v18 = *MEMORY[0x277CD3490];
  if (CVBufferHasAttachment(a1, *MEMORY[0x277CD3490]))
  {
    v19 = CVBufferCopyAttachment(a1, v18, 0);
    if (v19)
    {
      *&v61 = v19;
      v20 = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      if (swift_dynamicCast())
      {
        v21 = *&v60[0];
        v22 = sub_246091C04();
        v24 = v23;
        ObjectType = v20;
        *&v61 = v21;
        sub_245F8E6C0(&v61, v60);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        sub_246008DF4(v60, v22, v24, v25);

        v63 = v10;
      }
    }
  }

  v26 = CVBufferCopyAttachment(a1, *MEMORY[0x277CD3410], 0);
  v27 = sub_246091C04();
  v29 = v27;
  v30 = v28;
  if (v26)
  {
    ObjectType = swift_getObjectType();
    *&v61 = v26;
    sub_245F8E6C0(&v61, v60);
    swift_unknownObjectRetain();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_246008DF4(v60, v29, v30, v31);

    v63 = v10;
  }

  else
  {
    sub_246007958(v27, v28, &v61);

    sub_245F8E744(&v61, &unk_27EE3AA00, &qword_246098380);
  }

  v32 = *MEMORY[0x277CD3258];
  if (CVBufferHasAttachment(a1, *MEMORY[0x277CD3258]))
  {
    v33 = CVBufferCopyAttachment(a1, v32, 0);
    if (v33)
    {
      *&v61 = v33;
      v34 = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      if (swift_dynamicCast())
      {
        v35 = a5;
        v36 = a2;
        v37 = a3;
        v38 = a4;
        v39 = *&v60[0];
        v59 = sub_246091C04();
        v41 = v40;
        ObjectType = v34;
        *&v61 = v39;
        a4 = v38;
        a3 = v37;
        a2 = v36;
        a5 = v35;
        sub_245F8E6C0(&v61, v60);
        v42 = v63;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        sub_246008DF4(v60, v59, v41, v43);

        v63 = v42;
      }
    }
  }

  if (a5)
  {
    swift_unknownObjectRelease();
    return v63;
  }

  else
  {
    sub_245F8E624(&qword_27EE39F18, &qword_246096608);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_246096640;
    *(v45 + 32) = a2;
    *(v45 + 40) = a3;
    *(v45 + 48) = a4;
    v46 = sub_245F8E498(MEMORY[0x277D84F90]);
    v47 = *MEMORY[0x277CD33B0];
    if (CVBufferHasAttachment(a1, *MEMORY[0x277CD33B0]))
    {

      v48 = CVBufferCopyAttachment(a1, v47, 0);
      if (v48 && (*&v61 = v48, sub_245F8E624(&qword_27EE39ED0, &unk_246096480), (swift_dynamicCast() & 1) != 0))
      {
        v46 = *&v60[0];
      }

      else
      {
        v46 = sub_245F8E498(MEMORY[0x277D84F90]);
      }
    }

    result = OCNonModularSPI_AppleMakerNote_FocusAccelerometerVector();
    if (result)
    {
      v49 = result;
      v50 = sub_246091C04();
      v52 = v51;

      ObjectType = sub_245F8E624(&qword_27EE3A638, &unk_2460985B0);
      *&v61 = v45;
      sub_245F8E6C0(&v61, v60);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      sub_246008DF4(v60, v50, v52, v53);

      v54 = sub_246091C04();
      v56 = v55;
      ObjectType = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      *&v61 = v46;
      sub_245F8E6C0(&v61, v60);
      v57 = v63;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      sub_246008DF4(v60, v54, v56, v58);

      swift_unknownObjectRelease();
      return v57;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_245FFFC14(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3ACE0, &unk_246098880);
    v15 = *v3;
    v16 = sub_24600790C(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_246009C80();
        v21 = v26;
      }

      sub_24600BE48(*(v21 + 56) + *(v11 + 72) * v18, v9);
      sub_246008910(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_245F8E744(v9, &qword_27EE3ACE0, &unk_246098880);
  }

  else
  {
    sub_24600BE48(a1, v14);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_2460090E0(v14, v23, a2);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_245FFFE48@<X0>(uint64_t result@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (result)
  {
    v4 = a2[2];
    if (v4)
    {
      if (*&v4 <= *(a3 + 16))
      {
        v5 = a2 + 4;
        v6 = (a3 + 32);
        v7 = (result + 24);
        while (1)
        {
          v8 = *v5->f32;
          *(v7 - 3) = vcvtq_f64_f32(*v5);
          *(v7 - 1) = *(&v8 + 2);
          v10 = *v6++;
          v9 = v10;
          if (v10 >> 31)
          {
            break;
          }

          *v7 = v9;
          v7 += 4;
          v5 += 2;
          if (!--*&v4)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t sub_245FFFEBC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = sub_245F8E624(&qword_27EE3A640, &qword_2460985C0);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();

    v5 = v0;
    v1 = sub_246091944();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
  }

  return v1;
}

uint64_t sub_245FFFF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2460919F4();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_246091A64();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_writerQueue);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_24600CBB4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DFA70;
  v16 = _Block_copy(aBlock);

  sub_246091A14();
  v21 = MEMORY[0x277D84F90];
  sub_24600CAC0(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_246000284@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_2460002D8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
}

uint64_t sub_24600031C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    sub_245FFFEBC();
    sub_245F8E624(&qword_27EE3A640, &qword_2460985C0);
    sub_245F9218C(&qword_27EE3A648, &qword_27EE3A640, &qword_2460985C0);
    v1 = sub_2460919A4();

    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_2460003F8(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t ObjectCaptureHEICBundleWriter.WriteInfo.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo(0) + 20);
  v4 = sub_246091704();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ObjectCaptureHEICBundleWriter.WriteInfo.error.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_24600A140(v4, v5);
}

uint64_t ObjectCaptureHEICBundleWriter.WriteInfo.init(shotID:url:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  *a4 = a1;
  v8 = type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo(0);
  v9 = *(v8 + 20);
  v10 = sub_246091704();
  result = (*(*(v10 - 8) + 32))(&a4[v9], a2, v10);
  v12 = &a4[*(v8 + 24)];
  *v12 = v6;
  *(v12 + 1) = v7;
  return result;
}

uint64_t sub_2460005C8()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    v3 = sub_245F8E624(&qword_27EE3A650, &qword_2460985C8);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_246091934();
    v6 = *(v2 + 32);
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t sub_24600064C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_2460006A0(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
}

uint64_t sub_2460006E4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    sub_2460005C8();
    sub_245F8E624(&qword_27EE3A650, &qword_2460985C8);
    sub_245F9218C(&qword_27EE3A658, &qword_27EE3A650, &qword_2460985C8);
    v1 = sub_2460919A4();

    v3 = *(v0 + 40);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t sub_2460007C0(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t ObjectCaptureHEICBundleWriter.__allocating_init(publishers:url:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ObjectCaptureHEICBundleWriter.init(publishers:url:)(a1, a2);
  return v7;
}

uint64_t ObjectCaptureHEICBundleWriter.init(publishers:url:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v104 = a1;
  v114[3] = *MEMORY[0x277D85DE8];
  v98 = sub_245F8E624(&qword_27EE3A660, &qword_2460985D0);
  v97 = *(v98 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v88 - v5;
  v94 = sub_245F8E624(&qword_27EE3A668, &qword_2460985D8);
  v93 = *(v94 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v88 - v7;
  v8 = sub_245F8E624(&qword_27EE3A670, &qword_2460985E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v88 - v10;
  v91 = sub_245F8E624(&qword_27EE3A678, &qword_2460985E8);
  v90 = *(v91 - 8);
  v11 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v88 - v12;
  v109 = sub_2460918F4();
  v107 = *(v109 - 8);
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_246092034();
  v112 = *(v106 - 8);
  v15 = *(v112 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_246092004();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = sub_246091A64();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_subscriptions) = MEMORY[0x277D84FA0];
  v21 = (v2 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotMetadataMap;
  v23 = MEMORY[0x277D84F90];
  *(v3 + v22) = sub_24600A164(MEMORY[0x277D84F90]);
  v24 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotFeatureMatchabilityScoreMap;
  *(v3 + v24) = sub_24600A32C(v23);
  *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_numFilesWritten) = 0;
  *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID) = -1;
  v25 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_urlToShotIDMap;
  *(v3 + v25) = sub_24600A40C(v23);
  *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_heicWriteHandle) = 0;
  v103 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_writerQueue;
  v111 = sub_245F90360();
  v102 = "onPowerSetting failed";
  sub_246091A54();
  v114[0] = v23;
  v100 = sub_24600CAC0(&qword_27EE3A9D0, MEMORY[0x277D85230]);
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v101 = sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  v26 = *MEMORY[0x277D85260];
  v99 = *(v112 + 104);
  v112 += 104;
  v27 = v106;
  v99(v105, v26, v106);
  *(v3 + v103) = sub_246092074();
  v103 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveQueue;
  sub_246091A54();
  v114[0] = MEMORY[0x277D84F90];
  sub_2460921A4();
  v28 = v105;
  v29 = v27;
  v30 = v99;
  v99(v105, v26, v29);
  *(v3 + v103) = sub_246092074();
  v103 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateQueue;
  sub_246091A54();
  sub_246091FF4();
  v30(v28, v26, v106);
  *(v3 + v103) = sub_246092074();
  v31 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveDispatchGroup;
  *(v3 + v31) = dispatch_group_create();
  v32 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateDispatchGroup;
  *(v3 + v32) = dispatch_group_create();
  *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_isWritingCancelled) = 0;
  v33 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock;
  sub_245F8E624(&qword_27EE3A680, &qword_246098960);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v3 + v33) = v34;
  v35 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems;
  *(v3 + v35) = sub_24600A5F4(MEMORY[0x277D84F90]);
  *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_meshWriter) = 0;
  v36 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_url;
  v37 = sub_246091704();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v3 + v36, v110, v37);
  v39 = sub_245FA3174();
  (*(v107 + 16))(v108, v39, v109);

  v40 = sub_2460918D4();
  v41 = sub_246091FC4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v112 = v38;
    v43 = v42;
    v44 = swift_slowAlloc();
    v114[0] = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    v45 = sub_2460916F4();
    v47 = v37;
    v48 = v3;
    v49 = sub_245F8D3C0(v45, v46, v114);

    *(v43 + 14) = v49;
    v3 = v48;
    v37 = v47;
    _os_log_impl(&dword_245F8A000, v40, v41, "HEIC Writer: Writer output URL: %{private,mask.hash}s", v43, 0x16u);
    sub_245F8E6F4(v44);
    MEMORY[0x24C1989D0](v44, -1, -1);
    v50 = v43;
    v38 = v112;
    MEMORY[0x24C1989D0](v50, -1, -1);
  }

  (*(v107 + 8))(v108, v109);
  v51 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_heicWriteHandle;
  swift_beginAccess();
  v52 = OCNonModularSPI_CMPhoto_HeicWriteCreate();
  swift_endAccess();
  if (v52)
  {
    v53 = 0x80000002460A1010;
    sub_24600A7DC();
    swift_allocError();
    v55 = 0xD000000000000039;
LABEL_7:
    *v54 = v55;
    v54[1] = v53;
    goto LABEL_8;
  }

  v56 = *(v3 + v51);
  if (OCNonModularSPI_CMPhoto_HeicWriteStart())
  {
    v57 = *(v3 + v51);
    OCNonModularSPI_CMPhoto_HeicWriteDestroy();
    *(v3 + v51) = 0;
    v53 = 0x80000002460A1050;
    sub_24600A7DC();
    swift_allocError();
    v55 = 0xD000000000000034;
    goto LABEL_7;
  }

  v60 = [objc_opt_self() defaultManager];
  v61 = sub_246091674();
  v114[0] = 0;
  v62 = [v60 createDirectoryAtURL:v61 withIntermediateDirectories:1 attributes:0 error:v114];

  if (v62)
  {
    v63 = v104;
    v64 = (*(*v104 + 216))(v114[0]);
    v102 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_writerQueue;
    v113 = *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_writerQueue);
    v65 = v113;
    v114[0] = v64;
    v109 = sub_246092024();
    v66 = *(v109 - 8);
    v108 = *(v66 + 56);
    v105 = (v66 + 56);
    v101 = v37;
    v67 = v95;
    (v108)(v95, 1, 1, v109);
    v68 = v65;
    v112 = v38;
    v69 = v68;
    sub_245F8E624(&qword_27EE3A690, &qword_2460985F0);
    v107 = MEMORY[0x277CBCD90];
    sub_245F9218C(&qword_27EE3A698, &qword_27EE3A690, &qword_2460985F0);
    v106 = sub_24600CAC0(&qword_27EE3A6A0, sub_245F90360);
    v70 = v89;
    sub_2460919C4();
    sub_245F8E744(v67, &qword_27EE3A670, &qword_2460985E0);

    v71 = swift_allocObject();
    swift_weakInit();
    v72 = swift_allocObject();
    *(v72 + 16) = sub_24600A868;
    *(v72 + 24) = v71;
    v103 = MEMORY[0x277CBCD60];
    sub_245F9218C(&qword_27EE3A6A8, &qword_27EE3A678, &qword_2460985E8);

    v73 = v91;
    sub_2460919B4();

    (*(v90 + 8))(v70, v73);
    v74 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_subscriptions;
    swift_beginAccess();
    sub_246091904();
    swift_endAccess();

    v76 = (*(*v63 + 264))(v75);
    v113 = *&v102[v3];
    v77 = v113;
    v114[0] = v76;
    (v108)(v67, 1, 1, v109);
    v78 = v77;
    sub_245F8E624(&qword_27EE3A6B0, &qword_2460985F8);
    sub_245F9218C(&qword_27EE3A6B8, &qword_27EE3A6B0, &qword_2460985F8);
    v79 = v92;
    sub_2460919C4();
    sub_245F8E744(v67, &qword_27EE3A670, &qword_2460985E0);

    swift_allocObject();
    swift_weakInit();
    sub_245F9218C(&qword_27EE3A6C0, &qword_27EE3A668, &qword_2460985D8);
    v80 = v94;
    sub_2460919B4();

    (*(v93 + 8))(v79, v80);
    v100 = v74;
    swift_beginAccess();
    sub_246091904();
    swift_endAccess();

    v82 = (*(*v63 + 312))(v81);
    v113 = *&v102[v3];
    v83 = v113;
    v114[0] = v82;
    (v108)(v67, 1, 1, v109);
    v84 = v83;
    sub_245F8E624(&qword_27EE3A6C8, &qword_246098600);
    sub_245F9218C(&qword_27EE3A6D0, &qword_27EE3A6C8, &qword_246098600);
    v85 = v96;
    sub_2460919C4();
    sub_245F8E744(v67, &qword_27EE3A670, &qword_2460985E0);

    swift_allocObject();
    swift_weakInit();

    sub_245F9218C(&qword_27EE3A6D8, &qword_27EE3A660, &qword_2460985D0);
    v86 = v98;
    sub_2460919B4();

    (*(v97 + 8))(v85, v86);
    swift_beginAccess();
    sub_246091904();
    swift_endAccess();

    (*(v112 + 8))(v110, v101);
    goto LABEL_9;
  }

  v87 = v114[0];
  sub_2460915D4();

LABEL_8:
  swift_willThrow();

  (*(v38 + 8))(v110, v37);
LABEL_9:
  v58 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_24600198C(uint64_t *a1, double *a2)
{
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v13 = a1[3];
  v12 = a1[4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v32 = v12;
    v16 = *sub_24608FCD0();
    OCSignPostsAriadneDbgCode();
    result = kdebug_trace();
    v17 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID;
    v18 = *(v15 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      *(v15 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID) = v20;
      sub_24600733C(*a2);
      sub_246091634();

      v30 = v13;
      v31 = v4;
      v21 = v10;
      v22 = *(v15 + v17);
      v23 = a2;
      v24 = v11;
      v25 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_urlToShotIDMap;
      swift_beginAccess();
      v26 = *(v15 + v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v15 + v25);
      *(v15 + v25) = 0x8000000000000000;
      sub_246008F44(v22, v8, isUniquelyReferenced_nonNull_native);
      *(v15 + v25) = v37;
      swift_endAccess();
      v28 = *(v15 + v17);
      *&v33 = v9;
      *(&v33 + 1) = v21;
      v34 = v24;
      v35 = v30;
      v36 = v32;
      sub_2460032D8(v28, &v33, v23, v8);
      v29 = *sub_24608FCDC();
      OCSignPostsAriadneDbgCode();
      kdebug_trace();

      return (*(v5 + 8))(v8, v31);
    }
  }

  return result;
}

uint64_t sub_246001BC8(double *a1)
{
  v2 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *a1;
    sub_24600B080(a1, v5);
    v8 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    swift_beginAccess();
    sub_245FFFC14(v5, v7);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_246001D00(uint64_t *a1)
{
  v131 = sub_245F8E624(&qword_27EE3A718, &qword_246098868);
  v2 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v4 = (&v125 - v3);
  v147 = sub_246091704();
  v133 = *(v147 - 8);
  v5 = *(v133 + 64);
  MEMORY[0x28223BE20](v147);
  v150 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460918F4();
  v137 = *(v7 - 8);
  v8 = v137[8];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v129 = &v125 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v126 = &v125 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v130 = &v125 - v17;
  MEMORY[0x28223BE20](v16);
  v136 = &v125 - v18;
  v19 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v141 = *(v19 - 8);
  v20 = *(v141 + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v140 = &v125 - v24;
  v25 = sub_245F8E624(&qword_27EE3A720, &unk_246098870);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v149 = &v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v148 = (&v125 - v29);
  v30 = sub_246091AA4();
  v132 = *(v30 - 8);
  v31 = *(v132 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v138 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v125 - v34;
  v134 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v37 = result;
  v127 = v30;
  v125 = v4;
  v128 = v11;
  v139 = v7;
  v38 = *sub_24608FD00();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v135 = v35;
  sub_246091A84();
  v39 = v37;
  v40 = *(v37 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveDispatchGroup);
  sub_246091FE4();

  v41 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotMetadataMap;
  swift_beginAccess();
  v42 = *(v39 + v41);
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 64);
  v146 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_url;
  v47 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_urlToShotIDMap;
  v142 = v42;

  v151 = v39;
  v145 = v47;
  result = swift_beginAccess();
  v48 = 0;
  v49 = (v44 + 63) >> 6;
  v144 = (v133 + 8);
  v143 = xmmword_246096EF0;
  for (i = v149; ; i = v149)
  {
    if (!v46)
    {
      if (v49 <= v48 + 1)
      {
        v52 = v48 + 1;
      }

      else
      {
        v52 = v49;
      }

      v53 = v52 - 1;
      while (1)
      {
        v51 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v51 >= v49)
        {
          v78 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
          (*(*(v78 - 8) + 56))(i, 1, 1, v78);
          v46 = 0;
          v48 = v53;
          goto LABEL_18;
        }

        v46 = *(v43 + 8 * v51);
        ++v48;
        if (v46)
        {
          v48 = v51;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v51 = v48;
LABEL_17:
    v54 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v55 = v54 | (v51 << 6);
    v56 = *(*(v142 + 48) + 8 * v55);
    v57 = v140;
    sub_24600B080(*(v142 + 56) + *(v141 + 72) * v55, v140);
    v58 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
    v59 = *(v58 + 48);
    *i = v56;
    sub_24600BE48(v57, i + v59);
    (*(*(v58 - 8) + 56))(i, 0, 1, v58);
LABEL_18:
    v60 = v148;
    sub_245FC5914(i, v148, &qword_27EE3A720, &unk_246098870);
    v61 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
    if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
    {
      break;
    }

    v62 = *v60;
    sub_24600BE48(v60 + *(v61 + 48), v23);
    v63 = objc_opt_self();
    sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
    v64 = swift_allocObject();
    *(v64 + 16) = v143;
    v65 = v151;
    *(v64 + 32) = sub_2460916F4();
    *(v64 + 40) = v66;
    v152 = sub_24602138C(v62);
    v153 = v67;
    MEMORY[0x24C196640](0x434945482ELL, 0xE500000000000000);
    v68 = v153;
    *(v64 + 48) = v152;
    *(v64 + 56) = v68;
    v69 = sub_246091DB4();

    v70 = [v63 pathWithComponents_];

    sub_246091C04();
    v71 = v150;
    sub_246091634();

    v72 = *(v65 + v145);
    if (*(v72 + 16))
    {
      v73 = *(v65 + v145);

      v74 = sub_246007838(v71);
      if (v75)
      {
        v76 = *(*(v72 + 56) + 8 * v74);

        v77 = v76;
        v71 = v150;
        sub_246004940(v77, v23, v150);
      }

      else
      {
      }
    }

    (*v144)(v71, v147);
    result = sub_24600C49C(v23, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  }

  v79 = *(v151 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateDispatchGroup);
  sub_246091FE4();

  sub_246091A84();
  v80 = sub_246091A74();
  result = sub_246091A74();
  v81 = v80 - result;
  if (v80 < result)
  {
LABEL_47:
    __break(1u);
    return result;
  }

  v82 = sub_245FA3174();
  v83 = v137[2];
  v84 = v139;
  v83(v136, v82, v139);
  v85 = sub_2460918D4();
  v86 = sub_246091FC4();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = v81;
    v88 = swift_slowAlloc();
    *v88 = 134349056;
    *(v88 + 4) = v87 / 1000000000.0;
    _os_log_impl(&dword_245F8A000, v85, v86, "HEIC Writer: Update all images used %{public}f seconds.", v88, 0xCu);
    MEMORY[0x24C1989D0](v88, -1, -1);
  }

  v89 = v137[1];
  v89(v136, v84);
  v90 = *sub_24608FD0C();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  if (v134 != 7)
  {
    v98 = v129;
    v83(v129, v82, v84);
    v99 = sub_2460918D4();
    v100 = sub_246091FB4();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_245F8A000, v99, v100, "HEIC Writer: Failed to write HEIC bundle.", v101, 2u);
      MEMORY[0x24C1989D0](v101, -1, -1);
    }

    v89(v98, v84);
    v94 = v151;
    v102 = *(v151 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
    if (!v102)
    {
      goto LABEL_42;
    }

    v103 = *(v151 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise + 8);
    v152 = v134;
    sub_24600CA6C();

    v104 = sub_246092484();
    v105 = v125;
    *v125 = v104;
    v105[1] = v106;
    swift_storeEnumTagMultiPayload();
    v102(v105);
    v94 = v151;
    sub_245FFDCC4(v102);
    v107 = v105;
LABEL_41:
    sub_245F8E744(v107, &qword_27EE3A718, &qword_246098868);
    goto LABEL_42;
  }

  if (*(v151 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_numFilesWritten) < 1)
  {
    v108 = v126;
    v83(v126, v82, v84);
    v109 = sub_2460918D4();
    v110 = sub_246091FC4();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_245F8A000, v109, v110, "HEIC Writer: Failed to write HEIC bundle, no files written!", v111, 2u);
      MEMORY[0x24C1989D0](v111, -1, -1);
    }

    v89(v108, v84);
    v94 = v151;
    v95 = *(v151 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
    if (!v95)
    {
      goto LABEL_42;
    }

    v112 = *(v151 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise + 8);
    v97 = v125;
    *v125 = 0xD00000000000001DLL;
    v97[1] = 0x80000002460A1360;
LABEL_40:
    swift_storeEnumTagMultiPayload();

    v95(v97);
    v94 = v151;
    sub_245FFDCC4(v95);
    v107 = v97;
    goto LABEL_41;
  }

  v83(v130, v82, v84);
  v91 = sub_2460918D4();
  v92 = sub_246091FC4();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_245F8A000, v91, v92, "HEIC Writer: Successfully wrote HEIC bundle.", v93, 2u);
    MEMORY[0x24C1989D0](v93, -1, -1);
  }

  v89(v130, v84);
  v94 = v151;
  v95 = *(v151 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
  if (v95)
  {
    v96 = *(v151 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise + 8);
    v97 = v125;
    (*(v133 + 16))(v125, v151 + v146, v147);
    goto LABEL_40;
  }

LABEL_42:
  v113 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_heicWriteHandle;
  swift_beginAccess();
  v114 = *(v94 + v113);
  v115 = OCNonModularSPI_CMPhoto_HeicWriteStop();
  v116 = *(v94 + v113);
  v117 = OCNonModularSPI_CMPhoto_HeicWriteDestroy();
  *(v94 + v113) = 0;
  v118 = v128;
  v83(v128, v82, v139);
  v119 = v118;
  v120 = sub_2460918D4();
  v121 = sub_246091FC4();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 67240448;
    *(v122 + 4) = v115;
    *(v122 + 8) = 1026;
    *(v122 + 10) = v117;
    _os_log_impl(&dword_245F8A000, v120, v121, "HEIC Writer: HEIC bundle writer stopped with state %{public}d and destroyed with state %{public}d", v122, 0xEu);
    MEMORY[0x24C1989D0](v122, -1, -1);
  }

  v89(v119, v139);
  v123 = *(v132 + 8);
  v124 = v127;
  v123(v138, v127);
  return (v123)(v135, v124);
}

uint64_t sub_246002C14()
{
  v1 = *(v0 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);

  os_unfair_lock_lock(v1 + 4);
  sub_24600A938();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_246002C8C(uint64_t a1)
{
  v52 = sub_246091834();
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v52);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245F8E624(&qword_27EE3A708, &qword_246098850);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems;
  swift_beginAccess();
  v41 = v12;
  v42 = a1;
  v13 = *(a1 + v12);
  v14 = *(v13 + 64);
  v43 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v44 = v2 + 32;
  v45 = v2 + 16;
  v49 = v2;
  v50 = v13;
  v51 = (v2 + 8);

  v20 = 0;
  v46 = v11;
  v47 = v9;
  v21 = v48;
  if (v17)
  {
    while (1)
    {
      v22 = v20;
LABEL_12:
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v26 = v25 | (v22 << 6);
      v28 = v49;
      v27 = v50;
      v29 = v52;
      (*(v49 + 16))(v21, *(v50 + 48) + *(v49 + 72) * v26, v52);
      v30 = *(*(v27 + 56) + 8 * v26);
      v31 = sub_245F8E624(&qword_27EE3A710, &unk_246098858);
      v32 = *(v31 + 48);
      v33 = *(v28 + 32);
      v9 = v47;
      v33(v47, v21, v29);
      *&v9[v32] = v30;
      (*(*(v31 - 8) + 56))(v9, 0, 1, v31);

      v24 = v22;
      v11 = v46;
LABEL_13:
      sub_245FC5914(v9, v11, &qword_27EE3A708, &qword_246098850);
      v34 = sub_245F8E624(&qword_27EE3A710, &unk_246098858);
      if ((*(*(v34 - 8) + 48))(v11, 1, v34) == 1)
      {
        break;
      }

      v35 = *&v11[*(v34 + 48)];
      sub_246091AD4();

      result = (*v51)(v11, v52);
      v20 = v24;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v37 = v42;
    *(v42 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_isWritingCancelled) = 1;
    v38 = sub_24600A5F4(MEMORY[0x277D84F90]);
    v39 = *(v37 + v41);
    *(v37 + v41) = v38;
  }

  else
  {
LABEL_5:
    if (v18 <= v20 + 1)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = v18;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {
        v36 = sub_245F8E624(&qword_27EE3A710, &unk_246098858);
        (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v43 + 8 * v22);
      ++v20;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2460030A0()
{
  v1 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock;
  v2 = *(v0 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems;
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 16);
  v5 = *(v0 + v1);

  os_unfair_lock_unlock(v5 + 4);

  return v4;
}

uint64_t sub_246003134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems;
  swift_beginAccess();

  v7 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + v6);
  *(a1 + v6) = 0x8000000000000000;
  sub_246009228(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v10;
  return swift_endAccess();
}

uint64_t sub_2460031D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = sub_245FC1BDC(a2);
  v9 = 0;
  if (v10)
  {
    v11 = v8;
    v12 = *(a1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_246009E90();
    }

    v15 = *(v14 + 48);
    v16 = sub_246091834();
    (*(*(v16 - 8) + 8))(v15 + *(*(v16 - 8) + 72) * v11, v16);
    v9 = *(*(v14 + 56) + 8 * v11);
    sub_246008AD4(v11, v14);
    *(a1 + v6) = v14;
  }

  *a3 = v9;
  return swift_endAccess();
}

uint64_t sub_2460032D8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v67 = a3;
  v75 = a1;
  v6 = sub_2460918F4();
  v86 = *(v6 - 8);
  v87 = v6;
  v7 = *(v86 + 64);
  MEMORY[0x28223BE20](v6);
  v85 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2460919F4();
  v9 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_246091704();
  v80 = *(v82 - 8);
  v66 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_246091834();
  v89 = *(v14 - 8);
  v15 = *(v89 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v71 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v64 - v18;
  v64 = &v64 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  v22 = a2[1];
  v96 = *a2;
  v97 = v22;
  v98 = *(a2 + 4);
  v72 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock;
  v23 = *(v4 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);
  v92[8] = sub_24600C540;
  v93 = v4;
  v69 = v4;

  os_unfair_lock_lock(v23 + 4);
  sub_24600CC94();
  v76 = 0;
  os_unfair_lock_unlock(v23 + 4);

  v24 = v21;
  v84 = v21;
  sub_246091824();
  v25 = swift_allocObject();
  v83 = v25;
  *(v25 + 16) = 0;
  v68 = (v25 + 16);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v89;
  v28 = *(v89 + 16);
  v73 = v89 + 16;
  v74 = v28;
  v29 = v14;
  v88 = v14;
  v28(v19, v24, v14);
  sub_24600B080(v67, v79);
  v30 = v80;
  (*(v80 + 16))(v81, v70, v82);
  v31 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v65 + 80) + v33 + 40) & ~*(v65 + 80);
  v35 = (v13 + *(v30 + 80) + v34) & ~*(v30 + 80);
  v36 = (v66 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v26;
  (*(v89 + 32))(v37 + v31, v64, v29);
  *(v37 + v32) = v83;
  v38 = v37 + v33;
  *(v38 + 32) = v98;
  v39 = v97;
  *v38 = v96;
  *(v38 + 16) = v39;
  sub_24600BE48(v79, v37 + v34);
  (*(v80 + 32))(v37 + v35, v81, v82);
  *(v37 + v36) = v75;
  aBlock[4] = sub_24600C828;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DFA20;
  _Block_copy(aBlock);
  v94[5] = MEMORY[0x277D84F90];

  sub_24600C978(&v96, v94);
  sub_24600CAC0(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  v40 = v71;
  sub_2460921A4();
  v41 = sub_246091AE4();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_246091AC4();

  v45 = v68;
  swift_beginAccess();
  v46 = *v45;
  *v45 = v44;

  v47 = *(v69 + v72);
  v48 = v69;
  v49 = v84;
  v92[2] = v69;
  v92[3] = v84;
  v92[4] = v44;
  v90 = sub_24600CC74;
  v91 = v92;

  os_unfair_lock_lock(v47 + 4);
  sub_24600CC94();
  os_unfair_lock_unlock(v47 + 4);

  dispatch_group_enter(*(v48 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveDispatchGroup));
  v50 = *(v48 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveQueue);
  sub_246092064();
  sub_245FA3174();
  (*(v86 + 16))();
  v74(v40, v49, v88);
  v51 = sub_2460918D4();
  v52 = sub_246091F94();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v94[0] = v54;
    *v53 = 136315138;
    v55 = sub_2460917F4();
    v56 = v40;
    v58 = v57;
    v59 = *(v89 + 8);
    v59(v56, v88);
    v60 = sub_245F8D3C0(v55, v58, v94);

    *(v53 + 4) = v60;
    _os_log_impl(&dword_245F8A000, v51, v52, "HEIC Writer: Save work item submitted: %s", v53, 0xCu);
    sub_245F8E6F4(v54);
    MEMORY[0x24C1989D0](v54, -1, -1);
    MEMORY[0x24C1989D0](v53, -1, -1);

    (*(v86 + 8))(v85, v87);
    v59(v84, v88);
  }

  else
  {

    v61 = v88;
    v62 = *(v89 + 8);
    v62(v40, v88);
    (*(v86 + 8))(v85, v87);
    v62(v84, v61);
  }
}

uint64_t sub_246003B98(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_isWritingCancelled) == 1)
  {
    v8 = sub_245FA3174();
    (*(v3 + 16))(v7, v8, v2);
    v9 = sub_2460918D4();
    v10 = sub_246091FB4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245F8A000, v9, v10, "HEIC Writer: Writer is cancelled!", v11, 2u);
      MEMORY[0x24C1989D0](v11, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_246003D00(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v51 = a6;
  v49 = a5;
  v54 = a4;
  v47 = type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo(0);
  v8 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2460918F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v53 = result;
  if (result)
  {
    v52 = a2;
    swift_beginAccess();
    v50 = a3;
    if (*(a3 + 16) && (v22 = *(a3 + 16), , v23 = sub_246091AB4(), , (v23 & 1) == 0))
    {
      v39 = v53;
      v40 = *(v54 + 16);
      v55[0] = *v54;
      v55[1] = v40;
      v56 = *(v54 + 32);
      v41 = v51;
      sub_246005E18(v55, v49, v51);
      sub_2460005C8();
      v42 = *(v39 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID);
      v43 = v47;
      v44 = *(v47 + 20);
      v45 = sub_246091704();
      v46 = v48;
      (*(*(v45 - 8) + 16))(&v48[v44], v41, v45);
      *v46 = v42;
      *(v46 + *(v43 + 24)) = xmmword_246098580;
      sub_246091924();

      v36 = v54;
      sub_24600C49C(v46, type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo);
      v27 = v52;
      v38 = v50;
    }

    else
    {
      v24 = sub_245FA3174();
      v25 = v16;
      v26 = v15;
      (*(v16 + 16))(v20, v24, v15);
      v27 = v52;
      (*(v11 + 16))(v14, v52, v10);
      v28 = sub_2460918D4();
      v29 = sub_246091F94();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v51 = v26;
        v31 = v30;
        v49 = swift_slowAlloc();
        *&v55[0] = v49;
        *v31 = 136315138;
        v32 = sub_2460917F4();
        v34 = v33;
        (*(v11 + 8))(v14, v10);
        v35 = sub_245F8D3C0(v32, v34, v55);
        v36 = v54;

        *(v31 + 4) = v35;
        _os_log_impl(&dword_245F8A000, v28, v29, "HEIC Writer: Save work item cancelled: %s", v31, 0xCu);
        v37 = v49;
        sub_245F8E6F4(v49);
        v27 = v52;
        MEMORY[0x24C1989D0](v37, -1, -1);
        MEMORY[0x24C1989D0](v31, -1, -1);

        (*(v25 + 8))(v20, v51);
        v38 = v50;
        v39 = v53;
      }

      else
      {

        (*(v11 + 8))(v14, v10);
        (*(v25 + 8))(v20, v26);
        v38 = v50;
        v39 = v53;
        v36 = v54;
      }
    }

    sub_2460044B4(v39, v27, (v38 + 16), v36);
  }

  return result;
}

uint64_t sub_2460044B4(uint64_t a1, char *a2, uint64_t *a3, void *a4)
{
  v54 = a4;
  v50 = a2;
  v7 = sub_246091834();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2460918F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v19 = *(a1 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);
  v52 = a1;
  v58 = a1;
  v59 = a2;
  v55 = sub_24600CC44;
  v56 = &v57;

  os_unfair_lock_lock(v19 + 4);
  sub_24600CC5C(v60);
  v20 = v11;
  os_unfair_lock_unlock(v19 + 4);

  swift_beginAccess();
  v21 = *a3;
  *a3 = 0;
  v22 = v12;

  v23 = sub_245FA3174();
  v51 = v13;
  v24 = *(v13 + 16);
  v49 = v23;
  v24(v18);
  v25 = v11;
  v26 = v7;
  (*(v8 + 16))(v25, v50, v7);
  v50 = v18;
  v27 = sub_2460918D4();
  v28 = sub_246091F94();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48 = v12;
    v30 = v29;
    v31 = v24;
    v32 = swift_slowAlloc();
    v60[0] = v32;
    *v30 = 136315138;
    v33 = sub_2460917F4();
    v34 = v20;
    v36 = v35;
    (*(v8 + 8))(v34, v26);
    v37 = sub_245F8D3C0(v33, v36, v60);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_245F8A000, v27, v28, "HEIC Writer: Save work item removed from active: %s", v30, 0xCu);
    sub_245F8E6F4(v32);
    v38 = v32;
    v24 = v31;
    MEMORY[0x24C1989D0](v38, -1, -1);
    v39 = v30;
    v22 = v48;
    MEMORY[0x24C1989D0](v39, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v20, v26);
  }

  v40 = *(v51 + 8);
  v40(v50, v22);
  dispatch_group_leave(*(v52 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_saveDispatchGroup));
  v41 = v53;
  (v24)(v53, v49, v22);
  v42 = v54;
  sub_24600C978(v54, v60);
  v43 = sub_2460918D4();
  v44 = sub_246091F94();
  sub_24600C9D4(v42);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134349056;
    *(v45 + 4) = *v54;
    _os_log_impl(&dword_245F8A000, v43, v44, "HEIC Writer: High-resolution pixel buffer %{public}f released after saving HEIC.", v45, 0xCu);
    MEMORY[0x24C1989D0](v45, -1, -1);
  }

  return (v40)(v41, v22);
}

uint64_t sub_246004940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v62 = a2;
  v69 = a1;
  v82 = sub_2460918F4();
  v79 = *(v82 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2460919F4();
  v6 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_246091704();
  v75 = *(v61 - 8);
  v59 = *(v75 + 64);
  MEMORY[0x28223BE20](v61);
  v74 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_246091834();
  v80 = *(v76 - 8);
  v11 = v80[8];
  v12 = MEMORY[0x28223BE20](v76);
  v73 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v57 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  v66 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock;
  v18 = *(v3 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);
  v89 = nullsub_1;
  v90 = v3;
  v64 = v3;

  os_unfair_lock_lock(v18 + 4);
  sub_24600CC94();
  v70 = 0;
  os_unfair_lock_unlock(v18 + 4);

  v78 = v17;
  sub_246091824();
  v19 = swift_allocObject();
  v77 = v19;
  *(v19 + 16) = 0;
  v63 = (v19 + 16);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v80;
  v22 = v80[2];
  v67 = v80 + 2;
  v68 = v22;
  v23 = v76;
  (v22)(v15, v17, v76);
  sub_24600B080(v62, &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v75;
  v25 = v61;
  (*(v75 + 16))(v74, v65, v61);
  v26 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v27 = (v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v60 + 80) + v27 + 8) & ~*(v60 + 80);
  v29 = (v10 + *(v24 + 80) + v28) & ~*(v24 + 80);
  v30 = (v59 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v20;
  (v21[4])(v31 + v26, v57, v23);
  *(v31 + v27) = v77;
  sub_24600BE48(v58, v31 + v28);
  (*(v75 + 32))(v31 + v29, v74, v25);
  *(v31 + v30) = v69;
  aBlock[4] = sub_24600BEAC;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF9D0;
  _Block_copy(aBlock);
  v91 = MEMORY[0x277D84F90];
  sub_24600CAC0(&qword_27EE3A380, MEMORY[0x277D85198]);

  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  v32 = sub_246091AE4();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_246091AC4();

  v36 = v63;
  swift_beginAccess();
  v37 = *v36;
  *v36 = v35;

  v38 = *(v64 + v66);
  v86 = v64;
  v39 = v64;
  v40 = v78;
  v87 = v78;
  v88 = v35;
  v83 = sub_24600C008;
  v84 = &v85;

  os_unfair_lock_lock(v38 + 4);
  sub_24600CC94();
  os_unfair_lock_unlock(v38 + 4);

  v41 = *(v39 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateQueue);
  sub_246092064();
  dispatch_group_enter(*(v39 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateDispatchGroup));
  v42 = sub_245FA3174();
  v43 = v73;
  (*(v79 + 16))(v81, v42, v82);
  v44 = v76;
  v68(v43, v40);
  v45 = sub_2460918D4();
  v46 = sub_246091F94();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v91 = v48;
    *v47 = 136315138;
    v49 = sub_2460917F4();
    v50 = v43;
    v52 = v51;
    v53 = v80[1];
    v53(v50, v44);
    v54 = sub_245F8D3C0(v49, v52, &v91);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_245F8A000, v45, v46, "HEIC Writer: Update work item submitted: %s", v47, 0xCu);
    sub_245F8E6F4(v48);
    MEMORY[0x24C1989D0](v48, -1, -1);
    MEMORY[0x24C1989D0](v47, -1, -1);

    (*(v79 + 8))(v81, v82);
    v53(v78, v44);
  }

  else
  {

    v55 = v80[1];
    v55(v43, v44);
    (*(v79 + 8))(v81, v82);
    v55(v78, v44);
  }
}

uint64_t sub_2460052E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v48 = a4;
  v52 = a2;
  v6 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo(0);
  v8 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2460918F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v51 = result;
  if (result)
  {
    swift_beginAccess();
    v49 = a3;
    if (*(a3 + 16) && (v22 = *(a3 + 16), , v23 = sub_246091AB4(), , (v23 & 1) == 0))
    {
      v40 = v50;
      sub_24600C038(v48);
      v39 = v51;
      sub_2460005C8();
      v41 = *(v39 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotID);
      v42 = v46;
      v43 = *(v46 + 20);
      v44 = sub_246091704();
      v45 = v47;
      (*(*(v44 - 8) + 16))(&v47[v43], v40, v44);
      *v45 = v41;
      *(v45 + *(v42 + 24)) = xmmword_246098580;
      sub_246091924();

      sub_24600C49C(v45, type metadata accessor for ObjectCaptureHEICBundleWriter.WriteInfo);
      v38 = v49;
      v37 = v52;
    }

    else
    {
      v24 = sub_245FA3174();
      v25 = v16;
      (*(v16 + 16))(v20, v24, v15);
      v26 = v52;
      (*(v11 + 16))(v14, v52, v10);
      v27 = sub_2460918D4();
      v28 = sub_246091F94();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v50 = v25;
        v30 = v29;
        v31 = swift_slowAlloc();
        v53 = v31;
        *v30 = 136315138;
        v32 = sub_2460917F4();
        v48 = v15;
        v34 = v33;
        (*(v11 + 8))(v14, v10);
        v35 = sub_245F8D3C0(v32, v34, &v53);
        v36 = v52;

        *(v30 + 4) = v35;
        _os_log_impl(&dword_245F8A000, v27, v28, "HEIC Writer: Update work item cancelled: %s", v30, 0xCu);
        sub_245F8E6F4(v31);
        MEMORY[0x24C1989D0](v31, -1, -1);
        MEMORY[0x24C1989D0](v30, -1, -1);

        (*(v50 + 8))(v20, v48);
        v37 = v36;
        v38 = v49;
        v39 = v51;
      }

      else
      {

        (*(v11 + 8))(v14, v10);
        (*(v25 + 8))(v20, v15);
        v38 = v49;
        v39 = v51;
        v37 = v26;
      }
    }

    sub_246005ACC(v39, v37, (v38 + 16));
  }

  return result;
}

uint64_t sub_246005ACC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32 = a3;
  v5 = sub_246091834();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock);
  v31 = a1;
  v36 = a1;
  v37 = a2;
  v33 = sub_24600C4FC;
  v34 = &v35;

  os_unfair_lock_lock(v15 + 4);
  sub_24600C528(v38);
  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_245FA3174();
  v30 = v11;
  (*(v11 + 16))(v14, v16, v10);
  v17 = *(v6 + 16);
  v29 = v5;
  v17(v9, a2, v5);
  v18 = sub_2460918D4();
  v19 = sub_246091F94();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38[0] = v21;
    *v20 = 136315138;
    v22 = sub_2460917F4();
    v24 = v23;
    (*(v6 + 8))(v9, v29);
    v25 = sub_245F8D3C0(v22, v24, v38);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_245F8A000, v18, v19, "HEIC Writer: Update work item removed from active: %s", v20, 0xCu);
    sub_245F8E6F4(v21);
    MEMORY[0x24C1989D0](v21, -1, -1);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v29);
  }

  (*(v30 + 8))(v14, v10);
  dispatch_group_leave(*(v31 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_updateDispatchGroup));
  v26 = v32;
  swift_beginAccess();
  v27 = *v26;
  *v26 = 0;
}

void sub_246005E18(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v215 = a3;
  v225 = a2;
  v284 = *MEMORY[0x277D85DE8];
  v4 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v217 = &v206 - v6;
  v7 = sub_246091834();
  v218 = *(v7 - 8);
  v219 = v7;
  v8 = *(v218 + 64);
  MEMORY[0x28223BE20](v7);
  v214 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v10 = *(*(v224 - 1) + 64);
  MEMORY[0x28223BE20](v224);
  v12 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2460918F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v206 - v19;
  v21 = *a1;
  v22 = a1[2];
  v24 = a1[3];
  v23 = a1[4];
  v222 = a1[1];
  v223 = v24;
  v220 = v23;
  if (v22)
  {
    v25 = v22;
    v26 = sub_245FC664C(v25);

    if (!v26)
    {
      goto LABEL_25;
    }
  }

  v221 = v22;
  v27 = v223;
  if (v223)
  {
    v25 = v223;
    v28 = sub_245FC6820(v25);

    if (!v28)
    {

LABEL_25:
      sub_24600A7DC();
      swift_allocError();
      *v78 = 0;
      v78[1] = 0;
      swift_willThrow();

      goto LABEL_113;
    }
  }

  v211 = v18;
  v212 = v13;
  v213 = v14;
  v29 = v225 + v224[7];
  v30 = *(v29 + 112);
  v31 = *(v29 + 80);
  v277 = *(v29 + 96);
  v278 = v30;
  v32 = *(v29 + 112);
  v279 = *(v29 + 128);
  v33 = *(v29 + 48);
  v34 = *(v29 + 16);
  v273 = *(v29 + 32);
  v274 = v33;
  v35 = *(v29 + 48);
  v36 = *(v29 + 80);
  v275 = *(v29 + 64);
  v276 = v36;
  v37 = *(v29 + 16);
  v272[0] = *v29;
  v272[1] = v37;
  v281[6] = v277;
  v281[7] = v32;
  v282 = *(v29 + 128);
  v281[2] = v273;
  v281[3] = v35;
  v281[4] = v275;
  v281[5] = v31;
  v280 = *(v29 + 144);
  v283 = *(v29 + 144);
  v281[0] = v272[0];
  v281[1] = v34;
  v38 = sub_245F97C14(v281);
  v39 = v221;
  if (v38 != 1)
  {
    v40 = v282;
    if (v282)
    {
      v41 = v279;
      if (!sub_245FC66D0(v40) || (Width = CVPixelBufferGetWidth(v40), Width != CVPixelBufferGetWidth(v222)) || (Height = CVPixelBufferGetHeight(v40), Height != CVPixelBufferGetHeight(v222)))
      {

        sub_24600A7DC();
        swift_allocError();
        *v79 = 0;
        v79[1] = 0;
        swift_willThrow();
        sub_245F8E744(v272, &qword_27EE3A990, &qword_246099C20);
        goto LABEL_113;
      }

      sub_245F8E744(v272, &qword_27EE3A990, &qword_246099C20);
    }
  }

  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v243 = 0u;
  v44 = v222;
  v45 = sub_245FFF4B4(v222);
  if ((v45 & 0x100000000) != 0)
  {
    v46 = 1;
  }

  else
  {
    v46 = v45;
  }

  v47 = v44;
  *&v243 = v44;
  if (v39)
  {
    v48 = v39;

    *(&v244 + 1) = v39;
  }

  v49 = v223;
  if (v223)
  {
    v50 = v223;

    *&v245 = v49;
  }

  v51 = *(v29 + 80);
  v239[4] = *(v29 + 64);
  v239[5] = v51;
  v52 = *(v29 + 112);
  v239[6] = *(v29 + 96);
  v239[7] = v52;
  v53 = *(v29 + 16);
  v239[0] = *v29;
  v239[1] = v53;
  v54 = *(v29 + 48);
  v239[2] = *(v29 + 32);
  v239[3] = v54;
  v56 = *(v29 + 128);
  v55 = *(v29 + 136);
  v242 = *(v29 + 144);
  v241 = v55;
  v240 = v56;
  v57 = sub_245F97C14(v239);
  v58 = v225;
  if (v57 != 1)
  {
    v59 = v240;
    if (v240)
    {
      v60 = v240;
      v61 = v56;

      *(&v245 + 1) = v59;
    }
  }

  v62 = *(v58 + 144);
  if (v46 != v62)
  {
    LODWORD(v209) = v46;
    v63 = sub_245FA3174();
    v64 = v212;
    (*(v213 + 16))(v20, v63, v212);
    sub_24600B080(v58, v12);
    v65 = sub_2460918D4();
    LODWORD(v208) = sub_246091FB4();
    v210 = v65;
    if (os_log_type_enabled(v65, v208))
    {
      v66 = swift_slowAlloc();
      v207 = v66;
      v206 = swift_slowAlloc();
      *&v228 = v206;
      *v66 = 136315394;
      LODWORD(v238[0]) = v209;
      type metadata accessor for CGImagePropertyOrientation(0);
      v67 = sub_246091C54();
      v69 = sub_245F8D3C0(v67, v68, &v228);

      v70 = v207;
      *(v207 + 1) = v69;
      *(v70 + 6) = 2080;
      LODWORD(v238[0]) = *(v12 + 36);
      v58 = v225;
      v71 = sub_246091C54();
      v73 = v72;
      sub_24600C49C(v12, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      v74 = sub_245F8D3C0(v71, v73, &v228);

      v75 = v207;
      *(v207 + 14) = v74;
      v76 = v210;
      _os_log_impl(&dword_245F8A000, v210, v208, "HEIC Writer: orientation in image attachment: %s doesn't match metadata.camera.orientation: %s!", v75, 0x16u);
      v77 = v206;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v77, -1, -1);
      MEMORY[0x24C1989D0](v75, -1, -1);

      (*(v213 + 8))(v20, v212);
    }

    else
    {

      sub_24600C49C(v12, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      (*(v213 + 8))(v20, v64);
    }
  }

  LODWORD(v244) = v62;
  v80 = *(v58 + 32);
  v252 = *(v58 + 16);
  v253 = v80;
  v81 = *(v58 + 64);
  v254 = *(v58 + 48);
  v82 = *(v58 + 80);
  v83 = *(v58 + 96);
  v84 = *(v58 + 112);
  v247 = v81;
  v248 = v82;
  v249 = v83;
  v250 = v84;
  v85 = sub_245FFF67C(v222, *(v58 + v224[10]), *(v58 + v224[10] + 8), *(v58 + v224[10] + 16), *(v58 + v224[10] + 24));
  v86 = *MEMORY[0x277CD33B0];
  v87 = sub_246091C04();
  if (v85[2])
  {
    v89 = sub_245F8D968(v87, v88);
    v91 = v90;

    if (v91)
    {
      sub_245F8E5C8(*&v85[7] + 32 * v89, &v228);
      sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      if (swift_dynamicCast())
      {
        v92 = *&v238[0];
        goto LABEL_34;
      }
    }
  }

  else
  {
  }

  v92 = sub_245F8E498(MEMORY[0x277D84F90]);
LABEL_34:
  v93 = OCNonModularSPI_AppleMakerNote_Timestamp();
  if (!v93)
  {
    __break(1u);
    goto LABEL_116;
  }

  v94 = v93;
  v95 = sub_246091C04();
  v97 = v96;

  *(&v229 + 1) = MEMORY[0x277D839F8];
  *&v228 = v21;
  sub_245F8E6C0(&v228, v238);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v226 = v92;
  sub_246008DF4(v238, v95, v97, isUniquelyReferenced_nonNull_native);

  v99 = v226;
  v100 = OCNonModularSPI_AppleMakerNote_Camera();
  if (!v100)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v101 = v100;
  v102 = sub_246091C04();
  v104 = v103;

  v105 = OCNonModularSPI_AppleMakerNote_BackWideAngleCamera();
  *(&v229 + 1) = MEMORY[0x277D849A8];
  LODWORD(v228) = v105;
  sub_245F8E6C0(&v228, v238);
  v106 = swift_isUniquelyReferenced_nonNull_native();
  v226 = v99;
  sub_246008DF4(v238, v102, v104, v106);

  v107 = v226;
  v108 = sub_246091C04();
  v110 = v109;
  v208 = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
  *(&v229 + 1) = v208;
  *&v228 = v107;
  sub_245F8E6C0(&v228, v238);
  v210 = v107;

  v111 = swift_isUniquelyReferenced_nonNull_native();
  v226 = v85;
  sub_246008DF4(v238, v108, v110, v111);

  v209 = v226;
  v112 = sub_246091B34();
  v113 = v112;

  *(&v243 + 1) = v112;
  v114 = v225;
  LODWORD(v251) = dword_246098930[*(v225 + 128)];
  OCNonModularSPI_Serialization_InvalidObjectTransform();
  v260 = v115;
  v261 = v116;
  v262 = v117;
  v263 = v118;
  *&v119 = sub_24600B6D0(v114);
  v264 = v119;
  v265 = v120;
  v266 = v121;
  v267 = v122;
  v123 = *(v114 + v224[11]);
  if (!v123)
  {
    goto LABEL_53;
  }

  v124 = v123;
  v125 = [v124 points];
  v126 = [v124 count];
  if (v126)
  {
    v127 = v126;
    v85 = sub_246007730(v126, 0);
    memcpy(&v85[4], v125, 16 * v127);
  }

  else
  {
    v85 = MEMORY[0x277D84F90];
  }

  v128 = [v124 identifiers];
  v129 = [v124 count];
  if (v129)
  {
    v130 = v129;
    v131 = sub_2460077B4(v129, 0);
    memcpy(v131 + 4, v128, 8 * v130);
  }

  else
  {
    v131 = MEMORY[0x277D84F90];
  }

  v132 = v85[2];
  v114 = v225;
  if (!*&v132)
  {

    goto LABEL_50;
  }

  if (*&v132 >> 58)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  *&v228 = sub_24600B0E4(32 * *&v132);
  *(&v228 + 1) = v133;
  v134 = sub_24600B230(&v228, v85, v131);

  if ((v134 & 1) == 0)
  {
    sub_245FAEC7C(v228, *(&v228 + 1));

LABEL_53:
    v138 = v220;
    if (!v220)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (*(&v228 + 1) >> 60 != 15)
  {
    v135 = *(&v228 + 1);
    v85 = v228;
    v136 = sub_246091734();

    sub_245FAEC68(v85, v135);
    v137 = v136;

    *&v268 = v136;
    v138 = v220;
    if (!v220)
    {
      goto LABEL_55;
    }

LABEL_54:
    *&v246 = v138;
    goto LABEL_55;
  }

LABEL_50:

  v138 = v220;
  if (v220)
  {
    goto LABEL_54;
  }

LABEL_55:
  v139 = *(v114 + 136);
  if (!v139)
  {

    goto LABEL_59;
  }

  v140 = v139;
  v141 = OCNonModularSPI_AVCameraCalibrationData_CreateDictionaryFrom();
  if (!v141)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v142 = v141;
  sub_246091B64();

  v143 = sub_246091B34();

  v144 = v143;

  *&v255 = v143;
  v114 = v225;
LABEL_59:
  v145 = sub_246091188();
  v147 = *v145;
  v146 = *(v145 + 1);

  v148 = sub_246091BD4();

  v149 = v148;

  *(&v268 + 1) = v148;
  v150 = *(v29 + 96);
  v151 = *(v29 + 128);
  v235 = *(v29 + 112);
  v236 = v151;
  v237 = *(v29 + 144);
  v152 = *(v29 + 48);
  v230 = *(v29 + 32);
  v231 = v152;
  v153 = *(v29 + 80);
  v232 = *(v29 + 64);
  v233 = v153;
  v234 = v150;
  v154 = *(v29 + 16);
  v228 = *v29;
  v229 = v154;
  if (sub_245F97C14(&v228) == 1 || v237 == 1)
  {
    v155 = v224;
    v156 = v114 + v224[8];
    v158 = v218;
    v157 = v219;
    v159 = v217;
    if (*(v156 + 73) & 1) != 0 || (*(v156 + 72))
    {
      LODWORD(v160) = -1;
      goto LABEL_68;
    }

    v160 = *(v156 + 64);
  }

  else
  {
    v160 = *(&v236 + 1);
    v155 = v224;
    v158 = v218;
    v157 = v219;
    v159 = v217;
  }

  if (v160 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_96;
  }

  if (v160 > 0x7FFFFFFF)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_68:
  LODWORD(v269) = v160;
  sub_245F8E7A4(v114 + v155[6], v159, &qword_27EE3A350, &unk_2460969A0);
  if ((*(v158 + 48))(v159, 1, v157) == 1)
  {
    sub_245F8E744(v159, &qword_27EE3A350, &unk_2460969A0);
  }

  else
  {
    v161 = v214;
    (*(v158 + 32))(v214, v159, v157);
    sub_2460917F4();
    v162 = sub_246091BD4();

    v163 = *(v158 + 8);
    v164 = v162;
    v163(v161, v157);

    *(&v269 + 1) = v162;
  }

  v165 = *(v114 + v155[9]);
  if (v165 != 2)
  {
    LOBYTE(v238[0]) = v165 & 1;
    v166 = ObjectCaptureSession.Metadata.Shot.CaptureMode.rawValue.getter();
    if (v166 >= 0xFFFFFFFF80000000)
    {
      if (v166 <= 0x7FFFFFFF)
      {
        goto LABEL_75;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  LODWORD(v166) = -1;
LABEL_75:
  LODWORD(v270) = v166;
  v167 = v114 + v155[12];
  if (*(v167 + 8))
  {
    LODWORD(v168) = -1;
  }

  else
  {
    v168 = *v167;
    if (v168 < 0xFFFFFFFF80000000)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v168 > 0x7FFFFFFF)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }
  }

  DWORD1(v270) = v168;
  if ((*(v114 + 224) & 1) == 0)
  {
    v170 = *(v114 + 176);
    v169 = *(v114 + 192);
    v171 = *(v114 + 208);
    v172 = *(v114 + 216);
    v256 = *(v114 + 160);
    v257 = v170;
    v258 = v169;
    *(&v259 + 1) = v172;
    *&v259 = v171;
  }

  v225 = *(v114 + v155[13]);
  v173 = v225;
  if (!(v225 >> 62))
  {
    v85 = *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v85)
    {
      goto LABEL_107;
    }

    goto LABEL_83;
  }

LABEL_99:
  if (!sub_246092354())
  {
    goto LABEL_107;
  }

  v182 = sub_246092354();
  if (v182)
  {
    v85 = v182;
    if (v182 < 1)
    {
      __break(1u);
      goto LABEL_103;
    }

LABEL_118:
    v173 = v225;
LABEL_83:
    v174 = 0;
    v175 = v173 & 0xC000000000000001;
    v176 = MEMORY[0x277D84F90];
    do
    {
      if (v175)
      {
        v177 = MEMORY[0x24C196C20](v174, v173);
      }

      else
      {
        v177 = *(v173 + 8 * v174 + 32);
      }

      v178 = (*(*v177 + 192))();
      if (v178)
      {
        v179 = v178;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v176 = sub_2460075FC(0, v176[2] + 1, 1, v176);
        }

        v181 = v176[2];
        v180 = v176[3];
        if (v181 >= v180 >> 1)
        {
          v176 = sub_2460075FC((v180 > 1), v181 + 1, 1, v176);
        }

        v176[2] = v181 + 1;
        v176[v181 + 4] = v179;
        v173 = v225;
      }

      else
      {
      }

      v174 = (v174 + 1);
    }

    while (v85 != v174);
  }

LABEL_106:
  v183 = sub_246091DB4();

  v184 = v183;

  *(&v270 + 1) = v183;
LABEL_107:
  v185 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_heicWriteHandle;
  v186 = v216;
  swift_beginAccess();
  v187 = *(v186 + v185);
  v188 = sub_246091674();
  LODWORD(v187) = OCNonModularSPI_CMPhoto_write();

  if (v187)
  {
    v226 = 0;
    v227 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD000000000000045, 0x80000002460A12D0);
    sub_246091EF4();
    v189 = v226;
    v190 = v227;
    sub_24600A7DC();
    swift_allocError();
    *v191 = v189;
    v191[1] = v190;
    swift_willThrow();
  }

  else
  {
    v192 = *(v186 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_numFilesWritten);
    v193 = __OFADD__(v192, 1);
    v194 = v192 + 1;
    if (v193)
    {
      __break(1u);
    }

    *(v186 + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_numFilesWritten) = v194;
    v195 = sub_245FA3174();
    v196 = v212;
    v197 = v213;
    (*(v213 + 16))(v211, v195, v212);
    v198 = v220;
    v199 = v222;
    v200 = v221;
    v201 = v223;
    v202 = sub_2460918D4();
    v203 = sub_246091FC4();

    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 134349056;
      *(v204 + 4) = v21;
      _os_log_impl(&dword_245F8A000, v202, v203, "HEIC Writer: Successfully saved image HEIC file at time = %{public}f", v204, 0xCu);
      MEMORY[0x24C1989D0](v204, -1, -1);
    }

    (*(v197 + 8))(v211, v196);
  }

LABEL_113:
  v205 = *MEMORY[0x277D85DE8];
}

void sub_24600701C(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v22 = a1[1];
  v23 = v9;
  v10 = a1[2];
  v20 = a1[3];
  v21 = v10;
  v11 = sub_245FA3174();
  (*(v5 + 16))(v8, v11, v4);
  v12 = sub_2460918D4();
  v13 = sub_246091FA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245F8A000, v12, v13, "HEIC Writer: Removing reconstruction scale from object-centric box for HEIC writing...", v14, 2u);
    MEMORY[0x24C1989D0](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v15 = sub_246090EC4();
  *&v16 = sub_246021644(v23, v22, v21, v20, *v15);
  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v19;
}

void sub_2460071AC(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v22 = a1[1];
  v23 = v9;
  v10 = a1[2];
  v20 = a1[3];
  v21 = v10;
  v11 = sub_245FA3174();
  (*(v5 + 16))(v8, v11, v4);
  v12 = sub_2460918D4();
  v13 = sub_246091FA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245F8A000, v12, v13, "HEIC Writer: Removing reconstruction scale from object-centric box for HEIC writing...", v14, 2u);
    MEMORY[0x24C1989D0](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v15 = sub_246090E60();
  *&v16 = sub_246021644(v23, v22, v21, v20, *v15);
  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v19;
}

uint64_t sub_24600733C(double a1)
{
  v2 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_246096EF0;
  *(v3 + 32) = sub_2460916F4();
  *(v3 + 40) = v4;
  v10 = sub_24602138C(a1);
  v11 = v5;
  MEMORY[0x24C196640](0x434945482ELL, 0xE500000000000000);
  *(v3 + 48) = v10;
  *(v3 + 56) = v11;
  v6 = sub_246091DB4();

  v7 = [v2 pathWithComponents_];

  v8 = sub_246091C04();
  return v8;
}

char *ObjectCaptureHEICBundleWriter.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_url;
  v6 = sub_246091704();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *&v0[OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_subscriptions];

  v8 = *&v0[OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise + 8];
  sub_245FFDCC4(*&v0[OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise]);
  v9 = *&v0[OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotMetadataMap];

  v10 = *&v0[OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_shotFeatureMatchabilityScoreMap];

  v11 = *&v0[OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_urlToShotIDMap];

  v12 = *&v0[OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItemsLock];

  v13 = *&v0[OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_queueActiveWorkItems];

  v14 = *&v0[OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_meshWriter];

  return v0;
}

uint64_t ObjectCaptureHEICBundleWriter.__deallocating_deinit()
{
  ObjectCaptureHEICBundleWriter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_2460075FC(void *result, int64_t a2, char a3, void *a4)
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
    sub_245F8E624(&qword_27EE3A6F8, &unk_246098830);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_246007730(uint64_t a1, uint64_t a2)
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

  sub_245F8E624(&unk_27EE3B240, &unk_246097000);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2460077B4(uint64_t a1, uint64_t a2)
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

  sub_245F8E624(&qword_27EE3A6F0, &unk_246098820);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

unint64_t sub_246007838(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_246091704();
  v5 = MEMORY[0x277CC9260];
  sub_24600CAC0(&qword_27EE3A5E0, MEMORY[0x277CC9260]);
  v6 = sub_246091B84();
  return sub_246009664(a1, v6, MEMORY[0x277CC9260], &qword_27EE3A5E8, v5, MEMORY[0x277CC9278]);
}

unint64_t sub_24600790C(double a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2460924F4();

  return sub_246009804(v4, a1);
}

double sub_246007958@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_245F8D968(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24600986C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_245F8E6C0((*(v12 + 56) + 32 * v9), a3);
    sub_246008760(v9, v12);
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

uint64_t sub_2460079FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3B250, qword_2460964E0);
  v36 = a2;
  result = sub_246092374();
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
        sub_245F8E6C0(v25, v37);
      }

      else
      {
        sub_245F8E5C8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_246092504();
      sub_246091C94();
      result = sub_246092544();
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
      result = sub_245F8E6C0(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_246007CB4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_245F8E624(&qword_27EE3A740, &qword_246098898);
  v44 = a2;
  result = sub_246092374();
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

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_24600CAC0(&qword_27EE3A5E0, MEMORY[0x277CC9260]);
      result = sub_246091B84();
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
      *(*(v14 + 56) + 8 * v22) = v30;
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

uint64_t sub_246008074(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_245F8E624(&qword_27EE3A730, &unk_246098D90);
  result = sub_246092374();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v3;
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
      v27 = *(v39 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (a2)
      {
        sub_24600BE48(v28, v9);
      }

      else
      {
        sub_24600B080(v28, v9);
      }

      v29 = *(v13 + 40);
      result = sub_2460924F4();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_24600BE48(v9, *(v13 + 56) + v27 * v21);
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

    if ((a2 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_246008384(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_246091834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_245F8E624(&qword_27EE3A700, &unk_246098840);
  v43 = a2;
  result = sub_246092374();
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
      sub_24600CAC0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      result = sub_246091B84();
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

uint64_t sub_246008760(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2460921C4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_246092504();

      sub_246091C94();
      v14 = sub_246092544();

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

unint64_t sub_246008910(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2460921C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      *v11;
      result = sub_2460924F4();
      v12 = result & v7;
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

      v15 = (v10 + 8 * v3);
      if (v3 != v6 || v15 >= v11 + 1)
      {
        *v15 = *v11;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

unint64_t sub_246008AD4(int64_t a1, uint64_t a2)
{
  v43 = sub_246091834();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_2460921C4();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_24600CAC0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      v26 = sub_246091B84();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
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
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

_OWORD *sub_246008DF4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_245F8D968(a2, a3);
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
      sub_24600986C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2460079FC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_245F8D968(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_246092424();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_245F8E6F4(v23);

    return sub_245F8E6C0(a1, v23);
  }

  else
  {
    sub_2460093F4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_246008F44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091704();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_246007838(a2);
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
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_246009A10();
    goto LABEL_7;
  }

  sub_246007CB4(result, a3 & 1);
  v22 = *v4;
  result = sub_246007838(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_246092424();
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
  return sub_246009460(v15, v12, a1, v21);
}

uint64_t sub_2460090E0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24600790C(a3);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 >= v13 && (a2 & 1) == 0)
    {
      sub_246009C80();
      goto LABEL_7;
    }

    sub_246008074(v13, a2 & 1);
    v20 = *v4;
    v21 = sub_24600790C(a3);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8) + 72) * v10;

    return sub_24600CB08(a1, v18);
  }

LABEL_13:

  return sub_246009518(v10, a1, v16, a3);
}

uint64_t sub_246009228(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_245FC1BDC(a2);
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
      sub_246009E90();
      goto LABEL_7;
    }

    sub_246008384(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_245FC1BDC(a2);
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
      return sub_2460095AC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_246092424();
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
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_2460093F4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_245F8E6C0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_246009460(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_246091704();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
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

uint64_t sub_246009518(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a4;
  v7 = a3[7];
  v8 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  result = sub_24600BE48(a2, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a3[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v12;
  }

  return result;
}

uint64_t sub_2460095AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_246091834();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
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

unint64_t sub_246009664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_24600CAC0(v24, v25);
      v20 = sub_246091BB4();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_246009804(uint64_t a1, double a2)
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

void *sub_24600986C()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3B250, qword_2460964E0);
  v2 = *v0;
  v3 = sub_246092364();
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
        sub_245F8E5C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_245F8E6C0(v25, (*(v4 + 56) + v22));
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

char *sub_246009A10()
{
  v1 = v0;
  v32 = sub_246091704();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A740, &qword_246098898);
  v4 = *v0;
  v5 = sub_246092364();
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
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
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

void *sub_246009C80()
{
  v1 = v0;
  v2 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A730, &unk_246098D90);
  v7 = *v0;
  v8 = sub_246092364();
  v9 = v8;
  if (*(v7 + 16))
  {
    v26 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(*(v7 + 48) + 8 * v22);
        v24 = *(v3 + 72) * v22;
        sub_24600B080(*(v7 + 56) + v24, v6);
        *(*(v9 + 48) + 8 * v22) = v23;
        result = sub_24600BE48(v6, *(v9 + 56) + v24);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v26;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
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

char *sub_246009E90()
{
  v1 = v0;
  v34 = sub_246091834();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A700, &unk_246098840);
  v4 = *v0;
  v5 = sub_246092364();
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

unint64_t sub_24600A110(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_24600A140(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_24600A150(a1, a2);
  }

  return a1;
}

uint64_t sub_24600A150(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_24600A164(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A760, qword_2460988B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&qword_27EE3A730, &unk_246098D90);
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_245F8E7A4(v10, v6, &qword_27EE3A760, qword_2460988B8);
      v12 = *v6;
      result = sub_24600790C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
      result = sub_24600BE48(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24600A32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A758, &qword_2460988B0);
    v3 = sub_246092384();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24600790C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}