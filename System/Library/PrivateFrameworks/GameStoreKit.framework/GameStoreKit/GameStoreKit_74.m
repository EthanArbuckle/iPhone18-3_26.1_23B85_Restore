uint64_t sub_24ED8BD6C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F100);
  result = sub_24F92C818();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_24F92D068();
      MEMORY[0x253052A00](v15);
      result = sub_24F92D0B8();
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

        v1 = v0;
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

uint64_t sub_24ED8BF8C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0E8);
  result = sub_24F92C818();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      result = sub_24F92D0B8();
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
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
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

unint64_t sub_24ED8C214()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F050);
  result = sub_24F92C818();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    for (i = (v5 + 63) >> 6; v7; ++*(v3 + 16))
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(v1 + 48) + 72 * (v9 | (v4 << 6));
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = *(v12 + 16);
      v28 = *(v12 + 64);
      v26 = v14;
      v27 = v13;
      v24 = *v12;
      v25 = v15;
      v16 = *(v12 + 48);
      v22[11] = *(v12 + 32);
      v22[12] = v16;
      v23 = *(v12 + 64);
      v17 = *(v12 + 16);
      v22[9] = *v12;
      v22[10] = v17;
      sub_24F92D068();
      sub_24E627A14(&v24, v22);
      GameActivityDraftPlayerInfo.hash(into:)();
      sub_24F92D0B8();
      result = sub_24F92C6D8();
      *(v3 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v18 = *(v3 + 48) + 72 * result;
      *v18 = v24;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      *(v18 + 64) = v28;
      *(v18 + 32) = v20;
      *(v18 + 48) = v21;
      *(v18 + 16) = v19;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= i)
      {
        goto LABEL_14;
      }

      v11 = *(v1 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_24ED8C418()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8);
  result = sub_24F92C818();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_24E65864C(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = sub_24F92C7B8();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
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

uint64_t sub_24ED8C644()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F058);
  result = sub_24F92C818();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      result = sub_24F92D0B8();
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
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
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

uint64_t sub_24ED8C8D4(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24F92C818();
  v8 = result;
  if (*(v6 + 16))
  {
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
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      v20 = sub_24F92D068();
      a4(v20);
      sub_24F92B218();

      result = sub_24F92D0B8();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
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

        v5 = v4;
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
    *v5 = v8;
  }

  return result;
}

uint64_t sub_24ED8CB18()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E560);
  result = sub_24F92C818();
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
      sub_24F92D068();

      sub_24F92B218();
      result = sub_24F92D0B8();
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

uint64_t sub_24ED8CD50()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F110);
  result = sub_24F92C818();
  v4 = result;
  if (*(v2 + 16))
  {
    v27 = v2;
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
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = (*(v2 + 48) + 16 * (v17 | (v5 << 6)));
      v22 = *v20;
      v21 = v20[1];
      sub_24F92D068();
      sub_24E8E2880(v22, v21);
      sub_24E8E2880(v22, v21);
      sub_24F92B218();

      result = sub_24F92D0B8();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v12) >> 6;
        while (++v14 != v24 || (v23 & 1) == 0)
        {
          v25 = v14 == v24;
          if (v14 == v24)
          {
            v14 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v14);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v4 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v21;
      ++*(v4 + 16);
      v2 = v27;
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v19 = *(v6 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_24ED8D114()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E598);
  result = sub_24F92C818();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_24F92B0D8();
      sub_24F92D068();
      v17 = v16;
      sub_24F92B218();
      v18 = sub_24F92D0B8();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
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

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_24ED8D368()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F130);
  result = sub_24F92C818();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x2530529D0](*(v4 + 40), v15, 4);
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

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24ED8D55C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0F0);
  result = sub_24F92C818();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_24E772724(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      sub_24F92D068();
      _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
      result = sub_24F92D0B8();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
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

uint64_t sub_24ED8D79C()
{
  v1 = v0;
  v32 = sub_24F927D58();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E528);
  v6 = sub_24F92C818();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_24ED8F50C(&qword_27F21E530, MEMORY[0x277CEC160]);
      result = sub_24F92AEE8();
      v20 = -1 << *(v6 + 32);
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
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_24ED8DAB8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0E0);
  result = sub_24F92C818();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      result = sub_24F92D0B8();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_24ED8DE04()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0D8);
  result = sub_24F92C818();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_24F92D068();
      MEMORY[0x253052A00](v15);
      result = sub_24F92D0B8();
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
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
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

uint64_t sub_24ED8E024()
{
  v1 = v0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980);
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - v3;
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0B8);
  v6 = sub_24F92C818();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_24E602068(&qword_27F22F0A8, &qword_27F213980);
      result = sub_24F92AEE8();
      v20 = -1 << *(v6 + 32);
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
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_24ED8E344()
{
  v1 = v0;
  v32 = sub_24F92A278();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F090);
  v6 = sub_24F92C818();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_24ED8F50C(&qword_27F22F080, MEMORY[0x277D22300]);
      result = sub_24F92AEE8();
      v20 = -1 << *(v6 + 32);
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
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_24ED8E660()
{
  v1 = v0;
  v32 = sub_24F92A2C8();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5C0);
  v6 = sub_24F92C818();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_24ED8F50C(&qword_27F21E5C8, MEMORY[0x277D22320]);
      result = sub_24F92AEE8();
      v20 = -1 << *(v6 + 32);
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
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
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
    *v1 = v6;
  }

  return result;
}

unint64_t sub_24ED8E97C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F128);
  result = sub_24F92C818();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    for (i = result + 56; v7; ++*(v3 + 16))
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v13 = *(*(v1 + 48) + 8 * (v10 | (v4 << 6)));
      sub_24F92D068();

      sub_24EDC9B90(v14, v13);
      sub_24F92D0B8();
      result = sub_24F92C6D8();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 48) + 8 * result) = v13;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_14;
      }

      v12 = *(v1 + 56 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_24ED8EB24(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24F92C818();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_24F92D058();
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
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_24;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_24ED8ED0C()
{
  v1 = v0;
  v32 = sub_24F92AA48();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F068);
  v6 = sub_24F92C818();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_24ED8F50C(&qword_27F21BCA0, MEMORY[0x277D224C0]);
      result = sub_24F92AEE8();
      v20 = -1 << *(v6 + 32);
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
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_24ED8F028(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_24F92C818();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_24F92C3F8();
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_24ED8F234()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E590);
  result = sub_24F92C818();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_24F92D068();
      MEMORY[0x253052A00](v15);
      result = sub_24F92D0B8();
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
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
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

id sub_24ED8F454(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_24ED8F464(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_24ED8F474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_24E612C80(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_24ED8F50C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24ED8F56C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  v11 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v11;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 88) = 0x6974736567677573;
  *(inited + 96) = 0xEB00000000736E6FLL;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F158);
  v12 = sub_24ED8FC54(&qword_27F22F170, &qword_27F22F178);
  *(inited + 104) = a3;
  *(inited + 136) = v12;
  *(inited + 144) = 0x69766E49746E6573;
  *(inited + 152) = 0xEF736E6F69746174;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  *(inited + 192) = sub_24E61B71C(&qword_27F213798);
  *(inited + 160) = a4;

  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a5[4] = result;
  *a5 = v14;
  return result;
}

uint64_t sub_24ED8F78C()
{
  v1 = 0x6974736567677573;
  if (*v0 != 1)
  {
    v1 = 0x69766E49746E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24ED8F7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ED8FE38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ED8F820(uint64_t a1)
{
  v2 = sub_24ED8FC00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED8F85C(uint64_t a1)
{
  v2 = sub_24ED8FC00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ED8F8B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24ED8F908(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_24ED8F908(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F148);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED8FC00();
  sub_24F92D108();
  if (!v1)
  {
    LOBYTE(v11) = 0;
    v7 = sub_24F92CC28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F158);
    v10 = 1;
    sub_24ED8FC54(&qword_27F22F160, &qword_27F22F168);
    sub_24F92CC68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v10 = 2;
    sub_24E61B71C(&qword_27F216420);
    v9 = 0;
    sub_24F92CC68();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24ED8FC00()
{
  result = qword_27F22F150;
  if (!qword_27F22F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F150);
  }

  return result;
}

uint64_t sub_24ED8FC54(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F158);
    sub_24ED8FCDC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24ED8FCDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FriendSuggestion(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ED8FD34()
{
  result = qword_27F22F180;
  if (!qword_27F22F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F180);
  }

  return result;
}

unint64_t sub_24ED8FD8C()
{
  result = qword_27F22F188;
  if (!qword_27F22F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F188);
  }

  return result;
}

unint64_t sub_24ED8FDE4()
{
  result = qword_27F22F190;
  if (!qword_27F22F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F190);
  }

  return result;
}

uint64_t sub_24ED8FE38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69766E49746E6573 && a2 == 0xEF736E6F69746174)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24ED8FF68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, float64_t a11@<D7>, uint64_t a12, double a13)
{
  v29 = a10;
  v30 = a11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v28 - v24;
  sub_24E60169C(a1, &v28 - v24, &unk_27F23A690);
  sub_24E60169C(a2, &v25[*(v23 + 56)], &unk_27F23A690);
  if (a4 > 1580.0)
  {
    a4 = 1580.0;
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  v31[0] = (v31[1] & 1) == 0;
  sub_24ECE74B4(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x6F43656C676E6973, 0xEC0000006E6D756CLL, v31, 0, v26, a3, a4, a5, a6, a7, a8, a9, v29, v30, a12, a13);
  return sub_24E601704(v25, &unk_27F23A680);
}

uint64_t sub_24ED9015C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, float64_t a12@<D7>, uint64_t a13, double a14)
{
  v37 = a11;
  v38 = a12;
  v35[1] = a1;
  v36 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v35 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v35 - v30;
  sub_24E60169C(a2, v35 - v30, &unk_27F23A690);
  sub_24E60169C(a3, &v31[*(v23 + 56)], &unk_27F23A690);
  sub_24E60169C(v31, v28, &unk_27F23A680);
  v32 = *(v23 + 56);
  sub_24E60169C(v28, v25, &unk_27F23A690);
  sub_24E60169C(&v28[v32], &v25[*(v23 + 56)], &unk_27F23A690);
  if (a5 > 1580.0)
  {
    a5 = 1580.0;
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  v39[0] = (v39[1] & 1) == 0;
  sub_24ECE74B4(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x6F43656C676E6973, 0xEC0000006E6D756CLL, v39, 0, v33, v36, a5, a6, a7, a8, a9, a10, v37, v38, a13, a14);
  sub_24E601704(v25, &unk_27F23A680);
  sub_24E601704(v31, &unk_27F23A680);
  sub_24E601704(&v28[v32], &unk_27F23A690);
  return sub_24E601704(v28, &unk_27F23A690);
}

double sub_24ED9042C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24E60169C(a2, &v10 - v7, &unk_27F23A690);
  sub_24E60169C(a3, &v8[*(v6 + 56)], &unk_27F23A690);
  sub_24E601704(v8, &unk_27F23A680);
  return 20.0;
}

uint64_t sub_24ED90514@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24E74EC40();
  result = sub_24F92BEF8();
  v4 = MEMORY[0x277D225C0];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void *DiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v15 = *v13;
  *(v14 + qword_27F22F198) = 0;
  v16 = MEMORY[0x277D84F90];
  *(v14 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v17 = qword_27F39C780;
  *(v14 + v17) = sub_24E60986C(v16);
  v45 = (v14 + qword_27F22F1A8);
  *v45 = 0;
  v45[1] = 0;
  v18 = (v14 + qword_27F22F1B0);
  *v18 = 0;
  v18[1] = 0;
  v47 = v18;
  v19 = (v14 + qword_27F22F1B8);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v14 + qword_27F22F1C0);
  *v20 = 0;
  v20[1] = 0;
  v46 = v20;
  v21 = (v14 + qword_27F22F1C8);
  *v21 = 0;
  v21[1] = 0;
  v48 = v21;
  v22 = (v14 + qword_27F39C788);
  *v22 = 0u;
  v22[1] = 0u;
  *(v22 + 25) = 0u;
  *(v14 + qword_27F39C790) = 0;
  *(v14 + qword_27F22F1D0) = 0;
  *(v14 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v14 + qword_27F39C798) = 0;
  v23 = qword_27F39C7A0;
  v24 = v15[10];
  v25 = v15[11];
  v26 = v15[12];
  v27 = v15[13];
  v28 = v15[14];
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
  sub_24F92ADB8();
  *(v14 + v23) = sub_24F92AD98();
  v29 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v14 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7B0;
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult();
  sub_24F92ADB8();
  *(v14 + v30) = sub_24F92AD98();
  v31 = qword_27F39C7B8;
  *(v14 + v31) = sub_24F92AD98();
  v32 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v14 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  *(v14 + v33) = sub_24F92ADA8();
  v34 = qword_27F22F1E0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v36 = *(*(v35 - 8) + 56);
  v36(v14 + v34, 1, 1, v35);
  v36(v14 + qword_27F22F1E8, 1, 1, v35);
  v14[2] = a1;
  sub_24E911D90(a2, v14 + qword_27F39C7D0);
  v37 = *v45;
  *v45 = a4;
  v45[1] = a5;
  sub_24E824448(v37);
  v38 = *v19;
  *v19 = a6;
  v19[1] = a7;
  sub_24E824448(v38);
  if (a3)
  {
    v39 = swift_allocObject();
    v39[2] = v24;
    v39[3] = v25;
    v39[4] = v26;
    v39[5] = v27;
    v39[6] = v28;
    v39[7] = a3;
    v40 = sub_24ED95860;
  }

  else
  {
    v40 = 0;
    v39 = 0;
  }

  v41 = *v47;
  *v47 = v40;
  v47[1] = v39;
  sub_24E824448(v41);
  v42 = *v46;
  *v46 = a8;
  v46[1] = a9;
  sub_24E824448(v42);
  v43 = *v48;
  *v48 = a10;
  v48[1] = a11;
  sub_24E824448(v43);
  *(v14 + qword_27F22F1F0) = a12;
  *(v14 + qword_27F39C7D8) = a13;
  return v14;
}

uint64_t DiffablePageContentPresenter.deinit()
{

  sub_24E601704(v0 + qword_27F39C7D0, &qword_27F228530);
  swift_unknownObjectRelease();

  sub_24E824448(*(v0 + qword_27F22F1A8));
  sub_24E824448(*(v0 + qword_27F22F1B0));
  sub_24E824448(*(v0 + qword_27F22F1B8));
  sub_24E824448(*(v0 + qword_27F22F1C0));
  sub_24E824448(*(v0 + qword_27F22F1C8));

  sub_24E94E128(v0 + qword_27F39C788);

  sub_24E601704(v0 + qword_27F22F1E0, &qword_27F2226F0);
  sub_24E601704(v0 + qword_27F22F1E8, &qword_27F2226F0);
  return v0;
}

uint64_t sub_24ED90B7C()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  sub_24F92B0D8();

  return sub_24F92AAD8();
}

uint64_t sub_24ED90CF4(uint64_t a1)
{
  v3 = qword_27F39C780;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24ED90D4C()
{
  v1 = v0;
  v2 = *(v0 + qword_27F22F1A0);
  v3 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = v2 + 32 + 40 * v5;
      v7 = v5;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);

          sub_24E6585F8(v11);

          __break(1u);
          return result;
        }

        sub_24E65864C(v6, v11);
        sub_24ED93060(v11, v1, &v10);
        v8 = sub_24E6585F8(v11);
        if (v10)
        {
          break;
        }

        ++v7;
        v6 += 40;
        if (v4 == v7)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x253050F00](v8);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v5 = v7 + 1;
      sub_24F92B638();
      v3 = v12;
    }

    while (v4 - 1 != v7);
  }

LABEL_11:

  return v3;
}

uint64_t sub_24ED90EC4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_27F22F1B0);
  v4 = *(v2 + qword_27F22F1B0);
  *v3 = a1;
  v3[1] = a2;
  return sub_24E824448(v4);
}

uint64_t sub_24ED90EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39C788;
  swift_beginAccess();
  return sub_24E9B7D88(v1 + v3, a1);
}

uint64_t sub_24ED90F3C(uint64_t a1)
{
  v3 = qword_27F39C788;
  swift_beginAccess();
  sub_24EBD46D4(a1, v1 + v3);
  swift_endAccess();
  sub_24ED93120();
  return sub_24E94E128(a1);
}

void sub_24ED90FC8(char a1)
{
  v2 = *(v1 + qword_27F22F1D0);
  *(v1 + qword_27F22F1D0) = a1;
  sub_24ED93194(v2);
}

void *sub_24ED90FE0()
{
  v0 = sub_24ED959BC();
  v1 = v0;
  return v0;
}

void sub_24ED9100C(uint64_t a1)
{
  v3 = qword_27F39C798;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_24ED910C4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v37 = v5;
    v9 = *(v0 + qword_27F22F1A8 + 8);
    v10 = *(v0 + qword_27F22F1F0);
    if (v10)
    {
      sub_24E5FCA4C(v8);
      if (qword_27F210788 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v10 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v10 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
      sub_24E5FCA4C(v8);
    }

    v14 = sub_24ED91578();
    if ((*(v1 + qword_27F39C790) & 1) != 0 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v15 = v8(v1 + qword_27F39C7D0);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      v36[0] = v15;
      v36[1] = v9;
      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v21 = v37;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v37);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      v24 = swift_allocObject();
      v25 = v2[10];
      v23[2] = v25;
      v26 = v2[11];
      v23[3] = v26;
      v27 = v2[12];
      v23[4] = v27;
      v28 = v2[13];
      v23[5] = v28;
      v29 = v2;
      v30 = v2[14];
      v23[6] = v30;
      v23[7] = v22;
      v23[8] = v29;
      swift_weakInit();
      v31 = swift_allocObject();
      *&v32 = v25;
      *(&v32 + 1) = v26;
      *&v33 = v27;
      *(&v33 + 1) = v28;
      *(v31 + 16) = v32;
      *(v31 + 32) = v33;
      *(v31 + 48) = v30;
      *(v31 + 56) = v24;
      v34 = sub_24E74EC40();

      v35 = sub_24F92BEF8();
      v38[3] = v34;
      v38[4] = MEMORY[0x277D225C0];
      v38[0] = v35;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v38);
    }
  }
}

uint64_t sub_24ED91578()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A088();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_27F22F1B0);
  if (!v12)
  {
    v17 = 0;
    v18 = (v1 + qword_27F22F1B0);
LABEL_25:
    *v18 = 0;
    v18[1] = 0;
    sub_24E824448(v17);
    v26 = 1;
    return v26 & 1;
  }

  v48 = v9;
  v49 = v6;
  v13 = sub_24E5FCA4C(v12);
  v14 = v12(v13);
  sub_24E824448(v12);
  if (!v14)
  {
    v17 = *(v1 + qword_27F22F1B0);
    v18 = (v1 + qword_27F22F1B0);
    goto LABEL_25;
  }

  v45 = v4;
  v46 = v3;
  v15 = *(v1 + qword_27F22F1B8);
  if (v15)
  {
    sub_24E5FCA4C(*(v1 + qword_27F22F1B8));
    v16 = v15(v14);
    sub_24E824448(v15);
  }

  else
  {
    swift_unknownObjectRetain();
    v16 = v14;
  }

  v19 = *(v2 + 96);
  v20 = v19[1];
  v47 = v2;
  v21 = *(v2 + 80);
  v22 = *(v20(v21, v19) + 16);

  if (!v22)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v18 = (v1 + qword_27F22F1B0);
    v17 = *(v1 + qword_27F22F1B0);
    goto LABEL_25;
  }

  *(v1 + qword_27F22F198) = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v1 + qword_27F22F1A0) = v20(v21, v19);

  v23 = v19[2];
  v44 = v19 + 2;
  v43 = v23;
  v24 = v23(v21, v19);
  v25 = qword_27F39C780;
  swift_beginAccess();
  *(v1 + v25) = v24;

  v26 = v19[3](v21, v19);
  if (v26)
  {
LABEL_17:
    swift_unknownObjectRetain();
    v35 = sub_24ED90D4C();
    v51 = v16;
    v52 = v35;
    v53 = v26 & 1;
    sub_24F92AD88();
    sub_24ED96264(v51, v52, v53);
    if (v26)
    {
      goto LABEL_22;
    }

    v36 = v43(v21, v19);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B8);
    v55 = sub_24E602068(&qword_27F22F4C0, &qword_27F22F4B8);
    v51 = v36;
    LOBYTE(v50) = 0;
    sub_24ED91BFC(&v51, &v50);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    if (*(v1 + qword_27F22F1F0))
    {
      sub_24ED6F318();
    }

    if (!*(v1 + qword_27F39C7D8))
    {
LABEL_22:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v51 = v16;
      v37 = v49;
      sub_24F92AD48();
      v38 = v45;
      v39 = v46;
      (*(v45 + 104))(v37, *MEMORY[0x277D22290], v46);
      sub_24F92A0C8();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v38 + 8))(v37, v39);
    }

    v40 = (v1 + qword_27F22F1B0);
    v41 = *(v1 + qword_27F22F1B0);
    *v40 = 0;
    v40[1] = 0;
    sub_24E824448(v41);
    return v26 & 1;
  }

  v27 = *(v1 + qword_27F22F1F0);
  if (!v27)
  {
LABEL_14:
    if (*(v1 + qword_27F39C7D8))
    {
      *v11 = 1;
      v34 = v48;
      (*(v8 + 104))(v11, *MEMORY[0x277D222A0], v48);
      sub_24F92A0D8();
      (*(v8 + 8))(v11, v34);
    }

    v50 = v16;
    (*(*(v47 + 88) + 8))(&v51, v21);
    v55 = 0;
    v56 = 0;
    sub_24ED90F3C(&v51);
    goto LABEL_17;
  }

  v28 = *(v27 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
  result = swift_beginAccess();
  v30 = *(v28 + 48);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v28 + 48) = v32;
    v33 = v32 == 0;
    swift_beginAccess();
    *(v28 + 40) = v33;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_24ED91BFC(void *a1, char *a2)
{
  v3 = *a2;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v4, qword_27F225388);
  sub_24F928868();

  if (v7 == 2 || (v7 & 1) == 0)
  {
    MEMORY[0x28223BE20](v5);
    v6[16] = v3;
    sub_24ED91D24(a1, sub_24ED962B0, v6);
  }
}

void sub_24ED91D24(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v74 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v62 - v8;
  v73 = sub_24F91F4A8();
  v10 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v62 - v14;
  if ((*(v3 + qword_27F39C790) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if ((sub_24F92BBE8() & 1) == 0)
    {
      v63 = v12;
      v71 = a3;
      v15 = sub_24E60AABC(MEMORY[0x277D84F90]);
      v86 = v15;
      v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v17 = MEMORY[0x28223BE20](v16);
      (*(v19 + 16))(&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(v83);
      sub_24F92B3F8();
      v67 = qword_27F22F1D8;
      __swift_mutable_project_boxed_opaque_existential_1(v83, AssociatedTypeWitness);
      sub_24F92C4D8();
      if (*(&v81 + 1))
      {
        v69 = (v10 + 32);
        v70 = (v10 + 48);
        v68 = (v10 + 8);
        v65 = (v10 + 16);
        v20 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
        v64 = xmmword_24F93DE60;
        v21 = v72;
        v22 = v73;
        while (1)
        {
          v78[0] = v80;
          v78[1] = v81;
          v79 = v82;
          v23 = v20[240];
          swift_beginAccess();
          v24 = *(v4 + v23);
          if (!*(v24 + 16))
          {
            goto LABEL_6;
          }

          v25 = sub_24E76D934(v78);
          if ((v26 & 1) == 0)
          {
            break;
          }

          v27 = *(*(v24 + 56) + 8 * v25);

          sub_24E65864C(v78, v77);
          v74(v27);
          if ((*v70)(v9, 1, v22) != 1)
          {
            (*v69)(v21, v9, v22);
            v28 = qword_27F22F1D8;
            swift_beginAccess();
            v29 = *(v4 + v28);
            if (*(v29 + 16))
            {

              v30 = sub_24F92C7B8();
              v31 = -1 << *(v29 + 32);
              v32 = v30 & ~v31;
              if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
              {
                v33 = ~v31;
                while (1)
                {
                  sub_24E65864C(*(v29 + 48) + 40 * v32, v76);
                  v34 = MEMORY[0x253052150](v76, v77);
                  sub_24E6585F8(v76);
                  if (v34)
                  {
                    break;
                  }

                  v32 = (v32 + 1) & v33;
                  if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                  {
                    goto LABEL_17;
                  }
                }

                v21 = v72;
                v22 = v73;
                (*v68)(v72, v73);
                sub_24E6585F8(v77);
                sub_24E6585F8(v78);
                goto LABEL_24;
              }

LABEL_17:
            }

            v35 = (v27 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
            if (v86[2] && (sub_24E76D644(*v35, v35[1]), (v36 & 1) != 0))
            {
              v37 = *v35;
              v38 = v35[1];

              v39 = sub_24F4D6258(v76, v37, v38);
              if (*v40)
              {
                v41 = v40;
                v66 = v39;
                v42 = v63;
                v21 = v72;
                v43 = v73;
                (*v65)(v63, v72, v73);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v75[0] = *v41;
                *v41 = 0x8000000000000000;
                sub_24E81CBE8(v42, v77, isUniquelyReferenced_nonNull_native);
                *v41 = v75[0];

                (v66)(v76, 0);
              }

              else
              {
                (v39)(v76, 0);

                v21 = v72;
                v43 = v73;
              }
            }

            else
            {
              v45 = *v35;
              v46 = v35[1];
              v66 = v45;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B0);
              v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100) - 8);
              v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
              v49 = swift_allocObject();
              *(v49 + 16) = v64;
              v50 = v49 + v48;
              v51 = v47[14];
              sub_24E65864C(v77, v50);
              v21 = v72;
              v43 = v73;
              (*v65)((v50 + v51), v72, v73);

              v52 = sub_24E60AAD0(v49);
              swift_setDeallocating();
              sub_24E601704(v50, &qword_27F213100);
              swift_deallocClassInstance();
              v53 = v86;
              v54 = swift_isUniquelyReferenced_nonNull_native();
              v76[0] = v53;
              sub_24E81CD60(v52, v66, v46, v54);

              v86 = v76[0];
            }

            sub_24E65864C(v77, v75);
            swift_beginAccess();
            sub_24ED7D5A0(v76, v75);
            sub_24E6585F8(v76);
            swift_endAccess();
            sub_24ED93274();

            (*v68)(v21, v43);
            sub_24E6585F8(v77);
            sub_24E6585F8(v78);
            v22 = v43;
LABEL_24:
            v20 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
            goto LABEL_7;
          }

          sub_24E6585F8(v77);
          sub_24E6585F8(v78);
          sub_24E601704(v9, &qword_27F228530);
          v20 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
LABEL_7:
          __swift_mutable_project_boxed_opaque_existential_1(v83, AssociatedTypeWitness);
          sub_24F92C4D8();
          if (!*(&v81 + 1))
          {
            v15 = v86;
            goto LABEL_28;
          }
        }

LABEL_6:
        sub_24E6585F8(v78);
        goto LABEL_7;
      }

LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v83);
      if (*(v15 + 16))
      {
        v55 = 1 << *(v15 + 32);
        v56 = -1;
        if (v55 < 64)
        {
          v56 = ~(-1 << v55);
        }

        v57 = v56 & *(v15 + 64);
        v58 = (v55 + 63) >> 6;

        v59 = 0;
        if (v57)
        {
          goto LABEL_37;
        }

        while (1)
        {
          v60 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            break;
          }

          if (v60 >= v58)
          {

            goto LABEL_40;
          }

          v57 = *(v15 + 64 + 8 * v60);
          ++v59;
          if (v57)
          {
            v59 = v60;
            do
            {
LABEL_37:
              v57 &= v57 - 1;

              sub_24ED92630(v61);
            }

            while (v57);
            continue;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_40:
      }
    }
  }
}

void sub_24ED92630(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + qword_27F22F1C0);
  if (v9)
  {
    v10 = *(v1 + qword_27F22F1C0 + 8);
    if (*(v1 + qword_27F39C7D8))
    {
      *v8 = 0;
      (*(v5 + 104))(v8, *MEMORY[0x277D22298], v4, v6);
      sub_24E5FCA4C(v9);
      sub_24F92A0D8();
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      sub_24E5FCA4C(*(v1 + qword_27F22F1C0));
    }

    v26[2] = v9(a1);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v13 = swift_allocObject();
    v14 = v3[10];
    v12[2] = v14;
    v26[0] = v9;
    v26[1] = v10;
    v15 = v3[11];
    v12[3] = v15;
    v16 = v3[12];
    v12[4] = v16;
    v17 = a1;
    v18 = v3[13];
    v12[5] = v18;
    v19 = v3[14];
    v12[6] = v19;
    v12[7] = v11;
    v12[8] = v3;
    v20 = v13;
    swift_weakInit();
    v21 = swift_allocObject();
    *&v22 = v14;
    *(&v22 + 1) = v15;
    *&v23 = v16;
    *(&v23 + 1) = v18;
    *(v21 + 16) = v22;
    *(v21 + 32) = v23;
    *(v21 + 48) = v19;
    *(v21 + 56) = v20;
    *(v21 + 64) = v17;
    v24 = sub_24E74EC40();

    v25 = sub_24F92BEF8();
    v27[3] = v24;
    v27[4] = MEMORY[0x277D225C0];
    v27[0] = v25;
    sub_24F92A958();
    sub_24E824448(v26[0]);

    __swift_destroy_boxed_opaque_existential_1(v27);
  }
}

void sub_24ED92928()
{
  v1 = *v0;
  if ((*(v0 + qword_27F39C790) & 1) == 0)
  {
    v2 = v1[10];
    v3 = v1[11];
    v4 = v1[12];
    v5 = v1[13];
    v6 = v1[14];
    *&v17 = v2;
    *(&v17 + 1) = v3;
    v18 = v4;
    v19 = v5;
    v20 = v6;
    v7 = type metadata accessor for DiffablePageContentPresenter();
    WitnessTable = swift_getWitnessTable();
    if ((PaginatedPagePresenter.isPreparingNextPage.getter(v7, WitnessTable) & 1) == 0)
    {
      PaginatedPagePresenter.nextPage.getter(WitnessTable, &v17);
      if (v19)
      {
        sub_24E612B0C(&v17, v22);
        v9 = *(v0 + qword_27F22F1C8);
        if (v9)
        {
          sub_24E5FCA4C(*(v0 + qword_27F22F1C8));
          v9(v22);
          sub_24E824448(v9);
          sub_24E643A9C(v22, &v17);
          v21 = 1;
          sub_24ED90F3C(&v17);
          v10 = swift_allocObject();
          swift_weakInit();
          v11 = swift_allocObject();
          v11[2] = v2;
          v11[3] = v3;
          v11[4] = v4;
          v11[5] = v5;
          v11[6] = v6;
          v11[7] = v10;
          v12 = swift_allocObject();
          swift_weakInit();
          sub_24E643A9C(v22, v16);
          v13 = swift_allocObject();
          *(v13 + 16) = v2;
          *(v13 + 24) = v3;
          *(v13 + 32) = v4;
          *(v13 + 40) = v5;
          *(v13 + 48) = v6;
          *(v13 + 56) = v12;
          sub_24E612B0C(v16, (v13 + 64));
          v14 = sub_24E74EC40();

          v15 = sub_24F92BEF8();
          v19 = v14;
          v20 = MEMORY[0x277D225C0];
          *&v17 = v15;
          sub_24F92A958();

          __swift_destroy_boxed_opaque_existential_1(&v17);
          __swift_destroy_boxed_opaque_existential_1(v22);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v22);
        }
      }

      else
      {
        sub_24E601704(&v17, &qword_27F2129B0);
      }
    }
  }
}

uint64_t sub_24ED92BE8(unint64_t a1)
{
  v14[6] = *v1;
  v15 = v1;
  v20[0] = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_27:
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v14[5] = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253052270](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(a1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v9 = OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics;
    swift_beginAccess();
    v10 = *(v7 + v9);

    ++v5;
    if (v10)
    {
      MEMORY[0x253050F00](v11);
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v6 = v20[0];
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_17;
    }
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

LABEL_17:
  if (*(v15 + qword_27F22F198))
  {
    v16 = *(v15 + qword_27F22F198);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F488);
    if (swift_dynamicCast())
    {
      if (*(&v18 + 1))
      {
        v12 = sub_24E612C80(&v17, v20);
        MEMORY[0x28223BE20](v12);
        v14[2] = v20;
        v14[3] = v15;
        sub_24EB0B714(sub_24ED96164, v14, v6);

        return __swift_destroy_boxed_opaque_existential_1(v20);
      }
    }

    else
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {

    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  return sub_24E601704(&v17, &qword_27F22F480);
}

uint64_t DiffablePageContentPresenter.FetchError.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24ED92F5C()
{
  sub_24F92D068();
  DiffablePageContentPresenter.FetchError.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t DiffablePageContentPresenter.IncompleteShelfFetchResult.init(allShelves:fetchedShelves:shelfErrors:shelfBatch:error:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

void *DiffablePageContentPresenter.IncompleteShelfFetchResult.error.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_24ED93060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = qword_27F39C780;
  result = swift_beginAccess();
  v8 = *(a2 + v6);
  if (*(v8 + 16))
  {

    v9 = sub_24E76D934(a1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_24ED93120()
{
  v1 = qword_27F39C788;
  swift_beginAccess();
  sub_24E9B7D88(v0 + v1, v3);
  sub_24F92AD88();
  return sub_24E94E128(v3);
}

void sub_24ED93194(char a1)
{
  v2 = *(v1 + qword_27F22F1D0);
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + qword_27F22F1F0);
    if (v2)
    {
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v5 = *(v4 + 48);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          *(v4 + 48) = v7;
          v8 = v7 == 0;
          swift_beginAccess();
          *(v4 + 40) = v8;
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_24EA6BFA0();
          }
        }
      }
    }

    else if (v3)
    {
      sub_24ED6F318();
    }
  }
}

void sub_24ED93274()
{
  v1 = qword_27F22F1D8;
  swift_beginAccess();
  v2 = *(v0 + qword_27F22F1D0);
  *(v0 + qword_27F22F1D0) = *(*(v0 + v1) + 16) != 0;
  sub_24ED93194(v2);
}

uint64_t DiffablePageContentPresenter.onPaginationStateChanged.getter()
{
  sub_24ED95B08();
}

uint64_t sub_24ED93300(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a5;
  v13 = sub_24F92A078();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v37 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v35 = v14;
    v36 = v13;
    *(result + qword_27F39C790) = 0;
    v19 = *(result + qword_27F22F1B8);
    v34[0] = v16;
    v34[1] = a8;
    if (v19)
    {
      sub_24E5FCA4C(v19);
      v19(v16);
      sub_24E824448(v19);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v20 = swift_allocObject();
    v21 = *(a3 + 96);
    *(v20 + 16) = *(a3 + 80);
    *(v20 + 32) = v21;
    *(v20 + 48) = *(a3 + 112);
    v22 = swift_unknownObjectRetain();
    v23 = sub_24ED96130(v22);

    swift_unknownObjectRelease_n();
    *(v18 + qword_27F22F198) = v23;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    *(v18 + qword_27F22F1A0) = (*(a6 + 8))(a4, a6);

    v24 = *(a6 + 16);
    v25 = v24(a4, a6);
    v26 = qword_27F39C780;
    swift_beginAccess();
    *(v18 + v26) = v25;

    v39 = v23;
    v27 = v38;
    v28 = *(v38 + 8);
    swift_unknownObjectRetain();
    v28(&v40, a4, v27);
    v44 = 0;
    v45 = 0;
    sub_24ED90F3C(&v40);
    v29 = sub_24ED90D4C();
    v40 = v23;
    v41 = v29;
    v42 = 0;
    sub_24F92AD88();
    sub_24ED96264(v40, v41, v42);
    v30 = v24(a4, a6);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B8);
    v44 = sub_24E602068(&qword_27F22F4C0, &qword_27F22F4B8);
    v40 = v30;
    LOBYTE(v39) = 0;
    sub_24ED91BFC(&v40, &v39);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    swift_unknownObjectRelease();
    if (*(v18 + qword_27F22F1F0))
    {

      sub_24ED6F318();
    }

    v32 = v35;
    v31 = v36;
    if (*(v18 + qword_27F39C7D8))
    {
      v40 = v23;
      v33 = v37;
      sub_24F92AD48();
      (*(v32 + 104))(v33, *MEMORY[0x277D22290], v31);
      sub_24F92A0C8();
      swift_unknownObjectRelease();
      (*(v32 + 8))(v33, v31);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24ED9371C(void *a1)
{
  v2 = sub_24F92A078();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_27F39C790) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v14 = a1;
    v15 = 0;
    v16 = 0x80;
    v7 = a1;
    sub_24F92AD88();

    sub_24ED96264(v14, v15, v16);
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + qword_27F22F1F0);

    if (v9)
    {
      sub_24ED6F318();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + qword_27F39C7D8);

    if (v11)
    {
      *v5 = a1;
      (*(v3 + 104))(v5, *MEMORY[0x277D22280], v2);
      v12 = a1;
      sub_24F92A0C8();

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_24ED93968@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) == 0;
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy))
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6F4C656761506E6FLL;
  }

  if (v5)
  {
    v7 = 0xEA00000000006461;
  }

  else
  {
    v7 = 0x800000024FA42F40;
  }

  if (a2)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0x6F4C656761506E6FLL;
  }

  if (a2)
  {
    v9 = 0x800000024FA42F40;
  }

  else
  {
    v9 = 0xEA00000000006461;
  }

  if (v6 == v8 && v7 == v9)
  {

    return sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, a3, &qword_27F228530);
  }

  v11 = sub_24F92CE08();

  if (v11)
  {
    return sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, a3, &qword_27F228530);
  }

  v12 = sub_24F91F4A8();
  v13 = *(*(v12 - 8) + 56);

  return v13(a3, 1, 1, v12);
}

uint64_t sub_24ED93AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  swift_beginAccess();
  return sub_24E60169C(a1 + v5, a3, &qword_27F228530);
}

uint64_t sub_24ED93B40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a6;
  v117 = a4;
  v113 = a3;
  v112 = sub_24F92AAE8();
  v7 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92A078();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!*(result + qword_27F22F198))
  {
  }

  v15 = *(result + qword_27F39C7D8);
  v121 = result;
  if (v15)
  {
    *v12 = 0;
    (*(v10 + 104))(v12, *MEMORY[0x277D22288], v9);
    swift_unknownObjectRetain();
    sub_24F92A0C8();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v16 = MEMORY[0x277D84F90];
  v134 = sub_24ED95894(MEMORY[0x277D84F90]);
  v133 = sub_24E60ACC8(v16);
  v105 = v13;
  v17 = *(v13 + 16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v107 = qword_27F22F1D8;
  v22 = (v19 + 63) >> 6;
  v114 = v120 + 16;
  v109 = (v7 + 8);

  v23 = 0;
  v24 = 0;
  v108 = xmmword_24F93A400;
  v110 = v17;
  while (v21)
  {
    v116 = v24;
LABEL_17:
    v29 = __clz(__rbit64(v21)) | (v23 << 6);
    sub_24E65864C(*(v17 + 48) + 40 * v29, &v130);
    v30 = *(*(v17 + 56) + 8 * v29);
    v115 = v130;
    v31 = v132;
    v119 = v131;
    v32 = *(&v131 + 1);

    if (!v32)
    {
      goto LABEL_31;
    }

    v21 &= v21 - 1;
    v130 = v115;
    v131 = v119;
    v132 = v31;
    if (v30[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched] == 1)
    {
      if (*((*(v120 + 16))(v117) + 16) && (sub_24E76D934(&v130), (v33 & 1) != 0))
      {

        v34 = v116;
        v35 = Shelf.mergingWith(_:)(v30);
        if (!v34)
        {
          v42 = v35;
          v116 = 0;
          sub_24E65864C(&v130, &v124);
          *&v122[0] = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4A8);
          sub_24F92AED8();

          goto LABEL_28;
        }

        sub_24E65864C(&v130, &v124);
        *&v122[0] = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F490);
        sub_24F92AED8();

        sub_24E6585F8(&v130);
        v24 = 0;
      }

      else
      {

        v25 = v111;
        sub_24ED90B7C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = v108;
        sub_24F9283A8();
        *(&v125 + 1) = MEMORY[0x277D84030];
        *&v124 = swift_allocObject();
        sub_24E65864C(&v130, v124 + 16);
        sub_24F928438();
        sub_24E601704(&v124, &qword_27F2129B0);
        v26 = v112;
        sub_24F92A5A8();

        v27 = v25;
        v17 = v110;
        (*v109)(v27, v26);
        sub_24E6585F8(&v130);
        v24 = v116;
      }
    }

    else
    {
      v36 = qword_27F39C780;
      v37 = v121;
      swift_beginAccess();
      v38 = *(v37 + v36);
      if (*(v38 + 16))
      {

        v39 = sub_24E76D934(&v130);
        if (v40)
        {
          v41 = *(*(v38 + 56) + 8 * v39);

          sub_24E65864C(v41 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v122);

          v124 = v122[0];
          v125 = v122[1];
          v126 = v123;
          sub_24E65864C(&v130, v122);
          v129 = Shelf.withId(_:)(&v124);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4A8);
          sub_24F92AED8();
          sub_24E6585F8(&v124);
          goto LABEL_28;
        }
      }

      sub_24E65864C(&v130, &v124);
      *&v122[0] = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4A8);
      sub_24F92AED8();
LABEL_28:
      swift_beginAccess();
      sub_24F7A58DC(&v130, &v124);
      sub_24E601704(&v124, &qword_27F235830);
      swift_endAccess();
      sub_24ED93274();

      sub_24E6585F8(&v130);
      v24 = v116;
    }
  }

  while (1)
  {
    v28 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v28 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v28);
    ++v23;
    if (v21)
    {
      v116 = v24;
      v23 = v28;
      goto LABEL_17;
    }
  }

  v116 = v24;
LABEL_31:

  v43 = *(v105 + 24);
  v46 = *(v43 + 64);
  v45 = v43 + 64;
  v44 = v46;
  v47 = 1 << *(*(v105 + 24) + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v44;
  v50 = (v47 + 63) >> 6;
  v110 = *(v105 + 24);

  v51 = 0;
  v106 = v50;
  while (v49)
  {
LABEL_41:
    v56 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v57 = v56 | (v51 << 6);
    v58 = (*(v110 + 48) + 16 * v57);
    v60 = *v58;
    v59 = v58[1];
    v61 = *(*(v110 + 56) + 8 * v57);
    v62 = v120;
    v63 = *(v120 + 16);

    *&v119 = v61;
    v64 = v61;
    v65 = v63(v117, v62);
    *&v115 = v60;
    *&v124 = v60;
    *(&v124 + 1) = v59;

    sub_24F92C7F8();
    if (!*(v65 + 16))
    {
      sub_24E6585F8(&v130);

LABEL_35:
      v52 = v111;
      sub_24ED90B7C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = v108;
      sub_24F9283A8();
      *(&v131 + 1) = MEMORY[0x277D837D0];
      *&v130 = v115;
      *(&v130 + 1) = v59;
      sub_24F928458();
      sub_24E601704(&v130, &qword_27F2129B0);
      v53 = v112;
      sub_24F92A5A8();

      v54 = v53;
      v50 = v106;
      (*v109)(v52, v54);
      continue;
    }

    sub_24E76D934(&v130);
    v67 = v66;
    sub_24E6585F8(&v130);

    if ((v67 & 1) == 0)
    {
      goto LABEL_35;
    }

    v68 = v115;
    *&v124 = v115;
    *(&v124 + 1) = v59;

    sub_24F92C7F8();
    *&v124 = v119;
    v69 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F490);
    sub_24F92AED8();
    swift_beginAccess();
    *&v130 = v68;
    *(&v130 + 1) = v59;

    sub_24F92C7F8();
    sub_24F24655C(&v124, &v130);
    sub_24E6585F8(&v124);
    if (*(&v131 + 1))
    {
      v124 = v130;
      v125 = v131;
      v126 = v132;
      sub_24F92C7D8();
      sub_24E6585F8(&v124);
      swift_dynamicCast();
    }

    else
    {
      v127 = 0;
      v128 = 0;
    }

    swift_endAccess();

    sub_24ED93274();
  }

  while (1)
  {
    v55 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (v55 >= v50)
    {
      break;
    }

    v49 = *(v45 + 8 * v55);
    ++v51;
    if (v49)
    {
      v51 = v55;
      goto LABEL_41;
    }
  }

  v70 = v134;
  v71 = v134 + 64;
  v72 = 1 << *(v134 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v134 + 64);
  v75 = qword_27F39C780;
  v76 = (v72 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v77 = 0;
  while (v74)
  {
LABEL_57:
    v79 = __clz(__rbit64(v74)) | (v77 << 6);
    sub_24E65864C(*(v70 + 48) + 40 * v79, &v130);
    v80 = *(*(v70 + 56) + 8 * v79);
    v115 = v130;
    v81 = v132;
    v119 = v131;
    v82 = *(&v131 + 1);

    if (!v82)
    {
LABEL_67:

      v99 = v121;
      if (*(v121 + qword_27F22F198))
      {
        v100 = v120;
        v101 = *(v120 + 32);
        swift_unknownObjectRetain();
        v101(sub_24ED96224, v99, v117, v100);
        swift_unknownObjectRelease();
      }

      *&v130 = sub_24ED90D4C();
      *(&v130 + 1) = v70;
      *&v131 = v133;
      *(&v131 + 1) = v105;
      v132 = 0;

      sub_24F92AD88();
      v102 = v132;

      *&v130 = v70;
      type metadata accessor for Shelf();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F498);
      sub_24E602068(&qword_27F22F4A0, &qword_27F22F498);
      v103 = sub_24F92B738();
      sub_24ED92BE8(v103);

      return swift_unknownObjectRelease();
    }

    v130 = v115;
    v131 = v119;
    v132 = v81;
    v83 = v121;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v122[0] = *(v83 + v75);
    v85 = *&v122[0];
    *(v83 + v75) = 0x8000000000000000;
    v86 = sub_24E76D934(&v130);
    v88 = *(v85 + 16);
    v89 = (v87 & 1) == 0;
    v90 = __OFADD__(v88, v89);
    v91 = v88 + v89;
    if (v90)
    {
      goto LABEL_74;
    }

    v92 = v87;
    if (*(v85 + 24) >= v91)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v98 = v86;
        sub_24E8ADF84();
        v86 = v98;
      }
    }

    else
    {
      sub_24E899884(v91, isUniquelyReferenced_nonNull_native);
      v86 = sub_24E76D934(&v130);
      if ((v92 & 1) != (v93 & 1))
      {
        goto LABEL_76;
      }
    }

    v94 = *&v122[0];
    if (v92)
    {
      *(*(*&v122[0] + 56) + 8 * v86) = v80;

      sub_24E6585F8(&v130);
    }

    else
    {
      *(*&v122[0] + 8 * (v86 >> 6) + 64) |= 1 << v86;
      v95 = v86;
      sub_24E65864C(&v130, v94[6] + 40 * v86);
      *(v94[7] + 8 * v95) = v80;
      sub_24E6585F8(&v130);
      v96 = v94[2];
      v90 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v90)
      {
        goto LABEL_75;
      }

      v94[2] = v97;
    }

    v74 &= v74 - 1;
    *(v121 + v75) = v94;
    swift_endAccess();
  }

  while (1)
  {
    v78 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v78 >= v76)
    {
      goto LABEL_67;
    }

    v74 = *(v71 + 8 * v78);
    ++v77;
    if (v74)
    {
      v77 = v78;
      goto LABEL_57;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24ED94BDC(uint64_t a1, uint64_t a2)
{
  v4 = qword_27F39C780;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;

  v7 = sub_24E76D934(a1 + v6);
  if (v8)
  {
    v9 = *(*(v5 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_24ED94C84(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + qword_27F39C7D8))
    {
      *v8 = a1;
      v8[8] = 0;
      (*(v6 + 104))(v8, *MEMORY[0x277D22278], v5);
      v10 = a1;
      sub_24F92A0C8();
      (*(v6 + 8))(v8, v5);
    }

    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a3 + 64);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; i = v16)
    {
      v16 = i;
LABEL_11:
      sub_24E65864C(*(a3 + 48) + 40 * (__clz(__rbit64(v13)) | (v16 << 6)), v24);
      sub_24ED94F40(v24);
      v13 &= v13 - 1;
      sub_24E6585F8(v24);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v17 = sub_24ED90D4C();
        v18 = MEMORY[0x277D84F90];
        v19 = sub_24E60986C(MEMORY[0x277D84F90]);
        v20 = sub_24E60ACC8(v18);
        v24[0] = v17;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = 0;
        v25 = a1;
        v21 = a1;
        sub_24F92AD88();
        v22 = v25;
      }

      v13 = *(a3 + 64 + 8 * v16);
      ++i;
      if (v13)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    result = sub_24E6585F8(v24);
    __break(1u);
  }

  return result;
}

void sub_24ED94F40(uint64_t a1)
{
  swift_beginAccess();
  sub_24F7A58DC(a1, v2);
  sub_24E601704(v2, &qword_27F235830);
  swift_endAccess();
  sub_24ED93274();
}

uint64_t sub_24ED94FD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + qword_27F22F1B8);
    if (v11)
    {
      sub_24E5FCA4C(*(result + qword_27F22F1B8));
      v12 = v11(v8);
      sub_24E824448(v11);
    }

    else
    {
      swift_unknownObjectRetain();
      v12 = v8;
    }

    if (*(v10 + qword_27F22F198))
    {
      v25[4] = *(v10 + qword_27F22F198);
      v25[0] = v12;
      (*(a4 + 16))(&v19, v25, a3, a4);
      v13 = v19;
      *(v10 + qword_27F22F198) = v19;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v10 + qword_27F22F1A0) = (*(a5 + 8))(a3, a5);

      v14 = *(a5 + 16);
      v15 = v14(a3, a5);
      v16 = qword_27F39C780;
      swift_beginAccess();
      *(v10 + v16) = v15;

      swift_unknownObjectRetain();
      v17 = sub_24ED90D4C();
      v19 = v13;
      v20 = v17;
      v21 = 0;
      sub_24F92AD88();
      sub_24ED96264(v19, v20, v21);
      v18 = v14(a3, a5);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B8);
      v23 = sub_24E602068(&qword_27F22F4C0, &qword_27F22F4B8);
      v19 = v18;
      LOBYTE(v25[0]) = 0;
      sub_24ED91BFC(&v19, v25);
      __swift_destroy_boxed_opaque_existential_1(&v19);
      v25[0] = v13;
      (*(a4 + 8))(&v19, a3, a4);
      v23 = 0;
      v24 = 0;
      sub_24ED90F3C(&v19);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24ED952A8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v8[0] = a1;
    v8[1] = 0;
    v9 = 0x80;
    v5 = a1;
    sub_24F92AD88();

    sub_24ED96264(a1, 0, 128);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E643A9C(a3, v8);
    v10 = a1;
    v11 = 0;
    v7 = a1;
    sub_24ED90F3C(v8);
  }

  return result;
}

uint64_t sub_24ED953A8(uint64_t a1, void *a2, uint64_t a3)
{
  v16[1] = a3;
  v4 = sub_24F928818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v12 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v11 + 8))(v12, v11);
  sub_24F0F22FC(v7, v10);
  (*(v5 + 8))(v7, v4);
  v13 = a2[3];
  v14 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 16))(v10, v13, v14);
  return sub_24F92AD88();
}

uint64_t sub_24ED95544()
{
  sub_24ED95B08();
}

uint64_t sub_24ED955B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21 = swift_allocObject();
  a14(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  return v21;
}

uint64_t DiffableDynamicPageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v24 = a7;
  v25 = a8;
  v23 = a6;
  v21 = a10;
  v22 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v21 - v18;
  sub_24E60169C(a2, &v21 - v18, &qword_27F228530);
  DiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pageProvider:pageModifier:shelfProvider:moreOfPageProvider:pendingPageRender:pageRenderMetrics:)(a1, v19, a3, a4, a5, v23, v24, v25, v22, *(&v22 + 1), v21, *(&v21 + 1), a11);
  sub_24E601704(a2, &qword_27F228530);
  return v11;
}

uint64_t _s12GameStoreKit28DiffablePageContentPresenterCfD_0()
{
  DiffablePageContentPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED95828()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED95860()
{
  CGSizeMake(v0[7], v0[2], v0[3]);

  return swift_unknownObjectRetain();
}

unint64_t sub_24ED95894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C8);
    v3 = sub_24F92CB58();
    v4 = a1 + 32;

    while (1)
    {
      sub_24E60169C(v4, v13, &qword_27F2135D0);
      result = sub_24E76D934(v13);
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
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_24ED959BC()
{
  v1 = qword_27F39C798;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED95A18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ED95A60()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_24ED95B34(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24ED95B70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_24ED95C18(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

id sub_24ED95C2C@<X0>(void *a1@<X8>)
{
  v2 = sub_24ED959BC();
  *a1 = v2;

  return v2;
}

void sub_24ED95C68(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24ED9100C(v1);
}

void sub_24ED95CA4()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    sub_24ED95EF0();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_24ED95EF0()
{
  if (!qword_27F22F278[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2226D8);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, qword_27F22F278);
    }
  }
}

uint64_t sub_24ED95F6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24ED95FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24ED96004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_24ED9607C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24ED96130(uint64_t a1)
{
  sub_24ED95AB4(a1, v1[2], v1[3], v1[4]);

  return swift_unknownObjectRetain();
}

uint64_t sub_24ED96180()
{

  return swift_deallocObject();
}

uint64_t sub_24ED961D0()
{

  return swift_deallocObject();
}

uint64_t sub_24ED9622C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

void sub_24ED96264(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED962EC()
{

  return swift_deallocObject();
}

uint64_t AppPromotion.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v51 = sub_24F9285B8();
  v43 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v41 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = v38 - v7;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v39 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v38 - v19;
  v45 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  if (v22)
  {
    v46 = v21;
    v47 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v24 = v9;
    v26 = v25;
    (*(v24 + 8))(v11, v8);
    v46 = v23;
    v47 = v26;
  }

  sub_24F92C7F8();
  v27 = *(v13 + 8);
  v27(v20, v12);
  v28 = v49;
  *(v3 + 24) = v48;
  *(v3 + 40) = v28;
  *(v3 + 56) = v50;
  v29 = v45;
  sub_24F928398();
  sub_24EA21600();
  v30 = v42;
  sub_24F928218();
  if (v30)
  {
    (*(v43 + 8))(v44, v51);
    v27(v29, v12);
    v27(v17, v12);
    sub_24E6585F8(v3 + 24);
    type metadata accessor for AppPromotion();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38[1] = v13 + 8;
    v27(v17, v12);
    *(v3 + 16) = v48;
    sub_24F929608();
    v38[0] = v12;
    v42 = 0;
    v31 = v39;
    sub_24F928398();
    v32 = v43;
    v33 = v44;
    (*(v43 + 16))(v41, v44, v51);
    v34 = v40;
    sub_24F929548();
    sub_24E65E0D4(v34, v3 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics);
    type metadata accessor for Action();
    sub_24F928398();
    v35 = static Action.tryToMakeInstance(byDeserializing:using:)(v31, v33);
    (*(v32 + 8))(v33, v51);
    v36 = v38[0];
    v27(v29, v38[0]);
    v27(v31, v36);
    *(v3 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v35;
  }

  return v3;
}

uint64_t type metadata accessor for AppPromotion()
{
  result = qword_27F22F4D8;
  if (!qword_27F22F4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppPromotion.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t sub_24ED96930@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppPromotion();
  *a1 = v1;
}

GameStoreKit::AppPromotionType_optional __swiftcall AppPromotionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppPromotionType.rawValue.getter()
{
  v1 = 0x65676E69746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x657449726566666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E657645707061;
  }
}

uint64_t sub_24ED96A3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65676E69746E6F63;
  v4 = 0xEF726566664F746ELL;
  if (v2 != 1)
  {
    v3 = 0x657449726566666FLL;
    v4 = 0xE90000000000006DLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746E657645707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x65676E69746E6F63;
  v8 = 0xEF726566664F746ELL;
  if (*a2 != 1)
  {
    v7 = 0x657449726566666FLL;
    v8 = 0xE90000000000006DLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746E657645707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24ED96B60()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24ED96C14()
{
  sub_24F92B218();
}

uint64_t sub_24ED96CB4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24ED96D70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEF726566664F746ELL;
  v5 = 0x65676E69746E6F63;
  if (v2 != 1)
  {
    v5 = 0x657449726566666FLL;
    v4 = 0xE90000000000006DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E657645707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AppPromotion.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AppPromotion.init(deserializing:using:)(a1, a2);
  return v4;
}

void (*static AppPromotion.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2))(char *, uint64_t)
{
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_24F928398();
  sub_24EA21600();
  sub_24F928218();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
  v11[0] = v11[1];
  return sub_24ED97520(v11, a1, a2);
}

uint64_t static AppPromotion.tryToMakeInstances(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_24F92AC28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E60169C(a1, v6, &qword_27F2213B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F2213B0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_24F92ABF8();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  MEMORY[0x28223BE20](v11);
  *&v14[-16] = a2;
  type metadata accessor for AppPromotion();
  v13 = sub_24F92ABB8();
  (*(v8 + 8))(v10, v7);
  return v13;
}

void (*sub_24ED971C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_24F928398();
  sub_24EA21600();
  sub_24F928218();
  if (v3)
  {

    (*(v8 + 8))(v10, v7);
    result = 0;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v13[0] = v13[1];
    result = sub_24ED97520(v13, a1, a2);
  }

  *a3 = result;
  return result;
}

uint64_t AppPromotion.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24ED9744C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24ED9749C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AppPromotion();
  *a1 = v3;
}

void (*sub_24ED97520(unsigned __int8 *a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = sub_24F928388();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  v22 = MEMORY[0x28223BE20](v20);
  v23 = &v29 - v21;
  v24 = *a1;
  v26 = *(v25 + 16);
  v27 = (v5 + 16);
  if (v24)
  {
    if (v24 == 1)
    {
      v26(v19, v29, v22);
      (*v27)(v10, v30, v4);
      type metadata accessor for ContingentOffer();
      swift_allocObject();
      return ContingentOffer.init(deserializing:using:)(v19, v10);
    }

    else
    {
      v26(v16, v29, v22);
      (*v27)(v7, v30, v4);
      type metadata accessor for OfferItem();
      swift_allocObject();
      return OfferItem.init(deserializing:using:)(v16, v7);
    }
  }

  else
  {
    v26(&v29 - v21, v29, v22);
    (*v27)(v13, v30, v4);
    type metadata accessor for AppEvent();
    swift_allocObject();
    return AppEvent.init(deserializing:using:)(v23, v13);
  }
}

unint64_t sub_24ED97838()
{
  result = qword_27F22F4C8;
  if (!qword_27F22F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F4C8);
  }

  return result;
}

unint64_t sub_24ED97890()
{
  result = qword_27F22F4D0;
  if (!qword_27F22F4D0)
  {
    type metadata accessor for AppPromotion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F4D0);
  }

  return result;
}

void sub_24ED97900()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *SearchResultsMessage.__allocating_init(primaryText:secondaryText:messageClickAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *SearchResultsMessage.init(primaryText:secondaryText:messageClickAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t SearchResultsMessage.deinit()
{

  return v0;
}

uint64_t SearchResultsMessage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24ED97B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_24ED97B3C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_24ED97B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_24F928388();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  sub_24F928398();
  v35 = v5;
  v15 = a2;
  v16 = v4;
  v17 = v4;
  v18 = *(v5 + 16);
  v18(v9, a2, v17);
  type metadata accessor for LinkableText();
  swift_allocObject();
  v19 = v32;
  v20 = LinkableText.init(deserializing:using:)(v14, v9);
  if (v19)
  {
    (*(v35 + 8))(a2, v16);
    return (*(v33 + 8))(a1, v34);
  }

  else
  {
    v32 = v20;
    v27 = a1;
    sub_24F928398();
    v22 = v31;
    v18(v31, a2, v16);
    sub_24ED97FA4(&qword_27F21C360, type metadata accessor for LinkableText);
    sub_24F929548();
    v28 = v36;
    type metadata accessor for SearchAction();
    v29 = 0;
    v23 = v27;
    sub_24F928398();
    v18(v22, v15, v16);
    sub_24ED97FA4(&qword_27F226C48, type metadata accessor for SearchAction);
    sub_24F929548();
    (*(v35 + 8))(v15, v16);
    (*(v33 + 8))(v23, v34);
    v24 = v36;
    type metadata accessor for SearchResultsMessage();
    result = swift_allocObject();
    v25 = v28;
    result[2] = v32;
    result[3] = v25;
    result[4] = v24;
  }

  return result;
}

uint64_t sub_24ED97FA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SearchResultsContent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchResultsContent.init(deserializing:using:)(a1, a2);
  return v4;
}

__n128 SearchResultsContent.__allocating_init(results:nextPage:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  return result;
}

uint64_t SearchResultsContent.init(results:nextPage:)(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  v3 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  return v2;
}

void *SearchResultsContent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v42 = a2;
  v46 = v4;
  v39 = *v4;
  v40 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = sub_24F92AC28();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v41 = *(v13 + 8);
  v41(v17, v12);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_24E601704(v11, &qword_27F2213B0);
    v22 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v23 = 0x73746C75736572;
    v24 = v39;
    v23[1] = 0xE700000000000000;
    v23[2] = v24;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D22530], v22);
    swift_willThrow();
    v25 = sub_24F9285B8();
    (*(*(v25 - 8) + 8))(v42, v25);
    v41(v43, v12);
    v26 = v46;
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v19 + 32))(v21, v11, v18);
    (*(v19 + 16))(v8, v21, v18);
    (*(v19 + 56))(v8, 0, 1, v18);
    v39 = v12;
    v27 = v42;
    Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0 = _s12GameStoreKit12SearchResultC18tryToMakeInstances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0(v8, v42);
    sub_24E601704(v8, &qword_27F2213B0);
    v29 = MEMORY[0x277D84F90];
    if (Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0)
    {
      v29 = Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0;
    }

    v26 = v46;
    v46[2] = v29;
    v30 = v38;
    v31 = v43;
    sub_24F928398();
    sub_24F928368();
    v32 = sub_24F9285B8();
    (*(*(v32 - 8) + 8))(v27, v32);
    v33 = v31;
    v34 = v39;
    v35 = v41;
    v41(v33, v39);
    v35(v30, v34);
    (*(v19 + 8))(v21, v18);
    v36 = v45;
    *(v26 + 3) = v44;
    *(v26 + 5) = v36;
  }

  return v26;
}

uint64_t SearchResultsContent.deinit()
{

  sub_24E601704(v0 + 24, &qword_27F2129B0);
  return v0;
}

uint64_t SearchResultsContent.__deallocating_deinit()
{

  sub_24E601704(v0 + 24, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

void *sub_24ED98638@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchResultsContent.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t SearchLink.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchLink.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t SearchLink.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v56 = a1;
  v3 = sub_24F91F6B8();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v63 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v57 = sub_24F928388();
  v50 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  sub_24F929608();
  sub_24F928398();
  v53 = v6;
  v18 = *(v6 + 16);
  v18(v10, a2, v5);
  v52 = v10;
  sub_24F929548();
  sub_24E65E0D4(v17, v55 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_impressionMetrics);
  v54 = a2;
  v19 = v5;
  v51 = v18;
  v49 = v6 + 16;
  v18(v63, a2, v5);
  v20 = v48;
  sub_24F928398();
  v21 = sub_24F928348();
  if (v22)
  {
    v58 = v21;
    v59 = v22;
  }

  else
  {
    v23 = v45;
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v46 + 8))(v23, v47);
    v58 = v24;
    v59 = v26;
  }

  sub_24F92C7F8();
  v27 = *(v50 + 1);
  v27(v20, v57);
  v50 = v27;
  v28 = v61;
  v30 = v55;
  v29 = v56;
  *(v55 + 16) = v60;
  *(v30 + 32) = v28;
  *(v30 + 48) = v62;
  sub_24F928398();
  v31 = sub_24F928348();
  v33 = v32;
  v34 = v57;
  v27(v14, v57);
  *(v30 + 56) = v31;
  *(v30 + 64) = v33;
  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v27(v14, v34);
  *(v30 + 72) = v35;
  *(v30 + 80) = v37;
  type metadata accessor for Artwork();
  sub_24F928398();
  v38 = v63;
  v51(v52, v63, v19);
  sub_24ED9962C(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  *(v30 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_artwork) = v60;
  type metadata accessor for Action();
  sub_24F928398();
  v39 = static Action.tryToMakeInstance(byDeserializing:using:)(v14, v38);
  v40 = *(v53 + 8);
  v40(v54, v19);
  v41 = v29;
  v42 = v57;
  v43 = v50;
  v50(v41, v57);
  v43(v14, v42);
  v40(v63, v19);
  *(v30 + 88) = v39;
  return v30;
}

uint64_t SearchLink.__allocating_init(id:imageName:artwork:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a2;
  v33 = a5;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_24E60169C(a1, &v36, &qword_27F235830);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 16) = v36;
    *(v18 + 32) = v19;
    *(v18 + 48) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v30 = a3;
    v31 = a6;
    v21 = a7;
    v22 = a8;
    v23 = v20;
    v24 = a4;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v34 = v23;
    v35 = v26;
    a8 = v22;
    a7 = v21;
    a4 = v24;
    a3 = v30;
    a6 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v27 = v32;
  *(v18 + 56) = v33;
  *(v18 + 64) = a6;
  *(v18 + 72) = v27;
  *(v18 + 80) = a3;
  *(v18 + 88) = a7;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_artwork) = a4;
  sub_24E65E0D4(a8, v18 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_impressionMetrics);
  return v18;
}

uint64_t SearchLink.init(id:imageName:artwork:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v34 = a2;
  v35 = a5;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v38, &qword_27F235830);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v32 = a3;
    v33 = a6;
    v21 = a7;
    v22 = a8;
    v23 = v20;
    v24 = a4;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v36 = v23;
    v37 = v26;
    a8 = v22;
    a7 = v21;
    a4 = v24;
    a3 = v32;
    a6 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v27 = v42;
  *(v9 + 16) = v41;
  *(v9 + 32) = v27;
  v28 = v34;
  v29 = v35;
  *(v9 + 48) = v43;
  *(v9 + 56) = v29;
  *(v9 + 64) = a6;
  *(v9 + 72) = v28;
  *(v9 + 80) = a3;
  *(v9 + 88) = a7;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_artwork) = a4;
  sub_24E65E0D4(a8, v9 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_impressionMetrics);
  return v9;
}

uint64_t SearchLink.title.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SearchLink.imageName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

double SearchLink.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t SearchLink.deinit()
{
  sub_24E6585F8(v0 + 16);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t SearchLink.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10SearchLink_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24ED992CC()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t sub_24ED99300()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t type metadata accessor for SearchLink()
{
  result = qword_27F22F4F0;
  if (!qword_27F22F4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED993DC@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 88);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24ED9962C(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_24ED9947C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchLink.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24ED99528()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24ED9962C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_24ED99674()
{
  result = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  qword_27F22F500 = result;
  return result;
}

uint64_t static GlobalEventCanary.value.getter()
{
  if (qword_27F2106E0 != -1)
  {
    swift_once();
  }

  v0 = qword_27F22F500;
  [qword_27F22F500 lock];
  v1 = qword_27F22F508;

  [v0 unlock];
  return v1;
}

id sub_24ED99740@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F2106E0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F22F500;
  [qword_27F22F500 lock];
  v4 = qword_27F22F508;
  v3 = qword_27F22F510;

  result = [v2 unlock];
  *a1 = v4;
  a1[1] = v3;
  return result;
}

id sub_24ED997D8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_27F2106E0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_27F22F500;
  [qword_27F22F500 lock];
  qword_27F22F508 = v2;
  qword_27F22F510 = v1;

  return [v4 unlock];
}

id static GlobalEventCanary.value.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27F2106E0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F22F500;
  [qword_27F22F500 lock];
  qword_27F22F508 = a1;
  qword_27F22F510 = a2;

  return [v4 unlock];
}

id (*static GlobalEventCanary.value.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (qword_27F2106E0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F22F500;
  a1[2] = qword_27F22F500;
  [v2 lock];
  v4 = qword_27F22F508;
  v3 = qword_27F22F510;

  [v2 unlock];
  *a1 = v4;
  a1[1] = v3;
  return sub_24ED999DC;
}

id sub_24ED999DC(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {

    [v4 lock];
    qword_27F22F508 = v3;
    qword_27F22F510 = v2;

    [v4 unlock];
  }

  else
  {
    [*(a1 + 16) lock];
    qword_27F22F508 = v3;
    qword_27F22F510 = v2;

    return [v4 unlock];
  }
}

uint64_t InformationContainer.__allocating_init(id:annotationGroups:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_24E65E064(a1, &v15);
  if (*(&v16 + 1))
  {
    sub_24E9BBAA8(a1);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_24F91F6A8();
    v9 = sub_24F91F668();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v15);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t InformationContainer.init(id:annotationGroups:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v16);
  if (*(&v17 + 1))
  {
    sub_24E9BBAA8(a1);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_24F91F6A8();
    v10 = sub_24F91F668();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v16);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t InformationContainer.deinit()
{

  sub_24E6585F8(v0 + 24);
  return v0;
}

uint64_t InformationContainer.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24ED99E54@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24ED99E90(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24ED99E90(char *a1, uint64_t a2)
{
  v27 = a2;
  v26 = sub_24F9285B8();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24F928388();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v28 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  if (v14)
  {
    v29 = v13;
    v30 = v14;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v29 = v15;
    v30 = v17;
  }

  sub_24F92C7F8();
  v18 = *(v9 + 8);
  v18(v12, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F520);
  v19 = v28;
  sub_24F928398();
  v20 = v26;
  v21 = v27;
  (*(v3 + 16))(v25, v27, v26);
  sub_24ED9A2BC();
  sub_24F929548();
  if (v29)
  {
    v22 = v29;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  type metadata accessor for InformationContainer();
  v23 = swift_allocObject();
  InformationContainer.init(id:annotationGroups:)(v31, v22);
  (*(v3 + 8))(v21, v20);
  v18(v19, v32);
  return v23;
}

unint64_t sub_24ED9A1F0()
{
  result = qword_27F22F518;
  if (!qword_27F22F518)
  {
    type metadata accessor for InformationContainer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F518);
  }

  return result;
}

unint64_t sub_24ED9A2BC()
{
  result = qword_27F22F528;
  if (!qword_27F22F528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F520);
    sub_24ED9A340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F528);
  }

  return result;
}

unint64_t sub_24ED9A340()
{
  result = qword_27F22F530;
  if (!qword_27F22F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F530);
  }

  return result;
}

double OverlayUnavailableNowPlayingFeatures.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t type metadata accessor for OverlayUnavailableNowPlayingFeatures()
{
  result = qword_27F22F558;
  if (!qword_27F22F558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double OverlayUnavailableNowPlayingFeatures.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OverlayUnavailableNowPlayingFeatures();
  sub_24E60169C(v1 + *(v3 + 28), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t OverlayUnavailableNowPlayingFeatures.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for OverlayUnavailableNowPlayingFeatures();
  sub_24E60169C(v1 + *(v6 + 32), v5, &qword_27F215440);
  return sub_24E6009C8(v5, a1, &qword_27F215460);
}

uint64_t sub_24ED9A6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for OverlayUnavailableNowPlayingFeatures();
  sub_24E60169C(a1 + *(v7 + 32), v6, &qword_27F215440);
  return sub_24E6009C8(v6, a2, &qword_27F215460);
}

unint64_t sub_24ED9A848()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x6575676573;
  if (v1 != 3)
  {
    v4 = 0x4D747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6976694468746977;
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

uint64_t sub_24ED9A8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ED9CAA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ED9A910(uint64_t a1)
{
  v2 = sub_24ED9AC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED9A94C(uint64_t a1)
{
  v2 = sub_24ED9AC94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayUnavailableNowPlayingFeatures.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F538);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED9AC94();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD18();
    type metadata accessor for OverlayUnavailableNowPlayingFeatures();
    v8[13] = 2;
    sub_24F929608();
    sub_24ED9CE14(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24ED9AC94()
{
  result = qword_27F22F540;
  if (!qword_27F22F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F540);
  }

  return result;
}

uint64_t OverlayUnavailableNowPlayingFeatures.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v35);
  v36 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F548);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for OverlayUnavailableNowPlayingFeatures();
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v11[8];
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v42 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = &v13[v11[9]];
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_24E61DA68(&v44, v17, qword_27F21B590);
  v18 = v11[10];
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v41 = v18;
  v20(&v13[v18], 1, 1, v19);
  v21 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24ED9AC94();
  v39 = v9;
  v22 = v40;
  sub_24F92D108();
  if (v22)
  {
    v25 = v42;
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_24E601704(&v13[v25], &qword_27F213E68);
    sub_24E601704(v17, qword_27F24EC90);
    return sub_24E601704(&v13[v41], &qword_27F215440);
  }

  else
  {
    v23 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v24 = v38;
    sub_24F92CC68();
    v26 = v45;
    *v13 = v44;
    *(v13 + 1) = v26;
    *(v13 + 4) = v46;
    LOBYTE(v44) = 1;
    v27 = sub_24F92CC38();
    v28 = v42;
    v29 = v37;
    v13[40] = v27 & 1;
    LOBYTE(v44) = 2;
    sub_24ED9CE14(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v23, &v13[v28], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v47 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v44, v17, qword_27F24EC90);
    LOBYTE(v44) = 4;
    sub_24E65CAA0();
    v30 = v24;
    v31 = v36;
    v32 = v39;
    sub_24F92CC68();
    (*(v29 + 8))(v32, v30);
    sub_24E61DA68(v31, &v13[v41], &qword_27F215440);
    sub_24ED9B2E0(v13, v34);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24ED9B344(v13);
  }
}

uint64_t sub_24ED9B2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayUnavailableNowPlayingFeatures();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED9B344(uint64_t a1)
{
  v2 = type metadata accessor for OverlayUnavailableNowPlayingFeatures();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ED9B3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

double sub_24ED9B4D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24ED9B530@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayUnavailableNowPlayingFeatures();
  sub_24E60169C(a1 + *(v4 + 28), v7, qword_27F24EC90);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24ED9B648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24ED9B798(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24ED9B8D4()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C938();
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24ED9B9D4()
{
  result = qword_27F22F568;
  if (!qword_27F22F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F568);
  }

  return result;
}

unint64_t sub_24ED9BA2C()
{
  result = qword_27F22F570;
  if (!qword_27F22F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F570);
  }

  return result;
}

unint64_t sub_24ED9BA84()
{
  result = qword_27F22F578;
  if (!qword_27F22F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F578);
  }

  return result;
}

uint64_t sub_24ED9BAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F590);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F598);
  MEMORY[0x28223BE20](v7);
  v9 = &v33[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33[-v11];
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v13 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5A8) + 44)];
  *v13 = sub_24F924C88();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5B0);
  sub_24ED9BE2C(a1, &v13[*(v14 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v16 = sub_24F925818();
  *(inited + 32) = v16;
  v17 = sub_24F925828();
  *(inited + 33) = v17;
  v18 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v16)
  {
    v18 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v17)
  {
    v18 = sub_24F925848();
  }

  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E6009C8(v6, v9, &qword_27F22F590);
  v27 = &v9[*(v7 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v9, v12, &qword_27F22F598);
  v28 = &v12[*(v10 + 36)];
  v29 = v39;
  v28[4] = v38;
  v28[5] = v29;
  v28[6] = v40;
  v30 = v35;
  *v28 = v34;
  v28[1] = v30;
  v31 = v37;
  v28[2] = v36;
  v28[3] = v31;
  return sub_24E6009C8(v12, a2, &qword_27F22F5A0);
}

uint64_t sub_24ED9BE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5B8);
  MEMORY[0x28223BE20](v3);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v8 = sub_24F9271F8();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E08);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5C0);
  MEMORY[0x28223BE20](v18 - 8);
  v51 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v23 = &v47 - v21;
  if (*(a1 + 40) == 1)
  {
    v48 = v3;
    sub_24F9271E8();
    v24 = sub_24F925828();
    v25 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v24)
    {
      v25 = sub_24F925848();
    }

    sub_24F923318();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    (*(v49 + 32))(v14, v10, v50);
    v34 = &v14[*(v11 + 36)];
    *v34 = v25;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    sub_24E6009C8(v14, v17, &qword_27F223E08);
    sub_24E6009C8(v17, v23, &qword_27F223E08);
    (*(v12 + 56))(v23, 0, 1, v11);
    v3 = v48;
  }

  else
  {
    (*(v12 + 56))(&v47 - v21, 1, 1, v11, v22);
  }

  v35 = sub_24F924C88();
  v57 = 0;
  sub_24ED9C390(v55);
  memcpy(v58, v55, 0x101uLL);
  memcpy(v59, v55, 0x101uLL);
  sub_24E60169C(v58, &v54, &qword_27F22F5C8);
  sub_24E601704(v59, &qword_27F22F5C8);
  memcpy(&v56[7], v58, 0x101uLL);
  v36 = v57;
  v37 = sub_24F9251C8();
  v38 = &v7[*(v3 + 36)];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v40 = *MEMORY[0x277CE13B8];
  v41 = sub_24F927748();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  *v38 = v37;
  *v7 = v35;
  *(v7 + 1) = 0;
  v7[16] = v36;
  memcpy(v7 + 17, v56, 0x108uLL);
  v42 = v51;
  sub_24E60169C(v23, v51, &qword_27F22F5C0);
  v43 = v52;
  sub_24E60169C(v7, v52, &qword_27F22F5B8);
  v44 = v53;
  sub_24E60169C(v42, v53, &qword_27F22F5C0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5D0);
  sub_24E60169C(v43, v44 + *(v45 + 48), &qword_27F22F5B8);
  sub_24E601704(v7, &qword_27F22F5B8);
  sub_24E601704(v23, &qword_27F22F5C0);
  sub_24E601704(v43, &qword_27F22F5B8);
  return sub_24E601704(v42, &qword_27F22F5C0);
}

uint64_t sub_24ED9C390@<X0>(void *a1@<X8>)
{
  v44 = sub_24F9249A8();
  v94 = 0;
  sub_24ED9C910(&v76._countAndFlagsBits);
  v98 = *&v77[16];
  v99 = *&v77[32];
  v100 = *&v77[48];
  v96 = v76;
  v97 = *v77;
  v101[2] = *&v77[16];
  v101[3] = *&v77[32];
  v102 = *&v77[48];
  v101[0] = v76;
  v101[1] = *v77;
  sub_24E60169C(&v96, &v46, &qword_27F22F5D8);
  sub_24E601704(v101, &qword_27F22F5D8);
  *&v93[23] = v97;
  *&v93[39] = v98;
  *&v93[55] = v99;
  *&v93[71] = v100;
  *&v93[7] = v96;
  v43 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93A400;
  v2 = sub_24F925818();
  *(v1 + 32) = v2;
  v3 = sub_24F925828();
  *(v1 + 33) = v3;
  v4 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v2)
  {
    v4 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v3)
  {
    v4 = sub_24F925848();
  }

  sub_24F923318();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v95 = 0;
  v13 = sub_24F924C88();
  v88 = 1;
  v14._object = 0x800000024FA5D1F0;
  v14._countAndFlagsBits = 0xD000000000000029;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v76 = localizedString(_:comment:)(v14, v15);
  sub_24E600AEC();
  v16 = sub_24F925E18();
  v18 = v17;
  v20 = v19;
  sub_24F925898();
  v21 = sub_24F925C98();
  v39 = v22;
  v40 = v21;
  v24 = v23;
  v41 = v25;

  sub_24E600B40(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v86 = v24 & 1;
  v26 = v88;
  v27 = sub_24F9257F8();
  v28 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v27)
  {
    v28 = sub_24F925848();
  }

  sub_24F923318();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v89 = 0;
  *&v46 = v44;
  *(&v46 + 1) = 0x4034000000000000;
  v47[0] = v43;
  *&v47[17] = *&v93[16];
  *&v47[33] = *&v93[32];
  *&v47[49] = *&v93[48];
  *&v47[64] = *&v93[63];
  *&v47[1] = *v93;
  LOBYTE(v48) = v4;
  DWORD1(v48) = *&v92[3];
  *(&v48 + 1) = *v92;
  *(&v48 + 1) = v6;
  *v49 = v8;
  *&v49[8] = v10;
  *&v49[16] = v12;
  v49[24] = 0;
  __src[2] = *&v47[16];
  __src[3] = *&v47[32];
  __src[0] = v46;
  __src[1] = *v47;
  *(&__src[7] + 9) = *&v49[9];
  __src[6] = v48;
  __src[7] = *v49;
  __src[4] = *&v47[48];
  __src[5] = *&v93[63];
  v50 = v13;
  LOBYTE(v51) = v26;
  *(&v51 + 1) = *v87;
  DWORD1(v51) = *&v87[3];
  *(&v51 + 1) = v40;
  *&v52 = v39;
  BYTE8(v52) = v24 & 1;
  *(&v52 + 9) = *v85;
  HIDWORD(v52) = *&v85[3];
  *&v53 = v41;
  *(&v53 + 1) = KeyPath;
  LOBYTE(v54) = 1;
  DWORD1(v54) = *&v91[3];
  *(&v54 + 1) = *v91;
  BYTE8(v54) = v28;
  *(&v54 + 9) = *v90;
  HIDWORD(v54) = *&v90[3];
  *&v55 = v29;
  *(&v55 + 1) = v31;
  *&v56 = v33;
  *(&v56 + 1) = v35;
  v57 = 0;
  __src[11] = v52;
  __src[12] = v53;
  __src[9] = v13;
  __src[10] = v51;
  LOBYTE(__src[16]) = 0;
  __src[14] = v55;
  __src[15] = v56;
  __src[13] = v54;
  memcpy(a1, __src, 0x101uLL);
  v58[0] = v13;
  v58[1] = 0;
  v59 = v26;
  *v60 = *v87;
  *&v60[3] = *&v87[3];
  v61 = v40;
  v62 = v39;
  v63 = v24 & 1;
  *v64 = *v85;
  *&v64[3] = *&v85[3];
  v65 = v41;
  v66 = KeyPath;
  v67 = 1;
  *&v68[3] = *&v91[3];
  *v68 = *v91;
  v69 = v28;
  *&v70[3] = *&v90[3];
  *v70 = *v90;
  v71 = v30;
  v72 = v32;
  v73 = v34;
  v74 = v36;
  v75 = 0;
  sub_24E60169C(&v46, &v76, &qword_27F22F5E0);
  sub_24E60169C(&v50, &v76, &qword_27F22F5E8);
  sub_24E601704(v58, &qword_27F22F5E8);
  *&v77[17] = *&v93[16];
  *&v77[33] = *&v93[32];
  *&v77[49] = *&v93[48];
  *&v77[64] = *&v93[63];
  v76._countAndFlagsBits = v44;
  v76._object = 0x4034000000000000;
  v77[0] = v43;
  *&v77[1] = *v93;
  v78 = v4;
  *v79 = *v92;
  *&v79[3] = *&v92[3];
  v80 = v6;
  v81 = v8;
  v82 = v10;
  v83 = v12;
  v84 = 0;
  return sub_24E601704(&v76, &qword_27F22F5E0);
}

uint64_t sub_24ED9C910@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F926E48();
  v3 = sub_24F925898();
  KeyPath = swift_getKeyPath();
  v5 = sub_24F926E48();
  v6 = sub_24F925898();
  v7 = swift_getKeyPath();
  v8 = sub_24F926E48();
  v9 = sub_24F925898();
  v10 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  a1[6] = v8;
  a1[7] = v10;
  a1[8] = v9;
}

uint64_t sub_24ED9CA64()
{
  sub_24ED9CCBC();

  return sub_24F9218E8();
}

uint64_t sub_24ED9CAA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6976694468746977 && a2 == 0xEB00000000726564 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_24ED9CCBC()
{
  result = qword_27F22F580;
  if (!qword_27F22F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F580);
  }

  return result;
}

unint64_t sub_24ED9CD14()
{
  result = qword_27F22F588;
  if (!qword_27F22F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F588);
  }

  return result;
}

uint64_t sub_24ED9CE14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24ED9CE70()
{
  result = qword_27F22F5F0;
  if (!qword_27F22F5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F5F8);
    sub_24ED9CF28();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F5F0);
  }

  return result;
}

unint64_t sub_24ED9CF28()
{
  result = qword_27F22F600;
  if (!qword_27F22F600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F5A0);
    sub_24ED9CFB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F600);
  }

  return result;
}

unint64_t sub_24ED9CFB4()
{
  result = qword_27F22F608;
  if (!qword_27F22F608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F598);
    sub_24E602068(&qword_27F22F610, &qword_27F22F590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F608);
  }

  return result;
}

uint64_t ArcadeSubscriptionStatusFieldsProvider.init(arcadeSubscriptionManager:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for ArcadeSubscriptionStatusFieldsProvider() + 20);
  v5 = *MEMORY[0x277D22340];
  v6 = sub_24F92A2D8();
  result = (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for ArcadeSubscriptionStatusFieldsProvider()
{
  result = qword_27F22F618;
  if (!qword_27F22F618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscriptionStatusFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArcadeSubscriptionStatusFieldsProvider() + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeSubscriptionStatusFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_24ED9D1D8, 0, 0);
}

uint64_t sub_24ED9D1D8()
{
  v20 = v0;
  v1 = *(v0 + 72);
  v2 = **(v0 + 80) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_24EB6CE50(v3, v4);
  v5 = sub_24F929A38();
  v7 = v6;
  if (qword_27F210E78 != -1)
  {
    swift_once();
  }

  v8 = sub_24F929458();
  __swift_project_value_buffer(v8, qword_27F39D638);
  v9 = sub_24F929448();
  if (v7)
  {
    if (v5 == v9 && v7 == v10)
    {
    }

    else
    {
      v12 = sub_24F92CE08();

      if ((v12 & 1) == 0)
      {
        sub_24EB6CE70(v3, v4);
        goto LABEL_13;
      }
    }

    v13 = *(v0 + 72);
    v18 = v3;
    v19 = v4;
    v14 = sub_24ED9D42C(&v18);
    *(v0 + 40) = MEMORY[0x277D837D0];
    *(v0 + 16) = v14;
    *(v0 + 24) = v15;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v1[3]);
    sub_24F929A28();
    sub_24EB6CE70(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
    sub_24EB6CE70(v3, v4);
  }

LABEL_13:
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24ED9D42C(unsigned __int8 *a1)
{
  v1 = a1[8] >> 6;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 0x6269726373627573;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else if (v1)
  {
    v3 = *(*a1 + 24);
    v4 = *(*a1 + 16);
    v5 = v3;
    return sub_24ED9D42C(&v4);
  }

  else
  {
    return 0x7263736275736E75;
  }
}

uint64_t sub_24ED9D4D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return ArcadeSubscriptionStatusFieldsProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t sub_24ED9D57C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F92A2D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24ED9D63C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t TopChartsPagePresenter.init(objectGraph:topChartsPage:topChartsPageUrl:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  v7 = sub_24F91F4A8();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_hasData) = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_initialSegmentIndex) = 0;
  sub_24F91FA68();
  v8 = (v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_title);
  *v8 = 0;
  v8[1] = 0;
  v9 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters) = MEMORY[0x277D84F90];
  v10 = (v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categoriesButtonTitle);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
  *v12 = 0;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories) = v9;
  swift_beginAccess();
  sub_24ED9D920(a3, v3 + v6);
  swift_endAccess();

  v14 = sub_24EC8415C(v13, 0, 0, 0);

  if (a2)
  {
    sub_24ED9ED80(a2);

    sub_24E601704(a3, &qword_27F228530);
  }

  else
  {
    sub_24E601704(a3, &qword_27F228530);
  }

  return v14;
}

uint64_t sub_24ED9D920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED9D9E0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24ED9DA4C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24ED9DB4C()
{
  v1 = v0;
  sub_24ED9DD64(0);
  v2 = v0 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_title;
  swift_beginAccess();
  if (*(v2 + 8))
  {
    v3 = v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  v6 = v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categoriesButtonTitle;
  swift_beginAccess();
  if (*(v6 + 8))
  {
    v7 = v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      v9 = swift_getObjectType();
      (*(v8 + 24))(v9, v8);
      swift_unknownObjectRelease();
    }
  }

  v10 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v13 = v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v13 + 8);
    v15 = *(v1 + v10);
    if (v15 >> 62)
    {
      v16 = sub_24F92C738();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = swift_getObjectType();
    (*(v14 + 40))(0, v16, v17, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24ED9DD64(int a1)
{
  v3 = type metadata accessor for TopChartsPageIntent();
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A088();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v46 = v1;
  if (*(v1 + 32) == 1)
  {
    v37 = v11;
    v39 = v8;
    v40 = v6;
    v42 = v15;
    v16 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
    v17 = v46;
    swift_beginAccess();
    v18 = *(v17 + v16);
    v44 = v12;
    v43 = v13;
    v41 = v5;
    v38 = a1;
    if (v18 >> 62)
    {
      goto LABEL_29;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v19)
    {
      v20 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x253052270](v20, v18);
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_29:
            v19 = sub_24F92C738();
            goto LABEL_4;
          }

          v21 = *(v18 + 8 * v20 + 32);

          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_14;
          }
        }

        v23 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
        swift_beginAccess();
        v24 = *(v21 + v23);

        if (v24)
        {
        }

        ++v20;
      }

      while (v22 != v19);
    }

    v12 = v44;
    v13 = v43;
    v15 = v42;
    v5 = v41;
    v6 = v40;
    v8 = v39;
    LOBYTE(a1) = v38;
    v11 = v37;
  }

  v25 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  v26 = v46;
  swift_beginAccess();
  sub_24E99091C(v26 + v25, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_24E601704(v11, &qword_27F228530);
  }

  (*(v13 + 32))(v15, v11, v12);
  if (*(v46 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_hasData) == 1 && (a1 & 1) == 0)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v28 = v46;
  *(v46 + 32) = 1;
  v29 = v28 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v30 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  v32 = v46;
  swift_beginAccess();
  if (*(v32 + 24))
  {
    *v8 = 1;
    (*(v6 + 104))(v8, *MEMORY[0x277D222A0], v5);

    sub_24F92A0D8();

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v33 = v45;
  (*(v13 + 16))(v45, v15, v12);
  sub_24F929C28();

  sub_24F928FE8();

  sub_24F929BF8();

  v34 = sub_24F929C08();

  sub_24EB45B70(v33, v34, "GameStoreKit/TopChartsPagePresenter.swift", 41, 2);
  v35 = sub_24E74EC40();
  swift_retain_n();
  v36 = sub_24F92BEF8();
  v47[3] = v35;
  v47[4] = MEMORY[0x277D225C0];
  v47[0] = v36;
  sub_24F92A958();

  sub_24EDA1EB8(v33);
  (*(v13 + 8))(v15, v12);
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_24ED9E448(unint64_t *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  swift_beginAccess();
  if (*(a2 + 24))
  {
    v9 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v10 = sub_24F928818();
    (*(*(v10 - 8) + 16))(v7, v8 + v9, v10);
    (*(v5 + 104))(v7, *MEMORY[0x277D22290], v4);

    sub_24F92A0C8();

    (*(v5 + 8))(v7, v4);
  }

  sub_24ED9ED80(v8);
  swift_beginAccess();
  *(a2 + 32) = 0;
  v11 = a2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v13 + 8) + 16))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24ED9E654(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-v5];
  v7 = sub_24F92A078();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(a2 + 24))
  {
    *v10 = a1;
    (*(v8 + 104))(v10, *MEMORY[0x277D22280], v7);

    v11 = a1;
    sub_24F92A0C8();

    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  *(a2 + 32) = 0;
  v12 = a2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v13 + 8) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v12 + 8);
    v16 = swift_getObjectType();
    v17 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
    swift_beginAccess();
    sub_24E99091C(a2 + v17, v6);
    v18 = type metadata accessor for PresenterError();
    sub_24EDA2710(&qword_27F22B028, type metadata accessor for PresenterError);
    v19 = swift_allocError();
    *v20 = a1;
    sub_24E911D90(v6, v20 + *(v18 + 20));
    v21 = *(v15 + 8);
    v22 = *(v21 + 24);
    v23 = a1;
    v22(v19, v16, v21);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED9E938(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24E99091C(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  sub_24EDA1F14(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24ED9E9F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  return sub_24E99091C(v1 + v3, a1);
}

uint64_t sub_24ED9EA50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  sub_24EDA1F14(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24ED9EB10()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED9EB54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  v5 = sub_24F91FA78();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24ED9EBE0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_24ED9ECF8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  v4 = sub_24F91FA78();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24ED9ED80(unint64_t a1)
{
  v63 = sub_24F91F648();
  v3 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_hasData) = 1;
  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title + 8);

  sub_24ED9F794(v9, v10);
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);
  v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle + 8);

  sub_24ED9F948(v11, v12);
  v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId + 8);
  v14 = (v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
  *v14 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);
  v14[1] = v13;

  v15 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId + 8);
  v16 = (v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
  *v16 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);
  v16[1] = v15;

  *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories) = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categories);

  v17 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_initialSegmentIndex);
  v18 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  swift_beginAccess();
  *(v1 + v18) = v17;

  v20 = sub_24EDA1824(v19);

  MEMORY[0x2530453D0](v20);
  v21 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  (*(v6 + 40))(v1 + v21, v8, v5);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  v65 = v1;
  v23 = *(v1 + v22);
  v68 = v23;
  if (v23 >> 62)
  {
    goto LABEL_55;
  }

  v60 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v24 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_segments);
  v58 = v22;
  if (v24 >> 62)
  {
    v59 = sub_24F92C738();
    v22 = sub_24F92C738();
  }

  else
  {
    v22 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = v22;
  }

  if (v22)
  {
    v67 = v24 & 0xC000000000000001;
    v66 = v24 & 0xFFFFFFFFFFFFFF8;
    v61 = (v3 + 8);
    v25 = 4;
    v64 = v22;
    do
    {
      a1 = v25 - 4;
      if (v67)
      {
        v3 = MEMORY[0x253052270](v25 - 4, v24);
        v26 = v25 - 3;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (a1 >= *(v66 + 16))
        {
          goto LABEL_51;
        }

        v3 = *(v24 + 8 * v25);

        v26 = v25 - 3;
        if (__OFADD__(a1, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v60 = sub_24F92C738();
          goto LABEL_3;
        }
      }

      if (v23 >> 62)
      {
        if (a1 >= sub_24F92C738())
        {
LABEL_21:
          v27 = v24;
          v28 = v65;
          type metadata accessor for TopChartSegmentPresenter();
          v29 = swift_allocObject();
          *(v29 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view + 8) = 0;
          swift_unknownObjectWeakInit();
          *(v29 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage) = 0;
          *(v29 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment) = 0;
          *(v29 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
          *(v29 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
          *(v29 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
          *(v29 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

          v31 = sub_24EC8415C(v30, 0, 0, 0);

          v32 = (v28 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_referrer);
          swift_beginAccess();
          v34 = *v32;
          v33 = v32[1];
          v35 = (v31 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_referrer);
          swift_beginAccess();
          *v35 = v34;
          v35[1] = v33;
          swift_retain_n();

          MEMORY[0x253050F00](v36);
          if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();

          v23 = v68;
          v24 = v27;
          v22 = v64;
          goto LABEL_24;
        }
      }

      else if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      if ((v23 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v25 - 4, v23);
      }

      else
      {
        if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }
      }

      sub_24EC80D60();

LABEL_24:
      if ((v23 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x253052270](v25 - 4, v23);
      }

      else
      {
        if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v37 = *(v23 + 8 * v25);
      }

      v38 = *(v37 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
      *(v37 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment) = v3;
      swift_retain_n();
      sub_24EC9D2DC(v38);

      if (v25 == 4)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x253052270](0, v23);
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v39 = *(v23 + 32);
        }

        swift_beginAccess();
        v40 = *(v39 + 16);

        if (v40)
        {
          v41 = v62;
          sub_24F91F638();
          sub_24F91F5E8();
          v43 = v42;
          (*v61)(v41, v63);
          v44 = v40 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_initialRequestEndTime;
          swift_beginAccess();
          v45 = *v44;
          v46 = *(v44 + 8);
          *v44 = v43;
          *(v44 + 8) = 0;
          if ((v46 & 1) != 0 || v43 != v45)
          {
            v47 = *(v40 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasInitialRequestEndTime);
            swift_beginAccess();
            *(v47 + 40) = 1;
            swift_beginAccess();
            if (swift_weakLoadStrong())
            {
              sub_24EA6BFA0();
            }

            PendingPageRender.tryToEstablishUserReadyTime()();
          }
        }
      }

      ++v25;
    }

    while (v26 != v22);
  }

  v48 = v60;
  v49 = v59;
  if (v59 < v60)
  {
    result = v60 - v59;
    if (__OFSUB__(v60, v59))
    {
      __break(1u);
      return result;
    }

    sub_24ED9F6D0(result);
  }

  if (v48 != v49)
  {
    v51 = v65;
    *(v65 + v58) = v68;

    v52 = v51 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v52 + 8);
      ObjectType = swift_getObjectType();
      (*(v53 + 40))(v48, v49, ObjectType, v53);
      swift_unknownObjectRelease();
    }
  }

  v55 = v65 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    v57 = swift_getObjectType();
    (*(v56 + 32))(v57, v56);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED9F6D0(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = -v2;
    if (!__OFSUB__(0, v2))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  v2 = sub_24F92C738();
  result = v6;
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

LABEL_5:
  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    goto LABEL_22;
  }

  result = v2 - result;
  if (__OFADD__(v2, v4))
  {
    goto LABEL_20;
  }

  if (v2 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_24F14A20C(result, v2);
}

uint64_t sub_24ED9F794(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_title);
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_24F92CE08() & 1) != 0)
      {
      }
    }
  }

  else if (!v8)
  {
    return result;
  }

  v10 = v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(ObjectType, v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED9F88C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24ED9F948(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categoriesButtonTitle);
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_24F92CE08() & 1) != 0)
      {
      }
    }
  }

  else if (!v8)
  {
    return result;
  }

  v10 = v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(ObjectType, v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24ED9FA40(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    if (!sub_24F92C738())
    {
      goto LABEL_7;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  v8 = *(v1 + v6);
  if (v8 >> 62)
  {
    v9 = sub_24F92C738();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + v6) = MEMORY[0x277D84F90];

  v10 = v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(v9, 0, ObjectType, v11);
    swift_unknownObjectRelease();
  }

LABEL_7:
  v13 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
  v14 = sub_24F91F4A8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v5, a1 + v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  v16 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  sub_24EDA1F14(v5, v1 + v16);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_hasData) = 0;
  return sub_24ED9DD64(1);
}

uint64_t sub_24ED9FC9C(uint64_t a1)
{
  v3 = sub_24F91FA78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  v15 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v30 = v1;
  v16 = *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  v17 = *(v4 + 16);
  v28[1] = a1;
  v17(v9, a1, v3, v12);
  (*(v4 + 32))(v6, v9, v3);
  v18 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8]);

  sub_24F92B3F8();
  v29 = *(v11 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v18);
  sub_24F92BC08();
  if (*&v14[v19] == v31[0])
  {
    v20 = 0;
LABEL_3:

    *&v14[v29] = v20;
    return sub_24E601704(v14, &qword_27F22AFB8);
  }

  else
  {
    v20 = 0;
    while (1)
    {
      v22 = sub_24F92BC88();
      v24 = *v23;
      v22(v31, 0);
      sub_24F92BC18();
      ++v20;
      result = sub_24F91FA28();
      if (v20 >= result)
      {
        break;
      }

      v25 = *(v30 + v15);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x253052270](v24, v25);

        v16 = *(v26 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v27 = MEMORY[0x253052270](v24, v16);
LABEL_17:

          sub_24E601704(v14, &qword_27F22AFB8);
          sub_24ED9FA40(v27);
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      if (*&v14[v19] == v31[0])
      {
        goto LABEL_3;
      }
    }

    *&v14[v29] = v20;
    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v16 + 8 * v24 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EDA00E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8);
  v11 = MEMORY[0x28223BE20](v28);
  v13 = &v27 - v12;
  v14 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v15 = *(v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  (*(v5 + 16))(v10, a1, v4, v11);
  (*(v5 + 32))(v7, v10, v4);
  v16 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8]);

  sub_24F92B3F8();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v16);
  sub_24F92BC08();
  if (*&v13[v17] != v29[0])
  {
    v21 = 0;
    while (1)
    {

      v22 = sub_24F92BC88();
      v24 = *v23;
      v22(v29, 0);
      sub_24F92BC18();
      v18 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = *(v2 + v14);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x253052270](v24, v25);

        v15 = *(v26 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      ++v21;
      if (*&v13[v17] == v29[0])
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = 0;
LABEL_3:
  *&v13[*(v28 + 36)] = v18;
  sub_24E601704(v13, &qword_27F22AFB8);
  if (v15 >> 62)
  {
LABEL_18:
    v19 = sub_24F92C738();
    goto LABEL_5;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  return v19;
}

uint64_t sub_24EDA04C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v30 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  (*(v5 + 16))(v10, a1, v4, v13);
  (*(v5 + 32))(v7, v10, v4);
  v18 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8]);

  sub_24F92B3F8();
  v29 = *(v12 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v18);
  sub_24F92BC08();
  if (*&v15[v19] == v31[0])
  {
    v20 = 0;
LABEL_3:

    *&v15[v29] = v20;
    sub_24E601704(v15, &qword_27F22AFB8);
    return 0;
  }

  v20 = 0;
  while (1)
  {
    v22 = sub_24F92BC88();
    v24 = *v23;
    v22(v31, 0);
    sub_24F92BC18();
    ++v20;
    result = sub_24F91FA28();
    if (v20 >= result)
    {
      *&v15[v29] = v20;
      if ((v17 & 0xC000000000000001) != 0)
      {
        goto LABEL_24;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v24 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v27 = *(v17 + 8 * v24 + 32);

        goto LABEL_17;
      }

      __break(1u);
      return result;
    }

    v25 = *(v30 + v16);
    if ((v25 & 0xC000000000000001) != 0)
    {

      v26 = MEMORY[0x253052270](v24, v25);

      v17 = *(v26 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v17 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

LABEL_10:
    sub_24F92BC08();
    if (*&v15[v19] == v31[0])
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  v27 = MEMORY[0x253052270](v24, v17);
LABEL_17:

  sub_24E601704(v15, &qword_27F22AFB8);
  if (*(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName + 8))
  {
    v28 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName);
  }

  else
  {
    v28 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName);
  }

  return v28;
}

uint64_t sub_24EDA0948(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v31 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  (*(v5 + 16))(v10, a1, v4, v13);
  (*(v5 + 32))(v7, v10, v4);
  v18 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8]);

  sub_24F92B3F8();
  v30 = *(v12 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v18);
  sub_24F92BC08();
  if (*&v15[v19] == v32[0])
  {
    v20 = 0;
LABEL_3:

    *&v15[v30] = v20;
    sub_24E601704(v15, &qword_27F22AFB8);
    return 0;
  }

  else
  {
    v20 = 0;
    while (1)
    {
      v22 = sub_24F92BC88();
      v24 = *v23;
      v22(v32, 0);
      sub_24F92BC18();
      ++v20;
      result = sub_24F91FA28();
      if (v20 >= result)
      {
        break;
      }

      v25 = *(v31 + v16);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x253052270](v24, v25);

        v17 = *(v26 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v29 = MEMORY[0x253052270](v24, v17);

          sub_24E601704(v15, &qword_27F22AFB8);
          v28 = *(v29 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork);

          swift_unknownObjectRelease();
          return v28;
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v17 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      if (*&v15[v19] == v32[0])
      {
        goto LABEL_3;
      }
    }

    *&v15[v30] = v20;
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v17 + 8 * v24 + 32);

      sub_24E601704(v15, &qword_27F22AFB8);
      v28 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork);

      return v28;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EDA0DE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91FA78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v31 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  (*(v5 + 16))(v10, a1, v4, v13);
  (*(v5 + 32))(v7, v10, v4);
  v18 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8]);

  sub_24F92B3F8();
  v30 = *(v12 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v18);
  sub_24F92BC08();
  if (*&v15[v19] == v32[0])
  {
    v20 = 0;
LABEL_3:

    *&v15[v30] = v20;
    sub_24E601704(v15, &qword_27F22AFB8);
    return 0;
  }

  else
  {
    v20 = 0;
    while (1)
    {
      v22 = sub_24F92BC88();
      v24 = *v23;
      v22(v32, 0);
      sub_24F92BC18();
      ++v20;
      result = sub_24F91FA28();
      if (v20 >= result)
      {
        break;
      }

      v25 = *(v31 + v16);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x253052270](v24, v25);

        v17 = *(v26 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v27 = MEMORY[0x253052270](v24, v17);
LABEL_17:

          sub_24E601704(v15, &qword_27F22AFB8);
          v28 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
          if (!(v28 >> 62))
          {
            v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

            return v29 > 0;
          }

LABEL_25:
          v29 = sub_24F92C738();
          goto LABEL_19;
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v17 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      if (*&v15[v19] == v32[0])
      {
        goto LABEL_3;
      }
    }

    *&v15[v30] = v20;
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_23;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v24 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v17 + 8 * v24 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EDA125C(uint64_t a1)
{
  v3 = sub_24F91FA78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v29 - v13;
  v15 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories;
  v31 = v1;
  v16 = *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_categories);
  v17 = *(v4 + 16);
  v29[1] = a1;
  v17(v9, a1, v3, v12);
  (*(v4 + 32))(v6, v9, v3);
  v18 = MEMORY[0x277CC9AF8];
  sub_24EDA2710(&qword_27F22AF70, MEMORY[0x277CC9AF8]);

  sub_24F92B3F8();
  v30 = *(v11 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8) + 36);
  sub_24EDA2710(&qword_27F22AFD0, v18);
  sub_24F92BC08();
  if (*&v14[v19] == v32[0])
  {
    v20 = 0;
LABEL_3:

    v21 = 0;
    *&v14[v30] = v20;
LABEL_18:
    sub_24E601704(v14, &qword_27F22AFB8);
    v28 = sub_24EDA1698(v21);

    return v28 & 1;
  }

  else
  {
    v20 = 0;
    while (1)
    {
      v22 = sub_24F92BC88();
      v24 = *v23;
      v22(v32, 0);
      sub_24F92BC18();
      ++v20;
      result = sub_24F91FA28();
      if (v20 >= result)
      {
        break;
      }

      v26 = *(v31 + v15);
      if ((v26 & 0xC000000000000001) != 0)
      {

        v27 = MEMORY[0x253052270](v24, v26);

        v16 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v21 = MEMORY[0x253052270](v24, v16);
LABEL_17:

          goto LABEL_18;
        }

        if (v24 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(*(v26 + 8 * v24 + 32) + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      if (*&v14[v19] == v32[0])
      {
        goto LABEL_3;
      }
    }

    *&v14[v30] = v20;
    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v16 + 8 * v24 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EDA1698(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId + 8);
  if (!a1)
  {
    v7 = v2 == 0;
    LOBYTE(v9) = v2 == 0;
    v10 = v2 == 0;
    if (*(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId + 8))
    {
      goto LABEL_26;
    }

    if (!v2)
    {
      return v10 & 1;
    }

LABEL_35:
    if ((v10 & 1) == 0)
    {
      return v10 & 1;
    }

    goto LABEL_36;
  }

  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
  v6 = a1[4];
  v5 = a1[5];
  v7 = v2 == 0;

  if (v2)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4 == v6 && v2 == v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_24F92CE08();
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = 1;
LABEL_17:
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
  v12 = *(v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId + 8);
  v14 = a1[2];
  v13 = a1[3];

  if (!v12)
  {
    if (v13)
    {

      goto LABEL_26;
    }

    v10 = v9;
    if (!v2)
    {
      return v10 & 1;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    if (v11 == v14 && v12 == v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_24F92CE08();
    }

    if (!v2 || ((v9 ^ 1) & 1) != 0)
    {
      v10 = v16 & v9;
      return v10 & 1;
    }

LABEL_36:
    v10 = 1;
    return v10 & 1;
  }

LABEL_26:
  v10 = 0;
  if (!v7 && (v9 & 1) != 0)
  {
    goto LABEL_36;
  }

  return v10 & 1;
}

uint64_t sub_24EDA1824(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_34:
    v4 = sub_24F92C738();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = (v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
      v19 = (v1 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x253052270](v5, a1);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_24F93DE60;
            *(v16 + 32) = v5;
            v20 = v16;
            sub_24EA0B3B4(v2);

            return v20;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v7 = *(a1 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_30;
          }
        }

        v2 = sub_24EDA1824(v9);

        if (*(v2 + 16))
        {
          goto LABEL_31;
        }

        v10 = v4;

        v11 = 0;
        v2 = v6[1];
        v12 = v7[5];
        v13 = (v2 | v12) == 0;
        if (v2 && v12)
        {
          if (*v6 == v7[4] && v2 == v12)
          {
            v11 = 1;
            v13 = 1;
          }

          else
          {
            v11 = sub_24F92CE08();
            v13 = v11;
          }
        }

        v14 = v19[1];
        v15 = v7[3];
        if (v14)
        {
          if (v15)
          {
            if (*v19 == v7[2] && v14 == v15)
            {
              if ((v11 | v13))
              {
                goto LABEL_32;
              }
            }

            else if ((v11 | sub_24F92CE08() & v13))
            {
              goto LABEL_32;
            }

            goto LABEL_5;
          }
        }

        else if (!v15)
        {
          if (v13)
          {
            goto LABEL_32;
          }

          goto LABEL_5;
        }

        if (v2 && v13)
        {
LABEL_32:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_24F93DE60;
          *(v18 + 32) = v5;

          return v18;
        }

LABEL_5:

        ++v5;
        v4 = v10;
      }

      while (v8 != v10);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24EDA1AFC()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl, &qword_27F228530);
  v1 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  v2 = sub_24F91FA78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t TopChartsPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_view);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_topChartsPageUrl, &qword_27F228530);
  v1 = OBJC_IVAR____TtC12GameStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  v2 = sub_24F91FA78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}