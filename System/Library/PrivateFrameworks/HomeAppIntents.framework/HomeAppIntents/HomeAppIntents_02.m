uint64_t sub_25273F7FC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25273D064(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_252740BD0(&qword_27F4FC6F8, &unk_2528D3CA0);
        goto LABEL_55;
      }

      sub_252742614(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_2528C1130();
    RobotVacuumCleanerCleanMode.rawValue.getter();
    sub_2528C0A40();

    result = sub_2528C1180();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE600000000000000;
        v14 = 0x6D7575636176;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0xE300000000000000;
            v14 = 7368557;
            break;
          case 2:
            v14 = 0x68546D7575636176;
            v13 = 0xED0000706F4D6E65;
            break;
          case 3:
            v14 = 0x61656C4370656564;
            v13 = 0xE90000000000006ELL;
            break;
          case 4:
            v13 = 0xE400000000000000;
            v14 = 1869903201;
            break;
          case 5:
            v13 = 0xE500000000000000;
            v14 = 0x7465697571;
            break;
          case 6:
            v13 = 0xE500000000000000;
            v14 = 0x6B63697571;
            break;
          case 7:
            v13 = 0xE800000000000000;
            v14 = 0x6573696F4E776F6CLL;
            break;
          case 8:
            v13 = 0xE900000000000079;
            v14 = 0x6772656E45776F6CLL;
            break;
          case 9:
            v13 = 0xE800000000000000;
            v14 = 0x6E6F697461636176;
            break;
          case 0xA:
            v13 = 0xE500000000000000;
            v14 = 0x746867696ELL;
            break;
          case 0xB:
            v13 = 0xE300000000000000;
            v14 = 7954788;
            break;
          case 0xC:
            v13 = 0xE300000000000000;
            v14 = 7235949;
            break;
          case 0xD:
            v13 = 0xE300000000000000;
            v14 = 7889261;
            break;
          default:
            break;
        }

        v15 = 0xE600000000000000;
        v16 = 0x6D7575636176;
        switch(v6)
        {
          case 1:
            v15 = 0xE300000000000000;
            if (v14 == 7368557)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          case 2:
            v15 = 0xED0000706F4D6E65;
            if (v14 != 0x68546D7575636176)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 3:
            v15 = 0xE90000000000006ELL;
            if (v14 != 0x61656C4370656564)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 4:
            v15 = 0xE400000000000000;
            if (v14 != 1869903201)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 5:
            v15 = 0xE500000000000000;
            if (v14 != 0x7465697571)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 6:
            v15 = 0xE500000000000000;
            if (v14 != 0x6B63697571)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 7:
            v15 = 0xE800000000000000;
            if (v14 != 0x6573696F4E776F6CLL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 8:
            v15 = 0xE900000000000079;
            if (v14 != 0x6772656E45776F6CLL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 9:
            v15 = 0xE800000000000000;
            if (v14 != 0x6E6F697461636176)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 10:
            v15 = 0xE500000000000000;
            v16 = 0x746867696ELL;
            goto LABEL_48;
          case 11:
            v15 = 0xE300000000000000;
            if (v14 != 7954788)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 12:
            v15 = 0xE300000000000000;
            if (v14 != 7235949)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 13:
            v15 = 0xE300000000000000;
            if (v14 != 7889261)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          default:
LABEL_48:
            if (v14 != v16)
            {
              goto LABEL_50;
            }

LABEL_49:
            if (v13 == v15)
            {
              goto LABEL_58;
            }

LABEL_50:
            v17 = sub_2528C1060();

            if (v17)
            {
              goto LABEL_59;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_55:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_58:

LABEL_59:
    result = sub_2528C1090();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

uint64_t sub_25273FCC0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2528BFCF0();
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
    sub_25273D408(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_252740984(MEMORY[0x277D15F48], &qword_27F4FC648, &qword_2528C4760);
      goto LABEL_12;
    }

    sub_252742988(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48]);
  v15 = sub_2528C0900();
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
      sub_25274ABA0(&qword_27F4FC640, MEMORY[0x277D15F48]);
      v23 = sub_2528C0930();
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
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273FF88(uint64_t result, unint64_t a2, char a3)
{
  v25 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_43;
  }

  if (a3)
  {
    sub_25273D764(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_252740BD0(&qword_27F4FC800, &qword_2528C48B8);
      goto LABEL_43;
    }

    sub_252742CA4(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  result = sub_2528C1180();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v13 = 0xE400000000000000;
          v12 = 1701670760;
        }

        else
        {
          if (v11 == 4)
          {
            v12 = 1836019570;
          }

          else
          {
            v12 = 1701736314;
          }

          v13 = 0xE400000000000000;
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v11 == 1)
        {
          v12 = 0x7954656369766564;
        }

        else
        {
          v12 = 0x70756F7267;
        }

        if (v11 == 1)
        {
          v13 = 0xEA00000000006570;
        }

        else
        {
          v13 = 0xE500000000000000;
        }
      }

      else
      {
        v12 = 0x614E656369766564;
        v13 = 0xEA0000000000656DLL;
      }

      v14 = 1836019570;
      if (v25 != 4)
      {
        v14 = 1701736314;
      }

      if (v25 == 3)
      {
        v14 = 1701670760;
      }

      v15 = 0xEA00000000006570;
      v16 = 0x7954656369766564;
      if (v25 != 1)
      {
        v16 = 0x70756F7267;
        v15 = 0xE500000000000000;
      }

      if (!v25)
      {
        v16 = 0x614E656369766564;
        v15 = 0xEA0000000000656DLL;
      }

      v17 = v25 <= 2u ? v16 : v14;
      v18 = v25 <= 2u ? v15 : 0xE400000000000000;
      if (v12 == v17 && v13 == v18)
      {
        goto LABEL_46;
      }

      v19 = sub_2528C1060();

      if (v19)
      {
        goto LABEL_47;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_43:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v25;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_46:

LABEL_47:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

void *sub_252740328()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC728, &unk_2528C47F0);
  v2 = *v0;
  v3 = sub_2528C0E30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_252740468()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC850, &unk_2528D3C30);
  v2 = *v0;
  v3 = sub_2528C0E30();
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

void *sub_2527405C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC630, &qword_2528C4758);
  v2 = *v0;
  v3 = sub_2528C0E30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_252740704()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC690, &qword_2528C4788);
  v2 = *v0;
  v3 = sub_2528C0E30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_252740844()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6C0, &qword_2528C47A8);
  v2 = *v0;
  v3 = sub_2528C0E30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_252740984(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_2528C0E30();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_252740BD0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2528C0E30();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

uint64_t sub_252740D00(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2528C0570();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6D8, &qword_2528C47B0);
  v10 = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC6C8, MEMORY[0x277D16AB0]);
      result = sub_2528C0900();
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

uint64_t sub_25274101C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2528BECF0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC678, &qword_2528C4780);
  v10 = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
      result = sub_2528C0900();
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

uint64_t sub_252741338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC728, &unk_2528C47F0);
  result = sub_2528C0E40();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_2528C1120();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_252741528(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2528C0E40();
  v9 = result;
  if (*(v6 + 16))
  {
    v30 = v5;
    v10 = 0;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v6 + 48) + (v17 | (v10 << 6)));
      v21 = *(v9 + 40);
      v22 = sub_2528C1130();
      a4(v22);
      sub_2528C0A40();

      result = sub_2528C1180();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v5 = v30;
        goto LABEL_28;
      }

      v19 = *(v6 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v5 = v9;
  }

  return result;
}

uint64_t sub_25274176C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC850, &unk_2528D3C30);
  result = sub_2528C0E40();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2528C1130();

      sub_2528C0A40();
      result = sub_2528C1180();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_2527419A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC630, &qword_2528C4758);
  result = sub_2528C0E40();
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
      v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2528C1130();
      DeviceType.hash(into:)();
      result = sub_2528C1180();
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
      *(*(v6 + 48) + 2 * v13) = v17;
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

uint64_t sub_252741BC8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2528BFDE0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC790, &qword_2528C4858);
  v10 = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348]);
      result = sub_2528C0900();
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

uint64_t sub_252741EE4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2528C07B0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6B8, &qword_2528C47A0);
  v10 = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC6A8, MEMORY[0x277D16EC8]);
      result = sub_2528C0900();
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

uint64_t sub_252742200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC690, &qword_2528C4788);
  result = sub_2528C0E40();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2528C1130();
      MEMORY[0x2530A87A0](v17);
      result = sub_2528C1180();
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
      *(*(v6 + 48) + 8 * v13) = v17;
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

uint64_t sub_252742420(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6C0, &qword_2528C47A8);
  result = sub_2528C0E40();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      result = MEMORY[0x2530A8770](*(v6 + 40), v17, 4);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_252742614(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6F8, &unk_2528D3CA0);
  result = sub_2528C0E40();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_252742988(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2528BFCF0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC648, &qword_2528C4760);
  v10 = sub_2528C0E40();
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
      sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48]);
      result = sub_2528C0900();
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

uint64_t sub_252742CA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC800, &qword_2528C48B8);
  result = sub_2528C0E40();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_252742F64(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v3 == 1)
      {
        v4 = *a1 == v2;
        return v4 & 1;
      }
    }

    else if (v3 == 2 && v2 == 0)
    {
      v4 = 1;
      return v4 & 1;
    }

LABEL_13:
    v4 = 0;
    return v4 & 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_13;
  }

  v5 = HomeError.rawValue.getter();
  v7 = v6;
  if (v5 == HomeError.rawValue.getter() && v7 == v8)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2528C1060();
  }

  return v4 & 1;
}

uint64_t sub_25274304C(uint64_t a1)
{
  v2 = sub_2528BED50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC610, &qword_2528C4748);
    v10 = sub_2528C0E50();
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
      sub_25274ABA0(&qword_27F4FC618, MEMORY[0x277CC99D0]);
      v18 = sub_2528C0900();
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
          sub_25274ABA0(&qword_27F4FC620, MEMORY[0x277CC99D0]);
          v25 = sub_2528C0930();
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

uint64_t sub_25274336C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC750, &unk_2528C4820);
    v3 = sub_2528C0E50();
    v4 = 0;
    v5 = v3 + 56;
    v28 = a1 + 32;
    v27 = v1;
    while (1)
    {
      v6 = *(v28 + v4);
      v7 = *(v3 + 40);
      sub_2528C1130();
      RobotVacuumCleanerRunState.rawValue.getter();
      sub_2528C0A40();

      result = sub_2528C1180();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        while (1)
        {
          v14 = 0xE700000000000000;
          v15 = 0x646570706F7473;
          switch(*(*(v3 + 48) + v10))
          {
            case 1:
              v15 = 0x676E696E6E7572;
              break;
            case 2:
              v14 = 0xE600000000000000;
              v15 = 0x646573756170;
              break;
            case 3:
              v14 = 0xE500000000000000;
              v15 = 0x726F727265;
              break;
            case 4:
              v15 = 0x43676E696B656573;
              v14 = 0xEE00726567726168;
              break;
            case 5:
              v14 = 0xE800000000000000;
              v15 = 0x676E696772616863;
              break;
            case 6:
              v14 = 0xE600000000000000;
              v15 = 0x64656B636F64;
              break;
            case 7:
              v15 = 0x676E697974706D65;
              v14 = 0xEF6E694274737544;
              break;
            case 8:
              v15 = 0x676E696E61656C63;
              v14 = 0xEB00000000706F4DLL;
              break;
            case 9:
              v15 = 0xD000000000000010;
              v14 = 0x80000002528E4E10;
              break;
            case 0xA:
              v15 = 0x676E697461647075;
              v14 = 0xEC0000007370614DLL;
              break;
            case 0xB:
              v14 = 0xE500000000000000;
              v15 = 0x6B63757473;
              break;
            case 0xC:
              v15 = 0xD000000000000018;
              v14 = 0x80000002528E4E40;
              break;
            case 0xD:
              v15 = 0x4D6E694274737564;
              v14 = 0xEE00676E69737369;
              break;
            case 0xE:
              v15 = 0x466E694274737564;
              v14 = 0xEB000000006C6C75;
              break;
            case 0xF:
              v15 = 0xD000000000000010;
              v14 = 0x80000002528E4E80;
              break;
            case 0x10:
              v15 = 0x6E61547265746177;
              v14 = 0xEE007974706D456BLL;
              break;
            case 0x11:
              v15 = 0xD000000000000010;
              v14 = 0x80000002528E4EA0;
              break;
            case 0x12:
              v15 = 0xD000000000000015;
              v14 = 0x80000002528E4EC0;
              break;
            case 0x13:
              v15 = 0x6574746142776F6CLL;
              v14 = 0xEA00000000007972;
              break;
            case 0x14:
              v15 = 0xD000000000000015;
              v14 = 0x80000002528E4EE0;
              break;
            case 0x15:
              v15 = 0xD000000000000012;
              v14 = 0x80000002528E4F00;
              break;
            case 0x16:
              v15 = 0xD000000000000015;
              v14 = 0x80000002528E4F20;
              break;
            case 0x17:
              v15 = 0x614A736C65656877;
              v14 = 0xEC00000064656D6DLL;
              break;
            case 0x18:
              v15 = 0x6D614A6873757262;
              v14 = 0xEB0000000064656DLL;
              break;
            case 0x19:
              v15 = 0xD000000000000018;
              v14 = 0x80000002528E4F50;
              break;
            case 0x1A:
              v15 = 0x6E776F6E6B6E75;
              break;
            default:
              break;
          }

          v16 = 0xE700000000000000;
          v17 = 0x646570706F7473;
          switch(v6)
          {
            case 1:
              if (v15 == 0x676E696E6E7572)
              {
                goto LABEL_82;
              }

              goto LABEL_83;
            case 2:
              v16 = 0xE600000000000000;
              v22 = 1937072496;
              goto LABEL_67;
            case 3:
              v16 = 0xE500000000000000;
              if (v15 != 0x726F727265)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 4:
              v18 = 0x43676E696B656573;
              v19 = 0x726567726168;
              goto LABEL_64;
            case 5:
              v16 = 0xE800000000000000;
              if (v15 != 0x676E696772616863)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 6:
              v16 = 0xE600000000000000;
              v22 = 1801678692;
LABEL_67:
              if (v15 != (v22 & 0xFFFF0000FFFFFFFFLL | 0x646500000000))
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 7:
              v16 = 0xEF6E694274737544;
              if (v15 != 0x676E697974706D65)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 8:
              v20 = 0x676E696E61656C63;
              v21 = 7368525;
              goto LABEL_74;
            case 9:
              v16 = 0x80000002528E4E10;
              if (v15 != 0xD000000000000010)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 10:
              v16 = 0xEC0000007370614DLL;
              if (v15 != 0x676E697461647075)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 11:
              v16 = 0xE500000000000000;
              if (v15 != 0x6B63757473)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 12:
              v16 = 0x80000002528E4E40;
              if (v15 != 0xD000000000000018)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 13:
              v18 = 0x4D6E694274737564;
              v19 = 0x676E69737369;
              goto LABEL_64;
            case 14:
              v20 = 0x466E694274737564;
              v21 = 7105653;
              goto LABEL_74;
            case 15:
              v16 = 0x80000002528E4E80;
              if (v15 != 0xD000000000000010)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 16:
              v18 = 0x6E61547265746177;
              v19 = 0x7974706D456BLL;
LABEL_64:
              v16 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v15 != v18)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 17:
              v16 = 0x80000002528E4EA0;
              if (v15 != 0xD000000000000010)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 18:
              v16 = 0x80000002528E4EC0;
              if (v15 != 0xD000000000000015)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 19:
              v16 = 0xEA00000000007972;
              if (v15 != 0x6574746142776F6CLL)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 20:
              v16 = 0x80000002528E4EE0;
              if (v15 != 0xD000000000000015)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 21:
              v16 = 0x80000002528E4F00;
              if (v15 != 0xD000000000000012)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 22:
              v16 = 0x80000002528E4F20;
              if (v15 != 0xD000000000000015)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 23:
              v17 = 0x614A736C65656877;
              v16 = 0xEC00000064656D6DLL;
              goto LABEL_81;
            case 24:
              v20 = 0x6D614A6873757262;
              v21 = 6579565;
LABEL_74:
              v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              if (v15 != v20)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 25:
              v16 = 0x80000002528E4F50;
              if (v15 != 0xD000000000000018)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            case 26:
              if (v15 != 0x6E776F6E6B6E75)
              {
                goto LABEL_83;
              }

              goto LABEL_82;
            default:
LABEL_81:
              if (v15 != v17)
              {
                goto LABEL_83;
              }

LABEL_82:
              if (v14 == v16)
              {

                goto LABEL_4;
              }

LABEL_83:
              v23 = sub_2528C1060();

              if (v23)
              {
                goto LABEL_4;
              }

              v10 = (v10 + 1) & v9;
              v11 = v10 >> 6;
              v12 = *(v5 + 8 * (v10 >> 6));
              v13 = 1 << v10;
              if ((v12 & (1 << v10)) == 0)
              {
                goto LABEL_88;
              }

              break;
          }
        }
      }

LABEL_88:
      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      if (++v4 == v27)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_252743BB8(uint64_t a1)
{
  v2 = sub_2528C0570();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25274ABA0(&qword_27F4FC6C8, MEMORY[0x277D16AB0]);
  result = MEMORY[0x2530A82F0](v10, v2, v11);
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
      sub_252738F54(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_252743D54(uint64_t a1)
{
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
  result = MEMORY[0x2530A82F0](v10, v2, v11);
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
      sub_252739234(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_252743EF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530A82F0](v2, MEMORY[0x277D84D38], MEMORY[0x277D84D48]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_252739514(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_252743FCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530A82F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25273A0C4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_252744064(uint64_t a1)
{
  v2 = sub_2528BFDE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348]);
  result = MEMORY[0x2530A82F0](v10, v2, v11);
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
      sub_25273A32C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_252744200(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HMCharacteristicValueHeatingCooling(0);
  v4 = v3;
  v5 = sub_25274ABA0(&qword_27F4FC688, type metadata accessor for HMCharacteristicValueHeatingCooling);
  result = MEMORY[0x2530A82F0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_25273A8EC(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2527442AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530A82F0](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25273A9E4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_252744354(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x2530A82F0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_2527443D4(uint64_t a1)
{
  v2 = sub_2528BFCF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48]);
  result = MEMORY[0x2530A82F0](v10, v2, v11);
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
      sub_25273AF34(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_252744570(uint64_t a1)
{
  v2 = sub_2528BF3E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8A8, &qword_2528C4958);
    v10 = sub_2528C0E50();
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
      sub_25274ABA0(&qword_27F4FC8B0, MEMORY[0x277D15A40]);
      v18 = sub_2528C0900();
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
          sub_25274ABA0(&qword_27F4FC8B8, MEMORY[0x277D15A40]);
          v25 = sub_2528C0930();
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

uint64_t sub_252744890(uint64_t a1)
{
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC678, &qword_2528C4780);
    v10 = sub_2528C0E50();
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
      sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
      v18 = sub_2528C0900();
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
          sub_25274ABA0(&qword_27F4FC680, MEMORY[0x277CC95F0]);
          v25 = sub_2528C0930();
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

unint64_t sub_252744BB0()
{
  result = qword_27F4FC498;
  if (!qword_27F4FC498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC488, &unk_2528C3F80);
    sub_25274ABA0(&qword_27F4FC4A0, type metadata accessor for HomeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC498);
  }

  return result;
}

uint64_t sub_252744C64(uint64_t a1, char a2)
{
  *(v3 + 240) = a2;
  *(v3 + 40) = a1;
  v4 = *(*(sub_2528BEE30() - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_2528BFCE0();
  *(v3 + 56) = v5;
  v6 = *(v5 - 8);
  *(v3 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC4A8, &qword_2528C3FC0);
  *(v3 + 80) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v10 = type metadata accessor for SceneEntity();
  *(v3 + 104) = v10;
  v11 = *(v10 - 8);
  *(v3 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v13 = *(type metadata accessor for HomeEntity.SnapshotPair(0) - 8);
  *(v3 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v18 = swift_task_alloc();
  v19 = *v2;
  *(v3 + 160) = v18;
  *(v3 + 168) = v19;

  return MEMORY[0x2822009F8](sub_252744EFC, 0, 0);
}

uint64_t sub_252744EFC()
{
  v38 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_2528C08B0();
  v0[22] = __swift_project_value_buffer(v2, qword_27F5025C8);

  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136315138;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC890, &qword_2528C4940);
    v9 = MEMORY[0x2530A81A0](v5, v8);
    v11 = sub_2527389AC(v9, v10, &v37);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_252711000, v3, v4, "Searching for scenes with comparators: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v12 = v0[21];
  v13 = v0[5];
  v14 = sub_2528C0820();
  v15 = __swift_project_value_buffer(v14, qword_27F5025E0);
  v0[23] = v15;

  v16 = 1;
  v0[24] = sub_2528B919C(1u, 0, v15, v13);

  if (sub_2528BE9A0())
  {
    v17 = v0[20];
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v16 = 0;
  }

  v18 = v0[19];
  v19 = v0[20];
  v20 = v0[18];
  v21 = type metadata accessor for HomeEntity(0);
  (*(*(v21 - 8) + 56))(v19, v16, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v22 = sub_2528BF3E0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2528C17E0;
  v27 = v26 + v25;
  v28 = *(v23 + 104);
  v28(v27, *MEMORY[0x277D15A30], v22);
  *(v27 + v24) = 0;
  v28(v27 + v24, *MEMORY[0x277D15A28], v22);
  sub_252744570(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = *MEMORY[0x277D16520];
  v30 = sub_2528C00B0();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v20, v29, v30);
  (*(v31 + 56))(v20, 0, 1, v30);
  sub_2528C0590();
  v32 = sub_2528C05D0();
  (*(*(v32 - 8) + 56))(v18, 0, 1, v32);
  v33 = swift_task_alloc();
  v0[25] = v33;
  *v33 = v0;
  v33[1] = sub_252745400;
  v34 = v0[19];
  v35 = v0[20];

  return sub_25277ECE4(v35, 0, 1, v34);
}

uint64_t sub_252745400(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 208) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25274555C, 0, 0);
}

uint64_t sub_25274555C()
{
  v1 = *(v0 + 208);
  v55 = *(v0 + 128);
  v66 = *(v0 + 112);
  v75 = *(v0 + 80);
  v54 = v1 + 64;
  v2 = -1 << *(v1 + 32);
  if (-v2 < 64)
  {
    v3 = ~(-1 << -v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(v1 + 64);
  v53 = (63 - v2) >> 6;
  v62 = *(v0 + 64);
  v56 = *(v0 + 208);

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v61 = v0;
  while (1)
  {
    *(v0 + 216) = v7;
    if (!v4)
    {
      break;
    }

    v59 = v7;
LABEL_12:
    v57 = v6;
    v58 = v4;
    sub_25274A454(*(v56 + 56) + *(v55 + 72) * (__clz(__rbit64(v4)) | (v6 << 6)), *(v0 + 136), type metadata accessor for HomeEntity.SnapshotPair);
    v9 = sub_2528BF380();
    v10 = *(v9 + 16);
    if (v10)
    {
      v76 = MEMORY[0x277D84F90];
      sub_25282F020(0, v10, 0);
      v11 = v76;
      v12 = v9 + 64;
      v13 = -1 << *(v9 + 32);
      result = sub_2528C0E00();
      v14 = result;
      v15 = 0;
      v60 = v9 + 72;
      v63 = v10;
      v64 = v9;
      v65 = v9 + 64;
      while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v9 + 32))
      {
        if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_48;
        }

        v69 = v14 >> 6;
        v67 = v15;
        v68 = *(v9 + 36);
        v17 = *(v75 + 48);
        v72 = *(v0 + 136);
        v73 = *(v0 + 120);
        v74 = v11;
        v19 = *(v0 + 88);
        v18 = *(v0 + 96);
        v20 = *(v0 + 56);
        v70 = *(v0 + 72);
        v71 = *(v0 + 48);
        v21 = v9;
        v22 = *(v9 + 48);
        v23 = sub_2528BECF0();
        v24 = *(v23 - 8);
        (*(v24 + 16))(v18, v22 + *(v24 + 72) * v14, v23);
        v25 = *(v62 + 16);
        v25(v18 + v17, *(v21 + 56) + *(v62 + 72) * v14, v20);
        (*(v24 + 32))(v19, v18, v23);
        v26 = *(v75 + 48);
        (*(v62 + 32))(v19 + v26, v18 + v17, v20);
        v25(v70, v19 + v26, v20);
        sub_2528BF2F0();
        SceneEntity.init(staticActionSet:staticHome:)(v70, v71, v73);
        v27 = v19;
        v11 = v74;
        sub_2527213D8(v27, &qword_27F4FC4A8, &qword_2528C3FC0);
        v29 = *(v74 + 16);
        v28 = *(v74 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_25282F020(v28 > 1, v29 + 1, 1);
          v11 = v74;
        }

        v0 = v61;
        v30 = *(v61 + 120);
        *(v11 + 16) = v29 + 1;
        result = sub_25274AB38(v30, v11 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v29, type metadata accessor for SceneEntity);
        v9 = v64;
        v12 = v65;
        v16 = 1 << *(v64 + 32);
        if (v14 >= v16)
        {
          goto LABEL_49;
        }

        v31 = *(v65 + 8 * v69);
        if ((v31 & (1 << v14)) == 0)
        {
          goto LABEL_50;
        }

        if (v68 != *(v64 + 36))
        {
          goto LABEL_51;
        }

        v32 = v31 & (-2 << (v14 & 0x3F));
        if (v32)
        {
          v16 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v33 = v69 << 6;
          v34 = (v60 + 8 * v69);
          v35 = v69 + 1;
          while (v35 < (v16 + 63) >> 6)
          {
            v37 = *v34++;
            v36 = v37;
            v33 += 64;
            ++v35;
            if (v37)
            {
              result = sub_25271A63C(v14, v68, 0);
              v16 = __clz(__rbit64(v36)) + v33;
              goto LABEL_15;
            }
          }

          result = sub_25271A63C(v14, v68, 0);
        }

LABEL_15:
        v15 = v67 + 1;
        v14 = v16;
        if (v67 + 1 == v63)
        {

          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_32:
    sub_25274A4BC(*(v0 + 136), type metadata accessor for HomeEntity.SnapshotPair);
    v38 = *(v11 + 16);
    result = v59;
    v39 = v59[2];
    v40 = v39 + v38;
    if (__OFADD__(v39, v38))
    {
      goto LABEL_53;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v41 = v59;
    if (!result || v40 > v59[3] >> 1)
    {
      if (v39 <= v40)
      {
        v42 = v39 + v38;
      }

      else
      {
        v42 = v39;
      }

      result = sub_2527387D0(result, v42, 1, v59, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      v41 = result;
    }

    v4 = (v58 - 1) & v58;
    if (*(v11 + 16))
    {
      if ((v41[3] >> 1) - v41[2] < v38)
      {
        goto LABEL_55;
      }

      v43 = *(v0 + 104);
      v44 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v45 = *(v66 + 72);
      v7 = v41;
      swift_arrayInitWithCopy();

      v6 = v57;
      if (v38)
      {
        v46 = v7[2];
        v47 = __OFADD__(v46, v38);
        v48 = v46 + v38;
        if (v47)
        {
          goto LABEL_56;
        }

        v7[2] = v48;
      }
    }

    else
    {
      v7 = v41;

      v6 = v57;
      if (v38)
      {
        goto LABEL_54;
      }
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v53)
    {
      v49 = *(v0 + 208);
      v50 = *(v0 + 240);

      v51 = swift_task_alloc();
      *(v0 + 224) = v51;
      *v51 = v0;
      v51[1] = sub_252745BF0;
      v52 = *(v0 + 40);

      return (sub_2528ADF2C)(v52, v50 & 1, v7);
    }

    v4 = *(v54 + 8 * v8);
    ++v6;
    if (v4)
    {
      v59 = v7;
      v6 = v8;
      goto LABEL_12;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_252745BF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[28];
  v9 = *v2;
  v4[29] = v1;

  if (v1)
  {
    v6 = v4[27];

    v7 = sub_252745F2C;
  }

  else
  {
    v7 = sub_252745D14;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252745D14()
{
  v31 = v0;
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  sub_2528BAD54(1u, v2, v3, v1);

  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[27];
  v9 = v0[24];
  if (v7)
  {
    v10 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x2530A81A0](v8, v10);
    v15 = v14;

    v16 = sub_2527389AC(v13, v15, &v30);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_252711000, v5, v6, "Found sceneEntities: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x2530A8D80](v12, -1, -1);
    MEMORY[0x2530A8D80](v11, -1, -1);
  }

  else
  {
    v17 = v0[24];
  }

  v18 = v0[3];
  v20 = v0[19];
  v19 = v0[20];
  v22 = v0[17];
  v21 = v0[18];
  v23 = v0[15];
  v25 = v0[11];
  v24 = v0[12];
  v26 = v0[9];
  v27 = v0[6];

  v28 = v0[1];

  return v28(v18);
}

uint64_t sub_252745F2C()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v10 = v0[6];

  v11 = v0[1];
  v12 = v0[29];

  return v11();
}

unint64_t sub_2527460E8()
{
  result = qword_27F4FC4C8;
  if (!qword_27F4FC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC4C8);
  }

  return result;
}

unint64_t sub_25274625C()
{
  result = qword_27F4FC508;
  if (!qword_27F4FC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC508);
  }

  return result;
}

unint64_t sub_2527462B4()
{
  result = qword_27F4FC510;
  if (!qword_27F4FC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC510);
  }

  return result;
}

unint64_t sub_252746354()
{
  result = qword_27F4FC520;
  if (!qword_27F4FC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC520);
  }

  return result;
}

unint64_t sub_2527463AC()
{
  result = qword_27F4FC528;
  if (!qword_27F4FC528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC530, qword_2528C42F0);
    sub_25274ABA0(&qword_27F4FC4E0, type metadata accessor for SceneEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC528);
  }

  return result;
}

unint64_t sub_252746464()
{
  result = qword_27F4FC538;
  if (!qword_27F4FC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC538);
  }

  return result;
}

unint64_t sub_2527464BC()
{
  result = qword_27F4FC540;
  if (!qword_27F4FC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC540);
  }

  return result;
}

unint64_t sub_252746514()
{
  result = qword_27F4FC548;
  if (!qword_27F4FC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC548);
  }

  return result;
}

unint64_t sub_25274656C()
{
  result = qword_27F4FC550;
  if (!qword_27F4FC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC550);
  }

  return result;
}

unint64_t sub_252746608()
{
  result = qword_27F4FC568;
  if (!qword_27F4FC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC568);
  }

  return result;
}

unint64_t sub_25274665C()
{
  result = qword_27F4FC570;
  if (!qword_27F4FC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC570);
  }

  return result;
}

unint64_t sub_2527466B0()
{
  result = qword_27F4FC578;
  if (!qword_27F4FC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC578);
  }

  return result;
}

unint64_t sub_252746708()
{
  result = qword_27F4FC580;
  if (!qword_27F4FC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC580);
  }

  return result;
}

unint64_t sub_2527467A4()
{
  result = qword_27F4FC598;
  if (!qword_27F4FC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC598);
  }

  return result;
}

void sub_252746820()
{
  sub_2527468B0();
  if (v0 <= 0x3F)
  {
    sub_2528BECF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2527468B0()
{
  if (!qword_28151F358)
  {
    sub_25274690C();
    v0 = sub_2528BE770();
    if (!v1)
    {
      atomic_store(v0, &qword_28151F358);
    }
  }
}

unint64_t sub_25274690C()
{
  result = qword_28151F350;
  if (!qword_28151F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151F350);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_2528BEA50();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_2528BEA50();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SceneEntityQuery(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SceneEntityQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_252746AD4()
{
  result = qword_27F4FC5B0;
  if (!qword_27F4FC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5B0);
  }

  return result;
}

unint64_t sub_252746B28()
{
  result = qword_27F4FC5C0;
  if (!qword_27F4FC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5C0);
  }

  return result;
}

unint64_t sub_252746B7C()
{
  result = qword_27F4FC5D0;
  if (!qword_27F4FC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5D0);
  }

  return result;
}

unint64_t sub_252746BD0()
{
  result = qword_27F4FC5D8;
  if (!qword_27F4FC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5D8);
  }

  return result;
}

unint64_t sub_252746C24()
{
  result = qword_27F4FC5E0;
  if (!qword_27F4FC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5E0);
  }

  return result;
}

unint64_t sub_252746C78()
{
  result = qword_27F4FC5F8;
  if (!qword_27F4FC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC5F8);
  }

  return result;
}

unint64_t sub_252746CCC()
{
  result = qword_27F4FC600;
  if (!qword_27F4FC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC600);
  }

  return result;
}

unint64_t sub_252746D20()
{
  result = qword_27F4FC608;
  if (!qword_27F4FC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC608);
  }

  return result;
}

uint64_t sub_252746D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_2528BEE30() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_2528BFCE0();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v9 = type metadata accessor for SceneEntity();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC4A8, &qword_2528C3FC0);
  v3[15] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v14 = *(type metadata accessor for HomeEntity.SnapshotPair(0) - 8);
  v3[17] = v14;
  v15 = *(v14 + 64) + 15;
  v3[18] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v3[21] = v18;
  v3[22] = *(v18 + 64);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252747080, 0, 0);
}

uint64_t sub_252747080()
{
  v36 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v0[24] = __swift_project_value_buffer(v2, qword_27F5025C8);

  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2527389AC(v6, v5, &v35);
    _os_log_impl(&dword_252711000, v3, v4, "Searching for scenes with name: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  v33 = v0[19];
  v34 = v0[20];
  v13 = v0[3];
  v12 = v0[4];
  v14 = v0[2];
  v15 = sub_2528C0820();
  v0[25] = __swift_project_value_buffer(v15, qword_27F5025E0);
  sub_25272006C(v12, v9, &qword_27F4FC488, &unk_2528C3F80);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v13;
  sub_25274AA0C(v9, v17 + v16, &qword_27F4FC488, &unk_2528C3F80);

  v0[26] = sub_2528B73C8(1u, 1, sub_25274AA74);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v18 = sub_2528BF3E0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2528C17E0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x277D15A30], v18);
  *(v23 + v20) = 0;
  v24(v23 + v20, *MEMORY[0x277D15A28], v18);
  sub_252744570(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = *MEMORY[0x277D16520];
  v26 = sub_2528C00B0();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v33, v25, v26);
  (*(v27 + 56))(v33, 0, 1, v26);
  sub_2528C0590();
  v28 = sub_2528C05D0();
  (*(*(v28 - 8) + 56))(v34, 0, 1, v28);
  v29 = swift_task_alloc();
  v0[27] = v29;
  *v29 = v0;
  v29[1] = sub_252747558;
  v30 = v0[20];
  v31 = v0[4];

  return sub_25277ECE4(v31, 0, 0, v30);
}

uint64_t sub_252747558(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 224) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_252747688, 0, 0);
}

uint64_t sub_252747688()
{
  v96 = v0;
  v1 = v0[28];
  v80 = v0[17];
  v88 = v0[15];
  v2 = v0[12];
  v3 = v1 + 64;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (63 - v4) >> 6;
  v87 = v0[7];
  v95 = MEMORY[0x277D84F90];
  v77 = v2;
  v85 = (v2 + 48);
  v86 = (v2 + 56);
  v81 = v1;

  v9 = 0;
  v78 = v7;
  v79 = v3;
LABEL_6:
  if (v6)
  {
    v11 = v9;
  }

  else
  {
    do
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_42;
      }

      if (v11 >= v7)
      {
        v49 = v0[28];
        v51 = v0[25];
        v50 = v0[26];
        v52 = v0[24];
        v53 = v0[3];

        v54 = v95;

        sub_2528BAD54(1u, v50, v51, v95);

        v55 = sub_2528C0890();
        v56 = sub_2528C0D10();

        v57 = os_log_type_enabled(v55, v56);
        v58 = v0[26];
        v94 = v95;
        if (v57)
        {
          v59 = v0[11];
          v60 = v0[2];
          v92 = v0[3];
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v95 = v62;
          *v61 = 136315394;
          v63 = MEMORY[0x2530A81A0](v54, v59);
          v65 = sub_2527389AC(v63, v64, &v95);

          *(v61 + 4) = v65;
          *(v61 + 12) = 2080;
          *(v61 + 14) = sub_2527389AC(v60, v92, &v95);
          _os_log_impl(&dword_252711000, v55, v56, "Found sceneEntities: %s for name: %s", v61, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v62, -1, -1);
          MEMORY[0x2530A8D80](v61, -1, -1);
        }

        v66 = v0[23];
        v68 = v0[19];
        v67 = v0[20];
        v69 = v0[18];
        v70 = v0[16];
        v72 = v0[13];
        v71 = v0[14];
        v74 = v0[9];
        v73 = v0[10];
        v75 = v0[8];
        v93 = v0[5];

        v76 = v0[1];

        return v76(v94);
      }

      v6 = *(v3 + 8 * v11);
      ++v9;
    }

    while (!v6);
  }

  v82 = v11;
  v83 = (v6 - 1) & v6;
  sub_25274A454(*(v81 + 56) + *(v80 + 72) * (__clz(__rbit64(v6)) | (v11 << 6)), v0[18], type metadata accessor for HomeEntity.SnapshotPair);
  v12 = sub_2528BF380();
  v13 = v12 + 64;
  v14 = -1 << *(v12 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v17 = (63 - v14) >> 6;
  v91 = v12;

  v18 = 0;
  v84 = MEMORY[0x277D84F90];
  v89 = v17;
  v90 = v13;
LABEL_15:
  v19 = v18;
  if (!v16)
  {
    goto LABEL_17;
  }

  do
  {
    v18 = v19;
LABEL_20:
    v20 = v0[16];
    v21 = v0[6];
    v23 = v0[2];
    v22 = v0[3];
    v24 = __clz(__rbit64(v16)) | (v18 << 6);
    v25 = *(v91 + 48);
    v26 = sub_2528BECF0();
    (*(*(v26 - 8) + 16))(v20, v25 + *(*(v26 - 8) + 72) * v24, v26);
    v27 = *(v91 + 56) + *(v87 + 72) * v24;
    v28 = *(v88 + 48);
    v29 = *(v87 + 16);
    v29(v20 + v28, v27, v21);
    if (sub_2528BFCB0() == v23 && v30 == v22)
    {
    }

    else
    {
      v32 = v0[2];
      v33 = v0[3];
      v34 = sub_2528C1060();

      if ((v34 & 1) == 0)
      {
        v35 = 1;
        goto LABEL_28;
      }
    }

    v36 = v0[18];
    v38 = v0[8];
    v37 = v0[9];
    v39 = v0[5];
    v29(v38, v20 + v28, v0[6]);
    sub_2528BF2F0();
    SceneEntity.init(staticActionSet:staticHome:)(v38, v39, v37);
    v35 = 0;
LABEL_28:
    v16 &= v16 - 1;
    v40 = v0[16];
    v42 = v0[10];
    v41 = v0[11];
    v43 = v0[9];
    (*v86)(v43, v35, 1, v41);
    sub_25274AA0C(v43, v42, &qword_27F4FC470, &unk_2528CDE00);
    sub_2527213D8(v40, &qword_27F4FC4A8, &qword_2528C3FC0);
    if ((*v85)(v42, 1, v41) != 1)
    {
      v44 = v0[13];
      v45 = v0[14];
      sub_25274AB38(v0[10], v45, type metadata accessor for SceneEntity);
      sub_25274AB38(v45, v44, type metadata accessor for SceneEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_2527387D0(0, v84[2] + 1, 1, v84, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v47 = v84[2];
      v46 = v84[3];
      if (v47 >= v46 >> 1)
      {
        v84 = sub_2527387D0(v46 > 1, v47 + 1, 1, v84, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v48 = v0[13];
      v84[2] = v47 + 1;
      result = sub_25274AB38(v48, v84 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v47, type metadata accessor for SceneEntity);
      v17 = v89;
      v13 = v90;
      goto LABEL_15;
    }

    result = sub_2527213D8(v0[10], &qword_27F4FC470, &unk_2528CDE00);
    v19 = v18;
    v17 = v89;
    v13 = v90;
  }

  while (v16);
LABEL_17:
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v10 = v0[18];

      sub_25274A4BC(v10, type metadata accessor for HomeEntity.SnapshotPair);
      result = sub_252735C84(v84, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity, type metadata accessor for SceneEntity);
      v9 = v82;
      v6 = v83;
      v7 = v78;
      v3 = v79;
      goto LABEL_6;
    }

    v16 = *(v13 + 8 * v18);
    ++v19;
    if (v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_252747DF8(_BYTE *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v4 = *(*(sub_2528BEE30() - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  v5 = sub_2528BFCE0();
  *(v2 + 32) = v5;
  v6 = *(v5 - 8);
  *(v2 + 40) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v8 = sub_2528C0CD0();
  *(v2 + 56) = v8;
  v9 = *(v8 - 8);
  *(v2 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC838, &qword_2528C48F0);
  *(v2 + 80) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBBC0, &qword_2528C1800) - 8) + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00) - 8) + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  v15 = type metadata accessor for SceneEntity();
  *(v2 + 144) = v15;
  v16 = *(v15 - 8);
  *(v2 + 152) = v16;
  v17 = *(v16 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC4A8, &qword_2528C3FC0);
  *(v2 + 176) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v20 = *(type metadata accessor for HomeEntity.SnapshotPair(0) - 8);
  *(v2 + 192) = v20;
  v21 = *(v20 + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  *(v2 + 224) = v24;
  *(v2 + 232) = *(v24 + 64);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 280) = *a1;

  return MEMORY[0x2822009F8](sub_252748200, 0, 0);
}

uint64_t sub_252748200()
{
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v25 = *(v0 + 216);
  v5 = *(v0 + 208);
  v6 = *(v0 + 16);
  v7 = sub_2528C0820();
  *(v0 + 248) = __swift_project_value_buffer(v7, qword_27F5025E0);
  sub_25272006C(v6, v2, &qword_27F4FC488, &unk_2528C3F80);
  v8 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_25274AA0C(v2, v9 + v8, &qword_27F4FC488, &unk_2528C3F80);
  *(v0 + 256) = sub_2528B73C8(1u, 1, sub_25274A99C);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v10 = sub_2528BF3E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2528C17E0;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x277D15A30], v10);
  *(v15 + v12) = 0;
  v16(v15 + v12, *MEMORY[0x277D15A28], v10);
  sub_252744570(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v17 = *MEMORY[0x277D16520];
  v18 = sub_2528C00B0();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v5, v17, v18);
  (*(v19 + 56))(v5, 0, 1, v18);
  sub_2528C0590();
  v20 = sub_2528C05D0();
  (*(*(v20 - 8) + 56))(v25, 0, 1, v20);
  v21 = swift_task_alloc();
  *(v0 + 264) = v21;
  *v21 = v0;
  v21[1] = sub_2527485B4;
  v22 = *(v0 + 216);
  v23 = *(v0 + 16);

  return sub_25277ECE4(v23, 0, 0, v22);
}

uint64_t sub_2527485B4(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 272) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2527486E4, 0, 0);
}

uint64_t sub_2527486E4()
{
  v145 = v0;
  v2 = *(v0 + 272);
  v108 = *(v0 + 192);
  v127 = *(v0 + 176);
  v3 = *(v0 + 152);
  v126 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v144[0] = MEMORY[0x277D84F90];
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  v10 = (63 - v7) >> 6;
  v125 = v5;
  v124 = (v4 + 56);
  v105 = *MEMORY[0x277D16EF8];
  v120 = (v4 + 104);
  v104 = *MEMORY[0x277D16F38];
  v118 = *MEMORY[0x277D16F28];
  v111 = *MEMORY[0x277D16F10];
  v117 = *MEMORY[0x277D16EF0];
  v109 = v2;
  v110 = (v4 + 32);
  v116 = (v4 + 8);
  v122 = (v3 + 56);
  v123 = (v4 + 48);
  v103 = v3;
  v121 = (v3 + 48);

  v11 = 0;
  v12 = &qword_27F4FBBC0;
  v106 = v10;
  v107 = v6;
LABEL_6:
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    do
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_68;
      }

      if (v14 >= v10)
      {
        v65 = *(v0 + 272);
        v67 = *(v0 + 248);
        v66 = *(v0 + 256);

        v1 = v144[0];

        sub_2528BAD54(1u, v66, v67, v144[0]);

        if (qword_27F4FBB40 != -1)
        {
          goto LABEL_69;
        }

        goto LABEL_47;
      }

      v9 = *(v6 + 8 * v14);
      ++v11;
    }

    while (!v9);
  }

  v112 = v14;
  v113 = (v9 - 1) & v9;
  sub_25274A454(*(v109 + 56) + *(v108 + 72) * (__clz(__rbit64(v9)) | (v14 << 6)), *(v0 + 200), type metadata accessor for HomeEntity.SnapshotPair);
  v15 = sub_2528BF380();
  v16 = v15 + 64;
  v17 = -1 << *(v15 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v15 + 64);
  v20 = (63 - v17) >> 6;
  v135 = v15;

  v21 = 0;
  v119 = MEMORY[0x277D84F90];
  v128 = v20;
  v130 = v16;
LABEL_15:
  v22 = v21;
  if (!v19)
  {
    goto LABEL_17;
  }

  do
  {
    v21 = v22;
LABEL_20:
    v23 = *(v0 + 280);
    v24 = *(v0 + 184);
    v25 = *(v0 + 32);
    v26 = __clz(__rbit64(v19)) | (v21 << 6);
    v27 = *(v135 + 48);
    v28 = sub_2528BECF0();
    (*(*(v28 - 8) + 16))(v24, v27 + *(*(v28 - 8) + 72) * v26, v28);
    v140 = *(v127 + 48);
    v142 = v24;
    v132 = *(v125 + 16);
    v132(v24 + v140, *(v135 + 56) + *(v125 + 72) * v26, v25);
    if (v23 <= 2)
    {
      v29 = v117;
      if (v23)
      {
        v29 = v111;
        if (v23 != 1)
        {
          v29 = v104;
        }
      }

      goto LABEL_27;
    }

    v29 = v118;
    if (v23 == 3)
    {
      goto LABEL_27;
    }

    if (v23 == 4)
    {
      v29 = v105;
LABEL_27:
      (*v120)(*(v0 + 112), v29, *(v0 + 56));
      v30 = 0;
      goto LABEL_28;
    }

    v30 = 1;
LABEL_28:
    v32 = *(v0 + 112);
    v31 = *(v0 + 120);
    v33 = *(v0 + 104);
    v34 = *(v0 + 88);
    v35 = *(v0 + 56);
    (*v124)(v32, v30, 1, v35);
    sub_25274AA0C(v32, v31, v12, &qword_2528C1800);
    sub_2528BFC80();
    v36 = *(v126 + 48);
    sub_25272006C(v31, v34, v12, &qword_2528C1800);
    v137 = v36;
    sub_25272006C(v33, v34 + v36, v12, &qword_2528C1800);
    v37 = v12;
    v38 = *v123;
    v39 = (*v123)(v34, 1, v35);
    v40 = *(v0 + 56);
    if (v39 == 1)
    {
      v41 = *(v0 + 120);
      sub_2527213D8(*(v0 + 104), v37, &qword_2528C1800);
      sub_2527213D8(v41, v37, &qword_2528C1800);
      v42 = v38(v34 + v137, 1, v40);
      v12 = v37;
      if (v42 != 1)
      {
        goto LABEL_33;
      }

      sub_2527213D8(*(v0 + 88), v37, &qword_2528C1800);
      v1 = &unk_2528CDE00;
LABEL_35:
      v52 = *(v0 + 200);
      v53 = *(v0 + 128);
      v54 = *(v0 + 48);
      v55 = *(v0 + 24);
      v132(v54, v142 + v140, *(v0 + 32));
      sub_2528BF2F0();
      SceneEntity.init(staticActionSet:staticHome:)(v54, v55, v53);
      v48 = 0;
      goto LABEL_38;
    }

    sub_25272006C(*(v0 + 88), *(v0 + 96), v37, &qword_2528C1800);
    v43 = v38(v34 + v137, 1, v40);
    v44 = *(v0 + 120);
    v45 = *(v0 + 96);
    v46 = *(v0 + 104);
    if (v43 == 1)
    {
      v47 = *(v0 + 56);
      sub_2527213D8(*(v0 + 104), v37, &qword_2528C1800);
      sub_2527213D8(v44, v37, &qword_2528C1800);
      (*v116)(v45, v47);
      v12 = v37;
LABEL_33:
      sub_2527213D8(*(v0 + 88), &qword_27F4FC838, &qword_2528C48F0);
      v48 = 1;
      v1 = &unk_2528CDE00;
      goto LABEL_38;
    }

    v114 = *(v0 + 120);
    v115 = *(v0 + 88);
    v49 = *(v0 + 72);
    v50 = *(v0 + 56);
    (*v110)(v49, v34 + v137, v50);
    sub_25274ABA0(&qword_27F4FC840, MEMORY[0x277D16F40]);
    v138 = sub_2528C0930();
    v51 = *v116;
    (*v116)(v49, v50);
    sub_2527213D8(v46, v37, &qword_2528C1800);
    sub_2527213D8(v114, v37, &qword_2528C1800);
    v51(v45, v50);
    sub_2527213D8(v115, v37, &qword_2528C1800);
    v12 = v37;
    v1 = &unk_2528CDE00;
    if (v138)
    {
      goto LABEL_35;
    }

    v48 = 1;
LABEL_38:
    v19 &= v19 - 1;
    v56 = *(v0 + 184);
    v58 = *(v0 + 136);
    v57 = *(v0 + 144);
    v59 = *(v0 + 128);
    (*v122)(v59, v48, 1, v57);
    sub_25274AA0C(v59, v58, &qword_27F4FC470, &unk_2528CDE00);
    sub_2527213D8(v56, &qword_27F4FC4A8, &qword_2528C3FC0);
    if ((*v121)(v58, 1, v57) != 1)
    {
      v60 = *(v0 + 160);
      v61 = *(v0 + 168);
      sub_25274AB38(*(v0 + 136), v61, type metadata accessor for SceneEntity);
      sub_25274AB38(v61, v60, type metadata accessor for SceneEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = sub_2527387D0(0, v119[2] + 1, 1, v119, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v63 = v119[2];
      v62 = v119[3];
      if (v63 >= v62 >> 1)
      {
        v119 = sub_2527387D0(v62 > 1, v63 + 1, 1, v119, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v64 = *(v0 + 160);
      v119[2] = v63 + 1;
      sub_25274AB38(v64, v119 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v63, type metadata accessor for SceneEntity);
      v20 = v128;
      v16 = v130;
      goto LABEL_15;
    }

    sub_2527213D8(*(v0 + 136), &qword_27F4FC470, &unk_2528CDE00);
    v22 = v21;
    v20 = v128;
    v16 = v130;
  }

  while (v19);
LABEL_17:
  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
      v13 = *(v0 + 200);

      sub_25274A4BC(v13, type metadata accessor for HomeEntity.SnapshotPair);
      sub_252735C84(v119, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity, type metadata accessor for SceneEntity);
      v11 = v112;
      v9 = v113;
      v10 = v106;
      v6 = v107;
      goto LABEL_6;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  swift_once();
LABEL_47:
  v68 = sub_2528C08B0();
  __swift_project_value_buffer(v68, qword_27F5025C8);

  v69 = sub_2528C0890();
  v70 = sub_2528C0D10();

  v143 = v1;
  if (os_log_type_enabled(v69, v70))
  {
    v71 = *(v0 + 280);
    v72 = *(v0 + 144);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v144[0] = v74;
    *v73 = 136315394;
    v75 = MEMORY[0x2530A81A0](v1, v72);
    v77 = sub_2527389AC(v75, v76, v144);

    v78 = 0xEB000000006C6176;
    *(v73 + 4) = v77;
    v79 = 0x69727241656D6F68;
    v80 = 0xE500000000000000;
    *(v73 + 12) = 2080;
    v81 = 0x7065656C73;
    v82 = 0xEB0000000064656ELL;
    v83 = 0x6966654472657375;
    if (v71 != 4)
    {
      v83 = 1701736302;
      v82 = 0xE400000000000000;
    }

    if (v71 != 3)
    {
      v81 = v83;
      v80 = v82;
    }

    v84 = 0xED00006572757472;
    v85 = 0x61706544656D6F68;
    if (v71 != 1)
    {
      v85 = 0x7055656B6177;
      v84 = 0xE600000000000000;
    }

    if (v71)
    {
      v79 = v85;
      v78 = v84;
    }

    if (v71 <= 2)
    {
      v86 = v79;
    }

    else
    {
      v86 = v81;
    }

    if (v71 <= 2)
    {
      v87 = v78;
    }

    else
    {
      v87 = v80;
    }

    v88 = *(v0 + 256);
    v89 = sub_2527389AC(v86, v87, v144);

    *(v73 + 14) = v89;
    _os_log_impl(&dword_252711000, v69, v70, "Found sceneEntities: %s for sceneType: %s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v74, -1, -1);
    MEMORY[0x2530A8D80](v73, -1, -1);
  }

  else
  {
    v90 = *(v0 + 256);
  }

  v91 = *(v0 + 240);
  v93 = *(v0 + 208);
  v92 = *(v0 + 216);
  v94 = *(v0 + 200);
  v95 = *(v0 + 184);
  v96 = *(v0 + 160);
  v97 = *(v0 + 168);
  v99 = *(v0 + 128);
  v98 = *(v0 + 136);
  v100 = *(v0 + 120);
  v129 = *(v0 + 112);
  v131 = *(v0 + 104);
  v133 = *(v0 + 96);
  v134 = *(v0 + 88);
  v136 = *(v0 + 72);
  v139 = *(v0 + 48);
  v141 = *(v0 + 24);

  v101 = *(v0 + 8);

  return v101(v143);
}

uint64_t sub_252749330(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SceneEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = sub_2528BEC40();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = *a2;
  v14 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC708, &qword_2528C47D8);
  sub_2528BEC20();
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity);
  v15 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC710, &unk_2528C47E0);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25274A400();
  sub_2528BE700();
  sub_25274A454(a1, v10, type metadata accessor for SceneEntity);
  sub_25274A454(v10, v8, type metadata accessor for SceneEntity);
  sub_2528BEA50();
  sub_2528BE6C0();
  sub_25274A4BC(v10, type metadata accessor for SceneEntity);
  v17 = v13;
  v18 = v14;
  sub_2528BE6C0();
  sub_25274A4BC(a1, type metadata accessor for SceneEntity);

  return v15;
}

uint64_t sub_252749584()
{
  v0 = type metadata accessor for SceneEntity();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - v5);
  v7 = sub_2528BEC40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC708, &qword_2528C47D8);
  sub_2528BEC20();
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity);
  v9 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC710, &unk_2528C47E0);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25274A400();
  sub_2528BE700();
  sub_2528BEA50();
  sub_2527305D0(v6);
  sub_25274A454(v6, v4, type metadata accessor for SceneEntity);
  sub_2528BE6C0();
  sub_25274A4BC(v6, type metadata accessor for SceneEntity);

  return v9;
}

uint64_t sub_252749788(uint64_t a1)
{
  v2 = sub_2528BFDE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC790, &qword_2528C4858);
    v10 = sub_2528C0E50();
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
      sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348]);
      v18 = sub_2528C0900();
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
          sub_25274ABA0(&qword_27F4FC7A0, MEMORY[0x277D16348]);
          v25 = sub_2528C0930();
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

uint64_t sub_252749AA8(uint64_t a1)
{
  v2 = sub_2528BFCF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC648, &qword_2528C4760);
    v10 = sub_2528C0E50();
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
      sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48]);
      v18 = sub_2528C0900();
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
          sub_25274ABA0(&qword_27F4FC640, MEMORY[0x277D15F48]);
          v25 = sub_2528C0930();
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

uint64_t sub_252749DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC850, &unk_2528D3C30);
    v3 = sub_2528C0E50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2528C1130();

      sub_2528C0A40();
      result = sub_2528C1180();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2528C1060();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_252749F30(uint64_t a1)
{
  v2 = sub_2528C0770();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC660, &qword_2528C4778);
    v10 = sub_2528C0E50();
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
      sub_25274ABA0(&qword_27F4FC668, MEMORY[0x277D16E98]);
      v18 = sub_2528C0900();
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
          sub_25274ABA0(&qword_27F4FC670, MEMORY[0x277D16E98]);
          v25 = sub_2528C0930();
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

uint64_t sub_25274A250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC630, &qword_2528C4758);
    v3 = sub_2528C0E50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 2 * v4);
      v19 = v10;
      v11 = *(v3 + 40);
      v18[38] = v10;
      sub_2528C1130();
      DeviceType.hash(into:)();
      result = sub_2528C1180();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      if ((v17 & v16) != 0)
      {
        while (1)
        {
          v18[0] = *(*(v3 + 48) + 2 * v14);
          result = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v18, &v19);
          if (result)
          {
            break;
          }

          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v10 = v19;
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 2 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_25274A3AC()
{
  result = qword_27F4FC6F0;
  if (!qword_27F4FC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC6F0);
  }

  return result;
}

unint64_t sub_25274A400()
{
  result = qword_27F4FC718;
  if (!qword_27F4FC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC718);
  }

  return result;
}

uint64_t sub_25274A454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25274A4BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25274A51C()
{
  result = qword_27F4FC770;
  if (!qword_27F4FC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC770);
  }

  return result;
}

unint64_t sub_25274A570()
{
  result = qword_27F4FC7E8;
  if (!qword_27F4FC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC7E8);
  }

  return result;
}

uint64_t sub_25274A5C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC800, &qword_2528C48B8);
    v3 = sub_2528C0E50();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    while (1)
    {
      v6 = *(v26 + v4);
      v27 = v4 + 1;
      v7 = *(v3 + 40);
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        do
        {
          v14 = *(*(v3 + 48) + v10);
          if (v14 > 2)
          {
            v16 = 0xE400000000000000;
            if (v14 == 3)
            {
              v15 = 1701670760;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }

            else if (v14 == 4)
            {
              v15 = 1836019570;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v15 = 1701736314;
              if (v6 > 2)
              {
                goto LABEL_35;
              }
            }
          }

          else if (*(*(v3 + 48) + v10))
          {
            if (v14 == 1)
            {
              v15 = 0x7954656369766564;
            }

            else
            {
              v15 = 0x70756F7267;
            }

            if (v14 == 1)
            {
              v16 = 0xEA00000000006570;
            }

            else
            {
              v16 = 0xE500000000000000;
            }

            if (v6 > 2)
            {
LABEL_35:
              v19 = 1836019570;
              if (v6 != 4)
              {
                v19 = 1701736314;
              }

              if (v6 == 3)
              {
                v20 = 1701670760;
              }

              else
              {
                v20 = v19;
              }

              v18 = 0xE400000000000000;
              if (v15 != v20)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            }
          }

          else
          {
            v15 = 0x614E656369766564;
            v16 = 0xEA0000000000656DLL;
            if (v6 > 2)
            {
              goto LABEL_35;
            }
          }

          if (v6)
          {
            if (v6 == 1)
            {
              v17 = 0x7954656369766564;
            }

            else
            {
              v17 = 0x70756F7267;
            }

            if (v6 == 1)
            {
              v18 = 0xEA00000000006570;
            }

            else
            {
              v18 = 0xE500000000000000;
            }

            if (v15 != v17)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v18 = 0xEA0000000000656DLL;
            if (v15 != 0x614E656369766564)
            {
              goto LABEL_42;
            }
          }

LABEL_41:
          if (v16 == v18)
          {

            goto LABEL_4;
          }

LABEL_42:
          v21 = sub_2528C1060();

          if (v21)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(v3 + 16) = v24;
LABEL_4:
      v4 = v27;
      if (v27 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_25274A948()
{
  result = qword_27F4FC808;
  if (!qword_27F4FC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC808);
  }

  return result;
}

uint64_t sub_25274A99C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_252734008(v2);
}

uint64_t sub_25274AA0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25274AA74()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_252733ED0(v2, v3, v4);
}

unint64_t sub_25274AAE4()
{
  result = qword_27F4FC878;
  if (!qword_27F4FC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC878);
  }

  return result;
}

uint64_t sub_25274AB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25274ABA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25274AC0C()
{
  result = qword_27F4FC910;
  if (!qword_27F4FC910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC908, &qword_2528C4A40);
    sub_25274AC98();
    sub_25274AD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC910);
  }

  return result;
}

unint64_t sub_25274AC98()
{
  result = qword_27F4FC918;
  if (!qword_27F4FC918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC8F8, &qword_2528C4A10);
    sub_25272275C(&qword_27F4FC920, &qword_27F4FC8F0, &qword_2528C4A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC918);
  }

  return result;
}

unint64_t sub_25274AD48()
{
  result = qword_27F4FC928;
  if (!qword_27F4FC928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC8E8, &qword_2528C4A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC928);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SceneOutcome(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SceneOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25274AF14(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_25274AF2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_25274AF58()
{
  result = qword_27F4FC968;
  if (!qword_27F4FC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC968);
  }

  return result;
}

unint64_t sub_25274AFB0()
{
  result = qword_27F4FC970;
  if (!qword_27F4FC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC970);
  }

  return result;
}

unint64_t sub_25274B008()
{
  result = qword_27F4FC978;
  if (!qword_27F4FC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC978);
  }

  return result;
}

unint64_t sub_25274B05C()
{
  result = qword_27F4FC980;
  if (!qword_27F4FC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC980);
  }

  return result;
}

unint64_t sub_25274B0B4()
{
  result = qword_27F4FC988;
  if (!qword_27F4FC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC988);
  }

  return result;
}

unint64_t sub_25274B10C()
{
  result = qword_27F4FC990;
  if (!qword_27F4FC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC990);
  }

  return result;
}

unint64_t sub_25274B164()
{
  result = qword_27F4FC998;
  if (!qword_27F4FC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC998);
  }

  return result;
}

unint64_t sub_25274B1BC()
{
  result = qword_27F4FC9A0;
  if (!qword_27F4FC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9A0);
  }

  return result;
}

unint64_t sub_25274B258()
{
  result = qword_27F4FC9B8;
  if (!qword_27F4FC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9B8);
  }

  return result;
}

unint64_t sub_25274B2B0()
{
  result = qword_27F4FC9C0;
  if (!qword_27F4FC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9C0);
  }

  return result;
}

unint64_t sub_25274B308()
{
  result = qword_27F4FC9C8;
  if (!qword_27F4FC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9C8);
  }

  return result;
}

unint64_t sub_25274B360()
{
  result = qword_27F4FC9D0;
  if (!qword_27F4FC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9D0);
  }

  return result;
}

unint64_t sub_25274B3B4()
{
  result = qword_27F4FC9D8;
  if (!qword_27F4FC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9D8);
  }

  return result;
}

unint64_t sub_25274B40C()
{
  result = qword_27F4FC9E0;
  if (!qword_27F4FC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9E0);
  }

  return result;
}

unint64_t sub_25274B464()
{
  result = qword_27F4FC9E8;
  if (!qword_27F4FC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9E8);
  }

  return result;
}

unint64_t sub_25274B4BC()
{
  result = qword_27F4FC9F0;
  if (!qword_27F4FC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9F0);
  }

  return result;
}

unint64_t sub_25274B514()
{
  result = qword_27F4FC9F8;
  if (!qword_27F4FC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC9F8);
  }

  return result;
}

unint64_t sub_25274B5B0()
{
  result = qword_27F4FCA10;
  if (!qword_27F4FCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA10);
  }

  return result;
}

unint64_t sub_25274B608()
{
  result = qword_27F4FCA18;
  if (!qword_27F4FCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA18);
  }

  return result;
}

unint64_t sub_25274B660()
{
  result = qword_27F4FCA20;
  if (!qword_27F4FCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA20);
  }

  return result;
}

unint64_t sub_25274B6B8()
{
  result = qword_27F4FCA28;
  if (!qword_27F4FCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA28);
  }

  return result;
}

unint64_t sub_25274B70C()
{
  result = qword_27F4FCA30;
  if (!qword_27F4FCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA30);
  }

  return result;
}

unint64_t sub_25274B764()
{
  result = qword_27F4FCA38;
  if (!qword_27F4FCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA38);
  }

  return result;
}

unint64_t sub_25274B7BC()
{
  result = qword_27F4FCA40;
  if (!qword_27F4FCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA40);
  }

  return result;
}

unint64_t sub_25274B814()
{
  result = qword_27F4FCA48;
  if (!qword_27F4FCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA48);
  }

  return result;
}

unint64_t sub_25274B86C()
{
  result = qword_27F4FCA50;
  if (!qword_27F4FCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA50);
  }

  return result;
}

unint64_t sub_25274B908()
{
  result = qword_27F4FCA68;
  if (!qword_27F4FCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA68);
  }

  return result;
}

unint64_t sub_25274B960()
{
  result = qword_27F4FCA70;
  if (!qword_27F4FCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA70);
  }

  return result;
}

unint64_t sub_25274B9B8()
{
  result = qword_27F4FCA78;
  if (!qword_27F4FCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA78);
  }

  return result;
}

unint64_t sub_25274BA10()
{
  result = qword_27F4FCA80;
  if (!qword_27F4FCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCA80);
  }

  return result;
}

unint64_t sub_25274BB30()
{
  result = qword_27F4FCAB8;
  if (!qword_27F4FCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCAB8);
  }

  return result;
}

unint64_t sub_25274BB84()
{
  result = qword_27F4FCAC0;
  if (!qword_27F4FCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCAC0);
  }

  return result;
}

unint64_t sub_25274BBD8()
{
  result = qword_27F4FCAC8;
  if (!qword_27F4FCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCAC8);
  }

  return result;
}

uint64_t CameraClipEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CameraClipEntity.id.setter(uint64_t a1)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CameraClipEntity.cameraProfileID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CameraClipEntity() + 20);
  v4 = sub_2528BECF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CameraClipEntity()
{
  result = qword_27F4FCBB0;
  if (!qword_27F4FCBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CameraClipEntity.cameraProfileID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CameraClipEntity() + 20);
  v4 = sub_2528BECF0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25274BF50()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FCAD0);
  __swift_project_value_buffer(v0, qword_27F4FCAD0);
  return sub_2528BE9D0();
}

uint64_t static CameraClipEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB630 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAD0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CameraClipEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27F4FB630 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAD0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CameraClipEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27F4FB630 != -1)
  {
    swift_once();
  }

  v0 = sub_2528BE9F0();
  __swift_project_value_buffer(v0, qword_27F4FCAD0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25274C1EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB630 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAD0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25274C2AC(uint64_t a1)
{
  if (qword_27F4FB630 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAD0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_25274C3A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_25274C410(uint64_t a1)
{
  v2 = sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25274C498(uint64_t a1)
{
  v2 = sub_25274E0DC(&qword_27F4FCB60, type metadata accessor for CameraClipEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25274C514()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  __swift_allocate_value_buffer(v0, qword_27F4FCAE8);
  __swift_project_value_buffer(v0, qword_27F4FCAE8);
  type metadata accessor for CameraClipEntity();
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity);
  return sub_2528BE990();
}

uint64_t sub_25274C5D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC30, &qword_2528C59C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  swift_getKeyPath();
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity);
  sub_25272275C(&qword_27F4FCC38, &qword_27F4FBE18, &unk_2528C2550);
  sub_2528BEAD0();
  type metadata accessor for CameraClipEntity();
  sub_2528BEAF0();
  v8 = *(v1 + 8);
  v8(v5, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC40, &unk_2528C59C8);
  v9 = *(v1 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v11 + v10, v7, v0);
  v12 = sub_2528BEAE0();

  v8(v7, v0);
  return v12;
}

uint64_t static CameraClipEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB638 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CameraClipEntityQuery.sortingOptions.setter(uint64_t a1)
{
  if (qword_27F4FB638 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAE8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CameraClipEntityQuery.sortingOptions.modify())()
{
  if (qword_27F4FB638 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  __swift_project_value_buffer(v0, qword_27F4FCAE8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25274CA88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB638 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25274CB54(uint64_t a1)
{
  if (qword_27F4FB638 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB18, &qword_2528C54D0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCAE8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_25274CC28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  __swift_allocate_value_buffer(v0, qword_27F4FCB00);
  __swift_project_value_buffer(v0, qword_27F4FCB00);
  type metadata accessor for CameraClipEntity();
  sub_2528BEC90();
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity);
  return sub_2528BE920();
}

uint64_t sub_25274CCFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBE8, &qword_2528C5918);
  swift_getKeyPath();
  sub_2528BE870();
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity);
  v0 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBF0, &qword_2528C5948);
  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v1 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8C8, &qword_2528C49E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2528C54C0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for CameraClipEntity();
  sub_2528BEC90();
  sub_2528BEA50();
  v3 = sub_2528BEA40();

  return v3;
}

uint64_t sub_25274CEAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC18, &qword_2528C59A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC20, &qword_2528C59A8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for CameraClipEntity();
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC28, &unk_2528C59B0);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v10 + v9, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE18, &unk_2528C2550);
  sub_2528BEC90();
  sub_25274E0DC(&qword_27F4FCBC8, MEMORY[0x277CC9578]);
  v11 = sub_2528BEAB0();

  (*(v1 + 8))(v4, v0);
  return v11;
}

uint64_t sub_25274D12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528BEC90();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25274D198()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBF8, &qword_2528C5980);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC00, &qword_2528C5988);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for CameraClipEntity();
  sub_25274E0DC(&qword_27F4FCB90, type metadata accessor for CameraClipEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC08, &qword_2528C5990);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v10 + v9, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC10, &qword_2528C5998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBD8, &qword_2528C58F8);
  sub_2528BEC90();
  sub_25274E194();
  v11 = sub_2528BEAB0();

  (*(v1 + 8))(v4, v0);
  return v11;
}

uint64_t sub_25274D408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBD8, &qword_2528C58F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_25274E328(a1, &v12 - v6);
  v8 = sub_2528BEC90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_2528BEC80();
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_25274E398(v7);
  }

  return result;
}

uint64_t static CameraClipEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB640 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCB00);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CameraClipEntityQuery.properties.setter(uint64_t a1)
{
  if (qword_27F4FB640 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCB00);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CameraClipEntityQuery.properties.modify())()
{
  if (qword_27F4FB640 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  __swift_project_value_buffer(v0, qword_27F4FCB00);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25274D7B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB640 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCB00);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25274D87C(uint64_t a1)
{
  if (qword_27F4FB640 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCB20, &qword_2528C54D8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FCB00);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

unint64_t sub_25274DA88()
{
  result = qword_27F4FCB40;
  if (!qword_27F4FCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCB40);
  }

  return result;
}

unint64_t sub_25274DCAC()
{
  result = qword_27F4FCB80;
  if (!qword_27F4FCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCB80);
  }

  return result;
}

unint64_t sub_25274DD04()
{
  result = qword_27F4FCB88;
  if (!qword_27F4FCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCB88);
  }

  return result;
}

unint64_t sub_25274DDC4()
{
  result = qword_27F4FCB98;
  if (!qword_27F4FCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCB98);
  }

  return result;
}

unint64_t sub_25274DE1C()
{
  result = qword_27F4FCBA0;
  if (!qword_27F4FCBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCBA8, qword_2528C5810);
    sub_25274E0DC(&qword_27F4FCB58, type metadata accessor for CameraClipEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCBA0);
  }

  return result;
}

uint64_t sub_25274DED0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_25274DA88();
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v7);
}

void sub_25274DFAC()
{
  sub_2528BECF0();
  if (v0 <= 0x3F)
  {
    sub_25274E048();
    if (v1 <= 0x3F)
    {
      sub_25274E124();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25274E048()
{
  if (!qword_27F4FCBC0)
  {
    sub_2528BEC90();
    sub_25274E0DC(&qword_27F4FCBC8, MEMORY[0x277CC9578]);
    v0 = sub_2528BE770();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FCBC0);
    }
  }
}

uint64_t sub_25274E0DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25274E124()
{
  if (!qword_27F4FCBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCBD8, &qword_2528C58F8);
    sub_25274E194();
    v0 = sub_2528BE770();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FCBD0);
    }
  }
}

unint64_t sub_25274E194()
{
  result = qword_27F4FCBE0;
  if (!qword_27F4FCBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCBD8, &qword_2528C58F8);
    sub_25274E0DC(&qword_27F4FCBC8, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCBE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraClipEntityQuery(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CameraClipEntityQuery(_WORD *result, int a2, int a3)
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

uint64_t sub_25274E328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBD8, &qword_2528C58F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25274E398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCBD8, &qword_2528C58F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25274E414()
{
  result = qword_27F4FCC48;
  if (!qword_27F4FCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCC48);
  }

  return result;
}

unint64_t sub_25274E46C()
{
  result = qword_27F4FCC50;
  if (!qword_27F4FCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCC50);
  }

  return result;
}

unint64_t sub_25274E544()
{
  result = qword_27F4FCC58;
  if (!qword_27F4FCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCC58);
  }

  return result;
}

uint64_t sub_25274E598()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F502888);
  __swift_project_value_buffer(v0, qword_27F502888);
  return sub_2528BEC20();
}

uint64_t sub_25274E650()
{
  v1 = *(v0 + 8);
  sub_2528BE790();
  return v3;
}

uint64_t sub_25274E6A8()
{
  v1 = *(v0 + 16);
  sub_2528BE790();
  return v3;
}

uint64_t sub_25274E700(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25274E7D4, 0, 0);
}

uint64_t sub_25274E7D4()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v3 = __swift_project_value_buffer(v2, qword_27F5025C8);
  v0[8] = v3;
  sub_2527BBA98(v1, v3);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v5 = sub_2528C0820();
  v6 = __swift_project_value_buffer(v5, qword_27F5025E0);
  v0[9] = v6;
  v0[10] = sub_2528B7AE0(v4, v6);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_25274E91C;
  v8 = v0[2];
  v9 = v0[3];

  return sub_25274EC18(v8);
}

uint64_t sub_25274E91C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_25274EB68;
  }

  else
  {
    v3 = sub_25274EA30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25274EA30()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v7 = v0[3];
  v6 = v0[4];
  (*(v5 + 16))(v3, v0[2], v6);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v3, v6);
  sub_2527BC828(v7, v1, sub_252756420, v9, v2);

  sub_2527BDFB4(v7, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25274EB68()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 24);
  sub_2527BE9D0(v4, *(v0 + 80), v1, *(v0 + 72));
  sub_2527C01BC(v4, v1, v2);
  swift_willThrow();

  v5 = *(v0 + 8);
  v6 = *(v0 + 96);

  return v5();
}

uint64_t sub_25274EC18(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = type metadata accessor for ShowDeviceResultIntent();
  v2[29] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v8 = sub_2528BECF0();
  v2[32] = v8;
  v9 = *(v8 - 8);
  v2[33] = v9;
  v10 = *(v9 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v11 = sub_2528BEEC0();
  v2[36] = v11;
  v12 = *(v11 - 8);
  v2[37] = v12;
  v13 = *(v12 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v15 = *(type metadata accessor for DeviceEntity() - 8);
  v2[43] = v15;
  v16 = *(v15 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v18 = sub_2528C0060();
  v2[47] = v18;
  v19 = *(v18 - 8);
  v2[48] = v19;
  v20 = *(v19 + 64) + 15;
  v2[49] = swift_task_alloc();
  v21 = sub_2528BEE30();
  v2[50] = v21;
  v22 = *(v21 - 8);
  v2[51] = v22;
  v23 = *(v22 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v24 = sub_2528C00D0();
  v2[56] = v24;
  v25 = *(v24 - 8);
  v2[57] = v25;
  v26 = *(v25 + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v27 = sub_2528BE8B0();
  v2[60] = v27;
  v28 = *(v27 - 8);
  v2[61] = v28;
  v29 = *(v28 + 64) + 15;
  v2[62] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  v2[63] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  v2[64] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0) - 8) + 64) + 15;
  v2[65] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v34 = sub_2528BF400();
  v2[70] = v34;
  v35 = *(v34 - 8);
  v2[71] = v35;
  v2[72] = *(v35 + 64);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[77] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25274F290, 0, 0);
}

uint64_t sub_25274F290()
{
  v0[82] = *(v0[25] + 24);
  sub_2528BE790();
  v1 = *(v0[12] + 16);

  if (v1)
  {
    v2 = v0[81];
    v3 = v0[77];
    v0[83] = *v0[25];
    sub_2528BE790();
    sub_2528BE790();
    v4 = v0[13];
    v0[84] = v4;
    v5 = sub_2528C05D0();
    v0[85] = v5;
    v6 = *(v5 - 8);
    v7 = *(v6 + 56);
    v0[86] = v7;
    v0[87] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v7(v3, 1, 1, v5);
    v8 = swift_task_alloc();
    v0[88] = v8;
    *v8 = v0;
    v8[1] = sub_25274F68C;
    v9 = v0[81];
    v10 = v0[77];

    return sub_25277ECE4(v9, v4, 0, v10);
  }

  else
  {
    type metadata accessor for HomeAppIntentError();
    sub_252756778(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = v0[81];
    v13 = v0[80];
    v14 = v0[79];
    v15 = v0[78];
    v16 = v0[77];
    v17 = v0[76];
    v18 = v0[75];
    v19 = v0[74];
    v20 = v0[73];
    v21 = v0[69];
    v23 = v0[68];
    v24 = v0[67];
    v25 = v0[66];
    v26 = v0[65];
    v27 = v0[64];
    v28 = v0[63];
    v29 = v0[62];
    v30 = v0[59];
    v31 = v0[58];
    v32 = v0[55];
    v33 = v0[54];
    v34 = v0[53];
    v35 = v0[52];
    v36 = v0[49];
    v37 = v0[46];
    v38 = v0[45];
    v39 = v0[44];
    v40 = v0[42];
    v41 = v0[41];
    v42 = v0[40];
    v43 = v0[39];
    v44 = v0[38];
    v45 = v0[35];
    v46 = v0[34];
    v47 = v0[31];
    v48 = v0[30];
    v49 = v0[28];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_25274F68C(uint64_t a1)
{
  v2 = *(*v1 + 704);
  v3 = *(*v1 + 672);
  v4 = *(*v1 + 648);
  v5 = *(*v1 + 616);
  v7 = *v1;
  *(*v1 + 712) = a1;

  sub_2527213D8(v5, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25274F80C, 0, 0);
}

uint64_t sub_25274F80C()
{
  v1 = *(v0 + 512);
  sub_2527D38F8(*(v0 + 712), v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 520);
    sub_2527213D8(*(v0 + 512), &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    v17 = *(v0 + 664);
    v18 = *(v0 + 632);
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    sub_2527213D8(*(v0 + 520), &qword_27F4FCDB0, &qword_2528D2DB0);
    type metadata accessor for HomeAppIntentError();
    sub_252756778(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v22 = v21;
    sub_2528BE790();
    v23 = *(v20 + 48);
    v24 = 1;
    if (!v23(v18, 1, v19))
    {
      (*(*(v0 + 264) + 16))(v22, *(v0 + 632), *(v0 + 256));
      v24 = 0;
    }

    v25 = *(v0 + 664);
    v26 = *(v0 + 624);
    v28 = *(v0 + 256);
    v27 = *(v0 + 264);
    v29 = *(v0 + 208);
    sub_2527213D8(*(v0 + 632), &qword_27F4FC488, &unk_2528C3F80);
    (*(v27 + 56))(v22, v24, 1, v28);
    v30 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    v31 = v23(v26, 1, v29);
    v32 = *(v0 + 624);
    if (v31)
    {
      sub_2527213D8(v32, &qword_27F4FC488, &unk_2528C3F80);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v35 = *(v0 + 224);
      v36 = *(v0 + 208);
      v37 = *(v0 + 624);
      sub_252756580(v32, v35, type metadata accessor for HomeEntity);
      sub_2527213D8(v37, &qword_27F4FC488, &unk_2528C3F80);
      v38 = *(v35 + *(v36 + 20));
      sub_2528BE6B0();
      v33 = *(v0 + 64);
      v34 = *(v0 + 72);
      sub_2527567C0(v35, type metadata accessor for HomeEntity);
    }

    *v30 = v33;
    v30[1] = v34;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  v9 = *(v0 + 264);
  v145 = *(v0 + 256);
  v10 = v8 + *(v2 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v12 = *(v11 + 48);
  v13 = *(v5 + 16);
  *(v0 + 720) = v13;
  *(v0 + 728) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v7, v10, v6);
  v14 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v10 + *(v14 + 20), v7 + v12, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527567C0(v10, type metadata accessor for HomeEntity.SnapshotPair);
  v15 = *(v11 - 8);
  (*(v15 + 56))(v7, 0, 1, v11);
  v16 = *(v9 + 8);
  *(v0 + 736) = v16;
  *(v0 + 744) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v8, v145);
  if ((*(v15 + 48))(v7, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  v138 = *(v0 + 664);
  v140 = *(v0 + 656);
  v143 = *(v0 + 640);
  v125 = *(v0 + 608);
  v133 = *(v0 + 600);
  v135 = *(v0 + 576);
  v51 = *(v0 + 568);
  v123 = *(v0 + 560);
  v52 = *(v0 + 552);
  v53 = *(v0 + 520);
  v54 = *(v0 + 504);
  v55 = *(v0 + 200);
  v56 = *(v11 + 48);
  v57 = *(v51 + 32);
  v51 += 32;
  *(v0 + 752) = v57;
  *(v0 + 760) = v51 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v57();
  sub_25274AA0C(v53 + v56, v52, &qword_27F4FCDB8, &unk_2528C5CC0);
  v58 = sub_2528C0C40();
  (*(*(v58 - 8) + 56))(v54, 1, 1, v58);
  v127 = *(v55 + 1);
  v129 = *(v55 + 2);
  *(v0 + 768) = *(v55 + 4);
  v131 = *(v55 + 5);
  v13(v133, v125, v123);
  v59 = (*(v51 + 48) + 80) & ~*(v51 + 48);
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  v61 = *v55;
  v62 = v55[2];
  *(v60 + 48) = v55[1];
  *(v60 + 64) = v62;
  *(v60 + 32) = v61;
  (v57)(v60 + v59, v133, v123);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3B74(0, 0, v54, &unk_2528C5CF0, v60);

  sub_2528BE790();
  v63 = *(v0 + 112);
  *(v0 + 776) = v63;
  sub_2528BE790();
  *(v0 + 784) = *(v0 + 120);
  sub_2528BE790();
  sub_2528BE790();
  *(v0 + 792) = *(v0 + 80);
  *(v0 + 93) = *(v0 + 88);
  v64 = v55[2];
  v65 = *v55;
  *(v0 + 32) = v55[1];
  *(v0 + 48) = v64;
  *(v0 + 16) = v65;
  sub_25274E544();
  sub_2528BE5B0();
  v66 = *(v63 + 16);
  *(v0 + 800) = v66;
  if (!v66)
  {
    v90 = *(v0 + 640);
    v91 = *(v0 + 568);
    v141 = *(v0 + 560);
    v144 = *(v0 + 608);
    v92 = *(v0 + 552);
    v93 = *(v0 + 488);
    v94 = *(v0 + 496);
    v95 = *(v0 + 480);

    type metadata accessor for HomeAppIntentError();
    sub_252756778(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v93 + 8))(v94, v95);
    sub_2527213D8(v90, &qword_27F4FC488, &unk_2528C3F80);
    sub_2527213D8(v92, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v91 + 8))(v144, v141);
LABEL_10:
    v39 = *(v0 + 648);
    v40 = *(v0 + 640);
    v41 = *(v0 + 632);
    v42 = *(v0 + 624);
    v43 = *(v0 + 616);
    v44 = *(v0 + 608);
    v45 = *(v0 + 600);
    v46 = *(v0 + 592);
    v47 = *(v0 + 584);
    v48 = *(v0 + 552);
    v106 = *(v0 + 544);
    v107 = *(v0 + 536);
    v108 = *(v0 + 528);
    v109 = *(v0 + 520);
    v110 = *(v0 + 512);
    v111 = *(v0 + 504);
    v112 = *(v0 + 496);
    v113 = *(v0 + 472);
    v114 = *(v0 + 464);
    v115 = *(v0 + 440);
    v116 = *(v0 + 432);
    v117 = *(v0 + 424);
    v118 = *(v0 + 416);
    v119 = *(v0 + 392);
    v120 = *(v0 + 368);
    v121 = *(v0 + 360);
    v122 = *(v0 + 352);
    v124 = *(v0 + 336);
    v126 = *(v0 + 328);
    v128 = *(v0 + 320);
    v130 = *(v0 + 312);
    v132 = *(v0 + 304);
    v134 = *(v0 + 280);
    v136 = *(v0 + 272);
    v137 = *(v0 + 248);
    v139 = *(v0 + 240);
    v142 = *(v0 + 224);

    v49 = *(v0 + 8);

    return v49();
  }

  v67 = *(v0 + 544);
  v68 = *(v0 + 448);
  v69 = *(v0 + 456);
  sub_25272006C(*(v0 + 552), v67, &qword_27F4FCDB8, &unk_2528C5CC0);
  v70 = *(v69 + 48);
  *(v0 + 808) = v70;
  *(v0 + 816) = (v69 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v70(v67, 1, v68) == 1)
  {
    sub_2527213D8(*(v0 + 544), &qword_27F4FCDB8, &unk_2528C5CC0);
    v71 = 0;
    v72 = MEMORY[0x277D84F90];
    *(v0 + 904) = MEMORY[0x277D84F90];
    v73 = *(v0 + 344);
    v146 = v72;
    v74 = *(v0 + 776) + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v75 = *(v73 + 72);
    do
    {
      v76 = *(v0 + 800);
      v77 = *(v0 + 784);
      v78 = *(v0 + 360);
      sub_252756580(v74, v78, type metadata accessor for DeviceEntity);
      ++v71;
      v79 = swift_task_alloc();
      *(v79 + 16) = v78;
      v80 = sub_2527A3118(sub_2527565E8, v79, v77);
      *(v0 + 1064) = 0;

      sub_2527567C0(v78, type metadata accessor for DeviceEntity);
      sub_252735C48(v80);
      v74 += v75;
    }

    while (v71 != v76);
    v81 = *(v0 + 93);
    v82 = *(v0 + 792);
    v83 = *(v0 + 776);
    v84 = *(v0 + 608);
    *(v0 + 912) = v146;
    v85 = swift_task_alloc();
    *(v0 + 920) = v85;
    *(v85 + 16) = v84;
    *(v85 + 24) = v83;
    *(v85 + 32) = v82;
    *(v85 + 40) = v81;
    v86 = swift_task_alloc();
    *(v0 + 928) = v86;
    *v86 = v0;
    v86[1] = sub_252750FE0;
    v87 = *(v0 + 784);
    v88 = *(v0 + 776);
    v89 = *(v0 + 608);

    return sub_2527764BC(v146, v89, v87, v88, &unk_2528C6DF0, v85);
  }

  else
  {
    v96 = *(v0 + 608);
    v97 = *(v0 + 544);
    v98 = *(v0 + 472);
    v99 = *(v0 + 448);
    v100 = *(v0 + 456);
    v101 = *(v0 + 440);
    v102 = *(v100 + 32);
    *(v0 + 824) = v102;
    *(v0 + 832) = (v100 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v102(v98, v97, v99);
    sub_2528BF2F0();
    v103 = *(MEMORY[0x277D151F0] + 4);
    v104 = swift_task_alloc();
    *(v0 + 840) = v104;
    *v104 = v0;
    v104[1] = sub_2527504A8;
    v105 = *(v0 + 440);

    return MEMORY[0x28216E680]();
  }
}

uint64_t sub_2527504A8(uint64_t a1)
{
  v2 = *(*v1 + 840);
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 408);
  v5 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 848) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_252750608, 0, 0);
}

uint64_t sub_252750608()
{
  if (*(v0 + 848))
  {
    v1 = *(v0 + 776);
    v2 = *(v0 + 472);
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v0 + 856) = sub_2527A2F84(sub_252756820, v3, v1);
    *(v0 + 864) = 0;

    *(v0 + 872) = sub_2528BEFC0();
    sub_2528C0C20();
    *(v0 + 880) = sub_2528C0C10();
    v5 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_2527508F0, v5, v4);
  }

  else
  {
    (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    *(v0 + 904) = MEMORY[0x277D84F90];
    v8 = *(v0 + 344);
    v26 = v7;
    v9 = *(v0 + 776) + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v11 = *(v0 + 800);
      v12 = *(v0 + 784);
      v13 = *(v0 + 360);
      sub_252756580(v9, v13, type metadata accessor for DeviceEntity);
      ++v6;
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      v15 = sub_2527A3118(sub_2527565E8, v14, v12);
      *(v0 + 1064) = 0;

      sub_2527567C0(v13, type metadata accessor for DeviceEntity);
      sub_252735C48(v15);
      v9 += v10;
    }

    while (v6 != v11);
    v16 = *(v0 + 93);
    v17 = *(v0 + 792);
    v18 = *(v0 + 776);
    v19 = *(v0 + 608);
    *(v0 + 912) = v26;
    v20 = swift_task_alloc();
    *(v0 + 920) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    *(v20 + 32) = v17;
    *(v20 + 40) = v16;
    v21 = swift_task_alloc();
    *(v0 + 928) = v21;
    *v21 = v0;
    v21[1] = sub_252750FE0;
    v22 = *(v0 + 784);
    v23 = *(v0 + 776);
    v24 = *(v0 + 608);

    return sub_2527764BC(v26, v24, v22, v23, &unk_2528C6DF0, v20);
  }
}

uint64_t sub_2527508F0()
{
  v1 = v0[110];
  v2 = v0[109];

  v0[111] = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_252750964, 0, 0);
}

uint64_t sub_252750964()
{
  v1 = v0[106];
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = sub_252743EF0(v0[107]);

  *v2 = v6;
  v2[1] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D16508], v4);
  v7 = sub_2528C00B0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = *(MEMORY[0x277D16AE8] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[112] = v10;
  *v10 = v0;
  v10[1] = sub_252750ABC;
  v11 = v0[111];
  v12 = v0[67];
  v13 = v0[49];
  v14 = v0[46];

  return MEMORY[0x282170970](v12, v13, v9, v14);
}

uint64_t sub_252750ABC()
{
  v1 = *(*v0 + 896);
  v2 = *(*v0 + 888);
  v3 = *(*v0 + 392);
  v4 = *(*v0 + 384);
  v5 = *(*v0 + 376);
  v6 = *(*v0 + 368);
  v8 = *v0;

  sub_2527213D8(v6, &qword_27F4FC478, &unk_2528C3F70);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_252750C64, 0, 0);
}

uint64_t sub_252750C64()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 448);
  (*(*(v0 + 456) + 56))(v3, 0, 1, v5);
  sub_25272006C(v3, v4, &qword_27F4FCDB8, &unk_2528C5CC0);
  v6 = v2(v4, 1, v5);
  v7 = MEMORY[0x277D84F90];
  if (v6 == 1)
  {
    v8 = *(v0 + 848);
    v9 = *(v0 + 536);
    v10 = *(v0 + 456);
    sub_2527213D8(*(v0 + 528), &qword_27F4FCDB8, &unk_2528C5CC0);

    sub_2527213D8(v9, &qword_27F4FCDB8, &unk_2528C5CC0);
    v11 = *(v0 + 864);
    v12 = MEMORY[0x277D84F90];
    (*(v10 + 8))(*(v0 + 472), *(v0 + 448));
  }

  else
  {
    v11 = *(v0 + 864);
    v13 = *(v0 + 848);
    v14 = *(v0 + 832);
    v15 = *(v0 + 784);
    v16 = *(v0 + 776);
    v17 = *(v0 + 536);
    v19 = *(v0 + 456);
    v18 = *(v0 + 464);
    v20 = *(v0 + 448);
    (*(v0 + 824))(v18, *(v0 + 528), v20);
    v21 = swift_task_alloc();
    *(v21 + 16) = v15;
    v7 = MEMORY[0x277D84F90];
    *(v21 + 24) = v18;
    v12 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25275683C, v21, v16);

    sub_2527213D8(v17, &qword_27F4FCDB8, &unk_2528C5CC0);
    v22 = *(v19 + 8);
    v22(v18, v20);
    v22(*(v0 + 472), *(v0 + 448));
  }

  v23 = 0;
  *(v0 + 904) = v12;
  v24 = *(v0 + 344);
  v42 = v7;
  v25 = *(v0 + 776) + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v26 = *(v24 + 72);
  do
  {
    v27 = *(v0 + 800);
    v28 = *(v0 + 784);
    v29 = *(v0 + 360);
    sub_252756580(v25, v29, type metadata accessor for DeviceEntity);
    ++v23;
    v30 = swift_task_alloc();
    *(v30 + 16) = v29;
    v31 = sub_2527A3118(sub_2527565E8, v30, v28);
    *(v0 + 1064) = v11;

    sub_2527567C0(v29, type metadata accessor for DeviceEntity);
    sub_252735C48(v31);
    v25 += v26;
  }

  while (v23 != v27);
  v32 = *(v0 + 93);
  v33 = *(v0 + 792);
  v34 = *(v0 + 776);
  v35 = *(v0 + 608);
  *(v0 + 912) = v42;
  v36 = swift_task_alloc();
  *(v0 + 920) = v36;
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;
  *(v36 + 32) = v33;
  *(v36 + 40) = v32;
  v37 = swift_task_alloc();
  *(v0 + 928) = v37;
  *v37 = v0;
  v37[1] = sub_252750FE0;
  v38 = *(v0 + 784);
  v39 = *(v0 + 776);
  v40 = *(v0 + 608);

  return sub_2527764BC(v42, v40, v38, v39, &unk_2528C6DF0, v36);
}

uint64_t sub_252750FE0(uint64_t a1)
{
  v2 = *(*v1 + 928);
  v3 = *(*v1 + 920);
  v4 = *(*v1 + 912);
  v6 = *v1;
  *(*v1 + 936) = a1;

  return MEMORY[0x2822009F8](sub_25275111C, 0, 0);
}

uint64_t sub_25275111C()
{
  v75 = v0;
  v1 = v0[133];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[76];
  v5 = MEMORY[0x277D84F90];
  v6 = sub_25278D334(MEMORY[0x277D84F90]);
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;
  v8 = sub_2527F2ADC(v6, sub_252756604, v7, v3);
  v0[118] = v8;

  if (*(v8 + 16))
  {
    v9 = v0[76];
    v10 = v0[71];
    v11 = v0[70];
    v12 = v0[54];
    v13 = v0[42];
    v14 = *(v10 + 56);
    v0[119] = v14;
    v0[120] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v13, 1, 1, v11);
    sub_2528BF2F0();
    v0[121] = sub_2528BEFC0();
    v15 = *(MEMORY[0x277D15430] + 4);
    v16 = swift_task_alloc();
    v0[122] = v16;
    *v16 = v0;
    v17 = sub_2527517DC;
  }

  else
  {
    v18 = v0[118];
    v19 = v0[117];
    v20 = v0[113];
    v21 = v0[98];
    v22 = v0[97];
    v69 = v0[80];
    v23 = v0[61];
    v24 = v0[62];
    v25 = v0[60];

    sub_252735C2C(v19);
    sub_252735C2C(v20);
    v26 = sub_25280D9C4(v5);
    v72 = v0;
    v0[132] = v26;

    (*(v23 + 8))(v24, v25);
    sub_2527213D8(v69, &qword_27F4FC488, &unk_2528C3F80);
    if (sub_2528C0880())
    {
      v27 = *(v26 + 2);
      if (v27)
      {
        v28 = (v26 + 40);
        v29 = 0x27F4FB000;
        do
        {
          v42 = *(v28 - 1);
          v41 = *v28;
          v43 = *(v29 + 2880);
          sub_2528BEA50();
          sub_2528BEA50();
          if (v43 != -1)
          {
            swift_once();
          }

          v44 = sub_2528C08B0();
          __swift_project_value_buffer(v44, qword_27F5025C8);
          sub_2528BEA50();
          sub_2528BEA50();
          v45 = sub_2528C0890();
          v46 = sub_2528C0D10();

          if (os_log_type_enabled(v45, v46))
          {
            v30 = v72[44];
            v31 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v74[0] = v70;
            *v31 = 136315394;
            v68 = v46;
            sub_2528BE6B0();
            v32 = DeviceEntity.debugDescription.getter();
            v34 = v33;
            sub_2527567C0(v30, type metadata accessor for DeviceEntity);
            v35 = sub_2527389AC(v32, v34, v74);

            *(v31 + 4) = v35;
            *(v31 + 12) = 2080;
            sub_2528BE6B0();
            v36 = MEMORY[0x2530A81A0](v72[23], &type metadata for AttributeResult);
            v38 = v37;

            v39 = v36;
            v29 = 0x27F4FB000uLL;
            v40 = sub_2527389AC(v39, v38, v74);

            *(v31 + 14) = v40;
            _os_log_impl(&dword_252711000, v45, v68, "GetAttributeValueIntent: %s resulted in %s", v31, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2530A8D80](v70, -1, -1);
            MEMORY[0x2530A8D80](v31, -1, -1);
          }

          else
          {
          }

          v28 += 2;
          --v27;
        }

        while (v27);
      }
    }

    else
    {
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v47 = sub_2528C08B0();
      __swift_project_value_buffer(v47, qword_27F5025C8);

      v48 = sub_2528C0890();
      v49 = sub_2528C0D10();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = v51;
        v73 = v51;
        *v50 = 136446210;
        v53 = *(v26 + 2);
        v54 = MEMORY[0x277D84F90];
        if (v53)
        {
          v71 = v51;
          v74[0] = MEMORY[0x277D84F90];
          sub_25282F0CC(0, v53, 0);
          v54 = v74[0];
          v55 = (v26 + 40);
          do
          {
            v57 = *(v55 - 1);
            v56 = *v55;
            sub_2528BEA50();
            sub_2528BEA50();
            sub_2528BE6B0();

            v58 = v72[22];
            v74[0] = v54;
            v60 = *(v54 + 16);
            v59 = *(v54 + 24);
            if (v60 >= v59 >> 1)
            {
              sub_25282F0CC((v59 > 1), v60 + 1, 1);
              v54 = v74[0];
            }

            *(v54 + 16) = v60 + 1;
            *(v54 + 8 * v60 + 32) = v58;
            v55 += 2;
            --v53;
          }

          while (v53);
          v52 = v71;
        }

        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
        v62 = MEMORY[0x2530A81A0](v54, v61);
        v64 = v63;

        v65 = sub_2527389AC(v62, v64, &v73);

        *(v50 + 4) = v65;
        _os_log_impl(&dword_252711000, v48, v49, "GetAttributeValueIntent completed with results: %{public}s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x2530A8D80](v52, -1, -1);
        MEMORY[0x2530A8D80](v50, -1, -1);
      }
    }

    sub_2528BEFC0();
    v66 = *(MEMORY[0x277D15430] + 4);
    v16 = swift_task_alloc();
    v72[134] = v16;
    *v16 = v72;
    v17 = sub_252752C2C;
  }

  v16[1] = v17;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_2527517DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 976);
  v6 = *(*v1 + 93);
  v7 = *v1;
  v4[123] = a1;

  v8 = *(MEMORY[0x277D15420] + 4);
  v9 = swift_task_alloc();
  v4[124] = v9;
  *v9 = v7;
  v9[1] = sub_25275197C;
  v10 = v3[118];
  v11 = v3[99];
  v12 = v3[54];
  v13 = v3[41];

  return MEMORY[0x28216EA10](v13, v12, v10, v11, v6, 0);
}

uint64_t sub_25275197C()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v4 = *v1;
  v2[125] = v0;

  v5 = v2[123];
  if (v0)
  {

    v6 = sub_252752118;
  }

  else
  {
    (*(v2[51] + 8))(v2[54], v2[50]);

    v6 = sub_252751ACC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252751ACC()
{
  v65 = v0;
  sub_2527213D8(v0[42], &qword_27F4FCD98, &qword_2528C6200);
  v1 = v0[125];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[42];
  sub_25274AA0C(v0[41], v4, &qword_27F4FCD98, &qword_2528C6200);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v5, v3);

  sub_2527213D8(v4, &qword_27F4FCD98, &qword_2528C6200);
  v7 = v0[118];
  v8 = v0[117];
  v9 = v0[113];
  v10 = v0[98];
  v11 = v0[97];
  v59 = v0[80];
  v12 = v0[61];
  v13 = v0[62];
  v14 = v0[60];

  sub_252735C2C(v8);
  sub_252735C2C(v9);
  v15 = sub_25280D9C4(v6);
  v62 = v0;
  v0[132] = v15;

  (*(v12 + 8))(v13, v14);
  sub_2527213D8(v59, &qword_27F4FC488, &unk_2528C3F80);
  if (sub_2528C0880())
  {
    v16 = *(v15 + 2);
    if (v16)
    {
      v17 = (v15 + 40);
      v18 = 0x27F4FB000;
      do
      {
        v31 = *(v17 - 1);
        v30 = *v17;
        v32 = *(v18 + 2880);
        sub_2528BEA50();
        sub_2528BEA50();
        if (v32 != -1)
        {
          swift_once();
        }

        v33 = sub_2528C08B0();
        __swift_project_value_buffer(v33, qword_27F5025C8);
        sub_2528BEA50();
        sub_2528BEA50();
        v34 = sub_2528C0890();
        v35 = sub_2528C0D10();

        if (os_log_type_enabled(v34, v35))
        {
          v19 = v62[44];
          v20 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v64[0] = v60;
          *v20 = 136315394;
          v58 = v35;
          sub_2528BE6B0();
          v21 = DeviceEntity.debugDescription.getter();
          v23 = v22;
          sub_2527567C0(v19, type metadata accessor for DeviceEntity);
          v24 = sub_2527389AC(v21, v23, v64);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2080;
          sub_2528BE6B0();
          v25 = MEMORY[0x2530A81A0](v62[23], &type metadata for AttributeResult);
          v27 = v26;

          v28 = v25;
          v18 = 0x27F4FB000uLL;
          v29 = sub_2527389AC(v28, v27, v64);

          *(v20 + 14) = v29;
          _os_log_impl(&dword_252711000, v34, v58, "GetAttributeValueIntent: %s resulted in %s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v60, -1, -1);
          MEMORY[0x2530A8D80](v20, -1, -1);
        }

        else
        {
        }

        v17 += 2;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v36 = sub_2528C08B0();
    __swift_project_value_buffer(v36, qword_27F5025C8);

    v37 = sub_2528C0890();
    v38 = sub_2528C0D10();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      v63 = v40;
      *v39 = 136446210;
      v42 = *(v15 + 2);
      v43 = MEMORY[0x277D84F90];
      if (v42)
      {
        v61 = v40;
        v64[0] = MEMORY[0x277D84F90];
        sub_25282F0CC(0, v42, 0);
        v43 = v64[0];
        v44 = (v15 + 40);
        do
        {
          v46 = *(v44 - 1);
          v45 = *v44;
          sub_2528BEA50();
          sub_2528BEA50();
          sub_2528BE6B0();

          v47 = v62[22];
          v64[0] = v43;
          v49 = *(v43 + 16);
          v48 = *(v43 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_25282F0CC((v48 > 1), v49 + 1, 1);
            v43 = v64[0];
          }

          *(v43 + 16) = v49 + 1;
          *(v43 + 8 * v49 + 32) = v47;
          v44 += 2;
          --v42;
        }

        while (v42);
        v41 = v61;
      }

      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
      v51 = MEMORY[0x2530A81A0](v43, v50);
      v53 = v52;

      v54 = sub_2527389AC(v51, v53, &v63);

      *(v39 + 4) = v54;
      _os_log_impl(&dword_252711000, v37, v38, "GetAttributeValueIntent completed with results: %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x2530A8D80](v41, -1, -1);
      MEMORY[0x2530A8D80](v39, -1, -1);
    }
  }

  sub_2528BEFC0();
  v55 = *(MEMORY[0x277D15430] + 4);
  v56 = swift_task_alloc();
  v62[134] = v56;
  *v56 = v62;
  v56[1] = sub_252752C2C;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252752118()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[77];
  v5 = v0[54];
  v6 = v0[50];
  v7 = v0[51];
  v8 = *(v7 + 8);
  v0[126] = v8;
  v0[127] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v6);
  v2(v4, 1, 1, v3);
  v9 = *(MEMORY[0x277D153E8] + 4);
  v10 = swift_task_alloc();
  v0[128] = v10;
  *v10 = v0;
  v10[1] = sub_252752208;
  v11 = v0[121];
  v12 = v0[77];

  return MEMORY[0x28216E990](v12);
}

uint64_t sub_252752208(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1024);
  v7 = *v1;
  *(v3 + 1032) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1040) = v5;
  *v5 = v7;
  v5[1] = sub_252752354;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_252752354(uint64_t a1)
{
  v2 = *(*v1 + 1040);
  v4 = *v1;
  *(*v1 + 1048) = a1;

  return MEMORY[0x2822009F8](sub_252752454, 0, 0);
}

uint64_t sub_252752454()
{
  v92 = v0;
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  v6 = *(v0 + 424);
  v7 = *(v0 + 400);
  v8 = *(v0 + 280);

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  v3(v6, v7);
  v89 = v0;
  if (*(v1 + 16) && (v9 = *(v0 + 1048), v10 = sub_252785C40(*(v0 + 280)), (v11 & 1) != 0))
  {
    v12 = *(v0 + 744);
    v13 = *(v0 + 736);
    v83 = *(v0 + 1000);
    v85 = *(v0 + 336);
    v14 = *(v0 + 312);
    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    v17 = *(v0 + 280);
    v18 = *(v0 + 256);
    (*(v15 + 16))(v14, *(*(v0 + 1048) + 56) + *(v15 + 72) * v10, v16);
    v13(v17, v18);

    sub_2528BEE70();

    sub_2527213D8(v85, &qword_27F4FCD98, &qword_2528C6200);
    (*(v15 + 8))(v14, v16);
    v19 = 0;
  }

  else
  {
    v20 = *(v0 + 1048);
    v21 = *(v0 + 744);
    v22 = *(v0 + 736);
    v23 = *(v0 + 336);
    v24 = *(v0 + 280);
    v25 = *(v0 + 256);

    v22(v24, v25);
    sub_2527213D8(v23, &qword_27F4FCD98, &qword_2528C6200);
    v19 = 1;
  }

  v26 = *(v0 + 960);
  (*(v0 + 952))(*(v0 + 320), v19, 1, *(v0 + 560));
  v27 = *(v0 + 784);
  v28 = *(v0 + 776);
  v29 = *(v0 + 336);
  sub_25274AA0C(*(v0 + 320), v29, &qword_27F4FCD98, &qword_2528C6200);
  v30 = swift_task_alloc();
  *(v30 + 16) = v27;
  *(v30 + 24) = v29;
  v31 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v30, v28);

  sub_2527213D8(v29, &qword_27F4FCD98, &qword_2528C6200);
  v32 = *(v0 + 944);
  v33 = *(v0 + 936);
  v34 = *(v0 + 904);
  v35 = *(v0 + 784);
  v36 = *(v0 + 776);
  v86 = *(v0 + 640);
  v37 = *(v0 + 488);
  v38 = *(v0 + 496);
  v39 = *(v0 + 480);

  sub_252735C2C(v33);
  sub_252735C2C(v34);
  v40 = sub_25280D9C4(v31);
  *(v0 + 1056) = v40;

  (*(v37 + 8))(v38, v39);
  sub_2527213D8(v86, &qword_27F4FC488, &unk_2528C3F80);
  if (sub_2528C0880())
  {
    v41 = *(v40 + 2);
    if (v41)
    {
      v42 = (v40 + 40);
      v43 = 0x27F4FB000;
      do
      {
        v56 = *(v42 - 1);
        v55 = *v42;
        v57 = *(v43 + 2880);
        sub_2528BEA50();
        sub_2528BEA50();
        if (v57 != -1)
        {
          swift_once();
        }

        v58 = sub_2528C08B0();
        __swift_project_value_buffer(v58, qword_27F5025C8);
        sub_2528BEA50();
        sub_2528BEA50();
        v59 = sub_2528C0890();
        v60 = sub_2528C0D10();

        if (os_log_type_enabled(v59, v60))
        {
          v44 = v89[44];
          v45 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v91[0] = v87;
          *v45 = 136315394;
          v84 = v60;
          sub_2528BE6B0();
          v46 = DeviceEntity.debugDescription.getter();
          v48 = v47;
          sub_2527567C0(v44, type metadata accessor for DeviceEntity);
          v49 = sub_2527389AC(v46, v48, v91);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          sub_2528BE6B0();
          v50 = MEMORY[0x2530A81A0](v89[23], &type metadata for AttributeResult);
          v52 = v51;

          v53 = v50;
          v43 = 0x27F4FB000uLL;
          v54 = sub_2527389AC(v53, v52, v91);

          *(v45 + 14) = v54;
          _os_log_impl(&dword_252711000, v59, v84, "GetAttributeValueIntent: %s resulted in %s", v45, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v87, -1, -1);
          MEMORY[0x2530A8D80](v45, -1, -1);
        }

        else
        {
        }

        v42 += 2;
        --v41;
      }

      while (v41);
    }
  }

  else
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v61 = sub_2528C08B0();
    __swift_project_value_buffer(v61, qword_27F5025C8);

    v62 = sub_2528C0890();
    v63 = sub_2528C0D10();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = v65;
      v90 = v65;
      *v64 = 136446210;
      v67 = *(v40 + 2);
      v68 = MEMORY[0x277D84F90];
      if (v67)
      {
        v88 = v65;
        v91[0] = MEMORY[0x277D84F90];
        sub_25282F0CC(0, v67, 0);
        v68 = v91[0];
        v69 = (v40 + 40);
        do
        {
          v71 = *(v69 - 1);
          v70 = *v69;
          sub_2528BEA50();
          sub_2528BEA50();
          sub_2528BE6B0();

          v72 = v89[22];
          v91[0] = v68;
          v74 = *(v68 + 16);
          v73 = *(v68 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_25282F0CC((v73 > 1), v74 + 1, 1);
            v68 = v91[0];
          }

          *(v68 + 16) = v74 + 1;
          *(v68 + 8 * v74 + 32) = v72;
          v69 += 2;
          --v67;
        }

        while (v67);
        v66 = v88;
      }

      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
      v76 = MEMORY[0x2530A81A0](v68, v75);
      v78 = v77;

      v79 = sub_2527389AC(v76, v78, &v90);

      *(v64 + 4) = v79;
      _os_log_impl(&dword_252711000, v62, v63, "GetAttributeValueIntent completed with results: %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x2530A8D80](v66, -1, -1);
      MEMORY[0x2530A8D80](v64, -1, -1);
    }
  }

  sub_2528BEFC0();
  v80 = *(MEMORY[0x277D15430] + 4);
  v81 = swift_task_alloc();
  v89[134] = v81;
  *v81 = v89;
  v81[1] = sub_252752C2C;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252752C2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1072);
  v7 = *v1;
  *(v3 + 1080) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1088) = v5;
  *v5 = v7;
  v5[1] = sub_252752D78;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_252752D78(uint64_t a1)
{
  v2 = *(*v1 + 1088);
  v4 = *v1;
  *(*v1 + 1096) = a1;

  return MEMORY[0x2822009F8](sub_252752E78, 0, 0);
}

uint64_t sub_252752E78()
{
  v119 = v0;
  v1 = *(v0 + 1096);
  v2 = *(v0 + 608);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v5 = *(v0 + 400);
  v6 = *(v0 + 272);

  sub_2528BF2F0();
  sub_2528BEE00();
  (*(v4 + 8))(v3, v5);
  if (*(v1 + 16) && (v7 = *(v0 + 1096), v8 = sub_252785C40(*(v0 + 272)), (v9 & 1) != 0))
  {
    v114 = *(v0 + 752);
    v116 = *(v0 + 760);
    v10 = *(v0 + 744);
    v11 = *(v0 + 736);
    v12 = *(v0 + 584);
    v111 = *(v0 + 560);
    v113 = *(v0 + 592);
    v13 = *(v0 + 296);
    v14 = *(v0 + 304);
    v15 = *(v0 + 288);
    v16 = *(v0 + 272);
    v17 = *(v0 + 256);
    (*(v13 + 16))(v14, *(*(v0 + 1096) + 56) + *(v13 + 72) * v8, v15);
    v11(v16, v17);

    sub_2528BEE70();
    (*(v13 + 8))(v14, v15);
    v114(v113, v12, v111);
  }

  else
  {
    v18 = *(v0 + 1096);
    v19 = *(v0 + 744);
    v20 = *(v0 + 736);
    v21 = *(v0 + 728);
    v22 = *(v0 + 720);
    v23 = *(v0 + 608);
    v24 = *(v0 + 592);
    v25 = *(v0 + 560);
    v26 = *(v0 + 272);
    v27 = *(v0 + 256);

    v20(v26, v27);
    v22(v24, v23, v25);
  }

  v28 = *(v0 + 1056);
  v29 = *(v0 + 768);
  sub_2528BE790();
  v30 = *(v0 + 128);
  if (*(v28 + 16))
  {
    v31 = *(v0 + 1056);
    v33 = *(v31 + 32);
    v32 = *(v31 + 40);
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BE6B0();

    v34 = *(v0 + 136);
    if (v34[2])
    {
      v35 = v34[4];
      v36 = v34[5];
      sub_2528BEA50();
      sub_2528BEA50();

      sub_2528BE6B0();

      v37 = *(v0 + 89);
      goto LABEL_10;
    }

    v38 = *(v0 + 136);
  }

  v37 = 63;
LABEL_10:
  v39 = *(v0 + 1056);
  v40 = *(v0 + 656);
  v41 = *(v0 + 592);
  v42 = *(v0 + 552);
  v43 = *(v0 + 240);
  sub_2528BE790();
  v44 = *(v0 + 144);

  ShowDeviceResultIntent.init()(v43);
  sub_252859458(v39, v41, (v0 + 90));
  v45 = v43[1];
  sub_2528BE7A0();
  if (v37 != 63)
  {
    v46 = *(*(v0 + 240) + 40);
    *(v0 + 92) = v37;
    sub_2528BE7A0();
  }

  sub_25285A33C(v30, v118);

  v47 = v118[0];
  if (LOBYTE(v118[0]) != 2)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v48 = sub_2528C08B0();
    __swift_project_value_buffer(v48, qword_27F5025C8);
    v49 = sub_2528C0890();
    v50 = sub_2528C0D10();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v118[0] = v52;
      *v51 = 136315138;
      if (v47)
      {
        v53 = 0xD000000000000010;
      }

      else
      {
        v53 = 6449010;
      }

      if (v47)
      {
        v54 = 0x80000002528E51C0;
      }

      else
      {
        v54 = 0xE300000000000000;
      }

      v55 = sub_2527389AC(v53, v54, v118);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_252711000, v49, v50, "Setting SecondaryAccessoryControlDestinationin in ShowDeviceResultIntent: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x2530A8D80](v52, -1, -1);
      MEMORY[0x2530A8D80](v51, -1, -1);
    }

    v56 = *(*(v0 + 240) + 64);
    *(v0 + 91) = v47 & 1;
    sub_2528BE7A0();
  }

  v57 = _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(*(v0 + 1056));
  v58 = v57;
  v60 = v59;
  v61 = *(v57 + 16);
  if (v61)
  {
    v62 = sub_252865988(*(v57 + 16), 0);
    v63 = sub_252868828(v118, v62 + 4, v61, v58);
    sub_25271A648();
    if (v63 == v61)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  v62 = MEMORY[0x277D84F90];
LABEL_28:
  v64 = *(*(v0 + 240) + 16);
  *(v0 + 152) = v62;
  sub_2528BE7A0();
  v65 = *(v60 + 16);
  if (v65)
  {
    v66 = sub_252865988(*(v60 + 16), 0);
    v67 = sub_252868828(v118, v66 + 4, v65, v60);
    sub_25271A648();
    if (v67 == v65)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v66 = MEMORY[0x277D84F90];
LABEL_32:
  v68 = *(v0 + 1056);
  v82 = *(v0 + 648);
  v83 = *(v0 + 640);
  v84 = *(v0 + 632);
  v85 = *(v0 + 624);
  v86 = *(v0 + 616);
  v87 = *(v0 + 600);
  v79 = *(v0 + 592);
  v69 = *(v0 + 568);
  v70 = *(v0 + 560);
  v80 = *(v0 + 552);
  v81 = *(v0 + 608);
  v88 = *(v0 + 584);
  v89 = *(v0 + 544);
  v90 = *(v0 + 536);
  v91 = *(v0 + 528);
  v92 = *(v0 + 520);
  v93 = *(v0 + 512);
  v94 = *(v0 + 504);
  v95 = *(v0 + 496);
  v97 = *(v0 + 472);
  v99 = *(v0 + 464);
  v101 = *(v0 + 440);
  v103 = *(v0 + 432);
  v105 = *(v0 + 424);
  v107 = *(v0 + 416);
  v72 = *(v0 + 240);
  v71 = *(v0 + 248);
  v73 = *(v72 + 24);
  *(v0 + 160) = v66;
  v96 = *(v0 + 392);
  v98 = *(v0 + 368);
  v100 = *(v0 + 360);
  v102 = *(v0 + 352);
  v104 = *(v0 + 336);
  v106 = *(v0 + 328);
  v108 = *(v0 + 320);
  v109 = *(v0 + 312);
  v110 = *(v0 + 304);
  v112 = *(v0 + 280);
  v74 = *(v0 + 232);
  v115 = *(v0 + 272);
  v117 = *(v0 + 224);
  v75 = *(v0 + 192);
  sub_2528BE7A0();
  sub_25275663C(v72, v71);
  *(v0 + 168) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD8, &qword_2528C5D00);
  sub_2527566A0();
  sub_252756778(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent);
  sub_2528BE650();
  sub_2527567C0(v71, type metadata accessor for ShowDeviceResultIntent);
  v76 = *(v69 + 8);
  v76(v79, v70);
  sub_2527213D8(v80, &qword_27F4FCDB8, &unk_2528C5CC0);
  v76(v81, v70);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_2527536B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = *(type metadata accessor for DeviceEntity() - 8);
  v5[6] = v6;
  v7 = *(v6 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275376C, 0, 0);
}

uint64_t sub_25275376C()
{
  v27 = v0;
  v1 = *(*(v0 + 32) + 32);
  result = sub_2528BE790();
  v3 = *(v0 + 16);
  v23 = *(v3 + 16);
  if (v23)
  {
    v4 = 0;
    v5 = *(v0 + 56);
    v19 = *(v0 + 48);
    v21 = v3 + 32;
    v22 = *(*(v0 + 32) + 24);
    v6 = MEMORY[0x277D84FA0];
    v20 = *(v0 + 16);
    while (v4 < *(v3 + 16))
    {
      v10 = *(v21 + v4);
      sub_2528BE790();
      v11 = *(v0 + 24);
      v25 = v6;
      v12 = *(v11 + 16);
      if (v12)
      {
        v24 = v10;
        v13 = v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        v14 = *(v19 + 72);
        do
        {
          v15 = *(v0 + 56);
          sub_252756580(v13, v15, type metadata accessor for DeviceEntity);
          v16 = *(v5 + 16);
          sub_2528BE6B0();
          sub_25273A214(v26, *(v0 + 64));
          sub_2527567C0(v15, type metadata accessor for DeviceEntity);
          v13 += v14;
          --v12;
        }

        while (v12);

        v7 = v25;
        v3 = v20;
        v6 = MEMORY[0x277D84FA0];
        v10 = v24;
      }

      else
      {

        v7 = v6;
      }

      ++v4;
      v8 = swift_task_alloc();
      v9 = *(v0 + 32);
      *(v8 + 16) = v10;
      *(v8 + 24) = vextq_s8(v9, v9, 8uLL);
      sub_2527E4D64(sub_252756858, v8, v7);

      if (v4 == v23)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v17 = *(v0 + 56);

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

uint64_t sub_252753980(unsigned __int16 *a1, int a2, uint64_t a3, void *a4)
{
  v32 = a2;
  v7 = sub_2528BF400();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v27 - v13;
  v28 = *a1;
  v15 = sub_2528C0C40();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v10, a3, v7);
  v16 = *a4;
  v17 = a4[2];
  v18 = a4[3];
  v27[1] = a4[1];
  v27[2] = v17;
  v20 = a4[4];
  v19 = a4[5];
  v29 = v18;
  v30 = v20;
  v31 = v19;
  v21 = (*(v8 + 80) + 35) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v28;
  *(v23 + 34) = v32;
  (*(v8 + 32))(v23 + v21, v10, v7);
  v24 = (v23 + v22);
  v25 = *(a4 + 1);
  *v24 = *a4;
  v24[1] = v25;
  v24[2] = *(a4 + 2);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3E74(0, 0, v14, &unk_2528C5D18, v23);
}

uint64_t sub_252753BF0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = a7;
  *(v7 + 89) = a5;
  *(v7 + 90) = a4;
  *(v7 + 240) = a1;
  v8 = sub_2528BEC90();
  *(v7 + 264) = v8;
  v9 = *(v8 - 8);
  *(v7 + 272) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  v11 = sub_2528BEEC0();
  *(v7 + 288) = v11;
  v12 = *(v11 - 8);
  *(v7 + 296) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 304) = swift_task_alloc();
  v14 = sub_2528BF400();
  *(v7 + 312) = v14;
  v15 = *(v14 - 8);
  *(v7 + 320) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8) + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  v18 = sub_2528BE8B0();
  *(v7 + 360) = v18;
  v19 = *(v18 - 8);
  *(v7 + 368) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 376) = swift_task_alloc();
  v21 = sub_2528BECF0();
  *(v7 + 384) = v21;
  v22 = *(v21 - 8);
  *(v7 + 392) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 400) = swift_task_alloc();
  v24 = sub_2528BEE30();
  *(v7 + 408) = v24;
  v25 = *(v24 - 8);
  *(v7 + 416) = v25;
  v26 = *(v25 + 64) + 15;
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252753EE4, 0, 0);
}

uint64_t sub_252753EE4()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v0 + 400);
  v6 = *(v0 + 368);
  v5 = *(v0 + 376);
  v7 = *(v0 + 352);
  v17 = *(v0 + 360);
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  sub_2528BF2F0();
  sub_2528BEE00();
  v10 = *(v3 + 8);
  *(v0 + 440) = v10;
  *(v0 + 448) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  v11 = *v9;
  v12 = v9[2];
  *(v0 + 192) = v9[1];
  *(v0 + 208) = v12;
  *(v0 + 176) = v11;
  sub_25274E544();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v6 + 8))(v5, v17);
  v13 = *(v9 + 5);
  sub_2528BE790();
  *(v0 + 456) = *(v0 + 224);
  *(v0 + 92) = *(v0 + 232);
  sub_2528BEFC0();
  v14 = *(MEMORY[0x277D15430] + 4);
  v15 = swift_task_alloc();
  *(v0 + 464) = v15;
  *v15 = v0;
  v15[1] = sub_252754060;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252754060(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 464);
  v7 = *v1;
  *(v3 + 472) = a1;

  v5 = swift_task_alloc();
  *(v3 + 480) = v5;
  *v5 = v7;
  v5[1] = sub_2527541AC;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_2527541AC(uint64_t a1)
{
  v2 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = a1;

  return MEMORY[0x2822009F8](sub_2527542AC, 0, 0);
}

uint64_t sub_2527542AC()
{
  v1 = *(v0 + 488);

  if (*(v1 + 16) && (v2 = *(v0 + 488), v3 = sub_252785C40(*(v0 + 400)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 344);
    v63 = *(v0 + 352);
    v7 = *(v0 + 328);
    v6 = *(v0 + 336);
    v8 = *(v0 + 312);
    v9 = *(v0 + 320);
    v10 = *(v0 + 296);
    v11 = *(v0 + 304);
    v12 = *(v0 + 288);
    (*(v10 + 16))(v11, *(*(v0 + 488) + 56) + *(v10 + 72) * v3, v12);

    sub_2528BEE70();
    (*(v10 + 8))(v11, v12);
    (*(v9 + 32))(v6, v7, v8);
    sub_25272006C(v63, v5, &qword_27F4FCE00, &qword_2528C5D20);
    v13 = sub_2528BE890();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v5, 1, v13);
    v16 = *(v0 + 344);
    if (v15 == 1)
    {
      sub_2527213D8(*(v0 + 344), &qword_27F4FCE00, &qword_2528C5D20);
      v64 = 0;
    }

    else
    {
      v64 = sub_2528BE880();
      (*(v14 + 8))(v16, v13);
    }

    v23 = v15 == 1;
    v57 = *(v0 + 440);
    v58 = *(v0 + 448);
    v24 = *(v0 + 424);
    v56 = *(v0 + 408);
    v25 = *(v0 + 392);
    v60 = *(v0 + 384);
    v61 = *(v0 + 400);
    v59 = *(v0 + 352);
    v26 = *(v0 + 336);
    v28 = *(v0 + 312);
    v27 = *(v0 + 320);
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    v31 = *(v0 + 264);
    v62 = *(v0 + 89);
    v32 = *(v0 + 90);
    *(v0 + 496) = v23;
    sub_2528BEC80();
    sub_2528BEC60();
    v34 = v33;
    (*(v30 + 8))(v29, v31);
    sub_2528BF2F0();
    v35 = sub_2528BEDD0();
    v57(v24, v56);
    (*(v27 + 8))(v26, v28);
    sub_2527213D8(v59, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v25 + 8))(v61, v60);
    v36 = qword_2528C5D28[v62];
    v37 = *(v0 + 456);
    if ((v32 & 0xC000) == 0x4000)
    {
      v38 = HIBYTE(v32) & 0x3F;
    }

    else
    {
      v38 = v32;
    }

    v39 = *(v0 + 240);
    *(v0 + 504) = *(v0 + 92);
    v40 = *(v0 + 496);
    v41 = *(v0 + 504);
    *(v0 + 96) = 0xD000000000000026;
    *(v0 + 104) = 0x80000002528E56C0;
    *(v0 + 112) = v64;
    *(v0 + 120) = v40;
    *(v0 + 128) = v34;
    *(v0 + 136) = v35 & 1;
    *(v0 + 144) = v38 + 1;
    *(v0 + 152) = v36;
    *(v0 + 160) = v37;
    *(v0 + 168) = v41;
    sub_2527569B0();
    sub_2528BFA10();
    v42 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v42;
    *(v0 + 73) = *(v0 + 153);
    v43 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v43;
    sub_252756A04(v0 + 16);
    *v39 = 0;
  }

  else
  {
    v17 = *(v0 + 488);
    v19 = *(v0 + 392);
    v18 = *(v0 + 400);
    v20 = *(v0 + 384);
    v21 = *(v0 + 352);
    v22 = *(v0 + 240);

    sub_2527213D8(v21, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v19 + 8))(v18, v20);
    *v22 = 1;
  }

  v45 = *(v0 + 424);
  v44 = *(v0 + 432);
  v46 = *(v0 + 400);
  v47 = *(v0 + 376);
  v49 = *(v0 + 344);
  v48 = *(v0 + 352);
  v51 = *(v0 + 328);
  v50 = *(v0 + 336);
  v52 = *(v0 + 304);
  v53 = *(v0 + 280);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_2527546F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB648 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F502888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}