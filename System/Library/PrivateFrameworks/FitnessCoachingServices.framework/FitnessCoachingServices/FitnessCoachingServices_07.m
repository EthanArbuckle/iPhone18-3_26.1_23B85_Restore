uint64_t sub_2278AED70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6678, qword_2278CE848);
  v38 = a2;
  result = sub_2278C7D40();
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
      sub_2278C7E60();
      sub_2278C7730();
      result = sub_2278C7E90();
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

uint64_t sub_2278AF010(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6660, &qword_2278CE820);
  result = sub_2278C7D40();
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
        sub_2278A7620((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2278AFFF0(v24, &v38);
        sub_227802850(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_2278C7BD0();
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
      result = sub_2278A7620(v37, (*(v8 + 56) + 32 * v16));
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

id sub_2278AF2C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60E0, &qword_2278CE840);
  v2 = *v0;
  v3 = sub_2278C7D30();
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

void *sub_2278AF434()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationRequest();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6668, &qword_2278CE828);
  v5 = *v0;
  v6 = sub_2278C7D30();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_2278101A4(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_227810264(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_2278AF664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6678, qword_2278CE848);
  v2 = *v0;
  v3 = sub_2278C7D30();
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

void *sub_2278AF7CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6660, &qword_2278CE820);
  v2 = *v0;
  v3 = sub_2278C7D30();
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
        sub_2278AFFF0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_227802850(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2278A7620(v22, (*(v4 + 56) + v17));
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

uint64_t sub_2278AF970(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2278AE31C(a2, a3);
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
      sub_2278AF434();
      goto LABEL_7;
    }

    sub_2278AEA34(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_2278AE31C(a2, a3);
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
    result = sub_2278C7E00();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for NotificationRequest() - 8) + 72) * v12;

    return sub_2278B004C(a1, v20);
  }

LABEL_13:
  sub_2278AFC20(v12, a2, a3, a1, v18);
}

_OWORD *sub_2278AFAD4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2278AE394(a2);
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
      sub_2278AF7CC();
      goto LABEL_7;
    }

    sub_2278AF010(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_2278AE394(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2278AFFF0(a2, v22);
      return sub_2278AFCB8(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_2278C7E00();
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

  return sub_2278A7620(a1, v17);
}

uint64_t sub_2278AFC20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for NotificationRequest();
  result = sub_227810264(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

_OWORD *sub_2278AFCB8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2278A7620(a3, (a4[7] + 32 * a1));
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

BOOL sub_2278AFD34(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_2278C7DC0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_2278C7DC0() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_2278C7DC0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v6 = type metadata accessor for NotificationRequest();
  v7 = v6[8];
  if ((sub_2278C67F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[9];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v9 == *v11 && v10 == v11[1];
  if (!v12 && (sub_2278C7DC0() & 1) == 0 || *(a1 + v6[10]) != *(a2 + v6[10]))
  {
    return 0;
  }

  v13 = v6[11];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17 || (*v14 != *v16 || v15 != v17) && (sub_2278C7DC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = v6[12];
  v20 = *(a1 + v18);
  v19 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v23 = *v21;
  v22 = v21[1];
  if (v19 >> 60 == 15)
  {
    if (v22 >> 60 == 15)
    {
      sub_2278AFFDC(v20, v19);
      sub_2278AFFDC(v23, v22);
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (v22 >> 60 == 15)
  {
LABEL_33:
    sub_2278AFFDC(v20, v19);
    sub_2278AFFDC(v23, v22);
    sub_22785267C(v20, v19);
    v24 = v23;
    v25 = v22;
LABEL_34:
    sub_22785267C(v24, v25);
    return 0;
  }

  sub_2278AFFDC(v20, v19);
  sub_2278AFFDC(v23, v22);
  v27 = sub_2278A71EC(v20, v19, v23, v22);
  sub_22785267C(v23, v22);
  if ((v27 & 1) == 0)
  {
    v24 = v20;
    v25 = v19;
    goto LABEL_34;
  }

LABEL_37:
  sub_22785267C(v20, v19);
  v28 = v6[13];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_2278C7DC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v33 = v6[14];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34)
  {
    return (v35 & 1) != 0;
  }

  return (v35 & 1) == 0;
}

uint64_t sub_2278AFFDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_227837280(a1, a2);
  }

  return a1;
}

uint64_t sub_2278B004C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationRequest();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2278B00B0()
{
  result = qword_27D7D6670;
  if (!qword_27D7D6670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7D6670);
  }

  return result;
}

unint64_t sub_2278B00FC()
{
  result = qword_27D7D6680;
  if (!qword_27D7D6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6680);
  }

  return result;
}

id sub_2278B0188()
{
  result = sub_2278B022C();
  if (result)
  {
    v1 = result;
    v2 = [result getPairedDevices];

    if (v2)
    {
      sub_2278B0388();
      v3 = sub_2278C77A0();

      if (v3 >> 62)
      {
        v4 = sub_2278C7B80();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return (v4 != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2278B022C()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    sub_2278C73A0();
    v6 = sub_2278C7590();
    v7 = sub_2278C7950();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2277F7000, v6, v7, "Failed to get device registry", v8, 2u);
      MEMORY[0x22AA9E860](v8, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return result;
}

unint64_t sub_2278B0388()
{
  result = qword_2813B9A88;
  if (!qword_2813B9A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9A88);
  }

  return result;
}

uint64_t FitnessPlusPlanDataProvider.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2278C6C90();
  v22 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2278C6BB0();
  sub_2278002AC();
  sub_2278C7A60();
  v8 = *MEMORY[0x277D4F368];
  v21 = *(v3 + 104);
  v21(v6, v8, v2);
  v9 = sub_2278C6C80();
  v24 = v9;
  v25 = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_2278C6C70();
  v10 = sub_2278C6CC0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2278C6CB0();
  sub_2278C7A60();
  v13 = sub_2278C6BA0();
  v14 = MEMORY[0x277D4DB98];
  a1[3] = v7;
  a1[4] = v14;
  *a1 = v13;
  v15 = sub_2278C6BF0();
  sub_2278C7A60();
  v21(v6, v8, v22);
  v24 = v9;
  v25 = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_2278C6C70();
  v16 = *(v10 + 48);
  v17 = *(v10 + 52);
  swift_allocObject();
  sub_2278C6CB0();
  sub_2278C7A60();
  result = sub_2278C6BE0();
  v19 = MEMORY[0x277D4DD58];
  a1[8] = v15;
  a1[9] = v19;
  a1[5] = result;
  return result;
}

uint64_t FitnessPlusPlanDataProvider.notificationSchedule(forDate:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2278C6960();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6688, &qword_2278CE8C8);
  v2[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6690, &unk_2278CE8D0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278B076C, 0, 0);
}

uint64_t sub_2278B076C()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D4DC68] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_2278B0828;
  v6 = v0[3];

  return MEMORY[0x2821ADF50](v6, v2, v3);
}

uint64_t sub_2278B0828(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v5 = *v2;
  v5[14] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2278B09B0, 0, 0);
  }

  else
  {
    v7 = v5[11];
    v6 = v5[12];
    v9 = v5[9];
    v8 = v5[10];
    v10 = v5[7];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_2278B09B0()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
  v9 = swift_dynamicCast();
  v10 = *(v7 + 56);
  v10(v3, v9 ^ 1u, 1, v6);
  (*(v7 + 104))(v2, *MEMORY[0x277D511A8], v6);
  v10(v2, 0, 1, v6);
  v11 = *(v5 + 48);
  sub_227850448(v3, v4, &qword_27D7D6690, &unk_2278CE8D0);
  sub_227850448(v2, v4 + v11, &qword_27D7D6690, &unk_2278CE8D0);
  v12 = *(v7 + 48);
  if (v12(v4, 1, v6) == 1)
  {
    v13 = *(v0 + 40);
    sub_227802FC4(*(v0 + 88), &qword_27D7D6690, &unk_2278CE8D0);
    if (v12(v4 + v11, 1, v13) == 1)
    {
      v14 = *(v0 + 96);
      sub_227802FC4(*(v0 + 72), &qword_27D7D6690, &unk_2278CE8D0);
      sub_227802FC4(v14, &qword_27D7D6690, &unk_2278CE8D0);
LABEL_11:

      v38 = *(v0 + 88);
      v37 = *(v0 + 96);
      v40 = *(v0 + 72);
      v39 = *(v0 + 80);
      v41 = *(v0 + 56);

      v42 = *(v0 + 8);
      v43 = MEMORY[0x277D84F90];

      return v42(v43);
    }

    goto LABEL_6;
  }

  v15 = *(v0 + 40);
  sub_227850448(*(v0 + 72), *(v0 + 80), &qword_27D7D6690, &unk_2278CE8D0);
  if (v12(v4 + v11, 1, v15) == 1)
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    sub_227802FC4(*(v0 + 88), &qword_27D7D6690, &unk_2278CE8D0);
    (*(v18 + 8))(v16, v17);
LABEL_6:
    v19 = *(v0 + 96);
    sub_227802FC4(*(v0 + 72), &qword_27D7D6688, &qword_2278CE8C8);
    sub_227802FC4(v19, &qword_27D7D6690, &unk_2278CE8D0);
    goto LABEL_7;
  }

  v29 = *(v0 + 88);
  v44 = *(v0 + 96);
  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  v33 = *(v0 + 48);
  v32 = *(v0 + 56);
  v34 = *(v0 + 40);
  (*(v33 + 32))(v32, v4 + v11, v34);
  sub_2278B0DD8();
  v35 = sub_2278C76E0();
  v36 = *(v33 + 8);
  v36(v32, v34);
  sub_227802FC4(v29, &qword_27D7D6690, &unk_2278CE8D0);
  v36(v30, v34);
  sub_227802FC4(v31, &qword_27D7D6690, &unk_2278CE8D0);
  sub_227802FC4(v44, &qword_27D7D6690, &unk_2278CE8D0);
  if (v35)
  {
    goto LABEL_11;
  }

LABEL_7:
  v20 = *(v0 + 112);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v24 = *(v0 + 72);
  v23 = *(v0 + 80);
  v25 = *(v0 + 56);
  swift_willThrow();

  v26 = *(v0 + 8);
  v27 = *(v0 + 112);

  return v26();
}

unint64_t sub_2278B0DD8()
{
  result = qword_27D7D6698;
  if (!qword_27D7D6698)
  {
    sub_2278C6960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6698);
  }

  return result;
}

uint64_t FitnessPlusPlanDataProvider.isUserSubscribedToFitnessPlus()()
{
  v1[2] = v0;
  v2 = sub_2278C6820();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66A0, &qword_2278CE8E8);
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_2278C6980();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_2278C69F0();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278B1010, 0, 0);
}

uint64_t sub_2278B1010()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[2];
  sub_2278C69E0();
  v4 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_2278C6C00();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *(v5 + 16) = "FitnessCoachingServices/FitnessPlusPlanDataProvider.swift";
  *(v5 + 24) = 57;
  *(v5 + 32) = 2;
  *(v5 + 40) = 46;
  *(v5 + 48) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_2278B116C;
  v8 = v0[11];
  v9 = v0[9];

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x80000002278D2430, sub_2278B2BD0, v5, v9);
}

uint64_t sub_2278B116C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[15];
  if (v0)
  {

    v6 = sub_2278B13E4;
  }

  else
  {
    v8 = v2[7];
    v7 = v2[8];
    v9 = v2[6];

    (*(v8 + 8))(v7, v9);
    v6 = sub_2278B12C4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2278B12C4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  sub_2278C6810();
  v16 = sub_2278C6970();
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[5];

  v14 = v0[1];

  return v14(v16 & 1);
}

uint64_t sub_2278B13E4()
{
  v1 = *(v0 + 136);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  *(v0 + 144) = 4;
  sub_2278B2BE0();
  v2 = sub_2278C69D0();
  v3 = *(v0 + 136);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  if (v2)
  {
    (*(v5 + 8))(*(v0 + 112), *(v0 + 96));

    v7 = *(v0 + 112);
    v8 = *(v0 + 88);
    v9 = *(v0 + 64);
    v10 = *(v0 + 40);

    v11 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 40);
    swift_willThrow();
    (*(v5 + 8))(v4, v6);

    v11 = *(v0 + 8);
    v15 = *(v0 + 136);
  }

  return v11(0);
}

uint64_t FitnessPlusPlanDataProvider.activeWorkoutPlan()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2278C6960();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6688, &qword_2278CE8C8);
  v2[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6690, &unk_2278CE8D0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278B16A0, 0, 0);
}

uint64_t sub_2278B16A0()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D4DBA0] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_2278B175C;
  v6 = v0[3];

  return MEMORY[0x2821ADE88](v6, v2, v3);
}

uint64_t sub_2278B175C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2278B1948;
  }

  else
  {
    v3 = sub_2278B1870;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2278B1870()
{
  v1 = v0[3];
  v2 = sub_2278C6940();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2278B1948()
{
  v1 = v0[14];
  v0[2] = v1;
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6110, qword_2278CA030);
  v9 = swift_dynamicCast();
  v10 = *(v7 + 56);
  v10(v3, v9 ^ 1u, 1, v6);
  (*(v7 + 104))(v2, *MEMORY[0x277D511A8], v6);
  v10(v2, 0, 1, v6);
  v11 = *(v5 + 48);
  sub_227850448(v3, v4, &qword_27D7D6690, &unk_2278CE8D0);
  sub_227850448(v2, v4 + v11, &qword_27D7D6690, &unk_2278CE8D0);
  v12 = *(v7 + 48);
  if (v12(v4, 1, v6) != 1)
  {
    v15 = v0[5];
    sub_227850448(v0[9], v0[10], &qword_27D7D6690, &unk_2278CE8D0);
    if (v12(v4 + v11, 1, v15) != 1)
    {
      v28 = v0[11];
      v45 = v0[12];
      v30 = v0[9];
      v29 = v0[10];
      v32 = v0[6];
      v31 = v0[7];
      v33 = v0[5];
      (*(v32 + 32))(v31, v4 + v11, v33);
      sub_2278B0DD8();
      v34 = sub_2278C76E0();
      v35 = *(v32 + 8);
      v35(v31, v33);
      sub_227802FC4(v28, &qword_27D7D6690, &unk_2278CE8D0);
      v35(v29, v33);
      sub_227802FC4(v30, &qword_27D7D6690, &unk_2278CE8D0);
      sub_227802FC4(v45, &qword_27D7D6690, &unk_2278CE8D0);
      if (v34)
      {
        goto LABEL_9;
      }

LABEL_7:
      v20 = v0[14];
      v21 = v0[11];
      v22 = v0[12];
      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[7];
      swift_willThrow();

      v26 = v0[1];
      v27 = v0[14];
      goto LABEL_10;
    }

    v16 = v0[10];
    v17 = v0[5];
    v18 = v0[6];
    sub_227802FC4(v0[11], &qword_27D7D6690, &unk_2278CE8D0);
    (*(v18 + 8))(v16, v17);
LABEL_6:
    v19 = v0[12];
    sub_227802FC4(v0[9], &qword_27D7D6688, &qword_2278CE8C8);
    sub_227802FC4(v19, &qword_27D7D6690, &unk_2278CE8D0);
    goto LABEL_7;
  }

  v13 = v0[5];
  sub_227802FC4(v0[11], &qword_27D7D6690, &unk_2278CE8D0);
  if (v12(v4 + v11, 1, v13) != 1)
  {
    goto LABEL_6;
  }

  v14 = v0[12];
  sub_227802FC4(v0[9], &qword_27D7D6690, &unk_2278CE8D0);
  sub_227802FC4(v14, &qword_27D7D6690, &unk_2278CE8D0);
LABEL_9:
  v36 = v0[14];
  v37 = v0[3];
  v38 = sub_2278C6940();
  (*(*(v38 - 8) + 56))(v37, 1, 1, v38);

  v40 = v0[11];
  v39 = v0[12];
  v42 = v0[9];
  v41 = v0[10];
  v43 = v0[7];

  v26 = v0[1];
LABEL_10:

  return v26();
}

uint64_t sub_2278B1D7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22782F87C;

  return FitnessPlusPlanDataProvider.notificationSchedule(forDate:)(a1);
}

uint64_t sub_2278B1E10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2278B1E9C;

  return FitnessPlusPlanDataProvider.isUserSubscribedToFitnessPlus()();
}

uint64_t sub_2278B1E9C(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_2278B1FA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2278003CC;

  return FitnessPlusPlanDataProvider.activeWorkoutPlan()(a1);
}

uint64_t sub_2278B203C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B0, &unk_2278CE9C0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_2278C75A0();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2278B2FB0(0x65uLL);
  sub_2278C6CA0();
  v18 = sub_2278C7590();
  v41 = sub_2278C7970();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_2278C7C60();
    v39 = a4;
    v23 = sub_2278021B4(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_2277F7000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9E860](v30, -1, -1);
    MEMORY[0x22AA9E860](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6408, &unk_2278CD3B0);
  v34 = sub_2278C6A60();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2278B398C;
  *(v35 + 24) = v33;

  v34(sub_2278B3A64, v35);
}

uint64_t sub_2278B2418(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B8, &unk_2278CE9D0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_2278C75A0();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2278B2FB0(0x65uLL);
  sub_2278C6CA0();
  v18 = sub_2278C7590();
  v41 = sub_2278C7970();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_2278C7C60();
    v39 = a4;
    v23 = sub_2278021B4(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_2277F7000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9E860](v30, -1, -1);
    MEMORY[0x22AA9E860](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6418, &qword_2278CD3C0);
  v34 = sub_2278C6A60();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2278B3AAC;
  *(v35 + 24) = v33;

  v34(sub_2278B3C4C, v35);
}

uint64_t sub_2278B27F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66C8, &qword_2278CE9E8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_2278C75A0();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2278B2FB0(0x65uLL);
  sub_2278C6CA0();
  v18 = sub_2278C7590();
  v41 = sub_2278C7970();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_2278C7C60();
    v39 = a4;
    v23 = sub_2278021B4(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_2277F7000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9E860](v30, -1, -1);
    MEMORY[0x22AA9E860](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66A0, &qword_2278CE8E8);
  v34 = sub_2278C6A60();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2278B3B58;
  *(v35 + 24) = v33;

  v34(sub_2278B3C18, v35);
}

unint64_t sub_2278B2BE0()
{
  result = qword_27D7D66A8;
  if (!qword_27D7D66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D66A8);
  }

  return result;
}

uint64_t dispatch thunk of FitnessPlusPlanDataProviding.notificationSchedule(forDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22780523C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FitnessPlusPlanDataProviding.isUserSubscribedToFitnessPlus()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22780523C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of FitnessPlusPlanDataProviding.activeWorkoutPlan()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

unint64_t sub_2278B2FB0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AA9E880](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AA9E880](&v3, 8);
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

uint64_t sub_2278B303C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v30 = a8;
  v29 = a7;
  v31 = a3;
  v32 = a1;
  v11 = sub_2278C75A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C6CA0();
  v16 = sub_2278C7590();
  v17 = sub_2278C7970();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[0] = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[1] = a9;
    v21 = v20;
    v33[0] = v20;
    *v19 = 134218498;
    *(v19 + 4) = a4;
    *(v19 + 12) = 2080;
    v22 = sub_2278C7C60();
    v24 = sub_2278021B4(v22, v23, v33);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_2277F7000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AA9E860](v21, -1, -1);
    v25 = v19;
    a2 = v28[0];
    MEMORY[0x22AA9E860](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v33[0] = v32;
  if (v31)
  {
    v26 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B0, &unk_2278CE9C0);
    return sub_2278C7800();
  }

  else
  {
    v33[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B0, &unk_2278CE9C0);
    return sub_2278C7810();
  }
}

uint64_t sub_2278B32A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_2278C69B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66C0, &qword_2278CE9E0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_2278C75A0();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C6CA0();
  v22 = sub_2278C7590();
  v23 = sub_2278C7970();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_2278C7C60();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_2278021B4(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_2277F7000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9E860](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9E860](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_227850448(a1, v17, &qword_27D7D66C0, &qword_2278CE9E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B8, &unk_2278CE9D0);
    return sub_2278C7800();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66B8, &unk_2278CE9D0);
    return sub_2278C7810();
  }
}

uint64_t sub_2278B3618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_2278C6980();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66D0, qword_2278CE9F0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_2278C75A0();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C6CA0();
  v22 = sub_2278C7590();
  v23 = sub_2278C7970();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_2278C7C60();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_2278021B4(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_2277F7000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9E860](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9E860](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_227850448(a1, v17, &qword_27D7D66D0, qword_2278CE9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66C8, &qword_2278CE9E8);
    return sub_2278C7800();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66C8, &qword_2278CE9E8);
    return sub_2278C7810();
  }
}

uint64_t sub_2278B3A1C(uint64_t result, uint64_t (*a2)(__int128 *))
{
  v2 = *(result + 16);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_2278B3A64(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 16);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2278B3B80(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_2278B3C1C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_2278B3C50(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_2278B3D68(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22781659C;

  return v9(a1, a2);
}

uint64_t sub_2278B3E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278003CC;

  return v11(a1, a2, a3);
}

uint64_t sub_2278B3FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

uint64_t sub_2278B40D0(uint64_t a1)
{
  v3 = type metadata accessor for NotificationRequest();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v27[1] = v1;
  v34 = MEMORY[0x277D84F90];
  sub_2278B4820(0, v6, 0);
  v7 = v34;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  result = sub_2278C7B00();
  v11 = result;
  v12 = 0;
  v28 = a1 + 72;
  v29 = v6;
  v30 = a1 + 64;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v33 = *(a1 + 36);
    v15 = v31;
    sub_2278101A4(*(a1 + 56) + *(v32 + 72) * v11, v31);
    v16 = sub_2278ACE90();
    result = sub_227810208(v15);
    v34 = v7;
    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    v19 = v7;
    if (v18 >= v17 >> 1)
    {
      result = sub_2278B4820((v17 > 1), v18 + 1, 1);
      v19 = v34;
    }

    *(v19 + 16) = v18 + 1;
    *(v19 + 8 * v18 + 32) = v16;
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v30;
    v20 = *(v30 + 8 * v14);
    if ((v20 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    v7 = v19;
    if (v33 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v11 & 0x3F));
    if (v21)
    {
      v13 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v14 << 6;
      v23 = v14 + 1;
      v24 = (v28 + 8 * v14);
      while (v23 < (v13 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_2278B4F84(v11, v33, 0);
          v13 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_2278B4F84(v11, v33, 0);
    }

LABEL_4:
    ++v12;
    v11 = v13;
    if (v12 == v29)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_2278B4388()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  sub_2278B40D0(v2);

  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_2278C76F0();
  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    v5 = [objc_opt_self() standardUserDefaults];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D8, &qword_2278CE440);
  v6 = sub_2278C7790();

  sub_2278C72B0();
  v7 = sub_2278C76F0();

  [v5 setObject:v6 forKey:v7];
}

uint64_t sub_2278B44C0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2278B451C()
{
  v1[5] = v0;
  v2 = sub_2278C75A0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278B45DC, v0, 0);
}

uint64_t sub_2278B45DC()
{
  v22 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = sub_2278B4F90();
  swift_beginAccess();
  v4 = *(v2 + 112);
  *(v2 + 112) = v3;

  sub_2278C73A0();

  v5 = sub_2278C7590();
  v6 = sub_2278C7970();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];
  if (v7)
  {
    v20 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    type metadata accessor for NotificationRequest();
    v13 = sub_2278C7670();
    v15 = v14;

    v16 = sub_2278021B4(v13, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2277F7000, v5, v6, "Loaded stored notification requests %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9E860](v12, -1, -1);
    MEMORY[0x22AA9E860](v11, -1, -1);

    (*(v8 + 8))(v20, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

char *sub_2278B47E0(char *a1, int64_t a2, char a3)
{
  result = sub_2278B492C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2278B4800(char *a1, int64_t a2, char a3)
{
  result = sub_2278B4A3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2278B4820(void *a1, int64_t a2, char a3)
{
  result = sub_2278B4B40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2278B4840(size_t a1, int64_t a2, char a3)
{
  result = sub_2278B4DA8(a1, a2, a3, *v3, &qword_27D7D65B0, &qword_2278CE250, type metadata accessor for NotificationRequest);
  *v3 = result;
  return result;
}

char *sub_2278B4884(char *a1, int64_t a2, char a3)
{
  result = sub_2278B4C74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2278B48A4(size_t a1, int64_t a2, char a3)
{
  result = sub_2278B4DA8(a1, a2, a3, *v3, &qword_27D7D6080, &qword_2278C96A0, MEMORY[0x277D09AE8]);
  *v3 = result;
  return result;
}

size_t sub_2278B48E8(size_t a1, int64_t a2, char a3)
{
  result = sub_2278B4DA8(a1, a2, a3, *v3, &qword_27D7D66E8, &qword_2278CEAF0, MEMORY[0x277D53210]);
  *v3 = result;
  return result;
}

char *sub_2278B492C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66F0, &unk_2278CEAF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2278B4A3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66E0, &unk_2278CEAE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2278B4B40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D66D8, &unk_2278CEAD0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D8, &qword_2278CE440);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2278B4C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6088, &qword_2278C96A8);
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

size_t sub_2278B4DA8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_2278B4F84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2278B4F90()
{
  v52 = sub_2278C75A0();
  v0 = *(v52 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v52);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v48 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D0, &unk_2278C9AC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v51 = type metadata accessor for NotificationRequest();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v51);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v39 - v14;
  sub_2278C72B0();
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v16 = sub_2278C76F0();
  v17 = [v15 initWithSuiteName_];

  if (!v17)
  {
    v17 = [objc_opt_self() standardUserDefaults];
  }

  v18 = sub_2278C76F0();

  v19 = [v17 arrayForKey_];

  if (v19 && (v20 = sub_2278C77A0(), v19, v21 = sub_2278860B8(v20), , v21))
  {
    result = sub_2278C3EE0(MEMORY[0x277D84F90]);
    v43 = result;
    v24 = *(v21 + 16);
    if (v24)
    {
      v25 = 0;
      v26 = (v10 + 56);
      v49 = v0 + 8;
      v50 = v21 + 32;
      v41 = v24 - 1;
      *&v23 = 136315138;
      v45 = v23;
      v46 = v24;
      v47 = v21;
      while (v25 < *(v21 + 16))
      {
        v27 = *(v50 + 8 * v25);
        swift_bridgeObjectRetain_n();
        sub_2278AD554(v27, v9);
        v28 = v51;
        (*v26)(v9, 0, 1, v51);
        v29 = v42;
        sub_227810264(v9, v42);
        v30 = (v29 + *(v28 + 36));
        v31 = v30[1];
        v40 = *v30;
        sub_2278101A4(v29, v44);

        v32 = v43;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v32;
        sub_2278AF970(v44, v40, v31, isUniquelyReferenced_nonNull_native);

        v43 = v53;
        v34 = v29;
        v21 = v47;
        sub_227810208(v34);

        if (v41 == v25++)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:

      return v43;
    }
  }

  else
  {
    sub_2278C73A0();
    v36 = sub_2278C7590();
    v37 = sub_2278C7970();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2277F7000, v36, v37, "No stored requests to load", v38, 2u);
      MEMORY[0x22AA9E860](v38, -1, -1);
    }

    (*(v0 + 8))(v4, v52);
    return sub_2278C3EE0(MEMORY[0x277D84F90]);
  }

  return result;
}

uint64_t sub_2278B55AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60D0, &unk_2278C9AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2278B5614()
{
  result = sub_2278C76F0();
  qword_2813BC398 = result;
  return result;
}

uint64_t sub_2278B5654()
{
  result = *MEMORY[0x277D09538];
  if (*MEMORY[0x277D09538])
  {
    result = sub_2278C7750();
    qword_2813BC378 = result;
    unk_2813BC380 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2278B568C()
{
  v0 = *MEMORY[0x277D2BC60];
  result = sub_2278C7700();
  qword_2813BC3A0 = result;
  *algn_2813BC3A8 = v2;
  return result;
}

uint64_t sub_2278B56BC()
{
  v0 = *MEMORY[0x277D2BCB8];
  result = sub_2278C7700();
  qword_2813BC388 = result;
  unk_2813BC390 = v2;
  return result;
}

uint64_t sub_2278B56EC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278B5804;

  return v9(a1, a2);
}

uint64_t sub_2278B5804(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t sub_2278B5934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_2278C6920();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2278C6910();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2278C6820();
  v13 = *(v28 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v28);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 displayCount];
  if (v17 <= 2)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    v23 = off_283AE99E0;
    type metadata accessor for DateProvider();
    return v23(a2);
  }

  else
  {
    v18 = v17;
    v19 = [a1 lastDisplayDate];
    sub_2278C6800();

    v20 = *(v9 + 104);
    v21 = (v13 + 8);
    if (v18 == 5 || v18 == 4)
    {
      v25 = v27;
      v20(v12, *MEMORY[0x277CC9998], v27);
      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      sub_227804920();
    }

    else
    {
      if (v18 == 3)
      {
        v22 = MEMORY[0x277CC9998];
      }

      else
      {
        v22 = MEMORY[0x277CC9988];
      }

      v25 = v27;
      v20(v12, *v22, v27);
      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      sub_227804920();
    }

    sub_2278C6750();
    (*(v5 + 8))(v8, v29);
    (*(v9 + 8))(v12, v25);
    return (*v21)(v16, v28);
  }
}

uint64_t sub_2278B5CD8()
{
  v1[3] = v0;
  v2 = sub_2278C7160();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6258, &qword_2278CBE30);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_2278C65D0();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = sub_2278C6910();
  v1[14] = v11;
  v12 = *(v11 - 8);
  v1[15] = v12;
  v13 = *(v12 + 64) + 15;
  v1[16] = swift_task_alloc();
  v14 = sub_2278C6820();
  v1[17] = v14;
  v15 = *(v14 - 8);
  v1[18] = v15;
  v16 = *(v15 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v17 = sub_2278C6920();
  v1[23] = v17;
  v18 = *(v17 - 8);
  v1[24] = v18;
  v19 = *(v18 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v20 = sub_2278C75A0();
  v1[28] = v20;
  v21 = *(v20 - 8);
  v1[29] = v21;
  v22 = *(v21 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278B602C, 0, 0);
}

uint64_t sub_2278B602C()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v34 = v0[26];
  v35 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v36 = v0[22];
  v37 = v0[23];
  v6 = v0[21];
  v7 = v0[18];
  v42 = v0[20];
  v43 = v0[19];
  v38 = v0[17];
  v40 = v0[16];
  v48 = v0[15];
  v41 = v0[14];
  v44 = v0[13];
  v46 = v0[12];
  v8 = v0[3];
  sub_2278C73A0();
  sub_2278C7580();
  v9 = *(v2 + 8);
  v0[33] = v9;
  v0[34] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  __swift_project_boxed_opaque_existential_1((v8 + 40), *(v8 + 64));
  sub_227804920();
  v10 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  sub_2278C68C0();

  __swift_project_boxed_opaque_existential_1((v8 + 40), *(v8 + 64));
  v11 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v11(v6);
  sub_2278C6900();
  sub_2278C66C0();
  v12 = *(v5 + 8);
  v0[35] = v12;
  v0[36] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v4, v37);
  v13 = *(v7 + 8);
  v0[37] = v13;
  v0[38] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v6, v38);
  v14 = *MEMORY[0x277CC9968];
  v39 = *(v48 + 104);
  v39(v40, v14, v41);
  sub_2278C66E0();
  v15 = *(v48 + 8);
  v15(v40, v41);
  v39(v40, v14, v41);
  sub_2278C66E0();
  v15(v40, v41);
  sub_2278C6730();
  sub_2278C6730();
  v16 = [objc_opt_self() sharedBehavior];
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v16;
  v19 = [v16 features];

  if (!v19)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x2821603A0](v16, v17);
  }

  v20 = [v19 scheduledGoals];

  if (v20)
  {
    v21 = v0[3];
    v22 = v21[3];
    v23 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v24 = *(MEMORY[0x277D09A38] + 4);
    v25 = swift_task_alloc();
    v0[39] = v25;
    *v25 = v0;
    v25[1] = sub_2278B654C;
    v16 = v22;
    v17 = v23;

    return MEMORY[0x2821603A0](v16, v17);
  }

  v49 = v0[13];
  v45 = v0[9];
  v47 = v0[12];
  v27 = v0[5];
  v26 = v0[6];
  v28 = v0[3];
  v29 = v0[4];
  v30 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v0[2] = MEMORY[0x277D84F90];
  sub_2278B8850(&qword_2813BC0F8, MEMORY[0x277D09AB8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
  sub_227829300();
  sub_2278C7AF0();
  sub_2278C6FE0();
  (*(v27 + 8))(v26, v29);
  v31 = swift_task_alloc();
  v0[41] = v31;
  *v31 = v0;
  v31[1] = sub_2278B6A58;
  v32 = v0[9];

  return sub_22785B1C8();
}

uint64_t sub_2278B654C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v7 = sub_2278B7260;
  }

  else
  {
    *(v4 + 352) = a1 & 1;
    v7 = sub_2278B6678;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2278B6678()
{
  if (*(v0 + 352) == 1)
  {
    v1 = *(v0 + 248);
    sub_2278C73A0();
    v2 = sub_2278C7590();
    v3 = sub_2278C7970();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v42 = *(v0 + 264);
    v44 = *(v0 + 272);
    v37 = *(v0 + 224);
    v7 = *(v0 + 176);
    v47 = *(v0 + 152);
    v50 = *(v0 + 160);
    v8 = *(v0 + 136);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v39 = v9;
    v41 = *(v0 + 248);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    if (v4)
    {
      v35 = *(v0 + 176);
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2277F7000, v2, v3, "Goal schedules exist, not generating goal recommendation", v13, 2u);
      v14 = v13;
      v7 = v35;
      MEMORY[0x22AA9E860](v14, -1, -1);
    }

    v42(v41, v37);
    v15 = *(v11 + 8);
    v15(v10, v12);
    v15(v39, v12);
    v6(v47, v8);
    v6(v50, v8);
    v6(v7, v8);
    v16 = *(v0 + 280);
    v17 = *(v0 + 288);
    v19 = *(v0 + 248);
    v18 = *(v0 + 256);
    v20 = *(v0 + 240);
    v21 = *(v0 + 216);
    v22 = *(v0 + 200);
    v23 = *(v0 + 184);
    v34 = *(v0 + 176);
    v36 = *(v0 + 168);
    v38 = *(v0 + 160);
    v40 = *(v0 + 152);
    v24 = *(v0 + 128);
    v43 = *(v0 + 104);
    v45 = *(v0 + 96);
    v48 = *(v0 + 72);
    v51 = *(v0 + 48);
    v16(*(v0 + 208), v23);
    v16(v21, v23);

    v25 = *(v0 + 8);

    return v25(0, 1);
  }

  else
  {
    v49 = *(v0 + 96);
    v52 = *(v0 + 104);
    v46 = *(v0 + 72);
    v28 = *(v0 + 40);
    v27 = *(v0 + 48);
    v29 = *(v0 + 24);
    v30 = *(v0 + 32);
    v31 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    *(v0 + 16) = MEMORY[0x277D84F90];
    sub_2278B8850(&qword_2813BC0F8, MEMORY[0x277D09AB8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6158, &qword_2278CBE40);
    sub_227829300();
    sub_2278C7AF0();
    sub_2278C6FE0();
    (*(v28 + 8))(v27, v30);
    v32 = swift_task_alloc();
    *(v0 + 328) = v32;
    *v32 = v0;
    v32[1] = sub_2278B6A58;
    v33 = *(v0 + 72);

    return sub_22785B1C8();
  }
}

uint64_t sub_2278B6A58(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v7 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v5 = sub_2278B7538;
  }

  else
  {
    v5 = sub_2278B6B6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2278B6B6C()
{
  v2 = v0[21].u64[0];
  v3 = v0[21].i64[1];
  v4 = swift_task_alloc();
  v4[1] = vextq_s8(v0[13], v0[13], 8uLL);
  sub_2278B7AD0(sub_2278B8830, v4, v2);
  v6 = v5;
  v8 = v7;

  v9 = v0[21].i64[0];
  v97 = v8;
  if (v8)
  {
    v11 = v0[4].i64[0];
    v10 = v0[4].i64[1];
    v12 = v0[3].i64[1];

    v13 = sub_2278C6ED0();
    sub_2278B8850(&qword_27D7D66F8, MEMORY[0x277D099D0]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D099C8], v13);
    swift_willThrow();
    (*(v11 + 8))(v10, v12);
    v16 = v0[15].i64[0];
    sub_2278C73A0();
    v17 = v14;
    v18 = sub_2278C7590();
    v19 = sub_2278C7950();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v14;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_2277F7000, v18, v19, "Error creating weekly goal: %@", v20, 0xCu);
      sub_227802FC4(v21, &qword_27D7D64B0, &qword_2278CA010);
      MEMORY[0x22AA9E860](v21, -1, -1);
      MEMORY[0x22AA9E860](v20, -1, -1);
    }

    v24 = v0[18].i64[1];
    v25 = v0[19].i64[0];
    v80 = v0[16].i64[1];
    v82 = v0[17].i64[0];
    v26 = v0[15].i64[0];
    v27 = v0[14].i64[0];
    v91 = v0[10].i64[0];
    v94 = v0[11].i64[0];
    v28 = v0[8].i64[1];
    v85 = v0[6].i64[1];
    v88 = v0[9].i64[1];
    v29 = v18;
    v31 = v0[5].i64[1];
    v30 = v0[6].i64[0];
    v32 = v0[5].i64[0];

    v80(v26, v27);
    v33 = *(v31 + 8);
    v33(v30, v32);
    v33(v85, v32);
    v24(v88, v28);
    v24(v91, v28);
    v24(v94, v28);
    v95 = 0;
    goto LABEL_36;
  }

  v34 = v9 >> 62;
  if (!(v9 >> 62))
  {
    v35 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35 >= v6)
    {
      goto LABEL_7;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v9 < 0)
  {
    v1 = v0[21].i64[0];
  }

  else
  {
    v1 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_2278C7B80();
  if (result < v6)
  {
    __break(1u);
    return result;
  }

  v35 = result;
  if (sub_2278C7B80() < v6)
  {
    __break(1u);
    goto LABEL_45;
  }

LABEL_7:
  if (v6 < 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v34)
  {
    v37 = v0[21].i64[0];
    if (v9 < 0)
    {
      v38 = v0[21].i64[0];
    }

    v36 = sub_2278C7B80();
  }

  else
  {
    v36 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v36 < v35)
  {
    goto LABEL_47;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v9 & 0xC000000000000001) == 0 || v6 == v35)
  {
    v52 = v0[21].i64[0];

    if (v34)
    {
      goto LABEL_21;
    }

LABEL_31:
    v9 &= 0xFFFFFFFFFFFFFF8uLL;
    v1 = v9 + 32;
    v35 = (2 * v35) | 1;
    if (v35)
    {
      goto LABEL_24;
    }

LABEL_32:
    swift_unknownObjectRetain();
LABEL_33:
    sub_227848CF8(v9, v1, v6, v35);
LABEL_34:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  if (v6 >= v35)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v39 = v0[21].i64[0];
  sub_227848DDC();

  v40 = v6;
  do
  {
    v41 = v0[21].i64[0];
    v42 = v40 + 1;
    sub_2278C7C70();
    v40 = v42;
  }

  while (v35 != v42);
  v43 = v0[21].i64[0];

  if (!v34)
  {
    goto LABEL_31;
  }

LABEL_21:
  v44 = v0[21].i64[0];
  if (v9 < 0)
  {
    v45 = v0[21].i64[0];
  }

  v9 = sub_2278C7D20();
  v1 = v46;
  v6 = v47;
  v35 = v48;

  if ((v35 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  sub_2278C7DD0();
  swift_unknownObjectRetain_n();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    swift_unknownObjectRelease();
    v49 = MEMORY[0x277D84F90];
  }

  v50 = *(v49 + 16);

  if (__OFSUB__(v35 >> 1, v6))
  {
    goto LABEL_50;
  }

  if (v50 != (v35 >> 1) - v6)
  {
LABEL_51:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v51 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v51)
  {
    goto LABEL_34;
  }

LABEL_35:
  v54 = v0[18].i64[1];
  v53 = v0[19].i64[0];
  v92 = v0[10].i64[0];
  v96 = v0[11].i64[0];
  v55 = v0[8].i64[1];
  v86 = v0[6].i64[1];
  v89 = v0[9].i64[1];
  v57 = v0[5].i64[0];
  v56 = v0[5].i64[1];
  v81 = v0[4].i64[1];
  v83 = v0[6].i64[0];
  v58 = v0[4].i64[0];
  v78 = v0[3].i64[1];
  v59 = objc_opt_self();
  sub_227848DDC();
  v60 = sub_2278C7790();

  [v59 recommendedNewWeeklyGoalForActivitySummaries_];
  v62 = v61;

  swift_unknownObjectRelease();
  (*(v58 + 8))(v81, v78);
  v63 = *(v56 + 8);
  v63(v83, v57);
  v63(v86, v57);
  v54(v89, v55);
  v54(v92, v55);
  v54(v96, v55);
  v95 = v62;
LABEL_36:
  v64 = v0[17].i64[1];
  v65 = v0[18].i64[0];
  v67 = v0[15].i64[1];
  v66 = v0[16].i64[0];
  v68 = v0[15].i64[0];
  v69 = v0[13].i64[1];
  v70 = v0[12].i64[1];
  v71 = v0[11].i64[1];
  v75 = v0[11].i64[0];
  v76 = v0[10].i64[1];
  v77 = v0[10].i64[0];
  v79 = v0[9].i64[1];
  v72 = v0[8].i64[0];
  v84 = v0[6].i64[1];
  v87 = v0[6].i64[0];
  v90 = v0[4].i64[1];
  v93 = v0[3].i64[0];
  v64(v0[13].i64[0], v71);
  v64(v69, v71);

  v73 = v0->i64[1];

  return v73(v95, v97 & 1);
}

uint64_t sub_2278B7260()
{
  v1 = v0[40];
  v2 = v0[30];
  sub_2278C73A0();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error creating weekly goal: %@", v6, 0xCu);
    sub_227802FC4(v7, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v7, -1, -1);
    MEMORY[0x22AA9E860](v6, -1, -1);
  }

  v10 = v0[37];
  v11 = v0[38];
  v34 = v0[33];
  v36 = v0[34];
  v12 = v0[30];
  v13 = v0[28];
  v41 = v0[20];
  v43 = v0[22];
  v14 = v0[17];
  v37 = v0[13];
  v39 = v0[19];
  v15 = v4;
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];

  v34(v12, v13);
  v19 = *(v17 + 8);
  v19(v16, v18);
  v19(v37, v18);
  v10(v39, v14);
  v10(v41, v14);
  v10(v43, v14);
  v20 = v0[35];
  v21 = v0[36];
  v23 = v0[31];
  v22 = v0[32];
  v24 = v0[30];
  v25 = v0[27];
  v26 = v0[25];
  v27 = v0[23];
  v31 = v0[22];
  v32 = v0[21];
  v33 = v0[20];
  v35 = v0[19];
  v28 = v0[16];
  v38 = v0[13];
  v40 = v0[12];
  v42 = v0[9];
  v44 = v0[6];
  v20(v0[26], v27);
  v20(v25, v27);

  v29 = v0[1];

  return v29(0, 1);
}

uint64_t sub_2278B7538()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[43];
  v2 = v0[30];
  sub_2278C73A0();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error creating weekly goal: %@", v6, 0xCu);
    sub_227802FC4(v7, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v7, -1, -1);
    MEMORY[0x22AA9E860](v6, -1, -1);
  }

  v10 = v0[37];
  v11 = v0[38];
  v34 = v0[33];
  v36 = v0[34];
  v12 = v0[30];
  v13 = v0[28];
  v41 = v0[20];
  v43 = v0[22];
  v14 = v0[17];
  v37 = v0[13];
  v39 = v0[19];
  v15 = v4;
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];

  v34(v12, v13);
  v19 = *(v17 + 8);
  v19(v16, v18);
  v19(v37, v18);
  v10(v39, v14);
  v10(v41, v14);
  v10(v43, v14);
  v20 = v0[35];
  v21 = v0[36];
  v23 = v0[31];
  v22 = v0[32];
  v24 = v0[30];
  v25 = v0[27];
  v26 = v0[25];
  v27 = v0[23];
  v31 = v0[22];
  v32 = v0[21];
  v33 = v0[20];
  v35 = v0[19];
  v28 = v0[16];
  v38 = v0[13];
  v40 = v0[12];
  v42 = v0[9];
  v44 = v0[6];
  v20(v0[26], v27);
  v20(v25, v27);

  v29 = v0[1];

  return v29(0, 1);
}

uint64_t sub_2278B7828(void **a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_2278C65D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_2278C6820();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = sub_2278C68B0();
  v19 = [v17 dateComponentsForCalendar_];

  sub_2278C65B0();
  sub_2278C68D0();
  (*(v4 + 8))(v7, v3);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_227802FC4(v11, &qword_27D7D60A8, qword_2278C9730);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    if (sub_2278C66B0())
    {
      HasNonZeroMoveGoal = FIActivitySummaryHasNonZeroMoveGoal();
    }

    else
    {
      HasNonZeroMoveGoal = 0;
    }

    (*(v13 + 8))(v16, v12);
  }

  return HasNonZeroMoveGoal;
}

void sub_2278B7AD0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_2278C7B80();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AA9DBF0](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_2278B7BE4(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_2278C6820();
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v89 = (&v87 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v87 - v15;
  MEMORY[0x28223BE20](v14);
  v95 = &v87 - v17;
  v18 = sub_2278C75A0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v87 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v92 = (&v87 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v91 = &v87 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v87 - v31;
  sub_2278C73A0();
  sub_2278C7580();
  v33 = *(v19 + 8);
  v96 = v18;
  v97 = v19 + 8;
  result = v33(v32, v18);
  if (a2)
  {
    return 0;
  }

  if (*&a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*&a1 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (a1 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    goto LABEL_27;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (a1 == *&a3)
  {
    sub_2278C73A0();
    v35 = sub_2278C7590();
    v36 = sub_2278C7970();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2277F7000, v35, v36, "Goal recommendation matches current goal", v37, 2u);
      MEMORY[0x22AA9E860](v37, -1, -1);
    }

    v33(v23, v96);
    return 0;
  }

  v38 = [*(v4 + 80) currentDisplayContext];
  if (v38)
  {
    v39 = v38;
    v40 = v95;
    sub_2278B5934(v38, v95);
    __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
    v41 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v41(v16);
    v42 = sub_2278C6710();
    v43 = v94;
    v44 = v93 + 8;
    v93 = *(v93 + 8);
    (v93)(v16, v94);
    v45 = (v44 + 8);
    v88 = v39;
    if (v42)
    {
      v46 = v91;
      sub_2278C73A0();
      v47 = v89;
      (*v45)(v89, v40, v43);
      v48 = v39;
      v49 = sub_2278C7590();
      v50 = sub_2278C7970();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v98 = v92;
        *v51 = 136315394;
        sub_2278B8850(&qword_2813BC158, MEMORY[0x277CC9578]);
        v90 = v49;
        v53 = sub_2278C7DA0();
        v54 = v43;
        v56 = v55;
        v57 = v47;
        v58 = v54;
        v59 = v93;
        (v93)(v57, v54);
        v60 = sub_2278021B4(v53, v56, &v98);

        *(v51 + 4) = v60;
        *(v51 + 12) = 2112;
        *(v51 + 14) = v48;
        *v52 = v88;
        v61 = v48;
        v62 = v50;
        v63 = v90;
        _os_log_impl(&dword_2277F7000, v90, v62, "Goal recommendation allow, next valid date %s, display context: %@", v51, 0x16u);
        sub_227802FC4(v52, &qword_27D7D64B0, &qword_2278CA010);
        MEMORY[0x22AA9E860](v52, -1, -1);
        v64 = v92;
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x22AA9E860](v64, -1, -1);
        MEMORY[0x22AA9E860](v51, -1, -1);

        v33(v91, v96);
        v59(v95, v58);
      }

      else
      {

        v85 = v93;
        (v93)(v47, v43);
        v33(v46, v96);
        v85(v40, v43);
      }

      return 1;
    }

    v68 = v92;
    sub_2278C73A0();
    v69 = v90;
    (*v45)(v90, v40, v43);
    v70 = v39;
    v71 = sub_2278C7590();
    v72 = sub_2278C7970();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v91 = v33;
      v76 = v75;
      v98 = v75;
      *v73 = 136315394;
      sub_2278B8850(&qword_2813BC158, MEMORY[0x277CC9578]);
      v89 = v71;
      v77 = sub_2278C7DA0();
      v79 = v78;
      v80 = v69;
      v81 = v93;
      (v93)(v80, v43);
      v82 = sub_2278021B4(v77, v79, &v98);

      *(v73 + 4) = v82;
      *(v73 + 12) = 2112;
      *(v73 + 14) = v70;
      *v74 = v88;
      v83 = v70;
      v84 = v89;
      _os_log_impl(&dword_2277F7000, v89, v72, "Goal recommendation not allow, next valid date: %s, display context: %@", v73, 0x16u);
      sub_227802FC4(v74, &qword_27D7D64B0, &qword_2278CA010);
      MEMORY[0x22AA9E860](v74, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x22AA9E860](v76, -1, -1);
      MEMORY[0x22AA9E860](v73, -1, -1);

      (v91)(v92, v96);
      v81(v95, v43);
    }

    else
    {

      v86 = v93;
      (v93)(v69, v43);
      v33(v68, v96);
      v86(v40, v43);
    }

    return 0;
  }

  sub_2278C73A0();
  v65 = sub_2278C7590();
  v66 = sub_2278C7970();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_2277F7000, v65, v66, "Goal recommendation allow, no display context", v67, 2u);
    MEMORY[0x22AA9E860](v67, -1, -1);
  }

  v33(v26, v96);
  return 1;
}

char *sub_2278B8568()
{
  v1 = v0;
  v2 = sub_2278C6820();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2278C75A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v8 + 8))(v11, v7);
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v12 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v12(v6);
  v13 = v1[10];
  v14 = [v13 currentDisplayContext];
  if (!v14)
  {
    v21 = objc_allocWithZone(MEMORY[0x277D09D10]);
    v22 = sub_2278C67D0();
    v20 = [v21 initWithDisplayCount:1 lastDisplayDate:v22];

    [v13 updateDisplayContext_];
    goto LABEL_5;
  }

  v15 = v14;
  result = [v14 displayCount];
  v17 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v18 = objc_allocWithZone(MEMORY[0x277D09D10]);
    v19 = sub_2278C67D0();
    v20 = [v18 initWithDisplayCount:v17 lastDisplayDate:v19];

    [v13 updateDisplayContext_];
LABEL_5:

    return (*(v3 + 8))(v6, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_2278B8850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Daemon.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Daemon.init()@<X0>(uint64_t *a1@<X8>)
{
  v915 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  v2 = *(*(v915 - 1) + 64);
  MEMORY[0x28223BE20](v915);
  v914 = (&v874 - v3);
  v910 = sub_2278C6EC0();
  Description = v910[-1].Description;
  Kind = Description[4].Kind;
  MEMORY[0x28223BE20](v910);
  v6 = &v874 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2278C75A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v874 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x80000002278CFF00;
  v12 = a1;
  v906 = 0x80000002278CFF00;
  sub_2278C73A0();
  v13 = sub_2278C7590();
  v14 = sub_2278C7970();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2277F7000, v13, v14, "Starting Up...", v15, 2u);
    MEMORY[0x22AA9E860](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v16 = [objc_allocWithZone(MEMORY[0x277D09C58]) init];
  v12[32] = v16;
  v17 = type metadata accessor for DateProvider();
  v12[41] = v17;
  v12[42] = &off_283AE99D8;
  v18 = v17;
  v916 = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 38);
  v19 = *MEMORY[0x277D09990];
  v20 = (Description + 104);
  v21 = Description[6].Description;
  v905 = v6;
  v22 = v6;
  v23 = v910;
  (v21)(v22, v19, v910);
  v903 = v21;
  Description = v20;
  v24 = sub_2278C6820();
  (*(*(v24 - 8) + 56))(v914, 1, 1, v24);
  sub_2278043F4(&qword_2813BC148, &qword_27D7D60A8, qword_2278C9730);
  v901 = v16;
  v25 = v905;
  sub_2278C6E20();
  v26 = *(v18 + 20);
  (v21)(v25, *MEMORY[0x277D099C0], v23);
  v921 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60C0, &qword_2278C98B0);
  sub_2278043F4(&qword_2813B9BC0, &qword_27D7D60C0, &qword_2278C98B0);
  sub_2278C6E20();
  v12[46] = &type metadata for DuetObserver;
  v12[47] = &off_283AEA5D0;
  v12[36] = &type metadata for BiomeObserver;
  v12[37] = &off_283AEAFC0;
  v27 = objc_opt_self();
  v28 = [v27 defaultCenter];
  v29 = type metadata accessor for FitnessModeObserver();
  v914 = v29;
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v30 + 112) = v28;
  *(v30 + 120) = 0;
  *(v30 + 124) = 1;
  v12[51] = v29;
  v12[52] = &off_283AEBF40;
  v12[48] = v30;
  v31 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v12[100] = v31;
  v32 = type metadata accessor for LanguageChangeObserver();
  v33 = swift_allocObject();
  v34 = v31;
  swift_defaultActor_initialize();
  *(v33 + 112) = 0;
  *(v33 + 116) = 1;
  v12[134] = v32;
  v12[135] = &off_283AE9750;
  v12[131] = v33;
  v12[215] = &type metadata for LockStateProvider;
  v12[216] = &off_283AE99C0;
  v35 = [objc_allocWithZone(MEMORY[0x277D62528]) init];
  v12[220] = v35;
  v36 = objc_allocWithZone(MEMORY[0x277D095D8]);
  v915 = v35;
  v37 = [v36 initWithHealthStore_];
  v12[221] = v37;
  v38 = objc_allocWithZone(MEMORY[0x277D095B0]);
  v899 = v37;
  v39 = [v38 initWithHealthStore_];
  v12[196] = v39;
  v908 = type metadata accessor for XPCActivityScheduler();
  v40 = swift_allocObject();
  v907 = v40;
  v896 = v39;
  swift_defaultActor_initialize();
  v12[238] = v40;
  v909 = sub_2278C6DF0();
  swift_retain_n();
  v41 = sub_2278C6DE0();
  v12[241] = v41;
  v900 = v41;
  boxed_opaque_existential_1 = v27;
  v12[239] = [v27 defaultCenter];
  v12[240] = &unk_283AE9540;
  v42 = sub_2278C6EF0();
  v43 = MEMORY[0x277D099E0];
  v12[25] = v42;
  v12[26] = v43;
  __swift_allocate_boxed_opaque_existential_1(v12 + 22);
  v904 = v34;
  sub_2278C6EE0();
  PickupDateValidator = type metadata accessor for FirstPickupDateValidator();
  v902 = PickupDateValidator;
  v12[72] = PickupDateValidator;
  v12[73] = &off_283AEB958;
  v917 = v12;
  v45 = __swift_allocate_boxed_opaque_existential_1(v12 + 69);
  sub_2278040AC((v12 + 38), v45 + *(PickupDateValidator + 24));
  v46 = v905;
  v47 = v910;
  v48 = v903;
  (v903)(v905, *MEMORY[0x277D099B8], v910);
  *&v921 = 0;
  BYTE8(v921) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6140, &qword_2278CC4D0);
  sub_2278043F4(&qword_2813B9BA0, &qword_27D7D6140, &qword_2278CC4D0);
  sub_2278C6E20();
  Kind_high = SHIDWORD(v902[1].Kind);
  (v48)(v46, *MEMORY[0x277D099B0], v47);
  *&v921 = 0;
  BYTE8(v921) = 1;
  sub_2278C6E20();
  v50 = v917;
  sub_2278040AC((v917 + 38), &v921);
  sub_2278040AC((v50 + 43), &v918);
  v51 = boxed_opaque_existential_1;
  v52 = [boxed_opaque_existential_1 defaultCenter];
  LODWORD(PickupDateValidator) = sub_2278C7440();
  v53 = v922;
  v54 = __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
  v55 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v874 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v58 + 16))(v57);
  __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v59 = sub_2278C2D50(v57, v52, PickupDateValidator);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  __swift_destroy_boxed_opaque_existential_0(&v921);
  v50[218] = v59;
  v50[219] = &off_283AE9868;
  v60 = objc_allocWithZone(MEMORY[0x277D095B8]);
  v61 = v915;
  v62 = [v60 initWithSleepStore:v915 delegate:v59];

  v50[217] = v62;
  sub_2278040AC((v50 + 33), &v921);
  sub_2278040AC((v50 + 38), &v918);
  sub_2278040AC((v50 + 69), &v1011);
  sub_2278040AC((v50 + 43), &v1008);
  v898 = v62;
  v895 = [v51 defaultCenter];
  LODWORD(v893) = sub_2278C7440();
  __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
  v63 = v919;
  v64 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v897 = &v874;
  v65 = *(v63[-1].Description + 8);
  MEMORY[0x28223BE20](v64);
  v67 = &v874 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  v69 = v1012;
  v70 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, v1012);
  v894 = &v874;
  v71 = *(v69[-1].Description + 8);
  MEMORY[0x28223BE20](v70);
  v73 = &v874 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v74 + 16))(v73);
  __swift_mutable_project_boxed_opaque_existential_1(&v1008, v1009);
  v1006 = &type metadata for BiomeObserver;
  v1007 = &off_283AEAFC0;
  v75 = v916;
  v1003 = v916;
  v1004 = &off_283AE99D8;
  v76 = __swift_allocate_boxed_opaque_existential_1(&v1002);
  v915 = type metadata accessor for DateProvider;
  sub_2278C4690(v67, v76, type metadata accessor for DateProvider);
  v77 = v902;
  v1000 = v902;
  v1001 = &off_283AEB958;
  v78 = __swift_allocate_boxed_opaque_existential_1(&v999);
  sub_2278C4690(v73, v78, type metadata accessor for FirstPickupDateValidator);
  v997 = &type metadata for DuetObserver;
  v998 = &off_283AEA5D0;
  v994 = &type metadata for FirstPickupStore;
  v995 = &off_283AE9938;
  PickupObserver = type metadata accessor for FirstPickupObserver(0);
  Kind_low = LODWORD(PickupObserver[3].Kind);
  v80 = WORD2(PickupObserver[3].Kind);
  v81 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v1005, &type metadata for BiomeObserver);
  v82 = v1003;
  v83 = __swift_mutable_project_boxed_opaque_existential_1(&v1002, v1003);
  v892 = &v874;
  v84 = *(v82[-1].Description + 8);
  MEMORY[0x28223BE20](v83);
  v86 = &v874 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v87 + 16))(v86);
  v88 = v1000;
  v89 = __swift_mutable_project_boxed_opaque_existential_1(&v999, v1000);
  v891 = &v874;
  v90 = *(v88[-1].Description + 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v874 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v93 + 16))(v92);
  __swift_mutable_project_boxed_opaque_existential_1(&v996, &type metadata for DuetObserver);
  __swift_mutable_project_boxed_opaque_existential_1(&v993, &type metadata for FirstPickupStore);
  v991 = &type metadata for BiomeObserver;
  v992 = &off_283AEAFC0;
  v988 = v75;
  v989 = &off_283AE99D8;
  v94 = __swift_allocate_boxed_opaque_existential_1(&v987);
  sub_2278C4690(v86, v94, type metadata accessor for DateProvider);
  v985 = v77;
  v986 = &off_283AEB958;
  v95 = __swift_allocate_boxed_opaque_existential_1(&v984);
  sub_2278C4690(v92, v95, type metadata accessor for FirstPickupDateValidator);
  v982 = &type metadata for DuetObserver;
  v983 = &off_283AEA5D0;
  v979 = &type metadata for FirstPickupStore;
  v980 = &off_283AE9938;
  swift_defaultActor_initialize();
  *(v81 + 288) = 0;
  *(v81 + 296) = -1;
  (v903)(v905, *MEMORY[0x277D099A8], v910);
  LOBYTE(v975) = 1;
  sub_2278C6E20();
  sub_2277F9D0C(&v990, v81 + 112);
  sub_2277F9D0C(&v987, v81 + 152);
  sub_2277F9D0C(&v984, v81 + 192);
  sub_2277F9D0C(&v981, v81 + 232);
  *(v81 + 272) = v895;
  *(v81 + 280) = v893;
  type metadata accessor for FirstPickupObserver.State(0);
  swift_storeEnumTagMultiPayload();
  sub_2277F9D0C(&v978, v81 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store);
  __swift_destroy_boxed_opaque_existential_0(&v993);
  __swift_destroy_boxed_opaque_existential_0(&v996);
  __swift_destroy_boxed_opaque_existential_0(&v999);
  __swift_destroy_boxed_opaque_existential_0(&v1002);
  __swift_destroy_boxed_opaque_existential_0(&v1005);
  __swift_destroy_boxed_opaque_existential_0(&v1008);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  __swift_destroy_boxed_opaque_existential_0(&v921);
  v96 = v917;
  v917[77] = PickupObserver;
  v96[78] = &off_283AEB078;
  v96[74] = v81;
  sub_2278040AC((v96 + 38), &v921);
  sub_2278040AC((v96 + 74), &v918);
  v97 = [boxed_opaque_existential_1 defaultCenter];
  v98 = v922;
  v99 = __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
  v100 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v102 = &v874 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v103 + 16))(v102);
  v104 = v919;
  v105 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v106 = *(v104[-1].Description + 8);
  MEMORY[0x28223BE20](v105);
  v108 = (&v874 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v109 + 16))(v108);
  v110 = sub_2278C2FB0(v102, *v108, v898, v97);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  __swift_destroy_boxed_opaque_existential_0(&v921);
  Description = type metadata accessor for UserDayProvider();
  v96[225] = Description;
  v96[226] = &off_283AEB868;
  v96[222] = v110;
  v96[30] = &type metadata for NotificationSettingsProvider;
  v96[31] = &off_283AE9E40;
  v111 = swift_allocObject();
  v96[27] = v111;
  v112 = v96 + 27;
  sub_2278040AC((v96 + 48), v111 + 16);
  *(v111 + 56) = 0xD000000000000019;
  *(v111 + 64) = 0x80000002278D32E0;
  v96[149] = &type metadata for NotificationSettingsProvider;
  v96[150] = &off_283AE9E40;
  v113 = swift_allocObject();
  v96[146] = v113;
  sub_2278040AC((v96 + 48), v113 + 16);
  *(v113 + 56) = 0xD000000000000017;
  *(v113 + 64) = 0x80000002278D3300;
  v96[210] = &type metadata for PrivacySettingsProvider;
  v96[211] = &off_283AEBD28;
  v114 = type metadata accessor for NotificationRequestStore();
  v115 = swift_allocObject();
  swift_defaultActor_initialize();
  v116 = MEMORY[0x277D84F90];
  *(v115 + 112) = sub_2278C3EE0(MEMORY[0x277D84F90]);
  v96[179] = v114;
  v96[180] = &off_283AED820;
  v96[176] = v115;
  sub_2278C7440();
  sub_2278C7460();
  v117 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v118 = sub_2278C76F0();

  v119 = [v117 initWithBundleIdentifier_];

  v96[227] = v119;
  v96[164] = &type metadata for NotificationRequestPublisher;
  v96[165] = &off_283AEB7B8;
  v96[161] = v119;
  sub_2278040AC((v96 + 43), &v921);
  sub_2278040AC((v96 + 161), &v918);
  sub_2278040AC((v96 + 212), &v1011);
  v120 = swift_allocObject();
  v121 = v119;
  swift_defaultActor_initialize();
  *(v120 + 112) = sub_2278C3EE0(v116);
  __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
  v122 = v919;
  v123 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v124 = *(v122[-1].Description + 8);
  MEMORY[0x28223BE20](v123);
  v126 = (&v874 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v127 + 16))(v126);
  __swift_mutable_project_boxed_opaque_existential_1(&v1011, v1012);
  v128 = sub_2278C320C(*v126, v120);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  __swift_destroy_boxed_opaque_existential_0(&v921);
  v910 = type metadata accessor for NotificationRequestScheduler();
  v96[169] = v910;
  v96[170] = &off_283AEA0D0;
  v96[166] = v128;
  v96[174] = &type metadata for NotificationRequestServiceFactory;
  v96[175] = &off_283AEB4F0;
  v96[171] = v121;
  sub_2278040AC((v96 + 171), &v921);
  v129 = v922;
  v130 = __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
  v905 = &v874;
  v131 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v133 = (&v874 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v134 + 16))(v133);
  v135 = *v133;
  v919 = &type metadata for NotificationRequestServiceFactory;
  v920 = &off_283AEB4F0;
  *&v918 = v135;
  v1012 = v909;
  v1013 = MEMORY[0x277D09898];
  v136 = v900;
  *&v1011 = v900;
  v137 = type metadata accessor for NotificationRequestListener();
  v138 = swift_allocObject();
  v139 = __swift_mutable_project_boxed_opaque_existential_1(&v918, &type metadata for NotificationRequestServiceFactory);
  v140 = *(qword_283AEB4D0 + 64);
  MEMORY[0x28223BE20](v139);
  v142 = (&v874 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v143 + 16))(v142);
  v144 = *v142;
  v1009 = &type metadata for NotificationRequestServiceFactory;
  v1010 = &off_283AEB4F0;
  *&v1008 = v144;
  v906 = v136;
  v900 = v121;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v1008, v138 + 112);
  sub_2277F9D0C(&v1011, v138 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  __swift_destroy_boxed_opaque_existential_0(&v921);
  v96[159] = v137;
  v96[160] = &off_283AECF60;
  v96[156] = v138;
  sub_2278040AC((v96 + 27), &v921);
  sub_2278040AC((v96 + 146), &v918);
  v902 = [boxed_opaque_existential_1 defaultCenter];
  LODWORD(v903) = sub_2278C7440();
  v145 = v922;
  v146 = __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
  v905 = &v874;
  v147 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v149 = &v874 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v150 + 16))(v149);
  v151 = v919;
  v152 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v898 = &v874;
  v153 = *(v151[-1].Description + 8);
  MEMORY[0x28223BE20](v152);
  v155 = &v874 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v156 + 16))(v155);
  v1012 = &type metadata for NotificationSettingsProvider;
  v1013 = &off_283AE9E40;
  v157 = swift_allocObject();
  v1010 = &off_283AE9E40;
  *&v1011 = v157;
  v158 = *(v149 + 1);
  *(v157 + 16) = *v149;
  *(v157 + 32) = v158;
  *(v157 + 48) = *(v149 + 2);
  *(v157 + 64) = *(v149 + 6);
  v1009 = &type metadata for NotificationSettingsProvider;
  v159 = swift_allocObject();
  *&v1008 = v159;
  v160 = *(v155 + 1);
  *(v159 + 16) = *v155;
  *(v159 + 32) = v160;
  *(v159 + 48) = *(v155 + 2);
  *(v159 + 64) = *(v155 + 6);
  v1006 = &type metadata for PairedDeviceRegistry;
  v1007 = &off_283AED678;
  v897 = type metadata accessor for NotificationSettingsSystem();
  v161 = swift_allocObject();
  v162 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, &type metadata for NotificationSettingsProvider);
  v895 = &v874;
  v163 = off_283AE9E20;
  v164 = *(off_283AE9E20 + 8);
  MEMORY[0x28223BE20](v162);
  v165 = &v874 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v163[2];
  v166(v165);
  v167 = __swift_mutable_project_boxed_opaque_existential_1(&v1008, &type metadata for NotificationSettingsProvider);
  MEMORY[0x28223BE20](v167);
  v166(v165);
  __swift_mutable_project_boxed_opaque_existential_1(&v1005, &type metadata for PairedDeviceRegistry);
  v1003 = &type metadata for NotificationSettingsProvider;
  v1004 = &off_283AE9E40;
  v168 = swift_allocObject();
  *&v1002 = v168;
  v169 = *(v165 + 1);
  *(v168 + 16) = *v165;
  *(v168 + 32) = v169;
  *(v168 + 48) = *(v165 + 2);
  *(v168 + 64) = *(v165 + 6);
  v1000 = &type metadata for NotificationSettingsProvider;
  v1001 = &off_283AE9E40;
  v170 = swift_allocObject();
  *&v999 = v170;
  v171 = *(v165 + 1);
  *(v170 + 16) = *v165;
  *(v170 + 32) = v171;
  *(v170 + 48) = *(v165 + 2);
  *(v170 + 64) = *(v165 + 6);
  v997 = &type metadata for PairedDeviceRegistry;
  v998 = &off_283AED678;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v1002, v161 + 112);
  sub_2277F9D0C(&v999, v161 + 152);
  *(v161 + 192) = v902;
  sub_2277F9D0C(&v996, v161 + 200);
  *(v161 + 240) = v903;
  *(v161 + 248) = 0;
  __swift_destroy_boxed_opaque_existential_0(&v1005);
  __swift_destroy_boxed_opaque_existential_0(&v1008);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  __swift_destroy_boxed_opaque_existential_0(&v921);
  v112[157] = v897;
  v112[158] = &off_283AE9D10;
  v112[154] = v161;
  sub_2278040AC((v917 + 38), &v921);
  v903 = [objc_allocWithZone(MEMORY[0x277D09CE8]) init];
  v902 = [objc_allocWithZone(MEMORY[0x277D09D20]) init];
  v172 = v922;
  v173 = __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
  v905 = &v874;
  v174 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v176 = &v874 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v177 + 16))(v176);
  v178 = v916;
  v919 = v916;
  v920 = &off_283AE99D8;
  v179 = __swift_allocate_boxed_opaque_existential_1(&v918);
  v180 = v915;
  sub_2278C4690(v176, v179, v915);
  v181 = type metadata accessor for NotificationSuppressionSystem();
  v182 = swift_allocObject();
  v183 = v919;
  v184 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v185 = *(v183[-1].Description + 8);
  MEMORY[0x28223BE20](v184);
  v187 = &v874 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v188 + 16))(v187);
  v1012 = v178;
  v1013 = &off_283AE99D8;
  v189 = __swift_allocate_boxed_opaque_existential_1(&v1011);
  sub_2278C4690(v187, v189, v180);
  sub_2278040AC(&v1011, v182 + 16);
  v190 = v902;
  *(v182 + 56) = v903;
  *(v182 + 64) = v190;
  [(ValueMetadata *)v190 setDelegate:v182];
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  __swift_destroy_boxed_opaque_existential_0(&v921);
  v112[167] = v181;
  v112[168] = &off_283AEC520;
  v112[164] = v182;
  sub_2278040AC((v112 + 164), &v921);
  v191 = v922;
  v192 = __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
  v903 = &v874;
  v193 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v195 = (&v874 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v196 + 16))(v195);
  v197 = *v195;
  v919 = v181;
  v920 = &off_283AEC520;
  *&v918 = v197;
  v198 = v909;
  v1012 = v909;
  v1013 = MEMORY[0x277D09898];
  v199 = v906;
  *&v1011 = v906;
  v200 = type metadata accessor for NotificationSuppressionListener();
  v201 = swift_allocObject();
  v202 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v181);
  v203 = *(v181[-1].Description + 8);
  MEMORY[0x28223BE20](v202);
  v205 = (&v874 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v206 + 16))(v205);
  v207 = *v205;
  v1009 = v181;
  v1010 = &off_283AEC520;
  *&v1008 = v207;
  v905 = v199;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v1008, v201 + 112);
  sub_2277F9D0C(&v1011, v201 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  __swift_destroy_boxed_opaque_existential_0(&v921);
  v208 = v904;
  v112[162] = v200;
  v112[163] = &off_283AED4C8;
  v112[159] = v201;
  v112[35] = &type metadata for FirstGlanceStore;
  v112[36] = &off_283AEC780;
  v112[32] = v208;
  v112[30] = &type metadata for FirstGlanceServiceFactory;
  v112[31] = &off_283AEC6A8;
  v209 = swift_allocObject();
  v112[27] = v209;
  v210 = v917;
  sub_2278040AC((v917 + 22), v209 + 16);
  sub_2278040AC((v210 + 38), v209 + 56);
  sub_2278040AC((v210 + 48), v209 + 96);
  *(v209 + 136) = v208;
  v211 = v899;
  *(v209 + 144) = v899;
  sub_2278040AC((v112 + 27), &v921);
  v212 = v922;
  v213 = __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
  v906 = &v874;
  v214 = *(*(v212 - 8) + 64);
  MEMORY[0x28223BE20](v213);
  v216 = &v874 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v217 + 16))(v216);
  v919 = &type metadata for FirstGlanceServiceFactory;
  v920 = &off_283AEC6A8;
  v218 = swift_allocObject();
  *&v918 = v218;
  v219 = *(v216 + 7);
  *(v218 + 112) = *(v216 + 6);
  *(v218 + 128) = v219;
  *(v218 + 144) = *(v216 + 16);
  v220 = *(v216 + 3);
  *(v218 + 48) = *(v216 + 2);
  *(v218 + 64) = v220;
  v221 = *(v216 + 5);
  *(v218 + 80) = *(v216 + 4);
  *(v218 + 96) = v221;
  v222 = *(v216 + 1);
  *(v218 + 16) = *v216;
  *(v218 + 32) = v222;
  v1012 = v198;
  v1013 = MEMORY[0x277D09898];
  v223 = v905;
  *&v1011 = v905;
  type metadata accessor for FirstGlanceListener();
  v224 = swift_allocObject();
  v225 = __swift_mutable_project_boxed_opaque_existential_1(&v918, &type metadata for FirstGlanceServiceFactory);
  v226 = *(off_283AEC678 + 8);
  MEMORY[0x28223BE20](v225);
  v228 = &v874 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v229 + 16))(v228);
  v1009 = &type metadata for FirstGlanceServiceFactory;
  v1010 = &off_283AEC6A8;
  v230 = swift_allocObject();
  *&v1008 = v230;
  v231 = *(v228 + 7);
  *(v230 + 112) = *(v228 + 6);
  *(v230 + 128) = v231;
  *(v230 + 144) = *(v228 + 16);
  v232 = *(v228 + 3);
  *(v230 + 48) = *(v228 + 2);
  *(v230 + 64) = v232;
  v233 = *(v228 + 5);
  *(v230 + 80) = *(v228 + 4);
  *(v230 + 96) = v233;
  v234 = *(v228 + 1);
  *(v230 + 16) = *v228;
  *(v230 + 32) = v234;
  v898 = v904;
  v899 = v211;
  v897 = v223;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v1008, v224 + 112);
  sub_2277F9D0C(&v1011, v224 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  __swift_destroy_boxed_opaque_existential_0(&v921);
  v112[26] = v224;
  v235 = v917;
  sub_2278040AC((v917 + 22), &v921);
  sub_2278040AC((v235 + 38), &v918);
  sub_2278040AC((v235 + 48), &v1011);
  sub_2278040AC((v112 + 32), &v1008);
  sub_2278040AC((v235 + 74), &v1005);
  sub_2278040AC((v112 + 139), &v1002);
  sub_2278040AC((v112 + 119), &v999);
  sub_2278040AC((v112 + 180), &v996);
  sub_2278040AC((v112 + 27), &v993);
  sub_2278040AC((v235 + 222), &v990);
  v892 = v901;
  v894 = [boxed_opaque_existential_1 defaultCenter];
  v236 = v919;
  v237 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v902 = &v874;
  v238 = *(v236[-1].Description + 8);
  MEMORY[0x28223BE20](v237);
  v906 = (&v874 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v240 + 16))();
  v241 = v1012;
  v242 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, v1012);
  v901 = &v874;
  v243 = *(v241[-1].Description + 8);
  MEMORY[0x28223BE20](v242);
  v245 = (&v874 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v246 + 16))(v245);
  v247 = v1009;
  v248 = __swift_mutable_project_boxed_opaque_existential_1(&v1008, v1009);
  v895 = &v874;
  v249 = *(v247[-1].Description + 8);
  MEMORY[0x28223BE20](v248);
  v251 = (&v874 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v252 + 16))(v251);
  v253 = v1006;
  v254 = __swift_mutable_project_boxed_opaque_existential_1(&v1005, v1006);
  v893 = &v874;
  v255 = *(v253[-1].Description + 8);
  MEMORY[0x28223BE20](v254);
  v257 = (&v874 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v258 + 16))(v257);
  v259 = v1003;
  v260 = __swift_mutable_project_boxed_opaque_existential_1(&v1002, v1003);
  v891 = &v874;
  v261 = *(v259[-1].Description + 8);
  MEMORY[0x28223BE20](v260);
  v263 = (&v874 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v264 + 16))(v263);
  v265 = v1000;
  v266 = __swift_mutable_project_boxed_opaque_existential_1(&v999, v1000);
  v890 = &v874;
  v267 = *(v265[-1].Description + 8);
  MEMORY[0x28223BE20](v266);
  v269 = &v874 - ((v268 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v270 + 16))(v269);
  __swift_mutable_project_boxed_opaque_existential_1(&v996, v997);
  v271 = v994;
  v272 = __swift_mutable_project_boxed_opaque_existential_1(&v993, v994);
  v889 = &v874;
  v273 = *(v271[-1].Description + 8);
  MEMORY[0x28223BE20](v272);
  v275 = &v874 - ((v274 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v276 + 16))(v275);
  v277 = v991;
  v278 = __swift_mutable_project_boxed_opaque_existential_1(&v990, v991);
  v888 = &v874;
  v279 = *(v277[-1].Description + 8);
  MEMORY[0x28223BE20](v278);
  v281 = (&v874 - ((v280 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v282 + 16))(v281);
  v283 = *v245;
  v284 = *v251;
  v285 = *v257;
  v286 = *v263;
  v287 = *v281;
  v988 = v916;
  v989 = &off_283AE99D8;
  v288 = __swift_allocate_boxed_opaque_existential_1(&v987);
  sub_2278C4690(v906, v288, v915);
  v986 = &off_283AEBF40;
  v985 = v914;
  *&v984 = v283;
  v983 = &off_283AEC780;
  v982 = &type metadata for FirstGlanceStore;
  *&v981 = v284;
  v980 = &off_283AEB078;
  v979 = PickupObserver;
  *&v978 = v285;
  v977 = &off_283AEA0D0;
  v976 = v910;
  *&v975 = v286;
  v973 = &type metadata for NotificationSettingsProvider;
  v974 = &off_283AE9E40;
  v289 = swift_allocObject();
  *&v972 = v289;
  v290 = *(v269 + 1);
  *(v289 + 16) = *v269;
  *(v289 + 32) = v290;
  *(v289 + 48) = *(v269 + 2);
  *(v289 + 64) = *(v269 + 6);
  v970 = &type metadata for PrivacySettingsProvider;
  v971 = &off_283AEBD28;
  v967 = &type metadata for FirstGlanceServiceFactory;
  v968 = &off_283AEC6A8;
  v291 = swift_allocObject();
  *&v966 = v291;
  v292 = *(v275 + 7);
  *(v291 + 112) = *(v275 + 6);
  *(v291 + 128) = v292;
  *(v291 + 144) = *(v275 + 16);
  v293 = *(v275 + 3);
  *(v291 + 48) = *(v275 + 2);
  *(v291 + 64) = v293;
  v294 = *(v275 + 5);
  *(v291 + 80) = *(v275 + 4);
  *(v291 + 96) = v294;
  v295 = *(v275 + 1);
  *(v291 + 16) = *v275;
  *(v291 + 32) = v295;
  v965 = &off_283AEB868;
  v964 = Description;
  *&v963 = v287;
  GlanceSystem = type metadata accessor for FirstGlanceSystem();
  v296 = swift_allocObject();
  v297 = v988;
  v298 = __swift_mutable_project_boxed_opaque_existential_1(&v987, v988);
  v886 = &v874;
  v299 = *(v297[-1].Description + 8);
  MEMORY[0x28223BE20](v298);
  v880 = (&v874 - ((v300 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v301 + 16))();
  v302 = v914;
  v303 = __swift_mutable_project_boxed_opaque_existential_1(&v984, v914);
  v885 = &v874;
  v905 = *(v302[-1].Description + 8);
  MEMORY[0x28223BE20](v303);
  v906 = ((v304 + 15) & 0xFFFFFFFFFFFFFFF0);
  v878 = (&v874 - v906);
  v306 = *(v305 + 16);
  v903 = (v305 + 16);
  v904 = v306;
  (v306)();
  v307 = v982;
  v308 = __swift_mutable_project_boxed_opaque_existential_1(&v981, v982);
  v884 = &v874;
  v309 = *(v307[-1].Description + 8);
  MEMORY[0x28223BE20](v308);
  v311 = (&v874 - ((v310 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v312 + 16))(v311);
  v313 = v979;
  v314 = __swift_mutable_project_boxed_opaque_existential_1(&v978, v979);
  v883 = &v874;
  v315 = *(v313[-1].Description + 8);
  MEMORY[0x28223BE20](v314);
  v317 = (&v874 - ((v316 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v318 + 16))(v317);
  v319 = v976;
  v320 = __swift_mutable_project_boxed_opaque_existential_1(&v975, v976);
  v882 = &v874;
  v321 = *(v319[-1].Description + 8);
  MEMORY[0x28223BE20](v320);
  v323 = (&v874 - ((v322 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v324 + 16))(v323);
  v325 = v973;
  v326 = __swift_mutable_project_boxed_opaque_existential_1(&v972, v973);
  v881 = &v874;
  v327 = *(v325[-1].Description + 8);
  MEMORY[0x28223BE20](v326);
  v329 = &v874 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v330 + 16))(v329);
  __swift_mutable_project_boxed_opaque_existential_1(&v969, v970);
  v331 = v967;
  v332 = __swift_mutable_project_boxed_opaque_existential_1(&v966, v967);
  v879 = &v874;
  v333 = *(v331[-1].Description + 8);
  MEMORY[0x28223BE20](v332);
  v335 = &v874 - ((v334 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v336 + 16))(v335);
  v337 = v964;
  v338 = __swift_mutable_project_boxed_opaque_existential_1(&v963, v964);
  v877 = &v874;
  v339 = *(v337[-1].Description + 8);
  MEMORY[0x28223BE20](v338);
  v341 = (&v874 - ((v340 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v342 + 16))(v341);
  v343 = *v878;
  v344 = *v311;
  v345 = *v317;
  v346 = *v323;
  v347 = *v341;
  v961 = v916;
  v962 = &off_283AE99D8;
  v348 = __swift_allocate_boxed_opaque_existential_1(&v960);
  sub_2278C4690(v880, v348, v915);
  v959 = &off_283AEBF40;
  v958 = v914;
  *&v957 = v343;
  v956 = &off_283AEC780;
  v955 = &type metadata for FirstGlanceStore;
  *&v954 = v344;
  v953 = &off_283AEB078;
  v952 = PickupObserver;
  *&v951 = v345;
  v950 = &off_283AEA0D0;
  v949 = v910;
  *&v948 = v346;
  v946 = &type metadata for NotificationSettingsProvider;
  v947 = &off_283AE9E40;
  v349 = swift_allocObject();
  *&v945 = v349;
  v350 = *(v329 + 1);
  *(v349 + 16) = *v329;
  *(v349 + 32) = v350;
  *(v349 + 48) = *(v329 + 2);
  *(v349 + 64) = *(v329 + 6);
  v943 = &type metadata for PrivacySettingsProvider;
  v944 = &off_283AEBD28;
  v940 = &type metadata for FirstGlanceServiceFactory;
  v941 = &off_283AEC6A8;
  v351 = swift_allocObject();
  *&v939 = v351;
  v352 = *(v335 + 7);
  *(v351 + 112) = *(v335 + 6);
  *(v351 + 128) = v352;
  *(v351 + 144) = *(v335 + 16);
  v353 = *(v335 + 3);
  *(v351 + 48) = *(v335 + 2);
  *(v351 + 64) = v353;
  v354 = *(v335 + 5);
  *(v351 + 80) = *(v335 + 4);
  *(v351 + 96) = v354;
  v355 = *(v335 + 1);
  *(v351 + 16) = *v335;
  *(v351 + 32) = v355;
  v938 = &off_283AEB868;
  v937 = Description;
  *&v936 = v347;
  swift_defaultActor_initialize();
  v356 = v892;
  v296[14] = v892;
  sub_2277F9D0C(&v921, (v296 + 15));
  sub_2277F9D0C(&v960, (v296 + 20));
  sub_2277F9D0C(&v957, (v296 + 25));
  sub_2277F9D0C(&v954, (v296 + 30));
  sub_2277F9D0C(&v951, (v296 + 35));
  v296[40] = v894;
  sub_2277F9D0C(&v948, (v296 + 41));
  sub_2277F9D0C(&v945, (v296 + 46));
  sub_2277F9D0C(&v942, (v296 + 51));
  sub_2277F9D0C(&v939, (v296 + 56));
  v296[61] = 0;
  sub_2277F9D0C(&v936, (v296 + 62));
  __swift_destroy_boxed_opaque_existential_0(&v963);
  __swift_destroy_boxed_opaque_existential_0(&v966);
  __swift_destroy_boxed_opaque_existential_0(&v969);
  __swift_destroy_boxed_opaque_existential_0(&v972);
  __swift_destroy_boxed_opaque_existential_0(&v975);
  __swift_destroy_boxed_opaque_existential_0(&v978);
  __swift_destroy_boxed_opaque_existential_0(&v981);
  __swift_destroy_boxed_opaque_existential_0(&v984);
  __swift_destroy_boxed_opaque_existential_0(&v987);
  __swift_destroy_boxed_opaque_existential_0(&v990);
  __swift_destroy_boxed_opaque_existential_0(&v993);
  __swift_destroy_boxed_opaque_existential_0(&v996);
  __swift_destroy_boxed_opaque_existential_0(&v999);
  __swift_destroy_boxed_opaque_existential_0(&v1002);
  __swift_destroy_boxed_opaque_existential_0(&v1005);
  __swift_destroy_boxed_opaque_existential_0(&v1008);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  v112[40] = GlanceSystem;
  v112[41] = &off_283AE9AC0;
  v112[37] = v296;
  v112[55] = &type metadata for FitnessPlusPlanDataProvider;
  v112[56] = &protocol witness table for FitnessPlusPlanDataProvider;
  v357 = swift_allocObject();
  v112[52] = v357;
  FitnessPlusPlanDataProvider.init()((v357 + 16));
  v112[61] = &type metadata for FitnessPlusPlanServiceFactory;
  v112[62] = &off_283AEA238;
  v358 = swift_allocObject();
  v112[58] = v358;
  v359 = v917;
  sub_2278040AC((v917 + 22), v358 + 16);
  sub_2278040AC((v359 + 38), v358 + 56);
  sub_2278040AC((v112 + 52), v358 + 96);
  sub_2278040AC((v112 + 139), v358 + 144);
  v360 = v898;
  *(v358 + 136) = v898;
  v112[66] = &type metadata for FitnessPlusPlanStore;
  v112[67] = &off_283AECBD8;
  v361 = swift_allocObject();
  v112[63] = v361;
  sub_2278040AC((v359 + 48), v361 + 16);
  sub_2278040AC((v112 + 52), &v921);
  sub_2278040AC((v359 + 48), &v918);
  sub_2278040AC((v359 + 38), &v1011);
  sub_2278040AC((v112 + 63), &v1008);
  sub_2278040AC((v359 + 74), &v1005);
  sub_2278040AC((v112 + 139), &v1002);
  sub_2278040AC((v112 + 119), &v999);
  sub_2278040AC((v112 + 180), &v996);
  sub_2278040AC((v112 + 58), &v993);
  sub_2278040AC((v359 + 222), &v990);
  sub_2278040AC((v112 + 185), &v987);
  v902 = v356;
  v895 = v360;
  v894 = [boxed_opaque_existential_1 defaultCenter];
  v362 = v919;
  v363 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v893 = &v874;
  v364 = *(v362[-1].Description + 8);
  MEMORY[0x28223BE20](v363);
  v901 = (&v874 - ((v365 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v366 + 16))();
  v367 = v1012;
  v368 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, v1012);
  v892 = &v874;
  v369 = *(v367[-1].Description + 8);
  MEMORY[0x28223BE20](v368);
  v371 = &v874 - ((v370 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v372 + 16))(v371);
  v373 = v1009;
  v374 = __swift_mutable_project_boxed_opaque_existential_1(&v1008, v1009);
  v891 = &v874;
  v375 = *(v373[-1].Description + 8);
  MEMORY[0x28223BE20](v374);
  v377 = &v874 - ((v376 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v378 + 16))(v377);
  v379 = v1006;
  v380 = __swift_mutable_project_boxed_opaque_existential_1(&v1005, v1006);
  v890 = &v874;
  v381 = *(v379[-1].Description + 8);
  MEMORY[0x28223BE20](v380);
  v383 = (&v874 - ((v382 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v384 + 16))(v383);
  v385 = v1003;
  v386 = __swift_mutable_project_boxed_opaque_existential_1(&v1002, v1003);
  v889 = &v874;
  v387 = *(v385[-1].Description + 8);
  MEMORY[0x28223BE20](v386);
  v389 = (&v874 - ((v388 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v390 + 16))(v389);
  v391 = v1000;
  v392 = __swift_mutable_project_boxed_opaque_existential_1(&v999, v1000);
  v888 = &v874;
  v393 = *(v391[-1].Description + 8);
  MEMORY[0x28223BE20](v392);
  v395 = &v874 - ((v394 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v396 + 16))(v395);
  __swift_mutable_project_boxed_opaque_existential_1(&v996, v997);
  v397 = v994;
  v398 = __swift_mutable_project_boxed_opaque_existential_1(&v993, v994);
  GlanceSystem = &v874;
  v399 = *(v397[-1].Description + 8);
  MEMORY[0x28223BE20](v398);
  v401 = &v874 - ((v400 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v402 + 16))(v401);
  v403 = v991;
  v404 = __swift_mutable_project_boxed_opaque_existential_1(&v990, v991);
  v886 = &v874;
  v405 = *(v403[-1].Description + 8);
  MEMORY[0x28223BE20](v404);
  v407 = (&v874 - ((v406 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v408 + 16))(v407);
  __swift_mutable_project_boxed_opaque_existential_1(&v987, v988);
  v409 = *v901;
  v410 = *v383;
  v411 = *v389;
  v412 = *v407;
  v986 = &off_283AEBF40;
  v413 = v914;
  v985 = v914;
  *&v984 = v409;
  v982 = v916;
  v983 = &off_283AE99D8;
  v414 = __swift_allocate_boxed_opaque_existential_1(&v981);
  sub_2278C4690(v371, v414, v915);
  v979 = &type metadata for FitnessPlusPlanStore;
  v980 = &off_283AECBD8;
  v415 = swift_allocObject();
  *&v978 = v415;
  v416 = *(v377 + 1);
  *(v415 + 16) = *v377;
  *(v415 + 32) = v416;
  *(v415 + 48) = *(v377 + 4);
  v977 = &off_283AEB078;
  v976 = PickupObserver;
  *&v975 = v410;
  v974 = &off_283AEA0D0;
  v973 = v910;
  *&v972 = v411;
  v970 = &type metadata for NotificationSettingsProvider;
  v971 = &off_283AE9E40;
  v417 = swift_allocObject();
  *&v969 = v417;
  v418 = *(v395 + 1);
  *(v417 + 16) = *v395;
  *(v417 + 32) = v418;
  *(v417 + 48) = *(v395 + 2);
  *(v417 + 64) = *(v395 + 6);
  v967 = &type metadata for PrivacySettingsProvider;
  v968 = &off_283AEBD28;
  v964 = &type metadata for FitnessPlusPlanServiceFactory;
  v965 = &off_283AEA238;
  v419 = swift_allocObject();
  *&v963 = v419;
  v420 = *(v401 + 9);
  *(v419 + 144) = *(v401 + 8);
  *(v419 + 160) = v420;
  *(v419 + 176) = *(v401 + 20);
  v421 = *(v401 + 5);
  *(v419 + 80) = *(v401 + 4);
  *(v419 + 96) = v421;
  v422 = *(v401 + 7);
  *(v419 + 112) = *(v401 + 6);
  *(v419 + 128) = v422;
  v423 = *(v401 + 1);
  *(v419 + 16) = *v401;
  *(v419 + 32) = v423;
  v424 = *(v401 + 3);
  *(v419 + 48) = *(v401 + 2);
  *(v419 + 64) = v424;
  v962 = &off_283AEB868;
  v961 = Description;
  *&v960 = v412;
  v959 = &off_283AEC190;
  v958 = v908;
  *&v957 = v907;
  v955 = &type metadata for LockStateProvider;
  v956 = &off_283AE99C0;
  v898 = type metadata accessor for FitnessPlusPlanSystem();
  v901 = swift_allocObject();
  v425 = __swift_mutable_project_boxed_opaque_existential_1(&v984, v413);
  v885 = &v874;
  MEMORY[0x28223BE20](v425);
  v877 = (&v874 - v906);
  (v904)();
  v426 = v982;
  v427 = __swift_mutable_project_boxed_opaque_existential_1(&v981, v982);
  v884 = &v874;
  v428 = *(v426[-1].Description + 8);
  MEMORY[0x28223BE20](v427);
  v875 = &v874 - ((v429 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v430 + 16))();
  v431 = v979;
  v432 = __swift_mutable_project_boxed_opaque_existential_1(&v978, v979);
  v883 = &v874;
  v433 = *(v431[-1].Description + 8);
  MEMORY[0x28223BE20](v432);
  v435 = &v874 - ((v434 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v436 + 16))(v435);
  v437 = v976;
  v438 = __swift_mutable_project_boxed_opaque_existential_1(&v975, v976);
  v882 = &v874;
  v439 = *(v437[-1].Description + 8);
  MEMORY[0x28223BE20](v438);
  v441 = (&v874 - ((v440 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v442 + 16))(v441);
  v443 = v973;
  v444 = __swift_mutable_project_boxed_opaque_existential_1(&v972, v973);
  v881 = &v874;
  v445 = *(v443[-1].Description + 8);
  MEMORY[0x28223BE20](v444);
  v447 = (&v874 - ((v446 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v448 + 16))(v447);
  v449 = v970;
  v450 = __swift_mutable_project_boxed_opaque_existential_1(&v969, v970);
  v880 = &v874;
  v451 = *(v449[-1].Description + 8);
  MEMORY[0x28223BE20](v450);
  v453 = &v874 - ((v452 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v454 + 16))(v453);
  __swift_mutable_project_boxed_opaque_existential_1(&v966, v967);
  v455 = v964;
  v456 = __swift_mutable_project_boxed_opaque_existential_1(&v963, v964);
  v879 = &v874;
  v457 = *(v455[-1].Description + 8);
  MEMORY[0x28223BE20](v456);
  v459 = &v874 - ((v458 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v460 + 16))(v459);
  v461 = v961;
  v462 = __swift_mutable_project_boxed_opaque_existential_1(&v960, v961);
  v878 = &v874;
  v463 = *(v461[-1].Description + 8);
  MEMORY[0x28223BE20](v462);
  v465 = (&v874 - ((v464 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v466 + 16))(v465);
  v467 = v958;
  v468 = __swift_mutable_project_boxed_opaque_existential_1(&v957, v958);
  v876 = &v874;
  v469 = *(*(v467 - 8) + 64);
  MEMORY[0x28223BE20](v468);
  v471 = (&v874 - ((v470 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v472 + 16))(v471);
  __swift_mutable_project_boxed_opaque_existential_1(&v954, v955);
  v473 = *v877;
  v474 = *v441;
  v475 = *v447;
  v476 = *v465;
  v477 = *v471;
  v953 = &off_283AEBF40;
  v952 = v914;
  *&v951 = v473;
  v949 = v916;
  v950 = &off_283AE99D8;
  v478 = __swift_allocate_boxed_opaque_existential_1(&v948);
  sub_2278C4690(v875, v478, v915);
  v946 = &type metadata for FitnessPlusPlanStore;
  v947 = &off_283AECBD8;
  v479 = swift_allocObject();
  *&v945 = v479;
  v480 = *(v435 + 1);
  *(v479 + 16) = *v435;
  *(v479 + 32) = v480;
  *(v479 + 48) = *(v435 + 4);
  v944 = &off_283AEB078;
  v943 = PickupObserver;
  *&v942 = v474;
  v941 = &off_283AEA0D0;
  v940 = v910;
  *&v939 = v475;
  v937 = &type metadata for NotificationSettingsProvider;
  v938 = &off_283AE9E40;
  v481 = swift_allocObject();
  *&v936 = v481;
  v482 = *(v453 + 1);
  *(v481 + 16) = *v453;
  *(v481 + 32) = v482;
  *(v481 + 48) = *(v453 + 2);
  *(v481 + 64) = *(v453 + 6);
  v934 = &type metadata for PrivacySettingsProvider;
  v935 = &off_283AEBD28;
  v931 = &type metadata for FitnessPlusPlanServiceFactory;
  v932 = &off_283AEA238;
  v483 = swift_allocObject();
  v930[0] = v483;
  v484 = *(v459 + 9);
  *(v483 + 144) = *(v459 + 8);
  *(v483 + 160) = v484;
  *(v483 + 176) = *(v459 + 20);
  v485 = *(v459 + 5);
  *(v483 + 80) = *(v459 + 4);
  *(v483 + 96) = v485;
  v486 = *(v459 + 7);
  *(v483 + 112) = *(v459 + 6);
  *(v483 + 128) = v486;
  v487 = *(v459 + 1);
  *(v483 + 16) = *v459;
  *(v483 + 32) = v487;
  v488 = *(v459 + 3);
  *(v483 + 48) = *(v459 + 2);
  *(v483 + 64) = v488;
  v929 = &off_283AEB868;
  v928 = Description;
  v927[0] = v476;
  v926[4] = &off_283AEC190;
  v926[3] = v908;
  v926[0] = v477;
  v925[3] = &type metadata for LockStateProvider;
  v925[4] = &off_283AE99C0;

  v489 = v901;
  swift_defaultActor_initialize();
  v489[14] = v902;
  sub_2278040AC(&v921, (v489 + 15));
  sub_2278040AC(&v951, (v489 + 20));
  sub_2278040AC(&v948, (v489 + 25));
  sub_2278040AC(&v945, (v489 + 30));
  sub_2278040AC(&v942, (v489 + 35));
  v489[40] = v894;
  sub_2278040AC(&v939, (v489 + 41));
  sub_2278040AC(&v936, (v489 + 46));
  sub_2278040AC(v933, (v489 + 51));
  sub_2278040AC(v930, (v489 + 56));
  sub_2278040AC(v927, (v489 + 61));
  sub_2278040AC(v925, (v489 + 66));
  v490 = v489;
  sub_2278040AC(v926, (v489 + 71));
  v894 = sub_2278C7490();
  v491 = sub_2278C7480();

  __swift_destroy_boxed_opaque_existential_0(&v921);
  __swift_destroy_boxed_opaque_existential_0(v925);
  __swift_destroy_boxed_opaque_existential_0(v926);
  __swift_destroy_boxed_opaque_existential_0(v927);
  __swift_destroy_boxed_opaque_existential_0(v930);
  __swift_destroy_boxed_opaque_existential_0(v933);
  __swift_destroy_boxed_opaque_existential_0(&v936);
  __swift_destroy_boxed_opaque_existential_0(&v939);
  __swift_destroy_boxed_opaque_existential_0(&v942);
  __swift_destroy_boxed_opaque_existential_0(&v945);
  __swift_destroy_boxed_opaque_existential_0(&v948);
  __swift_destroy_boxed_opaque_existential_0(&v951);
  v490[76] = v491;
  v490[77] = 0;
  __swift_destroy_boxed_opaque_existential_0(&v954);
  __swift_destroy_boxed_opaque_existential_0(&v957);
  __swift_destroy_boxed_opaque_existential_0(&v960);
  __swift_destroy_boxed_opaque_existential_0(&v963);
  __swift_destroy_boxed_opaque_existential_0(&v966);
  __swift_destroy_boxed_opaque_existential_0(&v969);
  __swift_destroy_boxed_opaque_existential_0(&v972);
  __swift_destroy_boxed_opaque_existential_0(&v975);
  __swift_destroy_boxed_opaque_existential_0(&v978);
  __swift_destroy_boxed_opaque_existential_0(&v981);
  __swift_destroy_boxed_opaque_existential_0(&v984);
  __swift_destroy_boxed_opaque_existential_0(&v987);
  __swift_destroy_boxed_opaque_existential_0(&v990);
  __swift_destroy_boxed_opaque_existential_0(&v993);
  __swift_destroy_boxed_opaque_existential_0(&v996);
  __swift_destroy_boxed_opaque_existential_0(&v999);
  __swift_destroy_boxed_opaque_existential_0(&v1002);
  __swift_destroy_boxed_opaque_existential_0(&v1005);
  __swift_destroy_boxed_opaque_existential_0(&v1008);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  v492 = v898;
  v112[71] = v898;
  v112[72] = &off_283AED130;
  v112[68] = v490;
  v493 = v490;
  sub_2278040AC((v917 + 38), &v921);
  sub_2278040AC((v112 + 52), &v918);
  sub_2278040AC((v112 + 58), &v1011);
  v494 = v922;
  v495 = __swift_mutable_project_boxed_opaque_existential_1(&v921, v922);
  v892 = &v874;
  v496 = *(*(v494 - 8) + 64);
  MEMORY[0x28223BE20](v495);
  v498 = &v874 - ((v497 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v499 + 16))(v498);
  v500 = v1012;
  v501 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, v1012);
  v891 = &v874;
  v502 = *(v500[-1].Description + 8);
  MEMORY[0x28223BE20](v501);
  v504 = &v874 - ((v503 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v505 + 16))(v504);
  v506 = v916;
  v1009 = v916;
  v1010 = &off_283AE99D8;
  v507 = __swift_allocate_boxed_opaque_existential_1(&v1008);
  v508 = v915;
  sub_2278C4690(v498, v507, v915);
  v1006 = v492;
  v1007 = &off_283AED130;
  v509 = v492;
  *&v1005 = v493;
  v1003 = &type metadata for FitnessPlusPlanServiceFactory;
  v1004 = &off_283AEA238;
  v510 = swift_allocObject();
  *&v1002 = v510;
  v511 = *(v504 + 9);
  *(v510 + 144) = *(v504 + 8);
  *(v510 + 160) = v511;
  *(v510 + 176) = *(v504 + 20);
  v512 = *(v504 + 5);
  *(v510 + 80) = *(v504 + 4);
  *(v510 + 96) = v512;
  v513 = *(v504 + 7);
  *(v510 + 112) = *(v504 + 6);
  *(v510 + 128) = v513;
  v514 = *(v504 + 1);
  *(v510 + 16) = *v504;
  *(v510 + 32) = v514;
  v515 = *(v504 + 3);
  *(v510 + 48) = *(v504 + 2);
  *(v510 + 64) = v515;
  v1001 = MEMORY[0x277D09898];
  v1000 = v909;
  *&v999 = v897;
  type metadata accessor for FitnessPlusPlanListener();
  v516 = swift_allocObject();
  v517 = v1009;
  v518 = __swift_mutable_project_boxed_opaque_existential_1(&v1008, v1009);
  v890 = &v874;
  v519 = *(v517[-1].Description + 8);
  MEMORY[0x28223BE20](v518);
  v521 = &v874 - ((v520 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v522 + 16))(v521);
  v523 = __swift_mutable_project_boxed_opaque_existential_1(&v1005, v492);
  v889 = &v874;
  v524 = *(v492[-1].Description + 8);
  MEMORY[0x28223BE20](v523);
  v526 = (&v874 - ((v525 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v527 + 16))(v526);
  v528 = v1003;
  v529 = __swift_mutable_project_boxed_opaque_existential_1(&v1002, v1003);
  v888 = &v874;
  v530 = *(v528[-1].Description + 8);
  MEMORY[0x28223BE20](v529);
  v532 = &v874 - ((v531 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v533 + 16))(v532);
  v534 = *v526;
  v997 = v506;
  v998 = &off_283AE99D8;
  v535 = __swift_allocate_boxed_opaque_existential_1(&v996);
  sub_2278C4690(v521, v535, v508);
  v995 = &off_283AED130;
  v994 = v509;
  *&v993 = v534;
  v991 = &type metadata for FitnessPlusPlanServiceFactory;
  v992 = &off_283AEA238;
  v536 = swift_allocObject();
  *&v990 = v536;
  v537 = *(v532 + 9);
  *(v536 + 144) = *(v532 + 8);
  *(v536 + 160) = v537;
  *(v536 + 176) = *(v532 + 20);
  v538 = *(v532 + 5);
  *(v536 + 80) = *(v532 + 4);
  *(v536 + 96) = v538;
  v539 = *(v532 + 7);
  *(v536 + 112) = *(v532 + 6);
  *(v536 + 128) = v539;
  v540 = *(v532 + 1);
  *(v536 + 16) = *v532;
  *(v536 + 32) = v540;
  v541 = *(v532 + 3);
  *(v536 + 48) = *(v532 + 2);
  *(v536 + 64) = v541;
  swift_retain_n();
  v893 = v897;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v996, v516 + 112);
  sub_2277F9D0C(&v918, v516 + 192);
  sub_2277F9D0C(&v993, v516 + 152);
  sub_2277F9D0C(&v990, v516 + 232);
  sub_2277F9D0C(&v999, v516 + 272);
  __swift_destroy_boxed_opaque_existential_0(&v1002);
  __swift_destroy_boxed_opaque_existential_0(&v1005);
  __swift_destroy_boxed_opaque_existential_0(&v1008);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v921);
  v112[57] = v516;
  v542 = v917;
  sub_2278040AC((v917 + 22), &v921);
  sub_2278040AC((v542 + 38), v923);
  v923[10] = &off_283AECC40;
  v923[9] = &type metadata for PauseRingsSampleQuery;
  v543 = v895;
  v923[6] = v895;
  sub_2278040AC((v112 + 139), &v924);
  v923[5] = v543;
  sub_2278040AC((v542 + 48), &v918);
  sub_2278040AC((v542 + 38), &v1011);
  sub_2278040AC((v542 + 74), &v1008);
  sub_2278040AC((v112 + 139), &v1005);
  sub_2278040AC((v112 + 119), &v1002);
  sub_2278040AC((v112 + 180), &v999);
  sub_2278040AC((v542 + 222), &v996);
  sub_2278040AC((v112 + 185), &v993);
  v895 = v543;
  GlanceSystem = [boxed_opaque_existential_1 defaultCenter];
  v544 = v919;
  v545 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v892 = &v874;
  v546 = *(v544[-1].Description + 8);
  MEMORY[0x28223BE20](v545);
  v548 = (&v874 - ((v547 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v549 + 16))(v548);
  v550 = v1012;
  v551 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, v1012);
  v891 = &v874;
  v552 = *(v550[-1].Description + 8);
  MEMORY[0x28223BE20](v551);
  v554 = &v874 - ((v553 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v555 + 16))(v554);
  v556 = v1009;
  v557 = __swift_mutable_project_boxed_opaque_existential_1(&v1008, v1009);
  v890 = &v874;
  v558 = *(v556[-1].Description + 8);
  MEMORY[0x28223BE20](v557);
  v560 = (&v874 - ((v559 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v561 + 16))(v560);
  v562 = v1006;
  v563 = __swift_mutable_project_boxed_opaque_existential_1(&v1005, v1006);
  v889 = &v874;
  v564 = *(v562[-1].Description + 8);
  MEMORY[0x28223BE20](v563);
  v566 = (&v874 - ((v565 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v567 + 16))(v566);
  v568 = v1003;
  v569 = __swift_mutable_project_boxed_opaque_existential_1(&v1002, v1003);
  v888 = &v874;
  v570 = *(v568[-1].Description + 8);
  MEMORY[0x28223BE20](v569);
  v572 = &v874 - ((v571 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v573 + 16))(v572);
  __swift_mutable_project_boxed_opaque_existential_1(&v999, v1000);
  v574 = v997;
  v575 = __swift_mutable_project_boxed_opaque_existential_1(&v996, v997);
  v886 = &v874;
  v576 = *(v574[-1].Description + 8);
  MEMORY[0x28223BE20](v575);
  v578 = (&v874 - ((v577 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v579 + 16))(v578);
  __swift_mutable_project_boxed_opaque_existential_1(&v993, v994);
  v580 = *v548;
  v581 = *v560;
  v582 = *v566;
  v583 = *v578;
  v992 = &off_283AEBF40;
  v584 = v914;
  v991 = v914;
  *&v990 = v580;
  v988 = v916;
  v989 = &off_283AE99D8;
  v585 = __swift_allocate_boxed_opaque_existential_1(&v987);
  sub_2278C4690(v554, v585, v508);
  v985 = &type metadata for PauseRingsStore;
  v986 = &off_283AEB2B8;
  v983 = &off_283AEB078;
  v982 = PickupObserver;
  *&v981 = v581;
  v980 = &off_283AEA0D0;
  v979 = v910;
  *&v978 = v582;
  v976 = &type metadata for NotificationSettingsProvider;
  v977 = &off_283AE9E40;
  v586 = swift_allocObject();
  *&v975 = v586;
  v587 = *(v572 + 1);
  *(v586 + 16) = *v572;
  *(v586 + 32) = v587;
  *(v586 + 48) = *(v572 + 2);
  *(v586 + 64) = *(v572 + 6);
  v973 = &type metadata for PrivacySettingsProvider;
  v974 = &off_283AEBD28;
  v970 = &type metadata for PauseRingsServiceFactory;
  v971 = &off_283AEAF90;
  *&v969 = swift_allocObject();
  sub_2278C40C8(&v921, v969 + 16);
  v968 = &off_283AEB868;
  v967 = Description;
  *&v966 = v583;
  v965 = &off_283AEC190;
  v964 = v908;
  *&v963 = v907;
  v961 = &type metadata for LockStateProvider;
  v962 = &off_283AE99C0;
  v907 = type metadata accessor for PauseRingsSystem();
  v897 = swift_allocObject();
  v588 = __swift_mutable_project_boxed_opaque_existential_1(&v990, v584);
  v885 = &v874;
  MEMORY[0x28223BE20](v588);
  v878 = (&v874 - v906);
  (v904)();
  v589 = v988;
  v590 = __swift_mutable_project_boxed_opaque_existential_1(&v987, v988);
  v884 = &v874;
  v591 = *(v589[-1].Description + 8);
  MEMORY[0x28223BE20](v590);
  v593 = &v874 - ((v592 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v594 + 16))(v593);
  __swift_mutable_project_boxed_opaque_existential_1(&v984, v985);
  v595 = v982;
  v596 = __swift_mutable_project_boxed_opaque_existential_1(&v981, v982);
  v883 = &v874;
  v597 = *(v595[-1].Description + 8);
  MEMORY[0x28223BE20](v596);
  v599 = (&v874 - ((v598 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v600 + 16))(v599);
  v601 = v979;
  v602 = __swift_mutable_project_boxed_opaque_existential_1(&v978, v979);
  v882 = &v874;
  v603 = *(v601[-1].Description + 8);
  MEMORY[0x28223BE20](v602);
  v605 = (&v874 - ((v604 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v606 + 16))(v605);
  v607 = v976;
  v608 = __swift_mutable_project_boxed_opaque_existential_1(&v975, v976);
  v881 = &v874;
  v609 = *(v607[-1].Description + 8);
  MEMORY[0x28223BE20](v608);
  v611 = &v874 - ((v610 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v612 + 16))(v611);
  __swift_mutable_project_boxed_opaque_existential_1(&v972, v973);
  v613 = v970;
  v614 = __swift_mutable_project_boxed_opaque_existential_1(&v969, v970);
  v880 = &v874;
  v615 = *(v613[-1].Description + 8);
  MEMORY[0x28223BE20](v614);
  v617 = &v874 - ((v616 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v618 + 16))(v617);
  v619 = v967;
  v620 = __swift_mutable_project_boxed_opaque_existential_1(&v966, v967);
  v879 = &v874;
  v621 = *(v619[-1].Description + 8);
  MEMORY[0x28223BE20](v620);
  v623 = (&v874 - ((v622 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v624 + 16))(v623);
  v625 = v964;
  v626 = __swift_mutable_project_boxed_opaque_existential_1(&v963, v964);
  v877 = &v874;
  v627 = *(v625[-1].Description + 8);
  MEMORY[0x28223BE20](v626);
  v629 = (&v874 - ((v628 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v630 + 16))(v629);
  __swift_mutable_project_boxed_opaque_existential_1(&v960, v961);
  v631 = *v878;
  v632 = *v599;
  v633 = *v605;
  v634 = *v623;
  v635 = *v629;
  v959 = &off_283AEBF40;
  v958 = v914;
  *&v957 = v631;
  v955 = v916;
  v956 = &off_283AE99D8;
  v636 = __swift_allocate_boxed_opaque_existential_1(&v954);
  sub_2278C4690(v593, v636, v915);
  v952 = &type metadata for PauseRingsStore;
  v953 = &off_283AEB2B8;
  v950 = &off_283AEB078;
  v949 = PickupObserver;
  *&v948 = v632;
  v947 = &off_283AEA0D0;
  v946 = v910;
  *&v945 = v633;
  v943 = &type metadata for NotificationSettingsProvider;
  v944 = &off_283AE9E40;
  v637 = swift_allocObject();
  *&v942 = v637;
  v638 = *(v611 + 1);
  *(v637 + 16) = *v611;
  *(v637 + 32) = v638;
  *(v637 + 48) = *(v611 + 2);
  *(v637 + 64) = *(v611 + 6);
  v940 = &type metadata for PrivacySettingsProvider;
  v941 = &off_283AEBD28;
  v937 = &type metadata for PauseRingsServiceFactory;
  v938 = &off_283AEAF90;
  v639 = swift_allocObject();
  *&v936 = v639;
  v640 = *(v617 + 9);
  *(v639 + 144) = *(v617 + 8);
  *(v639 + 160) = v640;
  *(v639 + 176) = *(v617 + 20);
  v641 = *(v617 + 5);
  *(v639 + 80) = *(v617 + 4);
  *(v639 + 96) = v641;
  v642 = *(v617 + 7);
  *(v639 + 112) = *(v617 + 6);
  *(v639 + 128) = v642;
  v643 = *(v617 + 1);
  *(v639 + 16) = *v617;
  *(v639 + 32) = v643;
  v644 = *(v617 + 3);
  *(v639 + 48) = *(v617 + 2);
  *(v639 + 64) = v644;
  v935 = &off_283AEB868;
  v934 = Description;
  v933[0] = v634;
  v932 = &off_283AEC190;
  v931 = v908;
  v930[0] = v635;
  v928 = &type metadata for LockStateProvider;
  v929 = &off_283AE99C0;
  v645 = v897;
  swift_defaultActor_initialize();
  v645[14] = v902;
  sub_2278040AC(&v957, (v645 + 15));
  sub_2278040AC(&v954, (v645 + 20));
  sub_2278040AC(&v951, (v645 + 25));
  sub_2278040AC(&v948, (v645 + 30));
  v645[35] = GlanceSystem;
  sub_2278040AC(&v945, (v645 + 36));
  sub_2278040AC(&v942, (v645 + 41));
  sub_2278040AC(&v939, (v645 + 46));
  sub_2278040AC(&v936, (v645 + 51));
  sub_2278040AC(v933, (v645 + 56));
  sub_2278040AC(v927, (v645 + 61));
  v646 = v645;
  sub_2278040AC(v930, (v645 + 66));
  v647 = sub_2278C7480();
  __swift_destroy_boxed_opaque_existential_0(v927);
  __swift_destroy_boxed_opaque_existential_0(v930);
  __swift_destroy_boxed_opaque_existential_0(v933);
  __swift_destroy_boxed_opaque_existential_0(&v936);
  __swift_destroy_boxed_opaque_existential_0(&v939);
  __swift_destroy_boxed_opaque_existential_0(&v942);
  __swift_destroy_boxed_opaque_existential_0(&v945);
  __swift_destroy_boxed_opaque_existential_0(&v948);
  __swift_destroy_boxed_opaque_existential_0(&v951);
  __swift_destroy_boxed_opaque_existential_0(&v954);
  __swift_destroy_boxed_opaque_existential_0(&v957);
  v646[71] = v647;
  v646[72] = 0;
  v648 = v646;
  __swift_destroy_boxed_opaque_existential_0(&v960);
  __swift_destroy_boxed_opaque_existential_0(&v963);
  __swift_destroy_boxed_opaque_existential_0(&v966);
  __swift_destroy_boxed_opaque_existential_0(&v969);
  __swift_destroy_boxed_opaque_existential_0(&v972);
  __swift_destroy_boxed_opaque_existential_0(&v975);
  __swift_destroy_boxed_opaque_existential_0(&v978);
  __swift_destroy_boxed_opaque_existential_0(&v981);
  __swift_destroy_boxed_opaque_existential_0(&v984);
  __swift_destroy_boxed_opaque_existential_0(&v987);
  __swift_destroy_boxed_opaque_existential_0(&v990);
  __swift_destroy_boxed_opaque_existential_0(&v993);
  __swift_destroy_boxed_opaque_existential_0(&v996);
  __swift_destroy_boxed_opaque_existential_0(&v999);
  __swift_destroy_boxed_opaque_existential_0(&v1002);
  __swift_destroy_boxed_opaque_existential_0(&v1005);
  __swift_destroy_boxed_opaque_existential_0(&v1008);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  v112[173] = v907;
  v112[174] = &off_283AEC8E0;
  v112[170] = v646;
  v649 = v917;
  sub_2278040AC((v917 + 38), &v1011);
  v650 = v1012;
  v651 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, v1012);
  v652 = *(v650[-1].Description + 8);
  MEMORY[0x28223BE20](v651);
  v654 = &v874 - ((v653 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v655 + 16))(v654);
  sub_2278C40C8(&v921, &v918);
  v656 = v648;
  swift_retain_n();
  v657 = v893;
  v658 = sub_2278C34A8(v654, v656, &v918, v657);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  v112[178] = type metadata accessor for PauseRingsListener();
  v112[179] = &off_283AEA460;
  v112[175] = v658;
  v112[82] = &type metadata for GoalCompletionServiceFactory;
  v112[83] = &off_283AEA428;
  v659 = swift_allocObject();
  v112[79] = v659;
  sub_2278040AC((v649 + 38), v659 + 16);
  sub_2278040AC((v112 + 134), v659 + 64);
  sub_2278040AC((v112 + 119), v659 + 104);
  sub_2278040AC((v112 + 180), v659 + 144);
  v660 = v895;
  *(v659 + 56) = v895;
  sub_2278040AC((v112 + 79), &v918);
  v661 = v919;
  v662 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  PickupObserver = &v874;
  v663 = *(v661[-1].Description + 8);
  MEMORY[0x28223BE20](v662);
  v665 = &v874 - ((v664 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v666 + 16))(v665);
  v1012 = &type metadata for GoalCompletionServiceFactory;
  v1013 = &off_283AEA428;
  v667 = swift_allocObject();
  *&v1011 = v667;
  v668 = *(v665 + 9);
  *(v667 + 144) = *(v665 + 8);
  *(v667 + 160) = v668;
  *(v667 + 176) = *(v665 + 20);
  v669 = *(v665 + 5);
  *(v667 + 80) = *(v665 + 4);
  *(v667 + 96) = v669;
  v670 = *(v665 + 7);
  *(v667 + 112) = *(v665 + 6);
  *(v667 + 128) = v670;
  v671 = *(v665 + 1);
  *(v667 + 16) = *v665;
  *(v667 + 32) = v671;
  v672 = *(v665 + 3);
  *(v667 + 48) = *(v665 + 2);
  *(v667 + 64) = v672;
  v673 = v909;
  v1009 = v909;
  v1010 = MEMORY[0x277D09898];
  *&v1008 = v657;
  v674 = type metadata accessor for GoalCompletionListener();
  v675 = swift_allocObject();
  v676 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, &type metadata for GoalCompletionServiceFactory);
  v677 = *(unk_283AEA3F8 + 64);
  MEMORY[0x28223BE20](v676);
  v679 = &v874 - v678;
  (*(v680 + 16))(&v874 - v678);
  v1006 = &type metadata for GoalCompletionServiceFactory;
  v1007 = &off_283AEA428;
  v681 = swift_allocObject();
  *&v1005 = v681;
  v682 = *(v679 + 9);
  *(v681 + 144) = *(v679 + 8);
  *(v681 + 160) = v682;
  *(v681 + 176) = *(v679 + 20);
  v683 = *(v679 + 5);
  *(v681 + 80) = *(v679 + 4);
  *(v681 + 96) = v683;
  v684 = *(v679 + 7);
  *(v681 + 112) = *(v679 + 6);
  *(v681 + 128) = v684;
  v685 = *(v679 + 1);
  *(v681 + 16) = *v679;
  *(v681 + 32) = v685;
  v686 = *(v679 + 3);
  *(v681 + 48) = *(v679 + 2);
  *(v681 + 64) = v686;
  v687 = v660;
  v688 = v657;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v1005, v675 + 112);
  sub_2277F9D0C(&v1008, v675 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  v112[77] = v674;
  v112[78] = &off_283AEB6A0;
  v112[74] = v675;
  v112[87] = &type metadata for GoalProgressServiceFactory;
  v112[88] = &off_283AEB490;
  v689 = swift_allocObject();
  v112[84] = v689;
  sub_2278040AC((v917 + 38), v689 + 16);
  sub_2278040AC((v112 + 134), v689 + 64);
  sub_2278040AC((v112 + 119), v689 + 104);
  sub_2278040AC((v112 + 180), v689 + 144);
  *(v689 + 56) = v687;
  *(v689 + 184) = v899;
  sub_2278040AC((v112 + 84), &v918);
  v690 = v919;
  v691 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  PickupObserver = &v874;
  v692 = *(v690[-1].Description + 8);
  MEMORY[0x28223BE20](v691);
  v694 = (&v874 - v693);
  (*(v695 + 16))(&v874 - v693);
  v1012 = &type metadata for GoalProgressServiceFactory;
  v1013 = &off_283AEB490;
  v696 = swift_allocObject();
  *&v1011 = v696;
  v697 = v694[9];
  v696[9] = v694[8];
  v696[10] = v697;
  v696[11] = v694[10];
  v698 = v694[5];
  v696[5] = v694[4];
  v696[6] = v698;
  v699 = v694[7];
  v696[7] = v694[6];
  v696[8] = v699;
  v700 = v694[1];
  v696[1] = *v694;
  v696[2] = v700;
  v701 = v694[3];
  v696[3] = v694[2];
  v696[4] = v701;
  v1009 = v673;
  v1010 = MEMORY[0x277D09898];
  *&v1008 = v688;
  v702 = type metadata accessor for GoalProgressListener();
  v703 = swift_allocObject();
  v704 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, &type metadata for GoalProgressServiceFactory);
  v705 = *(unk_283AEB460 + 64);
  MEMORY[0x28223BE20](v704);
  v707 = (&v874 - v706);
  (*(v708 + 16))(&v874 - v706);
  v1006 = &type metadata for GoalProgressServiceFactory;
  v1007 = &off_283AEB490;
  v709 = swift_allocObject();
  *&v1005 = v709;
  v710 = v707[9];
  v709[9] = v707[8];
  v709[10] = v710;
  v709[11] = v707[10];
  v711 = v707[5];
  v709[5] = v707[4];
  v709[6] = v711;
  v712 = v707[7];
  v709[7] = v707[6];
  v709[8] = v712;
  v713 = v707[1];
  v709[1] = *v707;
  v709[2] = v713;
  v714 = v707[3];
  v709[3] = v707[2];
  v709[4] = v714;
  v715 = v687;
  v910 = v688;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v1005, v703 + 112);
  sub_2277F9D0C(&v1008, v703 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  v112[92] = v702;
  v112[93] = &off_283AEB9C8;
  v112[89] = v703;
  v112[97] = sub_2278C71A0();
  v112[98] = MEMORY[0x277D09AC8];
  __swift_allocate_boxed_opaque_existential_1(v112 + 94);
  PickupObserver = v715;
  sub_2278C7190();
  v716 = v917;
  sub_2278040AC((v917 + 38), &v918);
  sub_2278040AC((v716 + 48), &v1011);
  sub_2278040AC((v112 + 119), &v1008);
  sub_2278040AC((v112 + 94), &v1005);
  sub_2278040AC((v112 + 180), &v1002);
  sub_2278040AC((v716 + 222), &v999);
  v895 = [boxed_opaque_existential_1 defaultCenter];
  v717 = v919;
  v718 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  boxed_opaque_existential_1 = &v874;
  v719 = *(v717[-1].Description + 8);
  MEMORY[0x28223BE20](v718);
  v721 = &v874 - v720;
  (*(v722 + 16))(&v874 - v720);
  v723 = v1012;
  v724 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, v1012);
  v908 = &v874;
  v725 = *(v723[-1].Description + 8);
  MEMORY[0x28223BE20](v724);
  v727 = (&v874 - v726);
  (*(v728 + 16))(&v874 - v726);
  v729 = v1009;
  v730 = __swift_mutable_project_boxed_opaque_existential_1(&v1008, v1009);
  v894 = &v874;
  v731 = *(v729[-1].Description + 8);
  MEMORY[0x28223BE20](v730);
  v733 = &v874 - v732;
  (*(v734 + 16))(&v874 - v732);
  __swift_mutable_project_boxed_opaque_existential_1(&v1002, v1003);
  v735 = v1000;
  v736 = __swift_mutable_project_boxed_opaque_existential_1(&v999, v1000);
  v893 = &v874;
  v737 = *(v735[-1].Description + 8);
  MEMORY[0x28223BE20](v736);
  v739 = (&v874 - v738);
  (*(v740 + 16))(&v874 - v738);
  v741 = *v727;
  v742 = *v739;
  v997 = v916;
  v998 = &off_283AE99D8;
  v743 = __swift_allocate_boxed_opaque_existential_1(&v996);
  sub_2278C4690(v721, v743, v915);
  v995 = &off_283AEBF40;
  v744 = v914;
  v994 = v914;
  *&v993 = v741;
  v991 = &type metadata for NotificationSettingsProvider;
  v992 = &off_283AE9E40;
  v745 = swift_allocObject();
  *&v990 = v745;
  v746 = *(v733 + 1);
  *(v745 + 16) = *v733;
  *(v745 + 32) = v746;
  *(v745 + 48) = *(v733 + 2);
  *(v745 + 64) = *(v733 + 6);
  v988 = &type metadata for PrivacySettingsProvider;
  v989 = &off_283AEBD28;
  v986 = &off_283AEB868;
  v747 = Description;
  v985 = Description;
  *&v984 = v742;
  v982 = &type metadata for GoalProgressConfigurationFactory;
  v983 = &off_283AEBB40;
  v892 = type metadata accessor for GoalProgressSystem();
  v748 = swift_allocObject();
  v749 = v997;
  v750 = __swift_mutable_project_boxed_opaque_existential_1(&v996, v997);
  v891 = &v874;
  v751 = *(v749[-1].Description + 8);
  MEMORY[0x28223BE20](v750);
  v753 = &v874 - v752;
  (*(v754 + 16))(&v874 - v752);
  v755 = __swift_mutable_project_boxed_opaque_existential_1(&v993, v744);
  v890 = &v874;
  MEMORY[0x28223BE20](v755);
  v756 = (&v874 - v906);
  (v904)(&v874 - v906);
  v757 = v991;
  v758 = __swift_mutable_project_boxed_opaque_existential_1(&v990, v991);
  v906 = &v874;
  v759 = *(v757[-1].Description + 8);
  MEMORY[0x28223BE20](v758);
  v761 = &v874 - v760;
  (*(v762 + 16))(&v874 - v760);
  __swift_mutable_project_boxed_opaque_existential_1(&v987, v988);
  v763 = v985;
  v764 = __swift_mutable_project_boxed_opaque_existential_1(&v984, v985);
  v905 = &v874;
  v765 = *(v763[-1].Description + 8);
  MEMORY[0x28223BE20](v764);
  v767 = (&v874 - v766);
  (*(v768 + 16))(&v874 - v766);
  __swift_mutable_project_boxed_opaque_existential_1(&v981, v982);
  v769 = *v756;
  v770 = *v767;
  v979 = v916;
  v980 = &off_283AE99D8;
  v771 = __swift_allocate_boxed_opaque_existential_1(&v978);
  sub_2278C4690(v753, v771, v915);
  v977 = &off_283AEBF40;
  v976 = v744;
  *&v975 = v769;
  v973 = &type metadata for NotificationSettingsProvider;
  v974 = &off_283AE9E40;
  v772 = swift_allocObject();
  *&v972 = v772;
  v773 = *(v761 + 1);
  *(v772 + 16) = *v761;
  *(v772 + 32) = v773;
  *(v772 + 48) = *(v761 + 2);
  *(v772 + 64) = *(v761 + 6);
  v970 = &type metadata for PrivacySettingsProvider;
  v971 = &off_283AEBD28;
  v968 = &off_283AEB868;
  v967 = v747;
  *&v966 = v770;
  v964 = &type metadata for GoalProgressConfigurationFactory;
  v965 = &off_283AEBB40;
  swift_defaultActor_initialize();
  v748[14] = v902;
  sub_2277F9D0C(&v963, (v748 + 15));
  sub_2277F9D0C(&v978, (v748 + 20));
  sub_2277F9D0C(&v975, (v748 + 25));
  v748[30] = v895;
  sub_2277F9D0C(&v972, (v748 + 31));
  sub_2277F9D0C(&v1005, (v748 + 41));
  sub_2277F9D0C(&v969, (v748 + 36));
  v748[46] = 0;
  sub_2277F9D0C(&v966, (v748 + 47));
  __swift_destroy_boxed_opaque_existential_0(&v981);
  __swift_destroy_boxed_opaque_existential_0(&v984);
  __swift_destroy_boxed_opaque_existential_0(&v987);
  __swift_destroy_boxed_opaque_existential_0(&v990);
  __swift_destroy_boxed_opaque_existential_0(&v993);
  __swift_destroy_boxed_opaque_existential_0(&v996);
  __swift_destroy_boxed_opaque_existential_0(&v999);
  __swift_destroy_boxed_opaque_existential_0(&v1002);
  __swift_destroy_boxed_opaque_existential_0(&v1008);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  v112[102] = v892;
  v112[103] = &off_283AEBBE0;
  v112[99] = v748;
  v112[117] = &type metadata for MoveModeServiceFactory;
  v112[118] = &off_283AEA2D0;
  v112[114] = v900;
  sub_2278040AC((v112 + 114), &v918);
  v774 = v919;
  v775 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v916 = &v874;
  v776 = *(v774[-1].Description + 8);
  MEMORY[0x28223BE20](v775);
  v778 = (&v874 - v777);
  (*(v779 + 16))(&v874 - v777);
  v780 = *v778;
  v1012 = &type metadata for MoveModeServiceFactory;
  v1013 = &off_283AEA2D0;
  *&v1011 = v780;
  v781 = v909;
  v782 = v910;
  v1009 = v909;
  v1010 = MEMORY[0x277D09898];
  *&v1008 = v910;
  v783 = type metadata accessor for MoveModeListener();
  v784 = swift_allocObject();
  v785 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, &type metadata for MoveModeServiceFactory);
  v786 = *(unk_283AEA2B0 + 64);
  MEMORY[0x28223BE20](v785);
  v788 = (&v874 - v787);
  (*(v789 + 16))(&v874 - v787);
  v790 = *v788;
  v1006 = &type metadata for MoveModeServiceFactory;
  v1007 = &off_283AEA2D0;
  *&v1005 = v790;
  v791 = v782;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v1005, v784 + 112);
  sub_2277F9D0C(&v1008, v784 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  v112[112] = v783;
  v112[113] = &off_283AEA248;
  v112[109] = v784;
  v112[209] = &type metadata for WalkSuggestionServiceFactory;
  v112[210] = &off_283AEC058;
  v792 = swift_allocObject();
  v112[206] = v792;
  v793 = v917;
  sub_2278040AC((v917 + 22), v792 + 16);
  sub_2278040AC((v793 + 38), v792 + 56);
  *(v792 + 96) = PickupObserver;
  sub_2278040AC((v112 + 206), &v918);
  v794 = v919;
  v795 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v796 = *(v794[-1].Description + 8);
  MEMORY[0x28223BE20](v795);
  v798 = &v874 - v797;
  (*(v799 + 16))(&v874 - v797);
  v1012 = &type metadata for WalkSuggestionServiceFactory;
  v1013 = &off_283AEC058;
  v800 = swift_allocObject();
  *&v1011 = v800;
  v801 = *(v798 + 3);
  *(v800 + 48) = *(v798 + 2);
  *(v800 + 64) = v801;
  *(v800 + 80) = *(v798 + 4);
  *(v800 + 96) = *(v798 + 10);
  v802 = *(v798 + 1);
  *(v800 + 16) = *v798;
  *(v800 + 32) = v802;
  v1009 = v781;
  v1010 = MEMORY[0x277D09898];
  *&v1008 = v791;
  v803 = v791;
  v804 = type metadata accessor for WalkSuggestionListener();
  v805 = swift_allocObject();
  v806 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, &type metadata for WalkSuggestionServiceFactory);
  v807 = *(unk_283AEC030 + 64);
  MEMORY[0x28223BE20](v806);
  v809 = &v874 - v808;
  (*(v810 + 16))(&v874 - v808);
  v1006 = &type metadata for WalkSuggestionServiceFactory;
  v1007 = &off_283AEC058;
  v811 = swift_allocObject();
  *&v1005 = v811;
  v812 = *(v809 + 3);
  *(v811 + 48) = *(v809 + 2);
  *(v811 + 64) = v812;
  *(v811 + 80) = *(v809 + 4);
  *(v811 + 96) = *(v809 + 10);
  v813 = *(v809 + 1);
  *(v811 + 16) = *v809;
  *(v811 + 32) = v813;
  v814 = v803;
  v916 = v814;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v1005, v805 + 112);
  sub_2277F9D0C(&v1008, v805 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  v112[204] = v804;
  v112[205] = &off_283AEB968;
  v112[201] = v805;
  *(v112 - 17) = &type metadata for AchievementNotificationServiceFactory;
  *(v112 - 16) = &off_283AE9C30;
  v815 = swift_allocObject();
  *(v112 - 20) = v815;
  v816 = v917;
  sub_2278040AC((v917 + 22), (v815 + 2));
  sub_2278040AC((v816 + 38), (v815 + 7));
  sub_2278040AC((v112 + 134), (v815 + 13));
  sub_2278040AC((v112 + 180), (v815 + 18));
  v815[12] = PickupObserver;
  v817 = v896;
  v815[23] = v899;
  v815[24] = v817;
  sub_2278040AC((v112 - 20), &v918);
  v818 = v919;
  v819 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v915 = &v874;
  v820 = *(v818[-1].Description + 8);
  MEMORY[0x28223BE20](v819);
  v822 = &v874 - v821;
  (*(v823 + 16))(&v874 - v821);
  v1012 = &type metadata for AchievementNotificationServiceFactory;
  v1013 = &off_283AE9C30;
  v824 = swift_allocObject();
  *&v1011 = v824;
  v825 = *(v822 + 9);
  *(v824 + 144) = *(v822 + 8);
  *(v824 + 160) = v825;
  *(v824 + 176) = *(v822 + 10);
  *(v824 + 192) = *(v822 + 22);
  v826 = *(v822 + 5);
  *(v824 + 80) = *(v822 + 4);
  *(v824 + 96) = v826;
  v827 = *(v822 + 7);
  *(v824 + 112) = *(v822 + 6);
  *(v824 + 128) = v827;
  v828 = *(v822 + 1);
  *(v824 + 16) = *v822;
  *(v824 + 32) = v828;
  v829 = *(v822 + 3);
  *(v824 + 48) = *(v822 + 2);
  *(v824 + 64) = v829;
  v1009 = v781;
  v1010 = MEMORY[0x277D09898];
  *&v1008 = v814;
  v830 = type metadata accessor for AchievementNotificationListener();
  v831 = swift_allocObject();
  v832 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, &type metadata for AchievementNotificationServiceFactory);
  v833 = *(unk_283AE9BF8 + 64);
  MEMORY[0x28223BE20](v832);
  v835 = &v874 - v834;
  (*(v836 + 16))(&v874 - v834);
  v1006 = &type metadata for AchievementNotificationServiceFactory;
  v1007 = &off_283AE9C30;
  v837 = swift_allocObject();
  *&v1005 = v837;
  v838 = *(v835 + 9);
  *(v837 + 144) = *(v835 + 8);
  *(v837 + 160) = v838;
  *(v837 + 176) = *(v835 + 10);
  *(v837 + 192) = *(v835 + 22);
  v839 = *(v835 + 5);
  *(v837 + 80) = *(v835 + 4);
  *(v837 + 96) = v839;
  v840 = *(v835 + 7);
  *(v837 + 112) = *(v835 + 6);
  *(v837 + 128) = v840;
  v841 = *(v835 + 1);
  *(v837 + 16) = *v835;
  *(v837 + 32) = v841;
  v842 = *(v835 + 3);
  *(v837 + 48) = *(v835 + 2);
  *(v837 + 64) = v842;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v1005, v831 + 112);
  sub_2277F9D0C(&v1008, v831 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  *(v112 - 22) = v830;
  *(v112 - 21) = &off_283AEA498;
  *(v112 - 25) = v831;
  sub_2278040AC((v112 + 32), &v918);
  sub_2278040AC((v917 + 74), &v1011);
  v843 = v919;
  v844 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v845 = *(v843[-1].Description + 8);
  MEMORY[0x28223BE20](v844);
  v847 = (&v874 - v846);
  (*(v848 + 16))(&v874 - v846);
  v849 = v1012;
  v850 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, v1012);
  v851 = *(v849[-1].Description + 8);
  MEMORY[0x28223BE20](v850);
  v853 = (&v874 - v852);
  (*(v854 + 16))(&v874 - v852);
  v855 = sub_2278C38A0(*v847, *v853);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  v856 = type metadata accessor for AdminSystem();
  *(v112 - 7) = v856;
  *(v112 - 6) = &off_283AE9C68;
  *(v112 - 10) = v855;
  sub_2278040AC((v112 - 10), &v918);
  v857 = v919;
  v858 = __swift_mutable_project_boxed_opaque_existential_1(&v918, v919);
  v859 = *(v857[-1].Description + 8);
  MEMORY[0x28223BE20](v858);
  v861 = (&v874 - v860);
  (*(v862 + 16))(&v874 - v860);
  v863 = *v861;
  v1012 = v856;
  v1013 = &off_283AE9C68;
  *&v1011 = v863;
  v1009 = v909;
  v1010 = MEMORY[0x277D09898];
  *&v1008 = v916;
  v864 = type metadata accessor for AdminListener();
  v865 = swift_allocObject();
  v866 = __swift_mutable_project_boxed_opaque_existential_1(&v1011, v856);
  v867 = *(v856[-1].Description + 8);
  MEMORY[0x28223BE20](v866);
  v869 = (&v874 - v868);
  (*(v870 + 16))(&v874 - v868);
  v871 = *v869;
  v1006 = v856;
  v1007 = &off_283AE9C68;
  *&v1005 = v871;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v1005, v865 + 112);
  sub_2277F9D0C(&v1008, v865 + 152);
  __swift_destroy_boxed_opaque_existential_0(&v1011);
  __swift_destroy_boxed_opaque_existential_0(&v918);
  *(v112 - 12) = v864;
  *(v112 - 11) = &off_283AE9968;
  *(v112 - 15) = v865;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6700, &qword_2278CEBC8);
  v872 = swift_allocObject();
  *(v872 + 16) = xmmword_2278C9F50;
  *(v872 + 56) = v898;
  *(v872 + 64) = &off_283AED120;
  *(v872 + 32) = v901;
  *(v872 + 96) = v907;
  *(v872 + 104) = &off_283AEC8D0;
  *(v872 + 72) = v897;
  v112[127] = &type metadata for NotificationConfigurationCoordinator;
  v112[128] = &off_283AEDC90;
  v112[124] = v900;
  v112[125] = v872;
  return sub_2278C4124(&v921);
}

uint64_t Daemon.activate()()
{
  v1[14] = v0;
  v2 = sub_2278C75A0();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278BFBB4, 0, 0);
}

uint64_t sub_2278BFBB4()
{
  v1 = *(*(v0 + 112) + 1904);
  *(v0 + 168) = v1;
  return MEMORY[0x2822009F8](sub_2278BFBD8, v1, 0);
}

uint64_t sub_2278BFBD8()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];
  sub_2278C73A0();
  sub_2278C7580();
  v4 = *(v3 + 8);
  v0[22] = v4;
  v0[23] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_2278BFCD8;
  v6 = v0[21];

  return sub_22786364C();
}

uint64_t sub_2278BFCD8()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278BFDD4, 0, 0);
}

uint64_t sub_2278BFDD4()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 384), *(*(v0 + 112) + 408));
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_2278BFE74;

  return sub_227861A10();
}

uint64_t sub_2278BFE74()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278BFF70, 0, 0);
}

uint64_t sub_2278BFF70()
{
  v1 = *(*(v0 + 112) + 424);
  *(v0 + 208) = v1;
  return MEMORY[0x2822009F8](sub_2278BFF94, v1, 0);
}

uint64_t sub_2278BFF94()
{
  v1 = v0[26];
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v4 = swift_allocObject();
  v0[27] = v4;
  swift_weakInit();
  v5 = *(MEMORY[0x277D09A60] + 4);
  v6 = swift_task_alloc();
  v0[28] = v6;
  v7 = sub_2278C6F70();
  *v6 = v0;
  v6[1] = sub_2278C00B4;
  v8 = MEMORY[0x277D09A00];

  return MEMORY[0x2821603E0](2, &unk_2278CEBD8, v4, v2, v7, v3, v8);
}

uint64_t sub_2278C00B4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2278C01CC, 0, 0);
}

uint64_t sub_2278C01CC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1088), *(*(v0 + 112) + 1112));
  v1 = off_283AEA250;
  v2 = type metadata accessor for MoveModeListener();
  v6 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_2278C0310;

  return (v6)(v2, &off_283AEA248);
}

uint64_t sub_2278C0310()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C040C, 0, 0);
}

uint64_t sub_2278C040C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v1 = off_283AEA4A0;
  v2 = type metadata accessor for AchievementNotificationListener();
  v6 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  *v4 = v0;
  v4[1] = sub_2278C0550;

  return (v6)(v2, &off_283AEA498);
}

uint64_t sub_2278C0550()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C064C, 0, 0);
}

uint64_t sub_2278C064C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1248), *(*(v0 + 112) + 1272));
  v1 = off_283AECF68;
  v2 = type metadata accessor for NotificationRequestListener();
  v6 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *v4 = v0;
  v4[1] = sub_2278C0790;

  return (v6)(v2, &off_283AECF60);
}

uint64_t sub_2278C0790()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C088C, 0, 0);
}

uint64_t sub_2278C088C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 808), *(*(v0 + 112) + 832));
  v1 = off_283AEB6A8;
  v2 = type metadata accessor for GoalCompletionListener();
  v6 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_2278C09D0;

  return (v6)(v2, &off_283AEB6A0);
}

uint64_t sub_2278C09D0()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C0ACC, 0, 0);
}

uint64_t sub_2278C0ACC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 928), *(*(v0 + 112) + 952));
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  *v2 = v0;
  v2[1] = sub_2278C0B6C;

  return sub_2278568BC();
}

uint64_t sub_2278C0B6C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C0C68, 0, 0);
}

uint64_t sub_2278C0C68()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1824), *(*(v0 + 112) + 1848));
  v1 = off_283AEB970;
  v2 = type metadata accessor for WalkSuggestionListener();
  v6 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_2278C0DAC;

  return (v6)(v2, &off_283AEB968);
}

uint64_t sub_2278C0DAC()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C0EA8, 0, 0);
}

uint64_t sub_2278C0EA8()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1008), *(*(v0 + 112) + 1032));
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  v2[1] = sub_2278C0F48;

  return sub_227858E84();
}

uint64_t sub_2278C0F48()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C1044, 0, 0);
}

uint64_t sub_2278C1044()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 512), *(*(v0 + 112) + 536));
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_2278C10E4;

  return sub_22780F210();
}

uint64_t sub_2278C10E4()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C11E0, 0, 0);
}

uint64_t sub_2278C11E0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1776), *(*(v0 + 112) + 1800));
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_2278C1280;

  return sub_227853530();
}

uint64_t sub_2278C1280()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C137C, 0, 0);
}

uint64_t sub_2278C137C()
{
  v1 = *(*(v0 + 112) + 672);
  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = sub_2278C1410;

  return sub_22785F5BC();
}

uint64_t sub_2278C1410()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C150C, 0, 0);
}

uint64_t sub_2278C150C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1616), *(*(v0 + 112) + 1640));
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_2278C15AC;

  return sub_227826000();
}

uint64_t sub_2278C15AC()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C16A8, 0, 0);
}

uint64_t sub_2278C16A8()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1488), *(*(v0 + 112) + 1512));
  v2 = swift_task_alloc();
  *(v0 + 320) = v2;
  *v2 = v0;
  v2[1] = sub_2278C1748;

  return sub_2278A8678();
}

uint64_t sub_2278C1748()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C1844, 0, 0);
}

uint64_t sub_2278C1844()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1448), *(*(v0 + 112) + 1472));
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_2278C18E4;

  return sub_227813DE4();
}

uint64_t sub_2278C18E4()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C19E0, 0, 0);
}

uint64_t sub_2278C19E0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 96), *(*(v0 + 112) + 120));
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_2278C1A80;

  return sub_227803294();
}

uint64_t sub_2278C1A80()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C1B7C, 0, 0);
}

uint64_t sub_2278C1B7C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1048), *(*(v0 + 112) + 1072));
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_2278C1C1C;

  return sub_2277FFBB4();
}

uint64_t sub_2278C1C1C()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C1D18, 0, 0);
}

uint64_t sub_2278C1D18()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1208), *(*(v0 + 112) + 1232));
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_2278C1DC0;

  return sub_2278C5138(v3, v2);
}

uint64_t sub_2278C1DC0()
{
  v1 = *(*v0 + 352);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C1EBC, 0, 0);
}

uint64_t sub_2278C1EBC()
{
  v1 = *(v0 + 112);
  v2 = *__swift_project_boxed_opaque_existential_1(v1 + 191, v1[194]);
  sub_22786CFE0();
  __swift_project_boxed_opaque_existential_1(v1 + 38, v1[41]);
  sub_22780445C();
  v3 = *__swift_project_boxed_opaque_existential_1(v1 + 166, v1[169]);
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v0;
  v4[1] = sub_2278C1F84;

  return sub_227822110();
}

uint64_t sub_2278C1F84()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_2278C2138;
  }

  else
  {
    v3 = sub_2278C2098;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2278C2098()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 592), *(*(v0 + 112) + 616));
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  *v2 = v0;
  v2[1] = sub_2278C2344;

  return sub_22783DE6C();
}

uint64_t sub_2278C2138()
{
  v25 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 152);
  sub_2278C73A0();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 368);
    v22 = *(v0 + 176);
    v23 = *(v0 + 184);
    v7 = *(v0 + 152);
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 64);
    v12 = MEMORY[0x22AA9DD80](*(v0 + 72), *(v0 + 80));
    v14 = sub_2278021B4(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error activating notification request scheduler: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9E860](v10, -1, -1);
    MEMORY[0x22AA9E860](v9, -1, -1);

    v22(v7, v8);
  }

  else
  {
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 152);
    v18 = *(v0 + 120);

    v16(v17, v18);
  }

  v19 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 592), *(*(v0 + 112) + 616));
  v20 = swift_task_alloc();
  *(v0 + 376) = v20;
  *v20 = v0;
  v20[1] = sub_2278C2344;

  return sub_22783DE6C();
}

uint64_t sub_2278C2344()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_2278C2678;
  }

  else
  {
    v3 = sub_2278C2458;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2278C2458()
{
  v24 = v0;
  v1 = v0[48];
  v2 = *(v0[14] + 1744);
  sub_2278007E4();
  if (v1)
  {
    v3 = v0[17];
    sub_2278C73A0();
    v4 = v1;
    v5 = sub_2278C7590();
    v6 = sub_2278C7950();

    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[17];
    v11 = v0[15];
    if (v7)
    {
      v22 = v0[22];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = v0[2];
      v15 = MEMORY[0x22AA9DD80](v0[3], v0[4]);
      v17 = sub_2278021B4(v15, v16, &v23);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2277F7000, v5, v6, "Error activating sleep observer: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AA9E860](v13, -1, -1);
      MEMORY[0x22AA9E860](v12, -1, -1);

      v22(v10, v11);
    }

    else
    {

      v9(v10, v11);
    }
  }

  v18 = v0[14];
  [*(v18 + 1736) activate];
  v19 = *__swift_project_boxed_opaque_existential_1((v18 + 760), *(v18 + 784));
  v20 = swift_task_alloc();
  v0[49] = v20;
  *v20 = v0;
  v20[1] = sub_2278C29E4;

  return sub_2278A086C();
}

uint64_t sub_2278C2678()
{
  v27 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 144);
  sub_2278C73A0();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 384);
    v24 = *(v0 + 176);
    v25 = *(v0 + 184);
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x22AA9DD80](*(v0 + 48), *(v0 + 56));
    v14 = sub_2278021B4(v12, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error activating first pickup observer: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9E860](v10, -1, -1);
    MEMORY[0x22AA9E860](v9, -1, -1);

    v24(v7, v8);
  }

  else
  {
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 144);
    v18 = *(v0 + 120);

    v16(v17, v18);
  }

  v19 = *(*(v0 + 112) + 1744);
  sub_2278007E4();
  v20 = *(v0 + 112);
  [*(v20 + 1736) activate];
  v21 = *__swift_project_boxed_opaque_existential_1((v20 + 760), *(v20 + 784));
  v22 = swift_task_alloc();
  *(v0 + 392) = v22;
  *v22 = v0;
  v22[1] = sub_2278C29E4;

  return sub_2278A086C();
}

uint64_t sub_2278C29E4()
{
  v1 = *(*v0 + 392);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C2AE0, 0, 0);
}

uint64_t sub_2278C2AE0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 112) + 1576), *(*(v0 + 112) + 1600));
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v2[1] = sub_2278C2B80;

  return sub_22787E42C();
}

uint64_t sub_2278C2B80()
{
  v1 = *(*v0 + 400);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C2C7C, 0, 0);
}

uint64_t sub_2278C2C7C()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v10 = v5[239];
  v11 = v5[240];
  v6 = v10;

  XPCStreamHandler.activate()();

  v7 = v5[241];
  sub_2278C6DD0();

  v8 = v0[1];

  return v8();
}

id sub_2278C2D50(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v21) = a3;
  v5 = type metadata accessor for DateProvider();
  v29 = v5;
  v30 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_2278C4690(a1, boxed_opaque_existential_1, type metadata accessor for DateProvider);
  v26 = &type metadata for DuetObserver;
  v27 = &off_283AEA5D0;
  v7 = type metadata accessor for SleepObserver();
  v8 = objc_allocWithZone(v7);
  v9 = v29;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v24[3] = v5;
  v24[4] = &off_283AE99D8;
  v15 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_2278C4690(v13, v15, type metadata accessor for DateProvider);
  v23[3] = &type metadata for DuetObserver;
  v23[4] = &off_283AEA5D0;
  sub_2278040AC(v24, &v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_dateProvider]);
  sub_2278040AC(v23, &v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_duetObserver]);
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *&v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_lock] = v16;
  *&v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_notificationCenter] = a2;
  v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_platform] = BYTE4(v21);
  v18 = &v8[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_state];
  *v18 = 0;
  v18[8] = -1;
  v22.receiver = v8;
  v22.super_class = v7;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v19;
}

void *sub_2278C2FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DateProvider();
  v35 = v8;
  v36 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  sub_2278C4690(a1, boxed_opaque_existential_1, type metadata accessor for DateProvider);
  PickupObserver = type metadata accessor for FirstPickupObserver(0);
  v33[3] = PickupObserver;
  v33[4] = &off_283AEB078;
  v33[0] = a2;
  type metadata accessor for UserDayProvider();
  v11 = swift_allocObject();
  v12 = v35;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v33, PickupObserver);
  v19 = *(*(PickupObserver - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v31 = v8;
  v32 = &off_283AE99D8;
  v24 = __swift_allocate_boxed_opaque_existential_1(&v30);
  sub_2278C4690(v16, v24, type metadata accessor for DateProvider);
  v28 = PickupObserver;
  v29 = &off_283AEB078;
  *&v27 = v23;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v30, (v11 + 14));
  sub_2277F9D0C(&v27, (v11 + 19));
  v11[24] = a4;
  v11[25] = a3;
  v11[26] = 0;
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v11;
}

uint64_t sub_2278C320C(uint64_t a1, uint64_t a2)
{
  v34[3] = &type metadata for DuetObserver;
  v34[4] = &off_283AEA5D0;
  v33[3] = &type metadata for NotificationRequestPublisher;
  v33[4] = &off_283AEB7B8;
  v33[0] = a1;
  v32[3] = &type metadata for LockStateProvider;
  v32[4] = &off_283AE99C0;
  v3 = type metadata accessor for NotificationRequestStore();
  v31[3] = v3;
  v31[4] = &off_283AED820;
  v31[0] = a2;
  type metadata accessor for NotificationRequestScheduler();
  v4 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v34, &type metadata for DuetObserver);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v33, &type metadata for NotificationRequestPublisher);
  v6 = *(qword_283AEB798 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  __swift_mutable_project_boxed_opaque_existential_1(v32, &type metadata for LockStateProvider);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v31, v3);
  v11 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v8;
  v16 = *v13;
  v29 = &type metadata for DuetObserver;
  v30 = &off_283AEA5D0;
  v26 = &type metadata for NotificationRequestPublisher;
  v27 = &off_283AEB7B8;
  v24 = &off_283AE99C0;
  *&v25 = v15;
  v23 = &type metadata for LockStateProvider;
  v20 = v3;
  v21 = &off_283AED820;
  *&v19 = v16;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v28, v4 + 112);
  sub_2277F9D0C(&v25, v4 + 152);
  sub_2277F9D0C(&v19, v4 + 192);
  sub_2277F9D0C(&v22, v4 + 232);
  *(v4 + 272) = 0;
  *(v4 + 280) = -1;
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v4;
}

uint64_t sub_2278C34A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DateProvider();
  v61 = v8;
  v62 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  sub_2278C4690(a1, boxed_opaque_existential_1, type metadata accessor for DateProvider);
  v10 = type metadata accessor for PauseRingsSystem();
  v59[3] = v10;
  v59[4] = &off_283AEC8E0;
  v59[0] = a2;
  v57 = &type metadata for PauseRingsServiceFactory;
  v58 = &off_283AEAF90;
  v11 = swift_allocObject();
  v56[0] = v11;
  v12 = *(a3 + 144);
  *(v11 + 144) = *(a3 + 128);
  *(v11 + 160) = v12;
  *(v11 + 176) = *(a3 + 160);
  v13 = *(a3 + 80);
  *(v11 + 80) = *(a3 + 64);
  *(v11 + 96) = v13;
  v14 = *(a3 + 112);
  *(v11 + 112) = *(a3 + 96);
  *(v11 + 128) = v14;
  v15 = *(a3 + 16);
  *(v11 + 16) = *a3;
  *(v11 + 32) = v15;
  v16 = *(a3 + 48);
  *(v11 + 48) = *(a3 + 32);
  *(v11 + 64) = v16;
  v54 = sub_2278C6DF0();
  v55 = MEMORY[0x277D09898];
  *&v53 = a4;
  type metadata accessor for PauseRingsListener();
  v17 = swift_allocObject();
  v18 = v61;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v59, v10);
  v25 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v57;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  v31 = *(v29[-1].Description + 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v44 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  v35 = *v27;
  v51 = v8;
  v52 = &off_283AE99D8;
  v36 = __swift_allocate_boxed_opaque_existential_1(&v50);
  sub_2278C4690(v22, v36, type metadata accessor for DateProvider);
  v48 = v10;
  v49 = &off_283AEC8E0;
  *&v47 = v35;
  v45 = &type metadata for PauseRingsServiceFactory;
  v46 = &off_283AEAF90;
  v37 = swift_allocObject();
  *&v44 = v37;
  v38 = *(v33 + 9);
  *(v37 + 144) = *(v33 + 8);
  *(v37 + 160) = v38;
  *(v37 + 176) = *(v33 + 20);
  v39 = *(v33 + 5);
  *(v37 + 80) = *(v33 + 4);
  *(v37 + 96) = v39;
  v40 = *(v33 + 7);
  *(v37 + 112) = *(v33 + 6);
  *(v37 + 128) = v40;
  v41 = *(v33 + 1);
  *(v37 + 16) = *v33;
  *(v37 + 32) = v41;
  v42 = *(v33 + 3);
  *(v37 + 48) = *(v33 + 2);
  *(v37 + 64) = v42;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v50, v17 + 112);
  sub_2277F9D0C(&v47, v17 + 152);
  sub_2277F9D0C(&v44, v17 + 192);
  sub_2277F9D0C(&v53, v17 + 232);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v60);
  return v17;
}

uint64_t sub_2278C38A0(uint64_t a1, uint64_t a2)
{
  v25[3] = &type metadata for FirstGlanceStore;
  v25[4] = &off_283AEC780;
  v25[0] = a1;
  PickupObserver = type metadata accessor for FirstPickupObserver(0);
  v24[3] = PickupObserver;
  v24[4] = &off_283AEB078;
  v24[0] = a2;
  type metadata accessor for AdminSystem();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for FirstGlanceStore);
  v6 = *(qword_283AEC760 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v24, PickupObserver);
  v11 = *(*(PickupObserver - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v8;
  v16 = *v13;
  v22 = &type metadata for FirstGlanceStore;
  v23 = &off_283AEC780;
  v20 = &off_283AEB078;
  *&v21 = v15;
  v19 = PickupObserver;
  *&v18 = v16;
  swift_defaultActor_initialize();
  sub_2277F9D0C(&v21, v4 + 112);
  sub_2277F9D0C(&v18, v4 + 152);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v4;
}

unint64_t sub_2278C3AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60E0, &qword_2278CE840);
    v3 = sub_2278C7D50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2278AE31C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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

unint64_t sub_2278C3BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6660, &qword_2278CE820);
    v3 = sub_2278C7D50();
    v4 = a1 + 32;

    while (1)
    {
      sub_227850448(v4, v13, &qword_27D7D6150, &unk_2278CAAE0);
      result = sub_2278AE394(v13);
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
      result = sub_2278A7620(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2278C3CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6678, qword_2278CE848);
    v3 = sub_2278C7D50();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2278AE31C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2278C3DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6720, qword_2278CEE20);
    v3 = sub_2278C7D50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2278AE3D8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2278C3EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6718, &unk_2278CEE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6668, &qword_2278CE828);
    v8 = sub_2278C7D50();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_227850448(v10, v6, &qword_27D7D6718, &unk_2278CEE10);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2278AE31C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for NotificationRequest();
      result = sub_2278C4690(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for NotificationRequest);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

uint64_t sub_2278C4178(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2278003CC;

  return sub_22781CCB0(a1, v1);
}

uint64_t sub_2278C421C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1936))
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

uint64_t sub_2278C4264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1928) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1936) = 1;
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

    *(result + 1936) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2278C44B4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6710, &qword_2278CEE08);
  v3 = sub_2278C7D50();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_2278AE46C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
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
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_2278AE46C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2278C45B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6708, &qword_2278CEE00);
    v3 = sub_2278C7D50();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2278AE46C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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

uint64_t sub_2278C4690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2278C46F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x6169726F67657267 && a2 == 0xE90000000000006ELL;
  if (v5 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9830];
LABEL_7:
    v8 = *v7;
    v9 = sub_2278C6870();
    v16 = *(v9 - 8);
    (*(v16 + 104))(a3, v8, v9);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
    goto LABEL_8;
  }

  if (a1 == 0x7473696864647562 && a2 == 0xE800000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9820];
    goto LABEL_7;
  }

  if (a1 == 0x6573656E696863 && a2 == 0xE700000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9800];
    goto LABEL_7;
  }

  if (a1 == 0x636974706F63 && a2 == 0xE600000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97E8];
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000013 && 0x80000002278D33B0 == a2 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97E0];
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000011 && 0x80000002278D33D0 == a2 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97D8];
    goto LABEL_7;
  }

  if (a1 == 0x776572626568 && a2 == 0xE600000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97F0];
    goto LABEL_7;
  }

  if (a1 == 0x313036386F7369 && a2 == 0xE700000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9810];
    goto LABEL_7;
  }

  if (a1 == 0x6E6169646E69 && a2 == 0xE600000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97F8];
    goto LABEL_7;
  }

  if (a1 == 0x63696D616C7369 && a2 == 0xE700000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9808];
    goto LABEL_7;
  }

  if (a1 == 0x4363696D616C7369 && a2 == 0xEC0000006C697669 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97B8];
    goto LABEL_7;
  }

  if (a1 == 0x6573656E6170616ALL && a2 == 0xE800000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9828];
    goto LABEL_7;
  }

  if (a1 == 0x6E616973726570 && a2 == 0xE700000000000000 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC9818];
    goto LABEL_7;
  }

  if (a1 == 0x63696C6275706572 && a2 == 0xEF616E696843664FLL || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97C8];
    goto LABEL_7;
  }

  if (a1 == 0x5463696D616C7369 && a2 == 0xEE0072616C756261 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97C0];
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x80000002278D33F0 == a2 || (sub_2278C7DC0() & 1) != 0)
  {
    v7 = MEMORY[0x277CC97D0];
    goto LABEL_7;
  }

  v15 = sub_2278C6870();
  v10 = *(*(v15 - 8) + 56);
  v13 = v15;
  v11 = a3;
  v12 = 1;
LABEL_8:

  return v10(v11, v12, 1, v13);
}

uint64_t sub_2278C4CA8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

void sub_2278C4DD0(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2278C7B80();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_2278B4884(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_2278C7B30();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_2278C7B00();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_2278C59C4(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 identifier];
        v15 = sub_2278C7700();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2278B4884((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_2278C7B50())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6730, qword_2278CEF20);
          v7 = sub_2278C78F0();
          sub_2278C7BC0();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_2278B4F84(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_2278B4F84(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_2278B4F84(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_2278C5138(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2278C5158, 0, 0);
}

uint64_t sub_2278C5158()
{
  v1 = v0;
  v2 = v0 + 10;
  v3 = v1[20];
  v4 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 32;
    do
    {
      sub_2278040AC(v6, v2);
      v7 = v1[13];
      v8 = v1[14];
      __swift_project_boxed_opaque_existential_1(v2, v7);
      v9 = (*(v8 + 8))(v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v2);
      sub_2278056E4(v9);
      v6 += 40;
      --v5;
    }

    while (v5);
    v4 = v15;
  }

  v10 = v1[19];
  v11 = sub_2278A4CF8(v4);
  v1[21] = v11;

  sub_2278C4DD0(v11);
  v1[22] = v12;
  v1[23] = 0;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_2278C532C;
  v13 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6728, &unk_2278CEF10);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2278C54E8;
  v1[13] = &block_descriptor_24;
  v1[14] = v13;
  [v10 getNotificationCategoriesWithCompletionHandler_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_2278C532C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278C540C, 0, 0);
}

uint64_t sub_2278C540C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[19];
  v4 = sub_2278C60E0(v0[18], v0[22]);

  sub_2278C5570(v2, v4);
  sub_22780670C();
  sub_2278C6368();
  v5 = sub_2278C78C0();

  [v3 setNotificationCategories_];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2278C54E8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_22780670C();
  sub_2278C6368();
  **(*(v1 + 64) + 40) = sub_2278C78D0();

  return MEMORY[0x282200948](v1);
}

void sub_2278C5570(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2278C7B40();
    sub_22780670C();
    sub_2278C6368();
    sub_2278C7900();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_227806704();
      return;
    }

    while (1)
    {
      sub_2278A3750(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2278C7BB0())
      {
        sub_22780670C();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_2278C5734(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2278C5BF0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_2278C57D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D65A8, &unk_2278CE228);
  result = sub_2278C7C30();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2278C7A80();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2278C59C4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x22AA9DB10](a1, a2, v7);
      sub_22780670C();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22780670C();
    if (sub_2278C7B60() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2278C7B70();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_2278C7A80();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_2278C7A90();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
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

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

unint64_t *sub_2278C5BF0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = 0;
  v29 = a4;
  v26 = a2;
  v27 = result;
  v6 = 0;
  v30 = a3;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v33 = v5;
    v12 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(v30 + 48) + 8 * v15);
    v17 = [v16 identifier];
    v18 = sub_2278C7700();
    v20 = v19;

    v32[0] = v18;
    v32[1] = v20;
    MEMORY[0x28223BE20](v21);
    v25[2] = v32;
    v22 = v33;
    LOBYTE(v17) = sub_227886AFC(sub_2278C63E0, v25, v29);
    v5 = v22;

    v10 = v31;
    if ((v17 & 1) == 0)
    {
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_15:
        v24 = v30;

        return sub_2278C57D0(v27, v26, v28, v24);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v33 = v5;
      v12 = __clz(__rbit64(v14));
      v31 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2278C5DDC(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v38[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v31 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v31;
  v35 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30[1] = v30;
    MEMORY[0x28223BE20](v8);
    v32 = v30 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v7);
    v33 = 0;
    v34 = v4;
    v7 = 0;
    v9 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v4 = (v10 + 63) >> 6;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
      v37 = v3;
LABEL_12:
      v16 = v13 | (v7 << 6);
      v17 = *(*(v34 + 48) + 8 * v16);
      v18 = [v17 identifier];
      v19 = sub_2278C7700();
      v21 = v20;

      v38[0] = v19;
      v38[1] = v21;
      MEMORY[0x28223BE20](v22);
      v30[-2] = v38;
      v23 = v37;
      LOBYTE(v18) = sub_227886AFC(sub_2278C63E0, &v30[-4], v35);
      v3 = v23;

      v12 = v36;
      if ((v18 & 1) == 0)
      {
        *&v32[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_2278C57D0(v32, v31, v33, v34);
          goto LABEL_17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v4)
      {
        goto LABEL_16;
      }

      v15 = *(v9 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
        v37 = v3;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  v29 = v35;

  v25 = sub_2278C5734(v28, v31, v4, v29);

  MEMORY[0x22AA9E860](v28, -1, -1);
LABEL_17:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t sub_2278C60E0(int64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2278C5DDC(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v28 = MEMORY[0x277D84FA0];

  sub_2278C7B40();
  v4 = sub_2278C7BB0();
  if (v4)
  {
    v5 = v4;
    sub_22780670C();
    v6 = v5;
    do
    {
      v26[0] = v6;
      swift_dynamicCast();
      v7 = [v27 identifier];
      v8 = sub_2278C7700();
      v10 = v9;

      v26[0] = v8;
      v26[1] = v10;
      MEMORY[0x28223BE20](v11);
      v25[2] = v26;
      LOBYTE(v7) = sub_227886AFC(sub_2278C63C0, v25, a2);

      v12 = v27;
      if (v7)
      {
      }

      else
      {
        v13 = *(v3 + 16);
        if (*(v3 + 24) <= v13)
        {
          sub_2278A3BE8(v13 + 1);
        }

        v3 = v28;
        v14 = *(v28 + 40);
        result = sub_2278C7A80();
        v16 = v3 + 56;
        v17 = -1 << *(v3 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v3 + 56 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v3 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v22 && (v21 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = *(v16 + 8 * v19);
          }

          while (v24 == -1);
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        }

        *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v3 + 48) + 8 * v20) = v12;
        ++*(v3 + 16);
      }

      v6 = sub_2278C7BB0();
    }

    while (v6);
  }

  return v3;
}

unint64_t sub_2278C6368()
{
  result = qword_2813B9AE0;
  if (!qword_2813B9AE0)
  {
    sub_22780670C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B9AE0);
  }

  return result;
}

unint64_t sub_2278C6410()
{
  result = qword_27D7D6738;
  if (!qword_27D7D6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6738);
  }

  return result;
}