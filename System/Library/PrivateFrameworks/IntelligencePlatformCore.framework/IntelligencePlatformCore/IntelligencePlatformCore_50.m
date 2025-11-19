uint64_t sub_1C48502BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE38, &qword_1C4F32280);
  result = sub_1C4F021D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1C4F02AF8();
        MEMORY[0x1C69417F0](v16);
        result = sub_1C4F02B68();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C48504D8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEC0, &qword_1C4F32308);
  v10 = sub_1C4F021D8();
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1C48514DC(&qword_1EC0B9150, &qword_1EC0B8A30);
        result = sub_1C4F00FD8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C48507F4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C456902C(&qword_1EC0B8A20, &unk_1C4F0DE40);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEA0, &qword_1C4F322E8);
  v10 = sub_1C4F021D8();
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1C48514DC(&qword_1EC0B9140, &qword_1EC0B8A20);
        result = sub_1C4F00FD8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C4850B10(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C456902C(&qword_1EC0B8A28, &qword_1C4F322F0);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEB0, &unk_1C4F322F8);
  v10 = sub_1C4F021D8();
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1C48514DC(&qword_1EC0B9148, &qword_1EC0B8A28);
        result = sub_1C4F00FD8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C4850E2C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C456902C(&qword_1EC0B8A38, &qword_1C4F32310);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDED0, &qword_1C4F32318);
  v10 = sub_1C4F021D8();
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1C48514DC(&qword_1EC0B9158, &qword_1EC0B8A38);
        result = sub_1C4F00FD8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C4851148(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C4F02B68();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  sub_1C44410A0();
  sub_1C440DD98();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  v12 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_6:
      sub_1C43FCFAC();
      v15 = *(*(a2 + 48) + (v14 | (v12 << 6)));
      sub_1C4F02AF8();
      sub_1C440CC68();
      switch(v15)
      {
        case 1:
          sub_1C4426BAC();
          break;
        case 2:
          sub_1C44160DC();
          sub_1C4408B0C();
          break;
        case 3:
          sub_1C444172C();
          break;
        case 4:
          sub_1C44754A8();
          sub_1C4426BAC();
          break;
        case 5:
          sub_1C44995B0();
          break;
        case 6:
          sub_1C441B3E4();
          break;
        case 7:
          sub_1C440E008();
          break;
        case 8:
          sub_1C44160DC();
          sub_1C4423BB4();
          break;
        case 9:
          sub_1C4430660();
          break;
        case 10:
          sub_1C44C0464();
          break;
        case 11:
          sub_1C4422AFC();
          sub_1C446BC58();
          break;
        case 12:
          sub_1C44145CC();
          break;
        default:
          break;
      }

      sub_1C4F01298();

      v11 ^= sub_1C4F02B68();
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1C69417F0](0);
    }

    ++v12;
    if (*(a2 + 56 + 8 * v13))
    {
      v12 = v13;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4851370(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C4F02B68();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  sub_1C44410A0();
  sub_1C440DD98();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  for (i = 0; v7; v11 ^= result)
  {
    v13 = i;
LABEL_7:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = *(*(a2 + 48) + (v14 | (v13 << 6)));
    sub_1C4F02AF8();
    sub_1C4F01298();

    result = sub_1C4F02B68();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1C69417F0](v11);
    }

    v7 = *(a2 + 56 + 8 * v13);
    ++i;
    if (v7)
    {
      i = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C48514DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_1C447E474(0, a2);
    sub_1C4572308(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C48515D0()
{
  result = qword_1EC0BDF00;
  if (!qword_1EC0BDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDF00);
  }

  return result;
}

unint64_t sub_1C4851624()
{
  result = qword_1EC0BDF08;
  if (!qword_1EC0BDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDF08);
  }

  return result;
}

unint64_t sub_1C4851678()
{
  result = qword_1EC0BDF10;
  if (!qword_1EC0BDF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDF10);
  }

  return result;
}

unint64_t sub_1C48516CC()
{
  result = qword_1EC0BDF18;
  if (!qword_1EC0BDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDF18);
  }

  return result;
}

unint64_t sub_1C4851720()
{
  result = qword_1EDDFF910;
  if (!qword_1EDDFF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF910);
  }

  return result;
}

uint64_t sub_1C48517A4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1C447E474(0, a2);
    sub_1C4572308(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4851854()
{
  result = qword_1EDDFCEF0;
  if (!qword_1EDDFCEF0)
  {
    sub_1C4572308(qword_1EC0C0740, &qword_1C4F0D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEF0);
  }

  return result;
}

unint64_t sub_1C48518D0()
{
  result = qword_1EC0BDF90;
  if (!qword_1EC0BDF90)
  {
    sub_1C4572308(&unk_1EC0C2EB0, &qword_1C4F32390);
    sub_1C4403D94(&qword_1EC0BDF98, type metadata accessor for ExtractedMatch);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDF90);
  }

  return result;
}

uint64_t sub_1C4851984()
{
  v2 = sub_1C43FECE0();
  v4 = v3(v2);
  sub_1C43FBCE0(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C48519DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4851AEC()
{

  return sub_1C456902C(v1, v0);
}

void sub_1C4851B3C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

__n128 *sub_1C4851BAC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 - 144) = 0;
  *(v2 - 136) = 0xE000000000000000;
  return result;
}

uint64_t sub_1C4851BE8()
{
  v2 = *(*v0 + 40);

  return sub_1C4F02AF8();
}

uint64_t sub_1C4851C08()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4851C20()
{

  return sub_1C4F021D8();
}

uint64_t sub_1C4851C38()
{

  return sub_1C4F02938();
}

uint64_t sub_1C4851C50()
{
  v2 = **(v0 - 144);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C4851C68()
{
  sub_1C456902C(&qword_1EC0BDFC0, &unk_1C4F32430);
  swift_allocObject();
  result = sub_1C4CE5108();
  qword_1EDE2E048 = result;
  return result;
}

unint64_t sub_1C4851CB4()
{
  sub_1C4F02248();

  v0 = sub_1C4EF98E8();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000011;
}

void *sub_1C4851D4C(uint64_t a1)
{
  v2 = v1;
  v29[1] = *v1;
  v4 = sub_1C4EF98F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v29 - v10;
  sub_1C4419840();
  sub_1C4EF9888();
  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_url;
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_url, v11, v4);
  v29[0] = OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_config;
  sub_1C44098F0(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_config);
  v13 = (a1 + *(type metadata accessor for Configuration() + 20));
  v14 = *v13;
  v15 = v13[1];
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  sub_1C4406FD4(&xmmword_1EDDFEC78);
  v17 = 2 * (v16 == 0);
  if (qword_1EDDFEC60 != -1)
  {
    swift_once();
  }

  sub_1C4406FD4(&xmmword_1EDDFFAE0);
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 | 4;
  }

  sub_1C44F920C();
  v20 = static NSUserDefaults.graphDatabaseLoggingEnabled.getter() & 1;
  (*(v5 + 16))(v9, v2 + v12, v4);
  v21 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = v29[3];
  v25 = sub_1C44F999C(v9, v19 | v20);
  if (v24)
  {
    sub_1C4467948(a1);
    (*(v5 + 8))(v2 + v12, v4);
    sub_1C4467948(v2 + v29[0]);
    v26 = *(*v2 + 48);
    v27 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool) = v25;
    sub_1C4827040();
    sub_1C4467948(a1);
  }

  return v2;
}

uint64_t sub_1C4852084()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_url;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_config);
  return v0;
}

uint64_t sub_1C4852104()
{
  sub_1C4852084();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GraphDatabase()
{
  result = qword_1EDDFF4E8;
  if (!qword_1EDDFF4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C48521D4()
{
  if (qword_1EDDFF500 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C4852274()
{
  sub_1C456902C(&qword_1EC0BE028, &unk_1C4F32560);
  v0 = sub_1C4F01198();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1C4852370(void (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  sub_1C456902C(a2, a3);
  v5 = sub_1C4F01198();
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1C485241C()
{
  v18 = v0;
  v1 = *(v0 + 16);
  type metadata accessor for KeyValueStore();
  v2 = v1 + OBJC_IVAR____TtC24IntelligencePlatformCore14GraphDiffPhase_stores;
  if (!sub_1C49A4CB8(v2))
  {

LABEL_4:
    v3 = *(v0 + 16);
    v4 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
    sub_1C4853160(sub_1C48545F0, v3, sub_1C4859B10);
    sub_1C4853160(sub_1C48545F8, v3, sub_1C4859AF0);
    goto LABEL_5;
  }

  v7 = sub_1C4493790();

  if (v7 == 2)
  {
    goto LABEL_4;
  }

  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 16);
  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DE10);

  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    v14 = sub_1C4852370(type metadata accessor for GraphDiffPhase, &qword_1EC0BDFC8, &qword_1C4F324F0);
    v16 = sub_1C441D828(v14, v15, &v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C43F8000, v10, v11, "%s - Skip GraphDiffPhase due to graph rebuild", v12, 0xCu);
    sub_1C440962C(v13);
    MEMORY[0x1C6942830](v13, -1, -1);
    MEMORY[0x1C6942830](v12, -1, -1);
  }

LABEL_5:
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C48526E8()
{
  sub_1C456902C(&qword_1EC0BD3C0, &unk_1C4F2DB90);
  sub_1C4401CBC(&qword_1EDDDBC48, &qword_1EC0BD3C0, &unk_1C4F2DB90);
  sub_1C4859B90(&qword_1EDDE2668, type metadata accessor for ConstructionGraphTriple);
  v0 = sub_1C4F014A8();
  sub_1C456902C(&qword_1EC0BD400, &qword_1C4F2DBE0);
  sub_1C4401CBC(&qword_1EDDDBCD8, &qword_1EC0BD400, &qword_1C4F2DBE0);
  sub_1C4859B90(&qword_1EDDFE218, type metadata accessor for GraphTriple);
  v1 = sub_1C4F014A8();
  v50 = MEMORY[0x1E69E7CC0];
  result = sub_1C4EF9AE8();
  v3 = 0;
  v5 = v4;
  v6 = 1 << *(v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v0 + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v0 + 64 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      do
      {
LABEL_8:
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = (v3 << 9) | (8 * v11);
        v13 = *(*(v0 + 56) + v12);
        if (*(v1 + 16) && (v14 = *(*(v0 + 48) + v12), v15 = sub_1C457B350(v14), (v16 & 1) != 0) && (v17 = *(*(v1 + 56) + 8 * v15), *(v17 + 16) == *(v13 + 16)))
        {
          v20 = sub_1C457B350(v14);
          if (v21)
          {
            v48 = v20;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            swift_isUniquelyReferenced_nonNull_native();
            v49 = v1;
            v22 = *(v1 + 24);
            sub_1C456902C(&qword_1EC0BE000, &unk_1C4F54130);
            sub_1C4F02458();
            v1 = v49;
            v23 = *(*(v49 + 56) + 8 * v48);
            sub_1C4F02478();
          }

          else
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          v24 = sub_1C4853838(v17, v13);

          v19 = v24;
        }

        else
        {
          v18 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v19 = sub_1C4853520(v18, v5);
        }

        sub_1C49D45E8(v19);
        result = sub_1C49D45E8(v13);
      }

      while (v8);
    }
  }

  if (!*(v1 + 16))
  {
LABEL_42:

    return v50;
  }

  v25 = 1 << *(v1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v1 + 64);
  v28 = (v25 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (v27)
  {
LABEL_27:
    v32 = (v29 << 9) | (8 * __clz(__rbit64(v27)));
    v33 = *(*(v1 + 56) + v32);
    v34 = *(v33 + 16);
    v35 = *(v30 + 16);
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      goto LABEL_45;
    }

    v37 = *(*(v1 + 56) + v32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v36 > *(v30 + 24) >> 1)
    {
      if (v35 <= v36)
      {
        v39 = v35 + v34;
      }

      else
      {
        v39 = v35;
      }

      sub_1C44F1730(isUniquelyReferenced_nonNull_native, v39, 1, v30);
      v30 = v40;
    }

    v27 &= v27 - 1;
    if (*(v33 + 16))
    {
      v41 = (*(v30 + 24) >> 1) - *(v30 + 16);
      result = type metadata accessor for GraphTriple(0);
      v42 = *(result - 8);
      if (v41 < v34)
      {
        goto LABEL_46;
      }

      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = *(v42 + 72);
      swift_arrayInitWithCopy();

      if (v34)
      {
        v45 = *(v30 + 16);
        v46 = __OFADD__(v45, v34);
        v47 = v45 + v34;
        if (v46)
        {
          goto LABEL_47;
        }

        *(v30 + 16) = v47;
      }
    }

    else
    {

      if (v34)
      {
        __break(1u);
LABEL_41:

        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      goto LABEL_41;
    }

    v27 = *(v1 + 64 + 8 * v31);
    ++v29;
    if (v27)
    {
      v29 = v31;
      goto LABEL_27;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1C4852C24()
{
  sub_1C456902C(&qword_1EC0BDFF0, &unk_1C4F32510);
  sub_1C4401CBC(&qword_1EDDDBC50, &qword_1EC0BDFF0, &unk_1C4F32510);
  sub_1C4859B90(&unk_1EDDE2780, type metadata accessor for ConstructionEventTriple);
  v0 = sub_1C4F014A8();
  sub_1C456902C(&qword_1EC0BD3F8, &unk_1C4F5B800);
  sub_1C4401CBC(&qword_1EDDF06C8, &qword_1EC0BD3F8, &unk_1C4F5B800);
  sub_1C4859B90(&qword_1EDDFE2F0, type metadata accessor for EventTriple);
  v1 = sub_1C4F014A8();
  v50 = MEMORY[0x1E69E7CC0];
  result = sub_1C4EF9AE8();
  v3 = 0;
  v5 = v4;
  v6 = 1 << *(v0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v0 + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v0 + 64 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      do
      {
LABEL_8:
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = (v3 << 9) | (8 * v11);
        v13 = *(*(v0 + 56) + v12);
        if (*(v1 + 16) && (v14 = *(*(v0 + 48) + v12), v15 = sub_1C457B350(v14), (v16 & 1) != 0) && (v17 = *(*(v1 + 56) + 8 * v15), *(v17 + 16) == *(v13 + 16)))
        {
          v20 = sub_1C457B350(v14);
          if (v21)
          {
            v48 = v20;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            swift_isUniquelyReferenced_nonNull_native();
            v49 = v1;
            v22 = *(v1 + 24);
            sub_1C456902C(&qword_1EC0BDFF8, &unk_1C4F32520);
            sub_1C4F02458();
            v1 = v49;
            v23 = *(*(v49 + 56) + 8 * v48);
            sub_1C4F02478();
          }

          else
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          v24 = sub_1C4853DEC(v17, v13);

          v19 = v24;
        }

        else
        {
          v18 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v19 = sub_1C4853208(v18, v5);
        }

        sub_1C49D4640(v19);
        result = sub_1C49D4640(v13);
      }

      while (v8);
    }
  }

  if (!*(v1 + 16))
  {
LABEL_42:

    return v50;
  }

  v25 = 1 << *(v1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v1 + 64);
  v28 = (v25 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (v27)
  {
LABEL_27:
    v32 = (v29 << 9) | (8 * __clz(__rbit64(v27)));
    v33 = *(*(v1 + 56) + v32);
    v34 = *(v33 + 16);
    v35 = *(v30 + 16);
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      goto LABEL_45;
    }

    v37 = *(*(v1 + 56) + v32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v36 > *(v30 + 24) >> 1)
    {
      if (v35 <= v36)
      {
        v39 = v35 + v34;
      }

      else
      {
        v39 = v35;
      }

      sub_1C458BAC8(isUniquelyReferenced_nonNull_native, v39, 1, v30);
      v30 = v40;
    }

    v27 &= v27 - 1;
    if (*(v33 + 16))
    {
      v41 = (*(v30 + 24) >> 1) - *(v30 + 16);
      result = type metadata accessor for EventTriple(0);
      v42 = *(result - 8);
      if (v41 < v34)
      {
        goto LABEL_46;
      }

      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = *(v42 + 72);
      swift_arrayInitWithCopy();

      if (v34)
      {
        v45 = *(v30 + 16);
        v46 = __OFADD__(v45, v34);
        v47 = v45 + v34;
        if (v46)
        {
          goto LABEL_47;
        }

        *(v30 + 16) = v47;
      }
    }

    else
    {

      if (v34)
      {
        __break(1u);
LABEL_41:

        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      goto LABEL_41;
    }

    v27 = *(v1 + 64 + 8 * v31);
    ++v29;
    if (v27)
    {
      v29 = v31;
      goto LABEL_27;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1C4853160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3[2] + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;

  sub_1C446C37C(a3, v8);
}

uint64_t sub_1C4853208(uint64_t a1, double a2)
{
  v4 = type metadata accessor for ConstructionEventTriple(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C459E630();
    v13 = v37;
    v36 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = a1 + v36;
    v35 = *(v5 + 72);
    do
    {
      sub_1C4859B30(v14, v9, type metadata accessor for ConstructionEventTriple);
      v15 = sub_1C4EFF0C8();
      (*(*(v15 - 8) + 16))(v11, v9, v15);
      v16 = v4[5];
      v17 = sub_1C4EFEEF8();
      v18 = *(*(v17 - 8) + 16);
      v18(&v11[v16], &v9[v16], v17);
      v19 = v4[6];
      v20 = sub_1C4EFF8A8();
      (*(*(v20 - 8) + 16))(&v11[v19], &v9[v19], v20);
      v18(&v11[v4[7]], &v9[v4[7]], v17);
      v21 = v4[8];
      v22 = *&v9[v4[9]];
      v24 = *&v9[v21];
      v23 = *&v9[v21 + 8];
      v25 = *&v9[v4[10]];
      v26 = &v9[v4[11]];
      v27 = *v26;
      v28 = *(v26 + 1);
      v29 = &v11[v21];
      *v29 = v24;
      *(v29 + 1) = v23;
      *&v11[v4[9]] = v22;
      *&v11[v4[10]] = v25;
      v30 = &v11[v4[11]];
      *v30 = v27;
      *(v30 + 1) = v28;
      *&v11[v4[12]] = a2;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4859BD8(v9, type metadata accessor for ConstructionEventTriple);
      v37 = v13;
      v31 = *(v13 + 16);
      if (v31 >= *(v13 + 24) >> 1)
      {
        sub_1C459E630();
        v13 = v37;
      }

      *(v13 + 16) = v31 + 1;
      v32 = v35;
      sub_1C448AD18(v11, v13 + v36 + v31 * v35, type metadata accessor for ConstructionEventTriple);
      v14 += v32;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_1C4853520(uint64_t a1, double a2)
{
  v4 = type metadata accessor for ConstructionGraphTriple(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C459DC78();
    v13 = v37;
    v36 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = a1 + v36;
    v35 = *(v5 + 72);
    do
    {
      sub_1C4859B30(v14, v9, type metadata accessor for ConstructionGraphTriple);
      v15 = sub_1C4EFF0C8();
      (*(*(v15 - 8) + 16))(v11, v9, v15);
      v16 = v4[5];
      v17 = sub_1C4EFEEF8();
      v18 = *(*(v17 - 8) + 16);
      v18(&v11[v16], &v9[v16], v17);
      v19 = v4[6];
      v20 = sub_1C4EFF8A8();
      (*(*(v20 - 8) + 16))(&v11[v19], &v9[v19], v20);
      v18(&v11[v4[7]], &v9[v4[7]], v17);
      v21 = v4[8];
      v22 = *&v9[v4[9]];
      v24 = *&v9[v21];
      v23 = *&v9[v21 + 8];
      v25 = *&v9[v4[10]];
      v26 = &v9[v4[11]];
      v27 = *v26;
      v28 = *(v26 + 1);
      v29 = &v11[v21];
      *v29 = v24;
      *(v29 + 1) = v23;
      *&v11[v4[9]] = v22;
      *&v11[v4[10]] = v25;
      v30 = &v11[v4[11]];
      *v30 = v27;
      *(v30 + 1) = v28;
      *&v11[v4[12]] = a2;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4859BD8(v9, type metadata accessor for ConstructionGraphTriple);
      v37 = v13;
      v31 = *(v13 + 16);
      if (v31 >= *(v13 + 24) >> 1)
      {
        sub_1C459DC78();
        v13 = v37;
      }

      *(v13 + 16) = v31 + 1;
      v32 = v35;
      sub_1C448AD18(v11, v13 + v36 + v31 * v35, type metadata accessor for ConstructionGraphTriple);
      v14 += v32;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_1C4853838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ConstructionGraphTriple(0);
  v60 = *(v64 - 8);
  v8 = *(v60 + 64);
  v9 = MEMORY[0x1EEE9AC00](v64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v58 - v14;
  v16 = *(a2 + 16);
  v63 = a1;
  v17 = *(a1 + 16);
  v65 = v16;
  if (v16 == v17)
  {
    v58 = v13;
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v59 = a2;
    v20 = v64;
    while (v65 != v18)
    {
      v68 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v21 = *(v60 + 72);
      v66 = type metadata accessor for ConstructionGraphTriple;
      v67 = v21;
      sub_1C4859B30(a2 + v68 + v21 * v18, v15, type metadata accessor for ConstructionGraphTriple);
      v22 = v63 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v23 = *(v61 + 72);
      v70 = v18;
      sub_1C4859B30(v22 + v23 * v18, v7, type metadata accessor for GraphTriple);
      v24 = sub_1C4EFF0C8();
      (*(*(v24 - 8) + 16))(v12, v15, v24);
      v25 = v20[5];
      v26 = sub_1C4EFEEF8();
      v27 = *(v26 - 8);
      v69 = v19;
      v28 = *(v27 + 16);
      v28(&v12[v25], &v15[v25], v26);
      v29 = v62;
      v30 = *(v62 + 24);
      v31 = v20[6];
      v32 = sub_1C4EFF8A8();
      (*(*(v32 - 8) + 16))(&v12[v31], &v7[v30], v32);
      v28(&v12[v20[7]], &v15[v20[7]], v26);
      v19 = v69;
      v33 = v20[8];
      v34 = *&v15[v33];
      v35 = *&v15[v33 + 8];
      v36 = *&v15[v20[9]];
      v37 = *&v15[v20[10]];
      v38 = &v15[v20[11]];
      v39 = *v38;
      v40 = *(v38 + 1);
      v41 = *&v7[*(v29 + 48)];
      v42 = &v12[v33];
      *v42 = v34;
      *(v42 + 1) = v35;
      *&v12[v20[9]] = v36;
      *&v12[v20[10]] = v37;
      v43 = &v12[v20[11]];
      *v43 = v39;
      *(v43 + 1) = v40;
      *&v12[v20[12]] = v41;
      v44 = v58;
      sub_1C4859B30(v12, v58, v66);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44EE8C8(0, *(v19 + 16) + 1, 1, v19);
        v19 = v47;
      }

      v46 = *(v19 + 16);
      v45 = *(v19 + 24);
      a2 = v59;
      if (v46 >= v45 >> 1)
      {
        sub_1C44EE8C8(v45 > 1, v46 + 1, 1, v19);
        v19 = v48;
      }

      sub_1C4859BD8(v12, type metadata accessor for ConstructionGraphTriple);
      sub_1C4859BD8(v7, type metadata accessor for GraphTriple);
      sub_1C4859BD8(v15, type metadata accessor for ConstructionGraphTriple);
      *(v19 + 16) = v46 + 1;
      sub_1C448AD18(v44, v19 + v68 + v46 * v67, type metadata accessor for ConstructionGraphTriple);
      v18 = v70 + 1;
    }

    return v19;
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v49 = sub_1C4F00978();
    sub_1C442B738(v49, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v50 = sub_1C4F00968();
    v51 = sub_1C4F01CD8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v71 = v53;
      *v52 = 136315138;
      v54 = MEMORY[0x1C6940380](a2, v64);
      v56 = sub_1C441D828(v54, v55, &v71);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_1C43F8000, v50, v51, "%s: revertTimestamp error", v52, 0xCu);
      sub_1C440962C(v53);
      MEMORY[0x1C6942830](v53, -1, -1);
      MEMORY[0x1C6942830](v52, -1, -1);
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return a2;
}

uint64_t sub_1C4853DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventTriple(0);
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ConstructionEventTriple(0);
  v60 = *(v64 - 8);
  v8 = *(v60 + 64);
  v9 = MEMORY[0x1EEE9AC00](v64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v58 - v14;
  v16 = *(a2 + 16);
  v63 = a1;
  v17 = *(a1 + 16);
  v65 = v16;
  if (v16 == v17)
  {
    v58 = v13;
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v59 = a2;
    v20 = v64;
    while (v65 != v18)
    {
      v68 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v21 = *(v60 + 72);
      v66 = type metadata accessor for ConstructionEventTriple;
      v67 = v21;
      sub_1C4859B30(a2 + v68 + v21 * v18, v15, type metadata accessor for ConstructionEventTriple);
      v22 = v63 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v23 = *(v61 + 72);
      v70 = v18;
      sub_1C4859B30(v22 + v23 * v18, v7, type metadata accessor for EventTriple);
      v24 = sub_1C4EFF0C8();
      (*(*(v24 - 8) + 16))(v12, v15, v24);
      v25 = v20[5];
      v26 = sub_1C4EFEEF8();
      v27 = *(v26 - 8);
      v69 = v19;
      v28 = *(v27 + 16);
      v28(&v12[v25], &v15[v25], v26);
      v29 = v62;
      v30 = *(v62 + 24);
      v31 = v20[6];
      v32 = sub_1C4EFF8A8();
      (*(*(v32 - 8) + 16))(&v12[v31], &v7[v30], v32);
      v28(&v12[v20[7]], &v15[v20[7]], v26);
      v19 = v69;
      v33 = v20[8];
      v34 = *&v15[v33];
      v35 = *&v15[v33 + 8];
      v36 = *&v15[v20[9]];
      v37 = *&v15[v20[10]];
      v38 = &v15[v20[11]];
      v39 = *v38;
      v40 = *(v38 + 1);
      v41 = *&v7[*(v29 + 48)];
      v42 = &v12[v33];
      *v42 = v34;
      *(v42 + 1) = v35;
      *&v12[v20[9]] = v36;
      *&v12[v20[10]] = v37;
      v43 = &v12[v20[11]];
      *v43 = v39;
      *(v43 + 1) = v40;
      *&v12[v20[12]] = v41;
      v44 = v58;
      sub_1C4859B30(v12, v58, v66);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458DA98(0, *(v19 + 16) + 1, 1, v19);
        v19 = v47;
      }

      v46 = *(v19 + 16);
      v45 = *(v19 + 24);
      a2 = v59;
      if (v46 >= v45 >> 1)
      {
        sub_1C458DA98(v45 > 1, v46 + 1, 1, v19);
        v19 = v48;
      }

      sub_1C4859BD8(v12, type metadata accessor for ConstructionEventTriple);
      sub_1C4859BD8(v7, type metadata accessor for EventTriple);
      sub_1C4859BD8(v15, type metadata accessor for ConstructionEventTriple);
      *(v19 + 16) = v46 + 1;
      sub_1C448AD18(v44, v19 + v68 + v46 * v67, type metadata accessor for ConstructionEventTriple);
      v18 = v70 + 1;
    }

    return v19;
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v49 = sub_1C4F00978();
    sub_1C442B738(v49, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v50 = sub_1C4F00968();
    v51 = sub_1C4F01CD8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v71 = v53;
      *v52 = 136315138;
      v54 = MEMORY[0x1C6940380](a2, v64);
      v56 = sub_1C441D828(v54, v55, &v71);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_1C43F8000, v50, v51, "%s: revertTimestamp error", v52, 0xCu);
      sub_1C440962C(v53);
      MEMORY[0x1C6942830](v53, -1, -1);
      MEMORY[0x1C6942830](v52, -1, -1);
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return a2;
}

uint64_t sub_1C48543A0()
{
  v1 = v0[3];

  sub_1C4859BD8(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14GraphDiffPhase_stores, type metadata accessor for PhaseStores);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4854428()
{
  result = type metadata accessor for PhaseStores();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C48544CC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C44A7DA0;

  return sub_1C48523FC();
}

uint64_t sub_1C4854598(uint64_t a1)
{
  result = sub_1C4859B90(qword_1EDDE9D50, type metadata accessor for GraphDiffPhase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4854600(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v75 = a2;
  v76 = a3;
  v89 = a1;
  v88 = type metadata accessor for ExpiredConstructionEventTriple(0);
  v4 = *(*(v88 - 1) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConstructionEventTriple(0);
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v83 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v71 - v10;
  v86 = type metadata accessor for EventTriple(0);
  v84 = *(v86 - 8);
  v11 = *(v84 + 64);
  v12 = MEMORY[0x1EEE9AC00](v86);
  v90 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v71 - v14;
  v15 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v16 = *(v15 - 8);
  v78 = v15;
  v79 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v71 - v18;
  v19 = sub_1C456902C(&qword_1EC0BDFD8, &unk_1C4F32500);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v71 - v22;
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v24 = swift_allocObject();
  v77 = xmmword_1C4F0D130;
  *(v24 + 16) = xmmword_1C4F0D130;
  *(v24 + 56) = &type metadata for FusedTripleColumn;
  v25 = sub_1C4811294();
  *(v24 + 64) = v25;
  *(v24 + 32) = 0;
  sub_1C4859B90(&qword_1EDDE2778, type metadata accessor for ConstructionEventTriple);
  sub_1C4EFAE08();

  sub_1C4401CBC(&unk_1EDDF00C0, &qword_1EC0BDFD8, &unk_1C4F32500);
  sub_1C4859B90(&qword_1EDDE2768, type metadata accessor for ConstructionEventTriple);
  v26 = v87;
  sub_1C4EFAFD8();
  if (v26)
  {
    return (*(v20 + 8))(v23, v19);
  }

  v28 = v85;
  v87 = v6;
  (*(v20 + 8))(v23, v19);
  v29 = sub_1C4EFB088();

  v30 = swift_allocObject();
  *(v30 + 16) = v77;
  *(v30 + 56) = &type metadata for FusedTripleColumn;
  *(v30 + 64) = v25;
  *(v30 + 32) = 0;
  sub_1C4859B90(&qword_1EDDFE2E8, type metadata accessor for EventTriple);
  sub_1C4EFAE08();

  sub_1C4401CBC(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8);
  sub_1C4859B90(&qword_1EDDFC2C8, type metadata accessor for EventTriple);
  v31 = v78;
  sub_1C4EFAFD8();
  (*(v79 + 8))(v28, v31);
  v32 = sub_1C4EFB088();
  v73 = v29;

  v33 = v90;
  v34 = v91;
  v36 = v82;
  v35 = v83;
  v37 = v81;
  for (i = v32; ; v32 = i)
  {
    result = sub_1C4855DB8(v73, v32, v75, v76);
    v85 = v39;
    v40 = v84;
    if (!result)
    {
      break;
    }

    *&v77 = result;
    v41 = 0;
    v42 = v85;
    v43 = *(v85 + 2);
    v78 = v38;
    v79 = v43;
    while (v79 != v41)
    {
      if (v41 >= *(v42 + 2))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v44 = v80;
      sub_1C4859B30(&v42[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v41], v80, type metadata accessor for EventTriple);
      sub_1C4859B30(v44, v33, type metadata accessor for EventTriple);
      v45 = sub_1C4EFF0C8();
      (*(*(v45 - 8) + 16))(v34, v33, v45);
      v46 = v86;
      v47 = *(v86 + 20);
      v48 = v88[5];
      v49 = sub_1C4EFEEF8();
      v50 = *(*(v49 - 8) + 16);
      v50(&v91[v48], &v90[v47], v49);
      v51 = v46[6];
      v52 = v88[6];
      v53 = sub_1C4EFF8A8();
      (*(*(v53 - 8) + 16))(&v91[v52], &v90[v51], v53);
      v50(&v91[v88[7]], &v90[v46[7]], v49);
      v54 = &v90[v46[8]];
      v56 = *v54;
      v55 = *(v54 + 1);
      v57 = *&v90[v46[9]];
      v58 = v46[10];
      v59 = v46[11];
      v33 = v90;
      v60 = *&v90[v58];
      v62 = *&v90[v59];
      v61 = *&v90[v59 + 8];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v63 = &v91[v88[8]];
      *v63 = v56;
      *(v63 + 1) = v55;
      v64 = v88;
      *&v91[v88[9]] = v57;
      *&v91[v64[10]] = v60;
      v65 = &v91[v64[11]];
      *v65 = v62;
      *(v65 + 1) = v61;
      *&v91[v64[12]] = v66;
      sub_1C4859B90(&qword_1EC0BDFE0, type metadata accessor for ExpiredConstructionEventTriple);
      v34 = v91;
      sub_1C4EFB6C8();
      ++v41;
      sub_1C4859BD8(v34, type metadata accessor for ExpiredConstructionEventTriple);
      sub_1C4859BD8(v33, type metadata accessor for EventTriple);
      result = sub_1C4859BD8(v44, type metadata accessor for EventTriple);
      v36 = v82;
      v35 = v83;
      v37 = v81;
      v40 = v84;
      v42 = v85;
    }

    v67 = 0;
    result = v78;
    v68 = *(v78 + 16);
    while (v68 != v67)
    {
      if (v67 >= *(result + 16))
      {
        goto LABEL_20;
      }

      sub_1C4859B30(result + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v67, v36, type metadata accessor for ConstructionEventTriple);
      sub_1C4859B90(&qword_1EDDE2758, type metadata accessor for ConstructionEventTriple);
      sub_1C4EFBA58();
      ++v67;
      sub_1C4859BD8(v36, type metadata accessor for ConstructionEventTriple);
      result = v78;
    }

    v69 = 0;
    v70 = *(v77 + 16);
    while (v70 != v69)
    {
      if (v69 >= *(v77 + 16))
      {
        goto LABEL_21;
      }

      sub_1C4859B30(v77 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v69, v35, type metadata accessor for ConstructionEventTriple);
      sub_1C4859B90(&qword_1EDDE2760, type metadata accessor for ConstructionEventTriple);
      sub_1C4EFB6A8();
      ++v69;
      sub_1C4859BD8(v35, type metadata accessor for ConstructionEventTriple);
      result = v78;
    }
  }
}

uint64_t sub_1C48551DC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v75 = a2;
  v76 = a3;
  v89 = a1;
  v88 = type metadata accessor for ExpiredConstructionGraphTriple(0);
  v4 = *(*(v88 - 1) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConstructionGraphTriple(0);
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v83 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v71 - v10;
  v86 = type metadata accessor for GraphTriple(0);
  v84 = *(v86 - 8);
  v11 = *(v84 + 64);
  v12 = MEMORY[0x1EEE9AC00](v86);
  v90 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v71 - v14;
  v15 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v16 = *(v15 - 8);
  v78 = v15;
  v79 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v71 - v18;
  v19 = sub_1C456902C(&qword_1EC0BA580, &unk_1C4F32530);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v71 - v22;
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v24 = swift_allocObject();
  v77 = xmmword_1C4F0D130;
  *(v24 + 16) = xmmword_1C4F0D130;
  *(v24 + 56) = &type metadata for FusedTripleColumn;
  v25 = sub_1C4811294();
  *(v24 + 64) = v25;
  *(v24 + 32) = 0;
  sub_1C4859B90(&unk_1EDDF3848, type metadata accessor for ConstructionGraphTriple);
  sub_1C4EFAE08();

  sub_1C4401CBC(&qword_1EDDF00B0, &qword_1EC0BA580, &unk_1C4F32530);
  sub_1C4859B90(&qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple);
  v26 = v87;
  sub_1C4EFAFD8();
  if (v26)
  {
    return (*(v20 + 8))(v23, v19);
  }

  v28 = v85;
  v87 = v6;
  (*(v20 + 8))(v23, v19);
  v29 = sub_1C4EFB088();

  v30 = swift_allocObject();
  *(v30 + 16) = v77;
  *(v30 + 56) = &type metadata for FusedTripleColumn;
  *(v30 + 64) = v25;
  *(v30 + 32) = 0;
  sub_1C4859B90(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE08();

  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C4859B90(&qword_1EDDFE208, type metadata accessor for GraphTriple);
  v31 = v78;
  sub_1C4EFAFD8();
  (*(v79 + 8))(v28, v31);
  v32 = sub_1C4EFB088();
  v73 = v29;

  v33 = v90;
  v34 = v91;
  v36 = v82;
  v35 = v83;
  v37 = v81;
  for (i = v32; ; v32 = i)
  {
    result = sub_1C4856BB0(v73, v32, v75, v76);
    v85 = v39;
    v40 = v84;
    if (!result)
    {
      break;
    }

    *&v77 = result;
    v41 = 0;
    v42 = v85;
    v43 = *(v85 + 2);
    v78 = v38;
    v79 = v43;
    while (v79 != v41)
    {
      if (v41 >= *(v42 + 2))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v44 = v80;
      sub_1C4859B30(&v42[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v41], v80, type metadata accessor for GraphTriple);
      sub_1C4859B30(v44, v33, type metadata accessor for GraphTriple);
      v45 = sub_1C4EFF0C8();
      (*(*(v45 - 8) + 16))(v34, v33, v45);
      v46 = v86;
      v47 = *(v86 + 20);
      v48 = v88[5];
      v49 = sub_1C4EFEEF8();
      v50 = *(*(v49 - 8) + 16);
      v50(&v91[v48], &v90[v47], v49);
      v51 = v46[6];
      v52 = v88[6];
      v53 = sub_1C4EFF8A8();
      (*(*(v53 - 8) + 16))(&v91[v52], &v90[v51], v53);
      v50(&v91[v88[7]], &v90[v46[7]], v49);
      v54 = &v90[v46[8]];
      v56 = *v54;
      v55 = *(v54 + 1);
      v57 = *&v90[v46[9]];
      v58 = v46[10];
      v59 = v46[11];
      v33 = v90;
      v60 = *&v90[v58];
      v62 = *&v90[v59];
      v61 = *&v90[v59 + 8];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v63 = &v91[v88[8]];
      *v63 = v56;
      *(v63 + 1) = v55;
      v64 = v88;
      *&v91[v88[9]] = v57;
      *&v91[v64[10]] = v60;
      v65 = &v91[v64[11]];
      *v65 = v62;
      *(v65 + 1) = v61;
      *&v91[v64[12]] = v66;
      sub_1C4859B90(&qword_1EDDDF240, type metadata accessor for ExpiredConstructionGraphTriple);
      v34 = v91;
      sub_1C4EFB6C8();
      ++v41;
      sub_1C4859BD8(v34, type metadata accessor for ExpiredConstructionGraphTriple);
      sub_1C4859BD8(v33, type metadata accessor for GraphTriple);
      result = sub_1C4859BD8(v44, type metadata accessor for GraphTriple);
      v36 = v82;
      v35 = v83;
      v37 = v81;
      v40 = v84;
      v42 = v85;
    }

    v67 = 0;
    result = v78;
    v68 = *(v78 + 16);
    while (v68 != v67)
    {
      if (v67 >= *(result + 16))
      {
        goto LABEL_20;
      }

      sub_1C4859B30(result + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v67, v36, type metadata accessor for ConstructionGraphTriple);
      sub_1C4859B90(&qword_1EDDE2650, type metadata accessor for ConstructionGraphTriple);
      sub_1C4EFBA58();
      ++v67;
      sub_1C4859BD8(v36, type metadata accessor for ConstructionGraphTriple);
      result = v78;
    }

    v69 = 0;
    v70 = *(v77 + 16);
    while (v70 != v69)
    {
      if (v69 >= *(v77 + 16))
      {
        goto LABEL_21;
      }

      sub_1C4859B30(v77 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v69, v35, type metadata accessor for ConstructionGraphTriple);
      sub_1C4859B90(&qword_1EDDE2658, type metadata accessor for ConstructionGraphTriple);
      sub_1C4EFB6A8();
      ++v69;
      sub_1C4859BD8(v35, type metadata accessor for ConstructionGraphTriple);
      result = v78;
    }
  }
}

uint64_t sub_1C4855DB8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v96 = a4;
  v94 = a3;
  v116 = a2;
  v5 = type metadata accessor for EventTriple(0);
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v95 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v113 = &v94 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v111 = &v94 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v94 - v14;
  v15 = sub_1C4EFF0C8();
  v104 = *(v15 - 8);
  v105 = v15;
  v16 = *(v104 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v109 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v94 - v19;
  v20 = type metadata accessor for ConstructionEventTriple(0);
  v110 = *(v20 - 8);
  v21 = *(v110 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v99 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v114 = &v94 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v94 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v103 = &v94 - v29;
  v30 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v98 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v97 = &v94 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v94 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v102 = &v94 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v94 - v41;
  v43 = sub_1C456902C(&qword_1EC0BDFE8, &qword_1C4F54070);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v101 = &v94 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v94 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v94 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v94 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v94 - v56;
  v117 = a1;
  sub_1C4EFF4E8();
  sub_1C4EFF4E8();
  v58 = v106;
  v108 = v57;
  v59 = v57;
  v60 = v42;
  v61 = v20;
  if (sub_1C44157D4(v59, 1, v20) == 1 && sub_1C44157D4(v60, 1, v58) == 1)
  {
    sub_1C4420C3C(v60, &unk_1EC0BC8E0, &qword_1C4F29AC0);
    sub_1C4420C3C(v108, &qword_1EC0BDFE8, &qword_1C4F54070);
    return 0;
  }

  sub_1C445FFF0(v108, v55, &qword_1EC0BDFE8, &qword_1C4F54070);
  v62 = sub_1C44157D4(v55, 1, v20);
  v63 = v115;
  if (v62 == 1)
  {
    sub_1C4420C3C(v55, &qword_1EC0BDFE8, &qword_1C4F54070);
  }

  else
  {
    v64 = v55;
    v65 = v103;
    sub_1C448AD18(v64, v103, type metadata accessor for ConstructionEventTriple);
    if (sub_1C44157D4(v60, 1, v58) == 1)
    {
      v116 = v60;
      (*(v104 + 16))(v112, v65, v105);
      v66 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v52, 1, v61) == 1)
        {
          break;
        }

        sub_1C448AD18(v52, v28, type metadata accessor for ConstructionEventTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v28, type metadata accessor for ConstructionEventTriple);
          goto LABEL_38;
        }

        sub_1C4859B30(v28, v114, type metadata accessor for ConstructionEventTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458DA98(0, *(v66 + 16) + 1, 1, v66);
          v66 = v69;
        }

        v68 = *(v66 + 16);
        v67 = *(v66 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_1C458DA98(v67 > 1, v68 + 1, 1, v66);
          v66 = v70;
        }

        *(v66 + 16) = v68 + 1;
        sub_1C448AD18(v114, v66 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v68, type metadata accessor for ConstructionEventTriple);
        sub_1C4EFF4D8();
        if (v63)
        {
          v58 = type metadata accessor for ConstructionEventTriple;
          sub_1C4859BD8(v28, type metadata accessor for ConstructionEventTriple);
          (*(v104 + 8))(v112, v105);
          sub_1C4859BD8(v103, type metadata accessor for ConstructionEventTriple);

          v71 = v108;
          v60 = v116;
          goto LABEL_44;
        }

        sub_1C4420C3C(v49, &qword_1EC0BDFE8, &qword_1C4F54070);
        sub_1C4859BD8(v28, type metadata accessor for ConstructionEventTriple);
      }

      sub_1C4420C3C(v52, &qword_1EC0BDFE8, &qword_1C4F54070);
LABEL_38:
      sub_1C4EF9AE8();
      v58 = sub_1C4853208(v66, v92);
      (*(v104 + 8))(v112, v105);
      sub_1C4859BD8(v103, type metadata accessor for ConstructionEventTriple);
      sub_1C4420C3C(v116, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      sub_1C4420C3C(v108, &qword_1EC0BDFE8, &qword_1C4F54070);
      return v58;
    }

    sub_1C4859BD8(v65, type metadata accessor for ConstructionEventTriple);
  }

  v71 = v108;
  v72 = sub_1C44157D4(v108, 1, v61);
  v73 = v111;
  v74 = v102;
  if (v72 != 1)
  {
LABEL_20:
    v75 = v101;
    sub_1C445FFF0(v71, v101, &qword_1EC0BDFE8, &qword_1C4F54070);
    if (sub_1C44157D4(v75, 1, v61) == 1)
    {
      sub_1C4420C3C(v60, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      v76 = &qword_1EC0BDFE8;
      v77 = &qword_1C4F54070;
      v78 = v71;
    }

    else
    {
      v79 = v99;
      sub_1C448AD18(v75, v99, type metadata accessor for ConstructionEventTriple);
      v75 = v98;
      sub_1C445FFF0(v60, v98, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      if (sub_1C44157D4(v75, 1, v58) != 1)
      {
        v89 = v75;
        v90 = v95;
        sub_1C448AD18(v89, v95, type metadata accessor for EventTriple);
        sub_1C48579A8(v117, v79, v116, v90, v94, v96);
        if (v63)
        {
          sub_1C4859BD8(v90, type metadata accessor for EventTriple);
          sub_1C4859BD8(v79, type metadata accessor for ConstructionEventTriple);
          goto LABEL_44;
        }

        v58 = v91;
        sub_1C4859BD8(v90, type metadata accessor for EventTriple);
        sub_1C4859BD8(v79, type metadata accessor for ConstructionEventTriple);
        sub_1C4420C3C(v60, &unk_1EC0BC8E0, &qword_1C4F29AC0);
        sub_1C4420C3C(v71, &qword_1EC0BDFE8, &qword_1C4F54070);
        return v58;
      }

      sub_1C4859BD8(v79, type metadata accessor for ConstructionEventTriple);
      v76 = &unk_1EC0BC8E0;
      v77 = &qword_1C4F29AC0;
      sub_1C4420C3C(v60, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      v78 = v71;
    }

    sub_1C4420C3C(v78, &qword_1EC0BDFE8, &qword_1C4F54070);
    sub_1C4420C3C(v75, v76, v77);
    return 0;
  }

  sub_1C445FFF0(v60, v102, &unk_1EC0BC8E0, &qword_1C4F29AC0);
  if (sub_1C44157D4(v74, 1, v58) == 1)
  {
    sub_1C4420C3C(v74, &unk_1EC0BC8E0, &qword_1C4F29AC0);
    goto LABEL_20;
  }

  v80 = v58;
  v81 = v100;
  sub_1C448AD18(v74, v100, type metadata accessor for EventTriple);
  (*(v104 + 16))(v109, v81, v105);
  v82 = MEMORY[0x1E69E7CC0];
  v83 = v97;
  while (1)
  {
    sub_1C4EFF4E8();
    if (sub_1C44157D4(v38, 1, v80) == 1)
    {
      sub_1C4420C3C(v38, &unk_1EC0BC8E0, &qword_1C4F29AC0);
LABEL_42:
      (*(v104 + 8))(v109, v105);
      sub_1C4859BD8(v100, type metadata accessor for EventTriple);
      sub_1C4420C3C(v60, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      sub_1C4420C3C(v71, &qword_1EC0BDFE8, &qword_1C4F54070);
      return MEMORY[0x1E69E7CC0];
    }

    sub_1C448AD18(v38, v73, type metadata accessor for EventTriple);
    if ((sub_1C4EFF088() & 1) == 0)
    {
      sub_1C4859BD8(v73, type metadata accessor for EventTriple);
      goto LABEL_42;
    }

    sub_1C4859B30(v73, v113, type metadata accessor for EventTriple);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458BAC8(0, *(v82 + 16) + 1, 1, v82);
      v82 = v87;
    }

    v85 = *(v82 + 16);
    v84 = *(v82 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_1C458BAC8(v84 > 1, v85 + 1, 1, v82);
      v82 = v88;
    }

    *(v82 + 16) = v85 + 1;
    sub_1C448AD18(v113, v82 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v85, type metadata accessor for EventTriple);
    v86 = v115;
    sub_1C4EFF4D8();
    v115 = v86;
    if (v86)
    {
      break;
    }

    sub_1C4420C3C(v83, &unk_1EC0BC8E0, &qword_1C4F29AC0);
    v73 = v111;
    sub_1C4859BD8(v111, type metadata accessor for EventTriple);
  }

  v58 = type metadata accessor for EventTriple;
  sub_1C4859BD8(v111, type metadata accessor for EventTriple);
  (*(v104 + 8))(v109, v105);
  sub_1C4859BD8(v100, type metadata accessor for EventTriple);

LABEL_44:
  sub_1C4420C3C(v60, &unk_1EC0BC8E0, &qword_1C4F29AC0);
  sub_1C4420C3C(v71, &qword_1EC0BDFE8, &qword_1C4F54070);
  return v58;
}

uint64_t sub_1C4856BB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v96 = a4;
  v94 = a3;
  v116 = a2;
  v5 = type metadata accessor for GraphTriple(0);
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v95 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v113 = &v94 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v111 = &v94 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v94 - v14;
  v15 = sub_1C4EFF0C8();
  v104 = *(v15 - 8);
  v105 = v15;
  v16 = *(v104 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v109 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v94 - v19;
  v20 = type metadata accessor for ConstructionGraphTriple(0);
  v110 = *(v20 - 8);
  v21 = *(v110 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v99 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v114 = &v94 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v94 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v103 = &v94 - v29;
  v30 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v98 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v97 = &v94 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v94 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v102 = &v94 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v94 - v41;
  v43 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v101 = &v94 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v94 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v94 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v94 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v94 - v56;
  v117 = a1;
  sub_1C4EFF4E8();
  sub_1C4EFF4E8();
  v58 = v106;
  v108 = v57;
  v59 = v57;
  v60 = v42;
  v61 = v20;
  if (sub_1C44157D4(v59, 1, v20) == 1 && sub_1C44157D4(v60, 1, v58) == 1)
  {
    sub_1C4420C3C(v60, &unk_1EC0BC900, &unk_1C4F142D0);
    sub_1C4420C3C(v108, &unk_1EC0BCAE0, &unk_1C4F142A0);
    return 0;
  }

  sub_1C445FFF0(v108, v55, &unk_1EC0BCAE0, &unk_1C4F142A0);
  v62 = sub_1C44157D4(v55, 1, v20);
  v63 = v115;
  if (v62 == 1)
  {
    sub_1C4420C3C(v55, &unk_1EC0BCAE0, &unk_1C4F142A0);
  }

  else
  {
    v64 = v55;
    v65 = v103;
    sub_1C448AD18(v64, v103, type metadata accessor for ConstructionGraphTriple);
    if (sub_1C44157D4(v60, 1, v58) == 1)
    {
      v116 = v60;
      (*(v104 + 16))(v112, v65, v105);
      v66 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v52, 1, v61) == 1)
        {
          break;
        }

        sub_1C448AD18(v52, v28, type metadata accessor for ConstructionGraphTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v28, type metadata accessor for ConstructionGraphTriple);
          goto LABEL_38;
        }

        sub_1C4859B30(v28, v114, type metadata accessor for ConstructionGraphTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44EE8C8(0, *(v66 + 16) + 1, 1, v66);
          v66 = v69;
        }

        v68 = *(v66 + 16);
        v67 = *(v66 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_1C44EE8C8(v67 > 1, v68 + 1, 1, v66);
          v66 = v70;
        }

        *(v66 + 16) = v68 + 1;
        sub_1C448AD18(v114, v66 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v68, type metadata accessor for ConstructionGraphTriple);
        sub_1C4EFF4D8();
        if (v63)
        {
          v58 = type metadata accessor for ConstructionGraphTriple;
          sub_1C4859BD8(v28, type metadata accessor for ConstructionGraphTriple);
          (*(v104 + 8))(v112, v105);
          sub_1C4859BD8(v103, type metadata accessor for ConstructionGraphTriple);

          v71 = v108;
          v60 = v116;
          goto LABEL_44;
        }

        sub_1C4420C3C(v49, &unk_1EC0BCAE0, &unk_1C4F142A0);
        sub_1C4859BD8(v28, type metadata accessor for ConstructionGraphTriple);
      }

      sub_1C4420C3C(v52, &unk_1EC0BCAE0, &unk_1C4F142A0);
LABEL_38:
      sub_1C4EF9AE8();
      v58 = sub_1C4853520(v66, v92);
      (*(v104 + 8))(v112, v105);
      sub_1C4859BD8(v103, type metadata accessor for ConstructionGraphTriple);
      sub_1C4420C3C(v116, &unk_1EC0BC900, &unk_1C4F142D0);
      sub_1C4420C3C(v108, &unk_1EC0BCAE0, &unk_1C4F142A0);
      return v58;
    }

    sub_1C4859BD8(v65, type metadata accessor for ConstructionGraphTriple);
  }

  v71 = v108;
  v72 = sub_1C44157D4(v108, 1, v61);
  v73 = v111;
  v74 = v102;
  if (v72 != 1)
  {
LABEL_20:
    v75 = v101;
    sub_1C445FFF0(v71, v101, &unk_1EC0BCAE0, &unk_1C4F142A0);
    if (sub_1C44157D4(v75, 1, v61) == 1)
    {
      sub_1C4420C3C(v60, &unk_1EC0BC900, &unk_1C4F142D0);
      v76 = &unk_1EC0BCAE0;
      v77 = &unk_1C4F142A0;
      v78 = v71;
    }

    else
    {
      v79 = v99;
      sub_1C448AD18(v75, v99, type metadata accessor for ConstructionGraphTriple);
      v75 = v98;
      sub_1C445FFF0(v60, v98, &unk_1EC0BC900, &unk_1C4F142D0);
      if (sub_1C44157D4(v75, 1, v58) != 1)
      {
        v89 = v75;
        v90 = v95;
        sub_1C448AD18(v89, v95, type metadata accessor for GraphTriple);
        sub_1C4858A4C(v117, v79, v116, v90, v94, v96);
        if (v63)
        {
          sub_1C4859BD8(v90, type metadata accessor for GraphTriple);
          sub_1C4859BD8(v79, type metadata accessor for ConstructionGraphTriple);
          goto LABEL_44;
        }

        v58 = v91;
        sub_1C4859BD8(v90, type metadata accessor for GraphTriple);
        sub_1C4859BD8(v79, type metadata accessor for ConstructionGraphTriple);
        sub_1C4420C3C(v60, &unk_1EC0BC900, &unk_1C4F142D0);
        sub_1C4420C3C(v71, &unk_1EC0BCAE0, &unk_1C4F142A0);
        return v58;
      }

      sub_1C4859BD8(v79, type metadata accessor for ConstructionGraphTriple);
      v76 = &unk_1EC0BC900;
      v77 = &unk_1C4F142D0;
      sub_1C4420C3C(v60, &unk_1EC0BC900, &unk_1C4F142D0);
      v78 = v71;
    }

    sub_1C4420C3C(v78, &unk_1EC0BCAE0, &unk_1C4F142A0);
    sub_1C4420C3C(v75, v76, v77);
    return 0;
  }

  sub_1C445FFF0(v60, v102, &unk_1EC0BC900, &unk_1C4F142D0);
  if (sub_1C44157D4(v74, 1, v58) == 1)
  {
    sub_1C4420C3C(v74, &unk_1EC0BC900, &unk_1C4F142D0);
    goto LABEL_20;
  }

  v80 = v58;
  v81 = v100;
  sub_1C448AD18(v74, v100, type metadata accessor for GraphTriple);
  (*(v104 + 16))(v109, v81, v105);
  v82 = MEMORY[0x1E69E7CC0];
  v83 = v97;
  while (1)
  {
    sub_1C4EFF4E8();
    if (sub_1C44157D4(v38, 1, v80) == 1)
    {
      sub_1C4420C3C(v38, &unk_1EC0BC900, &unk_1C4F142D0);
LABEL_42:
      (*(v104 + 8))(v109, v105);
      sub_1C4859BD8(v100, type metadata accessor for GraphTriple);
      sub_1C4420C3C(v60, &unk_1EC0BC900, &unk_1C4F142D0);
      sub_1C4420C3C(v71, &unk_1EC0BCAE0, &unk_1C4F142A0);
      return MEMORY[0x1E69E7CC0];
    }

    sub_1C448AD18(v38, v73, type metadata accessor for GraphTriple);
    if ((sub_1C4EFF088() & 1) == 0)
    {
      sub_1C4859BD8(v73, type metadata accessor for GraphTriple);
      goto LABEL_42;
    }

    sub_1C4859B30(v73, v113, type metadata accessor for GraphTriple);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C44F1730(0, *(v82 + 16) + 1, 1, v82);
      v82 = v87;
    }

    v85 = *(v82 + 16);
    v84 = *(v82 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_1C44F1730(v84 > 1, v85 + 1, 1, v82);
      v82 = v88;
    }

    *(v82 + 16) = v85 + 1;
    sub_1C448AD18(v113, v82 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v85, type metadata accessor for GraphTriple);
    v86 = v115;
    sub_1C4EFF4D8();
    v115 = v86;
    if (v86)
    {
      break;
    }

    sub_1C4420C3C(v83, &unk_1EC0BC900, &unk_1C4F142D0);
    v73 = v111;
    sub_1C4859BD8(v111, type metadata accessor for GraphTriple);
  }

  v58 = type metadata accessor for GraphTriple;
  sub_1C4859BD8(v111, type metadata accessor for GraphTriple);
  (*(v104 + 8))(v109, v105);
  sub_1C4859BD8(v100, type metadata accessor for GraphTriple);

LABEL_44:
  sub_1C4420C3C(v60, &unk_1EC0BC900, &unk_1C4F142D0);
  sub_1C4420C3C(v71, &unk_1EC0BCAE0, &unk_1C4F142A0);
  return v58;
}

void sub_1C48579A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v130 = a6;
  v131 = a5;
  v151 = a4;
  v152 = a3;
  v150 = a2;
  v157 = a1;
  v6 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v136 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v137 = &v130 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v132 = &v130 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v140 = &v130 - v14;
  v15 = type metadata accessor for EventTriple(0);
  v143 = *(v15 - 8);
  v144 = v15;
  v16 = *(v143 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v141 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v142 = &v130 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v146 = &v130 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v148 = &v130 - v23;
  v24 = sub_1C456902C(&qword_1EC0BDFE8, &qword_1C4F54070);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v138 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v139 = &v130 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v133 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v130 - v32;
  v34 = type metadata accessor for ConstructionEventTriple(0);
  v155 = *(v34 - 8);
  v156 = v34;
  v35 = *(v155 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v145 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v147 = &v130 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v130 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v130 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v153 = &v130 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v130 - v48;
  v50 = sub_1C4EFF0C8();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v130 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v130 - v56;
  v134 = v51;
  v58 = *(v51 + 16);
  v58(&v130 - v56, v150, v50);
  v149 = v58;
  v150 = v51 + 16;
  v58(v55, v151, v50);
  v59 = sub_1C4EFF078();
  v151 = v50;
  v135 = v55;
  if (v59)
  {
    v146 = v57;
    v60 = MEMORY[0x1E69E7CC0];
    v61 = v133;
    while (1)
    {
      sub_1C4EFF4E8();
      if (sub_1C44157D4(v33, 1, v156) == 1)
      {
        sub_1C4420C3C(v33, &qword_1EC0BDFE8, &qword_1C4F54070);
        goto LABEL_32;
      }

      sub_1C448AD18(v33, v49, type metadata accessor for ConstructionEventTriple);
      if ((sub_1C4EFF088() & 1) == 0)
      {
        break;
      }

      sub_1C4859B30(v49, v153, type metadata accessor for ConstructionEventTriple);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458DA98(0, *(v60 + 16) + 1, 1, v60);
        v60 = v65;
      }

      v63 = *(v60 + 16);
      v62 = *(v60 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1C458DA98(v62 > 1, v63 + 1, 1, v60);
        v60 = v66;
      }

      *(v60 + 16) = v63 + 1;
      sub_1C448AD18(v153, v60 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v63, type metadata accessor for ConstructionEventTriple);
      v64 = v154;
      sub_1C4EFF4D8();
      v154 = v64;
      if (v64)
      {
        sub_1C4859BD8(v49, type metadata accessor for ConstructionEventTriple);
        v111 = *(v134 + 8);
        v111(v135, v50);
        v111(v146, v50);
        goto LABEL_61;
      }

      sub_1C4420C3C(v61, &qword_1EC0BDFE8, &qword_1C4F54070);
      sub_1C4859BD8(v49, type metadata accessor for ConstructionEventTriple);
    }

    sub_1C4859BD8(v49, type metadata accessor for ConstructionEventTriple);
LABEL_32:
    sub_1C4EF9AE8();
    v90 = *(v60 + 16);
    if (v90)
    {
      v91 = v89;
      v158 = MEMORY[0x1E69E7CC0];
      sub_1C459E630();
      v92 = 0;
      v93 = v158;
      v148 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v147 = v60 + v148;
      v152 = v60;
      v153 = v90;
      while (v92 < *(v60 + 16))
      {
        v157 = *(v155 + 72);
        sub_1C4859B30(v147 + v157 * v92, v42, type metadata accessor for ConstructionEventTriple);
        v149(v45, v42, v50);
        v94 = v156;
        v95 = v156[5];
        v96 = sub_1C4EFEEF8();
        v97 = *(*(v96 - 8) + 16);
        v97(&v45[v95], &v42[v95], v96);
        v98 = v94[6];
        v99 = sub_1C4EFF8A8();
        (*(*(v99 - 8) + 16))(&v45[v98], &v42[v98], v99);
        v97(&v45[v94[7]], &v42[v94[7]], v96);
        v100 = v94[8];
        v101 = *&v42[v94[9]];
        v103 = *&v42[v100];
        v102 = *&v42[v100 + 8];
        v104 = *&v42[v94[10]];
        v105 = &v42[v94[11]];
        v106 = *v105;
        v107 = *(v105 + 1);
        v108 = &v45[v100];
        *v108 = v103;
        *(v108 + 1) = v102;
        *&v45[v94[9]] = v101;
        *&v45[v94[10]] = v104;
        v109 = &v45[v94[11]];
        *v109 = v106;
        *(v109 + 1) = v107;
        *&v45[v94[12]] = v91;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4859BD8(v42, type metadata accessor for ConstructionEventTriple);
        v158 = v93;
        v110 = *(v93 + 16);
        if (v110 >= *(v93 + 24) >> 1)
        {
          sub_1C459E630();
          v93 = v158;
        }

        ++v92;
        *(v93 + 16) = v110 + 1;
        sub_1C448AD18(v45, v93 + v148 + v110 * v157, type metadata accessor for ConstructionEventTriple);
        v60 = v152;
        v50 = v151;
        if (v153 == v92)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_40:
      v67 = v146;
LABEL_59:
      v125 = *(v134 + 8);
      v126 = v151;
      v125(v135, v151);
      v125(v67, v126);
    }
  }

  else
  {
    sub_1C4859B90(&unk_1EDDFA1B0, MEMORY[0x1E69A9810]);
    v67 = v57;
    if ((sub_1C4F01068() & 1) == 0)
    {
      v78 = MEMORY[0x1E69E7CC0];
      v79 = v154;
      v80 = v135;
      v81 = v137;
      while (1)
      {
        v82 = v139;
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v82, 1, v156) == 1)
        {
          break;
        }

        v83 = v147;
        sub_1C448AD18(v82, v147, type metadata accessor for ConstructionEventTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v83, type metadata accessor for ConstructionEventTriple);
          goto LABEL_45;
        }

        sub_1C4859B30(v83, v145, type metadata accessor for ConstructionEventTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458DA98(0, *(v78 + 16) + 1, 1, v78);
          v78 = v87;
        }

        v85 = *(v78 + 16);
        v84 = *(v78 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_1C458DA98(v84 > 1, v85 + 1, 1, v78);
          v78 = v88;
        }

        *(v78 + 16) = v85 + 1;
        sub_1C448AD18(v145, v78 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v85, type metadata accessor for ConstructionEventTriple);
        v86 = v138;
        sub_1C4EFF4D8();
        if (v79)
        {
          sub_1C4859BD8(v147, type metadata accessor for ConstructionEventTriple);
          v122 = v80;
          v123 = *(v134 + 8);
          v124 = v151;
          v123(v122, v151);
          v123(v67, v124);
          goto LABEL_61;
        }

        sub_1C4420C3C(v86, &qword_1EC0BDFE8, &qword_1C4F54070);
        sub_1C4859BD8(v147, type metadata accessor for ConstructionEventTriple);
      }

      sub_1C4420C3C(v82, &qword_1EC0BDFE8, &qword_1C4F54070);
LABEL_45:
      v112 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v81, 1, v144) == 1)
        {
          break;
        }

        v113 = v142;
        sub_1C448AD18(v81, v142, type metadata accessor for EventTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v113, type metadata accessor for EventTriple);
          goto LABEL_58;
        }

        sub_1C4859B30(v113, v141, type metadata accessor for EventTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458BAC8(0, *(v112 + 16) + 1, 1, v112);
          v112 = v117;
        }

        v115 = *(v112 + 16);
        v114 = *(v112 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_1C458BAC8(v114 > 1, v115 + 1, 1, v112);
          v112 = v118;
        }

        *(v112 + 16) = v115 + 1;
        sub_1C448AD18(v141, v112 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v115, type metadata accessor for EventTriple);
        v116 = v136;
        sub_1C4EFF4D8();
        if (v79)
        {
          sub_1C4859BD8(v142, type metadata accessor for EventTriple);
          v127 = v80;
          v128 = *(v134 + 8);
          v129 = v151;
          v128(v127, v151);
          v128(v67, v129);

          goto LABEL_61;
        }

        sub_1C4420C3C(v116, &unk_1EC0BC8E0, &qword_1C4F29AC0);
        sub_1C4859BD8(v142, type metadata accessor for EventTriple);
        v81 = v137;
      }

      sub_1C4420C3C(v81, &unk_1EC0BC8E0, &qword_1C4F29AC0);
LABEL_58:
      v131(v78, v112);

      goto LABEL_59;
    }

    v68 = MEMORY[0x1E69E7CC0];
    v69 = v154;
    v70 = v135;
    v71 = v132;
    while (1)
    {
      v72 = v140;
      sub_1C4EFF4E8();
      if (sub_1C44157D4(v72, 1, v144) == 1)
      {
        sub_1C4420C3C(v72, &unk_1EC0BC8E0, &qword_1C4F29AC0);
        goto LABEL_59;
      }

      v73 = v148;
      sub_1C448AD18(v72, v148, type metadata accessor for EventTriple);
      if ((sub_1C4EFF088() & 1) == 0)
      {
        sub_1C4859BD8(v73, type metadata accessor for EventTriple);
        goto LABEL_59;
      }

      sub_1C4859B30(v73, v146, type metadata accessor for EventTriple);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458BAC8(0, *(v68 + 16) + 1, 1, v68);
        v68 = v76;
      }

      v75 = *(v68 + 16);
      v74 = *(v68 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1C458BAC8(v74 > 1, v75 + 1, 1, v68);
        v68 = v77;
      }

      *(v68 + 16) = v75 + 1;
      sub_1C448AD18(v146, v68 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v75, type metadata accessor for EventTriple);
      sub_1C4EFF4D8();
      if (v69)
      {
        break;
      }

      sub_1C4420C3C(v71, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      sub_1C4859BD8(v148, type metadata accessor for EventTriple);
    }

    sub_1C4859BD8(v148, type metadata accessor for EventTriple);
    v119 = v70;
    v120 = *(v134 + 8);
    v121 = v151;
    v120(v119, v151);
    v120(v67, v121);
LABEL_61:
  }
}

void sub_1C4858A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v130 = a6;
  v131 = a5;
  v151 = a4;
  v152 = a3;
  v150 = a2;
  v157 = a1;
  v6 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v136 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v137 = &v130 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v132 = &v130 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v140 = &v130 - v14;
  v15 = type metadata accessor for GraphTriple(0);
  v143 = *(v15 - 8);
  v144 = v15;
  v16 = *(v143 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v141 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v142 = &v130 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v146 = &v130 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v148 = &v130 - v23;
  v24 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v138 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v139 = &v130 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v133 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v130 - v32;
  v34 = type metadata accessor for ConstructionGraphTriple(0);
  v155 = *(v34 - 8);
  v156 = v34;
  v35 = *(v155 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v145 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v147 = &v130 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v130 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v130 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v153 = &v130 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v130 - v48;
  v50 = sub_1C4EFF0C8();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v130 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v130 - v56;
  v134 = v51;
  v58 = *(v51 + 16);
  v58(&v130 - v56, v150, v50);
  v149 = v58;
  v150 = v51 + 16;
  v58(v55, v151, v50);
  v59 = sub_1C4EFF078();
  v151 = v50;
  v135 = v55;
  if (v59)
  {
    v146 = v57;
    v60 = MEMORY[0x1E69E7CC0];
    v61 = v133;
    while (1)
    {
      sub_1C4EFF4E8();
      if (sub_1C44157D4(v33, 1, v156) == 1)
      {
        sub_1C4420C3C(v33, &unk_1EC0BCAE0, &unk_1C4F142A0);
        goto LABEL_32;
      }

      sub_1C448AD18(v33, v49, type metadata accessor for ConstructionGraphTriple);
      if ((sub_1C4EFF088() & 1) == 0)
      {
        break;
      }

      sub_1C4859B30(v49, v153, type metadata accessor for ConstructionGraphTriple);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44EE8C8(0, *(v60 + 16) + 1, 1, v60);
        v60 = v65;
      }

      v63 = *(v60 + 16);
      v62 = *(v60 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1C44EE8C8(v62 > 1, v63 + 1, 1, v60);
        v60 = v66;
      }

      *(v60 + 16) = v63 + 1;
      sub_1C448AD18(v153, v60 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v63, type metadata accessor for ConstructionGraphTriple);
      v64 = v154;
      sub_1C4EFF4D8();
      v154 = v64;
      if (v64)
      {
        sub_1C4859BD8(v49, type metadata accessor for ConstructionGraphTriple);
        v111 = *(v134 + 8);
        v111(v135, v50);
        v111(v146, v50);
        goto LABEL_61;
      }

      sub_1C4420C3C(v61, &unk_1EC0BCAE0, &unk_1C4F142A0);
      sub_1C4859BD8(v49, type metadata accessor for ConstructionGraphTriple);
    }

    sub_1C4859BD8(v49, type metadata accessor for ConstructionGraphTriple);
LABEL_32:
    sub_1C4EF9AE8();
    v90 = *(v60 + 16);
    if (v90)
    {
      v91 = v89;
      v158 = MEMORY[0x1E69E7CC0];
      sub_1C459DC78();
      v92 = 0;
      v93 = v158;
      v148 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v147 = v60 + v148;
      v152 = v60;
      v153 = v90;
      while (v92 < *(v60 + 16))
      {
        v157 = *(v155 + 72);
        sub_1C4859B30(v147 + v157 * v92, v42, type metadata accessor for ConstructionGraphTriple);
        v149(v45, v42, v50);
        v94 = v156;
        v95 = v156[5];
        v96 = sub_1C4EFEEF8();
        v97 = *(*(v96 - 8) + 16);
        v97(&v45[v95], &v42[v95], v96);
        v98 = v94[6];
        v99 = sub_1C4EFF8A8();
        (*(*(v99 - 8) + 16))(&v45[v98], &v42[v98], v99);
        v97(&v45[v94[7]], &v42[v94[7]], v96);
        v100 = v94[8];
        v101 = *&v42[v94[9]];
        v103 = *&v42[v100];
        v102 = *&v42[v100 + 8];
        v104 = *&v42[v94[10]];
        v105 = &v42[v94[11]];
        v106 = *v105;
        v107 = *(v105 + 1);
        v108 = &v45[v100];
        *v108 = v103;
        *(v108 + 1) = v102;
        *&v45[v94[9]] = v101;
        *&v45[v94[10]] = v104;
        v109 = &v45[v94[11]];
        *v109 = v106;
        *(v109 + 1) = v107;
        *&v45[v94[12]] = v91;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4859BD8(v42, type metadata accessor for ConstructionGraphTriple);
        v158 = v93;
        v110 = *(v93 + 16);
        if (v110 >= *(v93 + 24) >> 1)
        {
          sub_1C459DC78();
          v93 = v158;
        }

        ++v92;
        *(v93 + 16) = v110 + 1;
        sub_1C448AD18(v45, v93 + v148 + v110 * v157, type metadata accessor for ConstructionGraphTriple);
        v60 = v152;
        v50 = v151;
        if (v153 == v92)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_40:
      v67 = v146;
LABEL_59:
      v125 = *(v134 + 8);
      v126 = v151;
      v125(v135, v151);
      v125(v67, v126);
    }
  }

  else
  {
    sub_1C4859B90(&unk_1EDDFA1B0, MEMORY[0x1E69A9810]);
    v67 = v57;
    if ((sub_1C4F01068() & 1) == 0)
    {
      v78 = MEMORY[0x1E69E7CC0];
      v79 = v154;
      v80 = v135;
      v81 = v137;
      while (1)
      {
        v82 = v139;
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v82, 1, v156) == 1)
        {
          break;
        }

        v83 = v147;
        sub_1C448AD18(v82, v147, type metadata accessor for ConstructionGraphTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v83, type metadata accessor for ConstructionGraphTriple);
          goto LABEL_45;
        }

        sub_1C4859B30(v83, v145, type metadata accessor for ConstructionGraphTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44EE8C8(0, *(v78 + 16) + 1, 1, v78);
          v78 = v87;
        }

        v85 = *(v78 + 16);
        v84 = *(v78 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_1C44EE8C8(v84 > 1, v85 + 1, 1, v78);
          v78 = v88;
        }

        *(v78 + 16) = v85 + 1;
        sub_1C448AD18(v145, v78 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v85, type metadata accessor for ConstructionGraphTriple);
        v86 = v138;
        sub_1C4EFF4D8();
        if (v79)
        {
          sub_1C4859BD8(v147, type metadata accessor for ConstructionGraphTriple);
          v122 = v80;
          v123 = *(v134 + 8);
          v124 = v151;
          v123(v122, v151);
          v123(v67, v124);
          goto LABEL_61;
        }

        sub_1C4420C3C(v86, &unk_1EC0BCAE0, &unk_1C4F142A0);
        sub_1C4859BD8(v147, type metadata accessor for ConstructionGraphTriple);
      }

      sub_1C4420C3C(v82, &unk_1EC0BCAE0, &unk_1C4F142A0);
LABEL_45:
      v112 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C4EFF4E8();
        if (sub_1C44157D4(v81, 1, v144) == 1)
        {
          break;
        }

        v113 = v142;
        sub_1C448AD18(v81, v142, type metadata accessor for GraphTriple);
        if ((sub_1C4EFF088() & 1) == 0)
        {
          sub_1C4859BD8(v113, type metadata accessor for GraphTriple);
          goto LABEL_58;
        }

        sub_1C4859B30(v113, v141, type metadata accessor for GraphTriple);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44F1730(0, *(v112 + 16) + 1, 1, v112);
          v112 = v117;
        }

        v115 = *(v112 + 16);
        v114 = *(v112 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_1C44F1730(v114 > 1, v115 + 1, 1, v112);
          v112 = v118;
        }

        *(v112 + 16) = v115 + 1;
        sub_1C448AD18(v141, v112 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v115, type metadata accessor for GraphTriple);
        v116 = v136;
        sub_1C4EFF4D8();
        if (v79)
        {
          sub_1C4859BD8(v142, type metadata accessor for GraphTriple);
          v127 = v80;
          v128 = *(v134 + 8);
          v129 = v151;
          v128(v127, v151);
          v128(v67, v129);

          goto LABEL_61;
        }

        sub_1C4420C3C(v116, &unk_1EC0BC900, &unk_1C4F142D0);
        sub_1C4859BD8(v142, type metadata accessor for GraphTriple);
        v81 = v137;
      }

      sub_1C4420C3C(v81, &unk_1EC0BC900, &unk_1C4F142D0);
LABEL_58:
      v131(v78, v112);

      goto LABEL_59;
    }

    v68 = MEMORY[0x1E69E7CC0];
    v69 = v154;
    v70 = v135;
    v71 = v132;
    while (1)
    {
      v72 = v140;
      sub_1C4EFF4E8();
      if (sub_1C44157D4(v72, 1, v144) == 1)
      {
        sub_1C4420C3C(v72, &unk_1EC0BC900, &unk_1C4F142D0);
        goto LABEL_59;
      }

      v73 = v148;
      sub_1C448AD18(v72, v148, type metadata accessor for GraphTriple);
      if ((sub_1C4EFF088() & 1) == 0)
      {
        sub_1C4859BD8(v73, type metadata accessor for GraphTriple);
        goto LABEL_59;
      }

      sub_1C4859B30(v73, v146, type metadata accessor for GraphTriple);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44F1730(0, *(v68 + 16) + 1, 1, v68);
        v68 = v76;
      }

      v75 = *(v68 + 16);
      v74 = *(v68 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1C44F1730(v74 > 1, v75 + 1, 1, v68);
        v68 = v77;
      }

      *(v68 + 16) = v75 + 1;
      sub_1C448AD18(v146, v68 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v75, type metadata accessor for GraphTriple);
      sub_1C4EFF4D8();
      if (v69)
      {
        break;
      }

      sub_1C4420C3C(v71, &unk_1EC0BC900, &unk_1C4F142D0);
      sub_1C4859BD8(v148, type metadata accessor for GraphTriple);
    }

    sub_1C4859BD8(v148, type metadata accessor for GraphTriple);
    v119 = v70;
    v120 = *(v134 + 8);
    v121 = v151;
    v120(v119, v151);
    v120(v67, v121);
LABEL_61:
  }
}

uint64_t sub_1C4859B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4859B90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4859BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4859C48()
{
  sub_1C4413284();

  sub_1C4485F10();
  v2 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple();
  sub_1C456902C(&qword_1EC0BE458, &qword_1C4F371C8);
  sub_1C4F01198();
  sub_1C441C2C0();

  sub_1C44883E4();
  v3 = v2[5];
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v4, v5);
  sub_1C4F02858();
  sub_1C441C2C0();

  sub_1C44A17C4();
  v6 = v2[6];
  sub_1C4EFEEF8();
  sub_1C442CB58();
  sub_1C4490F60(v7, v8);
  sub_1C4475BE4();
  sub_1C441B9C0();

  sub_1C44584C0();
  v9 = v2[7];
  sub_1C4EFF8A8();
  sub_1C4406FE8();
  sub_1C4490F60(v10, v11);
  sub_1C4F02858();
  sub_1C441B9C0();

  sub_1C440EFB4();
  v12 = v0 + v2[8];
  v13 = sub_1C4F02858();
  MEMORY[0x1C6940010](v13);

  v14 = sub_1C44562C4();
  MEMORY[0x1C6940010](v14, 0xE500000000000000);
  v15 = sub_1C441F870(v2[9]);
  MEMORY[0x1C6940010](v15);
  sub_1C440EFB4();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C44562C4();
  MEMORY[0x1C6940010](v16, v1);

  sub_1C446BC6C();
  sub_1C44506EC();
  v18 = *(v0 + v2[10]);
  sub_1C44578F0();
  sub_1C44506EC();
  sub_1C4423700(v2[11]);
  sub_1C44584C0();
  sub_1C4867FB4(v2[12]);

  sub_1C4451304();
  sub_1C4867FF8();
  MEMORY[0x1C6940010](v18);

  sub_1C4424CC4();
  sub_1C4423700(v2[13]);
  sub_1C4867FF8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010]();

  return v1;
}

uint64_t sub_1C4859F28(uint64_t (*a1)(uint64_t), uint64_t *a2, uint64_t *a3)
{
  sub_1C4413284();

  v8 = sub_1C4485F10();
  v9 = a1(v8);
  sub_1C456902C(a2, a3);
  sub_1C4F01198();
  sub_1C441C2C0();

  sub_1C44883E4();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v10, v11);
  sub_1C4F02858();
  sub_1C441C2C0();

  sub_1C44A17C4();
  v12 = v9[5];
  sub_1C4EFEEF8();
  sub_1C442CB58();
  sub_1C4490F60(v13, v14);
  sub_1C4475BE4();
  sub_1C441B9C0();

  sub_1C44584C0();
  v15 = v9[6];
  sub_1C4EFF8A8();
  sub_1C4406FE8();
  sub_1C4490F60(v16, v17);
  sub_1C4F02858();
  sub_1C441B9C0();

  sub_1C440EFB4();
  v18 = v3 + v9[7];
  v19 = sub_1C4F02858();
  MEMORY[0x1C6940010](v19);

  v20 = sub_1C44562C4();
  MEMORY[0x1C6940010](v20, 0xE500000000000000);
  v21 = sub_1C441F870(v9[8]);
  MEMORY[0x1C6940010](v21);
  sub_1C440EFB4();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = sub_1C44562C4();
  MEMORY[0x1C6940010](v22, v4);

  sub_1C446BC6C();
  sub_1C44506EC();
  v24 = *(v3 + v9[9]);
  sub_1C44578F0();
  sub_1C44506EC();
  sub_1C4423700(v9[10]);
  sub_1C44584C0();
  sub_1C4867FB4(v9[11]);

  sub_1C4451304();
  sub_1C4867FF8();
  MEMORY[0x1C6940010](v24);

  sub_1C4424CC4();
  sub_1C4423700(v9[12]);
  sub_1C4867FF8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010]();

  return v4;
}

uint64_t sub_1C485A20C()
{
  v1 = v0;
  sub_1C4F02248();

  v2 = type metadata accessor for EventTriple(0);
  sub_1C456902C(&qword_1EC0BE3C0, &qword_1C4F36908);
  v3 = sub_1C4F01198();
  MEMORY[0x1C6940010](v3);

  MEMORY[0x1C6940010](658141984, 0xE400000000000000);
  sub_1C4EFF0C8();
  sub_1C4490F60(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
  v4 = sub_1C4F02858();
  MEMORY[0x1C6940010](v4);

  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  v5 = v2[5];
  sub_1C4EFEEF8();
  sub_1C4490F60(&qword_1EC0BA1F0, MEMORY[0x1E69A9748]);
  v6 = sub_1C4F02858();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](0x273A69722027, 0xE600000000000000);
  v7 = v2[6];
  sub_1C4EFF8A8();
  sub_1C4490F60(&qword_1EC0BDAB8, MEMORY[0x1E69A99E8]);
  v8 = sub_1C4F02858();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](8231, 0xE200000000000000);
  v9 = v1 + v2[7];
  v10 = sub_1C4F02858();
  MEMORY[0x1C6940010](v10);

  MEMORY[0x1C6940010](0x273A6F2027, 0xE500000000000000);
  MEMORY[0x1C6940010](*(v1 + v2[8]), *(v1 + v2[8] + 8));
  MEMORY[0x1C6940010](8231, 0xE200000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](658141298, 0xE400000000000000);

  sub_1C4F02248();
  MEMORY[0x1C6940010](0x273A637273, 0xE500000000000000);
  v17 = *(v1 + v2[9]);
  sub_1C4F02438();
  MEMORY[0x1C6940010](0x273A632027, 0xE500000000000000);
  v11 = *(v1 + v2[10]);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](0x273A64732027, 0xE600000000000000);
  v12 = (v1 + v2[11]);
  v13 = *v12;
  v14 = v12[1];
  sub_1C4F02248();

  MEMORY[0x1C6940010](v13, v14);
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4F9C290);

  MEMORY[0x1C6940010](0x27203A73742027, 0xE700000000000000);
  v15 = *(v1 + v2[12]);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0, 0xE000000000000000);

  return 60;
}

uint64_t EntityTriple.init(subject:predicate:relationshipId:relationshipPredicate:object:source:sourceId:timestamp:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char *a12)
{
  v33 = *a12;
  v19 = sub_1C4EFF0C8();
  sub_1C43FBCE0(v19);
  (*(v20 + 32))(a9, a1);
  v21 = type metadata accessor for EntityTriple(0);
  v22 = v21[5];
  v23 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v23);
  v25 = *(v24 + 32);
  v25(a9 + v22, a2, v23);
  v26 = v21[6];
  v27 = sub_1C4EFF8A8();
  sub_1C43FBCE0(v27);
  (*(v28 + 32))(a9 + v26, a3);
  v25(a9 + v21[7], a4, v23);
  v29 = (a9 + v21[8]);
  *v29 = a5;
  v29[1] = a6;
  result = sub_1C448B210(a7, a9 + v21[9]);
  v31 = (a9 + v21[10]);
  *v31 = a8;
  v31[1] = a11;
  *(a9 + v21[11]) = a10;
  *(a9 + v21[12]) = v33;
  return result;
}

uint64_t GraphTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for GraphTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485A978(uint64_t a1)
{
  v2 = sub_1C44F0EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485A9B4(uint64_t a1)
{
  v2 = sub_1C44F0EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GraphTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0BE030, &qword_1C4F32570);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C44F0EF8();
  sub_1C440F61C();
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v5, v6);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for GraphTriple(0);
    sub_1C4404F64(v7);
    sub_1C442235C(v8);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v9, v10);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v11, v12);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20();
    sub_1C44350A0();
    sub_1C44586F8();
    sub_1C441CA4C();
    sub_1C44C1238();
    sub_1C440F740();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

unint64_t sub_1C485AC04()
{
  result = qword_1EDDF5330;
  if (!qword_1EDDF5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF5330);
  }

  return result;
}

uint64_t sub_1C485AD6C()
{
  sub_1C4490F60(&qword_1EDDEBBC8, type metadata accessor for GraphTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485AEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDEBBB8, type metadata accessor for GraphTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t EventTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for EventTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485B06C()
{
  v2 = sub_1C44059B8();
  v4 = (v1 + *(v3(v2) + 44));
  v5 = v4[1];
  *v0 = *v4;
  v0[1] = v5;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C485B10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t (*a12)(void))
{
  v18 = *a7;
  v19 = a8[1];
  v33 = *a8;
  v20 = sub_1C4EFF0C8();
  sub_1C43FBCE0(v20);
  (*(v21 + 32))(a9, a1);
  v22 = a12(0);
  v23 = v22[5];
  v24 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v24);
  v26 = *(v25 + 32);
  v26(a9 + v23, a2, v24);
  v27 = v22[6];
  v28 = sub_1C4EFF8A8();
  sub_1C43FBCE0(v28);
  (*(v29 + 32))(a9 + v27, a3);
  result = (v26)(a9 + v22[7], a4, v24);
  v31 = (a9 + v22[8]);
  *v31 = a5;
  v31[1] = a6;
  *(a9 + v22[9]) = v18;
  *(a9 + v22[10]) = a10;
  v32 = (a9 + v22[11]);
  *v32 = v33;
  v32[1] = v19;
  *(a9 + v22[12]) = a11;
  return result;
}

BOOL sub_1C485B2AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1C4404078();
  if ((sub_1C4EFF088() & 1) == 0)
  {
    return 0;
  }

  v6 = a3(0);
  v7 = sub_1C441DD4C(v6[5]);
  if ((sub_1C44DBB50(v7, v8) & 1) == 0)
  {
    return 0;
  }

  sub_1C441DD4C(v6[6]);
  if ((sub_1C4EFF878() & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1C441DD4C(v6[7]);
  if ((sub_1C44DBB50(v9, v10) & 1) == 0)
  {
    return 0;
  }

  v11 = v6[8];
  v12 = *(v4 + v11);
  v13 = *(v4 + v11 + 8);
  sub_1C4495D00((v3 + v11));
  v16 = v16 && v14 == v15;
  if (!v16 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (*(v4 + v6[9]) != *(v3 + v6[9]))
  {
    return 0;
  }

  sub_1C443E358(v6[10]);
  if (!v16)
  {
    return 0;
  }

  v17 = v6[11];
  v18 = *(v4 + v17);
  v19 = *(v4 + v17 + 8);
  sub_1C4495D00((v3 + v17));
  v22 = v16 && v20 == v21;
  if (!v22 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  sub_1C443E358(v6[12]);
  return v16;
}

uint64_t sub_1C485B3A4(uint64_t a1)
{
  v2 = sub_1C4863384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485B3E0(uint64_t a1)
{
  v2 = sub_1C4863384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0BE040, &qword_1C4F32580);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4863384();
  sub_1C440F61C();
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v5, v6);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for EventTriple(0);
    sub_1C4404F64(v7);
    sub_1C442235C(v8);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v9, v10);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v11, v12);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20();
    sub_1C44350A0();
    sub_1C44586F8();
    sub_1C441CA4C();
    sub_1C44C1238();
    sub_1C440F740();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485B660(void (*a1)(_BYTE *))
{
  sub_1C441EC18();
  a1(v3);
  return sub_1C4F02B68();
}

uint64_t sub_1C485B798(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C4F02AF8();
  a4(v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C485B7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDFF930, type metadata accessor for EventTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485B898()
{
  sub_1C4490F60(&qword_1EDDEBC20, type metadata accessor for EventTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485BA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDEBC10, type metadata accessor for EventTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ExpiredGraphTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ExpiredGraphTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485BBE8(uint64_t a1)
{
  v2 = sub_1C48633D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485BC24(uint64_t a1)
{
  v2 = sub_1C48633D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExpiredGraphTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0BE050, &qword_1C4F32590);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C48633D8();
  sub_1C440F61C();
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v5, v6);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for ExpiredGraphTriple(0);
    sub_1C4404F64(v7);
    sub_1C442235C(v8);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v9, v10);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v11, v12);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20();
    sub_1C44350A0();
    sub_1C44586F8();
    sub_1C441CA4C();
    sub_1C44C1238();
    sub_1C440F740();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485BF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE3B8, type metadata accessor for ExpiredGraphTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485C074()
{
  sub_1C4490F60(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485C20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF4F10, type metadata accessor for ExpiredGraphTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ExpiredEventTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ExpiredEventTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485C3F4(uint64_t a1)
{
  v2 = sub_1C486344C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485C430(uint64_t a1)
{
  v2 = sub_1C486344C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExpiredEventTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0BE060, &qword_1C4F325A0);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C486344C();
  sub_1C440F61C();
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v5, v6);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for ExpiredEventTriple(0);
    sub_1C4404F64(v7);
    sub_1C442235C(v8);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v9, v10);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v11, v12);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20();
    sub_1C44350A0();
    sub_1C44586F8();
    sub_1C441CA4C();
    sub_1C44C1238();
    sub_1C440F740();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485C778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDFB338, type metadata accessor for ExpiredEventTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485C880()
{
  sub_1C4490F60(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485CA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE5BE8, type metadata accessor for ExpiredEventTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ConstructionGraphTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ConstructionGraphTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485CC18(uint64_t a1)
{
  v2 = sub_1C44F0158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485CC54(uint64_t a1)
{
  v2 = sub_1C44F0158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ConstructionGraphTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0BE070, &qword_1C4F325B0);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C44F0158();
  sub_1C440F61C();
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v5, v6);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for ConstructionGraphTriple(0);
    sub_1C4404F64(v7);
    sub_1C442235C(v8);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v9, v10);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v11, v12);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20();
    sub_1C44350A0();
    sub_1C44586F8();
    sub_1C441CA4C();
    sub_1C44C1238();
    sub_1C440F740();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485CFA4()
{
  sub_1C4490F60(&qword_1EDDE2658, type metadata accessor for ConstructionGraphTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485D128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE2648, type metadata accessor for ConstructionGraphTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ConstructionEventTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ConstructionEventTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485D320(uint64_t a1)
{
  v2 = sub_1C48634C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485D35C(uint64_t a1)
{
  v2 = sub_1C48634C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ConstructionEventTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0BE080, &qword_1C4F325C0);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C48634C0();
  sub_1C440F61C();
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v5, v6);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for ConstructionEventTriple(0);
    sub_1C4404F64(v7);
    sub_1C442235C(v8);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v9, v10);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v11, v12);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20();
    sub_1C44350A0();
    sub_1C44586F8();
    sub_1C441CA4C();
    sub_1C44C1238();
    sub_1C440F740();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485D718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE2738, type metadata accessor for ConstructionEventTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485D7C4()
{
  sub_1C4490F60(&qword_1EDDE2760, type metadata accessor for ConstructionEventTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485D948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE2750, type metadata accessor for ConstructionEventTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ExpiredConstructionGraphTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ExpiredConstructionGraphTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485DB30(uint64_t a1)
{
  v2 = sub_1C4863534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485DB6C(uint64_t a1)
{
  v2 = sub_1C4863534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExpiredConstructionGraphTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0BE090, &qword_1C4F325D0);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4863534();
  sub_1C440F61C();
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v5, v6);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for ExpiredConstructionGraphTriple(0);
    sub_1C4404F64(v7);
    sub_1C442235C(v8);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v9, v10);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v11, v12);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20();
    sub_1C44350A0();
    sub_1C44586F8();
    sub_1C441CA4C();
    sub_1C44C1238();
    sub_1C440F740();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485DEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDDF228, type metadata accessor for ExpiredConstructionGraphTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485DFBC()
{
  sub_1C4490F60(&qword_1EDDDF240, type metadata accessor for ExpiredConstructionGraphTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485E154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDDF230, type metadata accessor for ExpiredConstructionGraphTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ExpiredConstructionEventTriple.sources.getter()
{
  v0 = sub_1C44059B8();
  v1 = type metadata accessor for ExpiredConstructionEventTriple(v0);
  return sub_1C441C2A4(v1);
}

uint64_t sub_1C485E33C()
{
  sub_1C4404078();
  sub_1C447CDB8();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (sub_1C43FEC00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1C444C280();
    v6 = v4 && v0 == v2;
    if (v6 || (sub_1C43FEC00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v1 == sub_1C440C564() && v0 == v7;
      if (v8 || (sub_1C43FEC00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v1 == 0xD000000000000015 && 0x80000001C4F86600 == v0;
        if (v9 || (sub_1C43FEC00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          sub_1C445ABD4();
          v10 = v4 && v0 == 0xE600000000000000;
          if (v10 || (sub_1C43FEC00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = v1 == 0x73656372756F73 && v0 == 0xE700000000000000;
            if (v11 || (sub_1C43FEC00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = v1 == 0x6E656469666E6F63 && v0 == 0xEA00000000006563;
              if (v12 || (sub_1C43FEC00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = v1 == 0xD000000000000010 && 0x80000001C4F86630 == v0;
                if (v13 || (sub_1C43FEC00() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  sub_1C44BBE04();
                  if (v4 && v0 == v14)
                  {

                    return 8;
                  }

                  else
                  {
                    sub_1C43FEC00();
                    sub_1C440F210();
                    if (v1)
                    {
                      return 8;
                    }

                    else
                    {
                      return 9;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C485E544(uint64_t a1)
{
  v2 = sub_1C48635A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485E580(uint64_t a1)
{
  v2 = sub_1C48635A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExpiredConstructionEventTriple.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0BE0A0, &qword_1C4F325E0);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C48635A8();
  sub_1C440F61C();
  sub_1C445BD88();
  sub_1C4419854();
  sub_1C4490F60(v5, v6);
  sub_1C443F630();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for ExpiredConstructionEventTriple(0);
    sub_1C4404F64(v7);
    sub_1C442235C(v8);
    sub_1C4EFEEF8();
    sub_1C442CB58();
    sub_1C4490F60(v9, v10);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C4416104();
    sub_1C4406FE8();
    sub_1C4490F60(v11, v12);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4413248();
    sub_1C440E36C();
    sub_1C4425118();
    sub_1C4405C88();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4408B20();
    sub_1C44350A0();
    sub_1C44586F8();
    sub_1C441CA4C();
    sub_1C44C1238();
    sub_1C440F740();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C485E7E8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  sub_1C4403FC0();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v5, v6);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  v7 = a2(0);
  v8 = v7[5];
  sub_1C4EFEEF8();
  sub_1C442CB58();
  sub_1C4490F60(v9, v10);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  v11 = v7[6];
  sub_1C4EFF8A8();
  sub_1C4406FE8();
  sub_1C4490F60(v12, v13);
  sub_1C44AB174();
  v14 = v4 + v7[7];
  sub_1C4404BCC();
  sub_1C4F00FE8();
  sub_1C4461CC0(v7[8]);
  MEMORY[0x1C6941830](*(v4 + v7[9]));
  v15 = *(v4 + v7[10]);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1C6941830](*&v15);
  sub_1C4461CC0(v7[11]);
  v16 = *(v4 + v7[12]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  return MEMORY[0x1C6941830](*&v16);
}

uint64_t sub_1C485EA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE388, type metadata accessor for ExpiredConstructionEventTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C485EB48()
{
  sub_1C4490F60(&qword_1EC0BDFE0, type metadata accessor for ExpiredConstructionEventTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485ECE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE378, type metadata accessor for ExpiredConstructionEventTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t EntityTriple.pipelineType.getter()
{
  v2 = sub_1C44059B8();
  result = type metadata accessor for EntityTriple(v2);
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t sub_1C485EE54(uint64_t a1)
{
  v2 = sub_1C44C17FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485EE90(uint64_t a1)
{
  v2 = sub_1C44C17FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C485EF10()
{
  v1 = v0;
  v2 = type metadata accessor for Source();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1C4F02248();

  v26 = 60;
  v27 = 0xE100000000000000;
  v6 = type metadata accessor for TranslatedEntityTriple(0);
  v25[1] = v6;
  sub_1C456902C(&qword_1EC0BE368, &qword_1C4F368C8);
  v7 = sub_1C4F01198();
  MEMORY[0x1C6940010](v7);

  MEMORY[0x1C6940010](658141984, 0xE400000000000000);
  sub_1C4EFF0C8();
  sub_1C4490F60(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
  v8 = sub_1C4F02858();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  v9 = v6[5];
  sub_1C4EFEEF8();
  sub_1C4490F60(&qword_1EC0BA1F0, MEMORY[0x1E69A9748]);
  v10 = sub_1C4F02858();
  MEMORY[0x1C6940010](v10);

  MEMORY[0x1C6940010](39, 0xE100000000000000);
  v12 = v26;
  v11 = v27;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1C4F02248();

  v26 = 0x273A697220;
  v27 = 0xE500000000000000;
  v13 = v6[6];
  sub_1C4EFF8A8();
  sub_1C4490F60(&qword_1EC0BDAB8, MEMORY[0x1E69A99E8]);
  v14 = sub_1C4F02858();
  MEMORY[0x1C6940010](v14);

  MEMORY[0x1C6940010](0x273A70722027, 0xE600000000000000);
  v15 = v1 + v6[7];
  v16 = sub_1C4F02858();
  MEMORY[0x1C6940010](v16);

  MEMORY[0x1C6940010](39, 0xE100000000000000);
  v17 = v26;
  v18 = v27;
  v26 = v12;
  v27 = v11;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v17, v18);

  v20 = v26;
  v19 = v27;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](658140960, 0xE400000000000000);
  MEMORY[0x1C6940010](*(v1 + v6[8]), *(v1 + v6[8] + 8));
  MEMORY[0x1C6940010](0x273A6372732027, 0xE700000000000000);
  v21 = v6[9];
  sub_1C449EEE8();
  MEMORY[0x1C6940010](*v5, v5[1]);
  sub_1C449F22C();
  MEMORY[0x1C6940010](0x64695F6372732027, 0xEA0000000000273ALL);
  MEMORY[0x1C6940010](*(v1 + v6[10]), *(v1 + v6[10] + 8));
  MEMORY[0x1C6940010](0x273A74702027, 0xE600000000000000);
  sub_1C448D934(*(v1 + v6[12]));
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  v22 = v26;
  v23 = v27;
  v26 = v20;
  v27 = v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v22, v23);

  return v26;
}

uint64_t sub_1C485F324()
{
  v1 = v0;
  v2 = type metadata accessor for Source();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1C4F02248();

  v26 = 60;
  v27 = 0xE100000000000000;
  v6 = type metadata accessor for EntityTriple(0);
  v25[1] = v6;
  sub_1C456902C(&qword_1EC0BE370, &qword_1C4F368D0);
  v7 = sub_1C4F01198();
  MEMORY[0x1C6940010](v7);

  MEMORY[0x1C6940010](658141984, 0xE400000000000000);
  sub_1C4EFF0C8();
  sub_1C4490F60(&qword_1EDDFE810, MEMORY[0x1E69A9810]);
  v8 = sub_1C4F02858();
  MEMORY[0x1C6940010](v8);

  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  v9 = v6[5];
  sub_1C4EFEEF8();
  sub_1C4490F60(&qword_1EC0BA1F0, MEMORY[0x1E69A9748]);
  v10 = sub_1C4F02858();
  MEMORY[0x1C6940010](v10);

  MEMORY[0x1C6940010](39, 0xE100000000000000);
  v12 = v26;
  v11 = v27;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1C4F02248();

  v26 = 0x273A697220;
  v27 = 0xE500000000000000;
  v13 = v6[6];
  sub_1C4EFF8A8();
  sub_1C4490F60(&qword_1EC0BDAB8, MEMORY[0x1E69A99E8]);
  v14 = sub_1C4F02858();
  MEMORY[0x1C6940010](v14);

  MEMORY[0x1C6940010](0x273A70722027, 0xE600000000000000);
  v15 = v1 + v6[7];
  v16 = sub_1C4F02858();
  MEMORY[0x1C6940010](v16);

  MEMORY[0x1C6940010](39, 0xE100000000000000);
  v17 = v26;
  v18 = v27;
  v26 = v12;
  v27 = v11;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v17, v18);

  v20 = v26;
  v19 = v27;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](658140960, 0xE400000000000000);
  MEMORY[0x1C6940010](*(v1 + v6[8]), *(v1 + v6[8] + 8));
  MEMORY[0x1C6940010](0x273A6372732027, 0xE700000000000000);
  v21 = v6[9];
  sub_1C449EEE8();
  MEMORY[0x1C6940010](*v5, v5[1]);
  sub_1C449F22C();
  MEMORY[0x1C6940010](0x64695F6372732027, 0xEA0000000000273ALL);
  MEMORY[0x1C6940010](*(v1 + v6[10]), *(v1 + v6[10] + 8));
  MEMORY[0x1C6940010](0x273A74702027, 0xE600000000000000);
  sub_1C448D934(*(v1 + v6[12]));
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  v22 = v26;
  v23 = v27;
  v26 = v20;
  v27 = v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v22, v23);

  return v26;
}

uint64_t sub_1C485F770()
{
  sub_1C4490F60(&qword_1EDDF8D98, type metadata accessor for EntityTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C485F90C()
{
  v0 = sub_1C44059B8();
  v2 = *(v1(v0) + 36);
  return sub_1C449EEE8();
}

uint64_t sub_1C485F974(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  v3 = *v2;
  v4 = v2[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t TranslatedEntityTriple.pipelineType.getter()
{
  v2 = sub_1C44059B8();
  result = type metadata accessor for TranslatedEntityTriple(v2);
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t sub_1C485FA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_1C4EFF088() & 1) == 0)
  {
    return 0;
  }

  v6 = a3(0);
  if ((sub_1C44DBB50(a1 + v6[5], a2 + v6[5]) & 1) == 0)
  {
    return 0;
  }

  v7 = v6[6];
  if ((sub_1C4EFF878() & 1) == 0 || (sub_1C44DBB50(a1 + v6[7], a2 + v6[7]) & 1) == 0)
  {
    return 0;
  }

  v8 = v6[8];
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  sub_1C4495D00((a2 + v8));
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v14 = v6[9];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  sub_1C4495D00((a2 + v14));
  v19 = v13 && v17 == v18;
  if (!v19 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v20 = v6[10];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  sub_1C4495D00((a2 + v20));
  v25 = v13 && v23 == v24;
  if (!v25 && (sub_1C4F02938() & 1) == 0 || *(a1 + v6[11]) != *(a2 + v6[11]))
  {
    return 0;
  }

  v26 = v6[12];
  v27 = *(a2 + v26);
  v28 = *(a1 + v26);

  return sub_1C4684BDC();
}

uint64_t sub_1C485FB8C()
{
  sub_1C4404078();
  sub_1C447CDB8();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (sub_1C43FEC00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1C444C280();
    v6 = v4 && v0 == v2;
    if (v6 || (sub_1C43FEC00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v1 == sub_1C440C564() && v0 == v7;
      if (v8 || (sub_1C43FEC00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v1 == 0xD000000000000015 && 0x80000001C4F86600 == v0;
        if (v9 || (sub_1C43FEC00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          sub_1C445ABD4();
          v10 = v4 && v0 == 0xE600000000000000;
          if (v10 || (sub_1C43FEC00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            sub_1C4414234();
            v11 = v4 && v0 == 0xE600000000000000;
            if (v11 || (sub_1C43FEC00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = v1 == 0x6449656372756F73 && v0 == 0xE800000000000000;
              if (v12 || (sub_1C43FEC00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                sub_1C44BBE04();
                v14 = v4 && v0 == v13;
                if (v14 || (sub_1C43FEC00() & 1) != 0)
                {

                  return 7;
                }

                else if (v1 == sub_1C445A978() && v0 == v15)
                {

                  return 8;
                }

                else
                {
                  sub_1C43FEC00();
                  sub_1C440F210();
                  if (v1)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C485FD64(uint64_t a1)
{
  v2 = sub_1C44E7310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C485FDA0(uint64_t a1)
{
  v2 = sub_1C44E7310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C485FDF4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  sub_1C4403FC0();
  sub_1C4EFF0C8();
  sub_1C4419854();
  sub_1C4490F60(v5, v6);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  v7 = a2(0);
  v8 = v7[5];
  sub_1C4EFEEF8();
  sub_1C442CB58();
  sub_1C4490F60(v9, v10);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  v11 = v7[6];
  sub_1C4EFF8A8();
  sub_1C4406FE8();
  sub_1C4490F60(v12, v13);
  sub_1C44AB174();
  v14 = v4 + v7[7];
  sub_1C4404BCC();
  sub_1C4F00FE8();
  sub_1C4461CC0(v7[8]);
  sub_1C4461CC0(v7[9]);
  sub_1C4461CC0(v7[10]);
  v15 = *(v4 + v7[11]);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1C6941830](*&v15);
  v16 = *(v4 + v7[12]);

  return sub_1C468B630();
}

uint64_t sub_1C485FFC4()
{
  sub_1C4490F60(&qword_1EDDF3A30, type metadata accessor for TranslatedEntityTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C48601C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696B636F6C62 && a2 == 0xEB0000000079654BLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449797469746E65 && a2 == 0xE900000000000073;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656E696C65706970 && a2 == 0xEC00000065707954)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C4860384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C48601C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C48603AC(uint64_t a1)
{
  v2 = sub_1C44D190C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C48603E8(uint64_t a1)
{
  v2 = sub_1C44D190C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityBlock.encode(to:)()
{
  sub_1C4413F18();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0BE0D8, &qword_1C4F32610);
  sub_1C4403200(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C44D190C();
  sub_1C440F61C();
  v6 = *v1;
  v7 = v1[1];
  sub_1C43FBF44();
  sub_1C4F02798();
  if (!v0)
  {
    v8 = type metadata accessor for EntityBlock(0);
    v9 = v8[5];
    sub_1C4405BEC();
    sub_1C4EFD548();
    sub_1C44004E0();
    sub_1C4490F60(v10, v11);
    sub_1C43FEF68();
    sub_1C4F027E8();
    v12 = (v1 + v8[6]);
    v13 = *v12;
    v14 = v12[1];
    sub_1C4401670();
    sub_1C43FBF44();
    sub_1C4F02798();
    v15 = *(v1 + v8[7]);
    sub_1C4495238();
    sub_1C442FDD8();
    sub_1C4F027B8();
    v18 = *(v1 + v8[8]);
    sub_1C44C1190();
    sub_1C43FBF44();
    sub_1C4F027E8();
  }

  v16 = sub_1C43FF120();
  v17(v16);
  sub_1C44102DC();
}

uint64_t sub_1C4860608()
{
  sub_1C4490F60(&qword_1EC0BE258, type metadata accessor for EntityBlock);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C486078C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE360, type metadata accessor for EntityBlock);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C48608AC(uint64_t a1)
{
  v2 = sub_1C4491148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C48608E8(uint64_t a1)
{
  v2 = sub_1C4491148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ConstructionPhaseStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1C43FE96C();
  v15 = sub_1C44D4524(v14);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v37 = v19;
  v20 = sub_1C456902C(&qword_1EC0BE0F0, &qword_1C4F32628);
  sub_1C43FCDF8(v20);
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C4402274();
  v25 = type metadata accessor for ConstructionPhaseStatus(v24);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v32 = v12[4];
  sub_1C4417F50(v12, v12[3]);
  sub_1C4491148();
  sub_1C44BBC60();
  sub_1C4F02BC8();
  if (v13)
  {
    sub_1C440962C(v12);
  }

  else
  {
    sub_1C441FBB8();
    sub_1C4490F60(v33, v34);
    sub_1C43FE6CC();
    sub_1C4460830();
    sub_1C448B210(v37, v31);
    sub_1C48635FC();
    sub_1C4424718();
    v35 = sub_1C442AC0C();
    v36(v35);
    *(v31 + *(v25 + 20)) = a12;
    sub_1C449EEE8();
    sub_1C440962C(v12);
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4860B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDE25D8, type metadata accessor for ConstructionPhaseStatus);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4860C0C()
{
  sub_1C4490F60(&qword_1EDDE25F0, type metadata accessor for ConstructionPhaseStatus);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4860DB0()
{
  sub_1C4404078();
  sub_1C4414234();
  v3 = v3 && v2 == 0xE600000000000000;
  if (v3 || (sub_1C43FEC00() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x737574617473 && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    sub_1C43FEC00();
    sub_1C440F210();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4860E48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4860E94(uint64_t a1)
{
  v2 = sub_1C4863650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4860ED0(uint64_t a1)
{
  v2 = sub_1C4863650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PhaseStatus.encode(to:)()
{
  sub_1C4413F18();
  sub_1C440EDD4();
  v1 = sub_1C456902C(&qword_1EC0BE0F8, &qword_1C4F32630);
  sub_1C4403200(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4863650();
  sub_1C440F61C();
  sub_1C441D6E4();
  type metadata accessor for Source();
  sub_1C441FBB8();
  sub_1C4490F60(v5, v6);
  sub_1C43FE6CC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for PhaseStatus(0);
    sub_1C4441740(v7);
    sub_1C440D3E4();
    sub_1C4F027E8();
  }

  v8 = sub_1C43FF120();
  v9(v8);
  sub_1C441C2B4();
  sub_1C44102DC();
}

void PhaseStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1C43FE96C();
  v15 = sub_1C44D4524(v14);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v37 = v19;
  v20 = sub_1C456902C(&qword_1EC0BE108, &qword_1C4F32638);
  sub_1C43FCDF8(v20);
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C4402274();
  v25 = type metadata accessor for PhaseStatus(v24);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v32 = v12[4];
  sub_1C4417F50(v12, v12[3]);
  sub_1C4863650();
  sub_1C44BBC60();
  sub_1C4F02BC8();
  if (v13)
  {
    sub_1C440962C(v12);
  }

  else
  {
    sub_1C441FBB8();
    sub_1C4490F60(v33, v34);
    sub_1C43FE6CC();
    sub_1C4460830();
    sub_1C448B210(v37, v31);
    sub_1C48635FC();
    sub_1C4424718();
    v35 = sub_1C442AC0C();
    v36(v35);
    *(v31 + *(v25 + 20)) = a12;
    sub_1C449EEE8();
    sub_1C440962C(v12);
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4861288()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4861304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE358, type metadata accessor for PhaseStatus);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4861398()
{
  sub_1C4490F60(&qword_1EC0BE278, type metadata accessor for PhaseStatus);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C486151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EC0BE350, type metadata accessor for PhaseStatus);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C48615C0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4687110();
}

uint64_t sub_1C48615E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4861288();
  *a2 = result;
  return result;
}

uint64_t sub_1C4861614(uint64_t a1)
{
  v2 = sub_1C4492FAC();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C4861660(uint64_t a1)
{
  v2 = sub_1C4492FAC();

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t sub_1C48616F4(uint64_t a1)
{
  v2 = sub_1C450B0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4861730(uint64_t a1)
{
  v2 = sub_1C450B0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4861770()
{
  sub_1C4490F60(&qword_1EDDF7A80, type metadata accessor for ProgressTokens);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4861924()
{
  sub_1C4404078();
  v3 = v1 == sub_1C44553A4() && v0 == v2;
  if (v3 || (sub_1C43FEC00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6D614E6567617473 && v0 == 0xE900000000000065;
    if (v5 || (sub_1C43FEC00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      sub_1C4414234();
      v6 = v3 && v0 == 0xE600000000000000;
      if (v6 || (sub_1C43FEC00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == 0x6E656B6F74 && v0 == 0xE500000000000000;
        if (v7 || (sub_1C43FEC00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = v1 == sub_1C44493C4() && v0 == v8;
          if (v9 || (sub_1C43FEC00() & 1) != 0)
          {

            return 4;
          }

          else if (v1 == 0x6574656C706D6F63 && v0 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            sub_1C43FEC00();
            sub_1C440F210();
            if (v1)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4861A84(uint64_t a1)
{
  v2 = sub_1C4495034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4861AC0(uint64_t a1)
{
  v2 = sub_1C4495034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4861B00()
{
  sub_1C4490F60(&qword_1EDDE10E8, type metadata accessor for ConstructionProgressTokens);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4861C84()
{
  v0 = sub_1C4EFF0C8();
  sub_1C44F9918(v0, qword_1EDE2DC60);
  v1 = sub_1C43FBC98();
  sub_1C442B738(v1, v2);
  return sub_1C4EFF098();
}

uint64_t sub_1C4861D70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656372756F73 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449746567726174 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7349746567726174 && a2 == 0xEF64496870617247;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656E696C65706970 && a2 == 0xEC00000065707954)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4861F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4861D70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4861FA0(uint64_t a1)
{
  v2 = sub_1C44D77B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4861FDC(uint64_t a1)
{
  v2 = sub_1C44D77B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4862018()
{
  sub_1C4490F60(&qword_1EDDFA0E0, type metadata accessor for EntityPair);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C48621E4()
{
  sub_1C4404078();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {
    v4 = v1[2] == v0[2] && v1[3] == v0[3];
    if (v4 || (sub_1C4F02938() & 1) != 0)
    {
      v5 = v1[4];
      v6 = v1[5];
      v7 = v0[4];
      v8 = v0[5];

      JUMPOUT(0x1C6938740);
    }
  }

  return 0;
}

uint64_t sub_1C4862270(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E69646465626D65 && a2 == 0xED00006570795467;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4862390(char a1)
{
  result = 0x6E69646465626D65;
  if (a1 == 1)
  {
    return 7955819;
  }

  return result;
}

void sub_1C48623E4()
{
  sub_1C4413F18();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0BE438, &qword_1C4F371B0);
  sub_1C4403200(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C48673B4();
  sub_1C440F61C();
  v6 = *v1;
  v7 = v1[1];
  LOBYTE(v13) = 0;
  sub_1C441FBD0();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    LOBYTE(v13) = 1;
    sub_1C441FBD0();
    v13 = *(v1 + 2);
    v14 = v13;
    v12[23] = 2;
    sub_1C446E59C(&v14, v12);
    sub_1C446E5F8();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4434000(v13, *(&v13 + 1));
  }

  v10 = sub_1C43FF120();
  v11(v10);
  sub_1C44102DC();
}

uint64_t sub_1C486252C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F01298();
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4F01298();
  v5 = v0[4];
  v6 = v0[5];

  return sub_1C4EF9A78();
}

uint64_t sub_1C4862578()
{
  sub_1C441EC18();
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F01298();
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4F01298();
  v5 = v0[4];
  v6 = v0[5];
  sub_1C4EF9A78();
  return sub_1C4F02B68();
}

void sub_1C48625CC()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0BE430, &qword_1C4F371A8);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C4417F50(v2, v2[3]);
  sub_1C48673B4();
  sub_1C44BBC60();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    LOBYTE(v19) = 0;
    v10 = sub_1C4F02678();
    v12 = v11;
    v18 = v10;
    sub_1C4433D1C(1);
    v16 = sub_1C4F02678();
    v17 = v13;
    sub_1C444C16C();
    sub_1C4429054();
    sub_1C4F026C8();
    v14 = sub_1C43FBF04();
    v15(v14);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(v19, v20);
    sub_1C440962C(v2);

    sub_1C4434000(v19, v20);
    *v4 = v18;
    v4[1] = v12;
    v4[2] = v16;
    v4[3] = v17;
    v4[4] = v19;
    v4[5] = v20;
  }

  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C486281C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4862270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4862844(uint64_t a1)
{
  v2 = sub_1C48673B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4862880(uint64_t a1)
{
  v2 = sub_1C48673B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C48628BC@<D0>(_OWORD *a1@<X8>)
{
  sub_1C48625CC();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1C4862920()
{
  sub_1C4F02AF8();
  sub_1C486252C();
  return sub_1C4F02B68();
}

uint64_t sub_1C486295C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4867E6C();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C48629C4()
{
  sub_1C45776A0();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4862AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4867EC0();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4862B4C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFBF38();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C441D6FC();
  v14 = sub_1C4EFBAF8();
  sub_1C44F9918(v14, a2);
  sub_1C442B738(v14, a2);
  v15 = *MEMORY[0x1E69A00D0];
  v16 = *(v7 + 104);
  v16(v2, v15, v4);
  v16(v12, v15, v4);
  return sub_1C4EFBAE8();
}

uint64_t sub_1C4862D08(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1C4EFBD38();
  sub_1C44F9918(v6, a2);
  sub_1C442B738(v6, a2);
  a4();
  return sub_1C4EFBD58();
}

uint64_t static EntityMatch.== infix(_:_:)()
{
  sub_1C4404078();
  if (sub_1C44E560C(v2, v3))
  {
    v4 = type metadata accessor for EntityMatch(0);
    sub_1C441DD4C(v4[5]);
    if (sub_1C4EFF088())
    {
      sub_1C441DD4C(v4[6]);
      if ((sub_1C4EFF088() & 1) != 0 && *(v1 + v4[7]) == *(v0 + v4[7]))
      {
        sub_1C443E358(v4[8]);
        if (v5)
        {
          v6 = v4[9];
          v7 = *(v0 + v6);
          v8 = *(v1 + v6);
          if (sub_1C4684BDC())
          {
            v9 = v4[10];
            v10 = *(v1 + v9);
            v11 = *(v0 + v9);
            if (v10)
            {
              if (v11)
              {
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C47C81C0();
                sub_1C440F210();
                if (v10)
                {
                  return 1;
                }
              }
            }

            else if (!v11)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1C4862E60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656372756F73 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449746567726174 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656E696C65706970 && a2 == 0xEC00000065707954;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C48630B0(unsigned __int8 a1)
{
  sub_1C441EC18();
  MEMORY[0x1C69417F0](a1);
  return sub_1C4F02B68();
}

uint64_t sub_1C48630F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C486313C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4862E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4863164(uint64_t a1)
{
  v2 = sub_1C44DE3A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C48631A0(uint64_t a1)
{
  v2 = sub_1C44DE3A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C48631E0()
{
  sub_1C4490F60(&qword_1EDDF91D0, type metadata accessor for EntityMatch);

  return sub_1C4EFB6D8();
}

unint64_t sub_1C4863384()
{
  result = qword_1EDDFE308;
  if (!qword_1EDDFE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE308);
  }

  return result;
}

unint64_t sub_1C48633D8()
{
  result = qword_1EDDF4F50;
  if (!qword_1EDDF4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4F50);
  }

  return result;
}

unint64_t sub_1C486344C()
{
  result = qword_1EDDFB370;
  if (!qword_1EDDFB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB370);
  }

  return result;
}

unint64_t sub_1C48634C0()
{
  result = qword_1EDDE27C0;
  if (!qword_1EDDE27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE27C0);
  }

  return result;
}

unint64_t sub_1C4863534()
{
  result = qword_1EDDDF270[0];
  if (!qword_1EDDDF270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDDF270);
  }

  return result;
}

unint64_t sub_1C48635A8()
{
  result = qword_1EC0BE0A8;
  if (!qword_1EC0BE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE0A8);
  }

  return result;
}

unint64_t sub_1C48635FC()
{
  result = qword_1EDDE5D08;
  if (!qword_1EDDE5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE5D08);
  }

  return result;
}

unint64_t sub_1C4863650()
{
  result = qword_1EC0BE100;
  if (!qword_1EC0BE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE100);
  }

  return result;
}

uint64_t sub_1C48636C4(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EDDF90F8, type metadata accessor for GraphTriple);
  a1[2] = sub_1C4490F60(qword_1EDDF9108, type metadata accessor for GraphTriple);
  a1[3] = sub_1C4490F60(&qword_1EDDF9100, type metadata accessor for GraphTriple);
  result = sub_1C4490F60(&qword_1EDDFC298, type metadata accessor for GraphTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4863798(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDFE218, type metadata accessor for GraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48638C8(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EDDFC2A0, type metadata accessor for EventTriple);
  a1[2] = sub_1C4490F60(&qword_1EDDFC2B8, type metadata accessor for EventTriple);
  a1[3] = sub_1C4490F60(&qword_1EDDFC2A8, type metadata accessor for EventTriple);
  result = sub_1C4490F60(&qword_1EDDFC2C0, type metadata accessor for EventTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C486399C(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDFE2F0, type metadata accessor for EventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4863ACC(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EC0BE140, type metadata accessor for ExpiredGraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4863B24(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EC0BE148, type metadata accessor for ExpiredGraphTriple);
  result = sub_1C4490F60(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4863BA8(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EDDF4EE8, type metadata accessor for ExpiredGraphTriple);
  a1[2] = sub_1C4490F60(&qword_1EDDF4F00, type metadata accessor for ExpiredGraphTriple);
  a1[3] = sub_1C4490F60(&qword_1EDDF4EF0, type metadata accessor for ExpiredGraphTriple);
  result = sub_1C4490F60(&qword_1EDDF4F08, type metadata accessor for ExpiredGraphTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4863CC4(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDF4F38, type metadata accessor for ExpiredGraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4863DAC(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDE5BE0, type metadata accessor for ExpiredEventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4863E04(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EC0BE150, type metadata accessor for ExpiredEventTriple);
  result = sub_1C4490F60(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4863E88(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EDDFB328, type metadata accessor for ExpiredEventTriple);
  a1[2] = sub_1C4490F60(&qword_1EDDFB348, type metadata accessor for ExpiredEventTriple);
  a1[3] = sub_1C4490F60(&qword_1EDDFB330, type metadata accessor for ExpiredEventTriple);
  result = sub_1C4490F60(&qword_1EDDFB350, type metadata accessor for ExpiredEventTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4863FA4(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDFB358, type metadata accessor for ExpiredEventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C486408C(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE158, type metadata accessor for ConstructionGraphTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE160, type metadata accessor for ConstructionGraphTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE168, type metadata accessor for ConstructionGraphTriple);
  result = sub_1C4490F60(&qword_1EDDE2640, type metadata accessor for ConstructionGraphTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4864160(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDE2660, type metadata accessor for ConstructionGraphTriple);
  result = sub_1C4490F60(&qword_1EDDE2658, type metadata accessor for ConstructionGraphTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C48641E4(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EDDE2668, type metadata accessor for ConstructionGraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4864314(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE170, type metadata accessor for ConstructionEventTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE178, type metadata accessor for ConstructionEventTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE180, type metadata accessor for ConstructionEventTriple);
  result = sub_1C4490F60(&qword_1EDDE2748, type metadata accessor for ConstructionEventTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C48643E8(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDE2768, type metadata accessor for ConstructionEventTriple);
  result = sub_1C4490F60(&qword_1EDDE2760, type metadata accessor for ConstructionEventTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C486446C(uint64_t a1)
{
  result = sub_1C4490F60(&unk_1EDDE2780, type metadata accessor for ConstructionEventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C486459C(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EC0BE188, type metadata accessor for ExpiredConstructionGraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48645F4(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDDF248, type metadata accessor for ExpiredConstructionGraphTriple);
  result = sub_1C4490F60(&qword_1EDDDF240, type metadata accessor for ExpiredConstructionGraphTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4864678(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE190, type metadata accessor for ExpiredConstructionGraphTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE198, type metadata accessor for ExpiredConstructionGraphTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE1A0, type metadata accessor for ExpiredConstructionGraphTriple);
  result = sub_1C4490F60(&qword_1EC0BE1A8, type metadata accessor for ExpiredConstructionGraphTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4864794(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EC0BE1B0, type metadata accessor for ExpiredConstructionGraphTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C486487C(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EC0BE1C0, type metadata accessor for ExpiredConstructionEventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C48648D4(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDDF328, type metadata accessor for ExpiredConstructionEventTriple);
  result = sub_1C4490F60(&qword_1EC0BDFE0, type metadata accessor for ExpiredConstructionEventTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4864958(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE1C8, type metadata accessor for ExpiredConstructionEventTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE1D0, type metadata accessor for ExpiredConstructionEventTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE1D8, type metadata accessor for ExpiredConstructionEventTriple);
  result = sub_1C4490F60(&qword_1EC0BE1E0, type metadata accessor for ExpiredConstructionEventTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4864A74(uint64_t a1)
{
  result = sub_1C4490F60(&qword_1EC0BE1F0, type metadata accessor for ExpiredConstructionEventTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4864B5C(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE208, type metadata accessor for EntityTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE210, type metadata accessor for EntityTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE218, type metadata accessor for EntityTriple);
  result = sub_1C4490F60(&qword_1EC0BE220, type metadata accessor for EntityTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4864C30(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDF8DA0, type metadata accessor for EntityTriple);
  result = sub_1C4490F60(&qword_1EDDF8D98, type metadata accessor for EntityTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4864CB4(uint64_t a1)
{
  result = sub_1C4490F60(&unk_1EDDF8DB8, type metadata accessor for EntityTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4864DE4(void *a1)
{
  a1[1] = sub_1C4490F60(&qword_1EC0BE230, type metadata accessor for TranslatedEntityTriple);
  a1[2] = sub_1C4490F60(&qword_1EC0BE238, type metadata accessor for TranslatedEntityTriple);
  a1[3] = sub_1C4490F60(&qword_1EC0BE240, type metadata accessor for TranslatedEntityTriple);
  result = sub_1C4490F60(&qword_1EC0BE248, type metadata accessor for TranslatedEntityTriple);
  a1[4] = result;
  return result;
}

uint64_t sub_1C4864EB8(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDF3A38, type metadata accessor for TranslatedEntityTriple);
  result = sub_1C4490F60(&qword_1EDDF3A30, type metadata accessor for TranslatedEntityTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4864F3C(uint64_t a1)
{
  result = sub_1C4490F60(&unk_1EDDF3A50, type metadata accessor for TranslatedEntityTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C486506C(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDF92F0, type metadata accessor for EntityBlock);
  result = sub_1C4490F60(&qword_1EC0BE258, type metadata accessor for EntityBlock);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C48651C8(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDE25F8, type metadata accessor for ConstructionPhaseStatus);
  result = sub_1C4490F60(&qword_1EDDE25F0, type metadata accessor for ConstructionPhaseStatus);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4865324(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EC0BE270, type metadata accessor for PhaseStatus);
  result = sub_1C4490F60(&qword_1EC0BE278, type metadata accessor for PhaseStatus);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4865480(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDF7A88, type metadata accessor for ProgressTokens);
  result = sub_1C4490F60(&qword_1EDDF7A80, type metadata accessor for ProgressTokens);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C48655DC(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDE10F0, type metadata accessor for ConstructionProgressTokens);
  result = sub_1C4490F60(&qword_1EDDE10E8, type metadata accessor for ConstructionProgressTokens);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4865738(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDF91D8, type metadata accessor for EntityMatch);
  result = sub_1C4490F60(&qword_1EDDF91D0, type metadata accessor for EntityMatch);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4865984()
{
  sub_1C44569B4();
  sub_1C4EFF0C8();
  sub_1C444C2A0();
  if (!(!v2 & v1))
  {
    sub_1C4EFEEF8();
    sub_1C444C2A0();
    if (!(!v2 & v1))
    {
      v3 = sub_1C4EFF8A8();
      if (v4 > 0x3F)
      {
        return v3;
      }

      else
      {
        sub_1C44145DC();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1C4865A58()
{
  sub_1C44569B4();
  sub_1C4EFF0C8();
  sub_1C444C2A0();
  if (!(!v2 & v1))
  {
    sub_1C4EFEEF8();
    sub_1C444C2A0();
    if (!(!v2 & v1))
    {
      v3 = sub_1C4EFF8A8();
      if (v4 > 0x3F)
      {
        return v3;
      }

      else
      {
        type metadata accessor for Source();
        sub_1C444C2A0();
        if (!(!v2 & v1))
        {
          sub_1C44145DC();
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C4865B3C()
{
  result = sub_1C4EFD548();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4865BF4()
{
  sub_1C44569B4();
  result = type metadata accessor for Source();
  if (v1 <= 0x3F)
  {
    sub_1C44145DC();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C4865C5C()
{
  if (!qword_1EDDFA3F8)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFA3F8);
    }
  }
}

void sub_1C4865CAC()
{
  sub_1C44569B4();
  sub_1C4EFD548();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Source();
    if (v1 <= 0x3F)
    {
      sub_1C4865C5C();
      if (v2 <= 0x3F)
      {
        sub_1C44145DC();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4865D5C()
{
  sub_1C4EFD548();
  if (v0 <= 0x3F)
  {
    sub_1C4EFF0C8();
    if (v1 <= 0x3F)
    {
      sub_1C4865E1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4865E1C()
{
  if (!qword_1EDDF0700)
  {
    sub_1C4572308(qword_1EC0C0740, &qword_1C4F0D000);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF0700);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EntityMatch.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4865F8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
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
      return sub_1C4430578((*a1 | (v4 << 8)) - 2);
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

      return sub_1C4430578((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 2);
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

  return sub_1C4430578(v8);
}

_BYTE *sub_1C4866010(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C4423610(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C486617C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return sub_1C4430578((*a1 | (v4 << 8)) - 9);
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

      return sub_1C4430578((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

_BYTE *sub_1C4866200(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C4423610(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C48662E0()
{
  result = qword_1EC0BE2A8;
  if (!qword_1EC0BE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2A8);
  }

  return result;
}

unint64_t sub_1C4866338()
{
  result = qword_1EC0BE2B0;
  if (!qword_1EC0BE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2B0);
  }

  return result;
}

unint64_t sub_1C4866390()
{
  result = qword_1EC0BE2B8;
  if (!qword_1EC0BE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2B8);
  }

  return result;
}

unint64_t sub_1C48663E8()
{
  result = qword_1EC0BE2C0;
  if (!qword_1EC0BE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2C0);
  }

  return result;
}

unint64_t sub_1C4866440()
{
  result = qword_1EC0BE2C8;
  if (!qword_1EC0BE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2C8);
  }

  return result;
}

unint64_t sub_1C4866498()
{
  result = qword_1EC0BE2D0;
  if (!qword_1EC0BE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2D0);
  }

  return result;
}

unint64_t sub_1C48664F0()
{
  result = qword_1EC0BE2D8;
  if (!qword_1EC0BE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2D8);
  }

  return result;
}

unint64_t sub_1C4866548()
{
  result = qword_1EC0BE2E0;
  if (!qword_1EC0BE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2E0);
  }

  return result;
}

unint64_t sub_1C48665A0()
{
  result = qword_1EC0BE2E8;
  if (!qword_1EC0BE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2E8);
  }

  return result;
}

unint64_t sub_1C48665F8()
{
  result = qword_1EC0BE2F0;
  if (!qword_1EC0BE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2F0);
  }

  return result;
}

unint64_t sub_1C4866650()
{
  result = qword_1EC0BE2F8;
  if (!qword_1EC0BE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE2F8);
  }

  return result;
}

unint64_t sub_1C48666A8()
{
  result = qword_1EC0BE300;
  if (!qword_1EC0BE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE300);
  }

  return result;
}

unint64_t sub_1C4866700()
{
  result = qword_1EC0BE308;
  if (!qword_1EC0BE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE308);
  }

  return result;
}

unint64_t sub_1C4866758()
{
  result = qword_1EC0BE310;
  if (!qword_1EC0BE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE310);
  }

  return result;
}

unint64_t sub_1C48667B0()
{
  result = qword_1EC0BE318;
  if (!qword_1EC0BE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE318);
  }

  return result;
}

unint64_t sub_1C4866808()
{
  result = qword_1EC0BE320;
  if (!qword_1EC0BE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE320);
  }

  return result;
}

unint64_t sub_1C4866860()
{
  result = qword_1EC0BE328;
  if (!qword_1EC0BE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE328);
  }

  return result;
}

unint64_t sub_1C48668B8()
{
  result = qword_1EDDF9230;
  if (!qword_1EDDF9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9230);
  }

  return result;
}

unint64_t sub_1C4866910()
{
  result = qword_1EDDF9238;
  if (!qword_1EDDF9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9238);
  }

  return result;
}

unint64_t sub_1C4866968()
{
  result = qword_1EDDE1128;
  if (!qword_1EDDE1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1128);
  }

  return result;
}

unint64_t sub_1C48669C0()
{
  result = qword_1EDDE1130;
  if (!qword_1EDDE1130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1130);
  }

  return result;
}

unint64_t sub_1C4866A18()
{
  result = qword_1EDDF7AA0;
  if (!qword_1EDDF7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7AA0);
  }

  return result;
}

unint64_t sub_1C4866A70()
{
  result = qword_1EDDF7AA8;
  if (!qword_1EDDF7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7AA8);
  }

  return result;
}

unint64_t sub_1C4866AC8()
{
  result = qword_1EC0BE330;
  if (!qword_1EC0BE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE330);
  }

  return result;
}

unint64_t sub_1C4866B20()
{
  result = qword_1EC0BE338;
  if (!qword_1EC0BE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE338);
  }

  return result;
}

unint64_t sub_1C4866B78()
{
  result = qword_1EDDE2618;
  if (!qword_1EDDE2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2618);
  }

  return result;
}

unint64_t sub_1C4866BD0()
{
  result = qword_1EDDE2620;
  if (!qword_1EDDE2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2620);
  }

  return result;
}

unint64_t sub_1C4866C28()
{
  result = qword_1EDDF9320;
  if (!qword_1EDDF9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9320);
  }

  return result;
}

unint64_t sub_1C4866C80()
{
  result = qword_1EDDF9328;
  if (!qword_1EDDF9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9328);
  }

  return result;
}

unint64_t sub_1C4866CD8()
{
  result = qword_1EDDF3A80;
  if (!qword_1EDDF3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3A80);
  }

  return result;
}

unint64_t sub_1C4866D30()
{
  result = qword_1EDDF3A88;
  if (!qword_1EDDF3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3A88);
  }

  return result;
}

unint64_t sub_1C4866D88()
{
  result = qword_1EDDF8DE8;
  if (!qword_1EDDF8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8DE8);
  }

  return result;
}

unint64_t sub_1C4866DE0()
{
  result = qword_1EDDF8DF0;
  if (!qword_1EDDF8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8DF0);
  }

  return result;
}

unint64_t sub_1C4866E38()
{
  result = qword_1EC0BE340;
  if (!qword_1EC0BE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE340);
  }

  return result;
}

unint64_t sub_1C4866E90()
{
  result = qword_1EC0BE348;
  if (!qword_1EC0BE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE348);
  }

  return result;
}

unint64_t sub_1C4866EE8()
{
  result = qword_1EDDDF260;
  if (!qword_1EDDDF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDF260);
  }

  return result;
}

unint64_t sub_1C4866F40()
{
  result = qword_1EDDDF268;
  if (!qword_1EDDDF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDF268);
  }

  return result;
}

unint64_t sub_1C4866F98()
{
  result = qword_1EDDE27B0;
  if (!qword_1EDDE27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE27B0);
  }

  return result;
}

unint64_t sub_1C4866FF0()
{
  result = qword_1EDDE27B8;
  if (!qword_1EDDE27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE27B8);
  }

  return result;
}

unint64_t sub_1C4867048()
{
  result = qword_1EDDE2670;
  if (!qword_1EDDE2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2670);
  }

  return result;
}

unint64_t sub_1C48670A0()
{
  result = qword_1EDDE2678;
  if (!qword_1EDDE2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2678);
  }

  return result;
}

unint64_t sub_1C48670F8()
{
  result = qword_1EDDFB360;
  if (!qword_1EDDFB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB360);
  }

  return result;
}

unint64_t sub_1C4867150()
{
  result = qword_1EDDFB368;
  if (!qword_1EDDFB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB368);
  }

  return result;
}

unint64_t sub_1C48671A8()
{
  result = qword_1EDDF4F40;
  if (!qword_1EDDF4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4F40);
  }

  return result;
}

unint64_t sub_1C4867200()
{
  result = qword_1EDDF4F48;
  if (!qword_1EDDF4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4F48);
  }

  return result;
}

unint64_t sub_1C4867258()
{
  result = qword_1EDDFE2F8;
  if (!qword_1EDDFE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE2F8);
  }

  return result;
}

unint64_t sub_1C48672B0()
{
  result = qword_1EDDFE300;
  if (!qword_1EDDFE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE300);
  }

  return result;
}

unint64_t sub_1C4867308()
{
  result = qword_1EDDFE220;
  if (!qword_1EDDFE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE220);
  }

  return result;
}

unint64_t sub_1C4867360()
{
  result = qword_1EDDFE228;
  if (!qword_1EDDFE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE228);
  }

  return result;
}

unint64_t sub_1C48673B4()
{
  result = qword_1EC0BE3D0;
  if (!qword_1EC0BE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3D0);
  }

  return result;
}

uint64_t sub_1C4867408(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return sub_1C4430578((*a1 | (v4 << 8)) - 6);
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

      return sub_1C4430578((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

_BYTE *sub_1C486748C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C4423610(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityEmbedding.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4867644()
{
  result = sub_1C4EFD548();
  if (v1 <= 0x3F)
  {
    result = sub_1C4EFF0C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1C48676EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C4423610(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C48677BC()
{
  result = qword_1EC0BE3D8;
  if (!qword_1EC0BE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3D8);
  }

  return result;
}

uint64_t sub_1C48678A0(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490F60(&qword_1EDDFA0E8, type metadata accessor for EntityPair);
  result = sub_1C4490F60(&qword_1EDDFA0E0, type metadata accessor for EntityPair);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4867928()
{
  result = qword_1EC0BE3E0;
  if (!qword_1EC0BE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3E0);
  }

  return result;
}

unint64_t sub_1C4867980()
{
  result = qword_1EC0BE3E8;
  if (!qword_1EC0BE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3E8);
  }

  return result;
}

unint64_t sub_1C48679D8()
{
  result = qword_1EC0BE3F0;
  if (!qword_1EC0BE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3F0);
  }

  return result;
}

unint64_t sub_1C4867A2C(uint64_t a1)
{
  *(a1 + 8) = sub_1C4867A5C();
  result = sub_1C45776A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4867A5C()
{
  result = qword_1EC0BE3F8;
  if (!qword_1EC0BE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE3F8);
  }

  return result;
}

unint64_t sub_1C4867AB4()
{
  result = qword_1EC0BE400;
  if (!qword_1EC0BE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE400);
  }

  return result;
}

unint64_t sub_1C4867B0C()
{
  result = qword_1EC0BE408;
  if (!qword_1EC0BE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE408);
  }

  return result;
}

unint64_t sub_1C4867B64()
{
  result = qword_1EDDFA130;
  if (!qword_1EDDFA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA130);
  }

  return result;
}

unint64_t sub_1C4867BBC()
{
  result = qword_1EDDFA138;
  if (!qword_1EDDFA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA138);
  }

  return result;
}

unint64_t sub_1C4867C14()
{
  result = qword_1EC0BE410;
  if (!qword_1EC0BE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE410);
  }

  return result;
}

unint64_t sub_1C4867C6C()
{
  result = qword_1EC0BE418;
  if (!qword_1EC0BE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE418);
  }

  return result;
}

unint64_t sub_1C4867CC4()
{
  result = qword_1EC0BE420;
  if (!qword_1EC0BE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE420);
  }

  return result;
}

unint64_t sub_1C4867D68()
{
  result = qword_1EDDF4A38;
  if (!qword_1EDDF4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A38);
  }

  return result;
}

unint64_t sub_1C4867DC0()
{
  result = qword_1EDDF4A30;
  if (!qword_1EDDF4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A30);
  }

  return result;
}

unint64_t sub_1C4867E18()
{
  result = qword_1EDDF4A40;
  if (!qword_1EDDF4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4A40);
  }

  return result;
}

unint64_t sub_1C4867E6C()
{
  result = qword_1EC0BE428;
  if (!qword_1EC0BE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE428);
  }

  return result;
}

unint64_t sub_1C4867EC0()
{
  result = qword_1EC0BE440;
  if (!qword_1EC0BE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BE440);
  }

  return result;
}

uint64_t sub_1C4867FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1C4F02248();
}

uint64_t sub_1C4867FD8()
{
  v3 = *(v0 + 24);
  *(v1 - 88) = 2;

  return type metadata accessor for Source();
}

void sub_1C4867FF8()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4868024(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 40);
    v2 = *(a1 + 32);
  }

  return sub_1C43FBC98();
}

double sub_1C4868060@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1C480BC20(a1 + 32, a2);
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

void sub_1C4868084(uint64_t a1)
{
  sub_1C486BC38(a1);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v2)
  {
    sub_1C440E3A0();
    sub_1C486BC78(v3, v4, v5, v6);
  }
}

void sub_1C48680F0(uint64_t a1)
{
  sub_1C486BC38(a1);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v2)
  {
    sub_1C440E3A0();
    sub_1C486BE20(v3, v4, v5, v6);
  }
}

void sub_1C4868140(uint64_t a1)
{
  sub_1C486BC38(a1);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v2)
  {
    sub_1C440E3A0();
    sub_1C486BCEC(v3, v4, v5, v6);
  }
}

uint64_t sub_1C4868198()
{
  sub_1C440D504();
  result = sub_1C486BC38(v1);
  if (v4)
  {
    goto LABEL_9;
  }

  if (*(v0 + 36) != v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 32);
  sub_1C442CB70();
  if (!v6)
  {
    sub_1C4425C0C();
    sub_1C486BD78(v7);
  }

  sub_1C4EFF0C8();
  v8 = sub_1C44032C4();

  return sub_1C440BAA8(v8, v9, v10, v11);
}

uint64_t sub_1C4868210(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C4F01428();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4868288()
{
  sub_1C440D504();
  result = sub_1C4703354(v1);
  if (v4)
  {
    goto LABEL_9;
  }

  if (*(v0 + 36) != v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 32);
  sub_1C442CB70();
  if (!v6)
  {
    sub_1C4425C0C();
    sub_1C4BDF4BC(v7, v8, v9, v10, v11);
  }

  sub_1C4EF9DD8();
  v12 = sub_1C44032C4();

  return sub_1C440BAA8(v12, v13, v14, v15);
}

void sub_1C4868300(uint64_t a1, void (*a2)(void))
{
  a2();
  if (v2)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v3)
  {
    sub_1C440E3A0();
    sub_1C486BF20(v4, v5, v6, v7);
  }
}

void sub_1C4868354(uint64_t a1)
{
  sub_1C4703354(a1);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v2)
  {
    sub_1C440E3A0();
    sub_1C4BDF444(v3, v4, v5, v6);
  }
}

void sub_1C48683A8(uint64_t a1)
{
  sub_1C4703354(a1);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v2)
  {
    sub_1C440E3A0();
    sub_1C4BDF568(v3, v4, v5, v6);
  }
}

uint64_t sub_1C48683F8()
{
  sub_1C440D504();
  result = sub_1C4703354(v1);
  if (v4)
  {
    goto LABEL_9;
  }

  if (*(v0 + 36) != v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 32);
  sub_1C442CB70();
  if (!v6)
  {
    sub_1C4425C0C();
    sub_1C486BF78(v7);
  }

  sub_1C4EF9DD8();
  v8 = sub_1C44032C4();

  return sub_1C440BAA8(v8, v9, v10, v11);
}

void sub_1C4868470(uint64_t a1)
{
  sub_1C486BC38(a1);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_1C440F770();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (!v2)
  {
    sub_1C440E3A0();
    sub_1C486BE20(v3, v4, v5, v6);
  }
}

void sub_1C48684D8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C4703354(a1);
  if (v3)
  {
    goto LABEL_10;
  }

  sub_1C440F770();
  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  sub_1C441986C();
  if (v4)
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    sub_1C440E3A0();

    sub_1C4BDF3EC(v5, v6, v7, v8);
  }
}

uint64_t sub_1C48685EC()
{
  sub_1C440D504();
  result = sub_1C4703354(v2);
  if (v5)
  {
    goto LABEL_8;
  }

  if (*(v1 + 36) != v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(v1 + 32))
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *v0 = 0u;
  }

  else
  {
    *v0 = sub_1C486C020(v7, result, v4, 0, v1);
    *(v0 + 8) = v6;
    return sub_1C441D670(v7, v0 + 16);
  }

  return result;
}

uint64_t sub_1C48686A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 16);
  v9 = sub_1C456902C(a2, a3);
  if (v8)
  {
    sub_1C446C964(a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)), a4, a2, a3);
  }

  v10 = sub_1C442FDE8();

  return sub_1C440BAA8(v10, v11, v12, v13);
}

uint64_t sub_1C4868800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(v5 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v9[2] = &v10;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;

  sub_1C4465390(a5, v9);
}

uint64_t sub_1C486886C()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CD48);
  v1 = sub_1C442B738(v0, qword_1EDE2CD48);
  v2 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C48688E8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DCD8);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_1C43FCED0();
    *v11 = 0;
    _os_log_impl(&dword_1C43F8000, v9, v10, "GraphSimulationXPC: starting...", v11, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDE5BC8 != -1)
  {
    sub_1C4411DA4();
  }

  v12 = sub_1C442B738(v2, qword_1EDE2CD48);
  sub_1C448CCC8(a1, v7, type metadata accessor for Configuration);
  v13 = type metadata accessor for Configuration();
  sub_1C440BAA8(v7, 0, 1, v13);
  swift_beginAccess();
  sub_1C45A6EE0(v7, v12);
  swift_endAccess();
  sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
  sub_1C44059E8();
  v14 = sub_1C49AA56C();
  v15 = qword_1EDE2CD38;
  qword_1EDE2CD38 = v14;
  v16 = v14;

  if (v16)
  {
    qword_1EDE2CD40 = [objc_allocWithZone(type metadata accessor for GraphSimulationXPC.Delegate()) init];
    v17 = qword_1EDE2CD40;
    swift_unknownObjectRelease();
    [v16 setDelegate:v17];

    [v16 resume];
  }

  else
  {
    v16 = sub_1C4F00968();
    v18 = sub_1C4F01CE8();
    if (os_log_type_enabled(v16, v18))
    {
      v19 = sub_1C43FCED0();
      sub_1C43FBD24(v19);
      sub_1C43FFFD8(&dword_1C43F8000, v20, v21, "Failed to create KGSimulation XPC service");
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C4868B94(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  if (qword_1EDDE5BC8 != -1)
  {
    sub_1C4411DA4();
  }

  v9 = sub_1C442B738(v3, qword_1EDE2CD48);
  swift_beginAccess();
  sub_1C446C964(v9, v8, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v10 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = &v8[*(v10 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    sub_1C449F0D0(v8, type metadata accessor for Configuration);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v13) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v14) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDE2DCD8);
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1C43FCED0();
        sub_1C43FBD24(v23);
        _os_log_impl(&dword_1C43F8000, v21, v22, "GraphSimulationXPC: service is in no-op mode.", v13, 2u);
        sub_1C43FE9D4();
      }
    }

    else
    {
      sub_1C44059E8();
      if (sub_1C446874C())
      {
        v16 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v16, sel_setExportedInterface_);

        v17 = [objc_allocWithZone(type metadata accessor for GraphSimulationXPC.Server()) init];
        sub_1C44059FC(v17, sel_setExportedObject_);

        v29 = sub_1C4868F50;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1C4833DD0;
        v28 = &unk_1F43EF5E8;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInterruptionHandler_);
        _Block_release(v18);
        v29 = sub_1C4868F70;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1C4833DD0;
        v28 = &unk_1F43EF610;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInvalidationHandler_);
        _Block_release(v19);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id GraphSimulationXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t GraphSimulationXPC.Server.mockTripleEntityTagging(withContactId:inferredRelationshipLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_1C4EFF0C8();
  v4[17] = v5;
  sub_1C43FCF7C(v5);
  v4[18] = v6;
  v8 = *(v7 + 64);
  v4[19] = sub_1C43FE604();
  v4[20] = swift_task_alloc();
  v9 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  v4[21] = sub_1C43FBE7C();
  v12 = sub_1C4F00DD8();
  v4[22] = v12;
  sub_1C43FCF7C(v12);
  v4[23] = v13;
  v15 = *(v14 + 64);
  v4[24] = sub_1C43FBE7C();
  v16 = sub_1C4F00DC8();
  v4[25] = v16;
  sub_1C43FCF7C(v16);
  v4[26] = v17;
  v19 = *(v18 + 64);
  v4[27] = sub_1C43FE604();
  v4[28] = swift_task_alloc();
  v20 = sub_1C4F01188();
  v4[29] = v20;
  sub_1C43FCF7C(v20);
  v4[30] = v21;
  v23 = *(v22 + 64);
  v4[31] = sub_1C43FBE7C();
  v24 = sub_1C4EFD548();
  v4[32] = v24;
  sub_1C43FCF7C(v24);
  v4[33] = v25;
  v27 = *(v26 + 64);
  v4[34] = sub_1C43FE604();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v28 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v28);
  v30 = *(v29 + 64);
  v4[37] = sub_1C43FBE7C();
  v31 = sub_1C4EFDE18();
  v4[38] = v31;
  sub_1C43FCF7C(v31);
  v4[39] = v32;
  v34 = *(v33 + 64);
  v4[40] = sub_1C43FBE7C();
  v35 = sub_1C4EFDE68();
  sub_1C43FBD18(v35);
  v37 = *(v36 + 64);
  v4[41] = sub_1C43FBE7C();
  v38 = sub_1C4EFDE88();
  v4[42] = v38;
  sub_1C43FCF7C(v38);
  v4[43] = v39;
  v41 = *(v40 + 64);
  v4[44] = sub_1C43FE604();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v42 = sub_1C4EFDE98();
  v4[56] = v42;
  sub_1C43FCF7C(v42);
  v4[57] = v43;
  v45 = *(v44 + 64);
  v4[58] = sub_1C43FBE7C();
  v46 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v46);
  v48 = *(v47 + 64);
  v4[59] = sub_1C43FE604();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v49 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4[64] = v49;
  sub_1C43FBD18(v49);
  v51 = *(v50 + 64);
  v4[65] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C4869494, 0, 0);
}

uint64_t sub_1C4869494()
{
  v312 = v0;
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  static NSUserDefaults.isGraphStoreManuallyOverridden.setter(1);
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FE9D4();
  }

  if (qword_1EDDE5BC8 != -1)
  {
    sub_1C4411DA4();
  }

  v7 = v0[65];
  sub_1C442B738(v0[64], qword_1EDE2CD48);
  swift_beginAccess();
  v8 = sub_1C43FBC98();
  sub_1C446C964(v8, v9, v10, v11);
  v12 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v7, 1, v12);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v14 = v0[65];
  v15 = type metadata accessor for GraphStore();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v261 = v1;
  GraphStore.init(config:)(v14);
  sub_1C440BAA8(v0[63], 1, 1, v0[17]);
  v18 = MEMORY[0x1E69E7CC0];
  v0[11] = MEMORY[0x1E69E7CC0];
  v0[12] = v18;
  if (qword_1EDDF7900 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v19, qword_1EDE2D620);
  String.base64EncodedSHA(withPrefix:)();
  v303 = v20;
  v308 = v21;
  v22 = sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
  v23 = type metadata accessor for Source();
  v24 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
  v268 = *(*(v23 - 8) + 72);
  v265 = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C4F0D130;
  v270 = v24;
  v26 = v25 + v24;
  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v254 = v0[63];
  v300 = v0[57];
  v27 = v0[55];
  v289 = v0[56];
  v29 = v0[53];
  v28 = v0[54];
  v30 = v0[52];
  v294 = v0[58];
  v298 = v0[51];
  v276 = v0[50];
  v278 = v0[49];
  v233 = v0[48];
  v234 = v0[47];
  v235 = v0[46];
  v236 = v0[45];
  v237 = v0[44];
  v304 = v0[43];
  v31 = v0[42];
  v238 = v0[40];
  v239 = v0[39];
  v240 = v0[38];
  v242 = v0[41];
  v285 = v0[37];
  v257 = v0[36];
  v244 = v0[13];
  v246 = v0[14];
  sub_1C442B738(v23, &qword_1EDDFD180);
  sub_1C4432404();
  v292 = v32;
  sub_1C448CCC8(v32, v26, v33);
  SourceSet.init(arrayLiteral:)(&v310, v25);
  v34 = *MEMORY[0x1E69A95C0];
  v35 = v304[13];
  sub_1C442B8EC();
  v35();
  v279 = v28;
  sub_1C442B8EC();
  v35();
  (v35)(v29, v34, v31);
  sub_1C442B8EC();
  v35();
  sub_1C442B8EC();
  v35();
  sub_1C442B8EC();
  v35();
  v36 = v304[2];
  v36(v278, v27, v31);
  v36(v233, v28, v31);
  v36(v234, v29, v31);
  v36(v235, v30, v31);
  v36(v236, v298, v31);
  v36(v237, v276, v31);
  sub_1C4EFDD38();
  (*(v239 + 104))(v238, *MEMORY[0x1E69A95A8], v240);
  sub_1C4EFDE28();
  sub_1C4EFDEA8();
  v37 = v304[1];
  v305 = (v304 + 1);
  v241 = v37;
  v37(v276, v31);
  v37(v298, v31);
  v37(v30, v31);
  v37(v29, v31);
  v37(v28, v31);
  v37(v27, v31);
  v243 = sub_1C4EFD678();
  sub_1C440BAA8(v285, 1, 1, v243);
  v38 = swift_task_alloc();
  v38[2] = v303;
  v38[3] = v308;
  v38[4] = v0 + 12;
  v38[5] = v0 + 11;
  sub_1C4868800(v294, v285, sub_1C486BBB8, v38, sub_1C486C21C);

  sub_1C4420C3C(v285, &unk_1EC0C07E0, &unk_1C4F168F0);
  v248 = *(v300 + 8);
  v248(v294, v289);
  sub_1C486B184(v0[11]);
  v277 = v0[12];
  sub_1C4B46DB0();
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v39 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v39);
  v41 = *(v40 + 72);
  v43 = *(v42 + 80);
  v44 = swift_allocObject();
  sub_1C4417310(v44);
  sub_1C4EFE308();
  sub_1C4D504A4();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  sub_1C4417310(inited);
  *(v46 + 32) = v244;
  inited[2].n128_u64[1] = v246;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C448DE08(inited);
  v47 = swift_allocObject();
  sub_1C43FD89C(v47);
  sub_1C4EFE558();
  sub_1C4D504A4();
  sub_1C4405C98();
  (v35)(v48, v49, v50, v51, v52, v53);
  sub_1C4405C98();
  (v35)(v54, v55, v56, v57, v58, v59);
  sub_1C4405C98();
  (v35)(v60, v61, v62, v63, v64, v65);
  sub_1C4405C98();
  (v35)(v66, v67, v68, v69, v70, v71);
  sub_1C4405C98();
  (v35)(v72, v73, v74, v75, v76, v77);
  sub_1C4EFDCD8();

  v241(v298, v31);
  v241(v30, v31);
  v241(v29, v31);
  v241(v279, v31);
  v241(v27, v31);
  sub_1C440BAA8(v285, 1, 1, v243);
  v78 = swift_task_alloc();
  *(v78 + 16) = v254;
  sub_1C4868800(v294, v285, sub_1C486BBC4, v78, sub_1C486C21C);

  sub_1C4420C3C(v285, &unk_1EC0C07E0, &unk_1C4F168F0);
  v248(v294, v289);
  v301 = GraphStore.currentUser()();
  sub_1C4EFD4C8();
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v80 = v0[35];
  v79 = v0[36];
  v82 = v0[32];
  v81 = v0[33];
  sub_1C442B738(v261, qword_1EDE2DE10);
  v295 = *(v81 + 16);
  v295(v80, v79, v82);
  v83 = v308;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v84 = sub_1C4F00968();
  v85 = sub_1C4F01CB8();

  v86 = os_log_type_enabled(v84, v85);
  v87 = v0[35];
  v89 = v0[32];
  v88 = v0[33];
  if (v86)
  {
    v90 = swift_slowAlloc();
    v310 = swift_slowAlloc();
    *v90 = 136381187;
    v91 = v303;
    *(v90 + 4) = sub_1C441D828(v303, v308, &v310);
    *(v90 + 12) = 2080;
    sub_1C44CD1F0(&qword_1EDDFA220, MEMORY[0x1E69A92C8]);
    sub_1C4F02858();
    v92 = sub_1C442513C();
    v93(v92);
    v94 = sub_1C4404DC8();
    v97 = sub_1C441D828(v94, v95, v96);
    v83 = v308;

    *(v90 + 14) = v97;
    *(v90 + 22) = 1024;
    *(v90 + 24) = 1;
    _os_log_impl(&dword_1C43F8000, v84, v85, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v90, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v98 = sub_1C442513C();
    v99(v98);
    v91 = v303;
  }

  v100 = v0[30];
  v101 = v0[31];
  v102 = v0[29];
  v103 = *v292;
  v104 = v292[1];
  v310 = v91;
  v311 = v83;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v103, v104);
  v106 = v310;
  v105 = v311;
  sub_1C4F01178();
  sub_1C4F01148();
  v108 = v107;
  (*(v100 + 8))(v101, v102);
  if (v108 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v109 = sub_1C4F00968();
    v110 = sub_1C4F01CD8();

    v111 = os_log_type_enabled(v109, v110);
    v112 = v0[36];
    v113 = v0[32];
    v114 = v0[33];
    if (v111)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v310 = v116;
      *v115 = 136380675;
      v117 = sub_1C441D828(v106, v105, &v310);

      *(v115 + 4) = v117;
      _os_log_impl(&dword_1C43F8000, v109, v110, "Source: failed to encode identifier as UTF8 data: %{private}s", v115, 0xCu);
      sub_1C440962C(v116);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v132 = v113;
    v130 = v305;
    v305(v112, v132);
    v131 = 1;
  }

  else
  {
    v286 = v0[62];
    v274 = v0[36];
    v262 = v0[34];
    v290 = v0[33];
    v272 = v0[32];
    v118 = v0[28];
    v280 = v0[27];
    v258 = v0[26];
    v282 = v0[25];
    v120 = v0[23];
    v119 = v0[24];
    v121 = v0[22];

    sub_1C44CD1F0(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    sub_1C4404DC8();
    sub_1C4F00DB8();
    v122 = sub_1C43FD2BC();
    sub_1C44344B8(v122, v123);
    v124 = sub_1C43FD2BC();
    sub_1C4498FD8(v124, v125);
    v126 = sub_1C43FD2BC();
    sub_1C441DFEC(v126, v127);
    sub_1C4404DC8();
    sub_1C4F00DA8();
    (*(v120 + 8))(v119, v121);
    v295(v262, v274, v272);
    (*(v258 + 16))(v280, v118, v282);
    sub_1C4404DC8();
    sub_1C4EFF028();
    v128 = sub_1C43FD2BC();
    sub_1C441DFEC(v128, v129);
    (*(v258 + 8))(v118, v282);
    v130 = v305;
    v305(v274, v272);
    v131 = 0;
  }

  sub_1C440BAA8(v0[62], v131, 1, v0[17]);
  if (*(v301 + 2))
  {
    v133 = v0[62];
    v134 = v0[21];
    sub_1C44D0C64(v301, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, v134);

    sub_1C4420C3C(v133, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v135 = type metadata accessor for GraphTriple(0);
    if (sub_1C44157D4(v134, 1, v135) == 1)
    {
      sub_1C4420C3C(v0[21], &unk_1EC0BC900, &unk_1C4F142D0);
      v136 = 1;
    }

    else
    {
      v137 = v0[21];
      (*(v0[18] + 16))(v0[61], v137, v0[17]);
      sub_1C449F0D0(v137, type metadata accessor for GraphTriple);
      v136 = 0;
    }

    v138 = v0[62];
    sub_1C440BAA8(v0[61], v136, 1, v0[17]);
    v139 = sub_1C43FBC98();
    sub_1C44DDDBC(v139, v140);
  }

  else
  {
  }

  v141 = v0[60];
  v142 = v0[17];
  sub_1C446C964(v0[62], v141, &unk_1EC0BA0E0, &qword_1C4F105A0);
  if (sub_1C44157D4(v141, 1, v142) == 1)
  {
    v143 = v0 + 60;
    sub_1C4420C3C(v0[62], &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v144 = v0[63];
    v145 = v0[59];
    v146 = v0[17];
    v147 = *(v0[18] + 32);
    (v147)(v0[20], v0[60], v146);
    sub_1C446C964(v144, v145, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v145, 1, v146) != 1)
    {
      v155 = v0[34];
      v249 = v0[33];
      v251 = v0[32];
      v306 = v130;
      v156 = v0[20];
      v296 = v156;
      v283 = v0[19];
      v157 = v0[18];
      v255 = v0[15];
      v259 = v0[16];
      v302 = v0[17];
      v147(v283, v0[59], v302, v148, v149, v150);
      sub_1C456902C(&unk_1EC0BE470, &unk_1C4F371E0);
      v158 = (type metadata accessor for GraphTriple(0) - 8);
      v299 = *(*v158 + 72);
      v159 = (*(*v158 + 80) + 32) & ~*(*v158 + 80);
      v263 = swift_allocObject();
      *(v263 + 16) = xmmword_1C4F0F820;
      v160 = *(v157 + 16);
      v160(v263 + v159, v156, v302);
      v161 = v263 + v159 + v158[7];
      sub_1C4EFEBB8();
      v162 = v263 + v159 + v158[8];
      sub_1C4EFF888();
      v163 = v263 + v159 + v158[9];
      sub_1C4EFEC38();
      sub_1C4EFD4C8();
      v164 = sub_1C4EFD2F8();
      v166 = v165;
      v306(v155, v251);
      v167 = swift_allocObject();
      sub_1C4417310(v167);
      sub_1C4432404();
      v307 = v168;
      sub_1C448CCC8(v292, v169 + v270, v170);
      SourceSet.init(sources:)(&v310, v167);
      v171 = v310;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v287 = v263 + v159;
      v172 = (v263 + v159 + v158[10]);
      *v172 = v164;
      v172[1] = v166;
      *(v287 + v158[11]) = v171;
      sub_1C441FBF0();
      *(v287 + v173) = v174;
      v175 = (v263 + v159 + v158[13]);
      *v175 = v303;
      v175[1] = v308;
      *(v287 + v158[14]) = v176;
      v160(v263 + v159 + v299, v296, v302);
      v177 = v263 + v159 + v299 + v158[7];
      sub_1C4EFE5D8();
      sub_1C44103C0();
      sub_1C441E3F0();
      sub_1C4EFEC38();
      v178 = swift_allocObject();
      sub_1C43FD89C(v178);
      sub_1C448CCC8(v292, v179 + v270, v307);
      SourceSet.init(sources:)(&v310, v265);
      v180 = v310;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4409D00();
      *v181 = 1702195828;
      v181[1] = 0xE400000000000000;
      *(v287 + v299 + v158[11]) = v180;
      sub_1C4407000();
      *v182 = v303;
      v182[1] = v308;
      sub_1C4414B58(v183);
      v184 = v263 + v159 + 2 * v299;
      v160(v184, v296, v302);
      v185 = v184 + v158[7];
      sub_1C4EFE638();
      v186 = v184 + v158[8];
      sub_1C4EFF888();
      v187 = v184 + v158[9];
      sub_1C4EFE808();
      v188 = sub_1C4EFF068();
      v310 = 3826797;
      v311 = 0xE300000000000000;
      MEMORY[0x1C6940010](v188);

      v189 = v311;
      v252 = v310;
      v190 = swift_allocObject();
      sub_1C4417310(v190);
      sub_1C448CCC8(v292, v191 + v270, v307);
      SourceSet.init(sources:)(&v310, v190);
      v192 = v310;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v193 = (v184 + v158[10]);
      *v193 = v252;
      v193[1] = v189;
      *(v184 + v158[11]) = v192;
      sub_1C441FBF0();
      *(v184 + v194) = v195;
      v196 = (v184 + v158[13]);
      *v196 = v303;
      v196[1] = v308;
      *(v184 + v158[14]) = v197;
      v198 = v263 + v159 + 3 * v299;
      v160(v198, v296, v302);
      v199 = v198 + v158[7];
      sub_1C4EFE638();
      sub_1C44103C0();
      sub_1C441E3F0();
      sub_1C4EFE2A8();
      v200 = swift_allocObject();
      sub_1C43FD89C(v200);
      sub_1C448CCC8(v292, v201 + v270, v307);
      SourceSet.init(sources:)(&v310, v184);
      v202 = v310;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4409D00();
      *v203 = 3681840;
      v203[1] = 0xE300000000000000;
      *(v198 + v158[11]) = v202;
      sub_1C4407000();
      *v204 = v303;
      v204[1] = v308;
      sub_1C4414B58(v205);
      v206 = v263 + v159 + 4 * v299;
      v160(v206, v296, v302);
      v207 = v206 + v158[7];
      sub_1C4EFE638();
      sub_1C44103C0();
      sub_1C441E3F0();
      sub_1C4EFE878();
      v208 = swift_allocObject();
      sub_1C43FD89C(v208);
      sub_1C448CCC8(v292, v209 + v270, v307);
      SourceSet.init(sources:)(&v310, v184);
      v210 = v310;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4409D00();
      *v211 = v255;
      v211[1] = v259;
      *(v206 + v158[11]) = v210;
      sub_1C4407000();
      *v212 = v303;
      v212[1] = v308;
      sub_1C4414B58(v213);
      v214 = v263 + v159 + 5 * v299;
      v160(v214, v296, v302);
      v215 = v158[7];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFE638();
      sub_1C44103C0();
      sub_1C441E3F0();
      sub_1C4EFEB48();
      v216 = swift_allocObject();
      sub_1C4417310(v216);
      sub_1C448CCC8(v292, v217 + v270, v307);
      SourceSet.init(sources:)(&v310, v216);
      v218 = v310;
      sub_1C4EF9AE8();
      sub_1C4409D00();
      *v219 = v255;
      v219[1] = v259;
      *(v214 + v158[11]) = v218;
      sub_1C4407000();
      *v220 = v303;
      v220[1] = v308;
      sub_1C4414B58(v221);
      v143 = v0 + 62;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B46DB0();

      swift_setDeallocating();
      sub_1C49E173C();
      v222 = *(v157 + 8);
      v222(v283, v302);
      v222(v296, v302);
      v309 = 1;
      goto LABEL_35;
    }

    v143 = v0 + 59;
    v151 = v0[62];
    v152 = v0[20];
    v153 = v0[17];
    v154 = v0[18];

    (*(v154 + 8))(v152, v153);
    sub_1C4420C3C(v151, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v309 = 0;
LABEL_35:
  v223 = *v143;
  v224 = v0[65];
  v225 = v0[62];
  v226 = v0[63];
  v227 = v0[60];
  v228 = v0[61];
  v230 = v0[58];
  v229 = v0[59];
  v245 = v0[55];
  v247 = v0[54];
  v250 = v0[53];
  v253 = v0[52];
  v256 = v0[51];
  v260 = v0[50];
  v264 = v0[49];
  v266 = v0[48];
  v267 = v0[47];
  v269 = v0[46];
  v271 = v0[45];
  v273 = v0[44];
  v275 = v0[41];
  v281 = v0[40];
  v284 = v0[37];
  v288 = v0[36];
  v291 = v0[35];
  v293 = v0[34];
  v297 = v0[31];
  sub_1C43FF130();
  sub_1C4420C3C(v231, &unk_1EC0BA0E0, &qword_1C4F105A0);

  sub_1C4420C3C(v226, &unk_1EC0BA0E0, &qword_1C4F105A0);

  v232 = v0[1];

  return v232(v309);
}