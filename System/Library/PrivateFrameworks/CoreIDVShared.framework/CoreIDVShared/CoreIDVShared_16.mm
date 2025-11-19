unint64_t sub_225B1C34C(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000225D1D890;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 56) = 0x7365697274;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v8 = sub_225B2E2BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B0);
  swift_arrayDestroy();
  if (a4)
  {
    v9 = sub_225CCE444();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A0492C(v9, 0x646F43726F727265, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  }

  return v8;
}

uint64_t sub_225B1C4D8(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  sub_225CCFBD4();
  sub_225ABCD30(v15, a2);
  v6 = sub_225CCFC24();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_225AB7F60(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *v2;

    sub_225B1D3EC(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_225B1C618(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_225CCFBD4();
  sub_225CCE5B4();
  v8 = sub_225CCFC24();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_225CCF934() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_225B1D578(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_225B1C768(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_225CCF154();

    if (v9)
    {

      sub_2259D8718(0, &qword_281059AB0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_225CCF144();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_225B1C9A0(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_225B1D140();
    }

    v18 = v8;
    sub_225B1D368(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2259D8718(0, &qword_281059AB0);
  v11 = sub_225CCEF54();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_225B1D6F8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_225CCEF64();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_225B1C9A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A0);
    v2 = sub_225CCF1C4();
    v14 = v2;
    sub_225CCF134();
    if (sub_225CCF164())
    {
      sub_2259D8718(0, &qword_281059AB0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_225B1D140();
        }

        v2 = v14;
        result = sub_225CCEF54();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_225CCF164());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_225B1CB90()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8C0);
  result = sub_225CCF1B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v31 = v1;
    v32 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v33 = result;
    while (1)
    {
      if (!v9)
      {
        v14 = v5;
        while (1)
        {
          v5 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v5 >= v10)
          {
            break;
          }

          v15 = v6[v5];
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v34 = (v15 - 1) & v15;
            goto LABEL_15;
          }
        }

        v30 = 1 << *(v2 + 32);
        if (v30 >= 64)
        {
          bzero(v6, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v30;
        }

        v1 = v31;
        *(v2 + 16) = 0;
        break;
      }

      v13 = __clz(__rbit64(v9));
      v34 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_225CCFBD4();
      if (v16 >> 62)
      {
        v29 = sub_225CCF144();
        MEMORY[0x22AA6E420](v29);
        result = sub_225CCF144();
        v17 = result;
        if (!result)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = MEMORY[0x22AA6E420](*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_24;
        }
      }

      if (v17 < 1)
      {
        goto LABEL_42;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = 0;
        do
        {
          MEMORY[0x22AA6DA80](v18++, v16);
          type metadata accessor for SecCertificate(0);
          sub_225B20E50();
          sub_225CCD504();
          swift_unknownObjectRelease();
        }

        while (v17 != v18);
      }

      else
      {
        v19 = (v16 + 32);
        type metadata accessor for SecCertificate(0);
        sub_225B20E50();
        do
        {
          v20 = *v19++;
          v21 = v20;
          sub_225CCD504();

          --v17;
        }

        while (v17);
      }

LABEL_24:
      result = sub_225CCFC24();
      v4 = v33;
      v22 = -1 << *(v33 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v33 + 48) + 8 * v12) = v16;
      ++*(v33 + 16);
      v2 = v32;
      v9 = v34;
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_225B1CEE0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEE0);
  result = sub_225CCF1B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_225CCFBD4();
      sub_225CCE5B4();
      result = sub_225CCFC24();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_225B1D140()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A0);
  result = sub_225CCF1B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_225CCEF54();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_225B1D368(uint64_t a1, uint64_t a2)
{
  sub_225CCEF54();
  result = sub_225CCF124();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_225B1D3EC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_225B1CB90();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_225B1D868();
      goto LABEL_12;
    }

    sub_225B1DC64();
  }

  v8 = *v3;
  sub_225CCFBD4();
  sub_225ABCD30(v18, v5);
  result = sub_225CCFC24();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD20);

      v12 = sub_225AB7F60(v11, v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v17;
  *(*v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_225CCFAB4();
  __break(1u);
  return result;
}

uint64_t sub_225B1D578(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_225B1CEE0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_225B1D9B8();
      goto LABEL_16;
    }

    sub_225B1DF9C();
  }

  v10 = *v4;
  sub_225CCFBD4();
  sub_225CCE5B4();
  result = sub_225CCFC24();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_225CCF934();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_225CCFAB4();
  __break(1u);
  return result;
}

void sub_225B1D6F8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_225B1D140();
  }

  else
  {
    if (v7 > v6)
    {
      sub_225B1DB14();
      goto LABEL_12;
    }

    sub_225B1E1D4();
  }

  v8 = *v3;
  v9 = sub_225CCEF54();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2259D8718(0, &qword_281059AB0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_225CCEF64();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_225CCFAB4();
  __break(1u);
}

void *sub_225B1D868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8C0);
  v2 = *v0;
  v3 = sub_225CCF1A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_225B1D9B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEE0);
  v2 = *v0;
  v3 = sub_225CCF1A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_225B1DB14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A0);
  v2 = *v0;
  v3 = sub_225CCF1A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_225B1DC64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8C0);
  result = sub_225CCF1B4();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_38:
    *v1 = v4;
    return result;
  }

  v30 = v1;
  v31 = v2;
  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  v32 = result;
  while (v9)
  {
    v13 = __clz(__rbit64(v9));
    v33 = (v9 - 1) & v9;
LABEL_15:
    v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
    sub_225CCFBD4();
    if (v16 >> 62)
    {
      v22 = sub_225CCF144();
      MEMORY[0x22AA6E420](v22);
      result = sub_225CCF144();
      v17 = result;
      if (!result)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      result = MEMORY[0x22AA6E420](*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_26;
      }
    }

    if (v17 < 1)
    {
      goto LABEL_41;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {

      v18 = 0;
      do
      {
        MEMORY[0x22AA6DA80](v18++, v16);
        type metadata accessor for SecCertificate(0);
        sub_225B20E50();
        sub_225CCD504();
        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    else
    {
      v19 = (v16 + 32);

      type metadata accessor for SecCertificate(0);
      sub_225B20E50();
      do
      {
        v20 = *v19++;
        v21 = v20;
        sub_225CCD504();

        --v17;
      }

      while (v17);
    }

LABEL_27:
    result = sub_225CCFC24();
    v4 = v32;
    v23 = -1 << *(v32 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      while (++v25 != v27 || (v26 & 1) == 0)
      {
        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v11 + 8 * v25);
        if (v29 != -1)
        {
          v12 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_40;
    }

    v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    *(*(v32 + 48) + 8 * v12) = v16;
    ++*(v32 + 16);
    v2 = v31;
    v9 = v33;
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v30;
      goto LABEL_38;
    }

    v15 = *(v6 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_225B1DF9C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEE0);
  result = sub_225CCF1B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_225CCFBD4();

      sub_225CCE5B4();
      result = sub_225CCFC24();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_225B1E1D4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8A0);
  result = sub_225CCF1B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_225CCEF54();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_225B1E3E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_225B1EFC4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_225B1E454(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_225B1E454(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_225CCF804();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_225CCE874();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_225B1E61C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_225B1E54C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_225B1E54C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_225CCF934(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_225B1E61C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_225B1EEAC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_225B1EBF8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_225CCF934();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_225CCF934();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_225B1EEC0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_225B1EEC0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_225B1EBF8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_225B1EEAC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_225B1EE20(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_225CCF934(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_225B1EBF8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_225CCF934() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_225CCF934() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_225B1EE20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_225B1EEAC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_225B1EEC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8B8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t _s13CoreIDVShared9AnalyticsC9sendErroryys0E0_pFZ_0(void *a1)
{
  v9 = a1;
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = aBlock;
    v14 = v11;
    v15 = v12;
    v3 = sub_2259F4610(&unk_2838FB0E8);
    v4 = sub_225B05A90(aBlock, v3);

    if (!v4)
    {
      v5 = sub_225CCE444();
      v6 = swift_allocObject();
      v7 = v14;
      v6[1] = v13;
      v6[2] = v7;
      v6[3] = v15;
      *&v12 = sub_225B20EA8;
      *(&v12 + 1) = v6;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v11 = sub_225B06D38;
      *(&v11 + 1) = &block_descriptor_499;
      v8 = _Block_copy(&aBlock);
      sub_225B20EB0(&v13, &v9);

      AnalyticsSendEventLazy();
      _Block_release(v8);
    }

    return sub_225B20F0C(&v13);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_225B1F270(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void sub_225B1F28C(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t sub_225B1F330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225B1F3A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_225B1F410()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7C0) - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_225B0E77C(v3, v4, v0 + v2, v5);
}

uint64_t sub_225B1F624(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2259F6128(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_225B1F638(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2259F6140(a1, a2, a3);
  }

  return a1;
}

void _s13CoreIDVShared11UIAnalyticsC16sendIncorrectMRZ16documentTypeCodeySS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v9 = off_28105B918;
  v10 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v11));
  (*(v5 + 16))(v8, &v9[v10], v4);
  os_unfair_lock_unlock(&v9[v11]);

  v12 = sub_225CCD934();
  v13 = sub_225CCED04();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2259BE198(a1, a2, aBlock);
    _os_log_impl(&dword_2259A7000, v12, v13, "sendIncorrectMRZ documentTypeCode: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA6F950](v15, -1, -1);
    MEMORY[0x22AA6F950](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v16 = sub_225CCE444();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_225B20D24;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B06D38;
  aBlock[3] = &block_descriptor_492;
  v18 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

unint64_t sub_225B1FA28()
{
  result = qword_27D73D7D0;
  if (!qword_27D73D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D7D0);
  }

  return result;
}

unint64_t sub_225B1FA80()
{
  result = qword_27D73D7D8;
  if (!qword_27D73D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D7D8);
  }

  return result;
}

unint64_t sub_225B1FAD8()
{
  result = qword_27D73D7E0;
  if (!qword_27D73D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D7E0);
  }

  return result;
}

unint64_t sub_225B1FB30()
{
  result = qword_27D73D7E8;
  if (!qword_27D73D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D7E8);
  }

  return result;
}

unint64_t sub_225B1FB88()
{
  result = qword_27D73D7F0;
  if (!qword_27D73D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D7F0);
  }

  return result;
}

unint64_t sub_225B1FBE0()
{
  result = qword_27D73D7F8;
  if (!qword_27D73D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D7F8);
  }

  return result;
}

unint64_t sub_225B1FC38()
{
  result = qword_27D73D800;
  if (!qword_27D73D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D800);
  }

  return result;
}

unint64_t sub_225B1FC90()
{
  result = qword_27D73D808;
  if (!qword_27D73D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D808);
  }

  return result;
}

unint64_t sub_225B1FCE8()
{
  result = qword_27D73D810;
  if (!qword_27D73D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D810);
  }

  return result;
}

unint64_t sub_225B1FD40()
{
  result = qword_27D73D818;
  if (!qword_27D73D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D818);
  }

  return result;
}

unint64_t sub_225B1FD98()
{
  result = qword_27D73D820;
  if (!qword_27D73D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D820);
  }

  return result;
}

unint64_t sub_225B1FDF0()
{
  result = qword_27D73D828;
  if (!qword_27D73D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D828);
  }

  return result;
}

unint64_t sub_225B1FE48()
{
  result = qword_27D73D830;
  if (!qword_27D73D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D830);
  }

  return result;
}

unint64_t sub_225B1FEA0()
{
  result = qword_27D73D838;
  if (!qword_27D73D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D838);
  }

  return result;
}

unint64_t sub_225B1FEF8()
{
  result = qword_27D73D840;
  if (!qword_27D73D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D840);
  }

  return result;
}

unint64_t sub_225B1FF50()
{
  result = qword_27D73D848;
  if (!qword_27D73D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D848);
  }

  return result;
}

unint64_t sub_225B1FFA8()
{
  result = qword_27D73D850;
  if (!qword_27D73D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D850);
  }

  return result;
}

unint64_t sub_225B20000()
{
  result = qword_27D73D858;
  if (!qword_27D73D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D858);
  }

  return result;
}

unint64_t sub_225B20058()
{
  result = qword_27D73D860;
  if (!qword_27D73D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D860);
  }

  return result;
}

unint64_t sub_225B200B0()
{
  result = qword_27D73D868;
  if (!qword_27D73D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D868);
  }

  return result;
}

unint64_t sub_225B20108()
{
  result = qword_27D73D870;
  if (!qword_27D73D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D870);
  }

  return result;
}

unint64_t sub_225B20160()
{
  result = qword_27D73D878;
  if (!qword_27D73D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D878);
  }

  return result;
}

unint64_t sub_225B201B8()
{
  result = qword_27D73D880;
  if (!qword_27D73D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D880);
  }

  return result;
}

unint64_t sub_225B20210()
{
  result = qword_27D73D888;
  if (!qword_27D73D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D888);
  }

  return result;
}

unint64_t sub_225B20268()
{
  result = qword_27D73D890;
  if (!qword_27D73D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D890);
  }

  return result;
}

unint64_t sub_225B202C0()
{
  result = qword_27D73D898;
  if (!qword_27D73D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D898);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonAnalytics.DigitalPresentmentRequestedEventRetention(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DaemonAnalytics.DigitalPresentmentRequestedEventRetention(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_225B203FC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225B20418(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonAnalytics.DigitalPresentmentRequestedEventElement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6D && *(a1 + 17))
  {
    return (*a1 + 109);
  }

  v3 = ((*(a1 + 16) >> 3) & 0xFFFFFF9F | (32 * ((*(a1 + 16) >> 1) & 3))) ^ 0x7F;
  if (v3 >= 0x6C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DaemonAnalytics.DigitalPresentmentRequestedEventElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6C)
  {
    *(result + 16) = 0;
    *result = a2 - 109;
    *(result + 8) = 0;
    if (a3 >= 0x6D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 5) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t sub_225B20540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225B2059C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_225B205EC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonAnalytics.MobileDocumentReaderSessionStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DaemonAnalytics.MobileDocumentReaderSessionStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_225B207AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_225B207C0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_225B2087C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_225B2090C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_225B209CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225B20A1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_225B20A70(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_225B20A88(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for IDCSAnalytics.PayloadValidationResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDCSAnalytics.PayloadValidationResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_225B20D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013Response.DeviceAuth(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225B20D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013Response.DeviceAuth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225B20DF4(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013Response.DeviceAuth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225B20E50()
{
  result = qword_27D73CA68;
  if (!qword_27D73CA68)
  {
    type metadata accessor for SecCertificate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73CA68);
  }

  return result;
}

void DIPLogError(_:message:log:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v40 = a2;
    v41 = a3;

    MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
    v8 = v40;
    v7 = v41;
    v40 = a2;
    v41 = a3;

    MEMORY[0x22AA6CE70](10, 0xE100000000000000);
    v10 = a2;
    v9 = a3;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v7 = 0xE000000000000000;
    v9 = 0xE000000000000000;
  }

  v11 = a1;
  v12 = sub_225CCD934();
  v13 = sub_225CCED14();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = v10;
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 136446466;
    v16 = sub_2259BE198(v8, v7, &v40);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue, v38);
    (*(v19 + 16))(&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = sub_225CCE504();
    v22 = sub_2259BE198(v20, v21, &v40);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2259A7000, v12, v13, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    v23 = v15;
    v10 = v37;
    MEMORY[0x22AA6F950](v23, -1, -1);
    MEMORY[0x22AA6F950](v14, -1, -1);
  }

  else
  {
  }

  v24 = a1;

  v25 = sub_225CCD934();
  v26 = sub_225CCECF4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = v28;
    *v27 = 136446466;
    v29 = sub_2259BE198(v10, v9, &v40);

    *(v27 + 4) = v29;
    *(v27 + 12) = 2082;
    v30 = swift_getErrorValue();
    MEMORY[0x28223BE20](v30, v39);
    (*(v32 + 16))(&v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33 = sub_225CCE524();
    v35 = sub_2259BE198(v33, v34, &v40);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_2259A7000, v25, v26, "%{public}s%{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v28, -1, -1);
    MEMORY[0x22AA6F950](v27, -1, -1);
  }

  else
  {
  }
}

void DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int16 *a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _WORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v55 = a8;
  v54 = a7;
  v52 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v47 - v20;
  v22 = *a4;
  v53 = a2;
  if (a3)
  {
    v48 = v22;
    swift_getErrorValue();
    v23 = v63;
    v24 = a3;
    sub_225B21FAC(v23, &v57);

    v25 = v58;
    if (v58)
    {
      v50 = v59;
      v51 = v60;
      v26 = v61;
      v49 = v62;
      LOWORD(v22) = v48;
      if ((a5 & 1) == 0)
      {
        LOWORD(v22) = v57;
      }

      goto LABEL_12;
    }

    v57 = a3;
    v28 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v29 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v31 = [v29 code];
      v32 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v32;
      *(inited + 40) = v31;
      v26 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v33 = a3;
      v51 = 0;
      v50 = 0;
      v25 = MEMORY[0x277D84F90];
      v49 = a3;
      LOWORD(v22) = v48;
      goto LABEL_12;
    }

    v57 = a3;
    v34 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v27 = sub_225CCE954();
    v35 = swift_dynamicCast();
    (*(*(v27 - 8) + 56))(v21, v35 ^ 1u, 1, v27);
    LOWORD(v22) = v48;
  }

  else
  {
    v27 = sub_225CCE954();
    (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  }

  sub_225CCE954();
  v36 = (*(*(v27 - 8) + 48))(v21, 1, v27) != 0;
  sub_2259CB640(v21, &unk_27D73B050);
  if (((v36 | a5) & 1) == 0)
  {
    LOWORD(v22) = 23;
  }

  v25 = MEMORY[0x277D84F90];
  v26 = sub_225B2C374(MEMORY[0x277D84F90]);
  v37 = a3;
  v51 = a2;
  v50 = a1;
  v49 = a3;
LABEL_12:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v26;
  sub_225B2C4A0(a6, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v57);

  v39 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_225B29AA0(0, *(v25 + 2) + 1, 1, v25);
  }

  v41 = *(v25 + 2);
  v40 = *(v25 + 3);
  if (v41 >= v40 >> 1)
  {
    v25 = sub_225B29AA0((v40 > 1), v41 + 1, 1, v25);
  }

  *(v25 + 2) = v41 + 1;
  v42 = &v25[56 * v41];
  v43 = v53;
  *(v42 + 4) = a1;
  *(v42 + 5) = v43;
  v44 = v55;
  *(v42 + 6) = v54;
  *(v42 + 7) = v44;
  *(v42 + 8) = a10;
  *(v42 + 9) = a11;
  *(v42 + 10) = a12;
  v45 = v52;
  *v52 = v22;
  v46 = v50;
  v45[1] = v25;
  v45[2] = v46;
  v45[3] = v51;
  v45[4] = v39;
  v45[5] = v49;
}

void Error.dipErrorCode.getter(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  sub_225B21FAC(a1, &v4);
  if (v5)
  {
    v3 = v4;
    sub_225B2C7C4(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v3 = 1183;
  }

  *a2 = v3;
}

unint64_t DIPError.PropertyKey.rawValue.getter()
{
  result = 0x666B726F576F6E69;
  switch(*v0)
  {
    case 1:
      result = 0x69766F72506F6E69;
      break;
    case 2:
      result = 0x6C666B726F577073;
      break;
    case 3:
      result = 0x6469766F72507073;
      break;
    case 4:
      result = 0x7475626972747461;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x5255726576726573;
      break;
    case 7:
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 8:
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x4974736575716572;
      break;
    case 0xA:
      result = 0x61737265766E6F63;
      break;
    case 0xC:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0x63655264756F6C63;
      break;
    case 0xF:
      result = 0x6552656369766564;
      break;
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 0x11:
      result = 0x6761735574726563;
      break;
    case 0x12:
      result = 0x6573616261746164;
      break;
    case 0x13:
      result = 0x74737973656C6966;
      break;
    case 0x14:
      result = 0x69796C7265646E75;
      break;
    case 0x15:
      result = 0x636E456567616D69;
      break;
    case 0x16:
      result = 1701273968;
      break;
    case 0x17:
      result = 0x636E75614C6F6E69;
      break;
    case 0x18:
      result = 0x746E756F43797274;
      break;
    case 0x19:
      result = 0xD000000000000012;
      break;
    case 0x1A:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t DIPError.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DIPError.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DIPError.properties.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void *DIPError.underlyingError.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_225B21FAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v68 - v8;
  MEMORY[0x28223BE20](v7, v10);
  (*(v12 + 16))(&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  if (swift_dynamicCast())
  {
    v13 = *(&v79 + 1);
    v14 = v81;
    v15 = v82;
    v16 = v80;
    *a2 = v79;
    *(a2 + 8) = v13;
    *(a2 + 16) = v16;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    return;
  }

  if (sub_225CCFB44() == 0x726F727245504944 && v17 == 0xE800000000000000)
  {
  }

  else
  {
    v18 = sub_225CCF934();

    if ((v18 & 1) == 0)
    {
LABEL_8:
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return;
    }
  }

  v19 = sub_225CCFB34();
  DIPError.Code.init(rawValue:)(v19);
  v20 = v79;
  if (v79 == 1183)
  {
    goto LABEL_8;
  }

  v21 = sub_225CCFB54();
  v22 = &off_278575000;
  if (!v21)
  {
    goto LABEL_15;
  }

  v23 = v21;
  v71 = v20;
  v24 = sub_225CCE474();
  v26 = v25;
  if (([v23 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    v22 = &off_278575000;
    v20 = v71;
LABEL_15:
    v77 = 0uLL;
    *&v78 = 0;
    *(&v78 + 1) = 1;
    goto LABEL_16;
  }

  *&v79 = v24;
  *(&v79 + 1) = v26;

  v27 = [v23 &off_278575140];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v27)
  {

    v77 = 0u;
    v78 = 0u;
    v22 = &off_278575000;
    v20 = v71;
    goto LABEL_40;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v77 = v79;
  v78 = v80;
  v22 = &off_278575000;
  v20 = v71;
  if (*(&v80 + 1) == 1)
  {
LABEL_16:
    v28 = &unk_27D73D918;
    v29 = &v77;
LABEL_17:
    sub_2259CB640(v29, v28);
    v30 = 0;
    v31 = 0;
    goto LABEL_18;
  }

LABEL_40:
  v79 = v77;
  v80 = v78;
  if (!*(&v78 + 1))
  {
    v28 = &qword_27D73DD90;
    v29 = &v79;
    goto LABEL_17;
  }

  v56 = swift_dynamicCast();
  if (v56)
  {
    v30 = v72;
  }

  else
  {
    v30 = 0;
  }

  if (v56)
  {
    v31 = *(&v72 + 1);
  }

  else
  {
    v31 = 0;
  }

LABEL_18:
  v32 = sub_225CCFB54();
  v70 = v30;
  if (!v32)
  {
LABEL_24:
    v77 = 0uLL;
    *&v78 = 0;
    *(&v78 + 1) = 1;
    goto LABEL_25;
  }

  v33 = v32;
  v34 = sub_225CCE474();
  v36 = v35;
  if (([v33 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  *&v72 = v34;
  *(&v72 + 1) = v36;

  v37 = [v33 v22[272]];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v37)
  {

    v77 = 0u;
    v78 = 0u;
    goto LABEL_48;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v77 = v72;
  v78 = v73;
  if (*(&v73 + 1) == 1)
  {
LABEL_25:
    v38 = &unk_27D73D918;
    v39 = &v77;
LABEL_26:
    sub_2259CB640(v39, v38);
LABEL_27:
    v40 = sub_225B2C248(MEMORY[0x277D84F90]);
LABEL_28:
    v69 = 0x8000000225D1DDB0;
    v41 = sub_225CCE954();
    (*(*(v41 - 8) + 56))(v9, 1, 1, v41);
    v42 = 0;
LABEL_29:
    sub_225CCE954();
    v43 = (*(*(v41 - 8) + 48))(v9, 1, v41);
    sub_2259CB640(v9, &unk_27D73B050);
    if (v43)
    {
      v20 = v20;
    }

    else
    {
      v20 = 23;
    }

    v71 = v20;

    v44 = MEMORY[0x277D84F90];
    v45 = sub_225B2C374(MEMORY[0x277D84F90]);
    v46 = v42;
    v47 = v30;
    v48 = v31;
    goto LABEL_33;
  }

LABEL_48:
  v79 = v77;
  v80 = v78;
  if (!*(&v78 + 1))
  {
    v38 = &qword_27D73DD90;
    v39 = &v79;
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v42 = v72;
  v40 = sub_225B2C248(MEMORY[0x277D84F90]);
  if (!v42)
  {
    goto LABEL_28;
  }

  swift_getErrorValue();
  v57 = v75;
  v71 = v74;
  v58 = v76;
  v59 = v42;
  sub_225B21FAC(&v79, v57, v58);

  v44 = *(&v79 + 1);
  v69 = 0x8000000225D1DDB0;
  if (*(&v79 + 1))
  {
    v48 = *(&v80 + 1);
    v47 = v80;
    v45 = v81;
    v49 = v82;
    v71 = v79;
    goto LABEL_34;
  }

  *&v79 = v42;
  v60 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_2259E4540();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v79 = v42;
    v66 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v41 = sub_225CCE954();
    v67 = swift_dynamicCast();
    (*(*(v41 - 8) + 56))(v9, v67 ^ 1u, 1, v41);
    goto LABEL_29;
  }

  v71 = v20;
  v61 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 20;
  v63 = [v61 code];
  v64 = MEMORY[0x277D83BF8];
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 72) = v64;
  *(inited + 40) = v63;
  v45 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73B060);

  v65 = v42;
  v47 = 0;
  v48 = 0;
  v44 = MEMORY[0x277D84F90];
LABEL_33:
  v49 = v42;
LABEL_34:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v79 = v45;
  sub_225B2C4A0(v40, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v79);

  v51 = v79;
  v52 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_225B29AA0(0, *(v44 + 2) + 1, 1, v44);
  }

  v54 = *(v44 + 2);
  v53 = *(v44 + 3);
  if (v54 >= v53 >> 1)
  {
    v44 = sub_225B29AA0((v53 > 1), v54 + 1, 1, v44);
  }

  *(v44 + 2) = v54 + 1;
  v55 = &v44[56 * v54];
  *(v55 + 4) = v70;
  *(v55 + 5) = v52;
  *(v55 + 6) = 0xD00000000000001CLL;
  *(v55 + 7) = v69;
  *(v55 + 8) = 0x4464656764697262;
  *(v55 + 9) = 0xEF726F7272455049;
  *(v55 + 10) = 148;
  *a2 = v71;
  *(a2 + 8) = v44;
  *(a2 + 16) = v47;
  *(a2 + 24) = v48;
  *(a2 + 32) = v51;
  *(a2 + 40) = v49;
}

uint64_t sub_225B22954(uint64_t a1)
{
  v2 = sub_225B2CD48();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_225B22990(uint64_t a1)
{
  v2 = sub_225B2CD48();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t DIPError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = *(v0 + 3);
  v4 = *(v0 + 4);
  v6 = *(v0 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = sub_225CCE474();
  *(inited + 40) = v8;

  v9 = v6;
  DIPError.description.getter();
  v11 = v10;
  v13 = v12;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  *(inited + 80) = sub_225CCE474();
  *(inited + 88) = v14;
  LOWORD(v32) = v1;
  *(&v32 + 1) = v2;
  v33 = v3;
  v34 = v5;
  v35 = v4;
  v36 = v6;

  v15 = v6;
  v16 = sub_225CCE524();
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v16;
  *(inited + 104) = v17;
  v18 = sub_225B2C92C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090);
  swift_arrayDestroy();
  v37 = v18;
  v19 = sub_225CCE474();
  v21 = v19;
  v22 = v20;
  if (v6)
  {
    swift_getErrorValue();
    v23 = sub_225B22CAC(v30, v31);
    swift_getErrorValue();
    v34 = v29;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_1, v28, v29);

    sub_2259B9624(&v32, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v27, v21, v22, isUniquelyReferenced_nonNull_native);

    return v18;
  }

  else
  {
    sub_225B2AC50(v19, v20, &v32);

    sub_2259CB640(&v32, &qword_27D73DD90);
    return v37;
  }
}

id sub_225B22CAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v195 - v8;
  v214 = MEMORY[0x277D84F98];
  v10 = sub_225CCE474();
  v12 = v11;
  v13 = sub_225CCFB54();
  v200 = a1;
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v15 = sub_225CCE474();
  v17 = v16;
  if (([v14 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

LABEL_7:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_8;
  }

  *&v205 = v15;
  *(&v205 + 1) = v17;

  v18 = [v14 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v18)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_113;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_8:
    v19 = &unk_27D73D918;
    v20 = &v210;
LABEL_9:
    sub_2259CB640(v20, v19);
LABEL_10:
    sub_225B2AC50(v10, v12, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_11;
  }

LABEL_113:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v19 = &qword_27D73DD90;
    v20 = &v212;
    goto LABEL_9;
  }

  v140 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  *(&v213 + 1) = v140;
  v212 = v205;
  sub_2259B9624(&v212, &v210);
  v141 = v214;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v141;
  sub_225A03F40(&v210, v10, v12, isUniquelyReferenced_nonNull_native);

  v214 = v205;
LABEL_11:
  v21 = sub_225CCE474();
  v23 = v22;
  v24 = sub_225CCFB54();
  if (!v24)
  {
LABEL_17:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_18;
  }

  v25 = v24;
  v26 = sub_225CCE474();
  v28 = v27;
  if (([v25 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  *&v205 = v26;
  *(&v205 + 1) = v28;

  v29 = [v25 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v29)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_117;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_18:
    v30 = &unk_27D73D918;
    v31 = &v210;
LABEL_19:
    sub_2259CB640(v31, v30);
LABEL_20:
    sub_225B2AC50(v21, v23, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_21;
  }

LABEL_117:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v30 = &qword_27D73DD90;
    v31 = &v212;
    goto LABEL_19;
  }

  v143 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  *(&v213 + 1) = v143;
  v212 = v205;
  sub_2259B9624(&v212, &v210);
  v144 = v214;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v144;
  sub_225A03F40(&v210, v21, v23, v145);

  v214 = v205;
LABEL_21:
  v32 = sub_225CCE474();
  v34 = v33;
  v35 = sub_225CCFB54();
  if (!v35)
  {
LABEL_27:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_28;
  }

  v36 = v35;
  v37 = sub_225CCE474();
  v39 = v38;
  if (([v36 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  *&v205 = v37;
  *(&v205 + 1) = v39;

  v40 = [v36 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v40)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_121;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_28:
    v41 = &unk_27D73D918;
    v42 = &v210;
LABEL_29:
    sub_2259CB640(v42, v41);
LABEL_30:
    sub_225B2AC50(v32, v34, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_31;
  }

LABEL_121:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v41 = &qword_27D73DD90;
    v42 = &v212;
    goto LABEL_29;
  }

  v146 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  *(&v213 + 1) = v146;
  v212 = v205;
  sub_2259B9624(&v212, &v210);
  v147 = v214;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v147;
  sub_225A03F40(&v210, v32, v34, v148);

  v214 = v205;
LABEL_31:
  v43 = sub_225CCE474();
  v45 = v44;
  v46 = sub_225CCFB54();
  if (!v46)
  {
LABEL_37:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_38;
  }

  v47 = v46;
  v48 = sub_225CCE474();
  v50 = v49;
  if (([v47 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_37;
  }

  *&v205 = v48;
  *(&v205 + 1) = v50;

  v51 = [v47 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v51)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_125;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_38:
    v52 = &unk_27D73D918;
    v53 = &v210;
LABEL_39:
    sub_2259CB640(v53, v52);
LABEL_40:
    sub_225B2AC50(v43, v45, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_41;
  }

LABEL_125:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v52 = &qword_27D73DD90;
    v53 = &v212;
    goto LABEL_39;
  }

  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  *(&v213 + 1) = v149;
  *&v212 = v205;
  sub_2259B9624(&v212, &v210);
  v150 = v214;
  v151 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v150;
  sub_225A03F40(&v210, v43, v45, v151);

  v214 = v205;
LABEL_41:
  v54 = sub_225CCE474();
  v56 = v55;
  v57 = sub_225CCFB54();
  if (!v57)
  {
LABEL_47:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_48;
  }

  v58 = v57;
  v59 = sub_225CCE474();
  v61 = v60;
  if (([v58 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_47;
  }

  *&v205 = v59;
  *(&v205 + 1) = v61;

  v62 = [v58 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v62)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_129;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_48:
    v63 = &unk_27D73D918;
    v64 = &v210;
LABEL_49:
    sub_2259CB640(v64, v63);
LABEL_50:
    sub_225B2AC50(v54, v56, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_51;
  }

LABEL_129:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v63 = &qword_27D73DD90;
    v64 = &v212;
    goto LABEL_49;
  }

  v152 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_50;
  }

  *(&v213 + 1) = v152;
  v212 = v205;
  sub_2259B9624(&v212, &v210);
  v153 = v214;
  v154 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v153;
  sub_225A03F40(&v210, v54, v56, v154);

  v214 = v205;
LABEL_51:
  v65 = sub_225CCE474();
  v67 = v66;
  v68 = sub_225CCFB54();
  if (!v68)
  {
LABEL_57:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_58;
  }

  v69 = v68;
  v70 = sub_225CCE474();
  v72 = v71;
  if (([v69 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_57;
  }

  *&v205 = v70;
  *(&v205 + 1) = v72;

  v73 = [v69 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v73)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_133;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_58:
    v74 = &unk_27D73D918;
    v75 = &v210;
LABEL_59:
    sub_2259CB640(v75, v74);
LABEL_60:
    sub_225B2AC50(v65, v67, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_61;
  }

LABEL_133:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v74 = &qword_27D73DD90;
    v75 = &v212;
    goto LABEL_59;
  }

  v155 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_60;
  }

  *(&v213 + 1) = v155;
  v212 = v205;
  sub_2259B9624(&v212, &v210);
  v156 = v214;
  v157 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v156;
  sub_225A03F40(&v210, v65, v67, v157);

  v214 = v205;
LABEL_61:
  v76 = sub_225CCE474();
  v78 = v77;
  v79 = sub_225CCFB54();
  if (!v79)
  {
LABEL_67:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_68;
  }

  v80 = v79;
  v81 = sub_225CCE474();
  v83 = v82;
  if (([v80 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_67;
  }

  *&v205 = v81;
  *(&v205 + 1) = v83;

  v84 = [v80 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v84)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_137;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_68:
    v85 = &unk_27D73D918;
    v86 = &v210;
LABEL_69:
    sub_2259CB640(v86, v85);
LABEL_70:
    sub_225B2AC50(v76, v78, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_71;
  }

LABEL_137:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v85 = &qword_27D73DD90;
    v86 = &v212;
    goto LABEL_69;
  }

  v158 = MEMORY[0x277D83B88];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_70;
  }

  *(&v213 + 1) = v158;
  *&v212 = v205;
  sub_2259B9624(&v212, &v210);
  v159 = v214;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v159;
  sub_225A03F40(&v210, v76, v78, v160);

  v214 = v205;
LABEL_71:
  v87 = sub_225CCE474();
  v89 = v88;
  v90 = sub_225CCFB54();
  if (!v90)
  {
LABEL_77:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_78;
  }

  v91 = v90;
  v92 = sub_225CCE474();
  v94 = v93;
  if (([v91 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_77;
  }

  *&v205 = v92;
  *(&v205 + 1) = v94;

  v95 = [v91 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v95)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_141;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_78:
    v96 = v3;
    v97 = &unk_27D73D918;
    v98 = &v210;
LABEL_79:
    sub_2259CB640(v98, v97);
    v99 = sub_225CCCEA4();
    (*(*(v99 - 8) + 56))(v9, 1, 1, v99);
LABEL_80:
    sub_2259CB640(v9, &unk_27D73E090);
    sub_225B2AC50(v87, v89, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_81;
  }

LABEL_141:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v96 = v3;
    v97 = &qword_27D73DD90;
    v98 = &v212;
    goto LABEL_79;
  }

  v96 = v3;
  v161 = sub_225CCCEA4();
  v162 = swift_dynamicCast();
  v163 = *(v161 - 8);
  (*(v163 + 56))(v9, v162 ^ 1u, 1, v161);
  if ((*(v163 + 48))(v9, 1, v161) == 1)
  {
    goto LABEL_80;
  }

  *(&v213 + 1) = v161;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v212);
  (*(v163 + 32))(boxed_opaque_existential_1, v9, v161);
  sub_2259B9624(&v212, &v210);
  v165 = v214;
  v166 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v165;
  sub_225A03F40(&v210, v87, v89, v166);

  v214 = v205;
LABEL_81:
  v100 = sub_225CCE474();
  v102 = v101;
  v103 = v96;
  v104 = sub_225CCFB54();
  if (!v104)
  {
LABEL_87:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_88;
  }

  v105 = v104;
  v106 = sub_225CCE474();
  v108 = v107;
  if (([v105 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_87;
  }

  *&v205 = v106;
  *(&v205 + 1) = v108;

  v109 = [v105 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v109)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_145;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_88:
    v110 = &unk_27D73D918;
    v111 = &v210;
LABEL_89:
    sub_2259CB640(v111, v110);
LABEL_90:
    sub_225B2AC50(v100, v102, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_91;
  }

LABEL_145:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v110 = &qword_27D73DD90;
    v111 = &v212;
    goto LABEL_89;
  }

  v167 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_90;
  }

  *(&v213 + 1) = v167;
  v212 = v205;
  sub_2259B9624(&v212, &v210);
  v168 = v214;
  v169 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v168;
  sub_225A03F40(&v210, v100, v102, v169);

  v214 = v205;
LABEL_91:
  v112 = sub_225CCE474();
  v114 = v113;
  v115 = sub_225CCFB54();
  if (!v115)
  {
LABEL_97:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_98;
  }

  v116 = v115;
  v117 = sub_225CCE474();
  v119 = v118;
  if (([v116 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_97;
  }

  *&v205 = v117;
  *(&v205 + 1) = v119;

  v120 = [v116 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v120)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_149;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_98:
    v121 = &unk_27D73D918;
    v122 = &v210;
LABEL_99:
    sub_2259CB640(v122, v121);
LABEL_100:
    sub_225B2AC50(v112, v114, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_101;
  }

LABEL_149:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v121 = &qword_27D73DD90;
    v122 = &v212;
    goto LABEL_99;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_100;
  }

  v170 = v205;
  swift_getErrorValue();
  v171 = sub_225B22CAC(v203, v204);

  swift_getErrorValue();
  v172 = v201;
  v173 = v202;
  *(&v213 + 1) = v202;
  v174 = __swift_allocate_boxed_opaque_existential_1(&v212);
  (*(*(v173 - 8) + 16))(v174, v172, v173);

  sub_2259B9624(&v212, &v210);
  v175 = v214;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v175;
  sub_225A03F40(&v210, v112, v114, v176);

  v214 = v205;
LABEL_101:
  v123 = sub_225CCE474();
  v125 = v124;
  v126 = sub_225CCFB54();
  if (!v126)
  {
LABEL_107:
    v210 = 0uLL;
    *&v211 = 0;
    *(&v211 + 1) = 1;
    goto LABEL_108;
  }

  v127 = v126;
  v128 = sub_225CCE474();
  v130 = v129;
  if (([v127 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_107;
  }

  *&v205 = v128;
  *(&v205 + 1) = v130;

  v131 = [v127 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v131)
  {

    v210 = 0u;
    v211 = 0u;
    goto LABEL_153;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();

  v210 = v205;
  v211 = v206;
  if (*(&v206 + 1) == 1)
  {
LABEL_108:
    v132 = &unk_27D73D918;
    v133 = &v210;
LABEL_109:
    sub_2259CB640(v133, v132);
LABEL_110:
    sub_225B2AC50(v123, v125, &v212);

    sub_2259CB640(&v212, &qword_27D73DD90);
    goto LABEL_111;
  }

LABEL_153:
  v212 = v210;
  v213 = v211;
  if (!*(&v211 + 1))
  {
    v132 = &qword_27D73DD90;
    v133 = &v212;
    goto LABEL_109;
  }

  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D920);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_110;
  }

  v199 = a2;
  v178 = v205;
  v179 = *(v205 + 16);
  if (v179)
  {
    v195 = v177;
    v196 = v123;
    v197 = v125;
    v198 = v103;
    *&v212 = MEMORY[0x277D84F90];
    sub_2259D54BC(0, v179, 0);
    v180 = 32;
    v181 = v212;
    do
    {
      v182 = *(v178 + v180);
      ErrorValue = swift_getErrorValue();
      v184 = v208;
      v185 = v209;
      v186 = *(v208 - 8);
      MEMORY[0x28223BE20](ErrorValue, v207);
      v188 = &v195 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v186 + 16))(v188);
      v189 = v182;
      v190 = sub_225B22CAC(v184, v185);
      (*(v186 + 8))(v188, v184);

      *&v212 = v181;
      v192 = *(v181 + 16);
      v191 = *(v181 + 24);
      if (v192 >= v191 >> 1)
      {
        sub_2259D54BC((v191 > 1), v192 + 1, 1);
        v181 = v212;
      }

      *(v181 + 16) = v192 + 1;
      *(v181 + 8 * v192 + 32) = v190;
      v180 += 8;
      --v179;
    }

    while (v179);

    v125 = v197;
    v123 = v196;
    v177 = v195;
  }

  else
  {

    v181 = MEMORY[0x277D84F90];
  }

  *(&v213 + 1) = v177;
  *&v212 = v181;
  sub_2259B9624(&v212, &v210);
  v193 = v214;
  v194 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = v193;
  sub_225A03F40(&v210, v123, v125, v194);

  v214 = v205;
LABEL_111:
  sub_225CCFB44();
  v134 = sub_225CCFB34();
  v135 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v136 = sub_225CCE444();

  v137 = sub_225CCE2B4();

  v138 = [v135 initWithDomain:v136 code:v134 userInfo:v137];

  return v138;
}

CoreIDVShared::DIPError::Code_optional __swiftcall DIPError.Code.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 39999)
  {
    if (rawValue <= -31)
    {
      switch(rawValue)
      {
        case -1407:
          *v1 = 117;
          return rawValue;
        case -1406:
          *v1 = 116;
          return rawValue;
        case -1405:
          *v1 = 115;
          return rawValue;
        case -1404:
          *v1 = 114;
          return rawValue;
        case -1403:
          *v1 = 113;
          return rawValue;
        case -1402:
          *v1 = 112;
          return rawValue;
        case -1401:
          *v1 = 111;
          return rawValue;
        case -1310:
          *v1 = 127;
          return rawValue;
        case -1309:
          *v1 = 126;
          return rawValue;
        case -1308:
          *v1 = 125;
          return rawValue;
        case -1307:
          *v1 = 124;
          return rawValue;
        case -1306:
          *v1 = 123;
          return rawValue;
        case -1305:
          *v1 = 122;
          return rawValue;
        case -1304:
          *v1 = 121;
          return rawValue;
        case -1303:
          *v1 = 120;
          return rawValue;
        case -1302:
          *v1 = 119;
          return rawValue;
        case -1301:
          *v1 = 118;
          return rawValue;
        case -1204:
          *v1 = 110;
          return rawValue;
        case -1203:
          *v1 = 109;
          return rawValue;
        case -1202:
          *v1 = 108;
          return rawValue;
        case -1201:
          *v1 = 107;
          return rawValue;
        case -1112:
          *v1 = 106;
          return rawValue;
        case -1111:
          *v1 = 105;
          return rawValue;
        case -1109:
          *v1 = 104;
          return rawValue;
        case -1108:
          *v1 = 103;
          return rawValue;
        case -1107:
          *v1 = 102;
          return rawValue;
        case -1106:
          *v1 = 101;
          return rawValue;
        case -1105:
          *v1 = 100;
          return rawValue;
        case -1104:
          *v1 = 99;
          return rawValue;
        case -1103:
          *v1 = 98;
          return rawValue;
        case -1102:
          *v1 = 97;
          return rawValue;
        case -1101:
          *v1 = 96;
          return rawValue;
        default:
          goto LABEL_154;
      }
    }

    if (rawValue <= 19999)
    {
      v2 = 0;
      switch(rawValue)
      {
        case -30:
          *v1 = 24;
          return rawValue;
        case -29:
          *v1 = 23;
          return rawValue;
        case -28:
          *v1 = 22;
          return rawValue;
        case -22:
          *v1 = 21;
          return rawValue;
        case -21:
          *v1 = 20;
          return rawValue;
        case -20:
          *v1 = 19;
          return rawValue;
        case -19:
          *v1 = 18;
          return rawValue;
        case -18:
          *v1 = 17;
          return rawValue;
        case -17:
          *v1 = 16;
          return rawValue;
        case -16:
          *v1 = 15;
          return rawValue;
        case -15:
          *v1 = 14;
          return rawValue;
        case -14:
          *v1 = 13;
          return rawValue;
        case -13:
          *v1 = 12;
          return rawValue;
        case -12:
          *v1 = 11;
          return rawValue;
        case -11:
          *v1 = 10;
          return rawValue;
        case -10:
          *v1 = 9;
          return rawValue;
        case -9:
          *v1 = 8;
          return rawValue;
        case -8:
          *v1 = 7;
          return rawValue;
        case -7:
          *v1 = 6;
          return rawValue;
        case -6:
          *v1 = 5;
          return rawValue;
        case -5:
          *v1 = 4;
          return rawValue;
        case -4:
          *v1 = 3;
          return rawValue;
        case -3:
          *v1 = 2;
          return rawValue;
        case -2:
          *v1 = 1;
          return rawValue;
        case -1:
          goto LABEL_582;
        case 200:
          *v1 = 25;
          return rawValue;
        default:
          goto LABEL_154;
      }
    }

    switch(rawValue)
    {
      case 20000:
        *v1 = 26;
        return rawValue;
      case 20001:
        *v1 = 27;
        return rawValue;
      case 20100:
        *v1 = 28;
        return rawValue;
    }
  }

  else if (rawValue <= 40599)
  {
    if (rawValue <= 40400)
    {
      switch(rawValue)
      {
        case 40000:
          *v1 = 29;
          return rawValue;
        case 40010:
          *v1 = 30;
          return rawValue;
        case 40011:
          *v1 = 31;
          return rawValue;
        case 40012:
          *v1 = 32;
          return rawValue;
        case 40013:
          *v1 = 33;
          return rawValue;
        case 40014:
          *v1 = 34;
          return rawValue;
        case 40015:
          *v1 = 35;
          return rawValue;
        case 40020:
          *v1 = 36;
          return rawValue;
        case 40021:
          *v1 = 37;
          return rawValue;
        case 40022:
          *v1 = 38;
          return rawValue;
        case 40023:
          *v1 = 39;
          return rawValue;
        case 40024:
          *v1 = 40;
          return rawValue;
        case 40025:
          *v1 = 41;
          return rawValue;
        case 40026:
          *v1 = 42;
          return rawValue;
        case 40027:
          *v1 = 43;
          return rawValue;
        case 40028:
          *v1 = 44;
          return rawValue;
        case 40029:
          *v1 = 45;
          return rawValue;
        case 40030:
          *v1 = 46;
          return rawValue;
        case 40101:
          *v1 = 47;
          return rawValue;
        case 40102:
          *v1 = 48;
          return rawValue;
        case 40200:
          *v1 = 49;
          return rawValue;
        case 40201:
          *v1 = 50;
          return rawValue;
        case 40205:
          *v1 = 51;
          return rawValue;
        default:
          goto LABEL_154;
      }
    }

    if (rawValue <= 40403)
    {
      if (rawValue == 40401)
      {
        *v1 = 52;
      }

      else if (rawValue == 40402)
      {
        *v1 = 53;
      }

      else
      {
        *v1 = 54;
      }

      return rawValue;
    }

    switch(rawValue)
    {
      case 40404:
        *v1 = 55;
        return rawValue;
      case 40408:
        *v1 = 56;
        return rawValue;
      case 40500:
        *v1 = 57;
        return rawValue;
    }
  }

  else
  {
    if (rawValue <= 49999)
    {
      switch(rawValue)
      {
        case 40600:
          *v1 = 58;
          return rawValue;
        case 40601:
          *v1 = 59;
          return rawValue;
        case 40801:
          *v1 = 60;
          return rawValue;
        case 40802:
          *v1 = 61;
          return rawValue;
        case 40803:
          *v1 = 62;
          return rawValue;
        case 40804:
          *v1 = 63;
          return rawValue;
        case 40805:
          *v1 = 64;
          return rawValue;
        case 40806:
          *v1 = 65;
          return rawValue;
        case 40807:
          *v1 = 66;
          return rawValue;
        case 40808:
          *v1 = 67;
          return rawValue;
        case 40809:
          *v1 = 68;
          return rawValue;
        case 40810:
          *v1 = 69;
          return rawValue;
        case 40811:
          *v1 = 70;
          return rawValue;
        case 40812:
          *v1 = 71;
          return rawValue;
        case 40813:
          *v1 = 72;
          return rawValue;
        case 40814:
          *v1 = 73;
          return rawValue;
        case 40815:
          *v1 = 74;
          return rawValue;
        case 40816:
          *v1 = 75;
          return rawValue;
        case 40817:
          *v1 = 76;
          return rawValue;
        case 40818:
          *v1 = 77;
          return rawValue;
        case 40819:
          *v1 = 78;
          return rawValue;
        case 40820:
          *v1 = 79;
          return rawValue;
        case 40821:
          *v1 = 80;
          return rawValue;
        case 40822:
          *v1 = 81;
          return rawValue;
        case 40823:
          *v1 = 82;
          return rawValue;
        case 40824:
          *v1 = 83;
          return rawValue;
        case 40825:
          *v1 = 84;
          return rawValue;
        case 40826:
          *v1 = 85;
          return rawValue;
        case 40827:
          *v1 = 86;
          return rawValue;
        case 40828:
          *v1 = 87;
          return rawValue;
        case 40901:
          *v1 = 88;
          return rawValue;
        case 40902:
          *v1 = 89;
          return rawValue;
        default:
          goto LABEL_154;
      }
    }

    if (rawValue > 99990)
    {
      switch(rawValue)
      {
        case 99991:
          *v1 = 93;
          return rawValue;
        case 99992:
          *v1 = 94;
          return rawValue;
        case 99993:
          *v1 = 95;
          return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 50000:
          *v1 = 90;
          return rawValue;
        case 50001:
          *v1 = 91;
          return rawValue;
        case 50002:
          *v1 = 92;
          return rawValue;
      }
    }
  }

LABEL_154:
  v3 = (rawValue != -2121) & __CFADD__(rawValue, 2121);
  if (rawValue > -2121)
  {
    v3 = (rawValue != -1318) & __CFADD__(rawValue, 1318);
    if (rawValue <= -1318)
    {
      switch(rawValue)
      {
        case -2120:
          *v1 = 153;
          return rawValue;
        case -2119:
          *v1 = 152;
          return rawValue;
        case -2118:
          *v1 = 151;
          return rawValue;
        case -2117:
          *v1 = 150;
          return rawValue;
        case -2116:
          *v1 = 149;
          return rawValue;
        case -2115:
          *v1 = 148;
          return rawValue;
        case -2114:
          *v1 = 147;
          return rawValue;
        case -2113:
          *v1 = 146;
          return rawValue;
        case -2112:
          *v1 = 145;
          return rawValue;
        case -2111:
          *v1 = 144;
          return rawValue;
        case -2110:
          *v1 = 143;
          return rawValue;
        case -2109:
          *v1 = 142;
          return rawValue;
        case -2108:
          *v1 = 141;
          return rawValue;
        case -2107:
          *v1 = 140;
          return rawValue;
        case -2106:
          *v1 = 139;
          return rawValue;
        case -2105:
          *v1 = 138;
          return rawValue;
        case -2104:
          *v1 = 137;
          return rawValue;
        case -2103:
          *v1 = 136;
          return rawValue;
        case -2102:
          *v1 = 135;
          return rawValue;
        case -2101:
          *v1 = 134;
          return rawValue;
        default:
          goto LABEL_169;
      }
    }

    if (rawValue <= -1316)
    {
      if (rawValue == -1317)
      {
        *v1 = 132;
      }

      else
      {
        *v1 = 131;
      }
    }

    else
    {
      if (rawValue == -1315)
      {
        *v1 = 130;
        return rawValue;
      }

      if (rawValue == -1311)
      {
        *v1 = 128;
        return rawValue;
      }

      v3 = (rawValue != -1314) & __CFADD__(rawValue, 1314);
      if (rawValue == -1314)
      {
        *v1 = 129;
        return rawValue;
      }

LABEL_169:
      if (!v3)
      {
        switch(rawValue)
        {
          case -5216:
            *v1 = 255;
            return rawValue;
          case -5215:
            *v1 = 254;
            return rawValue;
          case -5214:
            *v1 = 253;
            return rawValue;
          case -5213:
            *v1 = 252;
            return rawValue;
          case -5212:
            *v1 = 251;
            return rawValue;
          case -5211:
            *v1 = 250;
            return rawValue;
          case -5210:
            *v1 = 249;
            return rawValue;
          case -5209:
            *v1 = 248;
            return rawValue;
          case -5208:
            *v1 = 247;
            return rawValue;
          case -5207:
            *v1 = 246;
            return rawValue;
          case -5206:
            *v1 = 245;
            return rawValue;
          case -5205:
            *v1 = 244;
            return rawValue;
          case -5204:
            *v1 = 243;
            return rawValue;
          case -5203:
            *v1 = 242;
            return rawValue;
          case -5202:
            *v1 = 241;
            return rawValue;
          case -5201:
            *v1 = 240;
            return rawValue;
          case -5200:
          case -5199:
          case -5198:
          case -5197:
          case -5196:
          case -5195:
          case -5194:
          case -5193:
          case -5192:
          case -5191:
          case -5190:
          case -5189:
          case -5188:
          case -5187:
          case -5186:
          case -5185:
          case -5184:
          case -5183:
          case -5182:
          case -5181:
          case -5180:
          case -5179:
          case -5178:
          case -5177:
          case -5176:
          case -5175:
          case -5174:
          case -5173:
          case -5172:
          case -5171:
          case -5170:
          case -5169:
          case -5168:
          case -5167:
          case -5166:
          case -5165:
          case -5164:
          case -5163:
          case -5162:
          case -5161:
          case -5160:
          case -5159:
          case -5158:
          case -5157:
          case -5156:
          case -5155:
          case -5154:
          case -5153:
          case -5152:
          case -5151:
          case -5150:
          case -5149:
          case -5148:
          case -5147:
          case -5146:
          case -5145:
          case -5144:
          case -5143:
          case -5142:
          case -5141:
          case -5140:
          case -5139:
          case -5138:
          case -5137:
          case -5136:
          case -5135:
          case -5134:
          case -5133:
          case -5132:
          case -5131:
          case -5130:
          case -5129:
          case -5128:
          case -5127:
          case -5126:
          case -5125:
          case -5124:
          case -5123:
          case -5122:
          case -5121:
          case -5120:
          case -5119:
          case -5118:
          case -5117:
          case -5116:
          case -5115:
          case -5114:
          case -5113:
          case -5112:
          case -5111:
          case -5110:
          case -5109:
          case -5108:
            goto LABEL_236;
          case -5107:
            *v1 = 239;
            return rawValue;
          case -5106:
            *v1 = 238;
            return rawValue;
          case -5105:
            *v1 = 237;
            return rawValue;
          case -5104:
            *v1 = 236;
            return rawValue;
          case -5103:
            *v1 = 235;
            return rawValue;
          case -5102:
            *v1 = 234;
            return rawValue;
          case -5101:
            *v1 = 233;
            return rawValue;
          default:
            JUMPOUT(0);
        }
      }

      v2 = 192;
      switch(rawValue)
      {
        case -3223:
          *v1 = 212;
          return rawValue;
        case -3222:
          *v1 = 211;
          return rawValue;
        case -3221:
          *v1 = 210;
          return rawValue;
        case -3220:
          *v1 = 209;
          return rawValue;
        case -3219:
          *v1 = 208;
          return rawValue;
        case -3218:
          *v1 = 207;
          return rawValue;
        case -3217:
          *v1 = 206;
          return rawValue;
        case -3216:
          *v1 = 205;
          return rawValue;
        case -3215:
          *v1 = 204;
          return rawValue;
        case -3214:
          *v1 = 203;
          return rawValue;
        case -3213:
          *v1 = 202;
          return rawValue;
        case -3212:
          *v1 = 201;
          return rawValue;
        case -3211:
          *v1 = 200;
          return rawValue;
        case -3210:
          *v1 = 199;
          return rawValue;
        case -3209:
        case -3208:
        case -3207:
        case -3206:
        case -3205:
        case -3204:
        case -3199:
        case -3198:
        case -3197:
        case -3196:
        case -3195:
        case -3194:
        case -3193:
        case -3192:
        case -3191:
        case -3190:
        case -3189:
        case -3188:
        case -3187:
        case -3186:
        case -3185:
        case -3184:
        case -3183:
        case -3182:
LABEL_236:
          if (rawValue > -5703)
          {
            if (rawValue <= -5402)
            {
              switch(rawValue)
              {
                case -5610:
                  *v1 = 278;
                  return rawValue;
                case -5609:
                  *v1 = 277;
                  return rawValue;
                case -5608:
                  *v1 = 276;
                  return rawValue;
                case -5607:
                  *v1 = 275;
                  return rawValue;
                case -5606:
                  *v1 = 274;
                  return rawValue;
                case -5605:
                  *v1 = 273;
                  return rawValue;
                case -5604:
                  *v1 = 272;
                  return rawValue;
                case -5603:
                  *v1 = 271;
                  return rawValue;
                case -5602:
                  *v1 = 270;
                  return rawValue;
                case -5601:
                  *v1 = 269;
                  return rawValue;
                case -5600:
                case -5599:
                case -5598:
                case -5597:
                case -5596:
                case -5595:
                case -5594:
                case -5593:
                case -5592:
                case -5591:
                case -5590:
                case -5589:
                case -5588:
                case -5587:
                case -5586:
                case -5585:
                case -5584:
                case -5583:
                case -5582:
                case -5581:
                case -5580:
                case -5579:
                case -5578:
                case -5577:
                case -5576:
                case -5575:
                case -5574:
                case -5573:
                case -5572:
                case -5571:
                case -5570:
                case -5569:
                case -5568:
                case -5567:
                case -5566:
                case -5565:
                case -5564:
                case -5563:
                case -5562:
                case -5561:
                case -5560:
                case -5559:
                case -5558:
                case -5557:
                case -5556:
                case -5555:
                case -5554:
                case -5553:
                case -5552:
                case -5551:
                case -5550:
                case -5549:
                case -5548:
                case -5547:
                case -5546:
                case -5545:
                case -5544:
                case -5543:
                case -5542:
                case -5541:
                case -5540:
                case -5539:
                case -5538:
                case -5537:
                case -5536:
                case -5535:
                case -5534:
                case -5533:
                case -5532:
                case -5531:
                case -5530:
                case -5529:
                case -5528:
                case -5527:
                case -5526:
                case -5525:
                case -5524:
                case -5523:
                case -5522:
                case -5521:
                case -5520:
                case -5519:
                case -5518:
                case -5517:
                case -5516:
                case -5515:
                case -5514:
                case -5513:
                case -5512:
                case -5511:
                case -5510:
                case -5509:
                case -5508:
                case -5507:
                  goto LABEL_338;
                case -5506:
                  *v1 = 268;
                  return rawValue;
                case -5505:
                  *v1 = 267;
                  return rawValue;
                case -5504:
                  *v1 = 266;
                  return rawValue;
                case -5503:
                  *v1 = 265;
                  return rawValue;
                case -5502:
                  *v1 = 264;
                  return rawValue;
                case -5501:
                  *v1 = 263;
                  return rawValue;
                default:
                  if (rawValue == -5702)
                  {
                    *v1 = 280;
                    return rawValue;
                  }

                  if (rawValue != -5701)
                  {
                    goto LABEL_338;
                  }

                  *v1 = 279;
                  break;
              }

              return rawValue;
            }

            if (rawValue <= -5221)
            {
              switch(rawValue)
              {
                case -5401:
                  *v1 = 262;
                  return rawValue;
                case -5302:
                  *v1 = 261;
                  return rawValue;
                case -5301:
                  *v1 = 260;
                  return rawValue;
              }
            }

            else
            {
              if (rawValue <= -5219)
              {
                if (rawValue == -5220)
                {
                  *v1 = 259;
                }

                else
                {
                  *v1 = 258;
                }

                return rawValue;
              }

              if (rawValue == -5217)
              {
                *v1 = 256;
                return rawValue;
              }

              if (rawValue == -5218)
              {
                *v1 = 257;
                return rawValue;
              }
            }
          }

          else
          {
            if (rawValue > -7002)
            {
              switch(rawValue)
              {
                case -6105:
                  *v1 = 308;
                  return rawValue;
                case -6104:
                  *v1 = 307;
                  return rawValue;
                case -6103:
                  *v1 = 306;
                  return rawValue;
                case -6102:
                  *v1 = 305;
                  return rawValue;
                case -6101:
                  *v1 = 304;
                  return rawValue;
                case -6100:
                case -6099:
                case -6098:
                case -6097:
                case -6096:
                case -6095:
                case -6094:
                case -6093:
                case -6092:
                case -6091:
                case -6090:
                case -6089:
                case -6088:
                case -6087:
                case -6086:
                case -6085:
                case -6084:
                case -6083:
                case -6082:
                case -6081:
                case -6080:
                case -6079:
                case -6078:
                case -6077:
                case -6076:
                case -6075:
                case -6074:
                case -6073:
                case -6072:
                case -6071:
                case -6070:
                case -6069:
                case -6068:
                case -6067:
                case -6066:
                case -6065:
                case -6064:
                case -6063:
                case -6062:
                case -6061:
                case -6060:
                case -6059:
                case -6058:
                case -6057:
                case -6056:
                case -6055:
                case -6054:
                case -6053:
                case -6052:
                case -6051:
                case -6050:
                case -6049:
                case -6048:
                case -6047:
                case -6046:
                case -6045:
                case -6044:
                case -6043:
                case -6042:
                case -6041:
                case -6040:
                case -6039:
                case -6038:
                case -6037:
                case -6036:
                case -6035:
                case -6034:
                case -6033:
                case -6032:
                case -6031:
                case -6030:
                case -6029:
                case -6028:
                case -6027:
                case -6026:
                case -6025:
                case -6024:
                case -6023:
                case -6022:
                case -6021:
                case -6020:
                case -6019:
                case -6018:
                case -6017:
                case -6016:
                case -6015:
                case -6014:
                case -6013:
                case -6012:
                case -6011:
                case -6000:
                case -5999:
                case -5998:
                case -5997:
                case -5996:
                case -5995:
                case -5994:
                case -5993:
                case -5992:
                case -5991:
                case -5990:
                case -5989:
                case -5988:
                case -5987:
                case -5986:
                case -5985:
                case -5984:
                case -5983:
                case -5982:
                case -5981:
                case -5980:
                case -5979:
                case -5978:
                case -5977:
                case -5976:
                case -5975:
                case -5974:
                case -5973:
                case -5972:
                case -5971:
                case -5970:
                case -5969:
                case -5968:
                case -5967:
                case -5966:
                case -5965:
                case -5964:
                case -5963:
                case -5962:
                case -5961:
                case -5960:
                case -5959:
                case -5958:
                case -5957:
                case -5956:
                case -5955:
                case -5954:
                case -5953:
                case -5952:
                case -5951:
                case -5950:
                case -5949:
                case -5948:
                case -5947:
                case -5946:
                case -5945:
                case -5944:
                case -5943:
                case -5942:
                case -5941:
                case -5940:
                case -5939:
                case -5938:
                case -5937:
                case -5936:
                case -5935:
                case -5934:
                case -5933:
                case -5932:
                case -5931:
                case -5930:
                case -5929:
                case -5928:
                case -5927:
                case -5926:
                case -5925:
                case -5924:
                case -5923:
                case -5922:
                case -5921:
                case -5920:
                case -5919:
                case -5918:
                case -5917:
                case -5916:
                case -5915:
                case -5914:
                  goto LABEL_338;
                case -6010:
                  *v1 = 303;
                  return rawValue;
                case -6009:
                  *v1 = 302;
                  return rawValue;
                case -6008:
                  *v1 = 301;
                  return rawValue;
                case -6007:
                  *v1 = 300;
                  return rawValue;
                case -6006:
                  *v1 = 299;
                  return rawValue;
                case -6005:
                  *v1 = 298;
                  return rawValue;
                case -6004:
                  *v1 = 297;
                  return rawValue;
                case -6003:
                  *v1 = 296;
                  return rawValue;
                case -6002:
                  *v1 = 295;
                  return rawValue;
                case -6001:
                  *v1 = 294;
                  return rawValue;
                case -5913:
                  *v1 = 293;
                  return rawValue;
                case -5912:
                  *v1 = 292;
                  return rawValue;
                case -5911:
                  *v1 = 291;
                  return rawValue;
                case -5910:
                  *v1 = 290;
                  return rawValue;
                case -5909:
                  *v1 = 289;
                  return rawValue;
                case -5908:
                  *v1 = 288;
                  return rawValue;
                case -5907:
                  *v1 = 287;
                  return rawValue;
                case -5906:
                  *v1 = 286;
                  return rawValue;
                case -5905:
                  *v1 = 285;
                  return rawValue;
                case -5904:
                  *v1 = 284;
                  return rawValue;
                case -5903:
                  *v1 = 283;
                  return rawValue;
                case -5902:
                  *v1 = 282;
                  return rawValue;
                case -5901:
                  *v1 = 281;
                  return rawValue;
                default:
                  if (rawValue == -7001)
                  {
                    *v1 = 310;
                    return rawValue;
                  }

                  if (rawValue != -7000)
                  {
                    goto LABEL_338;
                  }

                  *v1 = 309;
                  break;
              }

              return rawValue;
            }

            if (rawValue > -7007)
            {
              if (rawValue <= -7005)
              {
                if (rawValue == -7006)
                {
                  *v1 = 315;
                }

                else
                {
                  *v1 = 314;
                }
              }

              else if (rawValue == -7004)
              {
                *v1 = 313;
              }

              else if (rawValue == -7003)
              {
                *v1 = 312;
              }

              else
              {
                *v1 = 311;
              }

              return rawValue;
            }

            if (rawValue > -7009)
            {
              if (rawValue == -7008)
              {
                *v1 = 317;
              }

              else
              {
                *v1 = 316;
              }

              return rawValue;
            }

            if (rawValue == -7010)
            {
              *v1 = 319;
              return rawValue;
            }

            if (rawValue == -7009)
            {
              *v1 = 318;
              return rawValue;
            }
          }

LABEL_338:
          if (rawValue > -8505)
          {
            if (rawValue <= -8302)
            {
              switch(rawValue)
              {
                case -8504:
                  *v1 = 348;
                  return rawValue;
                case -8503:
                  *v1 = 347;
                  return rawValue;
                case -8502:
                  *v1 = 346;
                  return rawValue;
                case -8501:
                  *v1 = 345;
                  return rawValue;
                case -8500:
                  *v1 = 344;
                  return rawValue;
                case -8499:
                case -8498:
                case -8497:
                case -8496:
                case -8495:
                case -8494:
                case -8493:
                case -8492:
                case -8491:
                case -8490:
                case -8489:
                case -8488:
                case -8487:
                case -8486:
                case -8485:
                case -8484:
                case -8483:
                case -8482:
                case -8481:
                case -8480:
                case -8479:
                case -8478:
                case -8477:
                case -8476:
                case -8475:
                case -8474:
                case -8473:
                case -8472:
                case -8471:
                case -8470:
                case -8469:
                case -8468:
                case -8467:
                case -8466:
                case -8465:
                case -8464:
                case -8463:
                case -8462:
                case -8461:
                case -8460:
                case -8459:
                case -8458:
                case -8457:
                case -8456:
                case -8455:
                case -8454:
                case -8453:
                case -8452:
                case -8451:
                case -8450:
                case -8449:
                case -8448:
                case -8447:
                case -8446:
                case -8445:
                case -8444:
                case -8443:
                case -8442:
                case -8441:
                case -8440:
                case -8439:
                case -8438:
                case -8437:
                case -8436:
                case -8435:
                case -8432:
                case -8431:
                case -8430:
                case -8427:
                case -8426:
                case -8425:
                case -8424:
                case -8423:
                case -8422:
                case -8421:
                case -8420:
                case -8419:
                case -8418:
                case -8417:
                case -8416:
                case -8415:
                case -8414:
                case -8413:
                case -8412:
                case -8411:
                case -8410:
                case -8409:
                case -8408:
                case -8407:
                case -8406:
                case -8405:
                case -8402:
                  goto LABEL_428;
                case -8434:
                  *v1 = 343;
                  return rawValue;
                case -8433:
                  *v1 = 342;
                  return rawValue;
                case -8429:
                  *v1 = 341;
                  return rawValue;
                case -8428:
                  *v1 = 340;
                  return rawValue;
                case -8404:
                  *v1 = 339;
                  return rawValue;
                case -8403:
                  *v1 = 338;
                  return rawValue;
                case -8401:
                  *v1 = 337;
                  return rawValue;
                case -8400:
                  *v1 = 336;
                  return rawValue;
                default:
                  if (rawValue != -8304)
                  {
                    goto LABEL_428;
                  }

                  *v1 = 335;
                  break;
              }
            }

            else
            {
              v2 = 320;
              switch(rawValue)
              {
                case -7023:
                  *v1 = 332;
                  return rawValue;
                case -7022:
                  *v1 = 331;
                  return rawValue;
                case -7021:
                  *v1 = 330;
                  return rawValue;
                case -7020:
                  *v1 = 329;
                  return rawValue;
                case -7019:
                  *v1 = 328;
                  return rawValue;
                case -7018:
                  *v1 = 327;
                  return rawValue;
                case -7017:
                  *v1 = 326;
                  return rawValue;
                case -7016:
                  *v1 = 325;
                  return rawValue;
                case -7015:
                  *v1 = 324;
                  return rawValue;
                case -7014:
                  *v1 = 323;
                  return rawValue;
                case -7013:
                  *v1 = 322;
                  return rawValue;
                case -7012:
                  *v1 = 321;
                  return rawValue;
                case -7011:
                  goto LABEL_582;
                default:
                  if (rawValue == -8301)
                  {
                    *v1 = 334;
                    return rawValue;
                  }

                  if (rawValue != -8001)
                  {
                    goto LABEL_428;
                  }

                  *v1 = 333;
                  break;
              }
            }
          }

          else if (rawValue <= -10002)
          {
            if (rawValue > -11006)
            {
              if (rawValue <= -11003)
              {
                if (rawValue == -11005)
                {
                  *v1 = 377;
                }

                else if (rawValue == -11004)
                {
                  *v1 = 376;
                }

                else
                {
                  *v1 = 375;
                }

                return rawValue;
              }

              switch(rawValue)
              {
                case -11002:
                  *v1 = 374;
                  return rawValue;
                case -11001:
                  *v1 = 373;
                  return rawValue;
                case -10002:
                  *v1 = 372;
                  return rawValue;
              }
            }

            else
            {
              if (rawValue > -11009)
              {
                if (rawValue == -11008)
                {
                  *v1 = 380;
                }

                else if (rawValue == -11007)
                {
                  *v1 = 379;
                }

                else
                {
                  *v1 = 378;
                }

                return rawValue;
              }

              switch(rawValue)
              {
                case -11011:
                  *v1 = 383;
                  return rawValue;
                case -11010:
                  *v1 = 382;
                  return rawValue;
                case -11009:
                  *v1 = 381;
                  return rawValue;
              }
            }

LABEL_428:
            v2 = 384;
            switch(rawValue)
            {
              case -11161:
                *v1 = 447;
                return rawValue;
              case -11160:
                *v1 = 446;
                return rawValue;
              case -11159:
                *v1 = 445;
                return rawValue;
              case -11158:
                *v1 = 444;
                return rawValue;
              case -11157:
                *v1 = 443;
                return rawValue;
              case -11156:
                *v1 = 442;
                return rawValue;
              case -11155:
                *v1 = 441;
                return rawValue;
              case -11154:
                *v1 = 440;
                return rawValue;
              case -11153:
                *v1 = 439;
                return rawValue;
              case -11152:
                *v1 = 438;
                return rawValue;
              case -11151:
                *v1 = 437;
                return rawValue;
              case -11150:
                *v1 = 436;
                return rawValue;
              case -11118:
                *v1 = 435;
                return rawValue;
              case -11117:
                *v1 = 434;
                return rawValue;
              case -11116:
                *v1 = 433;
                return rawValue;
              case -11115:
                *v1 = 432;
                return rawValue;
              case -11114:
                *v1 = 431;
                return rawValue;
              case -11113:
                *v1 = 430;
                return rawValue;
              case -11112:
                *v1 = 429;
                return rawValue;
              case -11111:
                *v1 = 428;
                return rawValue;
              case -11110:
                *v1 = 427;
                return rawValue;
              case -11109:
                *v1 = 426;
                return rawValue;
              case -11108:
                *v1 = 425;
                return rawValue;
              case -11107:
                *v1 = 424;
                return rawValue;
              case -11106:
                *v1 = 423;
                return rawValue;
              case -11105:
                *v1 = 422;
                return rawValue;
              case -11104:
                *v1 = 421;
                return rawValue;
              case -11103:
                *v1 = 420;
                return rawValue;
              case -11102:
                *v1 = 419;
                return rawValue;
              case -11101:
                *v1 = 418;
                return rawValue;
              case -11046:
                *v1 = 417;
                return rawValue;
              case -11045:
                *v1 = 416;
                return rawValue;
              case -11044:
                *v1 = 415;
                return rawValue;
              case -11043:
                *v1 = 414;
                return rawValue;
              case -11042:
                *v1 = 413;
                return rawValue;
              case -11041:
                *v1 = 412;
                return rawValue;
              case -11040:
                *v1 = 411;
                return rawValue;
              case -11038:
                *v1 = 410;
                return rawValue;
              case -11037:
                *v1 = 409;
                return rawValue;
              case -11036:
                *v1 = 408;
                return rawValue;
              case -11035:
                *v1 = 407;
                return rawValue;
              case -11034:
                *v1 = 406;
                return rawValue;
              case -11033:
                *v1 = 405;
                return rawValue;
              case -11032:
                *v1 = 404;
                return rawValue;
              case -11031:
                *v1 = 403;
                return rawValue;
              case -11030:
                *v1 = 402;
                return rawValue;
              case -11029:
                *v1 = 401;
                return rawValue;
              case -11028:
                *v1 = 400;
                return rawValue;
              case -11027:
                *v1 = 399;
                return rawValue;
              case -11026:
                *v1 = 398;
                return rawValue;
              case -11025:
                *v1 = 397;
                return rawValue;
              case -11024:
                *v1 = 396;
                return rawValue;
              case -11023:
                *v1 = 395;
                return rawValue;
              case -11022:
                *v1 = 394;
                return rawValue;
              case -11021:
                *v1 = 393;
                return rawValue;
              case -11020:
                *v1 = 392;
                return rawValue;
              case -11019:
                *v1 = 391;
                return rawValue;
              case -11018:
                *v1 = 390;
                return rawValue;
              case -11017:
                *v1 = 389;
                return rawValue;
              case -11016:
                *v1 = 388;
                return rawValue;
              case -11015:
                *v1 = 387;
                return rawValue;
              case -11014:
                *v1 = 386;
                return rawValue;
              case -11013:
                *v1 = 385;
                return rawValue;
              case -11012:
                goto LABEL_582;
              default:
                switch(rawValue)
                {
                  case -12040:
                    *v1 = 511;
                    return rawValue;
                  case -12039:
                    *v1 = 510;
                    return rawValue;
                  case -12038:
                    *v1 = 509;
                    return rawValue;
                  case -12037:
                    *v1 = 508;
                    return rawValue;
                  case -12036:
                    *v1 = 507;
                    return rawValue;
                  case -12035:
                    *v1 = 506;
                    return rawValue;
                  case -12034:
                    *v1 = 505;
                    return rawValue;
                  case -12033:
                    *v1 = 504;
                    return rawValue;
                  case -12032:
                    *v1 = 503;
                    return rawValue;
                  case -12031:
                    *v1 = 502;
                    return rawValue;
                  case -12030:
                    *v1 = 501;
                    return rawValue;
                  case -12029:
                    *v1 = 500;
                    return rawValue;
                  case -12028:
                    *v1 = 499;
                    return rawValue;
                  case -12027:
                    *v1 = 498;
                    return rawValue;
                  case -12026:
                    *v1 = 497;
                    return rawValue;
                  case -12025:
                    *v1 = 496;
                    return rawValue;
                  case -12024:
                    *v1 = 495;
                    return rawValue;
                  case -12023:
                    *v1 = 494;
                    return rawValue;
                  case -12022:
                    *v1 = 493;
                    return rawValue;
                  case -12021:
                    *v1 = 492;
                    return rawValue;
                  case -12020:
                    *v1 = 491;
                    return rawValue;
                  case -12019:
                    *v1 = 490;
                    return rawValue;
                  case -12018:
                    *v1 = 489;
                    return rawValue;
                  case -12017:
                    *v1 = 488;
                    return rawValue;
                  case -12016:
                    *v1 = 487;
                    return rawValue;
                  case -12015:
                    *v1 = 486;
                    return rawValue;
                  case -12014:
                    *v1 = 485;
                    return rawValue;
                  case -12013:
                    *v1 = 484;
                    return rawValue;
                  case -12012:
                    *v1 = 483;
                    return rawValue;
                  case -12011:
                    *v1 = 482;
                    return rawValue;
                  case -12010:
                    *v1 = 481;
                    return rawValue;
                  case -12009:
                    *v1 = 480;
                    return rawValue;
                  case -12008:
                    *v1 = 479;
                    return rawValue;
                  case -12007:
                    *v1 = 478;
                    return rawValue;
                  case -12006:
                  case -12004:
LABEL_579:
                    v4 = rawValue + 12104;
                    if ((rawValue + 12104) >= 0x40)
                    {
                      v2 = 576;
                      switch(rawValue)
                      {
                        case -12173:
                          *v1 = 639;
                          return rawValue;
                        case -12172:
                          *v1 = 638;
                          return rawValue;
                        case -12171:
                          *v1 = 637;
                          return rawValue;
                        case -12170:
                          *v1 = 636;
                          return rawValue;
                        case -12169:
                          *v1 = 635;
                          return rawValue;
                        case -12167:
                          *v1 = 634;
                          return rawValue;
                        case -12165:
                          *v1 = 633;
                          return rawValue;
                        case -12164:
                          *v1 = 632;
                          return rawValue;
                        case -12163:
                          *v1 = 631;
                          return rawValue;
                        case -12162:
                          *v1 = 630;
                          return rawValue;
                        case -12161:
                          *v1 = 629;
                          return rawValue;
                        case -12160:
                          *v1 = 628;
                          return rawValue;
                        case -12159:
                          *v1 = 627;
                          return rawValue;
                        case -12158:
                          *v1 = 626;
                          return rawValue;
                        case -12157:
                          *v1 = 625;
                          return rawValue;
                        case -12156:
                          *v1 = 624;
                          return rawValue;
                        case -12155:
                          *v1 = 623;
                          return rawValue;
                        case -12154:
                          *v1 = 622;
                          return rawValue;
                        case -12153:
                          *v1 = 621;
                          return rawValue;
                        case -12152:
                          *v1 = 620;
                          return rawValue;
                        case -12151:
                          *v1 = 619;
                          return rawValue;
                        case -12150:
                          *v1 = 618;
                          return rawValue;
                        case -12149:
                          *v1 = 617;
                          return rawValue;
                        case -12148:
                          *v1 = 616;
                          return rawValue;
                        case -12147:
                          *v1 = 615;
                          return rawValue;
                        case -12146:
                          *v1 = 614;
                          return rawValue;
                        case -12145:
                          *v1 = 613;
                          return rawValue;
                        case -12144:
                          *v1 = 612;
                          return rawValue;
                        case -12143:
                          *v1 = 611;
                          return rawValue;
                        case -12142:
                          *v1 = 610;
                          return rawValue;
                        case -12141:
                          *v1 = 609;
                          return rawValue;
                        case -12140:
                          *v1 = 608;
                          return rawValue;
                        case -12139:
                          *v1 = 607;
                          return rawValue;
                        case -12138:
                          *v1 = 606;
                          return rawValue;
                        case -12137:
                          *v1 = 605;
                          return rawValue;
                        case -12136:
                          *v1 = 604;
                          return rawValue;
                        case -12135:
                          *v1 = 603;
                          return rawValue;
                        case -12133:
                          *v1 = 602;
                          return rawValue;
                        case -12132:
                          *v1 = 601;
                          return rawValue;
                        case -12131:
                          *v1 = 600;
                          return rawValue;
                        case -12130:
                          *v1 = 599;
                          return rawValue;
                        case -12129:
                          *v1 = 598;
                          return rawValue;
                        case -12128:
                          *v1 = 597;
                          return rawValue;
                        case -12127:
                          *v1 = 596;
                          return rawValue;
                        case -12126:
                          *v1 = 595;
                          return rawValue;
                        case -12125:
                          *v1 = 594;
                          return rawValue;
                        case -12124:
                          *v1 = 593;
                          return rawValue;
                        case -12123:
                          *v1 = 592;
                          return rawValue;
                        case -12122:
                          *v1 = 591;
                          return rawValue;
                        case -12121:
                          *v1 = 590;
                          return rawValue;
                        case -12120:
                          *v1 = 589;
                          return rawValue;
                        case -12119:
                          *v1 = 588;
                          return rawValue;
                        case -12118:
                          *v1 = 587;
                          return rawValue;
                        case -12117:
                          *v1 = 586;
                          return rawValue;
                        case -12116:
                          *v1 = 585;
                          return rawValue;
                        case -12113:
                          *v1 = 584;
                          return rawValue;
                        case -12112:
                          *v1 = 583;
                          return rawValue;
                        case -12111:
                          *v1 = 582;
                          return rawValue;
                        case -12110:
                          *v1 = 581;
                          return rawValue;
                        case -12109:
                          *v1 = 580;
                          return rawValue;
                        case -12108:
                          *v1 = 579;
                          return rawValue;
                        case -12107:
                          *v1 = 578;
                          return rawValue;
                        case -12106:
                          *v1 = 577;
                          return rawValue;
                        case -12105:
                          goto LABEL_582;
                        default:
                          if (rawValue <= -14002)
                          {
                            if (rawValue <= -14006)
                            {
                              switch(rawValue)
                              {
                                case -15016:
                                  *v1 = 703;
                                  return rawValue;
                                case -15015:
                                  *v1 = 702;
                                  return rawValue;
                                case -15013:
                                  *v1 = 701;
                                  return rawValue;
                                case -15012:
                                  *v1 = 700;
                                  return rawValue;
                                case -15011:
                                  *v1 = 699;
                                  return rawValue;
                                case -15010:
                                  *v1 = 698;
                                  return rawValue;
                                case -15009:
                                  *v1 = 697;
                                  return rawValue;
                                case -15007:
                                  *v1 = 696;
                                  return rawValue;
                                case -15006:
                                  *v1 = 695;
                                  return rawValue;
                                case -15005:
                                  *v1 = 694;
                                  return rawValue;
                                case -15004:
                                  *v1 = 693;
                                  return rawValue;
                                case -15003:
                                  *v1 = 692;
                                  return rawValue;
                                case -15002:
                                  *v1 = 691;
                                  return rawValue;
                                case -15001:
                                  *v1 = 690;
                                  return rawValue;
                                case -15000:
                                  *v1 = 689;
                                  return rawValue;
                                default:
                                  goto LABEL_742;
                              }
                            }

                            if (rawValue > -14004)
                            {
                              if (rawValue == -14003)
                              {
                                *v1 = 686;
                              }

                              else
                              {
                                *v1 = 685;
                              }
                            }

                            else if (rawValue == -14005)
                            {
                              *v1 = 688;
                            }

                            else
                            {
                              *v1 = 687;
                            }
                          }

                          else
                          {
                            v2 = 640;
                            switch(rawValue)
                            {
                              case -12218:
                                *v1 = 682;
                                return rawValue;
                              case -12217:
                              case -12199:
                                goto LABEL_742;
                              case -12216:
                                *v1 = 681;
                                return rawValue;
                              case -12215:
                                *v1 = 680;
                                return rawValue;
                              case -12214:
                                *v1 = 679;
                                return rawValue;
                              case -12213:
                                *v1 = 678;
                                return rawValue;
                              case -12212:
                                *v1 = 677;
                                return rawValue;
                              case -12211:
                                *v1 = 676;
                                return rawValue;
                              case -12210:
                                *v1 = 675;
                                return rawValue;
                              case -12209:
                                *v1 = 674;
                                return rawValue;
                              case -12208:
                                *v1 = 673;
                                return rawValue;
                              case -12207:
                                *v1 = 672;
                                return rawValue;
                              case -12206:
                                *v1 = 671;
                                return rawValue;
                              case -12205:
                                *v1 = 670;
                                return rawValue;
                              case -12204:
                                *v1 = 669;
                                return rawValue;
                              case -12203:
                                *v1 = 668;
                                return rawValue;
                              case -12202:
                                *v1 = 667;
                                return rawValue;
                              case -12201:
                                *v1 = 666;
                                return rawValue;
                              case -12200:
                                *v1 = 665;
                                return rawValue;
                              case -12198:
                                *v1 = 664;
                                return rawValue;
                              case -12197:
                                *v1 = 663;
                                return rawValue;
                              case -12196:
                                *v1 = 662;
                                return rawValue;
                              case -12195:
                                *v1 = 661;
                                return rawValue;
                              case -12194:
                                *v1 = 660;
                                return rawValue;
                              case -12193:
                                *v1 = 659;
                                return rawValue;
                              case -12192:
                                *v1 = 658;
                                return rawValue;
                              case -12191:
                                *v1 = 657;
                                return rawValue;
                              case -12190:
                                *v1 = 656;
                                return rawValue;
                              case -12189:
                                *v1 = 655;
                                return rawValue;
                              case -12188:
                                *v1 = 654;
                                return rawValue;
                              case -12187:
                                *v1 = 653;
                                return rawValue;
                              case -12186:
                                *v1 = 652;
                                return rawValue;
                              case -12185:
                                *v1 = 651;
                                return rawValue;
                              case -12184:
                                *v1 = 650;
                                return rawValue;
                              case -12183:
                                *v1 = 649;
                                return rawValue;
                              case -12182:
                                *v1 = 648;
                                return rawValue;
                              case -12181:
                                *v1 = 647;
                                return rawValue;
                              case -12180:
                                *v1 = 646;
                                return rawValue;
                              case -12179:
                                *v1 = 645;
                                return rawValue;
                              case -12178:
                                *v1 = 644;
                                return rawValue;
                              case -12177:
                                *v1 = 643;
                                return rawValue;
                              case -12176:
                                *v1 = 642;
                                return rawValue;
                              case -12175:
                                *v1 = 641;
                                return rawValue;
                              case -12174:
                                goto LABEL_582;
                              default:
                                if (rawValue == -14001)
                                {
                                  *v1 = 684;
                                  return rawValue;
                                }

                                if (rawValue == -14000)
                                {
                                  *v1 = 683;
                                  return rawValue;
                                }

LABEL_742:
                                if (rawValue > -17004)
                                {
                                  if (rawValue <= -16002)
                                  {
                                    if (rawValue <= -16007)
                                    {
                                      if (rawValue > -17002)
                                      {
                                        if (rawValue == -17001)
                                        {
                                          *v1 = 731;
                                          return rawValue;
                                        }

                                        if (rawValue == -17000)
                                        {
                                          *v1 = 730;
                                          return rawValue;
                                        }

LABEL_821:
                                        if (rawValue <= -20002)
                                        {
                                          if (rawValue <= -20006)
                                          {
                                            switch(rawValue)
                                            {
                                              case -20008:
                                                *v1 = 831;
                                                return rawValue;
                                              case -20007:
                                                *v1 = 830;
                                                return rawValue;
                                              case -20006:
                                                *v1 = 829;
                                                return rawValue;
                                            }

LABEL_895:
                                            if (rawValue > -21008)
                                            {
                                              if (rawValue <= -21002)
                                              {
                                                if (rawValue > -21005)
                                                {
                                                  if (rawValue == -21004)
                                                  {
                                                    *v1 = 850;
                                                  }

                                                  else if (rawValue == -21003)
                                                  {
                                                    *v1 = 849;
                                                  }

                                                  else
                                                  {
                                                    *v1 = 848;
                                                  }
                                                }

                                                else if (rawValue == -21007)
                                                {
                                                  *v1 = 853;
                                                }

                                                else if (rawValue == -21006)
                                                {
                                                  *v1 = 852;
                                                }

                                                else
                                                {
                                                  *v1 = 851;
                                                }
                                              }

                                              else
                                              {
                                                v2 = 832;
                                                switch(rawValue)
                                                {
                                                  case -20022:
                                                    *v1 = 845;
                                                    return rawValue;
                                                  case -20021:
                                                    *v1 = 844;
                                                    return rawValue;
                                                  case -20020:
                                                    *v1 = 843;
                                                    return rawValue;
                                                  case -20019:
                                                    *v1 = 842;
                                                    return rawValue;
                                                  case -20018:
                                                    *v1 = 841;
                                                    return rawValue;
                                                  case -20017:
                                                    *v1 = 840;
                                                    return rawValue;
                                                  case -20016:
                                                    *v1 = 839;
                                                    return rawValue;
                                                  case -20015:
                                                    *v1 = 838;
                                                    return rawValue;
                                                  case -20014:
                                                    *v1 = 837;
                                                    return rawValue;
                                                  case -20013:
                                                    *v1 = 836;
                                                    return rawValue;
                                                  case -20012:
                                                    *v1 = 835;
                                                    return rawValue;
                                                  case -20011:
                                                    *v1 = 834;
                                                    return rawValue;
                                                  case -20010:
                                                    *v1 = 833;
                                                    return rawValue;
                                                  case -20009:
                                                    goto LABEL_582;
                                                  default:
                                                    if (rawValue == -21001)
                                                    {
                                                      *v1 = 847;
                                                      return rawValue;
                                                    }

                                                    if (rawValue == -21000)
                                                    {
                                                      *v1 = 846;
                                                      return rawValue;
                                                    }

LABEL_970:
                                                    v4 = rawValue + 22115;
                                                    if ((rawValue + 22115) < 0x40)
                                                    {
                                                      v5 = 959;
                                                      goto LABEL_581;
                                                    }

                                                    if (rawValue <= -23002)
                                                    {
                                                      switch(rawValue)
                                                      {
                                                        case -23004:
                                                          *v1 = 1023;
                                                          return rawValue;
                                                        case -23003:
                                                          *v1 = 1022;
                                                          return rawValue;
                                                        case -23002:
                                                          *v1 = 1021;
                                                          return rawValue;
                                                      }

LABEL_1042:
                                                      if (rawValue > -25006)
                                                      {
                                                        if (rawValue > -24008)
                                                        {
                                                          if (rawValue <= -24004)
                                                          {
                                                            if (rawValue > -24006)
                                                            {
                                                              if (rawValue == -24005)
                                                              {
                                                                *v1 = 1030;
                                                              }

                                                              else
                                                              {
                                                                *v1 = 1029;
                                                              }
                                                            }

                                                            else if (rawValue == -24007)
                                                            {
                                                              *v1 = 1032;
                                                            }

                                                            else
                                                            {
                                                              *v1 = 1031;
                                                            }

                                                            return rawValue;
                                                          }

                                                          if (rawValue <= -24002)
                                                          {
                                                            if (rawValue == -24003)
                                                            {
                                                              *v1 = 1028;
                                                            }

                                                            else
                                                            {
                                                              *v1 = 1027;
                                                            }

                                                            return rawValue;
                                                          }

                                                          switch(rawValue)
                                                          {
                                                            case -24001:
                                                              *v1 = 1026;
                                                              return rawValue;
                                                            case -23005:
                                                              *v1 = 1024;
                                                              return rawValue;
                                                            case -24000:
                                                              *v1 = 1025;
                                                              return rawValue;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          if (rawValue <= -25002)
                                                          {
                                                            if (rawValue > -25004)
                                                            {
                                                              if (rawValue == -25003)
                                                              {
                                                                *v1 = 1039;
                                                              }

                                                              else
                                                              {
                                                                *v1 = 1038;
                                                              }
                                                            }

                                                            else if (rawValue == -25005)
                                                            {
                                                              *v1 = 1041;
                                                            }

                                                            else
                                                            {
                                                              *v1 = 1040;
                                                            }

                                                            return rawValue;
                                                          }

                                                          if (rawValue > -24011)
                                                          {
                                                            if (rawValue == -24010)
                                                            {
                                                              *v1 = 1035;
                                                            }

                                                            else if (rawValue == -24009)
                                                            {
                                                              *v1 = 1034;
                                                            }

                                                            else
                                                            {
                                                              *v1 = 1033;
                                                            }

                                                            return rawValue;
                                                          }

                                                          if (rawValue == -25001)
                                                          {
                                                            *v1 = 1037;
                                                            return rawValue;
                                                          }

                                                          if (rawValue == -25000)
                                                          {
                                                            *v1 = 1036;
                                                            return rawValue;
                                                          }
                                                        }

LABEL_1128:
                                                        if (rawValue <= -30001)
                                                        {
                                                          if (rawValue <= -33005)
                                                          {
                                                            if (rawValue <= -33202)
                                                            {
                                                              if (rawValue > -33205)
                                                              {
                                                                if (rawValue == -33204)
                                                                {
                                                                  *v1 = 1148;
                                                                }

                                                                else if (rawValue == -33203)
                                                                {
                                                                  *v1 = 1147;
                                                                }

                                                                else
                                                                {
                                                                  *v1 = 1146;
                                                                }

                                                                return rawValue;
                                                              }

                                                              switch(rawValue)
                                                              {
                                                                case -33303:
                                                                  *v1 = 1151;
                                                                  return rawValue;
                                                                case -33302:
                                                                  *v1 = 1150;
                                                                  return rawValue;
                                                                case -33301:
                                                                  *v1 = 1149;
                                                                  return rawValue;
                                                              }
                                                            }

                                                            else if (rawValue <= -33105)
                                                            {
                                                              switch(rawValue)
                                                              {
                                                                case -33201:
                                                                  *v1 = 1145;
                                                                  return rawValue;
                                                                case -33106:
                                                                  *v1 = 1144;
                                                                  return rawValue;
                                                                case -33105:
                                                                  *v1 = 1143;
                                                                  return rawValue;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              if (rawValue <= -33103)
                                                              {
                                                                if (rawValue == -33104)
                                                                {
                                                                  *v1 = 1142;
                                                                }

                                                                else
                                                                {
                                                                  *v1 = 1141;
                                                                }

                                                                return rawValue;
                                                              }

                                                              if (rawValue == -33102)
                                                              {
                                                                *v1 = 1140;
                                                                return rawValue;
                                                              }

                                                              if (rawValue == -33101)
                                                              {
                                                                *v1 = 1139;
                                                                return rawValue;
                                                              }
                                                            }
                                                          }

                                                          else if (rawValue > -32002)
                                                          {
                                                            if (rawValue <= -31004)
                                                            {
                                                              switch(rawValue)
                                                              {
                                                                case -32001:
                                                                  *v1 = 1131;
                                                                  return rawValue;
                                                                case -31005:
                                                                  *v1 = 1130;
                                                                  return rawValue;
                                                                case -31004:
                                                                  *v1 = 1129;
                                                                  return rawValue;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              if (rawValue <= -31002)
                                                              {
                                                                if (rawValue == -31003)
                                                                {
                                                                  *v1 = 1128;
                                                                }

                                                                else
                                                                {
                                                                  *v1 = 1127;
                                                                }

                                                                return rawValue;
                                                              }

                                                              if (rawValue == -31001)
                                                              {
                                                                *v1 = 1126;
                                                                return rawValue;
                                                              }

                                                              if (rawValue == -30001)
                                                              {
                                                                *v1 = 1125;
                                                                return rawValue;
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            if (rawValue <= -33002)
                                                            {
                                                              if (rawValue == -33004)
                                                              {
                                                                *v1 = 1138;
                                                              }

                                                              else if (rawValue == -33003)
                                                              {
                                                                *v1 = 1137;
                                                              }

                                                              else
                                                              {
                                                                *v1 = 1136;
                                                              }

                                                              return rawValue;
                                                            }

                                                            if (rawValue > -32102)
                                                            {
                                                              if (rawValue == -32101)
                                                              {
                                                                *v1 = 1133;
                                                                return rawValue;
                                                              }

                                                              if (rawValue == -32100)
                                                              {
                                                                *v1 = 1132;
                                                                return rawValue;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              if (rawValue == -33001)
                                                              {
                                                                *v1 = 1135;
                                                                return rawValue;
                                                              }

                                                              if (rawValue == -32102)
                                                              {
                                                                *v1 = 1134;
                                                                return rawValue;
                                                              }
                                                            }
                                                          }

LABEL_1228:
                                                          if (rawValue <= -33704)
                                                          {
                                                            if (rawValue <= -34003)
                                                            {
                                                              if (rawValue > -34007)
                                                              {
                                                                if (rawValue > -34005)
                                                                {
                                                                  if (rawValue == -34004)
                                                                  {
                                                                    *v1 = 1177;
                                                                  }

                                                                  else
                                                                  {
                                                                    *v1 = 1176;
                                                                  }
                                                                }

                                                                else if (rawValue == -34006)
                                                                {
                                                                  *v1 = 1179;
                                                                }

                                                                else
                                                                {
                                                                  *v1 = 1178;
                                                                }

                                                                return rawValue;
                                                              }

                                                              switch(rawValue)
                                                              {
                                                                case -34009:
                                                                  *v1 = 1182;
                                                                  return rawValue;
                                                                case -34008:
                                                                  *v1 = 1181;
                                                                  return rawValue;
                                                                case -34007:
                                                                  *v1 = 1180;
                                                                  return rawValue;
                                                              }
                                                            }

                                                            else if (rawValue > -33802)
                                                            {
                                                              if (rawValue > -33706)
                                                              {
                                                                if (rawValue == -33705)
                                                                {
                                                                  *v1 = 1169;
                                                                }

                                                                else
                                                                {
                                                                  *v1 = 1168;
                                                                }

                                                                return rawValue;
                                                              }

                                                              if (rawValue == -33801)
                                                              {
                                                                *v1 = 1171;
                                                                return rawValue;
                                                              }

                                                              if (rawValue == -33706)
                                                              {
                                                                *v1 = 1170;
                                                                return rawValue;
                                                              }
                                                            }

                                                            else if (rawValue > -33902)
                                                            {
                                                              if (rawValue == -33901)
                                                              {
                                                                *v1 = 1173;
                                                                return rawValue;
                                                              }

                                                              if (rawValue == -33802)
                                                              {
                                                                *v1 = 1172;
                                                                return rawValue;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              if (rawValue == -34002)
                                                              {
                                                                *v1 = 1175;
                                                                return rawValue;
                                                              }

                                                              if (rawValue == -34001)
                                                              {
                                                                *v1 = 1174;
                                                                return rawValue;
                                                              }
                                                            }
                                                          }

                                                          else if (rawValue > -33403)
                                                          {
                                                            if (rawValue > -33308)
                                                            {
                                                              if (rawValue <= -33306)
                                                              {
                                                                if (rawValue == -33307)
                                                                {
                                                                  *v1 = 1155;
                                                                }

                                                                else
                                                                {
                                                                  *v1 = 1154;
                                                                }

                                                                return rawValue;
                                                              }

                                                              if (rawValue == -33304)
                                                              {
                                                                *v1 = 1152;
                                                                return rawValue;
                                                              }

                                                              if (rawValue == -33305)
                                                              {
                                                                *v1 = 1153;
                                                                return rawValue;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              if (rawValue > -33310)
                                                              {
                                                                if (rawValue == -33309)
                                                                {
                                                                  *v1 = 1157;
                                                                }

                                                                else
                                                                {
                                                                  *v1 = 1156;
                                                                }

                                                                return rawValue;
                                                              }

                                                              if (rawValue == -33402)
                                                              {
                                                                *v1 = 1159;
                                                                return rawValue;
                                                              }

                                                              if (rawValue == -33401)
                                                              {
                                                                *v1 = 1158;
                                                                return rawValue;
                                                              }
                                                            }
                                                          }

                                                          else if (rawValue > -33503)
                                                          {
                                                            if (rawValue > -33405)
                                                            {
                                                              if (rawValue == -33404)
                                                              {
                                                                *v1 = 1161;
                                                              }

                                                              else
                                                              {
                                                                *v1 = 1160;
                                                              }

                                                              return rawValue;
                                                            }

                                                            if (rawValue == -33502)
                                                            {
                                                              *v1 = 1163;
                                                              return rawValue;
                                                            }

                                                            if (rawValue == -33501)
                                                            {
                                                              *v1 = 1162;
                                                              return rawValue;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            if (rawValue <= -33702)
                                                            {
                                                              if (rawValue == -33703)
                                                              {
                                                                *v1 = 1167;
                                                              }

                                                              else
                                                              {
                                                                *v1 = 1166;
                                                              }

                                                              return rawValue;
                                                            }

                                                            if (rawValue == -33701)
                                                            {
                                                              *v1 = 1165;
                                                              return rawValue;
                                                            }

                                                            if (rawValue == -33601)
                                                            {
                                                              *v1 = 1164;
                                                              return rawValue;
                                                            }
                                                          }

                                                          *v1 = 1183;
                                                          return rawValue;
                                                        }

                                                        v2 = 1088;
                                                        switch(rawValue)
                                                        {
                                                          case -28035:
                                                            *v1 = 1122;
                                                            return rawValue;
                                                          case -28034:
                                                            *v1 = 1121;
                                                            return rawValue;
                                                          case -28033:
                                                            *v1 = 1120;
                                                            return rawValue;
                                                          case -28032:
                                                            *v1 = 1119;
                                                            return rawValue;
                                                          case -28031:
                                                            *v1 = 1118;
                                                            return rawValue;
                                                          case -28030:
                                                            *v1 = 1117;
                                                            return rawValue;
                                                          case -28029:
                                                            *v1 = 1116;
                                                            return rawValue;
                                                          case -28028:
                                                            *v1 = 1115;
                                                            return rawValue;
                                                          case -28027:
                                                            *v1 = 1114;
                                                            return rawValue;
                                                          case -28026:
                                                            *v1 = 1113;
                                                            return rawValue;
                                                          case -28025:
                                                            *v1 = 1112;
                                                            return rawValue;
                                                          case -28024:
                                                            *v1 = 1111;
                                                            return rawValue;
                                                          case -28023:
                                                            *v1 = 1110;
                                                            return rawValue;
                                                          case -28022:
                                                            *v1 = 1109;
                                                            return rawValue;
                                                          case -28021:
                                                            *v1 = 1108;
                                                            return rawValue;
                                                          case -28020:
                                                            *v1 = 1107;
                                                            return rawValue;
                                                          case -28019:
                                                            *v1 = 1106;
                                                            return rawValue;
                                                          case -28018:
                                                            *v1 = 1105;
                                                            return rawValue;
                                                          case -28017:
                                                            *v1 = 1104;
                                                            return rawValue;
                                                          case -28016:
                                                            *v1 = 1103;
                                                            return rawValue;
                                                          case -28015:
                                                            *v1 = 1102;
                                                            return rawValue;
                                                          case -28014:
                                                            *v1 = 1101;
                                                            return rawValue;
                                                          case -28013:
                                                            *v1 = 1100;
                                                            return rawValue;
                                                          case -28012:
                                                            *v1 = 1099;
                                                            return rawValue;
                                                          case -28011:
                                                            *v1 = 1098;
                                                            return rawValue;
                                                          case -28010:
                                                            *v1 = 1097;
                                                            return rawValue;
                                                          case -28009:
                                                            *v1 = 1096;
                                                            return rawValue;
                                                          case -28008:
                                                            *v1 = 1095;
                                                            return rawValue;
                                                          case -28007:
                                                            *v1 = 1094;
                                                            return rawValue;
                                                          case -28006:
                                                            *v1 = 1093;
                                                            return rawValue;
                                                          case -28005:
                                                            *v1 = 1092;
                                                            return rawValue;
                                                          case -28004:
                                                            *v1 = 1091;
                                                            return rawValue;
                                                          case -28003:
                                                            *v1 = 1090;
                                                            return rawValue;
                                                          case -28002:
                                                            *v1 = 1089;
                                                            return rawValue;
                                                          case -28001:
                                                            goto LABEL_582;
                                                          default:
                                                            if (rawValue == -30000)
                                                            {
                                                              *v1 = 1124;
                                                            }

                                                            else
                                                            {
                                                              if (rawValue != -29000)
                                                              {
                                                                goto LABEL_1228;
                                                              }

                                                              *v1 = 1123;
                                                            }

                                                            break;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        switch(rawValue)
                                                        {
                                                          case -26044:
                                                            *v1 = 1086;
                                                            break;
                                                          case -26043:
                                                            *v1 = 1085;
                                                            break;
                                                          case -26042:
                                                            *v1 = 1084;
                                                            break;
                                                          case -26041:
                                                            *v1 = 1083;
                                                            break;
                                                          case -26040:
                                                            *v1 = 1082;
                                                            break;
                                                          case -26039:
                                                            *v1 = 1081;
                                                            break;
                                                          case -26038:
                                                            *v1 = 1080;
                                                            break;
                                                          case -26037:
                                                            *v1 = 1079;
                                                            break;
                                                          case -26036:
                                                            *v1 = 1078;
                                                            break;
                                                          case -26035:
                                                            *v1 = 1077;
                                                            break;
                                                          case -26034:
                                                            *v1 = 1076;
                                                            break;
                                                          case -26033:
                                                            *v1 = 1075;
                                                            break;
                                                          case -26032:
                                                            *v1 = 1074;
                                                            break;
                                                          case -26031:
                                                            *v1 = 1073;
                                                            break;
                                                          case -26030:
                                                            *v1 = 1072;
                                                            break;
                                                          case -26029:
                                                            *v1 = 1071;
                                                            break;
                                                          case -26028:
                                                            *v1 = 1070;
                                                            break;
                                                          case -26027:
                                                            *v1 = 1069;
                                                            break;
                                                          case -26026:
                                                            *v1 = 1068;
                                                            break;
                                                          case -26025:
                                                            *v1 = 1067;
                                                            break;
                                                          case -26024:
                                                            *v1 = 1066;
                                                            break;
                                                          case -26023:
                                                            *v1 = 1065;
                                                            break;
                                                          case -26022:
                                                            *v1 = 1064;
                                                            break;
                                                          case -26021:
                                                            *v1 = 1063;
                                                            break;
                                                          case -26020:
                                                            *v1 = 1062;
                                                            break;
                                                          case -26019:
                                                            *v1 = 1061;
                                                            break;
                                                          case -26018:
                                                            *v1 = 1060;
                                                            break;
                                                          case -26017:
                                                            *v1 = 1059;
                                                            break;
                                                          case -26016:
                                                            *v1 = 1058;
                                                            break;
                                                          case -26015:
                                                            *v1 = 1057;
                                                            break;
                                                          case -26014:
                                                            *v1 = 1056;
                                                            break;
                                                          case -26013:
                                                            *v1 = 1055;
                                                            break;
                                                          case -26012:
                                                            *v1 = 1054;
                                                            break;
                                                          case -26011:
                                                            *v1 = 1053;
                                                            break;
                                                          case -26010:
                                                            *v1 = 1052;
                                                            break;
                                                          case -26009:
                                                            *v1 = 1051;
                                                            break;
                                                          case -26008:
                                                            *v1 = 1050;
                                                            break;
                                                          case -26007:
                                                            *v1 = 1049;
                                                            break;
                                                          case -26006:
                                                            *v1 = 1048;
                                                            break;
                                                          case -26005:
                                                            *v1 = 1047;
                                                            break;
                                                          case -26004:
                                                            *v1 = 1046;
                                                            break;
                                                          case -26003:
                                                            *v1 = 1045;
                                                            break;
                                                          case -26002:
                                                            *v1 = 1044;
                                                            break;
                                                          case -26001:
                                                            *v1 = 1043;
                                                            break;
                                                          case -26000:
                                                            *v1 = 1042;
                                                            break;
                                                          default:
                                                            if (rawValue != -28000)
                                                            {
                                                              goto LABEL_1128;
                                                            }

                                                            *v1 = 1087;
                                                            break;
                                                        }
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v2 = 960;
                                                      switch(rawValue)
                                                      {
                                                        case -22249:
                                                          *v1 = 1018;
                                                          return rawValue;
                                                        case -22248:
                                                          *v1 = 1017;
                                                          return rawValue;
                                                        case -22247:
                                                          *v1 = 1016;
                                                          return rawValue;
                                                        case -22246:
                                                          *v1 = 1015;
                                                          return rawValue;
                                                        case -22245:
                                                          *v1 = 1014;
                                                          return rawValue;
                                                        case -22244:
                                                          *v1 = 1013;
                                                          return rawValue;
                                                        case -22243:
                                                          *v1 = 1012;
                                                          return rawValue;
                                                        case -22242:
                                                          *v1 = 1011;
                                                          return rawValue;
                                                        case -22241:
                                                          *v1 = 1010;
                                                          return rawValue;
                                                        case -22240:
                                                          *v1 = 1009;
                                                          return rawValue;
                                                        case -22239:
                                                          *v1 = 1008;
                                                          return rawValue;
                                                        case -22238:
                                                          *v1 = 1007;
                                                          return rawValue;
                                                        case -22237:
                                                          *v1 = 1006;
                                                          return rawValue;
                                                        case -22236:
                                                          *v1 = 1005;
                                                          return rawValue;
                                                        case -22235:
                                                          *v1 = 1004;
                                                          return rawValue;
                                                        case -22234:
                                                          *v1 = 1003;
                                                          return rawValue;
                                                        case -22233:
                                                          *v1 = 1002;
                                                          return rawValue;
                                                        case -22232:
                                                          *v1 = 1001;
                                                          return rawValue;
                                                        case -22231:
                                                          *v1 = 1000;
                                                          return rawValue;
                                                        case -22230:
                                                          *v1 = 999;
                                                          return rawValue;
                                                        case -22229:
                                                          *v1 = 998;
                                                          return rawValue;
                                                        case -22228:
                                                          *v1 = 997;
                                                          return rawValue;
                                                        case -22227:
                                                          *v1 = 996;
                                                          return rawValue;
                                                        case -22226:
                                                          *v1 = 995;
                                                          return rawValue;
                                                        case -22225:
                                                          *v1 = 994;
                                                          return rawValue;
                                                        case -22224:
                                                          *v1 = 993;
                                                          return rawValue;
                                                        case -22223:
                                                          *v1 = 992;
                                                          return rawValue;
                                                        case -22222:
                                                          *v1 = 991;
                                                          return rawValue;
                                                        case -22221:
                                                          *v1 = 990;
                                                          return rawValue;
                                                        case -22220:
                                                          *v1 = 989;
                                                          return rawValue;
                                                        case -22219:
                                                          *v1 = 988;
                                                          return rawValue;
                                                        case -22218:
                                                          *v1 = 987;
                                                          return rawValue;
                                                        case -22217:
                                                          *v1 = 986;
                                                          return rawValue;
                                                        case -22216:
                                                          *v1 = 985;
                                                          return rawValue;
                                                        case -22215:
                                                          *v1 = 984;
                                                          return rawValue;
                                                        case -22214:
                                                          *v1 = 983;
                                                          return rawValue;
                                                        case -22213:
                                                          *v1 = 982;
                                                          return rawValue;
                                                        case -22212:
                                                          *v1 = 981;
                                                          return rawValue;
                                                        case -22211:
                                                          *v1 = 980;
                                                          return rawValue;
                                                        case -22210:
                                                          *v1 = 979;
                                                          return rawValue;
                                                        case -22209:
                                                          *v1 = 978;
                                                          return rawValue;
                                                        case -22208:
                                                          *v1 = 977;
                                                          return rawValue;
                                                        case -22207:
                                                          *v1 = 976;
                                                          return rawValue;
                                                        case -22206:
                                                          *v1 = 975;
                                                          return rawValue;
                                                        case -22205:
                                                          *v1 = 974;
                                                          return rawValue;
                                                        case -22204:
                                                          *v1 = 973;
                                                          return rawValue;
                                                        case -22203:
                                                          *v1 = 972;
                                                          return rawValue;
                                                        case -22202:
                                                          *v1 = 971;
                                                          return rawValue;
                                                        case -22201:
                                                          *v1 = 970;
                                                          return rawValue;
                                                        case -22200:
                                                          *v1 = 969;
                                                          return rawValue;
                                                        case -22199:
                                                        case -22198:
                                                        case -22197:
                                                        case -22196:
                                                        case -22195:
                                                        case -22194:
                                                        case -22193:
                                                        case -22192:
                                                        case -22191:
                                                        case -22190:
                                                        case -22189:
                                                        case -22188:
                                                        case -22187:
                                                        case -22186:
                                                        case -22185:
                                                        case -22184:
                                                        case -22183:
                                                        case -22182:
                                                        case -22181:
                                                        case -22180:
                                                        case -22179:
                                                        case -22178:
                                                        case -22177:
                                                        case -22176:
                                                        case -22175:
                                                        case -22174:
                                                        case -22173:
                                                        case -22172:
                                                        case -22171:
                                                        case -22170:
                                                        case -22169:
                                                        case -22168:
                                                        case -22167:
                                                        case -22166:
                                                        case -22165:
                                                        case -22164:
                                                        case -22163:
                                                        case -22162:
                                                        case -22161:
                                                        case -22160:
                                                        case -22159:
                                                        case -22158:
                                                        case -22157:
                                                        case -22156:
                                                        case -22155:
                                                        case -22154:
                                                        case -22153:
                                                        case -22152:
                                                        case -22151:
                                                        case -22150:
                                                        case -22149:
                                                        case -22148:
                                                        case -22147:
                                                        case -22146:
                                                        case -22145:
                                                        case -22144:
                                                        case -22143:
                                                        case -22142:
                                                        case -22141:
                                                        case -22140:
                                                        case -22139:
                                                        case -22138:
                                                        case -22137:
                                                        case -22136:
                                                        case -22135:
                                                        case -22134:
                                                        case -22133:
                                                        case -22132:
                                                        case -22131:
                                                        case -22130:
                                                        case -22129:
                                                        case -22128:
                                                        case -22127:
                                                        case -22126:
                                                        case -22125:
                                                          goto LABEL_1042;
                                                        case -22124:
                                                          *v1 = 968;
                                                          return rawValue;
                                                        case -22123:
                                                          *v1 = 967;
                                                          return rawValue;
                                                        case -22122:
                                                          *v1 = 966;
                                                          return rawValue;
                                                        case -22121:
                                                          *v1 = 965;
                                                          return rawValue;
                                                        case -22120:
                                                          *v1 = 964;
                                                          return rawValue;
                                                        case -22119:
                                                          *v1 = 963;
                                                          return rawValue;
                                                        case -22118:
                                                          *v1 = 962;
                                                          return rawValue;
                                                        case -22117:
                                                          *v1 = 961;
                                                          return rawValue;
                                                        case -22116:
                                                          goto LABEL_582;
                                                        default:
                                                          if (rawValue == -23001)
                                                          {
                                                            *v1 = 1020;
                                                          }

                                                          else
                                                          {
                                                            if (rawValue != -23000)
                                                            {
                                                              goto LABEL_1042;
                                                            }

                                                            *v1 = 1019;
                                                          }

                                                          break;
                                                      }
                                                    }

                                                    break;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              switch(rawValue)
                                              {
                                                case -22051:
                                                  *v1 = 895;
                                                  break;
                                                case -22050:
                                                  *v1 = 894;
                                                  break;
                                                case -22049:
                                                case -22048:
                                                case -22047:
                                                case -22046:
                                                case -22045:
                                                case -22044:
                                                case -22043:
                                                case -22042:
                                                case -22041:
                                                case -22040:
                                                case -22039:
                                                  goto LABEL_970;
                                                case -22038:
                                                  *v1 = 893;
                                                  break;
                                                case -22037:
                                                  *v1 = 892;
                                                  break;
                                                case -22036:
                                                  *v1 = 891;
                                                  break;
                                                case -22035:
                                                  *v1 = 890;
                                                  break;
                                                case -22034:
                                                  *v1 = 889;
                                                  break;
                                                case -22033:
                                                  *v1 = 888;
                                                  break;
                                                case -22032:
                                                  *v1 = 887;
                                                  break;
                                                case -22031:
                                                  *v1 = 886;
                                                  break;
                                                case -22030:
                                                  *v1 = 885;
                                                  break;
                                                case -22029:
                                                  *v1 = 884;
                                                  break;
                                                case -22028:
                                                  *v1 = 883;
                                                  break;
                                                case -22027:
                                                  *v1 = 882;
                                                  break;
                                                case -22026:
                                                  *v1 = 881;
                                                  break;
                                                case -22025:
                                                  *v1 = 880;
                                                  break;
                                                case -22024:
                                                  *v1 = 879;
                                                  break;
                                                case -22023:
                                                  *v1 = 878;
                                                  break;
                                                case -22022:
                                                  *v1 = 877;
                                                  break;
                                                case -22021:
                                                  *v1 = 876;
                                                  break;
                                                case -22020:
                                                  *v1 = 875;
                                                  break;
                                                case -22019:
                                                  *v1 = 874;
                                                  break;
                                                case -22018:
                                                  *v1 = 873;
                                                  break;
                                                case -22017:
                                                  *v1 = 872;
                                                  break;
                                                case -22016:
                                                  *v1 = 871;
                                                  break;
                                                case -22015:
                                                  *v1 = 870;
                                                  break;
                                                case -22014:
                                                  *v1 = 869;
                                                  break;
                                                case -22013:
                                                  *v1 = 868;
                                                  break;
                                                case -22012:
                                                  *v1 = 867;
                                                  break;
                                                case -22011:
                                                  *v1 = 866;
                                                  break;
                                                case -22010:
                                                  *v1 = 865;
                                                  break;
                                                case -22009:
                                                  *v1 = 864;
                                                  break;
                                                case -22008:
                                                  *v1 = 863;
                                                  break;
                                                case -22007:
                                                  *v1 = 862;
                                                  break;
                                                case -22006:
                                                  *v1 = 861;
                                                  break;
                                                case -22005:
                                                  *v1 = 860;
                                                  break;
                                                case -22004:
                                                  *v1 = 859;
                                                  break;
                                                case -22003:
                                                  *v1 = 858;
                                                  break;
                                                case -22002:
                                                  *v1 = 857;
                                                  break;
                                                case -22001:
                                                  *v1 = 856;
                                                  break;
                                                case -22000:
                                                  *v1 = 855;
                                                  break;
                                                default:
                                                  if (rawValue != -21008)
                                                  {
                                                    goto LABEL_970;
                                                  }

                                                  *v1 = 854;
                                                  break;
                                              }
                                            }
                                          }

                                          else if (rawValue > -20004)
                                          {
                                            if (rawValue == -20003)
                                            {
                                              *v1 = 826;
                                            }

                                            else
                                            {
                                              *v1 = 825;
                                            }
                                          }

                                          else if (rawValue == -20005)
                                          {
                                            *v1 = 828;
                                          }

                                          else
                                          {
                                            *v1 = 827;
                                          }
                                        }

                                        else
                                        {
                                          v2 = 768;
                                          switch(rawValue)
                                          {
                                            case -18089:
                                              *v1 = 822;
                                              return rawValue;
                                            case -18088:
                                              *v1 = 821;
                                              return rawValue;
                                            case -18087:
                                              *v1 = 820;
                                              return rawValue;
                                            case -18086:
                                              *v1 = 819;
                                              return rawValue;
                                            case -18085:
                                              *v1 = 818;
                                              return rawValue;
                                            case -18084:
                                              *v1 = 817;
                                              return rawValue;
                                            case -18083:
                                              *v1 = 816;
                                              return rawValue;
                                            case -18082:
                                              *v1 = 815;
                                              return rawValue;
                                            case -18081:
                                              *v1 = 814;
                                              return rawValue;
                                            case -18080:
                                              *v1 = 813;
                                              return rawValue;
                                            case -18079:
                                              *v1 = 812;
                                              return rawValue;
                                            case -18078:
                                              *v1 = 811;
                                              return rawValue;
                                            case -18077:
                                              *v1 = 810;
                                              return rawValue;
                                            case -18076:
                                              *v1 = 809;
                                              return rawValue;
                                            case -18075:
                                              *v1 = 808;
                                              return rawValue;
                                            case -18074:
                                              *v1 = 807;
                                              return rawValue;
                                            case -18073:
                                              *v1 = 806;
                                              return rawValue;
                                            case -18072:
                                            case -18064:
                                              goto LABEL_895;
                                            case -18071:
                                              *v1 = 805;
                                              return rawValue;
                                            case -18070:
                                              *v1 = 804;
                                              return rawValue;
                                            case -18069:
                                              *v1 = 803;
                                              return rawValue;
                                            case -18068:
                                              *v1 = 802;
                                              return rawValue;
                                            case -18067:
                                              *v1 = 801;
                                              return rawValue;
                                            case -18066:
                                              *v1 = 800;
                                              return rawValue;
                                            case -18065:
                                              *v1 = 799;
                                              return rawValue;
                                            case -18063:
                                              *v1 = 798;
                                              return rawValue;
                                            case -18062:
                                              *v1 = 797;
                                              return rawValue;
                                            case -18061:
                                              *v1 = 796;
                                              return rawValue;
                                            case -18060:
                                              *v1 = 795;
                                              return rawValue;
                                            case -18059:
                                              *v1 = 794;
                                              return rawValue;
                                            case -18058:
                                              *v1 = 793;
                                              return rawValue;
                                            case -18057:
                                              *v1 = 792;
                                              return rawValue;
                                            case -18056:
                                              *v1 = 791;
                                              return rawValue;
                                            case -18055:
                                              *v1 = 790;
                                              return rawValue;
                                            case -18054:
                                              *v1 = 789;
                                              return rawValue;
                                            case -18053:
                                              *v1 = 788;
                                              return rawValue;
                                            case -18052:
                                              *v1 = 787;
                                              return rawValue;
                                            case -18051:
                                              *v1 = 786;
                                              return rawValue;
                                            case -18050:
                                              *v1 = 785;
                                              return rawValue;
                                            case -18049:
                                              *v1 = 784;
                                              return rawValue;
                                            case -18048:
                                              *v1 = 783;
                                              return rawValue;
                                            case -18047:
                                              *v1 = 782;
                                              return rawValue;
                                            case -18046:
                                              *v1 = 781;
                                              return rawValue;
                                            case -18045:
                                              *v1 = 780;
                                              return rawValue;
                                            case -18044:
                                              *v1 = 779;
                                              return rawValue;
                                            case -18043:
                                              *v1 = 778;
                                              return rawValue;
                                            case -18042:
                                              *v1 = 777;
                                              return rawValue;
                                            case -18041:
                                              *v1 = 776;
                                              return rawValue;
                                            case -18040:
                                              *v1 = 775;
                                              return rawValue;
                                            case -18039:
                                              *v1 = 774;
                                              return rawValue;
                                            case -18038:
                                              *v1 = 773;
                                              return rawValue;
                                            case -18037:
                                              *v1 = 772;
                                              return rawValue;
                                            case -18036:
                                              *v1 = 771;
                                              return rawValue;
                                            case -18035:
                                              *v1 = 770;
                                              return rawValue;
                                            case -18034:
                                              *v1 = 769;
                                              return rawValue;
                                            case -18033:
                                              goto LABEL_582;
                                            default:
                                              if (rawValue == -20001)
                                              {
                                                *v1 = 824;
                                                return rawValue;
                                              }

                                              if (rawValue != -20000)
                                              {
                                                goto LABEL_895;
                                              }

                                              *v1 = 823;
                                              break;
                                          }
                                        }
                                      }

                                      else if (rawValue == -17003)
                                      {
                                        *v1 = 733;
                                      }

                                      else
                                      {
                                        *v1 = 732;
                                      }
                                    }

                                    else if (rawValue <= -16005)
                                    {
                                      if (rawValue == -16006)
                                      {
                                        *v1 = 729;
                                      }

                                      else
                                      {
                                        *v1 = 728;
                                      }
                                    }

                                    else if (rawValue == -16004)
                                    {
                                      *v1 = 727;
                                    }

                                    else if (rawValue == -16003)
                                    {
                                      *v1 = 726;
                                    }

                                    else
                                    {
                                      *v1 = 725;
                                    }
                                  }

                                  else
                                  {
                                    v2 = 704;
                                    switch(rawValue)
                                    {
                                      case -15035:
                                        *v1 = 722;
                                        return rawValue;
                                      case -15034:
                                        *v1 = 721;
                                        return rawValue;
                                      case -15033:
                                        *v1 = 720;
                                        return rawValue;
                                      case -15032:
                                        *v1 = 719;
                                        return rawValue;
                                      case -15031:
                                        *v1 = 718;
                                        return rawValue;
                                      case -15030:
                                        *v1 = 717;
                                        return rawValue;
                                      case -15029:
                                        *v1 = 716;
                                        return rawValue;
                                      case -15028:
                                        *v1 = 715;
                                        return rawValue;
                                      case -15027:
                                        *v1 = 714;
                                        return rawValue;
                                      case -15026:
                                        *v1 = 713;
                                        return rawValue;
                                      case -15025:
                                        *v1 = 712;
                                        return rawValue;
                                      case -15024:
                                        *v1 = 711;
                                        return rawValue;
                                      case -15023:
                                        *v1 = 710;
                                        return rawValue;
                                      case -15022:
                                        *v1 = 709;
                                        return rawValue;
                                      case -15021:
                                        *v1 = 708;
                                        return rawValue;
                                      case -15020:
                                        *v1 = 707;
                                        return rawValue;
                                      case -15019:
                                        *v1 = 706;
                                        return rawValue;
                                      case -15018:
                                        *v1 = 705;
                                        return rawValue;
                                      case -15017:
                                        goto LABEL_582;
                                      default:
                                        if (rawValue == -16001)
                                        {
                                          *v1 = 724;
                                          return rawValue;
                                        }

                                        if (rawValue != -16000)
                                        {
                                          goto LABEL_821;
                                        }

                                        *v1 = 723;
                                        break;
                                    }
                                  }
                                }

                                else
                                {
                                  switch(rawValue)
                                  {
                                    case -18032:
                                      *v1 = 767;
                                      return rawValue;
                                    case -18031:
                                      *v1 = 766;
                                      return rawValue;
                                    case -18030:
                                      *v1 = 765;
                                      return rawValue;
                                    case -18029:
                                      *v1 = 764;
                                      return rawValue;
                                    case -18028:
                                      *v1 = 763;
                                      return rawValue;
                                    case -18027:
                                      *v1 = 762;
                                      return rawValue;
                                    case -18026:
                                      *v1 = 761;
                                      return rawValue;
                                    case -18025:
                                      *v1 = 760;
                                      return rawValue;
                                    case -18024:
                                      *v1 = 759;
                                      return rawValue;
                                    case -18023:
                                      *v1 = 758;
                                      return rawValue;
                                    case -18022:
                                      *v1 = 757;
                                      return rawValue;
                                    case -18021:
                                      *v1 = 756;
                                      return rawValue;
                                    case -18020:
                                      *v1 = 755;
                                      return rawValue;
                                    case -18019:
                                      *v1 = 754;
                                      return rawValue;
                                    case -18018:
                                      *v1 = 753;
                                      return rawValue;
                                    case -18017:
                                      *v1 = 752;
                                      return rawValue;
                                    case -18016:
                                      *v1 = 751;
                                      return rawValue;
                                    case -18015:
                                      *v1 = 750;
                                      return rawValue;
                                    case -18014:
                                      *v1 = 749;
                                      return rawValue;
                                    case -18013:
                                      *v1 = 748;
                                      return rawValue;
                                    case -18012:
                                      *v1 = 747;
                                      return rawValue;
                                    case -18011:
                                      *v1 = 746;
                                      return rawValue;
                                    case -18010:
                                      *v1 = 745;
                                      return rawValue;
                                    case -18009:
                                      *v1 = 744;
                                      return rawValue;
                                    case -18008:
                                      *v1 = 743;
                                      return rawValue;
                                    case -18007:
                                      *v1 = 742;
                                      return rawValue;
                                    case -18006:
                                      *v1 = 741;
                                      return rawValue;
                                    case -18005:
                                      *v1 = 740;
                                      return rawValue;
                                    case -18004:
                                      *v1 = 739;
                                      return rawValue;
                                    case -18003:
                                      *v1 = 738;
                                      return rawValue;
                                    case -18002:
                                      *v1 = 737;
                                      return rawValue;
                                    case -18001:
                                      *v1 = 736;
                                      return rawValue;
                                    case -18000:
                                      *v1 = 735;
                                      return rawValue;
                                    default:
                                      if (rawValue != -17004)
                                      {
                                        goto LABEL_821;
                                      }

                                      *v1 = 734;
                                      break;
                                  }
                                }

                                break;
                            }
                          }

                          break;
                      }
                    }

                    else
                    {
                      v5 = 575;
LABEL_581:
                      v2 = v5 - v4;
LABEL_582:
                      *v1 = v2;
                    }

                    break;
                  case -12005:
                    *v1 = 477;
                    return rawValue;
                  case -12003:
                    *v1 = 476;
                    return rawValue;
                  case -12002:
                    *v1 = 475;
                    return rawValue;
                  case -12001:
                    *v1 = 474;
                    return rawValue;
                  case -12000:
                    *v1 = 473;
                    return rawValue;
                  default:
                    v2 = 448;
                    switch(rawValue)
                    {
                      case -11308:
                        *v1 = 472;
                        return rawValue;
                      case -11307:
                        *v1 = 471;
                        return rawValue;
                      case -11306:
                        *v1 = 470;
                        return rawValue;
                      case -11305:
                        *v1 = 469;
                        return rawValue;
                      case -11304:
                        *v1 = 468;
                        return rawValue;
                      case -11303:
                        *v1 = 467;
                        return rawValue;
                      case -11302:
                        *v1 = 466;
                        return rawValue;
                      case -11301:
                        *v1 = 465;
                        return rawValue;
                      case -11300:
                        *v1 = 464;
                        return rawValue;
                      case -11216:
                        *v1 = 463;
                        return rawValue;
                      case -11215:
                        *v1 = 462;
                        return rawValue;
                      case -11214:
                        *v1 = 461;
                        return rawValue;
                      case -11213:
                        *v1 = 460;
                        return rawValue;
                      case -11212:
                        *v1 = 459;
                        return rawValue;
                      case -11211:
                        *v1 = 458;
                        return rawValue;
                      case -11210:
                        *v1 = 457;
                        return rawValue;
                      case -11209:
                        *v1 = 456;
                        return rawValue;
                      case -11208:
                        *v1 = 455;
                        return rawValue;
                      case -11207:
                        *v1 = 454;
                        return rawValue;
                      case -11202:
                        *v1 = 453;
                        return rawValue;
                      case -11201:
                        *v1 = 452;
                        return rawValue;
                      case -11171:
                        *v1 = 451;
                        return rawValue;
                      case -11170:
                        *v1 = 450;
                        return rawValue;
                      case -11163:
                        *v1 = 449;
                        return rawValue;
                      case -11162:
                        goto LABEL_582;
                      default:
                        goto LABEL_579;
                    }
                }

                break;
            }
          }

          else
          {
            switch(rawValue)
            {
              case -9199:
                *v1 = 369;
                return rawValue;
              case -9198:
              case -9197:
              case -9196:
              case -9195:
              case -9194:
              case -9193:
              case -9192:
              case -9191:
              case -9190:
              case -9189:
              case -9188:
              case -9187:
              case -9186:
              case -9185:
              case -9184:
              case -9183:
              case -9182:
              case -9181:
              case -9180:
              case -9179:
              case -9178:
              case -9177:
              case -9176:
              case -9175:
              case -9174:
              case -9173:
              case -9172:
              case -9171:
              case -9170:
              case -9169:
              case -9168:
              case -9167:
              case -9166:
              case -9165:
              case -9164:
              case -9163:
              case -9162:
              case -9161:
              case -9160:
              case -9159:
              case -9158:
              case -9157:
              case -9156:
              case -9155:
              case -9154:
              case -9153:
              case -9152:
              case -9151:
              case -9150:
              case -9149:
              case -9148:
              case -9147:
              case -9146:
              case -9145:
              case -9144:
              case -9143:
              case -9142:
              case -9141:
              case -9140:
              case -9139:
              case -9138:
              case -9137:
              case -9136:
              case -9135:
              case -9134:
              case -9133:
              case -9132:
              case -9131:
              case -9130:
              case -9129:
              case -9128:
              case -9127:
              case -9126:
              case -9125:
              case -9124:
              case -9123:
              case -9122:
              case -9121:
              case -9120:
              case -9119:
              case -9118:
              case -9117:
              case -9116:
              case -9115:
              case -9114:
              case -9113:
              case -9112:
              case -9111:
              case -9110:
              case -9109:
              case -9108:
              case -9107:
              case -9106:
              case -9105:
              case -9099:
              case -9098:
              case -9097:
              case -9096:
              case -9095:
              case -9094:
              case -9093:
              case -9092:
              case -9091:
              case -9090:
              case -9089:
              case -9088:
              case -9087:
              case -9086:
              case -9085:
              case -9084:
              case -9083:
              case -9082:
              case -9081:
              case -9080:
              case -9079:
              case -9078:
              case -9077:
              case -9076:
              case -9075:
              case -9074:
              case -9073:
              case -9072:
              case -9071:
              case -9070:
              case -9069:
              case -9068:
              case -9067:
              case -9066:
              case -9065:
              case -9064:
              case -9063:
              case -9062:
              case -9061:
              case -9060:
              case -9059:
              case -9058:
              case -9057:
              case -9056:
              case -9055:
              case -9054:
              case -9053:
              case -9052:
              case -9051:
              case -9050:
              case -9049:
              case -9048:
              case -9047:
              case -9046:
              case -9045:
              case -9044:
              case -9043:
              case -9042:
              case -9041:
              case -9040:
              case -9039:
              case -9038:
              case -9037:
              case -9036:
              case -9035:
              case -9034:
              case -9033:
              case -9032:
              case -9031:
              case -9030:
              case -9029:
              case -9028:
              case -9027:
              case -9026:
              case -9025:
              case -9024:
              case -9023:
              case -9022:
              case -9021:
              case -9020:
              case -9019:
              case -9018:
              case -9017:
              case -9016:
              case -9015:
                goto LABEL_428;
              case -9104:
                *v1 = 368;
                return rawValue;
              case -9103:
                *v1 = 367;
                return rawValue;
              case -9102:
                *v1 = 366;
                return rawValue;
              case -9101:
                *v1 = 365;
                return rawValue;
              case -9100:
                *v1 = 364;
                return rawValue;
              case -9014:
                *v1 = 363;
                return rawValue;
              case -9013:
                *v1 = 362;
                return rawValue;
              case -9012:
                *v1 = 361;
                return rawValue;
              case -9011:
                *v1 = 360;
                return rawValue;
              case -9010:
                *v1 = 359;
                return rawValue;
              case -9009:
                *v1 = 358;
                return rawValue;
              case -9008:
                *v1 = 357;
                return rawValue;
              case -9007:
                *v1 = 356;
                return rawValue;
              case -9006:
                *v1 = 355;
                return rawValue;
              case -9005:
                *v1 = 354;
                return rawValue;
              case -9004:
                *v1 = 353;
                return rawValue;
              case -9003:
                *v1 = 352;
                return rawValue;
              case -9002:
                *v1 = 351;
                return rawValue;
              case -9001:
                *v1 = 350;
                return rawValue;
              case -9000:
                *v1 = 349;
                return rawValue;
              default:
                if (rawValue == -10001)
                {
                  *v1 = 371;
                  return rawValue;
                }

                if (rawValue != -10000)
                {
                  goto LABEL_428;
                }

                *v1 = 370;
                break;
            }
          }

          break;
        case -3203:
          *v1 = 198;
          return rawValue;
        case -3202:
          *v1 = 197;
          return rawValue;
        case -3201:
          *v1 = 196;
          return rawValue;
        case -3200:
          *v1 = 195;
          return rawValue;
        case -3181:
          *v1 = 194;
          return rawValue;
        case -3180:
          *v1 = 193;
          return rawValue;
        case -3179:
          goto LABEL_582;
        default:
          switch(rawValue)
          {
            case -4120:
              *v1 = 232;
              return rawValue;
            case -4119:
              *v1 = 231;
              return rawValue;
            case -4118:
              *v1 = 230;
              return rawValue;
            case -4117:
              *v1 = 229;
              return rawValue;
            case -4116:
              *v1 = 228;
              return rawValue;
            case -4115:
              *v1 = 227;
              return rawValue;
            case -4114:
              *v1 = 226;
              return rawValue;
            case -4113:
              *v1 = 225;
              return rawValue;
            case -4112:
              *v1 = 224;
              return rawValue;
            case -4111:
              *v1 = 223;
              return rawValue;
            case -4110:
              *v1 = 222;
              return rawValue;
            case -4109:
              *v1 = 221;
              return rawValue;
            case -4108:
              *v1 = 220;
              return rawValue;
            case -4107:
              *v1 = 219;
              return rawValue;
            case -4106:
              *v1 = 218;
              return rawValue;
            case -4105:
              *v1 = 217;
              return rawValue;
            case -4104:
              *v1 = 216;
              return rawValue;
            case -4103:
              *v1 = 215;
              return rawValue;
            case -4102:
              *v1 = 214;
              return rawValue;
            case -4101:
              *v1 = 213;
              return rawValue;
            default:
              goto LABEL_236;
          }
      }
    }
  }

  else
  {
    switch(rawValue)
    {
      case -3178:
        *v1 = 191;
        return rawValue;
      case -3177:
        *v1 = 190;
        return rawValue;
      case -3176:
        *v1 = 189;
        return rawValue;
      case -3175:
        *v1 = 188;
        return rawValue;
      case -3174:
        *v1 = 187;
        return rawValue;
      case -3173:
        *v1 = 186;
        return rawValue;
      case -3172:
        *v1 = 185;
        return rawValue;
      case -3171:
        *v1 = 184;
        return rawValue;
      case -3170:
      case -3169:
      case -3168:
      case -3160:
      case -3150:
      case -3149:
      case -3148:
      case -3147:
      case -3146:
      case -3145:
      case -3144:
      case -3143:
      case -3142:
      case -3141:
      case -3140:
      case -3139:
      case -3138:
      case -3137:
      case -3136:
      case -3135:
      case -3134:
      case -3133:
      case -3132:
      case -3131:
      case -3130:
      case -3129:
      case -3128:
      case -3127:
      case -3126:
      case -3125:
      case -3124:
      case -3123:
      case -3122:
      case -3121:
      case -3120:
      case -3119:
      case -3118:
      case -3117:
      case -3116:
      case -3115:
        goto LABEL_169;
      case -3167:
        *v1 = 183;
        return rawValue;
      case -3166:
        *v1 = 182;
        return rawValue;
      case -3165:
        *v1 = 181;
        return rawValue;
      case -3164:
        *v1 = 180;
        return rawValue;
      case -3163:
        *v1 = 179;
        return rawValue;
      case -3162:
        *v1 = 178;
        return rawValue;
      case -3161:
        *v1 = 177;
        return rawValue;
      case -3159:
        *v1 = 176;
        return rawValue;
      case -3158:
        *v1 = 175;
        return rawValue;
      case -3157:
        *v1 = 174;
        return rawValue;
      case -3156:
        *v1 = 173;
        return rawValue;
      case -3155:
        *v1 = 172;
        return rawValue;
      case -3154:
        *v1 = 171;
        return rawValue;
      case -3153:
        *v1 = 170;
        return rawValue;
      case -3152:
        *v1 = 169;
        return rawValue;
      case -3151:
        *v1 = 168;
        return rawValue;
      case -3114:
        *v1 = 167;
        return rawValue;
      case -3113:
        *v1 = 166;
        return rawValue;
      case -3112:
        *v1 = 165;
        return rawValue;
      case -3111:
        *v1 = 164;
        return rawValue;
      case -3110:
        *v1 = 163;
        return rawValue;
      case -3109:
        *v1 = 162;
        return rawValue;
      case -3108:
        *v1 = 161;
        return rawValue;
      case -3107:
        *v1 = 160;
        return rawValue;
      case -3106:
        *v1 = 159;
        return rawValue;
      case -3105:
        *v1 = 158;
        return rawValue;
      case -3104:
        *v1 = 157;
        return rawValue;
      case -3103:
        *v1 = 156;
        return rawValue;
      case -3102:
        *v1 = 155;
        return rawValue;
      case -3101:
        *v1 = 154;
        return rawValue;
      default:
        v3 = rawValue > 0xFFFFFFFFFFFDFDF0;
        if (rawValue != -131600)
        {
          goto LABEL_169;
        }

        *v1 = 133;
        break;
    }
  }

  return rawValue;
}