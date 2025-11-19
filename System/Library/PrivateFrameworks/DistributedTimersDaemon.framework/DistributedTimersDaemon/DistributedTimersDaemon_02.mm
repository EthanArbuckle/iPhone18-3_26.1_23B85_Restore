uint64_t sub_2490B2D74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED79F0, &unk_24910FE70);
  result = sub_24910D21C();
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_24910D60C();
      sub_24910CCCC();

      result = sub_24910D62C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

unint64_t sub_2490B3064(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24910D1DC();

  return sub_2490B3528(a1, v5);
}

uint64_t sub_2490B30A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED79E8, &qword_24910FE68);
  result = sub_24910D36C();
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
        sub_2490B45E0((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2490B63E8(v24, &v38);
        sub_2490A4944(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_24910D1DC();
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
      result = sub_2490B45E0(v37, (*(v8 + 56) + 32 * v16));
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

_OWORD *sub_2490B3360(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2490B3064(a2);
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
      sub_2490B35F0();
      goto LABEL_7;
    }

    sub_2490B30A8(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_2490B3064(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2490B63E8(a2, v22);
      return sub_2490B34AC(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_24910D57C();
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

  return sub_2490B45E0(a1, v17);
}

_OWORD *sub_2490B34AC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2490B45E0(a3, (a4[7] + 32 * a1));
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

unint64_t sub_2490B3528(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2490B63E8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1F1C10](v9, a1);
      sub_2490B45F0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_2490B35F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED79E8, &qword_24910FE68);
  v2 = *v0;
  v3 = sub_24910D35C();
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
        sub_2490B63E8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2490A4944(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2490B45E0(v22, (*(v4 + 56) + v17));
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

id sub_2490B3794()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_24910C1CC();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_24910C11C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2490B3854(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2490A453C(a1, a2);
  }

  return a1;
}

uint64_t sub_2490B3868(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2490B38D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2490B3924(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2490B38D0(a1, a2);
  }

  return a1;
}

uint64_t sub_2490B3938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2490B39A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24910C03C();
  v11 = result;
  if (result)
  {
    result = sub_24910C05C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24910C04C();
  sub_2490B225C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2490B3A58(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2490B38D0(a3, a4);
          return sub_2490B248C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV5SoundO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_24910D54C() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_24910D54C() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = *(a2 + 40);
  v7 = *(a2 + 48);
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_2490B3924(*(a1 + 40), *(a1 + 48));
      sub_2490B3924(v8, v7);
      v9 = sub_2490B3A58(v6, v5, v8, v7);
      sub_2490B3854(v8, v7);
      sub_2490B3854(v6, v5);
      if ((v9 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

LABEL_13:
    sub_2490B3924(*(a1 + 40), *(a1 + 48));
    sub_2490B3924(v8, v7);
    sub_2490B3854(v6, v5);
    sub_2490B3854(v8, v7);
    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_13;
  }

  sub_2490B3924(*(a1 + 40), *(a1 + 48));
  sub_2490B3924(v8, v7);
  sub_2490B3854(v6, v5);
LABEL_15:
  v10 = type metadata accessor for DTSyncedAlarm(0);
  v11 = v10[9];
  if ((sub_24910C21C() & 1) == 0 || (sub_2490ACDCC(*(a1 + v10[10]), *(a2 + v10[10])) & 1) == 0)
  {
    return 0;
  }

  v12 = v10[11];
  v13 = a1 + v12;
  v14 = *(a1 + v12 + 8);
  v15 = a2 + v12;
  v16 = *(v15 + 8);
  if (v14)
  {
    if (v16)
    {
      v17 = *(v13 + 16);
      v18 = *(v13 + 24);
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (*v13 == *v15 && v14 == v16)
      {
      }

      else
      {
        v21 = sub_24910D54C();

        if ((v21 & 1) == 0)
        {
LABEL_36:

          return 0;
        }
      }

      if (v18)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else if ((v20 & 1) != 0 || v17 != v19)
      {
        goto LABEL_36;
      }

LABEL_30:

      v22 = v10[12];
      v23 = (a1 + v22);
      v24 = *(a1 + v22 + 8);
      v25 = (a2 + v22);
      v26 = v25[1];
      if (v24)
      {
        if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_24910D54C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v26)
      {
        return 0;
      }

      v27 = v10[13];
      v28 = (a1 + v27);
      v29 = *(a1 + v27 + 8);
      v30 = (a2 + v27);
      v31 = v30[1];
      if (v29)
      {
        if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_24910D54C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v31)
      {
        return 0;
      }

      return 1;
    }
  }

  else if (!v16)
  {
    goto LABEL_30;
  }

  return 0;
}

uint64_t _s23DistributedTimersDaemon13DTSyncedTimerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_24910D54C() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_2490B3924(*(a1 + 24), *(a1 + 32));
      sub_2490B3924(v8, v7);
      v9 = sub_2490B3A58(v6, v5, v8, v7);
      sub_2490B3854(v8, v7);
      sub_2490B3854(v6, v5);
      if ((v9 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

LABEL_11:
    sub_2490B3924(*(a1 + 24), *(a1 + 32));
    sub_2490B3924(v8, v7);
    sub_2490B3854(v6, v5);
    sub_2490B3854(v8, v7);
    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_11;
  }

  sub_2490B3924(*(a1 + 24), *(a1 + 32));
  sub_2490B3924(v8, v7);
  sub_2490B3854(v6, v5);
LABEL_13:
  v10 = type metadata accessor for DTSyncedTimer(0);
  v11 = v10[7];
  if ((sub_24910C21C() & 1) == 0 || (sub_2490AB104(*(a1 + v10[8]), *(a2 + v10[8])) & 1) == 0)
  {
    return 0;
  }

  v12 = v10[9];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16 || (*v13 != *v15 || v14 != v16) && (sub_24910D54C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = v10[10];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (v21 && (*v18 == *v20 && v19 == v21 || (sub_24910D54C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v21)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2490B412C()
{
  v0 = sub_24910D38C();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2490B4178()
{
  result = qword_27EED8AD0;
  if (!qword_27EED8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED8AD0);
  }

  return result;
}

unint64_t sub_2490B41CC()
{
  result = qword_27EED8AD8;
  if (!qword_27EED8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED8AD8);
  }

  return result;
}

unint64_t sub_2490B4220()
{
  result = qword_27EED8AE0[0];
  if (!qword_27EED8AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EED8AE0);
  }

  return result;
}

unint64_t sub_2490B4274()
{
  result = qword_27EED7858;
  if (!qword_27EED7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7858);
  }

  return result;
}

unint64_t sub_2490B42C8()
{
  result = qword_27EED7878;
  if (!qword_27EED7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7878);
  }

  return result;
}

unint64_t sub_2490B431C()
{
  result = qword_27EED7888;
  if (!qword_27EED7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7888);
  }

  return result;
}

unint64_t sub_2490B4370()
{
  result = qword_27EED7890;
  if (!qword_27EED7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7890);
  }

  return result;
}

unint64_t sub_2490B43C4()
{
  result = qword_27EED78B0;
  if (!qword_27EED78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED78B0);
  }

  return result;
}

unint64_t sub_2490B4418()
{
  result = qword_27EED78B8;
  if (!qword_27EED78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED78B8);
  }

  return result;
}

unint64_t sub_2490B446C()
{
  result = qword_27EED78C8;
  if (!qword_27EED78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED78C8);
  }

  return result;
}

uint64_t sub_2490B44C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED78A0, &qword_24910EF78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2490B4538()
{
  result = qword_27EED78E0;
  if (!qword_27EED78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED78E0);
  }

  return result;
}

unint64_t sub_2490B458C()
{
  result = qword_27EED78E8;
  if (!qword_27EED78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED78E8);
  }

  return result;
}

_OWORD *sub_2490B45E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2490B4644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2490B46AC()
{
  v0 = sub_24910D38C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2490B46F8()
{
  result = qword_27EED7910;
  if (!qword_27EED7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7910);
  }

  return result;
}

unint64_t sub_2490B474C()
{
  result = qword_27EED7918;
  if (!qword_27EED7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7918);
  }

  return result;
}

unint64_t sub_2490B47A0()
{
  result = qword_27EED7928;
  if (!qword_27EED7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7928);
  }

  return result;
}

unint64_t sub_2490B47F8()
{
  result = qword_27EED7930;
  if (!qword_27EED7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7930);
  }

  return result;
}

unint64_t sub_2490B4850()
{
  result = qword_27EED7938;
  if (!qword_27EED7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7938);
  }

  return result;
}

unint64_t sub_2490B48A8()
{
  result = qword_27EED7940;
  if (!qword_27EED7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7940);
  }

  return result;
}

unint64_t sub_2490B4900()
{
  result = qword_27EED7948;
  if (!qword_27EED7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7948);
  }

  return result;
}

uint64_t sub_2490B4954(void *a1)
{
  a1[1] = sub_2490A5A5C(&unk_27EED7950, type metadata accessor for DTSyncedAlarm);
  a1[2] = sub_2490A5A5C(&qword_27EED7790, type metadata accessor for DTSyncedAlarm);
  a1[3] = sub_2490A5A5C(&qword_27EED7760, type metadata accessor for DTSyncedAlarm);
  a1[4] = sub_2490A5A5C(&qword_27EED76A0, type metadata accessor for DTSyncedAlarm);
  result = sub_2490A5A5C(&qword_27EED7960, type metadata accessor for DTSyncedAlarm);
  a1[5] = result;
  return result;
}

unint64_t sub_2490B4A60()
{
  result = qword_27EED7968;
  if (!qword_27EED7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7968);
  }

  return result;
}

unint64_t sub_2490B4AB8()
{
  result = qword_27EED7970;
  if (!qword_27EED7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7970);
  }

  return result;
}

unint64_t sub_2490B4B10()
{
  result = qword_27EED7978;
  if (!qword_27EED7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7978);
  }

  return result;
}

unint64_t sub_2490B4B68()
{
  result = qword_27EED7980;
  if (!qword_27EED7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7980);
  }

  return result;
}

uint64_t sub_2490B4BBC(void *a1)
{
  a1[1] = sub_2490A5A5C(&qword_27EED75C0, type metadata accessor for DTSyncedTimer);
  a1[2] = sub_2490A5A5C(&qword_27EED77A0, type metadata accessor for DTSyncedTimer);
  a1[3] = sub_2490A5A5C(&qword_27EED7778, type metadata accessor for DTSyncedTimer);
  a1[4] = sub_2490A5A5C(&qword_27EED7990, type metadata accessor for DTSyncedTimer);
  result = sub_2490A5A5C(&unk_27EED7998, type metadata accessor for DTSyncedTimer);
  a1[5] = result;
  return result;
}

__n128 sub_2490B4CC4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2490B4CE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2490B4DB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2490B4E64()
{
  sub_2490B4EE0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2490B4EE0()
{
  if (!qword_27EED79A8)
  {
    sub_24910CACC();
    v0 = sub_24910D11C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EED79A8);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2490B4F44(uint64_t *a1, int a2)
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

uint64_t sub_2490B4F8C(uint64_t result, int a2, int a3)
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

uint64_t sub_2490B50F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24910C26C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2490B51B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24910C26C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2490B5254()
{
  sub_2490B5424(319, &qword_27EED79B0);
  if (v0 <= 0x3F)
  {
    sub_24910C26C();
    if (v1 <= 0x3F)
    {
      sub_2490B5374();
      if (v2 <= 0x3F)
      {
        sub_2490B5424(319, &qword_27EED79C8);
        if (v3 <= 0x3F)
        {
          sub_2490B5424(319, &qword_27EED79D0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2490B5374()
{
  if (!qword_27EED79B8)
  {
    sub_2490B53D0();
    v0 = sub_24910CE8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EED79B8);
    }
  }
}

unint64_t sub_2490B53D0()
{
  result = qword_27EED79C0;
  if (!qword_27EED79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED79C0);
  }

  return result;
}

void sub_2490B5424(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24910D11C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DTSyncedAlarm.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DTSyncedAlarm.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2490B5608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2490B5654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2490B56BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24910C26C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2490B577C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24910C26C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2490B5820()
{
  sub_2490B5424(319, &qword_27EED79B0);
  if (v0 <= 0x3F)
  {
    sub_24910C26C();
    if (v1 <= 0x3F)
    {
      sub_2490B5424(319, &qword_27EED79D0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV3DayOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV3DayOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DTSyncedTimer.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DTSyncedTimer.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV5SoundO10CodingKeysOwet_0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s23DistributedTimersDaemon13DTSyncedAlarmV5SoundO10CodingKeysOwst_0(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2490B5CB8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2490B5D4C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2490B5E1C()
{
  result = qword_27EEDA220[0];
  if (!qword_27EEDA220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDA220);
  }

  return result;
}

unint64_t sub_2490B5E74()
{
  result = qword_27EEDA430[0];
  if (!qword_27EEDA430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDA430);
  }

  return result;
}

unint64_t sub_2490B5ECC()
{
  result = qword_27EEDA640[0];
  if (!qword_27EEDA640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDA640);
  }

  return result;
}

unint64_t sub_2490B5F24()
{
  result = qword_27EEDA850[0];
  if (!qword_27EEDA850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDA850);
  }

  return result;
}

unint64_t sub_2490B5F7C()
{
  result = qword_27EEDAA60[0];
  if (!qword_27EEDAA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDAA60);
  }

  return result;
}

unint64_t sub_2490B5FD4()
{
  result = qword_27EEDAB70;
  if (!qword_27EEDAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDAB70);
  }

  return result;
}

unint64_t sub_2490B602C()
{
  result = qword_27EEDAB78;
  if (!qword_27EEDAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDAB78);
  }

  return result;
}

unint64_t sub_2490B6084()
{
  result = qword_27EEDAC00;
  if (!qword_27EEDAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDAC00);
  }

  return result;
}

unint64_t sub_2490B60DC()
{
  result = qword_27EEDAC08[0];
  if (!qword_27EEDAC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDAC08);
  }

  return result;
}

unint64_t sub_2490B6134()
{
  result = qword_27EEDAC90;
  if (!qword_27EEDAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDAC90);
  }

  return result;
}

unint64_t sub_2490B618C()
{
  result = qword_27EEDAC98[0];
  if (!qword_27EEDAC98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDAC98);
  }

  return result;
}

unint64_t sub_2490B61E4()
{
  result = qword_27EEDAD20;
  if (!qword_27EEDAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDAD20);
  }

  return result;
}

unint64_t sub_2490B623C()
{
  result = qword_27EEDAD28[0];
  if (!qword_27EEDAD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDAD28);
  }

  return result;
}

unint64_t sub_2490B6294()
{
  result = qword_27EEDADB0;
  if (!qword_27EEDADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDADB0);
  }

  return result;
}

unint64_t sub_2490B62EC()
{
  result = qword_27EEDADB8[0];
  if (!qword_27EEDADB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDADB8);
  }

  return result;
}

unint64_t sub_2490B6340()
{
  result = qword_27EED79D8;
  if (!qword_27EED79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED79D8);
  }

  return result;
}

unint64_t sub_2490B6394()
{
  result = qword_27EED79E0;
  if (!qword_27EED79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED79E0);
  }

  return result;
}

uint64_t sub_2490B64B0()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EEDAE48);
  __swift_project_value_buffer(v0, qword_27EEDAE48);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTTimerDaemon.unownedExecutor.getter()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t DTTimerDaemon.__allocating_init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_2490CD2CC(a1, a2);

  return v7;
}

uint64_t DTTimerDaemon.init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2490CD2CC(a1, a2);

  return v2;
}

uint64_t DTTimerDaemon.summary.getter()
{
  v1[16] = v0;
  v2 = *v0;
  v3 = sub_24910C3EC();
  v1[17] = v3;
  v4 = *(v3 - 8);
  v1[18] = v4;
  v5 = *(v4 + 64) + 15;
  v1[19] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v7 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490B6734, v7, v6);
}

void sub_2490B6734()
{
  v1 = 7104878;
  v2 = v0[19];
  v3 = v0[16];
  sub_24910C3DC();
  sub_24910CCBC();
  if (*(v3 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager))
  {
    v4 = v0[16];
    v5 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
    swift_beginAccess();
    v0[15] = *(*(v4 + v5) + 16);
    v6 = sub_24910D50C();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  v9 = v0[19];
  v10 = v0[16];
  MEMORY[0x24C1F1710](v6, v8);

  sub_24910CCBC();

  if (*(v10 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager))
  {
    v11 = v0[16];
    v12 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
    swift_beginAccess();
    v0[14] = *(*(v11 + v12) + 16);
    v1 = sub_24910D50C();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  v15 = v0[19];
  v16 = v0[16];
  MEMORY[0x24C1F1710](v1, v14);

  sub_24910CCBC();

  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  v17 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
  swift_beginAccess();
  v18 = *(v16 + v17);
  v19 = -1;
  v20 = -1 << *(v18 + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v18 + 64);
  v22 = (63 - v20) >> 6;

  v23 = 0;
  if (v21)
  {
    while (1)
    {
      v24 = v23;
LABEL_15:
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = *(*(v18 + 56) + ((v24 << 9) | (8 * v25)));
      v44 = sub_24910D0BC();
      v46 = v27;
      MEMORY[0x24C1F1710](10, 0xE100000000000000);
      MEMORY[0x24C1F1710](v44, v46);

      if (!v21)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v18 + 64 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_15;
    }
  }

  v28 = v0[16];

  v29 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
  swift_beginAccess();
  v30 = *(v28 + v29);
  v31 = -1;
  v32 = -1 << *(v30 + 32);
  if (-v32 < 64)
  {
    v31 = ~(-1 << -v32);
  }

  v33 = v31 & *(v30 + 64);
  v34 = (63 - v32) >> 6;

  v35 = 0;
  while (v33)
  {
    v36 = v35;
LABEL_25:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = *(*(v30 + 56) + ((v36 << 9) | (8 * v37)));
    v45 = sub_24910D0DC();
    v47 = v39;
    MEMORY[0x24C1F1710](10, 0xE100000000000000);
    MEMORY[0x24C1F1710](v45, v47);
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
      v41 = v0[18];
      v40 = v0[19];
      v42 = v0[17];

      (*(v41 + 8))(v40, v42);

      v43 = v0[1];

      v43(0, 0xE000000000000000);
      return;
    }

    v33 = *(v30 + 64 + 8 * v36);
    ++v35;
    if (v33)
    {
      v35 = v36;
      goto LABEL_25;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t DTTimerDaemon.activate()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2490B6C2C;

  return sub_2490B6E60();
}

uint64_t sub_2490B6C2C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_2490B6D6C;
  v5 = *(v1 + 16);

  return sub_2490B7BCC();
}

uint64_t sub_2490B6D6C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2490B6E60()
{
  v1[65] = v0;
  v2 = *v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v4 = sub_24910CDAC();
  v1[66] = v4;
  v1[67] = v3;

  return MEMORY[0x2822009F8](sub_2490B6F38, v4, v3);
}

uint64_t sub_2490B6F38()
{
  v1 = v0[65];
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager;
  if (*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_27EEDAE40 != -1)
    {
      swift_once();
    }

    v5 = sub_24910C89C();
    __swift_project_value_buffer(v5, qword_27EEDAE48);
    v6 = sub_24910C87C();
    v7 = sub_24910CF5C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_249083000, v6, v7, "Alarm monitor start", v8, 2u);
      MEMORY[0x24C1F26F0](v8, -1, -1);
    }

    v9 = v0[65];

    v10 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    v0[68] = v10;
    v11 = *(v1 + v2);
    *(v1 + v2) = v10;
    v12 = v10;

    v13 = [objc_opt_self() defaultCenter];
    v0[69] = v13;
    v14 = *MEMORY[0x277D29590];
    v15 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_2490CE024;
    v0[7] = v15;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2490C1B98;
    v0[5] = &block_descriptor_162;
    v16 = _Block_copy(v0 + 2);
    v17 = v0[7];
    v18 = v14;

    v19 = [v13 addObserverForName:v18 object:0 queue:0 usingBlock:v16];
    _Block_release(v16);

    v20 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmObservers;
    v21 = swift_beginAccess();
    MEMORY[0x24C1F1760](v21);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v72 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v22 = v0[65];
    sub_24910CD9C();
    swift_endAccess();
    v23 = *MEMORY[0x277D295B0];
    v24 = swift_allocObject();
    swift_weakInit();
    v0[12] = sub_2490CE02C;
    v0[13] = v24;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_2490C1B98;
    v0[11] = &block_descriptor_166;
    v25 = _Block_copy(v0 + 8);
    v26 = v0[13];
    v27 = v23;

    v28 = [v13 addObserverForName:v27 object:0 queue:0 usingBlock:v25];
    _Block_release(v25);

    v29 = swift_beginAccess();
    MEMORY[0x24C1F1760](v29);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v73 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v30 = v0[65];
    sub_24910CD9C();
    swift_endAccess();
    v31 = *MEMORY[0x277D295A8];
    v32 = swift_allocObject();
    swift_weakInit();
    v0[18] = sub_2490CE034;
    v0[19] = v32;
    v0[14] = MEMORY[0x277D85DD0];
    v0[15] = 1107296256;
    v0[16] = sub_2490C1B98;
    v0[17] = &block_descriptor_170;
    v33 = _Block_copy(v0 + 14);
    v34 = v0[19];
    v35 = v31;

    v36 = [v13 addObserverForName:v35 object:0 queue:0 usingBlock:v33];
    _Block_release(v33);

    v37 = swift_beginAccess();
    MEMORY[0x24C1F1760](v37);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v74 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v38 = v0[65];
    sub_24910CD9C();
    swift_endAccess();
    v39 = *MEMORY[0x277D29588];
    v40 = swift_allocObject();
    swift_weakInit();
    v0[24] = sub_2490CE03C;
    v0[25] = v40;
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_2490C1B98;
    v0[23] = &block_descriptor_174;
    v41 = _Block_copy(v0 + 20);
    v42 = v0[25];
    v43 = v39;

    v44 = [v13 addObserverForName:v43 object:0 queue:0 usingBlock:v41];
    _Block_release(v41);

    v45 = swift_beginAccess();
    MEMORY[0x24C1F1760](v45);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v75 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v46 = v0[65];
    sub_24910CD9C();
    swift_endAccess();
    v47 = *MEMORY[0x277D295C0];
    v48 = swift_allocObject();
    swift_weakInit();
    v0[30] = sub_2490CE044;
    v0[31] = v48;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_2490C1B98;
    v0[29] = &block_descriptor_178;
    v49 = _Block_copy(v0 + 26);
    v50 = v0[31];
    v51 = v47;

    v52 = [v13 addObserverForName:v51 object:0 queue:0 usingBlock:v49];
    _Block_release(v49);

    v53 = swift_beginAccess();
    MEMORY[0x24C1F1760](v53);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v76 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v54 = v0[65];
    sub_24910CD9C();
    swift_endAccess();
    v55 = *MEMORY[0x277D295B8];
    v56 = swift_allocObject();
    swift_weakInit();
    v0[36] = sub_2490CE04C;
    v0[37] = v56;
    v0[32] = MEMORY[0x277D85DD0];
    v0[33] = 1107296256;
    v0[34] = sub_2490C1B98;
    v0[35] = &block_descriptor_182;
    v57 = _Block_copy(v0 + 32);
    v58 = v0[37];
    v59 = v55;

    v60 = [v13 addObserverForName:v59 object:0 queue:0 usingBlock:v57];
    _Block_release(v57);

    v61 = swift_beginAccess();
    MEMORY[0x24C1F1760](v61);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v77 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v62 = v0[65];
    sub_24910CD9C();
    swift_endAccess();
    v63 = *MEMORY[0x277D295D8];
    v64 = swift_allocObject();
    swift_weakInit();
    v0[42] = sub_2490CE054;
    v0[43] = v64;
    v0[38] = MEMORY[0x277D85DD0];
    v0[39] = 1107296256;
    v0[40] = sub_2490C1B98;
    v0[41] = &block_descriptor_186;
    v65 = _Block_copy(v0 + 38);
    v66 = v0[43];
    v67 = v63;

    v68 = [v13 addObserverForName:v67 object:0 queue:0 usingBlock:v65];
    _Block_release(v65);

    v69 = swift_beginAccess();
    MEMORY[0x24C1F1760](v69);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v78 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v70 = swift_task_alloc();
    v0[70] = v70;
    *v70 = v0;
    v70[1] = sub_2490B7A44;
    v71 = v0[65];

    return sub_2490C5A78();
  }
}

uint64_t sub_2490B7A44()
{
  v1 = *v0;
  v2 = *(*v0 + 560);
  v6 = *v0;

  v3 = *(v1 + 536);
  v4 = *(v1 + 528);

  return MEMORY[0x2822009F8](sub_2490B7B64, v4, v3);
}

uint64_t sub_2490B7B64()
{
  v1 = *(v0 + 544);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2490B7BCC()
{
  v1[56] = v0;
  v2 = *v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v4 = sub_24910CDAC();
  v1[57] = v4;
  v1[58] = v3;

  return MEMORY[0x2822009F8](sub_2490B7CA0, v4, v3);
}

uint64_t sub_2490B7CA0()
{
  v1 = v0[56];
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager;
  if (*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_27EEDAE40 != -1)
    {
      swift_once();
    }

    v5 = sub_24910C89C();
    __swift_project_value_buffer(v5, qword_27EEDAE48);
    v6 = sub_24910C87C();
    v7 = sub_24910CF5C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_249083000, v6, v7, "Timer monitor start", v8, 2u);
      MEMORY[0x24C1F26F0](v8, -1, -1);
    }

    v9 = v0[56];

    v10 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    v0[59] = v10;
    v11 = *(v1 + v2);
    *(v1 + v2) = v10;
    v12 = v10;

    v13 = [objc_opt_self() defaultCenter];
    v0[60] = v13;
    v14 = *MEMORY[0x277D296A0];
    v15 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_2490CDAAC;
    v0[7] = v15;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2490C1B98;
    v0[5] = &block_descriptor_65;
    v16 = _Block_copy(v0 + 2);
    v17 = v0[7];
    v18 = v14;

    v19 = [v13 addObserverForName:v18 object:0 queue:0 usingBlock:v16];
    _Block_release(v16);

    v20 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerObservers;
    v21 = swift_beginAccess();
    MEMORY[0x24C1F1760](v21);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v64 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v22 = v0[56];
    sub_24910CD9C();
    swift_endAccess();
    v23 = *MEMORY[0x277D296C0];
    v24 = swift_allocObject();
    swift_weakInit();
    v0[12] = sub_2490CDAB4;
    v0[13] = v24;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_2490C1B98;
    v0[11] = &block_descriptor_69;
    v25 = _Block_copy(v0 + 8);
    v26 = v0[13];
    v27 = v23;

    v28 = [v13 addObserverForName:v27 object:0 queue:0 usingBlock:v25];
    _Block_release(v25);

    v29 = swift_beginAccess();
    MEMORY[0x24C1F1760](v29);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v65 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v30 = v0[56];
    sub_24910CD9C();
    swift_endAccess();
    v31 = *MEMORY[0x277D296B8];
    v32 = swift_allocObject();
    swift_weakInit();
    v0[18] = sub_2490CDABC;
    v0[19] = v32;
    v0[14] = MEMORY[0x277D85DD0];
    v0[15] = 1107296256;
    v0[16] = sub_2490C1B98;
    v0[17] = &block_descriptor_73;
    v33 = _Block_copy(v0 + 14);
    v34 = v0[19];
    v35 = v31;

    v36 = [v13 addObserverForName:v35 object:0 queue:0 usingBlock:v33];
    _Block_release(v33);

    v37 = swift_beginAccess();
    MEMORY[0x24C1F1760](v37);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v66 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v38 = v0[56];
    sub_24910CD9C();
    swift_endAccess();
    v39 = *MEMORY[0x277D29698];
    v40 = swift_allocObject();
    swift_weakInit();
    v0[24] = sub_2490CDAC4;
    v0[25] = v40;
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_2490C1B98;
    v0[23] = &block_descriptor_77;
    v41 = _Block_copy(v0 + 20);
    v42 = v0[25];
    v43 = v39;

    v44 = [v13 addObserverForName:v43 object:0 queue:0 usingBlock:v41];
    _Block_release(v41);

    v45 = swift_beginAccess();
    MEMORY[0x24C1F1760](v45);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v67 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v46 = v0[56];
    sub_24910CD9C();
    swift_endAccess();
    v47 = *MEMORY[0x277D29670];
    v48 = swift_allocObject();
    swift_weakInit();
    v0[30] = sub_2490CDACC;
    v0[31] = v48;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_2490C1B98;
    v0[29] = &block_descriptor_81;
    v49 = _Block_copy(v0 + 26);
    v50 = v0[31];
    v51 = v47;

    v52 = [v13 addObserverForName:v51 object:0 queue:0 usingBlock:v49];
    _Block_release(v49);

    v53 = swift_beginAccess();
    MEMORY[0x24C1F1760](v53);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v68 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    v54 = v0[56];
    sub_24910CD9C();
    swift_endAccess();
    v55 = *MEMORY[0x277D29690];
    v56 = swift_allocObject();
    swift_weakInit();
    v0[36] = sub_2490CDAD4;
    v0[37] = v56;
    v0[32] = MEMORY[0x277D85DD0];
    v0[33] = 1107296256;
    v0[34] = sub_2490C1B98;
    v0[35] = &block_descriptor_85;
    v57 = _Block_copy(v0 + 32);
    v58 = v0[37];
    v59 = v55;

    v60 = [v13 addObserverForName:v59 object:0 queue:0 usingBlock:v57];
    _Block_release(v57);

    v61 = swift_beginAccess();
    MEMORY[0x24C1F1760](v61);
    if (*((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v69 = *((*(v9 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24910CD7C();
    }

    sub_24910CD9C();
    swift_endAccess();
    v62 = swift_task_alloc();
    v0[61] = v62;
    *v62 = v0;
    v62[1] = sub_2490B8668;
    v63 = v0[56];

    return sub_2490CAF90();
  }
}

uint64_t sub_2490B8668()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v6 = *v0;

  v3 = *(v1 + 464);
  v4 = *(v1 + 456);

  return MEMORY[0x2822009F8](sub_2490B8788, v4, v3);
}

uint64_t sub_2490B8788()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t DTTimerDaemon.invalidate()()
{
  *(v1 + 16) = v0;
  v2 = *v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490B88C0, v4, v3);
}

uint64_t sub_2490B88C0()
{
  v1 = *(v0 + 16);
  sub_2490B8964(&OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager, "Alarm monitor stop", &OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms, &OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmObservers);
  sub_2490B8964(&OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager, "Timer monitor stop", &OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers, &OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerObservers);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t *sub_2490B8964(unint64_t *result, const char *a2, const char *a3, unint64_t a4)
{
  v5 = *result;
  if (*(v4 + *result))
  {
    v9 = v4;
    if (qword_27EEDAE40 != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v10 = sub_24910C89C();
      __swift_project_value_buffer(v10, qword_27EEDAE48);
      v11 = sub_24910C87C();
      v12 = sub_24910CF5C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_249083000, v11, v12, a2, v13, 2u);
        MEMORY[0x24C1F26F0](v13, -1, -1);
      }

      v14 = *(v9 + v5);
      *(v9 + v5) = 0;

      v15 = *a3;
      swift_beginAccess();
      v16 = *(v9 + v15);
      *(v9 + v15) = MEMORY[0x277D84F98];

      v17 = [objc_opt_self() defaultCenter];
      v18 = *a4;
      swift_beginAccess();
      v22 = v18;
      a4 = *(v9 + v18);
      if (a4 >> 62)
      {
        a3 = sub_24910D19C();
      }

      else
      {
        a3 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!a3)
      {
LABEL_17:

        v21 = *(v9 + v22);
        *(v9 + v22) = MEMORY[0x277D84F90];
      }

      a2 = 0;
      v5 = a4 & 0xC000000000000001;
      while (v5)
      {
        v19 = MEMORY[0x24C1F1C90](a2, a4);
        v20 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_12:
        [v17 removeObserver_];
        swift_unknownObjectRelease();
        ++a2;
        if (v20 == a3)
        {
          goto LABEL_17;
        }
      }

      if (a2 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_20:
      swift_once();
    }

    v19 = *(a4 + 8 * a2 + 32);
    swift_unknownObjectRetain();
    v20 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2490B8BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v9 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
  result = swift_beginAccess();
  v11 = *(a1 + v9);
  if (!v11)
  {
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](result);
  v15[2] = a2;
  v15[3] = a3;
  type metadata accessor for DTTransportDaemon(0);
  sub_2490CD42C(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);

  sub_24910CDAC();
  if (swift_task_isCurrentExecutor())
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2490CDC90;
    *(v12 + 24) = v15;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_2490CDCD4;
    *(v13 + 24) = v12;

    v16[0] = v11;
    sub_2490CDCFC(v16);
    if (!v4)
    {

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_5:
        *a4 = v11 == 0;
        return result;
      }

      __break(1u);
    }

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v16[6] = v11;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

uint64_t sub_2490B8E80(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  sub_2490CD42C(&unk_27EED7F50, type metadata accessor for DTDaemon);
  sub_24910CDAC();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_2490CDBCC;
    *(v9 + 24) = v8;

    v12[0] = v2;
    sub_2490CDC48(v12, &v13);

    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v9;
      }

      __break(1u);
    }

    v9 = v13;
    v4 = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      return v9;
    }

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v13 = v4;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

uint64_t DTTimerDaemon.handleRequest(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v6 = sub_24910C6EC();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v9 = sub_24910C86C();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v13 = sub_24910CDAC();
  v4[13] = v13;
  v4[14] = v12;

  return MEMORY[0x2822009F8](sub_2490B9284, v13, v12);
}

uint64_t sub_2490B9284()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D057D8])
  {
    v5 = v0[12];
    (*(v0[11] + 96))(v5, v0[10]);
    v6 = *v5;
    v0[15] = *v5;
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_2490B9A2C;
    v8 = v0[4];
    v9 = v0[5];

    return sub_2490BAE98(v6, v8);
  }

  if (v4 == *MEMORY[0x277D057A8])
  {
    v11 = v0[12];
    (*(v0[11] + 96))(v11, v0[10]);
    v12 = *v11;
    v0[18] = *v11;
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_2490B9C40;
    v14 = v0[4];
    v15 = v0[5];

    return sub_2490BB7E4(v12, v14);
  }

  if (v4 == *MEMORY[0x277D05798])
  {
    v16 = v0[12];
    (*(v0[11] + 96))(v16, v0[10]);
    v17 = *v16;
    v0[21] = *v16;
    v18 = swift_task_alloc();
    v0[22] = v18;
    *v18 = v0;
    v18[1] = sub_2490B9E54;
    v19 = v0[4];
    v20 = v0[5];

    return sub_2490BC3A0(v17, v19);
  }

  if (v4 == *MEMORY[0x277D057A0])
  {
    v21 = v0[12];
    (*(v0[11] + 96))(v21, v0[10]);
    v22 = *v21;
    v0[24] = *v21;
    v23 = swift_task_alloc();
    v0[25] = v23;
    *v23 = v0;
    v23[1] = sub_2490BA068;
    v24 = v0[4];
    v25 = v0[5];

    return sub_2490BCDEC(v22, v24);
  }

  if (v4 == *MEMORY[0x277D057B0])
  {
    v26 = v0[12];
    (*(v0[11] + 96))(v26, v0[10]);
    v27 = *v26;
    v0[27] = *v26;
    v28 = swift_task_alloc();
    v0[28] = v28;
    *v28 = v0;
    v28[1] = sub_2490BA27C;
    v29 = v0[4];
    v30 = v0[5];

    return sub_2490BD554(v27, v29);
  }

  if (v4 == *MEMORY[0x277D057D0])
  {
    goto LABEL_22;
  }

  if (v4 == *MEMORY[0x277D057C0])
  {
    v35 = v0[12];
    v36 = v0[9];
    v37 = v0[6];
    v38 = v0[7];
    v39 = v0[2];
    (*(v0[11] + 96))(v35, v0[10]);
    (*(v38 + 32))(v36, v35, v37);
    v39[3] = sub_24910C7AC();
    v39[4] = sub_2490CD42C(&qword_27EED7A70, MEMORY[0x277D05750]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    v41 = swift_task_alloc();
    v0[33] = v41;
    *v41 = v0;
    v41[1] = sub_2490BA690;
    v42 = v0[9];
    v43 = v0[4];
    v44 = v0[5];

    return DTTimerDaemon._monitorStart(requestContext:monitorContext:)(boxed_opaque_existential_1, v43, v42);
  }

  else if (v4 == *MEMORY[0x277D05790])
  {
    v45 = v0[12];
    v47 = v0[7];
    v46 = v0[8];
    v48 = v0[6];
    v49 = v0[2];
    (*(v0[11] + 96))(v45, v0[10]);
    (*(v47 + 32))(v46, v45, v48);
    v49[3] = sub_24910C63C();
    v49[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0]);
    v50 = __swift_allocate_boxed_opaque_existential_1(v49);
    v51 = swift_task_alloc();
    v0[35] = v51;
    *v51 = v0;
    v51[1] = sub_2490BA85C;
    v52 = v0[8];
    v53 = v0[4];
    v54 = v0[5];

    return DTTimerDaemon._monitorStop(requestContext:monitorContext:)(v50, v53, v52);
  }

  else
  {
    if (v4 == *MEMORY[0x277D057B8] || v4 == *MEMORY[0x277D05780])
    {
LABEL_22:
      (*(v0[11] + 8))(v0[12], v0[10]);
LABEL_23:
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
      v31 = v0[12];
      v33 = v0[8];
      v32 = v0[9];

      v34 = v0[1];

      return v34();
    }

    if (v4 == *MEMORY[0x277D05788])
    {
      goto LABEL_23;
    }

    if (v4 != *MEMORY[0x277D05778])
    {
      if (v4 == *MEMORY[0x277D057C8])
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v55 = swift_task_alloc();
    v0[30] = v55;
    *v55 = v0;
    v55[1] = sub_2490BA490;
    v56 = v0[4];
    v57 = v0[5];

    return DTTimerDaemon._fetchTimers(context:)(v56);
  }
}

uint64_t sub_2490B9A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_2490BAA28;
  }

  else
  {
    v7 = sub_2490B9B68;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490B9B68()
{
  v1 = v0[15];
  v2 = v0[2];
  v2[3] = sub_24910C63C();
  v2[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C62C();

  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2490B9C40()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_2490BAAB0;
  }

  else
  {
    v7 = sub_2490B9D7C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490B9D7C()
{
  v1 = v0[18];
  v2 = v0[2];
  v2[3] = sub_24910C63C();
  v2[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C62C();

  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2490B9E54()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_2490BAB38;
  }

  else
  {
    v7 = sub_2490B9F90;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490B9F90()
{
  v1 = v0[21];
  v2 = v0[2];
  v2[3] = sub_24910C63C();
  v2[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C62C();

  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2490BA068()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_2490BABC0;
  }

  else
  {
    v7 = sub_2490BA1A4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490BA1A4()
{
  v1 = v0[24];
  v2 = v0[2];
  v2[3] = sub_24910C63C();
  v2[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C62C();

  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2490BA27C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_2490BAC48;
  }

  else
  {
    v7 = sub_2490BA3B8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490BA3B8()
{
  v1 = v0[27];
  v2 = v0[2];
  v2[3] = sub_24910C63C();
  v2[4] = sub_2490CD42C(&qword_27EED7A68, MEMORY[0x277D056A0]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C62C();

  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2490BA490(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = v4[13];
    v8 = v4[14];
    v9 = sub_2490BACD0;
  }

  else
  {
    v4[32] = a1;
    v7 = v4[13];
    v8 = v4[14];
    v9 = sub_2490BA5B8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2490BA5B8()
{
  v1 = v0[32];
  v2 = v0[2];
  v2[3] = sub_24910C4CC();
  v2[4] = sub_2490CD42C(&qword_27EED7A78, MEMORY[0x277D05650]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24910C4BC();
  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2490BA690()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_2490BAD50;
  }

  else
  {
    v7 = sub_2490BA7CC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490BA7CC()
{
  (*(v0[7] + 8))(v0[9], v0[6]);
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490BA85C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_2490BADF4;
  }

  else
  {
    v7 = sub_2490BA998;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490BA998()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490BAA28()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2490BAAB0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2490BAB38()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2490BABC0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2490BAC48()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2490BACD0()
{
  v1 = v0[31];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2490BAD50()
{
  v1 = v0[2];
  (*(v0[7] + 8))(v0[9], v0[6]);
  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = v0[34];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2490BADF4()
{
  v1 = v0[2];
  (*(v0[7] + 8))(v0[8], v0[6]);
  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = v0[36];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2490BAE98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v5 = sub_24910C73C();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = sub_24910C4FC();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v12 = sub_24910CDAC();
  v3[11] = v12;
  v3[12] = v11;

  return MEMORY[0x2822009F8](sub_2490BB028, v12, v11);
}

uint64_t sub_2490BB028()
{
  v47 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  sub_24910C6FC();
  sub_24910C4EC();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = sub_24910D05C();
  }

  else
  {
    v7 = *(v0 + 16);
  }

  *(v0 + 104) = v7;
  v8 = qword_27EEDAE40;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 40);
  v13 = *(v0 + 24);
  v14 = sub_24910C89C();
  __swift_project_value_buffer(v14, qword_27EEDAE48);
  (*(v11 + 16))(v10, v13, v12);
  v15 = v9;
  v16 = sub_24910C87C();
  v17 = sub_24910CF5C();

  v18 = os_log_type_enabled(v16, v17);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 40);
  if (v18)
  {
    v22 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v22 = 138412546;
    *(v22 + 4) = v15;
    *v44 = v15;
    *(v22 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0]);
    v23 = v15;
    v24 = sub_24910D50C();
    v26 = v25;
    (*(v20 + 8))(v19, v21);
    v27 = sub_24909F930(v24, v26, &v46);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_249083000, v16, v17, "addTimer: %@, %s", v22, 0x16u);
    sub_2490A487C(v44, &qword_27EED7688, &qword_249110020);
    MEMORY[0x24C1F26F0](v44, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x24C1F26F0](v45, -1, -1);
    MEMORY[0x24C1F26F0](v22, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
  }

  v28 = [v15 mtAlarm];
  *(v0 + 112) = v28;

  if (v28)
  {
    v29 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    *(v0 + 120) = v29;
    v30 = [v29 addAlarm_];
    *(v0 + 128) = v30;
    v31 = v29;
    v32 = swift_task_alloc();
    *(v0 + 136) = v32;
    *v32 = v0;
    v32[1] = sub_2490BB554;
    v33 = *(v0 + 32);
    v34 = 0x6D72616C41646461;
LABEL_13:

    return sub_2490BF474(v30, v31, v34, 0xE800000000000000);
  }

  v35 = [v15 mtTimer];
  *(v0 + 152) = v35;
  if (v35)
  {
    v36 = v35;
    v37 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    *(v0 + 160) = v37;
    v30 = [v37 addTimer_];
    *(v0 + 168) = v30;
    v31 = v37;
    v38 = swift_task_alloc();
    *(v0 + 176) = v38;
    *v38 = v0;
    v38[1] = sub_2490BB69C;
    v39 = *(v0 + 32);
    v34 = 0x72656D6954646461;
    goto LABEL_13;
  }

  sub_24910C7DC();
  sub_24910C7EC();
  swift_willThrow();

  v41 = *(v0 + 80);
  v42 = *(v0 + 56);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2490BB554(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 120);
  v7 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v8 = *(v4 + 88);
    v9 = *(v4 + 96);
    v10 = sub_2490CE5C0;
  }

  else
  {

    v8 = *(v4 + 88);
    v9 = *(v4 + 96);
    v10 = sub_2490CE544;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2490BB69C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 160);
  v7 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v8 = *(v4 + 88);
    v9 = *(v4 + 96);
    v10 = sub_2490CE5C4;
  }

  else
  {

    v8 = *(v4 + 88);
    v9 = *(v4 + 96);
    v10 = sub_2490CE548;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2490BB7E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v5 = sub_24910C73C();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = sub_24910C4FC();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v12 = sub_24910CDAC();
  v3[11] = v12;
  v3[12] = v11;

  return MEMORY[0x2822009F8](sub_2490BB974, v12, v11);
}

uint64_t sub_2490BB974()
{
  v49 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  sub_24910C6FC();
  sub_24910C4EC();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = sub_24910D05C();
  }

  else
  {
    v7 = *(v0 + 16);
  }

  *(v0 + 104) = v7;
  v8 = qword_27EEDAE40;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 40);
  v13 = *(v0 + 24);
  v14 = sub_24910C89C();
  __swift_project_value_buffer(v14, qword_27EEDAE48);
  (*(v11 + 16))(v10, v13, v12);
  v15 = v9;
  v16 = sub_24910C87C();
  v17 = sub_24910CF5C();

  v18 = os_log_type_enabled(v16, v17);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 40);
  if (v18)
  {
    v22 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v22 = 138412546;
    *(v22 + 4) = v15;
    *v46 = v15;
    *(v22 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0]);
    v23 = v15;
    v24 = sub_24910D50C();
    v26 = v25;
    (*(v20 + 8))(v19, v21);
    v27 = sub_24909F930(v24, v26, &v48);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_249083000, v16, v17, "updateTimer: %@, %s", v22, 0x16u);
    sub_2490A487C(v46, &qword_27EED7688, &qword_249110020);
    MEMORY[0x24C1F26F0](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x24C1F26F0](v47, -1, -1);
    MEMORY[0x24C1F26F0](v22, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
  }

  v28 = [v15 mtAlarm];
  *(v0 + 112) = v28;

  if (v28)
  {
    v29 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    *(v0 + 120) = v29;
    v30 = [v29 updateAlarm_];
    *(v0 + 128) = v30;
    v31 = v29;
    v32 = swift_task_alloc();
    *(v0 + 136) = v32;
    *v32 = v0;
    v32[1] = sub_2490BBEB0;
    v33 = *(v0 + 32);
    v34 = 0x6C41657461647075;
    v35 = 7172705;
LABEL_13:
    v41 = v35 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;

    return sub_2490BF474(v30, v31, v34, v41);
  }

  v36 = [v15 mtTimer];
  *(v0 + 152) = v36;
  if (v36)
  {
    v37 = v36;
    v38 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    *(v0 + 160) = v38;
    v30 = [v38 updateTimer_];
    *(v0 + 168) = v30;
    v31 = v38;
    v39 = swift_task_alloc();
    *(v0 + 176) = v39;
    *v39 = v0;
    v39[1] = sub_2490BC094;
    v40 = *(v0 + 32);
    v34 = 0x6954657461647075;
    v35 = 7497069;
    goto LABEL_13;
  }

  sub_24910C7DC();
  sub_24910C7EC();
  swift_willThrow();

  v43 = *(v0 + 80);
  v44 = *(v0 + 56);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_2490BBEB0(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 120);
  v7 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v8 = *(v4 + 88);
    v9 = *(v4 + 96);
    v10 = sub_2490BC27C;
  }

  else
  {

    v8 = *(v4 + 88);
    v9 = *(v4 + 96);
    v10 = sub_2490BBFF8;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2490BBFF8()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2490BC094(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 160);
  v7 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v8 = *(v4 + 88);
    v9 = *(v4 + 96);
    v10 = sub_2490BC30C;
  }

  else
  {

    v8 = *(v4 + 88);
    v9 = *(v4 + 96);
    v10 = sub_2490BC1DC;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2490BC1DC()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2490BC27C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  v4 = *(v0 + 144);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2490BC30C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 104);

  v4 = *(v0 + 184);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2490BC3A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v5 = sub_24910C73C();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v9 = sub_24910CDAC();
  v3[8] = v9;
  v3[9] = v8;

  return MEMORY[0x2822009F8](sub_2490BC4D4, v9, v8);
}

uint64_t sub_2490BC4D4()
{
  v42 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_24910C89C();
  __swift_project_value_buffer(v6, qword_27EEDAE48);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_24910C87C();
  v9 = sub_24910CF5C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  v13 = *(v0 + 40);
  if (v10)
  {
    v14 = *(v0 + 16);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0]);
    v17 = v14;
    v18 = sub_24910D50C();
    v20 = v19;
    (*(v12 + 8))(v11, v13);
    v21 = sub_24909F930(v18, v20, &v41);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_249083000, v8, v9, "removeTimer: %@, %s", v15, 0x16u);
    sub_2490A487C(v16, &qword_27EED7688, &qword_249110020);
    MEMORY[0x24C1F26F0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C1F26F0](v40, -1, -1);
    MEMORY[0x24C1F26F0](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = [*(v0 + 16) mtAlarm];
  *(v0 + 80) = v22;
  if (v22)
  {
    v23 = v22;
    v24 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    *(v0 + 88) = v24;
    v25 = [v24 removeAlarm_];
    *(v0 + 96) = v25;
    v26 = v24;
    v27 = swift_task_alloc();
    *(v0 + 104) = v27;
    *v27 = v0;
    v27[1] = sub_2490BC984;
    v28 = *(v0 + 32);
    v29 = 0x6C4165766F6D6572;
    v30 = 7172705;
LABEL_10:
    v36 = v30 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;

    return sub_2490BF474(v25, v26, v29, v36);
  }

  v31 = [*(v0 + 16) mtTimer];
  *(v0 + 120) = v31;
  if (v31)
  {
    v32 = v31;
    v33 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    *(v0 + 128) = v33;
    v25 = [v33 removeTimer_];
    *(v0 + 136) = v25;
    v26 = v33;
    v34 = swift_task_alloc();
    *(v0 + 144) = v34;
    *v34 = v0;
    v34[1] = sub_2490BCB34;
    v35 = *(v0 + 32);
    v29 = 0x695465766F6D6572;
    v30 = 7497069;
    goto LABEL_10;
  }

  sub_24910C7DC();
  sub_24910C7EC();
  swift_willThrow();
  v38 = *(v0 + 56);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2490BC984(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v11 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_2490BCCE4;
  }

  else
  {
    v9 = v4[11];

    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_2490BCAB0;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2490BCAB0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2490BCB34(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v11 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_2490BCD68;
  }

  else
  {
    v9 = v4[16];

    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_2490BCC60;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2490BCC60()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2490BCCE4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[14];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2490BCD68()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  v4 = v0[19];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2490BCDEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v5 = sub_24910C73C();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v9 = sub_24910CDAC();
  v3[8] = v9;
  v3[9] = v8;

  return MEMORY[0x2822009F8](sub_2490BCF20, v9, v8);
}

uint64_t sub_2490BCF20()
{
  v35 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_24910C89C();
  __swift_project_value_buffer(v6, qword_27EEDAE48);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_24910C87C();
  v9 = sub_24910CF5C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  v13 = *(v0 + 40);
  if (v10)
  {
    v14 = *(v0 + 16);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0]);
    v17 = v14;
    v18 = sub_24910D50C();
    v20 = v19;
    (*(v12 + 8))(v11, v13);
    v21 = sub_24909F930(v18, v20, &v34);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_249083000, v8, v9, "snoozeTimer: %@, %s", v15, 0x16u);
    sub_2490A487C(v16, &qword_27EED7688, &qword_249110020);
    MEMORY[0x24C1F26F0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x24C1F26F0](v33, -1, -1);
    MEMORY[0x24C1F26F0](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = [*(v0 + 16) mtAlarmID];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    *(v0 + 80) = v24;
    v25 = [v24 snoozeAlarmWithIdentifier_];
    *(v0 + 88) = v25;

    v26 = v24;
    v27 = swift_task_alloc();
    *(v0 + 96) = v27;
    *v27 = v0;
    v27[1] = sub_2490BD340;
    v28 = *(v0 + 32);

    return sub_2490BF474(v25, v26, 0x6C41657A6F6F6E73, 0xEB000000006D7261);
  }

  else
  {
    v30 = [*(v0 + 16) mtTimer];
    if (v30)
    {
    }

    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v31 = *(v0 + 56);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_2490BD340(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v11 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_2490BD4E0;
  }

  else
  {
    v9 = v4[10];

    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_2490BD46C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2490BD46C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2490BD4E0()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[13];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2490BD554(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v5 = sub_24910C73C();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v9 = sub_24910CDAC();
  v3[8] = v9;
  v3[9] = v8;

  return MEMORY[0x2822009F8](sub_2490BD688, v9, v8);
}

uint64_t sub_2490BD688()
{
  v42 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_24910C89C();
  __swift_project_value_buffer(v6, qword_27EEDAE48);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_24910C87C();
  v9 = sub_24910CF5C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  v13 = *(v0 + 40);
  if (v10)
  {
    v14 = *(v0 + 16);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0]);
    v17 = v14;
    v18 = sub_24910D50C();
    v20 = v19;
    (*(v12 + 8))(v11, v13);
    v21 = sub_24909F930(v18, v20, &v41);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_249083000, v8, v9, "dismissTimer: %@, %s", v15, 0x16u);
    sub_2490A487C(v16, &qword_27EED7688, &qword_249110020);
    MEMORY[0x24C1F26F0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C1F26F0](v40, -1, -1);
    MEMORY[0x24C1F26F0](v15, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = [*(v0 + 16) mtAlarmID];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    *(v0 + 80) = v24;
    v25 = [v24 dismissAlarmWithIdentifier_];
    *(v0 + 88) = v25;

    v26 = v24;
    v27 = swift_task_alloc();
    *(v0 + 96) = v27;
    *v27 = v0;
    v27[1] = sub_2490BDB38;
    v28 = *(v0 + 32);
    v29 = 0x417373696D736964;
    v30 = 1836212588;
LABEL_10:
    v36 = v30 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;

    return sub_2490BF474(v25, v26, v29, v36);
  }

  v31 = [*(v0 + 16) mtTimerID];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    *(v0 + 112) = v33;
    v25 = [v33 dismissTimerWithIdentifier_];
    *(v0 + 120) = v25;

    v26 = v33;
    v34 = swift_task_alloc();
    *(v0 + 128) = v34;
    *v34 = v0;
    v34[1] = sub_2490BDC64;
    v35 = *(v0 + 32);
    v29 = 0x547373696D736964;
    v30 = 1919249769;
    goto LABEL_10;
  }

  sub_24910C7DC();
  sub_24910C7EC();
  swift_willThrow();
  v38 = *(v0 + 56);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2490BDB38(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v11 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_2490CE54C;
  }

  else
  {
    v9 = v4[10];

    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_2490CE5CC;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2490BDC64(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v11 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_2490BDE04;
  }

  else
  {
    v9 = v4[14];

    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_2490BDD90;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2490BDD90()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2490BDE04()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[17];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t DTTimerDaemon._fetchTimers(context:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = sub_24910C4FC();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = sub_24910C73C();
  v2[7] = v7;
  v8 = *(v7 - 8);
  v2[8] = v8;
  v9 = *(v8 + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v11 = sub_24910CDAC();
  v2[10] = v11;
  v2[11] = v10;

  return MEMORY[0x2822009F8](sub_2490BE004, v11, v10);
}

uint64_t sub_2490BE004()
{
  v30 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_24910C89C();
  __swift_project_value_buffer(v5, qword_27EEDAE48);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_24910C87C();
  v7 = sub_24910CF5C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0]);
    v14 = sub_24910D50C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_24909F930(v14, v16, &v29);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_249083000, v6, v7, "fetchTimers: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1F26F0](v13, -1, -1);
    MEMORY[0x24C1F26F0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[5];
  v18 = v0[6];
  v20 = v0[4];
  v21 = v0[2];
  sub_24910C6FC();
  v22 = sub_24910C4EC();
  v24 = v23;
  v0[12] = v23;
  (*(v19 + 8))(v18, v20);
  v25 = swift_task_alloc();
  v0[13] = v25;
  v25[2] = v22;
  v25[3] = v24;
  v25[4] = v21;
  v26 = swift_task_alloc();
  v0[14] = v26;
  *v26 = v0;
  v26[1] = sub_2490BE2E4;
  v27 = v0[3];

  return DTTimerDaemon._fetchTimers(matching:)(sub_2490CD4C4, v25);
}

uint64_t sub_2490BE2E4(uint64_t a1)
{
  v4 = *(*v2 + 112);
  v5 = *v2;
  v5[15] = v1;

  if (v1)
  {
    v6 = v5[10];
    v7 = v5[11];

    return MEMORY[0x2822009F8](sub_2490BE454, v6, v7);
  }

  else
  {
    v8 = v5[12];
    v9 = v5[13];
    v10 = v5[9];
    v11 = v5[6];

    v12 = v5[1];

    return v12(a1);
  }
}

uint64_t sub_2490BE454()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t DTTimerDaemon._monitorStart(requestContext:monitorContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v6 = sub_24910C6EC();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = sub_24910C73C();
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v13 = sub_24910CDAC();
  v4[12] = v13;
  v4[13] = v12;

  return MEMORY[0x2822009F8](sub_2490BE670, v13, v12);
}

uint64_t sub_2490BE670()
{
  v36 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[3];
  v7 = v0[4];
  v9 = sub_24910C89C();
  __swift_project_value_buffer(v9, qword_27EEDAE48);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = sub_24910C87C();
  v11 = sub_24910CF5C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[9];
  v18 = v0[6];
  v17 = v0[7];
  if (v12)
  {
    log = v10;
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v19 = 136315394;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0]);
    v20 = sub_24910D50C();
    v32 = v11;
    v22 = v21;
    (*(v13 + 8))(v14, v16);
    v23 = sub_24909F930(v20, v22, &v35);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7A80, MEMORY[0x277D056E0]);
    v24 = sub_24910D50C();
    v26 = v25;
    (*(v17 + 8))(v15, v18);
    v27 = sub_24909F930(v24, v26, &v35);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_249083000, log, v32, "monitorStart: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v34, -1, -1);
    MEMORY[0x24C1F26F0](v19, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v15, v18);
    (*(v13 + 8))(v14, v16);
  }

  v28 = swift_task_alloc();
  v0[14] = v28;
  *v28 = v0;
  v28[1] = sub_2490BE9CC;
  v29 = v0[5];
  v30 = v0[3];

  return DTTimerDaemon._fetchTimers(context:)(v30);
}

uint64_t sub_2490BE9CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[11];
    v8 = v4[8];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v4[15] = a1;
    v11 = v4[12];
    v12 = v4[13];

    return MEMORY[0x2822009F8](sub_2490BEB28, v11, v12);
  }
}

uint64_t sub_2490BEB28()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[2];
  sub_24910C4BC();

  v5 = v0[1];

  return v5();
}

uint64_t DTTimerDaemon._monitorStop(requestContext:monitorContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v6 = sub_24910C6EC();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_24910C73C();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v13 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490BED38, v13, v12);
}

uint64_t sub_2490BED38()
{
  v37 = v0;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = sub_24910C89C();
  __swift_project_value_buffer(v9, qword_27EEDAE48);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = sub_24910C87C();
  v11 = sub_24910CF5C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[7];
  v16 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  if (v12)
  {
    log = v10;
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v19 = 136315394;
    sub_2490CD42C(&qword_27EED7F60, MEMORY[0x277D056F0]);
    v20 = sub_24910D50C();
    v33 = v11;
    v22 = v21;
    (*(v13 + 8))(v14, v16);
    v23 = sub_24909F930(v20, v22, &v36);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_2490CD42C(&qword_27EED7A80, MEMORY[0x277D056E0]);
    v24 = sub_24910D50C();
    v26 = v25;
    (*(v17 + 8))(v15, v18);
    v27 = sub_24909F930(v24, v26, &v36);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_249083000, log, v33, "monitorStop: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v35, -1, -1);
    MEMORY[0x24C1F26F0](v19, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v15, v18);
    (*(v13 + 8))(v14, v16);
  }

  v28 = v0[10];
  v29 = v0[7];
  v30 = v0[2];
  sub_24910C62C();

  v31 = v0[1];

  return v31();
}

uint64_t sub_2490BF078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *v4;
  v5[8] = sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v8 = sub_24910CDAC();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_2490BF158, v8, v7);
}

uint64_t sub_2490BF158()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    v14 = *(v0 + 32);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *(v5 + 16) = v1;
    *(v5 + 24) = v14;
    *(v5 + 40) = v4;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = v1;
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    v9 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
    *v8 = v0;
    v8[1] = sub_2490BF358;

    return MEMORY[0x2822008A0](v0 + 16, v2, v3, 0xD000000000000019, 0x80000002491113D0, sub_2490CD628, v5, v9);
  }

  else
  {
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_24910C7DC();
    sub_24910D25C();

    MEMORY[0x24C1F1710](v11, v10);
    sub_24910C7EC();
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_2490BF358()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2490CE5BC;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2490CE5D0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2490BF474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *v4;
  v5[8] = sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v8 = sub_24910CDAC();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_2490BF554, v8, v7);
}

uint64_t sub_2490BF554()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    v14 = *(v0 + 32);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *(v5 + 16) = v1;
    *(v5 + 24) = v14;
    *(v5 + 40) = v4;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = v1;
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    v9 = sub_2490A4744(0, &qword_27EED7AA8, 0x277CBEB68);
    *v8 = v0;
    v8[1] = sub_2490BF754;

    return MEMORY[0x2822008A0](v0 + 16, v2, v3, 0xD000000000000019, 0x80000002491113D0, sub_2490CD6F4, v5, v9);
  }

  else
  {
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_24910C7DC();
    sub_24910D25C();

    MEMORY[0x24C1F1710](v11, v10);
    sub_24910C7EC();
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_2490BF754()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2490BF8D8;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2490BF870;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2490BF870()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2490BF8D8()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t DTTimerDaemon._fetchTimers(matching:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v6 = sub_24910CDAC();
  v3[5] = v6;
  v3[6] = v5;

  return MEMORY[0x2822009F8](sub_2490BFA20, v6, v5);
}

uint64_t sub_2490BFA20()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
  v0[7] = v1;
  v2 = [v1 alarms];
  v0[8] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2490BFB24;
  v5 = v0[4];

  return sub_2490BF078(v2, v3, 0x616C416863746566, 0xEB00000000736D72);
}

uint64_t sub_2490BFB24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = *(v4 + 40);
    v8 = *(v4 + 48);
    v9 = sub_2490C06AC;
  }

  else
  {

    *(v4 + 88) = a1;
    v7 = *(v4 + 40);
    v8 = *(v4 + 48);
    v9 = sub_2490BFC54;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2490BFC54()
{
  v1 = v0[11];
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v0[12] = 0;
  v2 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  v0[13] = v2;
  v3 = [v2 timers];
  v0[14] = v3;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2490BFD9C;
  v6 = v0[4];

  return sub_2490BF078(v3, v4, 0x6D69546863746566, 0xEB00000000737265);
}

uint64_t sub_2490BFD9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = *(v4 + 40);
    v8 = *(v4 + 48);
    v9 = sub_2490C0718;
  }

  else
  {

    *(v4 + 136) = a1;
    v7 = *(v4 + 40);
    v8 = *(v4 + 48);
    v9 = sub_2490BFECC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2490BFECC()
{
  v36 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v35 = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v3 = MEMORY[0x277D84F90];
  v33 = v0;
  v34 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *(v0 + 96);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v14 = *(v0 + 96);
      }

      v5 = sub_24910D19C();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v35 = v3;
        result = sub_24910D2CC();
        if (v5 < 0)
        {
          __break(1u);
          __break(1u);
          return result;
        }

        v7 = 0;
        v8 = *(v0 + 96) & 0xC000000000000001;
        do
        {
          if (v8)
          {
            v9 = MEMORY[0x24C1F1C90](v7, v4);
          }

          else
          {
            v9 = *(v4 + 8 * v7 + 32);
          }

          v10 = v9;
          ++v7;
          [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

          sub_24910D2AC();
          v11 = *(v35 + 16);
          sub_24910D2DC();
          sub_24910D2EC();
          sub_24910D2BC();
        }

        while (v5 != v7);

        v12 = v35;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    v12 = MEMORY[0x277D84F90];
LABEL_17:
    v35 = v3;
    if (v12 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24910D19C())
    {
      v16 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x24C1F1C90](v16, v12);
        }

        else
        {
          if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v17 = *(v12 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v20 = *(v0 + 24);
        if ((*(v0 + 16))(v17))
        {
          sub_24910D2AC();
          v21 = *(v35 + 16);
          sub_24910D2DC();
          sub_24910D2EC();
          sub_24910D2BC();
        }

        else
        {
        }

        ++v16;
        if (v19 == i)
        {
          v22 = v35;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_34:

    if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
    {
      goto LABEL_49;
    }

    v23 = *(v22 + 16);
    if (v23)
    {
LABEL_37:
      v24 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x24C1F1C90](v24, v22);
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_48;
          }

          v25 = *(v22 + 8 * v24 + 32);
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            v23 = sub_24910D19C();
            if (!v23)
            {
              break;
            }

            goto LABEL_37;
          }
        }

        v27 = v25;
        MEMORY[0x24C1F1760]();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24910CD7C();
          v0 = v33;
        }

        sub_24910CD9C();
        v13 = v34;

        ++v24;
        if (v26 == v23)
        {
          goto LABEL_51;
        }
      }
    }

    v13 = MEMORY[0x277D84F90];
LABEL_51:

    goto LABEL_52;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_52:
  v29 = *(v0 + 104);
  v30 = *(v0 + 112);
  v31 = *(v0 + 64);

  v32 = *(v0 + 8);

  return v32(v13);
}

uint64_t sub_2490C06AC()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[10];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2490C0718()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[16];
  v7 = v0[1];

  return v7();
}

uint64_t sub_2490C07AC()
{
  v0 = type metadata accessor for DTTransportDaemon(0);
  static DTTransportDaemon.alternateAccessoryIDs.getter(v0);
  v1 = sub_24910D03C();

  if (v1)
  {
    return 1;
  }

  v3 = sub_24910C71C();
  if (v3)
  {
    v4 = v3;
    v5 = sub_24910D04C();
    if (v6)
    {
      v9[0] = v5;
      v9[1] = v6;
      MEMORY[0x28223BE20](v5);
      v8[2] = v9;
      v7 = sub_2490CCC78(sub_2490CD69C, v8, v4);

      if (v7)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_2490C08D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v28 = a2;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7AA0, &qword_249110008);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v24 = *(v8 + 16);
  v24(v22 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v23 = *(v8 + 32);
  v23(v14 + v12, v11, v7);
  *(v14 + v13) = a3;
  v33 = sub_2490CD648;
  v34 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v22[1] = &v31;
  v31 = sub_2490C0EE8;
  v32 = &block_descriptor_0;
  v15 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v16 = [v28 addSuccessBlock_];
  _Block_release(v15);

  v24(v11, v25, v7);
  v17 = swift_allocObject();
  v23(v17 + v12, v11, v7);
  v18 = (v17 + v13);
  v19 = v27;
  *v18 = v26;
  v18[1] = v19;
  *(v17 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v33 = sub_2490CD688;
  v34 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2490C0F48;
  v32 = &block_descriptor_31;
  v20 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v21 = [v28 addFailureBlock_];
  _Block_release(v20);
}

void sub_2490C0BDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v28 = a2;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7AB0, &qword_249110028);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v24 = *(v8 + 16);
  v24(v22 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v23 = *(v8 + 32);
  v23(v14 + v12, v11, v7);
  *(v14 + v13) = a3;
  v33 = sub_2490CD7AC;
  v34 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v22[1] = &v31;
  v31 = sub_2490C0EE8;
  v32 = &block_descriptor_42;
  v15 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v16 = [v28 addSuccessBlock_];
  _Block_release(v15);

  v24(v11, v25, v7);
  v17 = swift_allocObject();
  v23(v17 + v12, v11, v7);
  v18 = (v17 + v13);
  v19 = v27;
  *v18 = v26;
  v18[1] = v19;
  *(v17 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v33 = sub_2490CD920;
  v34 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2490C0F48;
  v32 = &block_descriptor_48;
  v20 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v21 = [v28 addFailureBlock_];
  _Block_release(v20);
}

uint64_t sub_2490C0EE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_2490C0F48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2490C0FB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D295A0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491101C8;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C1390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C144C, v5, v4);
}

uint64_t sub_2490C144C()
{
  v1 = v0[2];
  sub_2490C14AC(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2490C14AC(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v60 = a1;
  v57 = a1 >> 62;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v12)
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v12)
    {
      v27 = sub_24910D19C();
      if (!v27)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v7 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v59)
        {
          v31 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v31 = *(a1 + 8 * v3 + 32);
        }

        v32 = v31;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v61 = (v3 + 1);
        v33 = [v31 alarmIDString];
        v34 = sub_24910CC9C();
        a1 = v35;

        v36 = v62;
        swift_beginAccess();
        v10 = v32;
        v37 = *(v36 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v36 + v7);
        v38 = v63;
        v12 = v7;
        *(v36 + v7) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v34, a1);
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_39;
        }

        v7 = v39;
        if (v38[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v39)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
            if (v7)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v42, isUniquelyReferenced_nonNull_native, &qword_27EED7AE8, &qword_249110110);
          v43 = sub_2490A0A3C(v34, a1);
          if ((v7 & 1) != (v44 & 1))
          {
            goto LABEL_60;
          }

          v4 = v43;
          if (v7)
          {
LABEL_19:

            v28 = v63;
            v29 = v63[7];
            v30 = *(v29 + 8 * v4);
            *(v29 + 8 * v4) = v10;

            goto LABEL_20;
          }
        }

        v28 = v63;
        v63[(v4 >> 6) + 8] |= 1 << v4;
        v45 = (v28[6] + 16 * v4);
        *v45 = v34;
        v45[1] = a1;
        *(v28[7] + 8 * v4) = v10;
        v46 = v28[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_40;
        }

        v28[2] = v48;
LABEL_20:
        v7 = v12;
        *(v62 + v12) = v28;
        swift_endAccess();

        ++v3;
        a1 = v60;
        if (v61 == v27)
        {
          goto LABEL_43;
        }
      }
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v57)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_54;
    }

    v64 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v13 = sub_24910D19C();
LABEL_5:
    v14 = MEMORY[0x277D84F90];
    v61 = isUniquelyReferenced_nonNull_native;
    if (v13)
    {
      v63 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v56 = v10;
      v58 = v9;
      v15 = 0;
      v14 = v63;
      v16 = a1 & 0xC000000000000001;
      do
      {
        if (v16)
        {
          v17 = MEMORY[0x24C1F1C90](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 alarmID];
        sub_24910C2CC();

        v63 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_2490CC8F8(v20 > 1, v21 + 1, 1);
          v14 = v63;
        }

        ++v15;
        v14[2] = v21 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v3);
        a1 = v60;
      }

      while (v13 != v15);
      v12 = v57;
      v9 = v58;
      LODWORD(v10) = v56;
    }

    v22 = MEMORY[0x24C1F1790](v14, v3);
    v24 = v23;

    v25 = sub_24909F930(v22, v24, &v64);

    isUniquelyReferenced_nonNull_native = v61;
    *(v61 + 4) = v25;
    _os_log_impl(&dword_249083000, v9, v10, "AlarmsAdded: alarmIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v26 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1F26F0](v26, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v49 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x24C1F1C90](v49, a1);
    }

    else
    {
      v50 = *(a1 + 8 * v49 + 32);
    }

    v51 = v50;
    ++v49;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    v52 = v64[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v49);
  v3 = v64;
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v55[-16] = 5;
    *&v55[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v55[-32]);
  }
}

uint64_t sub_2490C1B98(uint64_t a1)
{
  v2 = sub_24910C00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_24910BFEC();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2490C1C8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D295A0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491101B0;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C2128, v5, v4);
}

uint64_t sub_2490C2128()
{
  v1 = v0[2];
  sub_2490C2188(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2490C2188(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v60 = a1;
  v57 = a1 >> 62;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v12)
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v12)
    {
      v27 = sub_24910D19C();
      if (!v27)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v7 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v59)
        {
          v31 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v31 = *(a1 + 8 * v3 + 32);
        }

        v32 = v31;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v61 = (v3 + 1);
        v33 = [v31 alarmIDString];
        v34 = sub_24910CC9C();
        a1 = v35;

        v36 = v62;
        swift_beginAccess();
        v10 = v32;
        v37 = *(v36 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v36 + v7);
        v38 = v63;
        v12 = v7;
        *(v36 + v7) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v34, a1);
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_39;
        }

        v7 = v39;
        if (v38[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v39)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
            if (v7)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v42, isUniquelyReferenced_nonNull_native, &qword_27EED7AE8, &qword_249110110);
          v43 = sub_2490A0A3C(v34, a1);
          if ((v7 & 1) != (v44 & 1))
          {
            goto LABEL_60;
          }

          v4 = v43;
          if (v7)
          {
LABEL_19:

            v28 = v63;
            v29 = v63[7];
            v30 = *(v29 + 8 * v4);
            *(v29 + 8 * v4) = v10;

            goto LABEL_20;
          }
        }

        v28 = v63;
        v63[(v4 >> 6) + 8] |= 1 << v4;
        v45 = (v28[6] + 16 * v4);
        *v45 = v34;
        v45[1] = a1;
        *(v28[7] + 8 * v4) = v10;
        v46 = v28[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_40;
        }

        v28[2] = v48;
LABEL_20:
        v7 = v12;
        *(v62 + v12) = v28;
        swift_endAccess();

        ++v3;
        a1 = v60;
        if (v61 == v27)
        {
          goto LABEL_43;
        }
      }
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v57)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_54;
    }

    v64 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v13 = sub_24910D19C();
LABEL_5:
    v14 = MEMORY[0x277D84F90];
    v61 = isUniquelyReferenced_nonNull_native;
    if (v13)
    {
      v63 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v56 = v10;
      v58 = v9;
      v15 = 0;
      v14 = v63;
      v16 = a1 & 0xC000000000000001;
      do
      {
        if (v16)
        {
          v17 = MEMORY[0x24C1F1C90](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 alarmID];
        sub_24910C2CC();

        v63 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_2490CC8F8(v20 > 1, v21 + 1, 1);
          v14 = v63;
        }

        ++v15;
        v14[2] = v21 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v3);
        a1 = v60;
      }

      while (v13 != v15);
      v12 = v57;
      v9 = v58;
      LODWORD(v10) = v56;
    }

    v22 = MEMORY[0x24C1F1790](v14, v3);
    v24 = v23;

    v25 = sub_24909F930(v22, v24, &v64);

    isUniquelyReferenced_nonNull_native = v61;
    *(v61 + 4) = v25;
    _os_log_impl(&dword_249083000, v9, v10, "AlarmsUpdated: alarmIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v26 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1F26F0](v26, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v49 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x24C1F1C90](v49, a1);
    }

    else
    {
      v50 = *(a1 + 8 * v49 + 32);
    }

    v51 = v50;
    ++v49;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    v52 = v64[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v49);
  v3 = v64;
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v55[-16] = 6;
    *&v55[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v55[-32]);
  }
}

uint64_t sub_2490C2874()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D295A0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_249110198;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C2C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C2D10, v5, v4);
}

uint64_t sub_2490C2D10()
{
  v1 = v0[2];
  sub_2490C2D70(v0[3]);
  v2 = v0[1];

  return v2();
}

size_t sub_2490C2D70(unint64_t a1)
{
  v3 = v1;
  v52 = sub_24910C2FC();
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v52);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_32;
  }

LABEL_2:
  v9 = sub_24910C89C();
  __swift_project_value_buffer(v9, qword_27EEDAE48);

  v10 = sub_24910C87C();
  LODWORD(v11) = sub_24910CF2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = a1 >> 62;
  v53 = a1;
  v51 = a1 >> 62;
  if (v12)
  {
    v2 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v55 = v14;
    *v2 = 136315138;
    if (!v13)
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_49;
  }

  while (1)
  {
    if (v13)
    {
      v8 = sub_24910D19C();
      if (v8)
      {
LABEL_19:
        v29 = 0;
        v5 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
        v52 = a1 & 0xC000000000000001;
        v13 = a1 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v52)
          {
            v31 = MEMORY[0x24C1F1C90](v29, a1);
          }

          else
          {
            if (v29 >= *(v13 + 16))
            {
              goto LABEL_31;
            }

            v31 = *(a1 + 8 * v29 + 32);
          }

          v11 = v31;
          v32 = (v29 + 1);
          if (__OFADD__(v29, 1))
          {
            break;
          }

          v33 = [v31 alarmIDString];
          v34 = sub_24910CC9C();
          v36 = v35;

          swift_beginAccess();
          v37 = *(v3 + v5);
          v2 = sub_2490A0A3C(v34, v36);
          LOBYTE(v37) = v38;
          a1 = v53;

          if (v37)
          {
            v39 = *(v3 + v5);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = *(v3 + v5);
            v54 = v41;
            *(v3 + v5) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
              v41 = v54;
            }

            v30 = *(*(v41 + 48) + 16 * v2 + 8);

            sub_2490CD11C(v2, v41);
            *(v3 + v5) = v41;
          }

          swift_endAccess();

          ++v29;
          if (v32 == v8)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        swift_once();
        goto LABEL_2;
      }
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_19;
      }
    }

LABEL_34:
    if (v51)
    {
      v10 = sub_24910D19C();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = MEMORY[0x277D84F90];
    if (!v10)
    {
      goto LABEL_45;
    }

    v55 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_49:
    v15 = sub_24910D19C();
LABEL_5:
    v16 = MEMORY[0x277D84F90];
    v50 = v14;
    if (v15)
    {
      v54 = MEMORY[0x277D84F90];
      result = sub_2490CC8F8(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
        return result;
      }

      v47 = v2;
      v48 = v11;
      v49 = v10;
      v18 = 0;
      v16 = v54;
      v19 = v53 & 0xC000000000000001;
      do
      {
        if (v19)
        {
          v20 = MEMORY[0x24C1F1C90](v18, v53);
        }

        else
        {
          v20 = *(v53 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = [v20 alarmID];
        sub_24910C2CC();

        v54 = v16;
        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2490CC8F8(v23 > 1, v24 + 1, 1);
          v16 = v54;
        }

        ++v18;
        *(v16 + 16) = v24 + 1;
        (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v8, v52);
      }

      while (v15 != v18);
      v13 = v51;
      v10 = v49;
      LODWORD(v11) = v48;
      v2 = v47;
    }

    v25 = MEMORY[0x24C1F1790](v16, v52);
    v5 = v26;

    v27 = sub_24909F930(v25, v5, &v55);

    *(v2 + 4) = v27;
    _os_log_impl(&dword_249083000, v10, v11, "AlarmsRemoved: alarmIDs=%s", v2, 0xCu);
    v28 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x24C1F26F0](v28, -1, -1);
    MEMORY[0x24C1F26F0](v2, -1, -1);

    a1 = v53;
  }

  v42 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x24C1F1C90](v42, a1);
    }

    else
    {
      v43 = *(a1 + 8 * v42 + 32);
    }

    v44 = v43;
    ++v42;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    v45 = v55[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v10 != v42);
  v14 = v55;
LABEL_45:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *(&v47 - 2) = 7;
    *(&v47 - 1) = v14;
    sub_2490B8E80(sub_2490CE614, (&v47 - 4));
  }
}

uint64_t sub_2490C33A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D295A0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_249110180;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C3780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C383C, v5, v4);
}

uint64_t sub_2490C383C()
{
  v1 = v0[2];
  sub_2490C389C(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2490C389C(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v60 = a1;
  v57 = a1 >> 62;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v12)
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v12)
    {
      v27 = sub_24910D19C();
      if (!v27)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v7 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v59)
        {
          v31 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v31 = *(a1 + 8 * v3 + 32);
        }

        v32 = v31;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v61 = (v3 + 1);
        v33 = [v31 alarmIDString];
        v34 = sub_24910CC9C();
        a1 = v35;

        v36 = v62;
        swift_beginAccess();
        v10 = v32;
        v37 = *(v36 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v36 + v7);
        v38 = v63;
        v12 = v7;
        *(v36 + v7) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v34, a1);
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_39;
        }

        v7 = v39;
        if (v38[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v39)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
            if (v7)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v42, isUniquelyReferenced_nonNull_native, &qword_27EED7AE8, &qword_249110110);
          v43 = sub_2490A0A3C(v34, a1);
          if ((v7 & 1) != (v44 & 1))
          {
            goto LABEL_60;
          }

          v4 = v43;
          if (v7)
          {
LABEL_19:

            v28 = v63;
            v29 = v63[7];
            v30 = *(v29 + 8 * v4);
            *(v29 + 8 * v4) = v10;

            goto LABEL_20;
          }
        }

        v28 = v63;
        v63[(v4 >> 6) + 8] |= 1 << v4;
        v45 = (v28[6] + 16 * v4);
        *v45 = v34;
        v45[1] = a1;
        *(v28[7] + 8 * v4) = v10;
        v46 = v28[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_40;
        }

        v28[2] = v48;
LABEL_20:
        v7 = v12;
        *(v62 + v12) = v28;
        swift_endAccess();

        ++v3;
        a1 = v60;
        if (v61 == v27)
        {
          goto LABEL_43;
        }
      }
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v57)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_54;
    }

    v64 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v13 = sub_24910D19C();
LABEL_5:
    v14 = MEMORY[0x277D84F90];
    v61 = isUniquelyReferenced_nonNull_native;
    if (v13)
    {
      v63 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v56 = v10;
      v58 = v9;
      v15 = 0;
      v14 = v63;
      v16 = a1 & 0xC000000000000001;
      do
      {
        if (v16)
        {
          v17 = MEMORY[0x24C1F1C90](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 alarmID];
        sub_24910C2CC();

        v63 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_2490CC8F8(v20 > 1, v21 + 1, 1);
          v14 = v63;
        }

        ++v15;
        v14[2] = v21 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v3);
        a1 = v60;
      }

      while (v13 != v15);
      v12 = v57;
      v9 = v58;
      LODWORD(v10) = v56;
    }

    v22 = MEMORY[0x24C1F1790](v14, v3);
    v24 = v23;

    v25 = sub_24909F930(v22, v24, &v64);

    isUniquelyReferenced_nonNull_native = v61;
    *(v61 + 4) = v25;
    _os_log_impl(&dword_249083000, v9, v10, "AlarmsFired: alarmIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v26 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1F26F0](v26, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v49 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x24C1F1C90](v49, a1);
    }

    else
    {
      v50 = *(a1 + 8 * v49 + 32);
    }

    v51 = v50;
    ++v49;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    v52 = v64[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v49);
  v3 = v64;
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v55[-16] = 10;
    *&v55[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v55[-32]);
  }
}

uint64_t sub_2490C3F88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D295A0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_249110168;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C4368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C4424, v5, v4);
}

uint64_t sub_2490C4424()
{
  v1 = v0[2];
  sub_2490C4484(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2490C4484(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v60 = a1;
  v57 = a1 >> 62;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v12)
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v12)
    {
      v27 = sub_24910D19C();
      if (!v27)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v7 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v59)
        {
          v31 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v31 = *(a1 + 8 * v3 + 32);
        }

        v32 = v31;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v61 = (v3 + 1);
        v33 = [v31 alarmIDString];
        v34 = sub_24910CC9C();
        a1 = v35;

        v36 = v62;
        swift_beginAccess();
        v10 = v32;
        v37 = *(v36 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v36 + v7);
        v38 = v63;
        v12 = v7;
        *(v36 + v7) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v34, a1);
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_39;
        }

        v7 = v39;
        if (v38[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v39)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
            if (v7)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v42, isUniquelyReferenced_nonNull_native, &qword_27EED7AE8, &qword_249110110);
          v43 = sub_2490A0A3C(v34, a1);
          if ((v7 & 1) != (v44 & 1))
          {
            goto LABEL_60;
          }

          v4 = v43;
          if (v7)
          {
LABEL_19:

            v28 = v63;
            v29 = v63[7];
            v30 = *(v29 + 8 * v4);
            *(v29 + 8 * v4) = v10;

            goto LABEL_20;
          }
        }

        v28 = v63;
        v63[(v4 >> 6) + 8] |= 1 << v4;
        v45 = (v28[6] + 16 * v4);
        *v45 = v34;
        v45[1] = a1;
        *(v28[7] + 8 * v4) = v10;
        v46 = v28[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_40;
        }

        v28[2] = v48;
LABEL_20:
        v7 = v12;
        *(v62 + v12) = v28;
        swift_endAccess();

        ++v3;
        a1 = v60;
        if (v61 == v27)
        {
          goto LABEL_43;
        }
      }
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v57)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_54;
    }

    v64 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v13 = sub_24910D19C();
LABEL_5:
    v14 = MEMORY[0x277D84F90];
    v61 = isUniquelyReferenced_nonNull_native;
    if (v13)
    {
      v63 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v56 = v10;
      v58 = v9;
      v15 = 0;
      v14 = v63;
      v16 = a1 & 0xC000000000000001;
      do
      {
        if (v16)
        {
          v17 = MEMORY[0x24C1F1C90](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 alarmID];
        sub_24910C2CC();

        v63 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_2490CC8F8(v20 > 1, v21 + 1, 1);
          v14 = v63;
        }

        ++v15;
        v14[2] = v21 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v3);
        a1 = v60;
      }

      while (v13 != v15);
      v12 = v57;
      v9 = v58;
      LODWORD(v10) = v56;
    }

    v22 = MEMORY[0x24C1F1790](v14, v3);
    v24 = v23;

    v25 = sub_24909F930(v22, v24, &v64);

    isUniquelyReferenced_nonNull_native = v61;
    *(v61 + 4) = v25;
    _os_log_impl(&dword_249083000, v9, v10, "AlarmsDismissed: alarmIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v26 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1F26F0](v26, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v49 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x24C1F1C90](v49, a1);
    }

    else
    {
      v50 = *(a1 + 8 * v49 + 32);
    }

    v51 = v50;
    ++v49;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    v52 = v64[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v49);
  v3 = v64;
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v55[-16] = 9;
    *&v55[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v55[-32]);
  }
}

uint64_t sub_2490C4B70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D295A0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_249110150;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C4F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon();
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C500C, v5, v4);
}

uint64_t sub_2490C500C()
{
  v1 = v0[2];
  sub_2490C506C(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2490C506C(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAE48);

  v9 = sub_24910C87C();
  LODWORD(v10) = sub_24910CF2C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = a1 >> 62;
  v60 = a1;
  v57 = a1 >> 62;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v12)
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v12)
    {
      v27 = sub_24910D19C();
      if (!v27)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v7 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v59)
        {
          v31 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v31 = *(a1 + 8 * v3 + 32);
        }

        v32 = v31;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v61 = (v3 + 1);
        v33 = [v31 alarmIDString];
        v34 = sub_24910CC9C();
        a1 = v35;

        v36 = v62;
        swift_beginAccess();
        v10 = v32;
        v37 = *(v36 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v36 + v7);
        v38 = v63;
        v12 = v7;
        *(v36 + v7) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v34, a1);
        v40 = v38[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_39;
        }

        v7 = v39;
        if (v38[3] >= v42)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v39)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AE8, &qword_249110110);
            if (v7)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v42, isUniquelyReferenced_nonNull_native, &qword_27EED7AE8, &qword_249110110);
          v43 = sub_2490A0A3C(v34, a1);
          if ((v7 & 1) != (v44 & 1))
          {
            goto LABEL_60;
          }

          v4 = v43;
          if (v7)
          {
LABEL_19:

            v28 = v63;
            v29 = v63[7];
            v30 = *(v29 + 8 * v4);
            *(v29 + 8 * v4) = v10;

            goto LABEL_20;
          }
        }

        v28 = v63;
        v63[(v4 >> 6) + 8] |= 1 << v4;
        v45 = (v28[6] + 16 * v4);
        *v45 = v34;
        v45[1] = a1;
        *(v28[7] + 8 * v4) = v10;
        v46 = v28[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_40;
        }

        v28[2] = v48;
LABEL_20:
        v7 = v12;
        *(v62 + v12) = v28;
        swift_endAccess();

        ++v3;
        a1 = v60;
        if (v61 == v27)
        {
          goto LABEL_43;
        }
      }
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v57)
    {
      v9 = sub_24910D19C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v9)
    {
      goto LABEL_54;
    }

    v64 = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v13 = sub_24910D19C();
LABEL_5:
    v14 = MEMORY[0x277D84F90];
    v61 = isUniquelyReferenced_nonNull_native;
    if (v13)
    {
      v63 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v56 = v10;
      v58 = v9;
      v15 = 0;
      v14 = v63;
      v16 = a1 & 0xC000000000000001;
      do
      {
        if (v16)
        {
          v17 = MEMORY[0x24C1F1C90](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 alarmID];
        sub_24910C2CC();

        v63 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_2490CC8F8(v20 > 1, v21 + 1, 1);
          v14 = v63;
        }

        ++v15;
        v14[2] = v21 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v3);
        a1 = v60;
      }

      while (v13 != v15);
      v12 = v57;
      v9 = v58;
      LODWORD(v10) = v56;
    }

    v22 = MEMORY[0x24C1F1790](v14, v3);
    v24 = v23;

    v25 = sub_24909F930(v22, v24, &v64);

    isUniquelyReferenced_nonNull_native = v61;
    *(v61 + 4) = v25;
    _os_log_impl(&dword_249083000, v9, v10, "AlarmsFiringChanged: alarmIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v26 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1F26F0](v26, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v49 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x24C1F1C90](v49, a1);
    }

    else
    {
      v50 = *(a1 + 8 * v49 + 32);
    }

    v51 = v50;
    ++v49;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTAlarm_];

    sub_24910D2AC();
    v52 = v64[2];
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v9 != v49);
  v3 = v64;
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v55[-16] = 12;
    *&v55[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v55[-32]);
  }
}

uint64_t sub_2490C5758()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return sub_2490C57E8();
}

uint64_t sub_2490C57E8()
{
  *(v1 + 16) = v0;
  v2 = *v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C58BC, v4, v3);
}

uint64_t sub_2490C58BC()
{
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  __swift_project_value_buffer(v1, qword_27EEDAE48);
  v2 = sub_24910C87C();
  v3 = sub_24910CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249083000, v2, v3, "AlarmStateReset", v4, 2u);
    MEMORY[0x24C1F26F0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  if (swift_weakLoadStrong())
  {
    v6 = swift_task_alloc();
    *(v6 + 16) = xmmword_24910FE90;
    sub_2490B8E80(sub_2490CE614, v6);
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_2490CE5B4;
  v8 = *(v0 + 16);

  return sub_2490C5A78();
}

uint64_t sub_2490C5A78()
{
  v1[13] = v0;
  v2 = *v0;
  v3 = sub_24910C2FC();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon);
  v7 = sub_24910CDAC();
  v1[18] = v7;
  v1[19] = v6;

  return MEMORY[0x2822009F8](sub_2490C5BAC, v7, v6);
}

uint64_t sub_2490C5BAC()
{
  v44 = v0;
  v1 = *(v0 + 104);
  v2 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager);
  *(v0 + 160) = v2;
  if (!v2)
  {
LABEL_16:
    v39 = *(v0 + 128);

    v40 = *(v0 + 8);

    return v40();
  }

  v3 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorAlarmsFetchRunning);
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorAlarmsFetchPending;
  *(v0 + 168) = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorAlarmsFetchPending;
  if (v3)
  {
    *(v1 + v4) = 1;
    goto LABEL_16;
  }

  *(v0 + 176) = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms;
  v5 = v2;
  swift_beginAccess();
  v6 = *(v0 + 168);
  v7 = *(v0 + 104);
  v8 = 0x278F87000uLL;
  v9 = &unk_27EEDA000;
  *&v10 = 136315138;
  v42 = v10;
  while (1)
  {
    v22 = *(v0 + 160);
    *(v7 + v6) = 0;
    v23 = [v22 *(v8 + 3184)];
    *(v0 + 184) = v23;
    v24 = v22;
    if (v23)
    {
      break;
    }

    v25 = *(v0 + 160);
    sub_24910C7DC();
    v26 = sub_24910C7EC();
    swift_willThrow();

    if (v9[456] != -1)
    {
      swift_once();
    }

    v27 = sub_24910C89C();
    __swift_project_value_buffer(v27, qword_27EEDAE48);
    v28 = v26;
    v29 = sub_24910C87C();
    v30 = sub_24910CF4C();

    if (os_log_type_enabled(v29, v30))
    {
      v11 = swift_slowAlloc();
      v12 = v8;
      v13 = v9;
      v14 = swift_slowAlloc();
      v43 = v14;
      *v11 = v42;
      swift_getErrorValue();
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v17 = *(v0 + 56);
      v18 = sub_24910D5DC();
      v20 = sub_24909F930(v18, v19, &v43);

      *(v11 + 4) = v20;
      _os_log_impl(&dword_249083000, v29, v30, "### Fetch alarms failed: error=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v21 = v14;
      v9 = v13;
      v8 = v12;
      MEMORY[0x24C1F26F0](v21, -1, -1);
      MEMORY[0x24C1F26F0](v11, -1, -1);
    }

    else
    {
    }

    v6 = *(v0 + 168);
    v7 = *(v0 + 104);
    if ((*(v7 + v6) & 1) == 0)
    {

      goto LABEL_16;
    }
  }

  v31 = *(v0 + 160);
  v32 = *(v0 + 136);
  v33 = *(v0 + 104);
  v34 = swift_task_alloc();
  *(v0 + 192) = v34;
  v34[2] = v23;
  v34[3] = v31;
  v34[4] = 0x616C416863746566;
  v34[5] = 0xEB00000000736D72;
  v35 = *(MEMORY[0x277D85A40] + 4);
  v36 = v23;
  v37 = swift_task_alloc();
  *(v0 + 200) = v37;
  v38 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  *v37 = v0;
  v37[1] = sub_2490C5FC0;

  return MEMORY[0x2822008A0](v0 + 72, v33, v32, 0xD000000000000019, 0x80000002491113D0, sub_2490CE540, v34, v38);
}

uint64_t sub_2490C5FC0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_2490C6A6C;
  }

  else
  {
    v7 = v2[24];

    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_2490C60DC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2490C60DC()
{
  v113 = v0;
  v1 = *(v0 + 160);

  v3 = (v0 + 72);
  v2 = *(v0 + 72);
  v112[0] = 0;
  sub_2490A4744(0, &qword_27EED7A88, 0x277D296D0);
  sub_24910CD4C();

  v4 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_59:
    v105 = v4;
    v106 = sub_24910D19C();
    v4 = v105;
    v5 = v106;
  }

  else
  {
    v5 = *((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  v7 = v4;
  v111 = v5;
  v109 = v5 & ~(v5 >> 63);
  if (v5)
  {
    v8 = v4;
    v3[1] = MEMORY[0x277D84F90];
    v9 = sub_2490CC8F8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_61;
    }

    v17 = 0;
    v6 = *(v0 + 80);
    v4 = v8;
    v18 = v8 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x24C1F1C90](v17, v4);
      }

      else
      {
        v19 = *(v4 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = *(v0 + 128);
      v22 = [v19 alarmID];
      sub_24910C2CC();

      *(v0 + 80) = v6;
      v24 = *(v6 + 16);
      v23 = *(v6 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2490CC8F8(v23 > 1, v24 + 1, 1);
        v6 = v3[1];
      }

      v26 = *(v0 + 120);
      v25 = *(v0 + 128);
      v27 = *(v0 + 112);
      ++v17;
      *(v6 + 16) = v24 + 1;
      (*(v26 + 32))(v6 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, v25, v27);
      v4 = v7;
    }

    while (v111 != v17);
  }

  v28 = v4;
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v108 = sub_24910C89C();
  __swift_project_value_buffer(v108, qword_27EEDAE48);

  v29 = sub_24910C87C();
  v30 = sub_24910CF2C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 112);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v112[0] = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x24C1F1790](v6, v31);
    v36 = v35;

    v37 = sub_24909F930(v34, v36, v112);

    *(v32 + 4) = v37;
    v28 = v7;
    _os_log_impl(&dword_249083000, v29, v30, "Fetched alarms: alarmIDs=%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x24C1F26F0](v33, -1, -1);
    MEMORY[0x24C1F26F0](v32, -1, -1);
  }

  else
  {
  }

  v110 = v3;
  if (!v111)
  {

    v39 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_27;
    }

LABEL_38:
    v49 = MEMORY[0x277D84F98];
    v3[3] = MEMORY[0x277D84F98];
    goto LABEL_39;
  }

  v3[2] = MEMORY[0x277D84F90];
  v9 = sub_2490CC8B8(0, v109, 0);
  if (v111 < 0)
  {
LABEL_61:
    __break(1u);
    return MEMORY[0x2822008A0](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v38 = 0;
  v39 = v3[2];
  do
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x24C1F1C90](v38, v28);
    }

    else
    {
      v40 = *(v28 + 8 * v38 + 32);
    }

    v41 = v40;
    v42 = [v40 alarmIDString];
    v43 = sub_24910CC9C();
    v45 = v44;

    v3[2] = v39;
    v47 = *(v39 + 16);
    v46 = *(v39 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_2490CC8B8((v46 > 1), v47 + 1, 1);
      v39 = v110[2];
    }

    ++v38;
    *(v39 + 16) = v47 + 1;
    v48 = (v39 + 24 * v47);
    v48[4] = v43;
    v48[5] = v45;
    v48[6] = v41;
    v3 = v110;
  }

  while (v111 != v38);

  if (!*(v39 + 16))
  {
    goto LABEL_38;
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7AE8, &qword_249110110);
  v49 = sub_24910D37C();
  v50 = *(v39 + 16);
  v3[3] = v49;
  if (!v50)
  {
LABEL_39:
    v70 = *(v0 + 176);
    v69 = *(v0 + 184);
    v71 = *(v0 + 104);

    v72 = *(v71 + v70);
    *(v71 + v70) = v49;

    v74 = (*(v0 + 104) + *(v0 + 168));
    if (*v74 != 1)
    {
LABEL_48:

      v96 = *(v0 + 128);

      v97 = *(v0 + 8);

      return v97();
    }

    v75 = 0x278F87000uLL;
    v76 = qword_27EEDAE48;
    *&v73 = 136315138;
    v107 = v73;
    while (1)
    {
      v88 = *(v0 + 160);
      *v74 = 0;
      v89 = [v88 *(v75 + 3184)];
      *(v0 + 184) = v89;
      v90 = v88;
      v91 = *(v0 + 160);
      if (v89)
      {
        break;
      }

      sub_24910C7DC();
      v92 = sub_24910C7EC();
      swift_willThrow();

      if (qword_27EEDAE40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v108, v76);
      v93 = v92;
      v94 = sub_24910C87C();
      v95 = sub_24910CF4C();

      if (os_log_type_enabled(v94, v95))
      {
        v77 = v76;
        v78 = v75;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v112[0] = v80;
        *v79 = v107;
        swift_getErrorValue();
        v82 = *(v0 + 40);
        v81 = *(v0 + 48);
        v83 = *(v0 + 56);
        v84 = sub_24910D5DC();
        v86 = sub_24909F930(v84, v85, v112);

        *(v79 + 4) = v86;
        _os_log_impl(&dword_249083000, v94, v95, "### Fetch alarms failed: error=%s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x24C1F26F0](v80, -1, -1);
        v87 = v79;
        v75 = v78;
        v76 = v77;
        MEMORY[0x24C1F26F0](v87, -1, -1);
      }

      else
      {
      }

      v74 = (*(v0 + 104) + *(v0 + 168));
      if ((*v74 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v99 = *(v0 + 136);
    v100 = *(v0 + 104);
    v101 = swift_task_alloc();
    *(v0 + 192) = v101;
    v101[2] = v89;
    v101[3] = v91;
    v101[4] = 0x616C416863746566;
    v101[5] = 0xEB00000000736D72;
    v102 = *(MEMORY[0x277D85A40] + 4);
    v103 = v89;
    v104 = swift_task_alloc();
    *(v0 + 200) = v104;
    v16 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
    *v104 = v0;
    v104[1] = sub_2490C5FC0;
    v14 = sub_2490CE540;
    v13 = 0x80000002491113D0;
    v9 = v110;
    v10 = v100;
    v11 = v99;
    v12 = 0xD000000000000019;
    v15 = v101;

    return MEMORY[0x2822008A0](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v51 = (v39 + 48);
  while (1)
  {
    v56 = *(v51 - 2);
    v55 = *(v51 - 1);
    v57 = *v51;

    v58 = v57;
    v59 = sub_2490A0A3C(v56, v55);
    v60 = v49[2];
    v61 = (v4 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v64 = v4;
    if (v49[3] < v63)
    {
      v3 = v110;
      sub_2490CCE80(v63, 1, &qword_27EED7AE8, &qword_249110110);
      v65 = v110[3];
      v59 = sub_2490A0A3C(v56, v55);
      if ((v64 & 1) != (v4 & 1))
      {
        break;
      }
    }

    v49 = v110[3];
    if (v64)
    {
      v52 = v59;

      v53 = v49[7];
      v54 = *(v53 + 8 * v52);
      *(v53 + 8 * v52) = v58;
    }

    else
    {
      v49[(v59 >> 6) + 8] |= 1 << v59;
      v66 = (v49[6] + 16 * v59);
      *v66 = v56;
      v66[1] = v55;
      *(v49[7] + 8 * v59) = v58;
      v67 = v49[2];
      v62 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v62)
      {
        goto LABEL_58;
      }

      v49[2] = v68;
    }

    v51 += 3;
    if (!--v50)
    {
      goto LABEL_39;
    }
  }

  return sub_24910D57C();
}

uint64_t sub_2490C6A6C()
{
  v39 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);

  v3 = *(v0 + 208);
  v4 = &unk_27EEDA000;
  v5 = qword_27EEDAE48;
  v6 = 0x278F87000uLL;
  while (1)
  {

    if (v4[456] != -1)
    {
      swift_once();
    }

    v7 = sub_24910C89C();
    __swift_project_value_buffer(v7, v5);
    v8 = v3;
    v9 = sub_24910C87C();
    v10 = sub_24910CF4C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = v5;
      v13 = v4;
      v14 = swift_slowAlloc();
      v38 = v14;
      *v11 = 136315138;
      swift_getErrorValue();
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v17 = *(v0 + 56);
      v18 = sub_24910D5DC();
      v20 = sub_24909F930(v18, v19, &v38);

      *(v11 + 4) = v20;
      _os_log_impl(&dword_249083000, v9, v10, "### Fetch alarms failed: error=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v21 = v14;
      v4 = v13;
      v5 = v12;
      v6 = 0x278F87000;
      MEMORY[0x24C1F26F0](v21, -1, -1);
      MEMORY[0x24C1F26F0](v11, -1, -1);
    }

    else
    {
    }

    v22 = *(v0 + 104);
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    if ((*(v22 + v23) & 1) == 0)
    {
      break;
    }

    *(v22 + v23) = 0;
    v25 = [v24 *(v6 + 3184)];
    *(v0 + 184) = v25;
    v26 = v24;
    v27 = *(v0 + 160);
    if (v25)
    {
      v31 = *(v0 + 136);
      v32 = *(v0 + 104);
      v33 = swift_task_alloc();
      *(v0 + 192) = v33;
      v33[2] = v25;
      v33[3] = v27;
      v33[4] = 0x616C416863746566;
      v33[5] = 0xEB00000000736D72;
      v34 = *(MEMORY[0x277D85A40] + 4);
      v35 = v25;
      v36 = swift_task_alloc();
      *(v0 + 200) = v36;
      v37 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
      *v36 = v0;
      v36[1] = sub_2490C5FC0;

      return MEMORY[0x2822008A0](v0 + 72, v32, v31, 0xD000000000000019, 0x80000002491113D0, sub_2490CE540, v33, v37);
    }

    sub_24910C7DC();
    v3 = sub_24910C7EC();
    swift_willThrow();
  }

  v28 = *(v0 + 128);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2490C6E20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_24910BFFC();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *MEMORY[0x277D296B0];
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v10 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v10 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v16;
  sub_249088588(v6, v4);
  v21 = (*(v19 + 48))(v4, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v4, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491100F8;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
}