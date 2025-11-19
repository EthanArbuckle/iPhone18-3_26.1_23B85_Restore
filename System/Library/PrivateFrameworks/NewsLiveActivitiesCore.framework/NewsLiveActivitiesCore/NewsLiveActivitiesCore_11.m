uint64_t sub_21A035370()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE40);
  result = sub_21A0E683C();
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
      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
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

uint64_t sub_21A0355D0()
{
  v1 = v0;
  v2 = type metadata accessor for NewsLiveActivity(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE28);
  result = sub_21A0E683C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v0;
    v9 = 0;
    v10 = (v6 + 56);
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
LABEL_15:
      v20 = *(v31 + 72);
      sub_21A03A4B8(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for NewsLiveActivity);
      sub_21A0E6DAC();
      NewsLiveActivity.hash(into:)();
      result = sub_21A0E6DFC();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_21A03A4B8(v5, *(v8 + 48) + v16 * v20, type metadata accessor for NewsLiveActivity);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v1 = v30;
    *(v6 + 16) = 0;
  }

  *v1 = v8;
  return result;
}

uint64_t sub_21A0358D8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE50);
  result = sub_21A0E683C();
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
      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
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

uint64_t sub_21A035B38()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteAssetKey();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE30);
  result = sub_21A0E683C();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v0;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_21A03A4B8(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for RemoteAssetKey);
      sub_21A0E6DAC();
      sub_21A0E626C();
      sub_21A0E481C();
      sub_21A03A3AC(&qword_27CCD99F8);
      sub_21A0E615C();
      result = sub_21A0E6DFC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_21A03A4B8(v5, *(v8 + 48) + v16 * v21, type metadata accessor for RemoteAssetKey);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v1 = v31;
    *(v6 + 16) = 0;
  }

  *v1 = v8;
  return result;
}

uint64_t sub_21A035E90()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE38);
  result = sub_21A0E683C();
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
      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
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

uint64_t sub_21A0360F0(uint64_t result, char a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a4 & 1) == 0)
  {
    v32 = result;
    if (a4)
    {
      sub_21A0346E4();
    }

    else
    {
      if (v8 > v7)
      {
        sub_21A037BF8();
        result = v32;
        goto LABEL_73;
      }

      sub_21A038784();
    }

    v9 = *v4;
    sub_21A0E6DAC();
    VariantCondition.hash(into:)();
    v10 = sub_21A0E6DFC();
    v11 = -1 << *(v9 + 32);
    a3 = v10 & ~v11;
    if ((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v12 = ~v11;
      if (v32)
      {
        v13 = 1802658148;
      }

      else
      {
        v13 = 0x746867696CLL;
      }

      if (v32)
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      result = v32;
      while (1)
      {
        v15 = *(v9 + 48) + 16 * a3;
        v16 = *v15;
        v17 = *(v15 + 8);
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            if (a2 == 2 && ((v16 ^ result) & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          else if (a2 == 3 && v16 == result)
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v17)
          {
            if (a2 != 1)
            {
              goto LABEL_17;
            }

            switch(v16)
            {
              case 4u:
                if (v32 == 4)
                {
                  goto LABEL_77;
                }

                goto LABEL_17;
              case 5u:
                if (v32 == 5)
                {
                  goto LABEL_77;
                }

                goto LABEL_17;
              case 6u:
                if (v32 == 6)
                {
                  goto LABEL_77;
                }

                goto LABEL_17;
            }

            if (v32 - 4 < 3)
            {
              goto LABEL_17;
            }

            v22 = 0xD000000000000014;
            if (v16 > 1u)
            {
              if (v16 == 2)
              {
                v23 = 0xD000000000000015;
                v24 = 0x800000021A1096B0;
                if (v32 <= 1u)
                {
                  goto LABEL_61;
                }
              }

              else
              {
                v23 = 0x6174537472616D73;
                v24 = 0xEA00000000006B63;
                if (v32 <= 1u)
                {
                  goto LABEL_61;
                }
              }
            }

            else
            {
              v23 = 0xD000000000000014;
              if (!v16)
              {
                v24 = 0x800000021A109670;
                if (v32 > 1u)
                {
                  goto LABEL_53;
                }

LABEL_61:
                if (v32)
                {
                  v25 = 0x800000021A109690;
                }

                else
                {
                  v25 = 0x800000021A109670;
                }

LABEL_68:
                if (v23 == v22 && v24 == v25)
                {
                  goto LABEL_76;
                }

                v26 = sub_21A0E6C5C();

                result = v32;
                if (v26)
                {
                  goto LABEL_77;
                }

                goto LABEL_17;
              }

              v24 = 0x800000021A109690;
              if (v32 <= 1u)
              {
                goto LABEL_61;
              }
            }

LABEL_53:
            if (v32 == 2)
            {
              v22 = 0xD000000000000015;
            }

            else
            {
              v22 = 0x6174537472616D73;
            }

            if (v32 == 2)
            {
              v25 = 0x800000021A1096B0;
            }

            else
            {
              v25 = 0xEA00000000006B63;
            }

            goto LABEL_68;
          }

          if (!a2)
          {
            if (v16)
            {
              v18 = 1802658148;
            }

            else
            {
              v18 = 0x746867696CLL;
            }

            if (v16)
            {
              v19 = 0xE400000000000000;
            }

            else
            {
              v19 = 0xE500000000000000;
            }

            if (v18 == v13 && v19 == v14)
            {
              goto LABEL_76;
            }

            v21 = sub_21A0E6C5C();

            result = v32;
            if (v21)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_17:
        a3 = (a3 + 1) & v12;
        if (((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_73;
        }
      }
    }

    result = v32;
  }

LABEL_73:
  v27 = *v33;
  *(*v33 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v28 = *(v27 + 48) + 16 * a3;
  *v28 = result;
  *(v28 + 8) = a2;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
LABEL_76:

LABEL_77:
    result = sub_21A0E6CFC();
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }

  return result;
}

unint64_t sub_21A036510()
{
  result = qword_27CCDBDC0;
  if (!qword_27CCDBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBDC0);
  }

  return result;
}

unint64_t sub_21A036564()
{
  result = qword_27CCDBDC8;
  if (!qword_27CCDBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBDC8);
  }

  return result;
}

uint64_t sub_21A0365B8(uint64_t a1, unint64_t a2, char a3)
{
  v82 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v82, v7);
  v85 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_21A0E481C();
  v9 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v10);
  v84 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for URLAssetConfiguration.Format(0);
  v13 = MEMORY[0x28223BE20](v98, v12);
  v93 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v86 = &v80 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99A8);
  MEMORY[0x28223BE20](v91, v17);
  v19 = &v80 - v18;
  v20 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v97 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99B0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v80 - v25;
  v27 = type metadata accessor for ActivityAsset();
  v87 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = MEMORY[0x28223BE20](v29, v30);
  MEMORY[0x28223BE20](v31, v32);
  v36 = &v80 - v35;
  v89 = v3;
  v37 = *(*v3 + 16);
  v38 = *(*v3 + 24);
  if (v38 <= v37 || (a3 & 1) == 0)
  {
    v100 = v33;
    v95 = v34;
    if (a3)
    {
      v39 = v89;
      sub_21A034AA8();
    }

    else
    {
      if (v38 > v37)
      {
        sub_21A037D4C();
        goto LABEL_35;
      }

      v39 = v89;
      sub_21A038CBC();
    }

    v40 = *v39;
    sub_21A0E6DAC();
    ActivityAsset.hash(into:)(v108);
    v41 = sub_21A0E6DFC();
    v103 = v40 + 56;
    v104 = v40;
    v42 = -1 << *(v40 + 32);
    a2 = v41 & ~v42;
    if ((*(v40 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v102 = ~v42;
      v81 = (v9 + 32);
      v101 = *(v87 + 72);
      v83 = (v9 + 8);
      v90 = v19;
      v96 = v26;
      v99 = v27;
      v94 = v23;
      while (1)
      {
        sub_21A03A3F0(*(v104 + 48) + v101 * a2, v36, type metadata accessor for ActivityAsset);
        v43 = &v26[*(v23 + 48)];
        sub_21A03A3F0(v36, v26, type metadata accessor for ActivityAsset);
        sub_21A03A3F0(a1, v43, type metadata accessor for ActivityAsset);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        v56 = v36;
        v57 = v95;
        sub_21A03A3F0(v26, v95, type metadata accessor for ActivityAsset);
        v59 = *v57;
        v58 = *(v57 + 8);
        v60 = *(v57 + 16);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v36 = v56;
          sub_21A03A458(v56, type metadata accessor for ActivityAsset);
          sub_219F79CD8();
          v26 = v96;
LABEL_11:
          sub_219F6409C(v26, &qword_27CCD99B0);
          goto LABEL_12;
        }

        v92 = a2;
        v61 = a1;
        v62 = *(v57 + 17);
        v64 = *v43;
        v63 = *(v43 + 8);
        v65 = *(v43 + 16);
        v66 = *(v43 + 17);
        v108[0] = v59;
        v108[1] = v58;
        v109 = v60;
        v110 = v62;
        v105[0] = v64;
        v105[1] = v63;
        v106 = v65;
        v107 = v66;
        v67 = _s22NewsLiveActivitiesCore21SFSymbolConfigurationV2eeoiySbAC_ACtFZ_0(v108, v105);
        sub_21A03A458(v56, type metadata accessor for ActivityAsset);
        sub_219F79CD8();
        sub_219F79CD8();
        if (v67)
        {
          goto LABEL_40;
        }

        v26 = v96;
        sub_21A03A458(v96, type metadata accessor for ActivityAsset);
        a1 = v61;
        a2 = v92;
        v19 = v90;
        v23 = v94;
        v36 = v56;
LABEL_12:
        a2 = (a2 + 1) & v102;
        if (((*(v103 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v44 = v100;
      sub_21A03A3F0(v26, v100, type metadata accessor for ActivityAsset);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = v97;
        sub_21A03A4B8(v43, v97, type metadata accessor for URLAssetConfiguration);
        v46 = *(v91 + 48);
        sub_21A03A3F0(v44, v19, type metadata accessor for URLAssetConfiguration.Format);
        sub_21A03A3F0(v45, &v19[v46], type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21A03A3F0(v19, v93, type metadata accessor for URLAssetConfiguration.Format);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v47 = &v19[v46];
            v48 = v85;
            sub_21A03A4B8(v47, v85, type metadata accessor for URLAssetConfiguration.Recipe);
            sub_21A03A3AC(&qword_27CCD99B8);
            if (sub_21A0E61CC() & 1) != 0 && (v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0), v50 = *(v49 + 28), v51 = *(v93 + v50), v52 = *(v48 + v50), , , v53 = sub_219FAAA00(v51, v52), , , (v53) && (sub_219F76D10(*(v93 + *(v49 + 32)), *(v48 + *(v49 + 32))))
            {
              v54 = sub_21A0795D4(*(v93 + *(v82 + 20)), *(v48 + *(v82 + 20)));
              sub_21A03A458(v97, type metadata accessor for URLAssetConfiguration);
              sub_21A03A458(v36, type metadata accessor for ActivityAsset);
              result = v48;
              v23 = v94;
              if (v54)
              {
                goto LABEL_38;
              }
            }

            else
            {
              sub_21A03A458(v97, type metadata accessor for URLAssetConfiguration);
              sub_21A03A458(v36, type metadata accessor for ActivityAsset);
              result = v48;
              v23 = v94;
            }

            sub_21A03A458(result, type metadata accessor for URLAssetConfiguration.Recipe);
            sub_21A03A458(v93, type metadata accessor for URLAssetConfiguration.Recipe);
            v19 = v90;
            sub_21A03A458(v90, type metadata accessor for URLAssetConfiguration.Format);
            goto LABEL_34;
          }

          sub_21A03A458(v97, type metadata accessor for URLAssetConfiguration);
          sub_21A03A458(v36, type metadata accessor for ActivityAsset);
          sub_21A03A458(v93, type metadata accessor for URLAssetConfiguration.Recipe);
        }

        else
        {
          v68 = v86;
          sub_21A03A3F0(v19, v86, type metadata accessor for URLAssetConfiguration.Format);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v69 = &v19[v46];
            v70 = v19;
            v71 = v84;
            v72 = v68;
            v73 = v88;
            (*v81)(v84, v69, v88);
            v74 = sub_21A0E478C();
            v75 = *v83;
            (*v83)(v71, v73);
            sub_21A03A458(v97, type metadata accessor for URLAssetConfiguration);
            sub_21A03A458(v36, type metadata accessor for ActivityAsset);
            v75(v72, v73);
            if (v74)
            {
              goto LABEL_39;
            }

            sub_21A03A458(v70, type metadata accessor for URLAssetConfiguration.Format);
            v19 = v70;
            v26 = v96;
            v23 = v94;
            goto LABEL_34;
          }

          sub_21A03A458(v97, type metadata accessor for URLAssetConfiguration);
          sub_21A03A458(v36, type metadata accessor for ActivityAsset);
          (*v83)(v68, v88);
        }

        v23 = v94;
        sub_219F6409C(v19, &qword_27CCD99A8);
LABEL_34:
        sub_21A03A458(v100, type metadata accessor for URLAssetConfiguration);
        sub_21A03A458(v26, type metadata accessor for ActivityAsset);
        goto LABEL_12;
      }

      sub_21A03A458(v36, type metadata accessor for ActivityAsset);
      sub_21A03A458(v44, type metadata accessor for URLAssetConfiguration);
      goto LABEL_11;
    }
  }

LABEL_35:
  v76 = *v89;
  *(*v89 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21A03A4B8(a1, *(v76 + 48) + *(v87 + 72) * a2, type metadata accessor for ActivityAsset);
  v77 = *(v76 + 16);
  v78 = __OFADD__(v77, 1);
  v79 = v77 + 1;
  if (v78)
  {
    __break(1u);
LABEL_38:
    sub_21A03A458(result, type metadata accessor for URLAssetConfiguration.Recipe);
    sub_21A03A458(v93, type metadata accessor for URLAssetConfiguration.Recipe);
    v70 = v90;
LABEL_39:
    sub_21A03A458(v70, type metadata accessor for URLAssetConfiguration.Format);
    sub_21A03A458(v100, type metadata accessor for URLAssetConfiguration);
LABEL_40:
    sub_21A03A458(v96, type metadata accessor for ActivityAsset);
    result = sub_21A0E6CFC();
    __break(1u);
  }

  else
  {
    *(v76 + 16) = v79;
  }

  return result;
}

uint64_t sub_21A03725C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_21A035370();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21A037F58();
      goto LABEL_16;
    }

    sub_21A039538();
  }

  v10 = *v4;
  sub_21A0E6DAC();
  sub_21A0E626C();
  result = sub_21A0E6DFC();
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

      result = sub_21A0E6C5C();
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
  result = sub_21A0E6CFC();
  __break(1u);
  return result;
}

uint64_t sub_21A0373DC(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for NewsLiveActivity(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v27 = v11;
    sub_21A0355D0();
  }

  else
  {
    if (v15 > v14)
    {
      sub_21A0380B4();
      goto LABEL_12;
    }

    v27 = v11;
    sub_21A039770();
  }

  v16 = *v4;
  sub_21A0E6DAC();
  NewsLiveActivity.hash(into:)();
  v17 = sub_21A0E6DFC();
  v18 = -1 << *(v16 + 32);
  a2 = v17 & ~v18;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v9 + 72);
    do
    {
      sub_21A03A3F0(*(v16 + 48) + v20 * a2, v13, type metadata accessor for NewsLiveActivity);
      v21 = _s22NewsLiveActivitiesCore0aB8ActivityV2eeoiySbAC_ACtFZ_0(v13, a1);
      sub_21A03A458(v13, type metadata accessor for NewsLiveActivity);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21A03A4B8(a1, *(v22 + 48) + *(v9 + 72) * a2, type metadata accessor for NewsLiveActivity);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21A0E6CFC();
  __break(1u);
  return result;
}

uint64_t sub_21A037620(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_21A0358D8();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21A0382C0();
      goto LABEL_16;
    }

    sub_21A039A48();
  }

  v10 = *v4;
  sub_21A0E6DAC();
  sub_21A0E626C();
  result = sub_21A0E6DFC();
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

      result = sub_21A0E6C5C();
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
  result = sub_21A0E6CFC();
  __break(1u);
  return result;
}

uint64_t sub_21A0377A0(uint64_t *a1, unint64_t a2, char a3)
{
  v27 = a1;
  v6 = type metadata accessor for RemoteAssetKey();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_21A035B38();
  }

  else
  {
    if (v11 > v10)
    {
      sub_21A03841C();
      goto LABEL_18;
    }

    sub_21A039C80();
  }

  v12 = *v3;
  sub_21A0E6DAC();
  v13 = *v27;
  v14 = v27[1];
  sub_21A0E626C();
  sub_21A0E481C();
  sub_21A03A3AC(&qword_27CCD99F8);
  sub_21A0E615C();
  v15 = sub_21A0E6DFC();
  v16 = -1 << *(v12 + 32);
  a2 = v15 & ~v16;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v26 + 72);
    do
    {
      sub_21A03A3F0(*(v12 + 48) + v18 * a2, v9, type metadata accessor for RemoteAssetKey);
      v19 = *v9 == v13 && v9[1] == v14;
      if (v19 || (sub_21A0E6C5C()) && (sub_21A0E478C())
      {
        goto LABEL_21;
      }

      sub_21A03A458(v9, type metadata accessor for RemoteAssetKey);
      a2 = (a2 + 1) & v17;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v20 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21A03A4B8(v27, *(v20 + 48) + *(v26 + 72) * a2, type metadata accessor for RemoteAssetKey);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_21:
  sub_21A03A458(v9, type metadata accessor for RemoteAssetKey);
  result = sub_21A0E6CFC();
  __break(1u);
  return result;
}

uint64_t sub_21A037A78(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_21A035E90();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21A038628();
      goto LABEL_16;
    }

    sub_21A039FA8();
  }

  v10 = *v4;
  sub_21A0E6DAC();
  sub_21A0E626C();
  result = sub_21A0E6DFC();
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

      result = sub_21A0E6C5C();
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
  result = sub_21A0E6CFC();
  __break(1u);
  return result;
}

void *sub_21A037BF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE48);
  v2 = *v0;
  v3 = sub_21A0E682C();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
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

void *sub_21A037D4C()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityAsset();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE20);
  v7 = *v0;
  v8 = sub_21A0E682C();
  v9 = v8;
  if (*(v7 + 16))
  {
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
    v15 = *(v7 + 56);
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
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_21A03A3F0(*(v7 + 48) + v22, v6, type metadata accessor for ActivityAsset);
        result = sub_21A03A4B8(v6, *(v9 + 48) + v22, type metadata accessor for ActivityAsset);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_21A037F58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE40);
  v2 = *v0;
  v3 = sub_21A0E682C();
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

void *sub_21A0380B4()
{
  v1 = v0;
  v2 = type metadata accessor for NewsLiveActivity(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE28);
  v7 = *v0;
  v8 = sub_21A0E682C();
  v9 = v8;
  if (*(v7 + 16))
  {
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
    v15 = *(v7 + 56);
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
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_21A03A3F0(*(v7 + 48) + v22, v6, type metadata accessor for NewsLiveActivity);
        result = sub_21A03A4B8(v6, *(v9 + 48) + v22, type metadata accessor for NewsLiveActivity);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_21A0382C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE50);
  v2 = *v0;
  v3 = sub_21A0E682C();
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

void *sub_21A03841C()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteAssetKey();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE30);
  v7 = *v0;
  v8 = sub_21A0E682C();
  v9 = v8;
  if (*(v7 + 16))
  {
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
    v15 = *(v7 + 56);
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
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_21A03A3F0(*(v7 + 48) + v22, v6, type metadata accessor for RemoteAssetKey);
        result = sub_21A03A4B8(v6, *(v9 + 48) + v22, type metadata accessor for RemoteAssetKey);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_21A038628()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE38);
  v2 = *v0;
  v3 = sub_21A0E682C();
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

uint64_t sub_21A038784()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE48);
  result = sub_21A0E683C();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_41:
    *v1 = v4;
    return result;
  }

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
    v16 = *(v2 + 48) + 16 * (v13 | (v5 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_21A0E6DAC();
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        MEMORY[0x21CED2490](2);
        sub_21A0E6DCC();
        goto LABEL_27;
      }

      MEMORY[0x21CED2490](3);
      v19 = v17;
    }

    else
    {
      if (!v18)
      {
        MEMORY[0x21CED2490](0);
LABEL_18:
        sub_21A0E626C();

        goto LABEL_27;
      }

      MEMORY[0x21CED2490](1);
      switch(v17)
      {
        case 4u:
          v19 = 0;
          break;
        case 5u:
          v19 = 1;
          break;
        case 6u:
          v19 = 3;
          break;
        default:
          MEMORY[0x21CED2490](2);
          goto LABEL_18;
      }
    }

    MEMORY[0x21CED2490](v19);
LABEL_27:
    result = sub_21A0E6DFC();
    v20 = -1 << *(v4 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v10 + 8 * v22);
        if (v26 != -1)
        {
          v11 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_43;
    }

    v11 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v12 = *(v4 + 48) + 16 * v11;
    *v12 = v17;
    *(v12 + 8) = v18;
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
      goto LABEL_41;
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
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_21A038B18()
{
  result = qword_27CCDBDD0;
  if (!qword_27CCDBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBDD0);
  }

  return result;
}

unint64_t sub_21A038B6C()
{
  result = qword_27CCDBDD8;
  if (!qword_27CCDBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBDD8);
  }

  return result;
}

unint64_t sub_21A038BC0()
{
  result = qword_27CCDBDE8;
  if (!qword_27CCDBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBDE8);
  }

  return result;
}

unint64_t sub_21A038C14()
{
  result = qword_27CCDBDF0;
  if (!qword_27CCDBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBDF0);
  }

  return result;
}

unint64_t sub_21A038C68()
{
  result = qword_27CCDBDF8;
  if (!qword_27CCDBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBDF8);
  }

  return result;
}

uint64_t sub_21A038CBC()
{
  v1 = v0;
  v60 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v60, v2);
  v59 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21A0E481C();
  v4 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v5);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v64, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityAsset();
  v69 = *(v14 - 8);
  v70 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v73 = &v54 - v20;
  v21 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE20);
  v22 = sub_21A0E683C();
  result = v21;
  if (*(v21 + 16))
  {
    v54 = v0;
    v24 = 0;
    v25 = v21 + 56;
    v26 = 1 << *(result + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(result + 56);
    v29 = (v26 + 63) >> 6;
    v56 = (v4 + 32);
    v55 = (v4 + 8);
    v30 = v22 + 56;
    v65 = v13;
    v62 = v9;
    v68 = result;
    v61 = v22;
    v63 = v18;
    while (v28)
    {
      v32 = __clz(__rbit64(v28));
      v72 = (v28 - 1) & v28;
LABEL_15:
      v35 = *(result + 48);
      v71 = *(v69 + 72);
      v36 = v73;
      sub_21A03A3F0(v35 + v71 * (v32 | (v24 << 6)), v73, type metadata accessor for ActivityAsset);
      sub_21A0E6DAC();
      sub_21A03A3F0(v36, v18, type metadata accessor for ActivityAsset);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21A03A4B8(v18, v13, type metadata accessor for URLAssetConfiguration);
        MEMORY[0x21CED2490](1);
        sub_21A03A3F0(v13, v9, type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v37 = v59;
          sub_21A03A4B8(v9, v59, type metadata accessor for URLAssetConfiguration.Recipe);
          MEMORY[0x21CED2490](1);
          sub_219FAB2D0(v74);
          sub_219F7CB6C(v74, *(v37 + *(v60 + 20)));
          sub_21A03A458(v13, type metadata accessor for URLAssetConfiguration);
          v38 = type metadata accessor for URLAssetConfiguration.Recipe;
          v39 = v37;
        }

        else
        {
          v44 = v57;
          v45 = v58;
          (*v56)(v57, v9, v58);
          MEMORY[0x21CED2490](0);
          sub_21A03A3AC(&qword_27CCD99F8);
          sub_21A0E615C();
          v46 = v44;
          v13 = v65;
          (*v55)(v46, v45);
          v38 = type metadata accessor for URLAssetConfiguration;
          v39 = v13;
        }

        sub_21A03A458(v39, v38);
      }

      else
      {
        v40 = *v18;
        v41 = v18[16];
        v42 = v18[17];
        v43 = v18[18];
        MEMORY[0x21CED2490](0);
        v67 = v41;
        MEMORY[0x21CED2490](v41);
        v66 = v40;
        sub_21A0E626C();
        sub_21A0E6DCC();
        v18 = v63;
        if (v42 != 9)
        {
          sub_21A0E626C();
        }

        v22 = v61;
        sub_21A0E6DCC();
        if (v43 == 3)
        {
          sub_219F79CD8();
        }

        else
        {
          sub_21A0E626C();
          sub_219F79CD8();
        }

        v9 = v62;
        v13 = v65;
      }

      result = sub_21A0E6DFC();
      v47 = -1 << *(v22 + 32);
      v48 = result & ~v47;
      v49 = v48 >> 6;
      if (((-1 << v48) & ~*(v30 + 8 * (v48 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v47) >> 6;
        while (++v49 != v51 || (v50 & 1) == 0)
        {
          v52 = v49 == v51;
          if (v49 == v51)
          {
            v49 = 0;
          }

          v50 |= v52;
          v53 = *(v30 + 8 * v49);
          if (v53 != -1)
          {
            v31 = __clz(__rbit64(~v53)) + (v49 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_40;
      }

      v31 = __clz(__rbit64((-1 << v48) & ~*(v30 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v30 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      sub_21A03A4B8(v73, *(v22 + 48) + v31 * v71, type metadata accessor for ActivityAsset);
      ++*(v22 + 16);
      result = v68;
      v28 = v72;
    }

    v33 = v24;
    while (1)
    {
      v24 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v24 >= v29)
      {

        v1 = v54;
        goto LABEL_38;
      }

      v34 = *(v25 + 8 * v24);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v72 = (v34 - 1) & v34;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {

LABEL_38:
    *v1 = v22;
  }

  return result;
}

uint64_t sub_21A039538()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE40);
  result = sub_21A0E683C();
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
      sub_21A0E6DAC();

      sub_21A0E626C();
      result = sub_21A0E6DFC();
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

uint64_t sub_21A039770()
{
  v1 = v0;
  v2 = type metadata accessor for NewsLiveActivity(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE28);
  result = sub_21A0E683C();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_21A03A3F0(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for NewsLiveActivity);
      sub_21A0E6DAC();
      NewsLiveActivity.hash(into:)();
      result = sub_21A0E6DFC();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_21A03A4B8(v5, *(v8 + 48) + v15 * v19, type metadata accessor for NewsLiveActivity);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_21A039A48()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE50);
  result = sub_21A0E683C();
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
      sub_21A0E6DAC();

      sub_21A0E626C();
      result = sub_21A0E6DFC();
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

uint64_t sub_21A039C80()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteAssetKey();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE30);
  result = sub_21A0E683C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v0;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
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
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_21A03A3F0(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for RemoteAssetKey);
      sub_21A0E6DAC();
      sub_21A0E626C();
      sub_21A0E481C();
      sub_21A03A3AC(&qword_27CCD99F8);
      sub_21A0E615C();
      result = sub_21A0E6DFC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_21A03A4B8(v5, *(v8 + 48) + v16 * v21, type metadata accessor for RemoteAssetKey);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_21A039FA8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE38);
  result = sub_21A0E683C();
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
      sub_21A0E6DAC();

      sub_21A0E626C();
      result = sub_21A0E6DFC();
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

unint64_t sub_21A03A1E4()
{
  result = qword_27CCDBE00;
  if (!qword_27CCDBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBE00);
  }

  return result;
}

unint64_t sub_21A03A25C()
{
  result = qword_27CCDBE08;
  if (!qword_27CCDBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBE08);
  }

  return result;
}

unint64_t sub_21A03A2B4()
{
  result = qword_27CCDBE10;
  if (!qword_27CCDBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBE10);
  }

  return result;
}

unint64_t sub_21A03A30C()
{
  result = qword_27CCDBE18;
  if (!qword_27CCDBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBE18);
  }

  return result;
}

uint64_t sub_21A03A360()
{
  v0 = sub_21A0E6A0C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21A03A3AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21A0E481C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A03A3F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A03A458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A03A4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ActivityFlexibleWatchUpdateView()
{
  result = qword_27CCDBE58;
  if (!qword_27CCDBE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A03A5B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE78);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v83 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v7);
  v82 = &v73[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FC8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v79 = &v73[-v11];
  v12 = sub_21A0E554C();
  v78 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for ActivityFlexibleWatchUpdateView();
  v17 = a1 + *(updated + 24);
  v18 = (v17 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 20));
  v19 = v18[1];
  v80 = *v18;
  v20 = *(a1 + *(updated + 28));
  v22 = *a1;
  v21 = *(a1 + 8);
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    *&v86 = *a1;
    *(&v86 + 1) = v21;
    *&v87 = v23;
    *(&v87 + 1) = v24;
    v88 = v25;

    sub_219F7F800(v22, v21, v23, v24, v25, 1);
  }

  else
  {
    v75 = *(a1 + 32);

    sub_219F7F800(v22, v21, v23, v24, v25, 0);
    sub_21A0E66AC();
    v76 = v12;
    v26 = sub_21A0E575C();
    v77 = v20;
    v27 = v26;
    sub_21A0E512C();

    v20 = v77;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v22, v21, v23, v24, v75, 0);
    (*(v78 + 8))(v15, v76);
  }

  v84[0] = v86;
  v84[1] = v87;
  v85 = v88;
  v28 = sub_21A0B892C(v80, v19, v20, v84);
  v32 = v31;
  if (v31)
  {
    v33 = v28;
    v34 = v29;
    v35 = v30;
    sub_21A0E594C();
    v78 = v35 & 1;
    LOBYTE(v84[0]) = v35 & 1;
    v36 = sub_21A0E599C();
    v77 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    sub_21A0E588C();
    v42 = sub_21A0E596C();
    v76 = v33;
    v44 = v43;
    v46 = v45;
    v75 = v47;
    sub_219F63A30(v37, v39, v41 & 1);

    v48 = *MEMORY[0x277CE09A0];
    v49 = sub_21A0E57FC();
    v50 = *(v49 - 8);
    v51 = v79;
    (*(v50 + 104))(v79, v48, v49);
    v52 = *(v50 + 56);
    v80 = 1;
    v52(v51, 0, 1, v49);
    v53 = sub_21A0E595C();
    v55 = v54;
    v74 = v56;
    v58 = v57;
    sub_219F63A30(v42, v44, v46 & 1);

    sub_219F63A30(v76, v77, v78);
    v32 = v53;

    sub_219F6409C(v51, &qword_27CCD9FC8);
    KeyPath = swift_getKeyPath();
    v60 = v74 & 1;
    sub_219F63A40(v53, v55, v74 & 1);
  }

  else
  {
    v55 = 0;
    v60 = 0;
    v58 = 0;
    KeyPath = 0;
    v80 = 0;
  }

  v61 = sub_21A0E55BC();
  v62 = v82;
  *v82 = v61;
  *(v62 + 8) = 0x4018000000000000;
  *(v62 + 16) = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE80);
  sub_21A03AC14(a1, v62 + *(v63 + 44));
  v64 = v83;
  sub_219F45500(v62, v83, &qword_27CCDBE78);
  v66 = v80;
  v65 = v81;
  *v81 = v32;
  v65[1] = v55;
  v65[2] = v60;
  v65[3] = v58;
  v65[4] = KeyPath;
  v65[5] = v66;
  *(v65 + 48) = 0;
  v67 = v58;
  v68 = v55;
  v69 = v32;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE88);
  sub_219F45500(v64, v65 + *(v70 + 48), &qword_27CCDBE78);
  v71 = v65 + *(v70 + 64);
  sub_219F640FC(v69, v68, v60, v67);
  sub_219F6414C(v69, v68, v60, v67);
  *v71 = 0;
  v71[8] = 1;
  sub_219F6409C(v62, &qword_27CCDBE78);
  sub_219F6409C(v64, &qword_27CCDBE78);
  return sub_219F6414C(v69, v68, v60, v67);
}

uint64_t sub_21A03AC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  updated = type metadata accessor for ActivityFlexibleWatchUpdateGraphicView();
  v51 = *(updated - 8);
  v52 = updated;
  v5 = MEMORY[0x28223BE20](updated, v4);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v49 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1B0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE90);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v53 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v47 - v27;
  v29 = type metadata accessor for ActivityFlexibleWatchUpdateView();
  sub_219F45500(a1 + *(v29 + 24), v12, &qword_27CCDB1B0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_219F6409C(v12, &qword_27CCDB1B0);
    (*(v51 + 56))(v28, 1, 1, v52);
  }

  else
  {
    v48 = v28;
    v31 = v51;
    v30 = v52;
    sub_21A03C0F0(v12, v21, type metadata accessor for ActivityFlexibleUpdate.Graphic);
    sub_21A03C0F0(v21, v18, type metadata accessor for ActivityFlexibleUpdate.Graphic);
    memcpy(v56, (a1 + 48), sizeof(v56));
    if (sub_21A01E250(v56) == 1)
    {
      sub_219FF06D0(v55);
    }

    else
    {
      sub_219F45500(v56, v55, &qword_27CCDB1B8);
      memcpy(v55, v56, sizeof(v55));
    }

    v32 = v30;
    v28 = v48;
    v33 = v50;
    sub_21A03C0F0(v18, v50, type metadata accessor for ActivityFlexibleUpdate.Graphic);
    memcpy((v33 + *(v32 + 20)), v55, 0x2C0uLL);
    v34 = v33;
    v35 = v49;
    sub_21A03C0F0(v34, v49, type metadata accessor for ActivityFlexibleWatchUpdateGraphicView);
    sub_21A03C0F0(v35, v28, type metadata accessor for ActivityFlexibleWatchUpdateGraphicView);
    (*(v31 + 56))(v28, 0, 1, v32);
  }

  v36 = sub_21A0E567C();
  v58 = 0;
  sub_21A03B254(a1, v56);
  v63 = *&v56[64];
  v64 = *&v56[80];
  v65[0] = *&v56[96];
  *(v65 + 9) = *&v56[105];
  v59 = *v56;
  v60 = *&v56[16];
  v61 = *&v56[32];
  v62 = *&v56[48];
  v66[0] = *v56;
  v66[1] = *&v56[16];
  v66[2] = *&v56[32];
  v66[3] = *&v56[48];
  v66[4] = *&v56[64];
  v66[5] = *&v56[80];
  v67[0] = *&v56[96];
  *(v67 + 9) = *&v56[105];
  sub_219F45500(&v59, v55, &qword_27CCDBE98);
  sub_219F6409C(v66, &qword_27CCDBE98);
  *(&v57[4] + 7) = v63;
  *(&v57[5] + 7) = v64;
  *(&v57[6] + 7) = v65[0];
  v57[7] = *(v65 + 9);
  *(v57 + 7) = v59;
  *(&v57[1] + 7) = v60;
  *(&v57[2] + 7) = v61;
  *(&v57[3] + 7) = v62;
  v37 = v58;
  v38 = v53;
  sub_219F45500(v28, v53, &qword_27CCDBE90);
  v39 = v54;
  sub_219F45500(v38, v54, &qword_27CCDBE90);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBEA0) + 48);
  v55[0] = v36;
  LOBYTE(v55[1]) = v37;
  *(&v55[6] + 1) = v57[5];
  *(&v55[5] + 1) = v57[4];
  *(&v55[7] + 1) = v57[6];
  *(&v55[8] + 1) = v57[7];
  *(&v55[1] + 1) = v57[0];
  *(&v55[2] + 1) = v57[1];
  *(&v55[3] + 1) = v57[2];
  *(&v55[4] + 1) = v57[3];
  *(v40 + 144) = HIBYTE(v57[7]);
  v41 = v55[8];
  v42 = v55[1];
  *v40 = v55[0];
  *(v40 + 16) = v42;
  v43 = v55[5];
  *(v40 + 64) = v55[4];
  *(v40 + 80) = v43;
  v44 = v55[3];
  *(v40 + 32) = v55[2];
  *(v40 + 48) = v44;
  v45 = v55[7];
  *(v40 + 96) = v55[6];
  *(v40 + 112) = v45;
  *(v40 + 128) = v41;
  sub_219F45500(v55, v56, &qword_27CCDBEA8);
  sub_219F6409C(v28, &qword_27CCDBE90);
  *&v56[81] = v57[4];
  *&v56[97] = v57[5];
  *&v56[113] = v57[6];
  *&v56[129] = v57[7];
  *&v56[17] = v57[0];
  *&v56[33] = v57[1];
  *&v56[49] = v57[2];
  *v56 = v36;
  *&v56[8] = 0;
  v56[16] = v37;
  *&v56[65] = v57[3];
  sub_219F6409C(v56, &qword_27CCDBEA8);
  return sub_219F6409C(v38, &qword_27CCDBE90);
}

uint64_t sub_21A03B254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FC8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v133 = &v124 - v5;
  v6 = sub_21A0E554C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ActivityFlexibleWatchUpdateView();
  v12 = a1 + *(updated + 24);
  v126 = type metadata accessor for ActivityFlexibleUpdate(0);
  v127 = v12;
  v13 = (v12 + *(v126 + 28));
  v15 = *v13;
  v14 = v13[1];
  v141 = v15;
  v142 = v14;
  v16 = *(a1 + *(updated + 28));
  v17 = *a1;
  v18 = *(a1 + 8);
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  v21 = *(a1 + 32);
  v134 = a1;
  v135 = v16;
  LODWORD(v14) = *(a1 + 40);
  v136 = v6;
  v131 = v10;
  v132 = v7;
  if (v14 == 1)
  {
    *&v202 = v17;
    *(&v202 + 1) = v18;
    *&v203 = v20;
    *(&v203 + 1) = v19;
    v204 = v21;
    v22 = v21;
    v23 = v19;

    sub_219F7F800(v17, v18, v20, v23, v22, 1);
  }

  else
  {
    v24 = v7;
    v25 = v21;
    KeyPath = v21;
    v26 = v19;

    sub_219F7F800(v17, v18, v20, v26, v25, 0);
    sub_21A0E66AC();
    v27 = sub_21A0E575C();
    v16 = v135;
    sub_21A0E512C();

    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v17, v18, v20, v26, KeyPath, 0);
    (*(v24 + 8))(v10, v136);
  }

  v198[0] = v202;
  v198[1] = v203;
  *&v198[2] = v204;

  v28 = sub_21A0B892C(v141, v142, v16, v198);
  v32 = v134;
  if (v31)
  {
    v137 = v29;
    v138 = v30;
    v139 = v28;
    KeyPath = v31;
    memcpy(v198, (v134 + 48), 0x968uLL);
    if (sub_21A01E250(v198) == 1)
    {
      sub_219F639B0(&v185);
    }

    else
    {
      sub_219F45500(&v198[69], &v185, &qword_27CCD95B8);
      v195 = v198[79];
      v196 = v198[80];
      v197 = *&v198[81];
      v191 = v198[75];
      v192 = v198[76];
      v193 = v198[77];
      v194 = v198[78];
      v187 = v198[71];
      v188 = v198[72];
      v189 = v198[73];
      v190 = v198[74];
      v185 = v198[69];
      v186 = v198[70];
    }

    v182 = v195;
    v183 = v196;
    v184 = v197;
    v178 = v191;
    v179 = v192;
    v180 = v193;
    v181 = v194;
    v174 = v187;
    v175 = v188;
    v176 = v189;
    v177 = v190;
    v172 = v185;
    v173 = v186;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v166 = 0u;
    v171 = 0x4000000;
    v165 = 9;
    v34 = *v32;
    v33 = *(v32 + 8);
    v35 = *(v32 + 16);
    v36 = *(v32 + 24);
    v37 = *(v32 + 32);
    if (*(v32 + 40) == 1)
    {
      *&v199 = *v32;
      *(&v199 + 1) = v33;
      *&v200 = v35;
      *(&v200 + 1) = v36;
      v201 = v37;
      *&v149 = v34;
      *(&v149 + 1) = v33;
      *&v150 = v35;
      *(&v150 + 1) = v36;
      *&v151 = v37;
      BYTE8(v151) = 1;
      sub_219F63900(&v149, &v162);
    }

    else
    {

      sub_21A0E66AC();
      v38 = sub_21A0E575C();
      sub_21A0E512C();

      v39 = v131;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v34, v33, v35, v36, v37, 0);
      v40 = v39;
      v32 = v134;
      (*(v132 + 8))(v40, v136);
    }

    v146 = v199;
    v147 = v200;
    v148 = v201;
    v41 = v137;
    v134 = Text.activityTextModifier(_:fallback:font:environment:)(&v172, &v166, &v165, &v146, v139, v137, v138 & 1);
    v124 = v43;
    v125 = v42;
    v45 = v44;
    v162 = v146;
    v163 = v147;
    v164 = v148;
    sub_219F5ED9C(&v162);
    v159 = v182;
    v160 = v183;
    v161 = v184;
    v155 = v178;
    v156 = v179;
    v157 = v180;
    v158 = v181;
    v151 = v174;
    v152 = v175;
    v153 = v176;
    v154 = v177;
    v149 = v172;
    v150 = v173;
    sub_219F6409C(&v149, &qword_27CCD95B8);
    sub_21A0E588C();
    v46 = *MEMORY[0x277CE09A0];
    v47 = sub_21A0E57FC();
    v48 = *(v47 - 8);
    v49 = v133;
    (*(v48 + 104))(v133, v46, v47);
    v50 = *(v48 + 56);
    v142 = 1;
    v50(v49, 0, 1, v47);
    sub_21A0E589C();
    sub_219F6409C(v49, &qword_27CCD9FC8);
    v51 = v134;
    v52 = v125;
    v53 = sub_21A0E599C();
    v128 = v54;
    v129 = v53;
    LOBYTE(v46) = v55;
    v141 = v56;
    sub_219F63A30(v139, v41, v138 & 1);

    sub_219F63A30(v51, v52, v45 & 1);

    KeyPath = swift_getKeyPath();
    v57 = swift_getKeyPath();
    LOBYTE(v146) = v46 & 1;
    LOBYTE(v143) = 0;
    v137 = v46 & 1;
    v138 = 0x3FE78D4FDF3B645ALL;
    v139 = v57;
    v16 = v135;
  }

  else
  {
    v128 = 0;
    v129 = 0;
    KeyPath = 0;
    v141 = 0;
    v138 = 0;
    v139 = 0;
    v142 = 0;
    v137 = 0;
  }

  v58 = (v127 + *(v126 + 32));
  v60 = *v58;
  v59 = v58[1];
  v62 = *v32;
  v61 = *(v32 + 8);
  v64 = *(v32 + 16);
  v63 = *(v32 + 24);
  v65 = *(v32 + 32);
  LODWORD(v58) = *(v32 + 40);
  v134 = v59;
  if (v58 == 1)
  {
    *&v199 = v62;
    *(&v199 + 1) = v61;
    *&v200 = v64;
    *(&v200 + 1) = v63;
    v201 = v65;

    sub_219F7F800(v62, v61, v64, v63, v65, 1);
  }

  else
  {

    sub_219F7F800(v62, v61, v64, v63, v65, 0);
    sub_21A0E66AC();
    v66 = sub_21A0E575C();
    v127 = v60;
    v67 = v66;
    sub_21A0E512C();

    v60 = v127;
    v68 = v131;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v62, v61, v64, v63, v65, 0);
    v69 = v68;
    v16 = v135;
    (*(v132 + 8))(v69, v136);
  }

  v198[0] = v199;
  v198[1] = v200;
  *&v198[2] = v201;
  v70 = sub_21A0B892C(v60, v134, v16, v198);
  if (v73)
  {
    v74 = v73;
    v127 = v72;
    v134 = v71;
    v135 = v70;
    memcpy(v198, (v32 + 48), 0x968uLL);
    if (sub_21A01E250(v198) == 1)
    {
      sub_219F639B0(&v185);
    }

    else
    {
      sub_219F45500(&v198[81] + 8, &v185, &qword_27CCD95B8);
      v195 = *(&v198[91] + 8);
      v196 = *(&v198[92] + 8);
      v197 = *(&v198[93] + 1);
      v191 = *(&v198[87] + 8);
      v192 = *(&v198[88] + 8);
      v193 = *(&v198[89] + 8);
      v194 = *(&v198[90] + 8);
      v187 = *(&v198[83] + 8);
      v188 = *(&v198[84] + 8);
      v189 = *(&v198[85] + 8);
      v190 = *(&v198[86] + 8);
      v185 = *(&v198[81] + 8);
      v186 = *(&v198[82] + 8);
    }

    v182 = v195;
    v183 = v196;
    v184 = v197;
    v178 = v191;
    v179 = v192;
    v180 = v193;
    v181 = v194;
    v174 = v187;
    v175 = v188;
    v176 = v189;
    v177 = v190;
    v172 = v185;
    v173 = v186;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v166 = 0u;
    v171 = 0x4000000;
    v165 = 9;
    v81 = *v32;
    v80 = *(v32 + 8);
    v82 = *(v32 + 16);
    v83 = *(v32 + 24);
    v84 = *(v32 + 32);
    if (*(v32 + 40) == 1)
    {
      *&v162 = *v32;
      *(&v162 + 1) = v80;
      *&v163 = v82;
      *(&v163 + 1) = v83;
      v164 = v84;
      *&v149 = v81;
      *(&v149 + 1) = v80;
      *&v150 = v82;
      *(&v150 + 1) = v83;
      *&v151 = v84;
      BYTE8(v151) = 1;
      sub_219F63900(&v149, &v146);
    }

    else
    {

      sub_21A0E66AC();
      v85 = sub_21A0E575C();
      sub_21A0E512C();

      v86 = v131;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v81, v80, v82, v83, v84, 0);
      (*(v132 + 8))(v86, v136);
    }

    v143 = v162;
    v144 = v163;
    v145 = v164;
    v87 = Text.activityTextModifier(_:fallback:font:environment:)(&v172, &v166, &v165, &v143, v135, v134, v127 & 1);
    v89 = v88;
    v91 = v90;
    v146 = v143;
    v147 = v144;
    v148 = v145;
    sub_219F5ED9C(&v146);
    v159 = v182;
    v160 = v183;
    v161 = v184;
    v155 = v178;
    v156 = v179;
    v157 = v180;
    v158 = v181;
    v151 = v174;
    v152 = v175;
    v153 = v176;
    v154 = v177;
    v149 = v172;
    v150 = v173;
    sub_219F6409C(&v149, &qword_27CCD95B8);
    sub_21A0E594C();
    v92 = sub_21A0E599C();
    v94 = v93;
    v132 = v74;
    v96 = v95;
    v136 = v97;

    sub_219F63A30(v87, v89, v91 & 1);

    sub_21A0E586C();
    v131 = sub_21A0E596C();
    v125 = v99;
    v126 = v98;
    LOBYTE(v87) = v100;
    sub_219F63A30(v92, v94, v96 & 1);

    v101 = *MEMORY[0x277CE09A0];
    v102 = sub_21A0E57FC();
    v103 = *(v102 - 8);
    v104 = v133;
    (*(v103 + 104))(v133, v101, v102);
    v105 = *(v103 + 56);
    v136 = 1;
    v105(v104, 0, 1, v102);
    v106 = v131;
    v107 = v126;
    v108 = sub_21A0E595C();
    v110 = v109;
    LOBYTE(v101) = v111;
    v124 = v112;
    sub_219F63A30(v106, v107, v87 & 1);

    sub_219F6409C(v104, &qword_27CCD9FC8);
    LODWORD(v143) = sub_21A0E570C();
    v75 = sub_21A0E597C();
    v76 = v113;
    LOBYTE(v106) = v114;
    v78 = v115;
    sub_219F63A30(v135, v134, v127 & 1);

    sub_219F63A30(v108, v110, v101 & 1);

    v79 = swift_getKeyPath();
    v77 = v106 & 1;
    sub_219F63A40(v75, v76, v77);
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v136 = 0;
  }

  v116 = v128;
  v117 = v129;
  *&v172 = v129;
  *(&v172 + 1) = v128;
  *&v173 = v137;
  *(&v173 + 1) = v141;
  *&v174 = KeyPath;
  *(&v174 + 1) = v138;
  *&v175 = v139;
  *(&v175 + 1) = v142;
  LOBYTE(v176) = 0;
  LOBYTE(v198[4]) = 0;
  v198[2] = v174;
  v198[3] = v175;
  v198[0] = v172;
  v198[1] = v173;
  sub_219F45500(&v172, &v185, &qword_27CCDBEB0);
  v118 = v136;
  sub_219F640FC(v75, v76, v77, v78);
  sub_219F6414C(v75, v76, v77, v78);
  v119 = v198[3];
  v120 = v130;
  *(v130 + 32) = v198[2];
  *(v120 + 48) = v119;
  v121 = *&v198[4];
  v122 = v198[1];
  *v120 = v198[0];
  *(v120 + 16) = v122;
  *(v120 + 64) = v121;
  *(v120 + 72) = v75;
  *(v120 + 80) = v76;
  *(v120 + 88) = v77;
  *(v120 + 96) = v78;
  *(v120 + 104) = v79;
  *(v120 + 112) = v118;
  *(v120 + 120) = 0;
  sub_219F6414C(v75, v76, v77, v78);
  *&v185 = v117;
  *(&v185 + 1) = v116;
  *&v186 = v137;
  *(&v186 + 1) = v141;
  *&v187 = KeyPath;
  *(&v187 + 1) = v138;
  *&v188 = v139;
  *(&v188 + 1) = v142;
  LOBYTE(v189) = 0;
  return sub_219F6409C(&v185, &qword_27CCDBEB0);
}

uint64_t sub_21A03C07C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E567C();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE68);
  sub_21A03A5B0(v1, (a1 + *(v3 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE70);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_21A03C0F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A03C158()
{
  result = qword_27CCDBEB8;
  if (!qword_27CCDBEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBE70);
    sub_21A03C1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBEB8);
  }

  return result;
}

unint64_t sub_21A03C1E4()
{
  result = qword_27CCDBEC0;
  if (!qword_27CCDBEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBEC0);
  }

  return result;
}

uint64_t sub_21A03C274@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) <= 2uLL)
  {
  }

  else
  {
    sub_21A03D92C(v3, v3 + 32, 0, 5uLL);
  }

  *a1 = sub_21A0E566C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBEE0);
  sub_219F3E490(&qword_27CCDBEE8, &qword_27CCDBED8);
  sub_21A03DA14();
  sub_21A03DACC();
  return sub_21A0E5DEC();
}

uint64_t sub_21A03C3BC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v49 = sub_21A0E468C();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v3);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9C8);
  v50 = *(v51 - 8);
  v6 = MEMORY[0x28223BE20](v51, v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v47 = &v42 - v9;
  v10 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA480);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v12);
  v14 = &v42 - v13;
  v15 = sub_21A0E561C();
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  MEMORY[0x28223BE20](v17, v18);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF00);
  MEMORY[0x28223BE20](v44, v19);
  v21 = &v42 - v20;
  v22 = a1[8];
  v23 = a1[10];
  v57 = a1[9];
  *v58 = v23;
  *&v58[11] = *(a1 + 171);
  v24 = a1[4];
  v25 = a1[6];
  v26 = a1[7];
  v54[5] = a1[5];
  v54[6] = v25;
  v55 = v26;
  v56 = v22;
  v27 = a1[1];
  v54[0] = *a1;
  v54[1] = v27;
  v28 = a1[3];
  v54[2] = a1[2];
  v54[3] = v28;
  v54[4] = v24;
  *v21 = sub_21A0E55BC();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF10);
  sub_21A03CB1C(v54, &v21[*(v29 + 44)]);
  sub_21A0E560C();
  sub_21A0E55FC();
  if (*v58)
  {
    sub_21A0E560C();
    sub_21A0E55FC();
    sub_21A0E55EC();
    sub_21A0E55FC();
    sub_21A0E563C();
  }

  else
  {
    sub_21A0E562C();
  }

  v30 = sub_21A0E59DC();
  v32 = v31;
  v34 = v33;
  sub_21A0E55CC();
  sub_219F63A30(v30, v32, v34 & 1);

  sub_21A0E55FC();
  v53 = *(&v55 + 1);
  sub_21A0E499C();
  sub_219F9DCCC();
  sub_21A0E463C();
  sub_219F3E490(&qword_27CCDA490, &qword_27CCDA480);
  v35 = v43;
  sub_21A0E678C();
  (*(v42 + 8))(v14, v35);
  sub_21A0E55CC();

  sub_21A0E55FC();
  v53 = *(&v56 + 1);
  sub_21A0E499C();
  sub_21A021038();
  v36 = v45;
  sub_21A0E465C();
  v37 = v46;
  sub_21A0E467C();
  v38 = v47;
  v39 = v51;
  MEMORY[0x21CECFD40](v37, v51);
  (*(v48 + 8))(v37, v49);
  v40 = *(v50 + 8);
  v40(v36, v39);
  sub_219F3E490(&qword_27CCDBF18, &qword_27CCDB9C8);
  sub_21A0E60EC();
  v40(v38, v39);
  sub_21A0E55CC();

  sub_21A0E55FC();
  sub_21A0E563C();
  sub_219F3E490(&qword_27CCDBEF8, &qword_27CCDBF00);
  sub_21A0E5ADC();

  return sub_219F6409C(v21, &qword_27CCDBF00);
}

uint64_t sub_21A03CB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_21A0E468C();
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9C8);
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v74 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v75 = &v69 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA498) - 8;
  v17 = MEMORY[0x28223BE20](v83, v16);
  v84 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v69 - v20;
  v22 = sub_21A0E573C();
  v70 = *(v22 - 8);
  v71 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF20);
  v27 = *(v26 - 8);
  v72 = v26;
  v73 = v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v69 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF28);
  v33 = MEMORY[0x28223BE20](v31 - 8, v32);
  v80 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v86 = &v69 - v36;
  v37 = *(a1 + 144);
  v97 = *(a1 + 128);
  v98 = v37;
  v99[0] = *(a1 + 160);
  *(v99 + 11) = *(a1 + 171);
  v38 = *(a1 + 80);
  v93 = *(a1 + 64);
  v94 = v38;
  v39 = *(a1 + 112);
  v95 = *(a1 + 96);
  v96 = v39;
  v40 = *(a1 + 16);
  v89 = *a1;
  v90 = v40;
  v41 = *(a1 + 48);
  v91 = *(a1 + 32);
  v92 = v41;
  v42 = sub_21A0E593C();
  KeyPath = swift_getKeyPath();
  sub_219F73218(a1, v100);
  sub_21A0E5E4C();
  sub_21A0E53BC();
  v88[8] = v97;
  v88[9] = v98;
  v88[10] = v99[0];
  v88[11] = v99[1];
  v88[4] = v93;
  v88[5] = v94;
  v88[6] = v95;
  v88[7] = v96;
  v88[0] = v89;
  v88[1] = v90;
  v88[2] = v91;
  v88[3] = v92;
  *&v88[12] = KeyPath;
  *(&v88[12] + 1) = v42;
  sub_21A0E571C();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF30);
  v45 = sub_21A03DB20();
  sub_21A0E5AFC();
  (*(v70 + 8))(v25, v71);
  memcpy(v100, v88, 0x140uLL);
  sub_219F6409C(v100, &qword_27CCDBF30);

  *&v88[0] = v44;
  *(&v88[0] + 1) = v45;
  swift_getOpaqueTypeConformance2();
  v46 = v72;
  sub_21A0E5ABC();

  (*(v73 + 8))(v30, v46);
  v87 = *(a1 + 136);
  sub_21A0E499C();
  sub_21A021038();
  v47 = v74;
  sub_21A0E465C();
  v48 = v79;
  sub_21A0E467C();
  v49 = v75;
  v50 = v77;
  MEMORY[0x21CECFD40](v48, v77);
  (*(v81 + 8))(v48, v82);
  v51 = *(v78 + 8);
  v51(v47, v50);
  sub_219F3E490(&qword_27CCDBF18, &qword_27CCDB9C8);
  sub_21A0E60EC();
  v51(v49, v50);
  sub_21A0E593C();
  v52 = sub_21A0E599C();
  v54 = v53;
  LOBYTE(v51) = v55;

  *&v88[0] = *(a1 + 144);
  v87 = *&v88[0];

  v56 = sub_21A0E597C();
  v58 = v57;
  LOBYTE(a1) = v59;
  v61 = v60;
  sub_219F63A30(v52, v54, v51 & 1);

  sub_21A03DCB8(v88);
  v62 = &v21[*(v83 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4A0);
  sub_21A0E53CC();
  *v62 = swift_getKeyPath();
  *v21 = v56;
  *(v21 + 1) = v58;
  v21[16] = a1 & 1;
  *(v21 + 3) = v61;
  v63 = v86;
  v64 = v80;
  sub_219F59F0C(v86, v80);
  v65 = v84;
  sub_219F45500(v21, v84, &qword_27CCDA498);
  v66 = v85;
  sub_219F59F0C(v64, v85);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF58);
  sub_219F45500(v65, v66 + *(v67 + 48), &qword_27CCDA498);
  sub_219F6409C(v21, &qword_27CCDA498);
  sub_219F6409C(v63, &qword_27CCDBF28);
  sub_219F6409C(v65, &qword_27CCDA498);
  return sub_219F6409C(v64, &qword_27CCDBF28);
}

uint64_t sub_21A03D364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF78);
  v61 = *(v3 - 8);
  v62 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v57 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF80);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v63 = &v57 - v15;
  v16 = *(a1 + 80);
  v17 = *(a1 + 96);
  v18 = *(a1 + 48);
  v78 = *(a1 + 64);
  v79 = v16;
  v80[0] = v17;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  *(v80 + 13) = *(a1 + 109);
  v77 = v18;
  v21 = *(a1 + 160);
  v81[0] = *(a1 + 168);
  *(v81 + 15) = *(a1 + 183);
  *&v73 = v19;
  *(&v73 + 1) = v20;
  sub_219F3F130();

  v22 = sub_21A0E59EC();
  v24 = v23;
  v26 = v25;
  if (v21)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0u;
    *(v27 + 40) = 0u;
    *(v27 + 56) = 0u;
    *(v27 + 72) = 0u;
    *(v27 + 92) = 62;
    *(v27 + 88) = 0;
    v31 = v27;
    v32 = 0x2000000000;
  }

  else
  {
    v33 = *(a1 + 96);
    v75 = *(a1 + 80);
    v76[0] = v33;
    *(v76 + 13) = *(a1 + 109);
    v34 = *(a1 + 64);
    v73 = *(a1 + 48);
    v74 = v34;
    sub_219F72F28(&v73, &v69);
    v31 = v73;
    v28 = v74;
    v29 = v75;
    v30 = v76[0];
    v32 = LODWORD(v76[1]) | (BYTE4(v76[1]) << 32);
  }

  v69 = v31;
  v70 = v28;
  v71 = v29;
  v72[0] = v30;
  LODWORD(v72[1]) = v32;
  BYTE4(v72[1]) = BYTE4(v32);
  sub_219F8D81C();
  v35 = sub_21A0E597C();
  v59 = v36;
  v60 = v37;
  v58 = v38;
  sub_219F63A30(v22, v24, v26 & 1);

  v75 = v71;
  v76[0] = v72[0];
  *(v76 + 13) = *(v72 + 13);
  v73 = v69;
  v74 = v70;
  sub_219F72F84(&v73);
  if (v21)
  {
    *v82 = v81[0];
    *&v82[15] = *(v81 + 15);
    if (v81[1])
    {
      sub_21A03DD38(v82, &v69);
      v39 = sub_21A0E5CDC();
    }

    else
    {
      sub_21A03DD38(v82, &v69);
      v39 = sub_21A0E5CBC();
    }

    v41 = v39;
    v67[2] = v79;
    v68[0] = v80[0];
    *(v68 + 13) = *(v80 + 13);
    v67[0] = v77;
    v67[1] = v78;
    v71 = v79;
    v72[0] = v80[0];
    *(v72 + 13) = *(v80 + 13);
    v69 = v77;
    v70 = v78;
    v42 = v62;
    v43 = &v7[*(v62 + 36)];
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0) + 28);
    v45 = *MEMORY[0x277CE1050];
    v46 = sub_21A0E5CEC();
    (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
    *v43 = swift_getKeyPath();
    *v7 = v41;
    v47 = v70;
    *(v7 + 8) = v69;
    *(v7 + 69) = *(v72 + 13);
    v48 = v71;
    *(v7 + 56) = v72[0];
    *(v7 + 40) = v48;
    *(v7 + 24) = v47;
    v49 = v57;
    sub_21A03DD94(v7, v57);
    v40 = v63;
    sub_21A03DD94(v49, v63);
    (*(v61 + 56))(v40, 0, 1, v42);
    sub_219F72F28(v67, &v66);
  }

  else
  {
    v40 = v63;
    (*(v61 + 56))(v63, 1, 1, v62);
  }

  v50 = v64;
  sub_219F45500(v40, v64, &qword_27CCDBF80);
  v51 = v65;
  v53 = v59;
  v52 = v60;
  *v65 = v35;
  v51[1] = v53;
  v54 = v58 & 1;
  *(v51 + 16) = v58 & 1;
  v51[3] = v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF88);
  sub_219F45500(v50, v51 + *(v55 + 48), &qword_27CCDBF80);
  sub_219F63A40(v35, v53, v54);

  sub_219F6409C(v40, &qword_27CCDBF80);
  sub_219F6409C(v50, &qword_27CCDBF80);
  sub_219F63A30(v35, v53, v54);
}

uint64_t sub_21A03D898@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v10[8] = v1[8];
  v10[9] = v3;
  v11[0] = v1[10];
  *(v11 + 11) = *(v1 + 171);
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[7];
  v10[6] = v1[6];
  v10[7] = v5;
  v6 = v1[1];
  v10[0] = *v1;
  v10[1] = v6;
  v7 = v1[3];
  v10[2] = v1[2];
  v10[3] = v7;
  *a1 = sub_21A0E55BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF70);
  return sub_21A03D364(v10, (a1 + *(v8 + 44)));
}

void sub_21A03D92C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEC0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 192);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_21A03DA14()
{
  result = qword_27CCDBEF0;
  if (!qword_27CCDBEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBEE0);
    sub_219F3E490(&qword_27CCDBEF8, &qword_27CCDBF00);
    sub_219FB3D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBEF0);
  }

  return result;
}

unint64_t sub_21A03DACC()
{
  result = qword_27CCDBF08;
  if (!qword_27CCDBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBF08);
  }

  return result;
}

unint64_t sub_21A03DB20()
{
  result = qword_27CCDBF38;
  if (!qword_27CCDBF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBF30);
    sub_21A03DBAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBF38);
  }

  return result;
}

unint64_t sub_21A03DBAC()
{
  result = qword_27CCDBF40;
  if (!qword_27CCDBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBF48);
    sub_21A03DC64();
    sub_219F3E490(&qword_27CCDB188, &qword_27CCDB190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBF40);
  }

  return result;
}

unint64_t sub_21A03DC64()
{
  result = qword_27CCDBF50;
  if (!qword_27CCDBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBF50);
  }

  return result;
}

uint64_t sub_21A03DD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBF78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_21A03DE04@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (*(a1 + 16))
  {
    if ((*(a1 + 40) & 1) == 0)
    {
LABEL_3:
      if (v5 > 3u)
      {
        if (v5 > 5u)
        {
          if (v5 == 6)
          {
            a1 = sub_21A0E5E9C();
          }

          else
          {
            a1 = sub_21A0E5ECC();
          }
        }

        else if (v5 == 4)
        {
          a1 = sub_21A0E5EBC();
        }

        else
        {
          a1 = sub_21A0E5EFC();
        }
      }

      else if (v5 > 1u)
      {
        if (v5 == 2)
        {
          a1 = sub_21A0E5EAC();
        }

        else
        {
          a1 = sub_21A0E5EDC();
        }
      }

      else if (v5)
      {
        a1 = sub_21A0E5EEC();
      }

      else
      {
        a1 = sub_21A0E5E8C();
      }
    }
  }

  else
  {
    v9 = *a1;
    if (v9 > 3)
    {
      if (*a1 > 5u)
      {
        if (v9 == 6)
        {
          a1 = sub_21A0E5E9C();
        }

        else
        {
          a1 = sub_21A0E5ECC();
        }
      }

      else if (v9 == 4)
      {
        a1 = sub_21A0E5EBC();
      }

      else
      {
        a1 = sub_21A0E5EFC();
      }
    }

    else if (*a1 > 1u)
    {
      if (v9 == 2)
      {
        a1 = sub_21A0E5EAC();
      }

      else
      {
        a1 = sub_21A0E5EDC();
      }
    }

    else if (*a1)
    {
      a1 = sub_21A0E5EEC();
    }

    else
    {
      a1 = sub_21A0E5E8C();
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x28223BE20](a1, a2);
  v15[2] = a2;
  if (v8)
  {
    sub_21A074CD4(sub_21A03E268, v15, v7);

    sub_21A0E5E0C();
  }

  else
  {
    v10 = sub_21A074BE0(sub_21A03E288, v15, v7);

    MEMORY[0x21CED14F0](v10);
  }

  sub_21A0E532C();
  v11 = v18;
  v12 = sub_21A0E554C();
  v13 = *(*(v12 - 8) + 8);
  v16 = v20;
  v17 = v19;
  v13(a2, v12);
  *a3 = v11;
  result = v17;
  *(a3 + 24) = v16;
  *(a3 + 8) = result;
  return result;
}

uint64_t sub_21A03E094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ActivityColorEnvironment();
  MEMORY[0x28223BE20](v4, v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v13[0] = v8;
  *(v13 + 13) = *(a1 + 61);
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  sub_21A0E541C();
  sub_21A0E54BC();
  v10 = sub_219F89010(v7);
  result = sub_219F894D4(v7);
  *a2 = v10;
  return result;
}

uint64_t sub_21A03E16C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ActivityColorEnvironment();
  MEMORY[0x28223BE20](v4, v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  v9 = *(a1 + 56);
  v12[2] = *(a1 + 40);
  v13[0] = v9;
  *(v13 + 13) = *(a1 + 69);
  v12[0] = *(a1 + 8);
  v12[1] = v8;
  sub_21A0E541C();
  sub_21A0E54BC();
  sub_219F89010(v7);
  sub_219F894D4(v7);
  result = sub_21A0E5DFC();
  *a2 = result;
  a2[1] = v11;
  return result;
}

uint64_t PresidentialElectionData.Entity.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for PresidentialElectionData.Entity(0) + 28) + 32);

  return v1;
}

uint64_t PresidentialElectionData.Entity.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 42);
  v7 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 34) = v6;
  *(a1 + 32) = v7;
  return sub_219F79BC0(v2, v3);
}

__n128 PresidentialElectionData.Entity.badge.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);
  v5 = v1 + 40;
  sub_219F79C7C(*(v5 - 32), *(v5 - 24));
  result = *a1;
  v7 = *(a1 + 16);
  *(v5 - 32) = *a1;
  *(v5 - 16) = v7;
  *(v5 + 2) = v4;
  *v5 = v3;
  return result;
}

uint64_t PresidentialElectionData.Entity.shortName.getter()
{
  v1 = (v0 + *(type metadata accessor for PresidentialElectionData.Entity(0) + 28));
  if (v1[3])
  {
    v2 = v1[2];
  }

  else
  {
    v2 = v1[4];
  }

  return v2;
}

uint64_t PresidentialElectionData.Entity.hash(into:)(uint64_t a1)
{
  MEMORY[0x21CED2490](*v1);
  if (!*(v1 + 16))
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 40);
  v4 = v3 >> 8;
  v5 = v3 & 0xFF00FFFF | (*(v1 + 42) << 16);
  v6 = *(v1 + 42);
  sub_21A0E6DCC();
  sub_21A0E626C();
  MEMORY[0x21CED2490](v5 & 1);
  sub_21A0E626C();
  if (v4 != 9)
  {
    sub_21A0E6DCC();
    sub_219F7A96C(a1, v5 >> 8);
    if (v6 != 3)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_21A0E6DCC();
    goto LABEL_7;
  }

  sub_21A0E6DCC();
  if (v6 == 3)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_21A0E6DCC();
  sub_21A0E626C();

LABEL_7:
  MEMORY[0x21CED2490](*(v1 + 43));
  type metadata accessor for PresidentialElectionData.Entity(0);
  return ElectionEntityTheme.hash(into:)(a1);
}

uint64_t PresidentialElectionData.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PresidentialElectionData.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PresidentialElectionData.totalCount.setter(uint64_t a1)
{
  result = type metadata accessor for PresidentialElectionData(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

int *PresidentialElectionData.remainingAvailable.getter()
{
  result = type metadata accessor for PresidentialElectionData(0);
  v2 = *(v0 + result[7]);
  v3 = *(v0 + result[5]);
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = *(v0 + result[6]);
  result = (v5 - v6);
  if (__OFSUB__(v5, v6))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

BOOL static PresidentialElectionData.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_21A0E6C5C()) && (v5 = type metadata accessor for PresidentialElectionData(0), _s22NewsLiveActivitiesCore24PresidentialElectionDataV6EntityV2eeoiySbAE_AEtFZ_0(a1 + v5[5], a2 + v5[5])) && _s22NewsLiveActivitiesCore24PresidentialElectionDataV6EntityV2eeoiySbAE_AEtFZ_0(a1 + v5[6], a2 + v5[6]))
  {
    return *(a1 + v5[7]) == *(a2 + v5[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t PresidentialElectionData.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_21A0E626C();
  v4 = type metadata accessor for PresidentialElectionData(0);
  v5 = v1 + v4[5];
  MEMORY[0x21CED2490](*v5);
  v16 = v4;
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = *(v5 + 40);
  v7 = v6 >> 8;
  v8 = v6 & 0xFF00FFFF | (*(v5 + 42) << 16);
  v9 = *(v5 + 42);
  sub_21A0E6DCC();
  sub_21A0E626C();
  MEMORY[0x21CED2490](v8 & 1);
  sub_21A0E626C();
  sub_21A0E6DCC();
  if (v7 != 9)
  {
    sub_219F7A96C(a1, v8 >> 8);
  }

  v4 = v16;
  v2 = v1;
  if (v9 != 3)
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  else
  {
LABEL_5:
    sub_21A0E6DCC();
  }

  MEMORY[0x21CED2490](*(v5 + 43));
  type metadata accessor for PresidentialElectionData.Entity(0);
  ElectionEntityTheme.hash(into:)(a1);
  v10 = v2 + v4[6];
  MEMORY[0x21CED2490](*v10);
  if (*(v10 + 16))
  {
    v11 = *(v10 + 40);
    v12 = v11 >> 8;
    v13 = v11 & 0xFF00FFFF | (*(v10 + 42) << 16);
    v14 = *(v10 + 42);
    sub_21A0E6DCC();
    sub_21A0E626C();
    MEMORY[0x21CED2490](v13 & 1);
    sub_21A0E626C();
    sub_21A0E6DCC();
    if (v12 != 9)
    {
      sub_219F7A96C(a1, v13 >> 8);
    }

    sub_21A0E6DCC();
    if (v14 == 3)
    {
      v4 = v16;
      v2 = v1;
    }

    else
    {
      v4 = v16;
      v2 = v1;
      sub_21A0E626C();
    }
  }

  else
  {
    sub_21A0E6DCC();
  }

  MEMORY[0x21CED2490](*(v10 + 43));
  ElectionEntityTheme.hash(into:)(a1);
  return MEMORY[0x21CED2490](*(v2 + v4[7]));
}

uint64_t sub_21A03EE20(void (*a1)(_BYTE *))
{
  sub_21A0E6DAC();
  a1(v3);
  return sub_21A0E6DFC();
}

uint64_t sub_21A03EE80(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_21A0E6DAC();
  a3(v5);
  return sub_21A0E6DFC();
}

uint64_t sub_21A03EEE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21A0E6DAC();
  a4(v6);
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore24PresidentialElectionDataV6EntityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40) | (*(a1 + 42) << 16);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 40) | (*(a2 + 42) << 16);
  v12 = *(a2 + 24);
  v16 = *(a2 + 32);
  if (!v5)
  {
    sub_219F79BC0(v4, 0);
    if (!v10)
    {
      sub_219F79BC0(v9, 0);
      sub_219F79C7C(v4, 0);
      goto LABEL_11;
    }

    sub_219F79BC0(v9, v10);
    v13 = v4;
LABEL_9:
    sub_219F79C7C(v13, v5);
    sub_219F79C7C(v9, v10);
    return 0;
  }

  v21[0] = *(a1 + 8);
  v21[1] = v5;
  v21[2] = v6;
  v21[3] = v7;
  v22 = v8;
  v23 = BYTE2(v8);
  if (!v10)
  {
    v13 = v4;
    sub_219F79BC0(v4, v5);
    sub_219F79BC0(v9, 0);
    sub_219F79BC0(v4, v5);

    sub_219F79CD8();
    goto LABEL_9;
  }

  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v12;
  v18[3] = v16;
  v19 = v11 & 0xFF01;
  v20 = BYTE2(v11);
  sub_219F79BC0(v4, v5);
  sub_219F79BC0(v9, v10);
  sub_219F79BC0(v4, v5);
  v17 = _s22NewsLiveActivitiesCore19ElectionEntityBadgeV2eeoiySbAC_ACtFZ_0(v21, v18);

  sub_219F79CD8();

  sub_219F79CD8();
  sub_219F79C7C(v4, v5);
  if (!v17)
  {
    return 0;
  }

LABEL_11:
  if (*(a1 + 43) != *(a2 + 43))
  {
    return 0;
  }

  v14 = *(type metadata accessor for PresidentialElectionData.Entity(0) + 28);

  return static ElectionEntityTheme.== infix(_:_:)((a1 + v14), (a2 + v14));
}

uint64_t sub_21A03F2F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A03F358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A03F450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A03F4C0()
{
  result = type metadata accessor for PresidentialElectionData.Entity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Bool __swiftcall URL.hasLiveActivities()()
{
  v0 = sub_21A0E46AC();
  if (v1)
  {
    if (v0 == 1702195828 && v1 == 0xE400000000000000)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_21A0E6C5C();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t NewsLiveActivityAttributes.ActivityType.name.getter()
{
  v1 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A043E74(v0, v4, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0x457972616D697270;
  if (EnumCaseMultiPayload != 1)
  {
    v6 = 0x676F6C426576696CLL;
  }

  if (EnumCaseMultiPayload)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  sub_21A043CB0(v4, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  return v7;
}

uint64_t sub_21A03F738(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_219FA17F8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21A03F89C(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_219FA1970(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA658);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21A03F9CC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t NewsLiveActivityAttributes.destinationURLWithAttribution.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v42 - v5;
  v51 = sub_21A0E454C();
  v7 = *(v51 - 8);
  v9 = MEMORY[0x28223BE20](v51, v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBFD0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v42 - v17;
  v19 = sub_21A0E45BC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(type metadata accessor for NewsLiveActivityAttributes(0) + 24);
  sub_21A0E459C();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_219F6409C(v18, &qword_27CCDBFD0);
    v25 = sub_21A0E481C();
    return (*(*(v25 - 8) + 16))(v50, v2 + v24, v25);
  }

  else
  {
    v43 = v11;
    v44 = v6;
    v45 = v24;
    v46 = v2;
    v48 = v20;
    v49 = v19;
    (*(v20 + 32))(v23, v18, v19);
    v47 = v23;
    v27 = sub_21A0E456C();
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v29 = v28[2];
    v30 = (v7 + 8);

    v31 = 0;
    while (v29 != v31)
    {
      if (v31 >= v28[2])
      {
        __break(1u);
        goto LABEL_21;
      }

      (*(v7 + 16))(v14, v28 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31, v51);
      if (sub_21A0E453C() == 0x724664656E65706FLL && v33 == 0xEA00000000006D6FLL)
      {

        (*v30)(v14, v51);
LABEL_13:

        (*(v48 + 8))(v47, v49);

        v34 = sub_21A0E481C();
        return (*(*(v34 - 8) + 16))(v50, v46 + v45, v34);
      }

      ++v31;
      v32 = sub_21A0E6C5C();

      (*v30)(v14, v51);
      if (v32)
      {
        goto LABEL_13;
      }
    }

    v31 = v43;
    sub_21A0E452C();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_15;
    }

LABEL_21:
    v28 = sub_219FA1DE4(0, v28[2] + 1, 1, v28);
LABEL_15:
    v35 = v44;
    v36 = v49;
    v37 = v47;
    v39 = v28[2];
    v38 = v28[3];
    if (v39 >= v38 >> 1)
    {
      v28 = sub_219FA1DE4(v38 > 1, v39 + 1, 1, v28);
    }

    v28[2] = v39 + 1;
    (*(v7 + 32))(v28 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v39, v31, v51);
    sub_21A0E457C();
    sub_21A0E45AC();
    (*(v48 + 8))(v37, v36);
    v40 = sub_21A0E481C();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v35, 1, v40) == 1)
    {
      sub_219F6409C(v35, &unk_27CCDA158);
      return (*(v41 + 16))(v50, v46 + v45, v40);
    }

    else
    {
      return (*(v41 + 32))(v50, v35, v40);
    }
  }
}

uint64_t NewsLiveActivityAttributes.Error.hashValue.getter()
{
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](0);
  return sub_21A0E6DFC();
}

uint64_t NewsLiveActivityAttributes.ActivityType.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for LiveBlogStaticAttributes();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrimaryElectionStaticAttributes();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NationalElectionStaticAttributes();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A043E74(v1, v18, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A043D10(v18, v10, type metadata accessor for PrimaryElectionStaticAttributes);
      MEMORY[0x21CED2490](1);
      PrimaryElectionTheme.hash(into:)(a1);
      MEMORY[0x21CED2490](*&v10[*(v7 + 20)]);
      v20 = type metadata accessor for PrimaryElectionStaticAttributes;
      v21 = v10;
    }

    else
    {
      sub_21A043D10(v18, v6, type metadata accessor for LiveBlogStaticAttributes);
      MEMORY[0x21CED2490](2);
      LiveBlogStaticAttributes.hash(into:)(a1, v22);
      v20 = type metadata accessor for LiveBlogStaticAttributes;
      v21 = v6;
    }
  }

  else
  {
    sub_21A043D10(v18, v14, type metadata accessor for NationalElectionStaticAttributes);
    MEMORY[0x21CED2490](0);
    NationalElectionTheme.hash(into:)(a1);
    v20 = type metadata accessor for NationalElectionStaticAttributes;
    v21 = v14;
  }

  return sub_21A043CB0(v21, v20);
}

uint64_t NewsLiveActivityAttributes.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t NewsLiveActivityAttributes.cloudChannelID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t NewsLiveActivityAttributes.destinationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsLiveActivityAttributes(0) + 24);
  v4 = sub_21A0E481C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsLiveActivityAttributes.init(id:activityType:cloudChannelID:destinationURL:startDate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v10 = a1[1];
  v11 = *a3;
  v12 = a3[1];
  *a6 = *a1;
  *(a6 + 1) = v10;
  v13 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A043D10(a2, &a6[v13[7]], type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  *(a6 + 2) = v11;
  *(a6 + 3) = v12;
  v14 = v13[6];
  v15 = sub_21A0E481C();
  (*(*(v15 - 8) + 32))(&a6[v14], a4, v15);
  v16 = &a6[v13[8]];

  return sub_219FC26CC(a5, v16);
}

uint64_t NewsLiveActivityAttributes.isScheduledActivity.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v18 - v3;
  v5 = sub_21A0E495C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_219F45500(v0 + *(v14 + 32), v4, &qword_27CCD97F0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_219F6409C(v4, &qword_27CCD97F0);
  }

  else
  {
    (*(v6 + 32))(v13, v4, v5);
    sub_21A0E493C();
    v15 = sub_21A0E48FC();
    v16 = *(v6 + 8);
    v16(v10, v5);
    v16(v13, v5);
    if (v15)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21A040858(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v41 = v40 - v6;
  v7 = type metadata accessor for LiveBlogStaticAttributes();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrimaryElectionStaticAttributes();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NationalElectionStaticAttributes();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  v23 = a1[1];
  v24 = *(a1 + 1);
  v25 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A043E74(v1 + *(v25 + 28), v22, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A043D10(v22, v14, type metadata accessor for PrimaryElectionStaticAttributes);
      v27 = sub_219F74B1C();
      v28 = type metadata accessor for PrimaryElectionStaticAttributes;
      v29 = v14;
    }

    else
    {
      sub_21A043D10(v22, v10, type metadata accessor for LiveBlogStaticAttributes);
      v27 = LiveBlogStaticAttributes.assets.getter();
      v28 = type metadata accessor for LiveBlogStaticAttributes;
      v29 = v10;
    }
  }

  else
  {
    sub_21A043D10(v22, v18, type metadata accessor for NationalElectionStaticAttributes);
    v27 = sub_21A04CA40();
    v28 = type metadata accessor for NationalElectionStaticAttributes;
    v29 = v18;
  }

  sub_21A043CB0(v29, v28);
  v44 = MEMORY[0x277D84F90];
  v30 = v27[2];
  if (v30)
  {
    v31 = *(v4 + 80);
    v40[1] = v27;
    v32 = v27 + ((v31 + 32) & ~v31);
    v43 = *(v4 + 72);
    if (v23)
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

    v34 = v42;
    v35 = v41;
    do
    {
      sub_219F45500(v32, v35, &qword_27CCD98D0);
      v36 = sub_21A040C68(v33 | v34, v24);
      sub_219F6409C(v35, &qword_27CCD98D0);
      sub_21A03F9CC(v36, sub_219FA181C, type metadata accessor for ActivityAsset);
      v32 += v43;
      --v30;
    }

    while (v30);

    v37 = v44;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v38 = sub_219FE87E0(v37);

  return v38;
}

size_t sub_21A040C68(unsigned int a1, uint64_t a2)
{
  v19 = type metadata accessor for ActivityAsset();
  v23 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v24 = a2;
  v25 = MEMORY[0x277D84F90];
  v22 = a1 & 1;
  LOWORD(v26) = a1 & 0x101;
  v21 = (a1 >> 8) & 1;
  v27 = a2;
  result = sub_219F8AE28(&v25);
  v9 = v25;
  v20 = *(v25 + 16);
  if (!v20)
  {
LABEL_19:

    return v7;
  }

  v10 = 0;
  while (v10 < *(v9 + 16))
  {
    sub_21A043E74(v9 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v10, v6, type metadata accessor for ActivityAsset);
    LOBYTE(v25) = v22;
    BYTE1(v25) = v21;
    v26 = v24;
    v11 = ActivityAsset.values(matching:)(&v25);
    result = sub_21A043CB0(v6, type metadata accessor for ActivityAsset);
    v12 = *(v11 + 16);
    v13 = v7[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_21;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v14 <= v7[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v15 = v13 + v12;
      }

      else
      {
        v15 = v13;
      }

      result = sub_219FA181C(result, v15, 1, v7);
      v7 = result;
      if (*(v11 + 16))
      {
LABEL_15:
        if ((v7[3] >> 1) - v7[2] < v12)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v16 = v7[2];
          v17 = __OFADD__(v16, v12);
          v18 = v16 + v12;
          if (v17)
          {
            goto LABEL_24;
          }

          v7[2] = v18;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (v20 == ++v10)
    {
      goto LABEL_19;
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

uint64_t NewsLiveActivityAttributes.nationalElectionAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A043E74(v1 + *(v7 + 28), v6, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_21A043CB0(v6, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
    v8 = 1;
  }

  else
  {
    sub_21A043D10(v6, a1, type metadata accessor for NationalElectionStaticAttributes);
    v8 = 0;
  }

  v9 = type metadata accessor for NationalElectionStaticAttributes();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t NewsLiveActivityAttributes.primaryElectionAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A043E74(v1 + *(v7 + 28), v6, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A043D10(v6, a1, type metadata accessor for PrimaryElectionStaticAttributes);
    v8 = 0;
  }

  else
  {
    sub_21A043CB0(v6, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
    v8 = 1;
  }

  v9 = type metadata accessor for PrimaryElectionStaticAttributes();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t NewsLiveActivityAttributes.liveBlogAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A043E74(v1 + *(v7 + 28), v6, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21A043D10(v6, a1, type metadata accessor for LiveBlogStaticAttributes);
    v8 = 0;
  }

  else
  {
    sub_21A043CB0(v6, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
    v8 = 1;
  }

  v9 = type metadata accessor for LiveBlogStaticAttributes();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t NewsLiveActivityAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBFD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A043D78();
  sub_21A0E6EAC();
  v10 = v3[1];
  v15 = *v3;
  v16 = v10;
  v14 = 0;
  sub_21A02C7FC();

  sub_21A0E6BBC();
  if (v2)
  {
  }

  else
  {

    v11 = v3[3];
    v15 = v3[2];
    v16 = v11;
    v14 = 1;
    sub_21A043DCC();

    sub_21A0E6BBC();

    type metadata accessor for NewsLiveActivityAttributes(0);
    LOBYTE(v15) = 2;
    sub_21A0E495C();
    sub_219F45018(&qword_27CCD9808, MEMORY[0x277CC9578]);
    sub_21A0E6B6C();
    LOBYTE(v15) = 3;
    sub_21A0E481C();
    sub_219F45018(&qword_27CCDA6E0, MEMORY[0x277CC9260]);
    sub_21A0E6BBC();
    LOBYTE(v15) = 4;
    type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
    sub_219F45018(&qword_27CCDBFF0, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
    sub_21A0E6BBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NewsLiveActivityAttributes.hash(into:)(uint64_t a1)
{
  v3 = sub_21A0E495C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v14 - v10;
  sub_21A0E626C();
  sub_21A0E626C();
  v12 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A0E481C();
  sub_219F45018(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  NewsLiveActivityAttributes.ActivityType.hash(into:)(a1);
  sub_219F45500(v1 + *(v12 + 32), v11, &qword_27CCD97F0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return sub_21A0E6DCC();
  }

  (*(v4 + 32))(v7, v11, v3);
  sub_21A0E6DCC();
  sub_219F45018(&qword_27CCD9828, MEMORY[0x277CC9578]);
  sub_21A0E615C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21A041858(void (*a1)(_BYTE *))
{
  sub_21A0E6DAC();
  a1(v3);
  return sub_21A0E6DFC();
}

uint64_t NewsLiveActivityAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  MEMORY[0x28223BE20](v34, v3);
  v35 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21A0E481C();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBFF8);
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for NewsLiveActivityAttributes(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A043D78();
  v40 = v15;
  v20 = v41;
  sub_21A0E6E7C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v11;
  v41 = v7;
  v22 = v37;
  v23 = v39;
  v44 = 0;
  sub_21A02C850();
  v24 = v38;
  sub_21A0E6ADC();
  v25 = v43;
  *v19 = v42;
  *(v19 + 1) = v25;
  v44 = 1;
  sub_21A043E20();
  sub_21A0E6ADC();
  v26 = v43;
  *(v19 + 2) = v42;
  *(v19 + 3) = v26;
  sub_21A0E495C();
  LOBYTE(v42) = 2;
  sub_219F45018(&qword_27CCD9838, MEMORY[0x277CC9578]);
  v31[1] = 0;
  v32 = v19;
  sub_21A0E6A8C();
  sub_219FC26CC(v21, &v32[v16[8]]);
  LOBYTE(v42) = 3;
  sub_219F45018(&qword_27CCDA6C0, MEMORY[0x277CC9260]);
  v27 = v41;
  sub_21A0E6ADC();
  (*(v36 + 32))(&v32[v16[6]], v27, v23);
  LOBYTE(v42) = 4;
  sub_219F45018(&qword_27CCDC008, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  v28 = v35;
  sub_21A0E6ADC();
  (*(v22 + 8))(v40, v24);
  v29 = v32;
  sub_21A043D10(v28, &v32[v16[7]], type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  sub_21A043E74(v29, v33, type metadata accessor for NewsLiveActivityAttributes);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21A043CB0(v29, type metadata accessor for NewsLiveActivityAttributes);
}

uint64_t sub_21A041F18(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_21A0E6DAC();
  a3(v5);
  return sub_21A0E6DFC();
}

uint64_t sub_21A041F7C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21A0E6DAC();
  a4(v6);
  return sub_21A0E6DFC();
}

uint64_t sub_21A042000()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0420F8()
{
  sub_21A0E626C();
}

uint64_t sub_21A0421DC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0422D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A04433C();
  *a1 = result;
  return result;
}

void sub_21A042300(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000065;
  v6 = 0x7461447472617473;
  v7 = 0xEE004C52556E6F69;
  v8 = 0x74616E6974736564;
  if (v2 != 3)
  {
    v8 = 0x7475626972747461;
    v7 = 0xEA00000000007365;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x61684364756F6C63;
    v3 = 0xEE0044496C656E6ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21A0423B4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7461447472617473;
  v4 = 0x74616E6974736564;
  if (v1 != 3)
  {
    v4 = 0x7475626972747461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x61684364756F6C63;
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

uint64_t sub_21A042464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A04433C();
  *a1 = result;
  return result;
}

uint64_t sub_21A04248C(uint64_t a1)
{
  v2 = sub_21A043D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0424C8(uint64_t a1)
{
  v2 = sub_21A043D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A042504(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF6E6F697463656CLL;
  v3 = 0x457972616D697270;
  v4 = *a1;
  v5 = 0xE800000000000000;
  v6 = 0x676F6C426576696CLL;
  if (v4 == 1)
  {
    v6 = 0x457972616D697270;
    v5 = 0xEF6E6F697463656CLL;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x800000021A109640;
  }

  if (*a2 != 1)
  {
    v3 = 0x676F6C426576696CLL;
    v2 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000021A109640;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_21A042608()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0426BC()
{
  sub_21A0E626C();
}

uint64_t sub_21A04275C()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A04280C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A044388();
  *a1 = result;
  return result;
}

void sub_21A04283C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6E6F697463656CLL;
  v4 = 0x457972616D697270;
  if (v2 != 1)
  {
    v4 = 0x676F6C426576696CLL;
    v3 = 0xE800000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x800000021A109640;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_21A0428AC()
{
  v1 = 0x457972616D697270;
  if (*v0 != 1)
  {
    v1 = 0x676F6C426576696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21A042918@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A044388();
  *a1 = result;
  return result;
}

uint64_t sub_21A042940(uint64_t a1)
{
  v2 = sub_21A043EDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A04297C(uint64_t a1)
{
  v2 = sub_21A043EDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsLiveActivityAttributes.ActivityType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = type metadata accessor for LiveBlogStaticAttributes();
  MEMORY[0x28223BE20](v27, v3);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PrimaryElectionStaticAttributes();
  MEMORY[0x28223BE20](v30, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NationalElectionStaticAttributes();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC010);
  v29 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A043EDC();
  v16 = v32;
  sub_21A0E6E7C();
  if (v16)
  {
    sub_21A043F30();
    swift_allocError();
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = v11;
    v32 = a1;
    v18 = v31;
    v19 = v29;
    v20 = sub_21A0E6AFC();
    v21 = (2 * *(v20 + 16)) | 1;
    v33 = v20;
    v34 = v20 + 32;
    v35 = 0;
    v36 = v21;
    v22 = sub_219F825A0();
    if (v22 == 3 || v35 != v36 >> 1)
    {
      sub_21A043F30();
      swift_allocError();
      swift_willThrow();
      (*(v19 + 8))(v15, v12);
      __swift_destroy_boxed_opaque_existential_1(v32);
      return swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        if (v22 == 1)
        {
          v37 = 1;
          sub_219F45018(&qword_27CCDC030, type metadata accessor for PrimaryElectionStaticAttributes);
          sub_21A0E6ADC();
          v23 = v32;
          (*(v19 + 8))(v15, v12);
          __swift_destroy_boxed_opaque_existential_1(v23);
          swift_unknownObjectRelease();
          sub_21A043D10(v7, v28, type metadata accessor for PrimaryElectionStaticAttributes);
        }

        else
        {
          v37 = 2;
          sub_219F45018(&qword_27CCDC028, type metadata accessor for LiveBlogStaticAttributes);
          sub_21A0E6ADC();
          (*(v19 + 8))(v15, v12);
          __swift_destroy_boxed_opaque_existential_1(v32);
          swift_unknownObjectRelease();
          sub_21A043D10(v18, v28, type metadata accessor for LiveBlogStaticAttributes);
        }
      }

      else
      {
        v37 = 0;
        sub_219F45018(&qword_27CCDC038, type metadata accessor for NationalElectionStaticAttributes);
        v24 = v26;
        sub_21A0E6ADC();
        (*(v19 + 8))(v15, v12);
        __swift_destroy_boxed_opaque_existential_1(v32);
        swift_unknownObjectRelease();
        sub_21A043D10(v24, v28, type metadata accessor for NationalElectionStaticAttributes);
      }

      type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t NewsLiveActivityAttributes.ActivityType.encode(to:)(void *a1)
{
  v30 = type metadata accessor for LiveBlogStaticAttributes();
  MEMORY[0x28223BE20](v30, v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PrimaryElectionStaticAttributes();
  MEMORY[0x28223BE20](v28, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for NationalElectionStaticAttributes();
  MEMORY[0x28223BE20](v27, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC040);
  v14 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v15);
  v17 = &v26 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A043EDC();
  sub_21A0E6EAC();
  sub_21A043E74(v31, v13, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = (v14 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A043D10(v13, v6, type metadata accessor for PrimaryElectionStaticAttributes);
      v34 = 1;
      sub_219F45018(&qword_27CCDC050, type metadata accessor for PrimaryElectionStaticAttributes);
      v20 = v32;
      sub_21A0E6BBC();
      v21 = type metadata accessor for PrimaryElectionStaticAttributes;
      v22 = v6;
    }

    else
    {
      v25 = v29;
      sub_21A043D10(v13, v29, type metadata accessor for LiveBlogStaticAttributes);
      v35 = 2;
      sub_219F45018(&qword_27CCDC048, type metadata accessor for LiveBlogStaticAttributes);
      v20 = v32;
      sub_21A0E6BBC();
      v21 = type metadata accessor for LiveBlogStaticAttributes;
      v22 = v25;
    }

    sub_21A043CB0(v22, v21);
    return (*v19)(v17, v20);
  }

  else
  {
    sub_21A043D10(v13, v9, type metadata accessor for NationalElectionStaticAttributes);
    v33 = 0;
    sub_219F45018(&qword_27CCDC058, type metadata accessor for NationalElectionStaticAttributes);
    v23 = v32;
    sub_21A0E6BBC();
    sub_21A043CB0(v9, type metadata accessor for NationalElectionStaticAttributes);
    return (*v19)(v17, v23);
  }
}

BOOL _s22NewsLiveActivitiesCore0aB18ActivityAttributesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_21A0E495C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98F8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for NewsLiveActivityAttributes(0);
  if ((sub_21A0E478C() & 1) == 0 || (_s22NewsLiveActivitiesCore0aB18ActivityAttributesV0E4TypeO2eeoiySbAE_AEtFZ_0(a1 + *(v17 + 28), a2 + *(v17 + 28)) & 1) == 0)
  {
    return 0;
  }

  v27 = v5;
  v18 = *(v17 + 32);
  v19 = *(v13 + 48);
  sub_219F45500(a1 + v18, v16, &qword_27CCD97F0);
  v20 = a2 + v18;
  v21 = v27;
  sub_219F45500(v20, &v16[v19], &qword_27CCD97F0);
  v22 = *(v21 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v19], 1, v4) == 1)
    {
      sub_219F6409C(v16, &qword_27CCD97F0);
      return 1;
    }

    goto LABEL_14;
  }

  sub_219F45500(v16, v12, &qword_27CCD97F0);
  if (v22(&v16[v19], 1, v4) == 1)
  {
    (*(v21 + 8))(v12, v4);
LABEL_14:
    sub_219F6409C(v16, &qword_27CCD98F8);
    return 0;
  }

  (*(v21 + 32))(v8, &v16[v19], v4);
  sub_219F45018(&qword_27CCD9900, MEMORY[0x277CC9578]);
  v24 = sub_21A0E61CC();
  v25 = *(v21 + 8);
  v25(v8, v4);
  v25(v12, v4);
  sub_219F6409C(v16, &qword_27CCD97F0);
  return (v24 & 1) != 0;
}

uint64_t _s22NewsLiveActivitiesCore0aB18ActivityAttributesV0E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for LiveBlogStaticAttributes();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for PrimaryElectionStaticAttributes();
  MEMORY[0x28223BE20](v43, v6);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for NationalElectionStaticAttributes();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v42 - v20);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v42 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC0A0);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v29 = &v42 - v28;
  v30 = *(v27 + 56);
  sub_21A043E74(a1, &v42 - v28, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  sub_21A043E74(v45, &v29[v30], type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21A043E74(v29, v24, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
    if (swift_getEnumCaseMultiPayload())
    {
      v36 = type metadata accessor for NationalElectionStaticAttributes;
      v37 = v24;
LABEL_13:
      sub_21A043CB0(v37, v36);
      sub_219F6409C(v29, &qword_27CCDC0A0);
LABEL_14:
      v35 = 0;
      return v35 & 1;
    }

    sub_21A043D10(&v29[v30], v12, type metadata accessor for NationalElectionStaticAttributes);
    v35 = _s22NewsLiveActivitiesCore32NationalElectionStaticAttributesV2eeoiySbAC_ACtFZ_0(v24, v12);
    v39 = type metadata accessor for NationalElectionStaticAttributes;
    sub_21A043CB0(v12, type metadata accessor for NationalElectionStaticAttributes);
    v40 = v24;
LABEL_16:
    sub_21A043CB0(v40, v39);
    sub_21A043CB0(v29, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
    return v35 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_21A043E74(v29, v17, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v36 = type metadata accessor for LiveBlogStaticAttributes;
      v37 = v17;
      goto LABEL_13;
    }

    v38 = v44;
    sub_21A043D10(&v29[v30], v44, type metadata accessor for LiveBlogStaticAttributes);
    v35 = static LiveBlogStaticAttributes.== infix(_:_:)(v17, v38);
    v39 = type metadata accessor for LiveBlogStaticAttributes;
    sub_21A043CB0(v38, type metadata accessor for LiveBlogStaticAttributes);
    v40 = v17;
    goto LABEL_16;
  }

  sub_21A043E74(v29, v21, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = type metadata accessor for PrimaryElectionStaticAttributes;
    v37 = v21;
    goto LABEL_13;
  }

  sub_21A043D10(&v29[v30], v8, type metadata accessor for PrimaryElectionStaticAttributes);
  if (!_s22NewsLiveActivitiesCore20PrimaryElectionThemeV2eeoiySbAC_ACtFZ_0(v21, v8))
  {
    sub_21A043CB0(v8, type metadata accessor for PrimaryElectionStaticAttributes);
    goto LABEL_19;
  }

  v32 = *(v43 + 20);
  v33 = *(v21 + v32);
  v34 = *(v8 + v32);
  sub_21A043CB0(v8, type metadata accessor for PrimaryElectionStaticAttributes);
  if (v33 != v34)
  {
LABEL_19:
    sub_21A043CB0(v21, type metadata accessor for PrimaryElectionStaticAttributes);
    sub_21A043CB0(v29, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
    goto LABEL_14;
  }

  sub_21A043CB0(v21, type metadata accessor for PrimaryElectionStaticAttributes);
  sub_21A043CB0(v29, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  v35 = 1;
  return v35 & 1;
}

uint64_t sub_21A043CB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A043D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A043D78()
{
  result = qword_27CCDBFE0;
  if (!qword_27CCDBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBFE0);
  }

  return result;
}

unint64_t sub_21A043DCC()
{
  result = qword_27CCDBFE8;
  if (!qword_27CCDBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBFE8);
  }

  return result;
}

unint64_t sub_21A043E20()
{
  result = qword_27CCDC000;
  if (!qword_27CCDC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC000);
  }

  return result;
}

uint64_t sub_21A043E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A043EDC()
{
  result = qword_27CCDC018;
  if (!qword_27CCDC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC018);
  }

  return result;
}

unint64_t sub_21A043F30()
{
  result = qword_27CCDC020;
  if (!qword_27CCDC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC020);
  }

  return result;
}

unint64_t sub_21A043F88()
{
  result = qword_27CCDC060;
  if (!qword_27CCDC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC060);
  }

  return result;
}

unint64_t sub_21A044130()
{
  result = qword_27CCDC070;
  if (!qword_27CCDC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC070);
  }

  return result;
}

unint64_t sub_21A044188()
{
  result = qword_27CCDC078;
  if (!qword_27CCDC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC078);
  }

  return result;
}

unint64_t sub_21A0441E0()
{
  result = qword_27CCDC080;
  if (!qword_27CCDC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC080);
  }

  return result;
}

unint64_t sub_21A044238()
{
  result = qword_27CCDC088;
  if (!qword_27CCDC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC088);
  }

  return result;
}

unint64_t sub_21A044290()
{
  result = qword_27CCDC090;
  if (!qword_27CCDC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC090);
  }

  return result;
}

unint64_t sub_21A0442E8()
{
  result = qword_27CCDC098;
  if (!qword_27CCDC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC098);
  }

  return result;
}

uint64_t sub_21A04433C()
{
  v0 = sub_21A0E6A0C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21A044388()
{
  v0 = sub_21A0E6A0C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21A0443DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 1056);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21A044438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 1128) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1136) = 0;
    }

    if (a2)
    {
      *(result + 1056) = a2;
    }
  }

  return result;
}

uint64_t sub_21A0445E4(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v119 = v3;
  v4 = sub_21A0E554C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v226, (v2 + 48), sizeof(v226));
  v9 = *(v2 + 1128);
  v10 = *(v2 + 16);
  v224 = *v2;
  v225[0] = v10;
  v125 = v4;
  v126 = v2;
  *(v225 + 9) = *(v2 + 25);
  LODWORD(v136) = BYTE8(v225[1]);
  v133 = v5;
  v121 = v8;
  v122 = *(&v225[0] + 1);
  v137 = *&v224;
  v123 = v10;
  v124 = *(&v224 + 1);
  v120 = *&v225[1];
  if (BYTE8(v225[1]) == 1)
  {
    v221 = v224;
    v222 = v225[0];
    v223 = *&v225[1];
    v11 = v9;
    swift_bridgeObjectRetain_n();
    sub_219F45500(v226, v166, &qword_27CCD9578);
    sub_219F45500(&v224, v166, &qword_27CCD9580);
  }

  else
  {
    v11 = v9;
    swift_bridgeObjectRetain_n();
    sub_219F45500(v226, v166, &qword_27CCD9578);
    sub_219F45500(&v224, v166, &qword_27CCD9580);
    sub_21A0E66AC();
    v12 = sub_21A0E575C();
    sub_21A0E512C();

    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F6409C(&v224, &qword_27CCD9580);
    (*(v5 + 8))(v8, v4);
  }

  v13 = v126[131];
  v14 = v126[132];
  v15 = v126[133];
  v16 = v126[134];
  v139 = v126[135];
  v17 = v126[136];
  v18 = v126[137];
  v131 = v126[138];
  v132 = v18;
  v19 = v126[139];
  v117 = v126[140];
  v118 = v19;
  v217 = v221;
  v218 = v222;
  v219 = v223;
  *&v166[0] = swift_getKeyPath();
  *(v166 + 8) = 0u;
  *(&v166[1] + 8) = 0u;
  BYTE8(v166[2]) = 0;
  memset(&v166[3], 0, 64);
  sub_219F638CC(v220);
  memcpy(&v166[7], v220, 0x3E8uLL);
  v216[0] = v217;
  v216[1] = v218;
  *&v216[2] = v219;

  sub_219F63900(&v217, v215);
  v20 = sub_21A0B892C(v13, v14, v11, v216);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v216[0] = v217;
  v216[1] = v218;
  *&v216[2] = v219;

  v130 = v11;
  v27 = sub_21A0B892C(v15, v16, v11, v216);
  if (v26 | v30)
  {
    *&v166[3] = v20;
    *(&v166[3] + 1) = v22;
    *&v166[4] = v24;
    *(&v166[4] + 1) = v26;
    *&v166[5] = v27;
    *(&v166[5] + 1) = v28;
    *&v166[6] = v29;
    *(&v166[6] + 1) = v30;
    sub_219F63AC8(v226, &v166[7]);
    memcpy(v204, v166, 0x458uLL);
    memcpy(v205, v166, sizeof(v205));
    sub_21A047910(v204, v216);
    sub_21A0478C0(v205);
    memcpy(v215, v204, 0x458uLL);
    nullsub_1(v215, v31);
    memcpy(v216, v215, 0x458uLL);
  }

  else
  {
    sub_219F6409C(v226, &qword_27CCD9578);
    memcpy(v215, v166, 0x458uLL);
    sub_21A0478C0(v215);
    sub_21A0478F0(v216);
  }

  v32 = v125;
  v33 = v133;
  v34 = v131;
  if (v136)
  {
    *&v212 = v137;
    v36 = v123;
    v35 = v124;
    *(&v212 + 1) = v124;
    *&v213 = v123;
    *(&v213 + 1) = v122;
    v214 = v120;
    sub_219F45500(&v224, v166, &qword_27CCD9580);
  }

  else
  {
    sub_219F45500(&v224, v166, &qword_27CCD9580);

    sub_21A0E66AC();
    v37 = sub_21A0E575C();
    sub_21A0E512C();

    v38 = v121;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F6409C(&v224, &qword_27CCD9580);
    (*(v33 + 8))(v38, v32);
    v36 = v123;
    v35 = v124;
  }

  v166[0] = v212;
  v166[1] = v213;
  *&v166[2] = v214;
  v39 = sub_21A0B892C(v139, v17, v130, v166);
  if (v42)
  {
    v43 = v39;
    v44 = v40;
    v45 = v41;
    memcpy(v232, v226, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v232) == 1)
    {
      sub_219F639B0(v215);
    }

    else
    {
      v166[10] = v232[35];
      v166[11] = v232[36];
      *&v166[12] = *&v232[37];
      v166[6] = v232[31];
      v166[7] = v232[32];
      v166[8] = v232[33];
      v166[9] = v232[34];
      v166[2] = v232[27];
      v166[3] = v232[28];
      v166[4] = v232[29];
      v166[5] = v232[30];
      v166[0] = v232[25];
      v166[1] = v232[26];
      sub_219F45500(v166, v215, &qword_27CCD95B8);
      v215[10] = v166[10];
      v215[11] = v166[11];
      *&v215[12] = *&v166[12];
      v215[6] = v166[6];
      v215[7] = v166[7];
      v215[9] = v166[9];
      v215[8] = v166[8];
      v215[2] = v166[2];
      v215[3] = v166[3];
      v215[5] = v166[5];
      v215[4] = v166[4];
      v215[1] = v166[1];
      v215[0] = v166[0];
    }

    *&v205[160] = v215[10];
    *&v205[176] = v215[11];
    *&v205[192] = *&v215[12];
    *&v205[96] = v215[6];
    *&v205[112] = v215[7];
    *&v205[144] = v215[9];
    *&v205[128] = v215[8];
    *&v205[32] = v215[2];
    *&v205[48] = v215[3];
    *&v205[80] = v215[5];
    *&v205[64] = v215[4];
    *&v205[16] = v215[1];
    *v205 = v215[0];
    if (qword_27CCD91A8 != -1)
    {
      swift_once();
    }

    v227[2] = xmmword_27CCDC120;
    v227[3] = unk_27CCDC130;
    v227[4] = xmmword_27CCDC140;
    LODWORD(v227[5]) = dword_27CCDC150;
    v227[0] = xmmword_27CCDC100;
    v227[1] = *algn_27CCDC110;
    v169 = xmmword_27CCDC120;
    v170 = unk_27CCDC130;
    v171 = xmmword_27CCDC140;
    LODWORD(v172) = dword_27CCDC150;
    v167 = xmmword_27CCDC100;
    v168 = *algn_27CCDC110;
    LOBYTE(v192) = 9;
    if (v136)
    {
      *&v140 = v137;
      *(&v140 + 1) = v35;
      *&v141 = v36;
      *(&v141 + 1) = v122;
      *&v142 = v120;
      sub_219F45500(&v224, v166, &qword_27CCD9580);
      sub_219F639D4(v227, v166);
    }

    else
    {
      sub_219F45500(&v224, v166, &qword_27CCD9580);
      sub_219F639D4(v227, v166);
      sub_21A0E66AC();
      v46 = sub_21A0E575C();
      sub_21A0E512C();

      v36 = v123;
      v47 = v121;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(&v224, &qword_27CCD9580);
      v48 = v47;
      v35 = v124;
      (*(v133 + 8))(v48, v125);
    }

    v166[0] = v140;
    v166[1] = v141;
    *&v166[2] = v142;
    v139 = Text.activityTextModifier(_:fallback:font:environment:)(v205, &v167, &v192, v166, v43, v44, v45 & 1);
    v134 = v50;
    v135 = v49;
    v52 = v51;
    v198 = v166[0];
    v199 = v166[1];
    *&v200 = *&v166[2];
    sub_219F5ED9C(&v198);
    v155 = v169;
    v156 = v170;
    v157 = v171;
    LODWORD(v158) = v172;
    v153 = v167;
    v154 = v168;
    sub_219F6409C(&v153, &qword_27CCD95B0);
    v204[10] = *&v205[160];
    v204[11] = *&v205[176];
    *&v204[12] = *&v205[192];
    v204[6] = *&v205[96];
    v204[7] = *&v205[112];
    v204[9] = *&v205[144];
    v204[8] = *&v205[128];
    v204[2] = *&v205[32];
    v204[3] = *&v205[48];
    v204[5] = *&v205[80];
    v204[4] = *&v205[64];
    v204[1] = *&v205[16];
    v204[0] = *v205;
    sub_219F6409C(v204, &qword_27CCD95B8);
    memcpy(v166, v126, 0x470uLL);
    memcpy(v231, v226, sizeof(v231));
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v231) == 1)
    {
      sub_219F639B0(v230);
    }

    else
    {
      v229[10] = *&v231[560];
      v229[11] = *&v231[576];
      *&v229[12] = *&v231[592];
      v229[6] = *&v231[496];
      v229[7] = *&v231[512];
      v229[9] = *&v231[544];
      v229[8] = *&v231[528];
      v229[2] = *&v231[432];
      v229[3] = *&v231[448];
      v229[5] = *&v231[480];
      v229[4] = *&v231[464];
      v229[1] = *&v231[416];
      v229[0] = *&v231[400];
      sub_219F45500(v229, v230, &qword_27CCD95B8);
      v230[10] = v229[10];
      v230[11] = v229[11];
      *&v230[12] = *&v229[12];
      v230[6] = v229[6];
      v230[7] = v229[7];
      v230[9] = v229[9];
      v230[8] = v229[8];
      v230[2] = v229[2];
      v230[3] = v229[3];
      v230[5] = v229[5];
      v230[4] = v229[4];
      v230[1] = v229[1];
      v230[0] = v229[0];
    }

    v228[10] = v230[10];
    v228[11] = v230[11];
    *&v228[12] = *&v230[12];
    v228[6] = v230[6];
    v228[7] = v230[7];
    v228[9] = v230[9];
    v228[8] = v230[8];
    v228[2] = v230[2];
    v228[3] = v230[3];
    v228[5] = v230[5];
    v228[4] = v230[4];
    v228[1] = v230[1];
    v228[0] = v230[0];
    v53 = sub_21A046450(v228);
    sub_219F63A30(v43, v44, v45 & 1);

    v229[10] = v228[10];
    v229[11] = v228[11];
    *&v229[12] = *&v228[12];
    v229[6] = v228[6];
    v229[7] = v228[7];
    v229[9] = v228[9];
    v229[8] = v228[8];
    v229[2] = v228[2];
    v229[3] = v228[3];
    v229[5] = v228[5];
    v229[4] = v228[4];
    v229[1] = v228[1];
    v229[0] = v228[0];
    sub_219F6409C(v229, &qword_27CCD95B8);
    v129 = v52 & 1;
    v138 = v53;
    sub_219F63A40(v139, v135, v52 & 1);

    v33 = v133;
    v32 = v125;
  }

  else
  {
    v138 = 0.0;
    v139 = 0;
    v134 = 0;
    v135 = 0;
    v129 = 0;
  }

  if (v136)
  {
    *&v209 = v137;
    *(&v209 + 1) = v35;
    *&v210 = v36;
    *(&v210 + 1) = v122;
    v211 = v120;
    sub_219F45500(&v224, v166, &qword_27CCD9580);
  }

  else
  {
    sub_219F45500(&v224, v166, &qword_27CCD9580);

    sub_21A0E66AC();
    v54 = sub_21A0E575C();
    sub_21A0E512C();

    v55 = v121;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F6409C(&v224, &qword_27CCD9580);
    v56 = v55;
    v35 = v124;
    (*(v33 + 8))(v56, v32);
  }

  v166[0] = v209;
  v166[1] = v210;
  *&v166[2] = v211;
  v57 = sub_21A0B892C(v132, v34, v130, v166);
  if (v60)
  {
    v61 = v57;
    v62 = v58;
    v63 = v59;
    memcpy(v230, v226, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v230) == 1)
    {
      sub_219F639B0(v215);
    }

    else
    {
      *&v166[12] = *(&v230[49] + 1);
      v166[10] = *(&v230[47] + 8);
      v166[11] = *(&v230[48] + 8);
      v166[6] = *(&v230[43] + 8);
      v166[7] = *(&v230[44] + 8);
      v166[8] = *(&v230[45] + 8);
      v166[9] = *(&v230[46] + 8);
      v166[2] = *(&v230[39] + 8);
      v166[3] = *(&v230[40] + 8);
      v166[4] = *(&v230[41] + 8);
      v166[5] = *(&v230[42] + 8);
      v166[0] = *(&v230[37] + 8);
      v166[1] = *(&v230[38] + 8);
      sub_219F45500(v166, v215, &qword_27CCD95B8);
      v215[10] = v166[10];
      v215[11] = v166[11];
      *&v215[12] = *&v166[12];
      v215[6] = v166[6];
      v215[7] = v166[7];
      v215[9] = v166[9];
      v215[8] = v166[8];
      v215[2] = v166[2];
      v215[3] = v166[3];
      v215[5] = v166[5];
      v215[4] = v166[4];
      v215[1] = v166[1];
      v215[0] = v166[0];
    }

    *&v205[160] = v215[10];
    *&v205[176] = v215[11];
    *&v205[192] = *&v215[12];
    *&v205[96] = v215[6];
    *&v205[112] = v215[7];
    *&v205[144] = v215[9];
    *&v205[128] = v215[8];
    *&v205[32] = v215[2];
    *&v205[48] = v215[3];
    *&v205[80] = v215[5];
    *&v205[64] = v215[4];
    *&v205[16] = v215[1];
    *v205 = v215[0];
    if (qword_27CCD91B0 != -1)
    {
      swift_once();
    }

    v155 = xmmword_27CCDC178;
    v156 = unk_27CCDC188;
    v157 = xmmword_27CCDC198;
    LODWORD(v158) = dword_27CCDC1A8;
    v153 = xmmword_27CCDC158;
    v154 = unk_27CCDC168;
    v142 = xmmword_27CCDC178;
    v143 = unk_27CCDC188;
    v144 = xmmword_27CCDC198;
    LODWORD(v145) = dword_27CCDC1A8;
    v140 = xmmword_27CCDC158;
    v141 = unk_27CCDC168;
    LOBYTE(v206) = 9;
    if (v136)
    {
      *&v192 = v137;
      *(&v192 + 1) = v35;
      *&v193 = v123;
      *(&v193 + 1) = v122;
      *&v194 = v120;
      sub_219F45500(&v224, v166, &qword_27CCD9580);
      sub_219F639D4(&v153, v166);
    }

    else
    {
      sub_219F45500(&v224, v166, &qword_27CCD9580);
      sub_219F639D4(&v153, v166);
      sub_21A0E66AC();
      v64 = sub_21A0E575C();
      sub_21A0E512C();

      v33 = v133;
      v65 = v121;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(&v224, &qword_27CCD9580);
      v66 = v65;
      v35 = v124;
      (*(v33 + 8))(v66, v32);
    }

    v166[0] = v192;
    v166[1] = v193;
    *&v166[2] = v194;
    v67 = Text.activityTextModifier(_:fallback:font:environment:)(v205, &v140, &v206, v166, v61, v62, v63 & 1);
    v132 = v68;
    v133 = v67;
    v70 = v69;
    v131 = v71;
    v182 = v166[0];
    v183 = v166[1];
    *&v184 = *&v166[2];
    sub_219F5ED9C(&v182);
    v200 = v142;
    v201 = v143;
    v202 = v144;
    v203 = v145;
    v198 = v140;
    v199 = v141;
    sub_219F6409C(&v198, &qword_27CCD95B0);
    v204[10] = *&v205[160];
    v204[11] = *&v205[176];
    *&v204[12] = *&v205[192];
    v204[6] = *&v205[96];
    v204[7] = *&v205[112];
    v204[9] = *&v205[144];
    v204[8] = *&v205[128];
    v204[2] = *&v205[32];
    v204[3] = *&v205[48];
    v204[5] = *&v205[80];
    v204[4] = *&v205[64];
    v204[1] = *&v205[16];
    v204[0] = *v205;
    sub_219F6409C(v204, &qword_27CCD95B8);
    memcpy(v166, v126, 0x470uLL);
    memcpy(v229, v226, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v229) == 1)
    {
      sub_219F639B0(v228);
    }

    else
    {
      *&v227[12] = *(&v229[49] + 1);
      v227[10] = *(&v229[47] + 8);
      v227[11] = *(&v229[48] + 8);
      v227[6] = *(&v229[43] + 8);
      v227[7] = *(&v229[44] + 8);
      v227[9] = *(&v229[46] + 8);
      v227[8] = *(&v229[45] + 8);
      v227[2] = *(&v229[39] + 8);
      v227[3] = *(&v229[40] + 8);
      v227[5] = *(&v229[42] + 8);
      v227[4] = *(&v229[41] + 8);
      v227[1] = *(&v229[38] + 8);
      v227[0] = *(&v229[37] + 8);
      sub_219F45500(v227, v228, &qword_27CCD95B8);
      v228[10] = v227[10];
      v228[11] = v227[11];
      *&v228[12] = *&v227[12];
      v228[6] = v227[6];
      v228[7] = v227[7];
      v228[9] = v227[9];
      v228[8] = v227[8];
      v228[2] = v227[2];
      v228[3] = v227[3];
      v228[5] = v227[5];
      v228[4] = v227[4];
      v228[1] = v227[1];
      v228[0] = v227[0];
    }

    v177 = v228[10];
    v178 = v228[11];
    v179 = *&v228[12];
    v173 = v228[6];
    v174 = v228[7];
    v176 = v228[9];
    v175 = v228[8];
    v169 = v228[2];
    v170 = v228[3];
    v172 = v228[5];
    v171 = v228[4];
    v168 = v228[1];
    v167 = v228[0];
    v72 = sub_21A046450(&v167);
    sub_219F63A30(v61, v62, v63 & 1);

    v227[10] = v177;
    v227[11] = v178;
    *&v227[12] = v179;
    v227[6] = v173;
    v227[7] = v174;
    v227[9] = v176;
    v227[8] = v175;
    v227[2] = v169;
    v227[3] = v170;
    v227[5] = v172;
    v227[4] = v171;
    v227[1] = v168;
    v227[0] = v167;
    sub_219F6409C(v227, &qword_27CCD95B8);
    v128 = v70 & 1;
    v127 = v72;
    sub_219F63A40(v133, v132, v70 & 1);
  }

  else
  {
    v132 = 0;
    v133 = 0;
    v127 = 0.0;
    v128 = 0;
    v131 = 0;
  }

  v73 = v117;
  if (v136)
  {
    *&v206 = v137;
    *(&v206 + 1) = v35;
    v75 = v122;
    v74 = v123;
    *&v207 = v123;
    *(&v207 + 1) = v122;
    v208 = v120;
    sub_219F45500(&v224, v166, &qword_27CCD9580);
  }

  else
  {
    sub_219F45500(&v224, v166, &qword_27CCD9580);

    sub_21A0E66AC();
    v76 = sub_21A0E575C();
    sub_21A0E512C();

    v77 = v121;
    sub_21A0E553C();
    swift_getAtKeyPath();
    v35 = v124;
    sub_219F6409C(&v224, &qword_27CCD9580);
    (*(v33 + 8))(v77, v125);
    v75 = v122;
    v74 = v123;
  }

  v166[0] = v206;
  v166[1] = v207;
  *&v166[2] = v208;
  v78 = sub_21A0B892C(v118, v73, v130, v166);
  if (v81)
  {
    v82 = v78;
    v83 = v79;
    v84 = v80;
    memcpy(v228, v226, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v228) == 1)
    {
      sub_219F639B0(v215);
    }

    else
    {
      v166[10] = v228[60];
      v166[11] = v228[61];
      *&v166[12] = *&v228[62];
      v166[6] = v228[56];
      v166[7] = v228[57];
      v166[8] = v228[58];
      v166[9] = v228[59];
      v166[2] = v228[52];
      v166[3] = v228[53];
      v166[4] = v228[54];
      v166[5] = v228[55];
      v166[0] = v228[50];
      v166[1] = v228[51];
      sub_219F45500(v166, v215, &qword_27CCD95B8);
      v215[10] = v166[10];
      v215[11] = v166[11];
      *&v215[12] = *&v166[12];
      v215[6] = v166[6];
      v215[7] = v166[7];
      v215[9] = v166[9];
      v215[8] = v166[8];
      v215[2] = v166[2];
      v215[3] = v166[3];
      v215[5] = v166[5];
      v215[4] = v166[4];
      v215[1] = v166[1];
      v215[0] = v166[0];
    }

    *&v205[160] = v215[10];
    *&v205[176] = v215[11];
    *&v205[192] = *&v215[12];
    *&v205[96] = v215[6];
    *&v205[112] = v215[7];
    *&v205[144] = v215[9];
    *&v205[128] = v215[8];
    *&v205[32] = v215[2];
    *&v205[48] = v215[3];
    *&v205[80] = v215[5];
    *&v205[64] = v215[4];
    *&v205[16] = v215[1];
    *v205 = v215[0];
    if (qword_27CCD91B8 != -1)
    {
      swift_once();
    }

    v200 = xmmword_27CCDC1D0;
    v201 = unk_27CCDC1E0;
    v202 = xmmword_27CCDC1F0;
    v203 = dword_27CCDC200;
    v198 = xmmword_27CCDC1B0;
    v199 = unk_27CCDC1C0;
    v194 = xmmword_27CCDC1D0;
    v195 = unk_27CCDC1E0;
    v196 = xmmword_27CCDC1F0;
    v197 = dword_27CCDC200;
    v192 = xmmword_27CCDC1B0;
    v193 = unk_27CCDC1C0;
    v191 = 9;
    if (v136)
    {
      *&v188 = v137;
      *(&v188 + 1) = v35;
      *&v189 = v74;
      *(&v189 + 1) = v75;
      v190 = v120;
      sub_219F45500(&v224, v166, &qword_27CCD9580);
      sub_219F639D4(&v198, v166);
    }

    else
    {
      sub_219F45500(&v224, v166, &qword_27CCD9580);
      sub_219F639D4(&v198, v166);
      sub_21A0E66AC();
      v86 = sub_21A0E575C();
      sub_21A0E512C();

      v87 = v121;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(&v224, &qword_27CCD9580);
      (*(v33 + 8))(v87, v125);
    }

    v166[0] = v188;
    v166[1] = v189;
    *&v166[2] = v190;
    v88 = v82;
    v130 = Text.activityTextModifier(_:fallback:font:environment:)(v205, &v192, &v191, v166, v82, v83, v84 & 1);
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v180[0] = v166[0];
    v180[1] = v166[1];
    v181 = *&v166[2];
    sub_219F5ED9C(v180);
    v184 = v194;
    v185 = v195;
    v186 = v196;
    v187 = v197;
    v182 = v192;
    v183 = v193;
    sub_219F6409C(&v182, &qword_27CCD95B0);
    v204[10] = *&v205[160];
    v204[11] = *&v205[176];
    *&v204[12] = *&v205[192];
    v204[6] = *&v205[96];
    v204[7] = *&v205[112];
    v204[9] = *&v205[144];
    v204[8] = *&v205[128];
    v204[2] = *&v205[32];
    v204[3] = *&v205[48];
    v204[5] = *&v205[80];
    v204[4] = *&v205[64];
    v204[1] = *&v205[16];
    v204[0] = *v205;
    sub_219F6409C(v204, &qword_27CCD95B8);
    memcpy(v166, v126, 0x470uLL);
    memcpy(v227, v226, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v227) == 1)
    {
      sub_219F639B0(&v167);
    }

    else
    {
      v163 = v227[60];
      v164 = v227[61];
      v165 = *&v227[62];
      v159 = v227[56];
      v160 = v227[57];
      v161 = v227[58];
      v162 = v227[59];
      v155 = v227[52];
      v156 = v227[53];
      v157 = v227[54];
      v158 = v227[55];
      v153 = v227[50];
      v154 = v227[51];
      sub_219F45500(&v153, &v167, &qword_27CCD95B8);
      v177 = v163;
      v178 = v164;
      v179 = v165;
      v173 = v159;
      v174 = v160;
      v176 = v162;
      v175 = v161;
      v169 = v155;
      v170 = v156;
      v172 = v158;
      v171 = v157;
      v168 = v154;
      v167 = v153;
    }

    v150 = v177;
    v151 = v178;
    v152 = v179;
    v146 = v173;
    v147 = v174;
    v148 = v175;
    v149 = v176;
    v142 = v169;
    v143 = v170;
    v144 = v171;
    v145 = v172;
    v140 = v167;
    v141 = v168;
    v95 = sub_21A046450(&v140);
    sub_219F63A30(v88, v83, v84 & 1);

    v163 = v150;
    v164 = v151;
    v165 = v152;
    v159 = v146;
    v160 = v147;
    v161 = v148;
    v162 = v149;
    v155 = v142;
    v156 = v143;
    v157 = v144;
    v158 = v145;
    v153 = v140;
    v154 = v141;
    sub_219F6409C(&v153, &qword_27CCD95B8);
    v136 = v92 & 1;
    v137 = v95;
    sub_219F63A40(v130, v90, v92 & 1);

    v85 = v90;
    v126 = v94;
  }

  else
  {
    v130 = 0;
    v85 = 0;
    v136 = 0;
    v137 = 0.0;
    v126 = 0;
  }

  memcpy(v204, v216, 0x458uLL);
  memcpy(v205, v216, sizeof(v205));
  memcpy(v215, v216, 0x458uLL);
  sub_219F45500(v216, v166, &qword_27CCDC210);
  sub_219F45500(v205, v166, &qword_27CCDC210);
  sub_21A006EE4(v139, v135, v129, v134);
  v97 = v132;
  v96 = v133;
  v98 = v128;
  v99 = v131;
  sub_21A006EE4(v133, v132, v128, v131);
  v100 = v136;
  v101 = v126;
  sub_21A006EE4(v130, v85, v136, v126);
  sub_21A006F28(v96, v97, v98, v99);
  v103 = v134;
  v102 = v135;
  v104 = v129;
  sub_21A006F28(v139, v135, v129, v134);
  v105 = v130;
  sub_21A006F28(v130, v85, v100, v101);
  sub_219F6409C(v216, &qword_27CCDC210);
  v106 = v105;
  v107 = v119;
  memcpy(v119, v215, 0x458uLL);
  v108 = v138;
  *(v107 + 139) = v139;
  *(v107 + 140) = v102;
  *(v107 + 141) = v104;
  *(v107 + 142) = v103;
  v107[143] = v108;
  v110 = v132;
  v109 = v133;
  *(v107 + 144) = v133;
  *(v107 + 145) = v110;
  v111 = v127;
  LOBYTE(v103) = v128;
  *(v107 + 146) = v128;
  v112 = v131;
  *(v107 + 147) = v131;
  v107[148] = v111;
  *(v107 + 149) = v106;
  *(v107 + 150) = v85;
  v113 = v136;
  v114 = v137;
  *(v107 + 151) = v136;
  *(v107 + 152) = v101;
  v107[153] = v114;
  sub_21A006F28(v106, v85, v113, v101);
  sub_21A006F28(v109, v110, v103, v112);
  sub_21A006F28(v139, v135, v129, v134);
  memcpy(v166, v204, 0x458uLL);
  return sub_219F6409C(v166, &qword_27CCDC210);
}

double sub_21A046450(__int128 *a1)
{
  v3 = sub_21A0E554C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[8];
  v91 = a1[9];
  v9 = a1[11];
  v92 = a1[10];
  v93 = v9;
  v11 = a1[6];
  v10 = a1[7];
  v94 = *(a1 + 24);
  v89 = v10;
  v90 = v8;
  v12 = a1[3];
  v84 = a1[2];
  v85 = v12;
  v13 = a1[4];
  v87 = a1[5];
  v88 = v11;
  v86 = v13;
  v14 = a1[1];
  v82 = *a1;
  v83 = v14;
  v16 = *v1;
  v15 = *(v1 + 8);
  v17 = *(v1 + 24);
  *&v31 = *(v1 + 16);
  *(&v31 + 1) = v17;
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = sub_219F63C20(&v82);
  result = 0.0;
  if (v20 != 1)
  {
    v30 = v18;
    if (v19)
    {
      *&v66 = v16;
      *(&v66 + 1) = v15;
      v67 = v31;
      v68 = v18;
      *&v51 = v16;
      *(&v51 + 1) = v15;
      v52 = v31;
      *&v53 = v18;
      BYTE8(v53) = 1;
      sub_219F63900(&v51, &v39);
    }

    else
    {

      sub_21A0E66AC();
      v22 = sub_21A0E575C();
      sub_21A0E512C();

      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v16, v15, v31, *(&v31 + 1), v30, 0);
      (*(v4 + 8))(v7, v3);
    }

    v29 = v4;
    v39 = v66;
    v40 = v67;
    v81 = v94;
    v79 = v92;
    v80 = v93;
    v75 = v88;
    v76 = v89;
    v77 = v90;
    v78 = v91;
    v71 = v84;
    v72 = v85;
    v73 = v86;
    v74 = v87;
    v69 = v82;
    v70 = v83;
    *&v41[0] = v68;
    *(&v42 + 1) = MEMORY[0x277D84F90];
    sub_219F63C38(&v82, &v35);
    if (qword_27CCD9198 != -1)
    {
      swift_once();
    }

    *(&v41[8] + 8) = v90;
    *(&v41[9] + 8) = v91;
    *(&v41[10] + 8) = v92;
    *(&v41[4] + 8) = v86;
    *(&v41[5] + 8) = v87;
    *(&v41[6] + 8) = v88;
    *(&v41[7] + 8) = v89;
    *(v41 + 8) = v82;
    *(&v41[1] + 8) = v83;
    *(&v41[2] + 8) = v84;
    *(&v41[3] + 8) = v85;
    *(&v41[11] + 1) = v93;
    *&v42 = qword_27CCDBDB0;

    sub_219F8AD10(&v39);
    v47 = *(&v41[8] + 8);
    v48 = *(&v41[9] + 8);
    v49 = *(&v41[10] + 8);
    v50 = *(&v41[11] + 1);
    v43[4] = *(&v41[4] + 8);
    v44 = *(&v41[5] + 8);
    v45 = *(&v41[6] + 8);
    v46 = *(&v41[7] + 8);
    v43[0] = *(v41 + 8);
    v43[1] = *(&v41[1] + 8);
    v43[2] = *(&v41[2] + 8);
    v43[3] = *(&v41[3] + 8);
    v63 = v41[10];
    v64 = v41[11];
    v65 = v42;
    v59 = v41[6];
    v60 = v41[7];
    v61 = v41[8];
    v62 = v41[9];
    v55 = v41[2];
    v56 = v41[3];
    v57 = v41[4];
    v58 = v41[5];
    v51 = v39;
    v52 = v40;
    v53 = v41[0];
    v54 = v41[1];
    sub_219F63C38(v43, &v35);
    sub_219F6409C(&v51, &qword_27CCD95C8);
    v23 = *(&v44 + 1);
    v24 = v45;
    sub_219F63C94(*(&v44 + 1), v45);
    sub_219F63CD8(v43);
    if (v24)
    {
      if (v19)
      {
        *&v32 = v16;
        *(&v32 + 1) = v15;
        v33 = v31;
        v34 = v30;
        *&v39 = v16;
        *(&v39 + 1) = v15;
        v40 = v31;
        *&v41[0] = v30;
        BYTE8(v41[0]) = 1;
        sub_219F63900(&v39, &v35);
      }

      else
      {

        sub_21A0E66AC();
        v25 = sub_21A0E575C();
        v28 = v3;
        v26 = v25;
        sub_21A0E512C();

        sub_21A0E553C();
        swift_getAtKeyPath();
        sub_219F63A50(v16, v15, v31, *(&v31 + 1), v30, 0);
        (*(v29 + 8))(v7, v28);
      }

      v35 = v32;
      v36 = v33;
      *&v37 = v34;
      *(&v37 + 1) = v23;
      *&v38 = qword_27CCDBDB0;
      *(&v38 + 1) = MEMORY[0x277D84F90];

      sub_219F8AB60(&v35, v23, v24, *(&v24 + 1));
      sub_219F63D2C(v23, v24);
      v27 = BYTE8(v37);
      v39 = v35;
      v40 = v36;
      v41[0] = v37;
      v41[1] = v38;
      sub_219F6409C(&v39, &qword_27CCD95D0);
      result = 1.0;
      if ((v27 & 4) == 0)
      {
        return 0.0;
      }
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_21A0469C0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v60 = sub_21A0E554C();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v3);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 9))
  {
    v5 = *(a1 + 6);
    v6 = *(a1 + 7);
    v7 = *(a1 + 16);
    memcpy(v132, a1 + 7, sizeof(v132));
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v132) == 1)
    {
      sub_219F639B0(v133);
    }

    else
    {
      v127 = *&v132[160];
      v128 = *&v132[176];
      v129 = *&v132[192];
      v123 = *&v132[96];
      v124 = *&v132[112];
      v126 = *&v132[144];
      v125 = *&v132[128];
      v119 = *&v132[32];
      v120 = *&v132[48];
      v121 = *&v132[64];
      v122 = *&v132[80];
      v117 = *v132;
      v118 = *&v132[16];
      sub_219F45500(&v117, v133, &qword_27CCD95B8);
      v133[10] = v127;
      v133[11] = v128;
      *&v133[12] = v129;
      v133[6] = v123;
      v133[7] = v124;
      v133[9] = v126;
      v133[8] = v125;
      v133[2] = v119;
      v133[3] = v120;
      v133[5] = v122;
      v133[4] = v121;
      v133[1] = v118;
      v133[0] = v117;
    }

    v127 = v133[10];
    v128 = v133[11];
    v129 = *&v133[12];
    v123 = v133[6];
    v124 = v133[7];
    v126 = v133[9];
    v125 = v133[8];
    v119 = v133[2];
    v120 = v133[3];
    v121 = v133[4];
    v122 = v133[5];
    v117 = v133[0];
    v118 = v133[1];
    sub_219F63A40(v5, v6, v7 & 1);
    v14 = qword_27CCD91A0;

    if (v14 != -1)
    {
      swift_once();
    }

    v79 = xmmword_27CCDC0C8;
    v80 = unk_27CCDC0D8;
    v81 = xmmword_27CCDC0E8;
    LODWORD(v82) = dword_27CCDC0F8;
    v77 = xmmword_27CCDC0A8;
    v78 = unk_27CCDC0B8;
    v113 = xmmword_27CCDC0C8;
    v114 = unk_27CCDC0D8;
    v115 = xmmword_27CCDC0E8;
    v116 = dword_27CCDC0F8;
    v111 = xmmword_27CCDC0A8;
    v112 = unk_27CCDC0B8;
    LOBYTE(v73[0]) = 9;
    v15 = *a1;
    v16 = a1[1];
    *&v131[25] = *(a1 + 25);
    *&v131[16] = v16;
    *v131 = v15;
    if (v131[40] == 1)
    {
      *&v75[0] = *v131;
      *(v75 + 8) = *&v131[8];
      *(&v75[1] + 8) = *&v131[24];
      sub_219F639D4(&v77, &v98);
      sub_219F45500(v131, &v98, &qword_27CCD9580);
    }

    else
    {
      sub_219F639D4(&v77, &v98);
      sub_219F45500(v131, &v98, &qword_27CCD9580);
      sub_21A0E66AC();
      v17 = sub_21A0E575C();
      sub_21A0E512C();

      v19 = v60;
      v18 = v61;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F6409C(v131, &qword_27CCD9580);
      (*(v62 + 8))(v18, v19);
    }

    *v90 = v75[0];
    *&v90[16] = v75[1];
    *&v90[32] = *&v75[2];
    v20 = Text.activityTextModifier(_:fallback:font:environment:)(&v117, &v111, v73, v90, v5, v6, v7 & 1);
    v22 = v21;
    v24 = v23;
    v25 = v5;
    v27 = v26;
    sub_219F63A30(v25, v6, v7 & 1);

    *v130 = *v90;
    *&v130[16] = *&v90[16];
    *&v130[32] = *&v90[32];
    sub_219F5ED9C(v130);
    v94 = v113;
    v95 = v114;
    v96 = v115;
    v97 = v116;
    v92 = v111;
    v93 = v112;
    sub_219F6409C(&v92, &qword_27CCD95B0);
    v108 = v127;
    v109 = v128;
    v110 = v129;
    v104 = v123;
    v105 = v124;
    v106 = v125;
    v107 = v126;
    v100 = v119;
    v101 = v120;
    v102 = v121;
    v103 = v122;
    v98 = v117;
    v99 = v118;
    sub_219F6409C(&v98, &qword_27CCD95B8);
    KeyPath = swift_getKeyPath();
    v68 = v22;
    v69 = v20;
    v63 = v24 & 1;
    sub_219F63A40(v20, v22, v24 & 1);
    v66 = v27;

    v67 = KeyPath;

    v65 = 1;
    v8 = *(a1 + 13);
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_5:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_22;
  }

  v68 = 0;
  v69 = 0;
  v63 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v8 = *(a1 + 13);
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_13:
  v29 = *(a1 + 10);
  v30 = *(a1 + 11);
  v31 = *(a1 + 24);
  memcpy(v133, a1 + 7, 0x3E8uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v133) == 1)
  {
    sub_219F639B0(&v117);
  }

  else
  {
    v110 = *(&v133[24] + 1);
    v100 = *(&v133[14] + 8);
    v101 = *(&v133[15] + 8);
    v98 = *(&v133[12] + 8);
    v99 = *(&v133[13] + 8);
    v108 = *(&v133[22] + 8);
    v109 = *(&v133[23] + 8);
    v104 = *(&v133[18] + 8);
    v105 = *(&v133[19] + 8);
    v106 = *(&v133[20] + 8);
    v107 = *(&v133[21] + 8);
    v102 = *(&v133[16] + 8);
    v103 = *(&v133[17] + 8);
    sub_219F45500(&v98, &v117, &qword_27CCD95B8);
    v127 = v108;
    v128 = v109;
    v129 = v110;
    v123 = v104;
    v124 = v105;
    v126 = v107;
    v125 = v106;
    v119 = v100;
    v120 = v101;
    v121 = v102;
    v122 = v103;
    v117 = v98;
    v118 = v99;
  }

  v108 = v127;
  v109 = v128;
  v110 = v129;
  v104 = v123;
  v105 = v124;
  v106 = v125;
  v107 = v126;
  v100 = v119;
  v101 = v120;
  v102 = v121;
  v103 = v122;
  v98 = v117;
  v99 = v118;
  sub_219F63A40(v29, v30, v31 & 1);
  v32 = qword_27CCD91A0;

  if (v32 != -1)
  {
    swift_once();
  }

  v113 = xmmword_27CCDC0C8;
  v114 = unk_27CCDC0D8;
  v115 = xmmword_27CCDC0E8;
  v116 = dword_27CCDC0F8;
  v111 = xmmword_27CCDC0A8;
  v112 = unk_27CCDC0B8;
  v94 = xmmword_27CCDC0C8;
  v95 = unk_27CCDC0D8;
  v96 = xmmword_27CCDC0E8;
  v97 = dword_27CCDC0F8;
  v92 = xmmword_27CCDC0A8;
  v93 = unk_27CCDC0B8;
  v91 = 9;
  v33 = *a1;
  v34 = a1[1];
  *&v130[25] = *(a1 + 25);
  *&v130[16] = v34;
  *v130 = v33;
  if (v130[40] == 1)
  {
    *v90 = *v130;
    *&v90[8] = *&v130[8];
    *&v90[24] = *&v130[24];
    sub_219F639D4(&v111, &v77);
    sub_219F45500(v130, &v77, &qword_27CCD9580);
  }

  else
  {
    sub_219F639D4(&v111, &v77);
    sub_219F45500(v130, &v77, &qword_27CCD9580);
    sub_21A0E66AC();
    v35 = v29;
    v36 = sub_21A0E575C();
    sub_21A0E512C();

    v29 = v35;
    v37 = v61;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F6409C(v130, &qword_27CCD9580);
    (*(v62 + 8))(v37, v60);
  }

  v70 = *v90;
  v71 = *&v90[16];
  v72 = *&v90[32];
  v38 = Text.activityTextModifier(_:fallback:font:environment:)(&v98, &v92, &v91, &v70, v29, v30, v31 & 1);
  v40 = v39;
  v41 = v29;
  v43 = v42;
  v45 = v44;
  sub_219F63A30(v41, v30, v31 & 1);

  v73[0] = v70;
  v73[1] = v71;
  v74 = v72;
  sub_219F5ED9C(v73);
  v75[2] = v94;
  v75[3] = v95;
  v75[4] = v96;
  v76 = v97;
  v75[0] = v92;
  v75[1] = v93;
  sub_219F6409C(v75, &qword_27CCD95B0);
  v87 = v108;
  v88 = v109;
  v89 = v110;
  v83 = v104;
  v84 = v105;
  v85 = v106;
  v86 = v107;
  v79 = v100;
  v80 = v101;
  v81 = v102;
  v82 = v103;
  v77 = v98;
  v78 = v99;
  sub_219F6409C(&v77, &qword_27CCD95B8);
  v46 = swift_getKeyPath();
  v47 = v43 & 1;
  v8 = v38;
  v48 = v38;
  v9 = v40;
  v10 = v47;
  sub_219F63A40(v48, v40, v47);
  v11 = v45;

  v12 = v46;

  v13 = 1;
LABEL_22:
  LOBYTE(v117) = 1;
  v49 = v68;
  v50 = v63;
  sub_219F640FC(v69, v68, v63, v66);
  sub_219F640FC(v8, v9, v10, v11);
  v51 = v49;
  v52 = v50;
  v53 = v50;
  v54 = v66;
  v55 = v65;
  sub_219F6414C(v69, v51, v52, v66);
  sub_219F6414C(v8, v9, v10, v11);
  v56 = v117;
  v57 = v64;
  v58 = v68;
  *v64 = v69;
  v57[1] = v58;
  v57[2] = v53;
  v57[3] = v54;
  v57[4] = v67;
  v57[5] = v55;
  *(v57 + 48) = 0;
  v57[7] = 0;
  *(v57 + 64) = v56;
  v57[9] = v8;
  v57[10] = v9;
  v57[11] = v10;
  v57[12] = v11;
  v57[13] = v12;
  v57[14] = v13;
  *(v57 + 120) = 0;
  sub_219F6414C(v8, v9, v10, v11);
  return sub_219F6414C(v69, v68, v53, v66);
}

double sub_21A047448@<D0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_21A0E55BC();
  v19 = 1;
  sub_21A0469C0(__dst, &v11);
  v25 = v15;
  v26 = v16;
  v27[0] = v17[0];
  *(v27 + 9) = *(v17 + 9);
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v28[0] = v11;
  v28[1] = v12;
  v28[2] = v13;
  v28[3] = v14;
  v28[4] = v15;
  v28[5] = v16;
  v29[0] = v17[0];
  *(v29 + 9) = *(v17 + 9);
  sub_219F45500(&v21, &v10, &qword_27CCD95F0);
  sub_219F6409C(v28, &qword_27CCD95F0);
  *&v18[71] = v25;
  *&v18[87] = v26;
  *&v18[103] = v27[0];
  *&v18[112] = *(v27 + 9);
  *&v18[7] = v21;
  *&v18[23] = v22;
  *&v18[39] = v23;
  *&v18[55] = v24;
  v4 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v4;
  v5 = *&v18[112];
  *(a1 + 113) = *&v18[96];
  *(a1 + 129) = v5;
  v6 = *&v18[16];
  *(a1 + 17) = *v18;
  *(a1 + 33) = v6;
  result = *&v18[32];
  v8 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  v9 = v19;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 65) = v8;
  return result;
}

void *sub_21A0475B4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  memcpy(__dst, v2, sizeof(__dst));
  v5 = sub_21A0E567C();
  v12 = 0;
  sub_21A0445E4(__dst, v6);
  memcpy(v14, __src, sizeof(v14));
  memcpy(v15, __src, sizeof(v15));
  sub_219F45500(v14, &v9, &qword_27CCDC208);
  sub_219F6409C(v15, &qword_27CCDC208);
  memcpy(&v11[7], v14, 0x4D0uLL);
  v7 = v12;
  *v4 = v5;
  *(v4 + 8) = 0;
  *(v4 + 16) = v7;
  return memcpy((v4 + 17), v11, 0x4D7uLL);
}

double sub_21A0476C8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC0A8 = v0;
  BYTE4(xmmword_27CCDC0E8) = 32;
  LODWORD(xmmword_27CCDC0E8) = 0;
  *(&xmmword_27CCDC0E8 + 1) = 0;
  dword_27CCDC0F8 = 50726657;
  return result;
}

double sub_21A047748()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC100 = v0;
  BYTE4(xmmword_27CCDC140) = 32;
  LODWORD(xmmword_27CCDC140) = 0;
  *(&xmmword_27CCDC140 + 1) = 0;
  dword_27CCDC150 = 16908289;
  return result;
}

double sub_21A0477C4()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC158 = v0;
  BYTE4(xmmword_27CCDC198) = 32;
  LODWORD(xmmword_27CCDC198) = 0;
  *(&xmmword_27CCDC198 + 1) = 0;
  dword_27CCDC1A8 = 328193;
  return result;
}

double sub_21A047840()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDC1B0 = v0;
  BYTE4(xmmword_27CCDC1F0) = 32;
  LODWORD(xmmword_27CCDC1F0) = 0;
  *(&xmmword_27CCDC1F0 + 1) = 0;
  dword_27CCDC200 = 50660865;
  return result;
}

void sub_21A0478F0(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  bzero((a1 + 80), 0x408uLL);
}

uint64_t LiveBlogBodyData.leadingKicker.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LiveBlogBodyData.leadingKicker.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LiveBlogBodyData.trailingKicker.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LiveBlogBodyData.trailingKicker.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LiveBlogBodyData.headline.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LiveBlogBodyData.headline.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t LiveBlogBodyData.body.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t LiveBlogBodyData.body.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t LiveBlogBodyData.caption.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t LiveBlogBodyData.caption.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall LiveBlogBodyData.init(leadingKicker:trailingKicker:headline:body:caption:)(NewsLiveActivitiesCore::LiveBlogBodyData *__return_ptr retstr, Swift::String_optional leadingKicker, Swift::String_optional trailingKicker, Swift::String_optional headline, Swift::String_optional body, Swift::String_optional caption)
{
  retstr->leadingKicker = leadingKicker;
  retstr->trailingKicker = trailingKicker;
  retstr->headline = headline;
  retstr->body = body;
  retstr->caption = caption;
}

uint64_t sub_21A047C3C(uint64_t a1)
{
  v2 = sub_21A04872C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A047C78(uint64_t a1)
{
  v2 = sub_21A04872C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveBlogBodyData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC228);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v14 - v6;
  v8 = v1[2];
  v14[7] = v1[3];
  v14[8] = v8;
  v9 = v1[4];
  v14[5] = v1[5];
  v14[6] = v9;
  v10 = v1[6];
  v14[3] = v1[7];
  v14[4] = v10;
  v11 = v1[8];
  v14[1] = v1[9];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04872C();
  sub_21A0E6EAC();
  v19 = 0;
  v12 = v14[9];
  sub_21A0E6B3C();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = 1;
  sub_21A0E6B3C();
  v17 = 2;
  sub_21A0E6B3C();
  v16 = 3;
  sub_21A0E6B3C();
  v15 = 4;
  sub_21A0E6B3C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t LiveBlogBodyData.hash(into:)()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  if (v0[1])
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_21A0E6DCC();
    if (v1)
    {
LABEL_3:
      sub_21A0E6DCC();
      sub_21A0E626C();
      if (v2)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_21A0E6DCC();
  if (v2)
  {
LABEL_4:
    sub_21A0E6DCC();
    sub_21A0E626C();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_21A0E6DCC();
    if (v4)
    {
      goto LABEL_6;
    }

    return sub_21A0E6DCC();
  }

LABEL_11:
  sub_21A0E6DCC();
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_21A0E6DCC();
  sub_21A0E626C();
  if (!v4)
  {
    return sub_21A0E6DCC();
  }

LABEL_6:
  sub_21A0E6DCC();

  return sub_21A0E626C();
}

uint64_t LiveBlogBodyData.hashValue.getter()
{
  sub_21A0E6DAC();
  LiveBlogBodyData.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t LiveBlogBodyData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC238);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A04872C();
  sub_21A0E6E7C();
  if (v2)
  {
    v35 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41 = 0uLL;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  else
  {
    LOBYTE(v41) = 0;
    *&v34 = sub_21A0E6A5C();
    *(&v34 + 1) = v11;
    LOBYTE(v41) = 1;
    v12 = sub_21A0E6A5C();
    v31 = a2;
    v33 = v12;
    v32 = v13;
    LOBYTE(v41) = 2;
    v14 = sub_21A0E6A5C();
    v16 = v15;
    LOBYTE(v41) = 3;
    v17 = sub_21A0E6A5C();
    v19 = v18;
    v50 = 4;
    v20 = sub_21A0E6A5C();
    v35 = 0;
    v21 = v20;
    v22 = v9;
    v24 = v23;
    (*(v6 + 8))(v22, v5);
    v25 = v34;
    v36 = v34;
    v26 = v32;
    *&v37 = v33;
    *(&v37 + 1) = v32;
    *&v38 = v14;
    *(&v38 + 1) = v16;
    *&v39 = v17;
    *(&v39 + 1) = v19;
    *&v40 = v21;
    *(&v40 + 1) = v24;
    v27 = v39;
    v28 = v31;
    v31[2] = v38;
    v28[3] = v27;
    v28[4] = v40;
    v29 = v37;
    *v28 = v36;
    v28[1] = v29;
    sub_219F87ED4(&v36, &v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41 = __PAIR128__(*(&v34 + 1), v25);
    v42 = v33;
    v43 = v26;
    v44 = v14;
    v45 = v16;
    v46 = v17;
    v47 = v19;
    v48 = v21;
    v49 = v24;
  }

  return sub_21A048780(&v41);
}

uint64_t sub_21A048474()
{
  sub_21A0E6DAC();
  LiveBlogBodyData.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0484B8()
{
  sub_21A0E6DAC();
  LiveBlogBodyData.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore0B12BlogBodyDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_21A0E6C5C();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_21A0E6C5C();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_21A0E6C5C();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_21A0E6C5C();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_21A0E6C5C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_21A04872C()
{
  result = qword_27CCDC230;
  if (!qword_27CCDC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC230);
  }

  return result;
}

unint64_t sub_21A0487B4()
{
  result = qword_27CCDC240;
  if (!qword_27CCDC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC240);
  }

  return result;
}

uint64_t sub_21A048808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21A048864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21A0488F0()
{
  result = qword_27CCDC248;
  if (!qword_27CCDC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC248);
  }

  return result;
}

unint64_t sub_21A048948()
{
  result = qword_27CCDC250;
  if (!qword_27CCDC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC250);
  }

  return result;
}

unint64_t sub_21A0489A0()
{
  result = qword_27CCDC258[0];
  if (!qword_27CCDC258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CCDC258);
  }

  return result;
}

uint64_t sub_21A0489F4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21A048A74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
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

void sub_21A048BF8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = &a1[v9 + 16] & ~v9;

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

uint64_t sub_21A048EA4(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDC2E0);
  swift_getTupleTypeMetadata2();
  sub_21A0E5E6C();
  swift_getWitnessTable();
  v4 = sub_21A0E5DDC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v17[-v11];
  v13 = *(a1 + 24);
  v18 = v3;
  v19 = v13;
  v20 = v1;
  sub_21A0E5E3C();
  sub_21A0E5DCC();
  WitnessTable = swift_getWitnessTable();
  sub_21A099F68(v9, v4, WitnessTable);
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_21A099F68(v12, v4, WitnessTable);
  return (v15)(v12, v4);
}

uint64_t sub_21A04909C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for InternalMessagePlaceholderView();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v29[-v11];
  v13 = *(a2 - 8);
  v15 = MEMORY[0x28223BE20](v10, v14);
  v33 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v29[-v19];
  v21 = a1 + *(v18 + 36);
  v35 = a3;
  sub_21A099F68(v21, a2, a3);
  sub_21A0E4E0C();
  if (sub_21A0E4DFC())
  {
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_21A0E686C();

    *&v48 = 0xD000000000000010;
    *(&v48 + 1) = 0x800000021A10A9F0;
    MEMORY[0x21CED1980](*a1, a1[1]);
    v31 = *(&v48 + 1);
    v32 = v48;
    v30 = sub_21A0E577C();
    LOBYTE(v48) = 0;
    LOBYTE(v47[0]) = 1;
    (*(v8 + 16))(v12, a1, v7);
    v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v23 = swift_allocObject();
    v24 = v35;
    *(v23 + 16) = a2;
    *(v23 + 24) = v24;
    (*(v8 + 32))(v23 + v22, v12, v7);
    *&v48 = v32;
    *(&v48 + 1) = v31;
    LOBYTE(v49) = 0;
    *(&v49 + 1) = MEMORY[0x277D84F90];
    LOBYTE(v50) = v30;
    *(&v50 + 1) = 0;
    *&v51 = 0;
    BYTE8(v52) = 1;
    v25 = sub_21A0498F8;
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    *(&v52 + 1) = 0;
    *&v51 = 0;
  }

  *(&v51 + 1) = 0;
  *&v52 = 0;
  *&v53 = v25;
  *(&v53 + 1) = v23;
  v54 = 0uLL;
  v26 = v33;
  (*(v13 + 16))(v33, v20, a2);
  v43 = v52;
  v44 = v53;
  v45 = v54;
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v42 = v51;
  v46[0] = v26;
  v46[1] = &v39;
  sub_21A04968C(&v48, v47);
  v38[0] = a2;
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC2E0);
  v36 = v35;
  v37 = sub_21A0496FC();
  sub_21A095C18(v46, 2uLL, v38);
  sub_21A049890(&v48);
  v27 = *(v13 + 8);
  v27(v20, a2);
  v47[4] = v43;
  v47[5] = v44;
  v47[6] = v45;
  v47[0] = v39;
  v47[1] = v40;
  v47[2] = v41;
  v47[3] = v42;
  sub_21A049890(v47);
  return (v27)(v26, a2);
}